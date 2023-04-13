#include <readaline.h>


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