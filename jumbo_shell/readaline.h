#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "seq.h"

// returns single line terminated by \n or EOF sentinel, whichever comes first.
// *datapp stores the single line.

// MODIFIED: does not return the \n char at the end of the line
// caller responsible for freeing datapp
size_t readaline(FILE *inputfd, char **datapp);


// processes a command line input stored in currLine, separating parameters 
// and storing all parameters in *prog_and_args. The corrollary is 
// *prog_and_args = char *argv[], more or less caller responsible for 
// freeing this memory. 

// returns number of args (think argc). 
size_t process_prog(char **prog_and_args[], char *progStr);

//puts each program name and all associated args into Seq_T progs. 

//utilizes process_prog to do so.
void populate_progs(Seq_T progs, char *currLine);



