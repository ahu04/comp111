#include "jumbo_file_system.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
// C does not have a bool type, so I created one that you can use
typedef uint8_t bool;
#define true 1
#define false 0

static block_num_t current_dir;

// optional helper function you can implement to tell you if a block is a dir node or an inode
static bool is_dir(block_num_t block_num) {
    struct block buff;

    //get info from current directory
    int read_status = read_block(block_num, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }
    return buff.is_dir ^ 1;
}


/* jfs_mount
 *   prepares the DISK file on the _real_ file system to have file system
 *   blocks read and written to it.  The application _must_ call this function
 *   exactly once before calling any other jfs_* functions.  If your code
 *   requires any additional one-time initialization before any other jfs_*
 *   functions are called, you can add it here.
 * filename - the name of the DISK file on the _real_ file system
 * returns 0 on success or -1 on error; errors should only occur due to
 *   errors in the underlying disk syscalls.
 */
int jfs_mount(const char* filename) {
    int ret = bfs_mount(filename);
    current_dir = 1;
    return ret;
}


/* jfs_mkdir
 *   creates a new subdirectory in the current directory
 * directory_name - name of the new subdirectory
 * returns 0 on success or one of the following error codes on failure:
 *   E_EXISTS, E_MAX_NAME_LENGTH, E_MAX_DIR_ENTRIES, E_DISK_FULL
 */
int jfs_mkdir(const char* directory_name) {
    
    int name_len = strlen(directory_name);

    //too long
    if (name_len > MAX_NAME_LENGTH) {
        return E_MAX_NAME_LENGTH;
    }

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    //search existing directories in current directory

    // trying to mkdir, but already have hit max_dir_entries.
    if (buff.contents.dirnode.num_entries >= MAX_DIR_ENTRIES) {
        return E_MAX_DIR_ENTRIES;
    }

    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, directory_name) == 0) {
            return E_EXISTS;
        }
    }

    block_num_t new_dir = allocate_block();

    if (new_dir == 0) {
        return E_DISK_FULL;
    }

    struct block buff2;

    read_status = read_block(new_dir, (void*) &buff2);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    buff2.is_dir = 0;
    buff2.contents.dirnode.num_entries = 0;
    int write_status = write_block(new_dir, (void*) &buff2);
    if (write_status == -1) {
        // fprintf(stderr, "raw disk write failure\n");
        return E_UNKNOWN;
    }

    //modify the parent? oh yay

    //add existence of the new dir to parent. increment num_entries.
    int idx = buff.contents.dirnode.num_entries++;
    buff.contents.dirnode.entries[idx].block_num = new_dir;
    strcpy(buff.contents.dirnode.entries[idx].name, directory_name);

    // Push changes to parent block
    write_status = write_block(current_dir, (void *) &buff);
    if(write_status == -1){ 
        // fprintf(stderr, "raw disk write failure\n");
        return E_UNKNOWN;
    }

    return 0;
}


/* jfs_chdir
 *   changes the current directory to the specified subdirectory, or changes
 *   the current directory to the root directory if the directory_name is NULL
 * directory_name - name of the subdirectory to make the current
 *   directory; if directory_name is NULL then the current directory
 *   should be made the root directory instead
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS, E_NOT_DIR
 */
int jfs_chdir(const char* directory_name) {
    
    if (directory_name == NULL) {
        current_dir = 1;
        return 0;
    }

    int name_len = strlen(directory_name);

    //too long
    if (name_len > MAX_NAME_LENGTH) {
        return E_MAX_NAME_LENGTH;
    }

    struct block buff;

    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t dir_num = 0;

    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, directory_name) == 0) {
            dir_num = buff.contents.dirnode.entries[i].block_num;
        }
    }

    if (dir_num == 0) {
        return E_NOT_EXISTS;
    }

    if (!is_dir(dir_num)) {
        return E_NOT_DIR;
    }

    current_dir = dir_num;
    return 0;
}


