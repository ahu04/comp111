#define _GNU_SOURCE
#include <unistd.h> 
#include <assert.h>
#include <fcntl.h>
#include <stdlib.h>
#include <sys/mman.h> 
#include <sys/resource.h>
#include <string.h> 
#include <sys/time.h>
#include <stdio.h>
#include <pthread.h> 


#define PAGESIZE 4096
// LOOP_VAL: 10 million
#define LOOP_VAL 10000000
#define LOOP_SMALL 10000

pthread_mutex_t mutexes[LOOP_VAL];


// struct timeval ru_utime; /* user CPU time used */
// struct timeval ru_stime; /* system CPU time used */
double usertime_elapsed(struct rusage* start, struct rusage* end) {
        return (end->ru_utime.tv_sec - start->ru_utime.tv_sec) +
        (double) 1e-6*(end->ru_utime.tv_usec - start->ru_utime.tv_usec);
}

double systime_elapsed(struct rusage* start, struct rusage* end) {
        return (end->ru_stime.tv_sec - start->ru_stime.tv_sec) +
        (double) 1e-6*(end->ru_stime.tv_usec - start->ru_stime.tv_usec);
}

double walltime_elapsed(struct timeval* start, struct timeval* end){
    return (end->tv_sec - start->tv_sec) +
           (double) 1e-6*(end->tv_usec - start->tv_usec);
}

