#define TRUE 1
#define FALSE 0
#define AARDVARKS 11
#define ANTHILLS 3
#define ANTS_PER_HILL 100
#define AARDVARKS_PER_HILL 3
extern int slurp(char aname, int anthill); // eat one ant.
extern int chow_time(); // whether there are ants to eat
extern double elapsed(); // how much time has been spent?
extern pthread_mutex_t init_lock; // resolve init race conditions