/* jfs_ls
 *   finds the names of all the files and directories in the current directory
 *   and writes the directory names to the directories argument and the file
 *   names to the files argument
 * directories - array of strings; the function will set the strings in the
 *   array, followed by a NULL pointer after the last valid string; the strings
 *   should be malloced and the caller will free them
 * file - array of strings; the function will set the strings in the
 *   array, followed by a NULL pointer after the last valid string; the strings
 *   should be malloced and the caller will free them
 * returns 0 on success or one of the following error codes on failure:
 *   (this function should always succeed)
 */
int jfs_ls(char* directories[MAX_DIR_ENTRIES+1], char* files[MAX_DIR_ENTRIES+1]) {
    
    struct block buff;

    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    // d = dir, f = file
    int d = 0;
    int f = 0;

    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        block_num_t curr_block = buff.contents.dirnode.entries[i].block_num;
        char* curr_name = buff.contents.dirnode.entries[i].name; 
        int len = strlen(curr_name) + 1;
        if (is_dir(curr_block)) {
            char* str = (char*) malloc (len * sizeof(char));
            if (str == NULL) return E_UNKNOWN;
            memcpy(str, curr_name, len * sizeof(char));
            directories[d++] = str;
        }
        else {
            char* str = (char*) malloc (len * sizeof(char));
            if (str == NULL) return E_UNKNOWN;
            memcpy(str, curr_name, len * sizeof(char));
            files[f++] = str;
        }
    }

    directories[d] = NULL;
    files[f] = NULL;

    return 0;

    
}


/* jfs_rmdir
 *   removes the specified subdirectory of the current directory
 * directory_name - name of the subdirectory to remove
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS, E_NOT_DIR, E_NOT_EMPTY
 */
int jfs_rmdir(const char* directory_name) {

    int name_len = strlen(directory_name);

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t dir_num = 0;
    int entry_index = -1;
    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, directory_name) == 0) {
            dir_num = buff.contents.dirnode.entries[i].block_num;
            entry_index = i;
        }
    }

    if (dir_num == 0) {
        return E_NOT_EXISTS;
    }

    if (!is_dir(dir_num)) {
        return E_NOT_DIR;
    }

    struct block dir_block;
    read_status = read_block(dir_num, (void*) &dir_block);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    if (dir_block.contents.dirnode.num_entries > 0) {
        return E_NOT_EMPTY;
    }

    // block contains old data, which needs to be updated

    //shift everything past dir back to the left by 1, and decrement dir cnt
    for(int i = entry_index; i < buff.contents.dirnode.num_entries; i++){
        buff.contents.dirnode.entries[i].block_num = 
            buff.contents.dirnode.entries[i+1].block_num;

        strcpy(buff.contents.dirnode.entries[i].name, 
            buff.contents.dirnode.entries[i+1].name);
    }
    buff.contents.dirnode.num_entries--;

    int ret = release_block(dir_num);
    if (ret == -1) {
        return E_UNKNOWN;
    }

    ret = write_block(current_dir, (void *) &buff);
    if (ret == -1) {
        return E_UNKNOWN;
    }
    return 0;
}


/* jfs_creat
 *   creates a new, empty file with the specified name
 * file_name - name to give the new file
 * returns 0 on success or one of the following error codes on failure:
 *   E_EXISTS, E_MAX_NAME_LENGTH, E_MAX_DIR_ENTRIES, E_DISK_FULL
 */
int jfs_creat(const char* file_name) {
    int name_len = strlen(file_name);

    //too long
    if (name_len > MAX_NAME_LENGTH) {
        return E_MAX_NAME_LENGTH;
    }

    struct block buff;

    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    //search existing directories in current directory

    // trying to mkdir, but already have hit max_dir_entries.
    if (buff.contents.dirnode.num_entries >= MAX_DIR_ENTRIES) {
        return E_MAX_DIR_ENTRIES;
    }

    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, file_name) == 0) {
            return E_EXISTS;
        }
    }

    block_num_t new_file = allocate_block();

    if (new_file == 0) {
        return E_DISK_FULL;
    }

    struct block buff2;

    read_status = read_block(new_file, (void*) &buff2);

    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    buff2.is_dir = 1;
    buff2.contents.inode.file_size = 0;
    int write_status = write_block(new_file, (void*) &buff2);
    if (write_status == -1) {
        // fprintf(stderr, "raw disk write failure\n");
        return E_UNKNOWN;
    }

    //modify the parent? oh yay

    //add existence of the new dir to parent. increment num_entries.
    int idx = buff.contents.dirnode.num_entries++;
    buff.contents.dirnode.entries[idx].block_num = new_file;
    strcpy(buff.contents.dirnode.entries[idx].name, file_name);

    // Push changes to parent block
    write_status = write_block(current_dir, (void *) (&buff));
    if(write_status == -1){ 
        // fprintf(stderr, "raw disk write failure\n");
        return E_UNKNOWN;
    }

    return 0;
}


