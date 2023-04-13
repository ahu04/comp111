# 	         Makefile for COMP 111 HW1
#
#     Author: Alex Hu
#
#  Maintenance targets:
#
#
#    all         - (default target) make sure everything's compiled
#    clean       - clean out all compiled object and executable files
#

# Executables to built using "make all"
# add restoration later
EXECUTABLES = shell

HANSON = /usr/sup/cii40

#
#  The following is a compromise. You MUST list all your .h files here.
#  If any .h file changes, all .c files will be recompiled. To do better,
#  we could make an explicit target for each .o, naming only the .h
#  files it really uses.
#
# Add your own .h files to the right side of the assingment below.
INCLUDES = readaline.h

# Do all C compies with gcc (at home you could try clang)
CC = gcc

LDFLAGS = -g -L$(HANSON)/lib64

# the next three lines enable you to compile and link against course software
CFLAGS =  -g -std=c11 -Wall -Wextra $(IFLAGS)
LDLIBS = -lcii40 -lm
IFLAGS = -I. -I$(HANSON)/include/cii
# 
#    'make all' will build all executables
#
#    Note that "all" is the default target that make will build
#    if nothing is specifically requested
#
all: $(EXECUTABLES)

# 
#    'make clean' will remove all object and executable files
#
clean:
	rm -f $(EXECUTABLES) *.o


# 
#    To get any .o, compile the corresponding .c
#
%.o:%.c $(INCLUDES) 
	$(CC) $(CFLAGS) -c $<

#
# Individual executables
#
#    Each executable depends on one or more .o files.
#    Those .o files are linked together to build the corresponding
#    executable.
#
shell: shell.o
	$(CC) $(LDFLAGS) -o shell shell.o $(LDLIBS)



