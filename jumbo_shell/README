

Author: Alex Hu

License: do whatever you want with this code.

jumbo_shell: a limited shell that acts similarly to bash, or a C-shell. 
        -the actual executable is ./shell. 

To make: "make", "make all", "make shell"
To run: ./shell

Handles multiple commands on a single line, piping input/output to the 
next program. Cannot redirect output to a file (but this could easily 
be added with some more string parsing)

Note that you'll need the external Hanson library 
in order to #include seq.h. If you don't have access to this library, 
make your own vector/container implmentation.

I'll let the code speak mostly for itself, note that Seq_T is a ADT 
provided by David Hanson in "C Interfaces and Implementations" that 
acts as a container (vector, almost). 

spec.html contains the spec, originally as an assignment for CS111, 
Operating Systems, at Tufts University (Spring 2023). 

STRUCTURE:
        main.c contains main logic loop, and helper functions that 
        stay pretty true to their name. 

                execute_commands executes commands stored on a line
                fork_program forks a program
                free_prog frees all associated mem w/ a program
        
        readaline.h / readaline.c contain the boring functions that do 
        glorified string parsing. 
        
        readaline reads a line, terminated by 
        \n or the null terminator, process_prog modifies a char ** 
        that points to multiple program arguments, populate_progs 
        puts all separate programs and their arguments into a sequence. 