/* jfs_remove
 *   deletes the specified file and all its data (note that this cannot delete
 *   directories; use rmdir instead to remove directories)
 * file_name - name of the file to remove
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS, E_IS_DIR
 */
int jfs_remove(const char* file_name) {
    int name_len = strlen(file_name);

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t file_num = 0;
    int entry_index = -1;
    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, file_name) == 0) {
            file_num = buff.contents.dirnode.entries[i].block_num;
            entry_index = i;
        }
    }

    if (file_num == 0) {
        return E_NOT_EXISTS;
    }

    if (is_dir(file_num)) {
        return E_IS_DIR;
    }

    struct block file_block;
    read_status = read_block(file_num, (void*) &file_block);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    int file_size = file_block.contents.inode.file_size;
    int num_datablocks = file_size / 64 +  (file_size % 64 > 0);

    for (int i = 0; i < num_datablocks; i++) {
        block_num_t curr_block = file_block.contents.inode.data_blocks[i];
        int ret = release_block(curr_block);
        if (ret == -1) {
            return E_UNKNOWN;
        }
    }

    //shift everything past dir back to the left by 1, and decrement dir cnt
    for(int i = entry_index; i < buff.contents.dirnode.num_entries; i++){
        buff.contents.dirnode.entries[i].block_num = 
            buff.contents.dirnode.entries[i+1].block_num;

        strcpy(buff.contents.dirnode.entries[i].name, 
            buff.contents.dirnode.entries[i+1].name);
    }
    buff.contents.dirnode.num_entries--;

    int ret = release_block(file_num);
    if (ret == -1) {
        return E_UNKNOWN;
    }

    ret = write_block(current_dir, (void *) &buff);
    if (ret == -1) {
        return E_UNKNOWN;
    }
    return 0;
}


/* jfs_stat
 *   returns the file or directory stats (see struct stat for details)
 * name - name of the file or directory to inspect
 * buf  - pointer to a struct stat (already allocated by the caller) where the
 *   stats will be written
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS
 */
int jfs_stat(const char* name, struct stats* buf) {
    
    int name_len = strlen(name);

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t file_num = 0;
    int entry_index = -1;
    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, name) == 0) {
            file_num = buff.contents.dirnode.entries[i].block_num;
            entry_index = i;
        }
    }

    if (file_num == 0) {
        return E_NOT_EXISTS;
    }

    struct block file_block;
    read_status = read_block(file_num, (void*) &file_block);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    buf->is_dir = file_block.is_dir;
    // +1 for null terminator
    memcpy(buf->name, name, (name_len + 1));
    buf->block_num = file_num;
    if (file_block.is_dir == 1) {
        int file_size = file_block.contents.inode.file_size;
        buf->num_data_blocks = file_size / 64 +  (file_size % 64 > 0);
        buf->file_size = file_size;
    }

    return 0;

}


/* jfs_write
 *   appends the data in the buffer to the end of the specified file
 * file_name - name of the file to append data to
 * buf - buffer containing the data to be written (note that the data could be
 *   binary, not text, and even if it is text should not be assumed to be null
 *   terminated)
 * count - number of bytes in buf (write exactly this many)
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS, E_IS_DIR, E_MAX_FILE_SIZE, E_DISK_FULL
 */
