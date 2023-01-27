#include <stdio.h>
#include <stdlib.h>
#include <string.h>


size_t readaline(FILE *inputfd, char **datapp);


int main(int argc, char** argv) {

        if (argc < 2) {
                perror("didn't provide file\n");
                exit(EXIT_FAILURE);
        }
        else if (argc > 2) {
                perror("too many args dawg\n");
                exit(EXIT_FAILURE);
        }
        FILE *fp = fopen(argv[1], "r");
        if (fp == NULL) {
                perror("couldn't open file\n");
                exit(EXIT_FAILURE);
        }

        size_t sz = 1;
        while (sz != 0) {
                char *line = NULL;
                sz = readaline(fp, &line);
                if (line != NULL) {
                        printf("%s", line);
                        free(line);
                }
        }
        fclose(fp);
        return 0;
}


/*      readaline

        Purpose: reads in a line from a file pointer. Terminates when a 
        '\n' char is read. The characters comprising the line are placed into
        a contiguous array of bytes, and *datapp is set to the address of 
        the first byte.

        Parameters: File pointer, pointer to a character string (passed 
        in by reference)

        Returns: Length of the line, in characters.
*/
size_t readaline(FILE *inputfd, char **datapp){
        
        int MAX_SIZE = 200;
        char *line = (char*) calloc(MAX_SIZE, sizeof(char));

        if (line == NULL) {
                perror("alloc failed\n");
                exit(EXIT_FAILURE);
        }

        int index = 0;
        int c = 0;

        while (c != '\n') {
                c = fgetc(inputfd);
                /* if ever reach EOF during reading, return the line 
                we just read, or NULL and sz 0 respectively */
                if (c == EOF) {
                        *datapp = line;
                        if (strlen(line) == 0) {
                                *datapp = NULL;
                                free(line);
                                return 0;
                        }
                        return strlen(line);
                }
                line[index] = (char) c;
                ++index;

                if (index == MAX_SIZE - 1) {
                        line = (char *) realloc(line, MAX_SIZE * 2);
                        /*  realloc does not initialize, so we set 
                                each char newly allocated to 0  */
                        for (int i = index; i < MAX_SIZE*2 - 1; i++) {
                                line[i] = 0;
                        }
                        if (line == NULL) {
                                perror("alloc failed\n");
                                exit(EXIT_FAILURE);
                        } 
                        MAX_SIZE = MAX_SIZE*2;
                }
        }
        *datapp = line;
        
        return index;
}