int main() {    

        struct rusage start, end;
        struct timeval start2, end2;
        double systimeElapsed, usertimeElapsed, walltimeElapsed,\
        systime_buf, usertime_buf, walltime_buf;

        getrusage(RUSAGE_SELF, &start);
        for (int i = 0; i < LOOP_VAL; i++) {

        }
        getrusage(RUSAGE_SELF, &end);

        systime_buf = systime_elapsed(&start, &end);
        usertime_buf = usertime_elapsed(&start, &end);

        gettimeofday(&start2, NULL);
        for (int i = 0; i < LOOP_SMALL; i++) {

        }
        gettimeofday(&end2, NULL);
        walltime_buf = walltime_elapsed(&start2, &end2);

        // -------------------------------------------------------------- // 
        // ----------------------- MMAP HERE --------------------------   //
        getrusage(RUSAGE_SELF, &start);
        for (int i = 0; i < LOOP_VAL; i++) {
                // before is debug version, afterwards is no err checking
                // assert((void* ) -1 != mmap(NULL, PAGESIZE, PROT_NONE,
                //      MAP_PRIVATE | MAP_ANON, -1, 0));
                mmap(NULL, PAGESIZE, PROT_NONE, MAP_PRIVATE | MAP_ANON, -1, 0);
        }
        getrusage(RUSAGE_SELF, &end);
        systimeElapsed = systime_elapsed(&start, &end) - systime_buf;
        usertimeElapsed = usertime_elapsed(&start, &end) - usertime_buf;

        printf("-- MMAP ONE PAGE -- \n");
        printf("Sys time:\t%e, user time:\t%e\n\n",
                systimeElapsed/LOOP_VAL,
                usertimeElapsed/LOOP_VAL);


        // -------------------------------------------------------------- // 
        // ----------------------- PTHREAD LOCK ------------------------- //
        
        for (int i = 0; i < LOOP_VAL; i++) {
                // assert(pthread_mutex_init(&mutexes[i], NULL) == 0);
                pthread_mutex_init(&mutexes[i], NULL);
        }

        getrusage(RUSAGE_SELF, &start);
        for(int i = 0; i < LOOP_VAL; i++){
                // assert(pthread_mutex_lock(&mutexes[i]) == 0);
                pthread_mutex_lock(&mutexes[i]);
        }
        getrusage(RUSAGE_SELF, &end);


        systimeElapsed = systime_elapsed(&start, &end) - systime_buf;
        usertimeElapsed = usertime_elapsed(&start, &end) - usertime_buf;

        printf("-- LOCK MUTEX -- \n");
        printf("Sys time:\t%e, user time:\t%e\n\n",
                systimeElapsed/LOOP_VAL,
                usertimeElapsed/LOOP_VAL);

        // -------------------------------------------------------------- // 
        // -------------------- WRITE 4096 to disk ---------------------- //

        //init 

        int fd = open("/tmp/ahu04.txt", O_DIRECT | O_SYNC | O_CREAT | O_RDWR, 
        S_IRUSR | S_IWUSR);

        // allocate char buffer of sz 4096, aligned, then initialize. 
        char* w_4096;
        assert(posix_memalign((void**) &w_4096, 4096, 4096) == 0);
        memset(w_4096, 'a', 4096);

        gettimeofday(&start2, NULL);
        for (int i = 0; i < LOOP_SMALL; i++) {
                // write 4096 bytes to disk, no cache
                // assert(write(fd, (void*) rw_4096, 4096) != -1);
                write(fd, (void*) w_4096, 4096);
        }
        gettimeofday(&end2, NULL);
        
        walltimeElapsed = walltime_elapsed(&start2, &end2) - walltime_buf;

        printf("-- WRITE 4096 to disk, no cache -- \n");
        printf("Wall time:\t%e\n\n",
                walltimeElapsed / LOOP_SMALL);

        // -------------------------------------------------------------- //    
        // -------------------- READ 4096 from disk --------------------- //
        fd = open("/tmp/ahu04.txt",\
        O_APPEND | O_RDWR | O_CREAT | O_DIRECT | O_SYNC, S_IWUSR | S_IRUSR);
        write(fd, (void *) w_4096, 4096);
        lseek(fd, 0, SEEK_SET);

        char* r_4096;
        assert(posix_memalign((void**) &r_4096, 4096, 4096) == 0);
        memset(w_4096, 'b', 4096);

        gettimeofday(&start2, NULL);
        for (int i = 0; i < LOOP_SMALL; i++) {
                //read 4096 bytes from disk
                // assert(read(fd, (void*) rw_4096, 4096) != -1);
                read(fd, (void*) r_4096, 4096);w
        }
        gettimeofday(&end2, NULL);

        walltimeElapsed = walltime_elapsed(&start2, &end2) - walltime_buf;

        printf("-- READ 4096 from disk, no cache -- \n");
        printf("Wall time:\t%e\n\n",
                walltimeElapsed / LOOP_SMALL);

        
        free(w_4096);
        free(r_4096);
        close(fd);
        remove("/tmp/ahu04.txt");

        // -------------------------------------------------------------- //    
        // ------------------ WRITE 4096 to disk cache ------------------ //
        int fd2 = open("/tmp/ahu04.txt", O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
        
        char w2_4096[4096];
        memset(w2_4096, 'a', 4096);

        gettimeofday(&start2, NULL);
        for (int i = 0; i < LOOP_SMALL; i++) {
                write(fd2, w2_4096, 4096);
        }
        gettimeofday(&end2, NULL);

        walltimeElapsed = walltime_elapsed(&start2, &end2) - walltime_buf;

        printf("-- WRITE to disk, w/ cache -- \n");
        printf("Wall time:\t%e\n\n",
                walltimeElapsed / LOOP_SMALL);

        // -------------------------------------------------------------- //    
        // ------------------ READ 4096 from disk cache ----------------- //
        
        fd2 = open("/tmp/ahu04.txt",\
        O_APPEND | O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
        write(fd2, (void *) w2_4096, 4096);
        lseek(fd2, 0, SEEK_SET);

        char r2_4096[4096];

        gettimeofday(&start2, NULL);
        for (int i = 0; i < LOOP_SMALL; i++) {
                //read 4096 bytes from disk
                // assert(read(fd, (void*) rw_4096, 4096) != -1);
                read(fd2, (void*) r2_4096, 4096);
        }
        gettimeofday(&end2, NULL);

        walltimeElapsed = walltime_elapsed(&start2, &end2) - walltime_buf;

        printf("-- READ 4096 from disk, w/ cache -- \n");
        printf("Wall time:\t%e\n\n",
                walltimeElapsed / LOOP_SMALL);

        close(fd2);
        remove("/tmp/ahu04.txt");

        return 0;
}