int jfs_write(const char* file_name, const void* buf, unsigned short count) {
    
    int name_len = strlen(file_name);

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t file_num = 0;
    int entry_index = -1;
    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, file_name) == 0) {
            file_num = buff.contents.dirnode.entries[i].block_num;
            entry_index = i;
        }
    }

    if (file_num == 0) {
        return E_NOT_EXISTS;
    }

    if (is_dir(file_num)) {
        return E_IS_DIR;
    }

    struct block file_block;
    read_status = read_block(file_num, (void*) &file_block);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    int file_size = file_block.contents.inode.file_size;
    int total_size = file_size + (int) count;

    if (total_size > MAX_FILE_SIZE) {
        return E_MAX_FILE_SIZE;
    }

    // curr data blocks, 
    int num_data_blocks = file_size / 64 +  (file_size % 64 > 0);
    int fin_data_blocks = total_size / 64 +  (total_size % 64 > 0);

    // printf("debug, block ct : %d, new block ct: %d\n", num_data_blocks, fin_data_blocks);
    // printf("debug, %d bytes to write\n", count);
    
    // either the current block is empty, half-full, or filled, but THIS is 
    // the "last" block in the file. edge case, data_blocks = 0 -> just force
    // this to be represented as 1 block, but empty

    block_num_t curr_block;
    if (num_data_blocks == 0) {
        num_data_blocks++;
    }
    curr_block = file_block.contents.inode.data_blocks[num_data_blocks-1];

    // offset = bytes written already
    int offset = 0;

    // if block is not completely full, or this is the first block we ever write,
    // then fill up the rest of the block. If block size is perfectly full, 
    // i.e. file_size is a multiple of 64, ignore
    if (file_size % 64 != 0) {

        int write_ptr = file_size % 64;
        int bytes_towrite = 64 - write_ptr;
        // printf("debug, do some file size math (mod by 64), file sz: %d\n", file_size);
        // printf("debug, writing %d bytes to FIRST block\n", bytes_towrite);

        char first_block[64];
        read_status = read_block(curr_block, (void*) first_block);
        if (read_status == -1) {
            // fprintf(stderr, "raw disk read failure\n");
            return E_UNKNOWN;
        }
        memmove(&first_block[0] + write_ptr, buf, bytes_towrite);   
        offset += bytes_towrite;

        int write_status = write_block(curr_block, (void *) &first_block);
        if (write_status == -1) {
            // fprintf(stderr, "raw disk write failure\n");
            return E_UNKNOWN;
        }
    }
    else if (file_size == 0) {
        int write_ptr = file_size % 64;
        int bytes_towrite = 64 - write_ptr;
        if (count < 64) {
            bytes_towrite = count;
        }
        // printf("debug2, do some file size math (mod by 64), file sz: %d\n", file_size);
        // printf("debug2, writing %d bytes to FIRST block\n", bytes_towrite);

        curr_block = allocate_block();

        if (curr_block == 0) {
            return E_DISK_FULL;
        }

        file_block.contents.inode.data_blocks[0] = curr_block;

        char first_block[64];
        read_status = read_block(curr_block, (void*) first_block);
        if (read_status == -1) {
            // fprintf(stderr, "raw disk read failure\n");
            return E_UNKNOWN;
        }
        memmove(&first_block[0] + write_ptr, buf, bytes_towrite);   
        offset += bytes_towrite;

        int write_status = write_block(curr_block, (void *) &first_block);
        if (write_status == -1) {
            // fprintf(stderr, "raw disk write failure\n");
            return E_UNKNOWN;
        }
    }

    for (int i = num_data_blocks; i < fin_data_blocks - 1; i++) {
        // copy block, 64 bytes at a time
        curr_block = allocate_block();
        if (curr_block == 0) {
            return E_DISK_FULL;
        }

        file_block.contents.inode.data_blocks[i] = curr_block;
        // again, offset represents how many bytes written, but also 
        // is the offset from the start of buffer to copy into next block
        write_block(curr_block, (void*) (char*) (buf + offset));
        offset += 64;
    }

    // last block to fill is fin_data_blocks-1, which may or may not be full. 
    // just copy over all remaining bytes

    if (offset < count) {

        curr_block = allocate_block();
        if (curr_block == 0) {
            return E_DISK_FULL;
        }

        file_block.contents.inode.data_blocks[fin_data_blocks-1] = curr_block;
        int remaining_bytes = count - offset;

        char last_block[64];
        memmove(last_block, (char*) buf + offset, remaining_bytes);

        int write_status = write_block(curr_block, (void *) last_block);
        if (write_status == -1) {
            // fprintf(stderr, "raw disk write failure\n");
            return E_UNKNOWN;
        }
    }
    
    // make sure to update file size in struct block file_block, and write that back!

    file_block.contents.inode.file_size = total_size;
    int write_status = write_block(file_num, (void*) &file_block);
    if (write_status == -1) {
        // fprintf(stderr, "raw disk write failure\n");
        return E_UNKNOWN;
    }

    return 0;

}


