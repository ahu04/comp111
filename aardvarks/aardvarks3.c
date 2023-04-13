#include "/comp/111/assignments/aardvarks/anthills.h" 

#include <semaphore.h>
#include <time.h>

// There are 11 aardvarks and 3 anthills. There are 100 ants in each anthill. 
// Only 3 aardvarks can share one anthill at a time. It takes one second of 
// real time for an aardvark to slurp up an ant, and another second for the 
// aardvark to swallow it, during which time it is not using the anthill and 
// another aardvark can start slurping. However, should an aardvark attempt to 
// slurp an ant from an anthill where 3 aardvarks are already slurping, or make
//  any other kind of mistake, including attempting to slurp from an already 
// empty anthill or an anthill that doesn’t exist, it will be 4 seconds before
// the aardvark is available to slurp again.
#define TRUE 1

#define FALSE 0

int initialized = FALSE; // semaphores and mutexes are not initialized 

// define your mutexes and semaphores here 
// they must be global variables. 
volatile int remainingAnts[3] = { 100, 100, 100 };

volatile double lastSlurp[3][3];

pthread_mutex_t rwLock = PTHREAD_MUTEX_INITIALIZER;     
pthread_mutex_t stateLock = PTHREAD_MUTEX_INITIALIZER;

static pthread_t updateThreads[11];

void *update_state(void *input);

typedef struct hillAndName {
    int hill;
    char name;
} hillAndName;

void my_slurp(char aname, int hill);
// first thread initializes mutexes 
void *aardvark(void *input) { 
    char aname = *(char *)input; 
    // first caller needs to initialize the mutexes!
    pthread_mutex_lock(&init_lock); 
    if (initialized++ == 0) { // this succeeds only for one thread
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                // at beginning of sim, lastSlurp is set to long enough ago 
                //that aardvarks can instantly begin slurping.
                lastSlurp[i][j] = -1.1;
            }
        }
    } 
    pthread_mutex_unlock(&init_lock); 

    // time to eat
    while (chow_time() != 0) { 

        int hill = -1;
        int slurpSpot = -1;

        // read simulation state
        double now = elapsed();

        pthread_mutex_lock(&rwLock);
        for (int i = 0; i < 9; i++) {
            int currHill = i % 3;
            int spot = i / 3;
            int max = 0;
            // if there are ants to eat AND nobody is currently slurping (swallowing is fine)
            if (remainingAnts[currHill] > 0 && lastSlurp[currHill][spot] + 1.0 < now) {
                if (remainingAnts[currHill] > max) {
                    hill = currHill;
                    slurpSpot = spot;
                    max = remainingAnts[currHill];
                }
            }
            
        }

        if (hill != -1) {
            // update the last slurp time, before slurping
            // still latency before slurp is actually called and the 
            // aardvark actually slurps, so add a buffer time (otherwise 
            // we're off by 1e-4 sec or so)
            lastSlurp[hill][slurpSpot] = now + 0.02;
            // SPAWN THREAD HERE, that updates values at the same time 
            // as when I step into slurp.
            pthread_mutex_unlock(&rwLock);
            hillAndName currHillAndName = { hill, aname };
            pthread_create(&updateThreads[aname - 'A'], NULL, 
                       update_state, (void*) (&currHillAndName));
            pthread_mutex_lock(&stateLock);
            remainingAnts[hill]--;
            pthread_mutex_unlock(&stateLock);
            pthread_join(updateThreads[aname - 'A'],(void **) NULL);
        }
        else {
            pthread_mutex_unlock(&rwLock);
        }

    
    }
    pthread_mutex_destroy(&rwLock);
    pthread_mutex_destroy(&init_lock);

    return NULL; 
} 

void *update_state(void *input) 
{
    hillAndName currHillAndName = *(hillAndName *) input;
    int hill = currHillAndName.hill;
    char name = currHillAndName.name;
    slurp(name, hill);
    return NULL;
}
