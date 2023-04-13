
#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>
#include "seq.h"
#include <errno.h>
#include <sys/types.h> 

int readaline(FILE *inputfd, char **datapp);
size_t process_prog(char **prog_and_args[], char *progStr);
void populate_progs(Seq_T progs, char *currLine);

#define errExit(msg)                            \
        do {                                    \
                fprintf(stderr, msg);           \
                exit(EXIT_FAILURE);             \
        } while(0)

void execute_commands(char *currLine);

pid_t fork_program(Seq_T progs, char **prog_and_args, char* currLine, 
int inFD, int outFD);

void free_prog(Seq_T progs, char** old_prog_and_args, char* currLine);

int main(int argc, char* argv[]) 
{
        (void) argv;
        if (argc > 1) {
                errExit("Usage: ./shell\n");
        }

        int EOF_marker = 0;

        while (EOF_marker != EOF) {
                char *currLine;
                printf("jsh$ ");
                // EOF_marker returns EOF upon failure or EOF, error 
                // checking is done with the EOF_marker != EOF

                EOF_marker = readaline(stdin, &currLine);

                // if only "\n" is inputted, or EOF hit.
                if (currLine == NULL) {
                        continue;
                }
                else if (strcmp(currLine, "exit") == 0) {
                        free(currLine);
                        exit(EXIT_SUCCESS);
                }
                else {
                        execute_commands(currLine);
                }
        }

        return 0;
}

/* 

I can barely wrap my head around this as is, but let's try. 

a series of programs and their respective arguments, stored as char** 
are in Seq_T progs. 

In order to pipe input / output between all programs (the first program input 
is just stdin, the last program output is stdout), we need to use 
the pipe and dup commands in order to properly send the IO to the next 
process. 

Edge case of 1 prog is already handled, as the loop runs sz - 1 times. 

Every time the loop runs, pipe() is called. Then, we grab the next
program to run from Seq_T, and call fork_program, passing in the PREVIOUS
"read" end of the pipe (inFD), which is what the previous program wrote. 
The first time the loop runs, inFD is just set to STDIN_FILENO. 

We also pass in the write end (pipefd[1]) of the pipe, to WRITE to. When the
program terminates, the write end has finished writing, back to the current 
read end, which is pipefd[0]. Then, we no longer need to write any more to 
pipefd[1], thus, we close it, but we do want the current "stdout" of the 
program to be fed into the next program, thus, inFD = pipefd[0]. 

After this terminates, and we want to run the last program, we need only 
specify that the output of the very last file is not pipefd[1], but 
STDOUT_FILENO. So it prints to terminal.

*/
void execute_commands(char *currLine)
{
        Seq_T progs = Seq_new(5);

        if (currLine == NULL) {
                errExit("bad things have happened\n");
        }

        populate_progs(progs, currLine);

        int len = Seq_length(progs);
        int pipefd[2];

        int inFD = STDIN_FILENO;

        for (int i = 0; i < len - 1; ++i) {
                if (pipe(pipefd) == -1) {
                        errExit("pipe failed\n");
                }
                char **prog_and_args = (char **) Seq_remlo(progs);

                fork_program(progs, prog_and_args, currLine, inFD, pipefd[1]);
                // close new write pipe, child writes not parent
                close(pipefd[1]);
                // close old read pipe
                if (inFD != STDIN_FILENO) {
                        close(inFD);
                }
                // set output of current pipe to input pipe for next iteration
                inFD = pipefd[0];
        }

        
        if (len > 0) {
                char **prog_and_args = (char **) Seq_remlo(progs);
                int last_child = 
                        fork_program(progs, prog_and_args, currLine, 
                                                inFD, STDOUT_FILENO);
                
                // grab last child's exit status.
                int childstatus;
                waitpid(last_child, &childstatus, 0);

                for (int i = 0; i < len - 1; i++) {
                        wait(NULL);
                }
                
                if (WIFEXITED(childstatus)) {
                        childstatus = WEXITSTATUS(childstatus);
                        printf("jsh status: %d\n", childstatus);
                }
                else if (WIFSIGNALED(childstatus)) {
                        childstatus = WTERMSIG(childstatus);
                        printf("Terminated by signal: %d", childstatus);
                }
        }
        // edge case, if we are given some junk input, ex: "|"
        // or something like that with more spaces.
        else {
                fprintf(stderr, "Invalid null command.\n");
        }
        free(currLine);
        Seq_free(&progs);
}

// fork_program is called with an in and out file descriptor, which 
// is used to pipe IO between commands.