/* jfs_read
 *   reads the specified file and copies its contents into the buffer, up to a
 *   maximum of *ptr_count bytes copied (but obviously no more than the file
 *   size, either)
 * file_name - name of the file to read
 * buf - buffer where the file data should be written
 * ptr_count - pointer to a count variable (allocated by the caller) that
 *   contains the size of buf when it's passed in, and will be modified to
 *   contain the number of bytes actually written to buf (e.g., if the file is
 *   smaller than the buffer) if this function is successful
 * returns 0 on success or one of the following error codes on failure:
 *   E_NOT_EXISTS, E_IS_DIR
 */
int jfs_read(const char* file_name, void* buf, unsigned short* ptr_count) {
    int name_len = strlen(file_name);

    struct block buff;
    //get info from current directory
    int read_status = read_block(current_dir, (void*) &buff);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    block_num_t file_num = 0;
    int entry_index = -1;
    for (int i = 0; i < buff.contents.dirnode.num_entries; i++) {
        if (strcmp(buff.contents.dirnode.entries[i].name, file_name) == 0) {
            file_num = buff.contents.dirnode.entries[i].block_num;
            entry_index = i;
        }
    }

    if (file_num == 0) {
        return E_NOT_EXISTS;
    }

    if (is_dir(file_num)) {
        return E_IS_DIR;
    }

    struct block file_block;
    read_status = read_block(file_num, (void*) &file_block);
    if (read_status == -1) {
        // fprintf(stderr, "raw disk read failure\n");
        return E_UNKNOWN;
    }

    int file_size = file_block.contents.inode.file_size;
    // either capped by file size (when ptr count big) 
    // or capped by ptr count (when file sz big)
    int cap = (file_size < *ptr_count) ? file_size : *ptr_count;

    int offset = 0;

    *ptr_count = cap;

    int last_block = cap / 64 + (cap % 64 > 0);

    for (int i = 0; i < last_block - 1; i++) {
        char buffer[64];
        block_num_t curr_block = file_block.contents.inode.data_blocks[i];
        int read_status = read_block(curr_block, (void*) &buffer);
        if (read_status == -1) {
            return E_UNKNOWN;
        }
        memmove((char*) buf + offset, buffer, 64);
        offset += 64;
    }

    //read last block, may not be whole thing
    int bytes_remaining = cap - offset;
    block_num_t curr_block = file_block.contents.inode.data_blocks[last_block-1];
    char buffer[64];
    read_status = read_block(curr_block, (void*) buffer);
    if (read_status == -1) {
        return E_UNKNOWN;
    }
    memmove((char*) buf + offset, buffer, bytes_remaining);

    return 0;
}



/* jfs_unmount
 *   makes the file system no longer accessible (unless it is mounted again).
 *   This should be called exactly once after all other jfs_* operations are
 *   complete; it is invalid to call any other jfs_* function (except
 *   jfs_mount) after this function complete.  Basically, this closes the DISK
 *   file on the _real_ file system.  If your code requires any clean up after
 *   all other jfs_* functions are done, you may add it here.
 * returns 0 on success or -1 on error; errors should only occur due to
 *   errors in the underlying disk syscalls.
 */
int jfs_unmount() {
    int ret = bfs_unmount();
    return ret;
}