// fork_program responsible for freeing char **prog_and_args, and upon failure,
// frees all associated heap memory w/ current process.
pid_t fork_program(Seq_T progs, char **prog_and_args, char *currLine, 
int inFD, int outFD) 
{
        if (strcmp(prog_and_args[0], "exit") == 0) {
                free_prog(progs, prog_and_args, currLine);
                exit(EXIT_SUCCESS);
        }

        pid_t pid = fork();

        if (pid < 0) {
                fprintf(stderr, "fork failed\n");
                free_prog(progs, prog_and_args, currLine);
                exit(EXIT_FAILURE);
        }
        else if (pid == 0) {
                wait(NULL);

                // if not standard in/standard out (i.e. piping to some 
                // other file descriptor, then 
                // we set STDIN/OUT to our custom file descriptors.
                
                if (inFD != STDIN_FILENO) {
                        if (dup2(inFD, STDIN_FILENO) != STDIN_FILENO) {
                                errExit("dup2 failed\n");
                        }
                        close(inFD);
                }
                if (outFD != STDOUT_FILENO) {
                        if (dup2(outFD, STDOUT_FILENO) != STDOUT_FILENO) {
                                errExit("dup2 failed\n");
                        }
                        close(outFD);
                }
                //this is child, run the shell cmd given by user.
                execvp(prog_and_args[0], prog_and_args);

                //only triggers when execvp fails.
                //fprintf(stderr, "%s\n", strerror(errno));
                fprintf(stderr, "jsh error: Command not found: %s\n", 
                                                        prog_and_args[0]);
                free_prog(progs, prog_and_args, currLine);
                exit(127);
        }
        else {
                free(prog_and_args);
                return pid;
        }
}

void free_prog(Seq_T progs, char** old_prog_and_args, char* currLine)
{
        // sometimes I wish I had garbage collection yanno
        
        int len = Seq_length(progs);

        for (int i = 0; i < len; ++i) {
                char **curr_prog_and_args = (char **) Seq_get(progs, i);
                free(curr_prog_and_args);
        }
        Seq_free(&progs);
        free(old_prog_and_args);
        free(currLine);
}

// returns single line terminated by \n or EOF sentinel, whichever comes first.
// *datapp stores the single line. Obviously *datapp terminated by '\0'.

// MODIFIED: does not return the \n char at the end of the line
// caller responsible for freeing datapp

int readaline(FILE *inputfd, char **datapp)
{
        
        int MAX_SIZE = 100;
        char *line = (char*) malloc(MAX_SIZE * sizeof(char));

        if (line == NULL) {
                fprintf(stderr, "malloc failed\n");
                exit(EXIT_FAILURE);
        }

        int index = 0;
        int c = 0;

        while (1) {
                c = fgetc(inputfd);
                if (c == EOF || c == '\n') {
                        // tack on null terminator, then return index (len)
                        // unless we hit EOF
                        if (index == 0) {
                                *datapp = NULL;
                                free(line);
                                return (c == EOF) ? EOF : 0; 
                        }
                        line[index] = '\0';
                        *datapp = line;
                        return (c == EOF) ? EOF : index; 
                }

                line[index] = (char) c;
                ++index;

                if (index == MAX_SIZE - 1) {
                        line = (char *) realloc(line, MAX_SIZE * 2);
                        if (line == NULL) {
                                fprintf(stderr, "malloc failed\n");
                                exit(EXIT_FAILURE);
                        } 
                        MAX_SIZE *= 2;
                }
        }
        line[index] = '\0';
        *datapp = line;
        return index;
}

// processes a command line input stored in currLine, separating parameters 
// and storing all parameters in *prog_and_args. The corrollary is 
// *prog_and_args[i] = char *argv[i], more or less caller responsible for 
// freeing this memory. 

// returns number of args (think argc). 
size_t process_prog(char **prog_and_args[], char *progStr) 
{
        char* token;
        size_t i = 0;
        size_t max_sz = 10;
        char **args = (char **) malloc(max_sz * sizeof(char*));
        if (args == NULL) {
                fprintf(stderr, "malloc fail\n");
                exit(EXIT_FAILURE);
        }
        
        while ((token = strtok_r(progStr, " ", &progStr)) != NULL) {
                if (i == max_sz - 1) {
                        args = (char **) realloc(args, max_sz * 2);
                        if (args == NULL) {
                                fprintf(stderr, "malloc fail\n");
                                exit(EXIT_FAILURE);
                        }
                        max_sz *= 2;
                }
                args[i] = token;
                ++i;
        }
        args[i] = NULL;
        *prog_and_args = args;
        return i;
}

void populate_progs(Seq_T progs, char *currLine) 
{
        char* token;
        char **prog_and_args;

        while ((token = strtok_r(currLine, "|", &currLine)) != NULL) {
                process_prog(&prog_and_args, token);
                Seq_addhi(progs, (void *) prog_and_args);
        }
}