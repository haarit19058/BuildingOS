#include "simplefs-ops.h"

extern struct filehandle_t file_handle_array[MAX_OPEN_FILES]; // Array for storing opened files

/**
 * @brief Finds the inode number for a given filename.
 * * @param filename The name of the file to find.
 * @return int The inode number if found, otherwise -1.
 */
int find_inode_by_name(char *filename)
{
    struct inode_t inode;
    for (int i = 0; i < NUM_INODES; i++)
    {
        simplefs_readInode(i, &inode);
        if (inode.status == INODE_IN_USE && strncmp(inode.name, filename, MAX_NAME_STRLEN) == 0)
        {
            return i;
        }
    }
    return -1; // Not found
}

int simplefs_create(char *filename)
{
    /*
	    Create file with name `filename` from disk
	*/
    
    // 1. Check if filename is too long
    if (strlen(filename) > MAX_NAME_STRLEN)
    {
        return -1;
    }

    // 2. Check if a file with the same name already exists
    if (find_inode_by_name(filename) != -1)
    {
        return -1;
    }

    // 3. Find a free inode
    int inodenum = simplefs_allocInode();
    if (inodenum == -1)
    {
        return -1; // No free inodes
    }

    // 4. Initialize the inode
    struct inode_t new_inode;
    new_inode.status = INODE_IN_USE;
    strncpy(new_inode.name, filename, MAX_NAME_STRLEN);
    new_inode.file_size = 0;
    for (int i = 0; i < MAX_FILE_SIZE; i++)
    {
        new_inode.direct_blocks[i] = -1;
    }

    // 5. Write the new inode to disk
    simplefs_writeInode(inodenum, &new_inode);

    return inodenum;
}

void simplefs_delete(char *filename)
{
    /*
	    delete file with name `filename` from disk
	*/
    
    // 1. Find the file's inode
    int inodenum = find_inode_by_name(filename);
    if (inodenum == -1)
    {
        return; // File not found
    }

    // 2. Read the inode
    struct inode_t inode;
    simplefs_readInode(inodenum, &inode);

    // 3. Free all associated data blocks
    for (int i = 0; i < MAX_FILE_SIZE; i++)
    {
        if (inode.direct_blocks[i] != -1)
        {
            simplefs_freeDataBlock(inode.direct_blocks[i]);
        }
    }

    // 4. Free the inode itself
    //    (simplefs_freeInode also resets the inode structure on disk)
    simplefs_freeInode(inodenum);
}

int simplefs_open(char *filename)
{
    /*
	    open file with name `filename`
	*/

    // 1. Find the file's inode
    int inodenum = find_inode_by_name(filename);
    if (inodenum == -1)
    {
        return -1; // File not found
    }

    // 2. Find a free file handle
    int fh_index = -1;
    for (int i = 0; i < MAX_OPEN_FILES; i++)
    {
        if (file_handle_array[i].inode_number == -1)
        {
            fh_index = i;
            break;
        }
    }

    if (fh_index == -1)
    {
        return -1; // No free file handles
    }

    // 3. Initialize the file handle
    file_handle_array[fh_index].inode_number = inodenum;
    file_handle_array[fh_index].offset = 0;

    return fh_index;
}

void simplefs_close(int file_handle)
{
    /*
	    close file pointed by `file_handle`
	*/
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES)
    {
        return; // Invalid handle
    }

    // Mark the file handle as free
    file_handle_array[file_handle].inode_number = -1;
    file_handle_array[file_handle].offset = 0;
}

int simplefs_read(int file_handle, char *buf, int nbytes)
{
    /*
	    read `nbytes` of data into `buf` from file pointed by `file_handle` starting at current offset
	*/

    // 1. Validate file handle
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES)
    {
        return -1;
    }
    int inodenum = file_handle_array[file_handle].inode_number;
    if (inodenum == -1)
    {
        return -1; // File not open
    }

    // 2. Get file info
    struct inode_t inode;
    simplefs_readInode(inodenum, &inode);
    int offset = file_handle_array[file_handle].offset;

    // 3. Check for "all-or-nothing" read
    if (offset + nbytes > inode.file_size)
    {
        return -1; // Read would go past the end of the file
    }

    if (nbytes == 0)
    {
        return 0; // Read 0 bytes successfully
    }

    // 4. Perform the read
    char block_buffer[BLOCKSIZE]; // Temporary buffer for one block
    int bytes_read = 0;
    int buf_offset = 0;

    while (bytes_read < nbytes)
    {
        int current_file_pos = offset + bytes_read;
        int block_index = current_file_pos / BLOCKSIZE;      // Which direct block (0-3)
        int block_offset = current_file_pos % BLOCKSIZE;     // Offset within that block
        int disk_block_num = inode.direct_blocks[block_index];

        // This check should technically be unnecessary due to the file_size check,
        // but it's good practice.
        if (disk_block_num == -1)
        {
            return -1; // Should not happen if file_size is correct
        }

        // Read the entire block from disk
        simplefs_readDataBlock(disk_block_num, block_buffer);

        // Calculate how many bytes to copy from this block
        int bytes_to_copy_from_block = BLOCKSIZE - block_offset;
        int bytes_remaining_total = nbytes - bytes_read;

        if (bytes_to_copy_from_block > bytes_remaining_total)
        {
            bytes_to_copy_from_block = bytes_remaining_total;
        }

        // Copy data from the block buffer to the user's buffer
        memcpy(buf + buf_offset, block_buffer + block_offset, bytes_to_copy_from_block);

        bytes_read += bytes_to_copy_from_block;
        buf_offset += bytes_to_copy_from_block;
    }

    return 0; // Success
}

int simplefs_write(int file_handle, char *buf, int nbytes)
{
    /*
	    write `nbytes` of data from `buf` to file pointed by `file_handle` starting at current offset
	*/

    // 1. Validate file handle
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES)
    {
        return -1;
    }
    int inodenum = file_handle_array[file_handle].inode_number;
    if (inodenum == -1)
    {
        return -1; // File not open
    }

    // 2. Get file info
    int offset = file_handle_array[file_handle].offset;

    // 3. Check for "all-or-nothing" write
    if (offset + nbytes > MAX_FILE_SIZE * BLOCKSIZE)
    {
        return -1; // Write would go past the maximum file size
    }

    if (nbytes == 0)
    {
        return 0; // Wrote 0 bytes successfully
    }

    struct inode_t inode;
    simplefs_readInode(inodenum, &inode);

    // --- Phase 1: Pre-allocation and Rollback Setup ---
    int new_blocks_allocated[MAX_FILE_SIZE];
    int num_new_blocks = 0;

    int start_block = offset / BLOCKSIZE;
    int end_block = (offset + nbytes - 1) / BLOCKSIZE;

    for (int i = start_block; i <= end_block; i++)
    {
        if (inode.direct_blocks[i] == -1)
        {
            // This block is needed but not yet allocated
            int new_block = simplefs_allocDataBlock();
            if (new_block == -1)
            {
                // Allocation failed! Rollback.
                for (int j = 0; j < num_new_blocks; j++)
                {
                    simplefs_freeDataBlock(new_blocks_allocated[j]);
                }
                return -1; // Failure
            }
            inode.direct_blocks[i] = new_block;
            new_blocks_allocated[num_new_blocks] = new_block;
            num_new_blocks++;
        }
    }

    // --- Phase 2: Actual Writing ---
    // All necessary blocks are now allocated. We can safely write.
    char block_buffer[BLOCKSIZE];
    int bytes_written = 0;
    int buf_offset = 0;

    while (bytes_written < nbytes)
    {
        int current_file_pos = offset + bytes_written;
        int block_index = current_file_pos / BLOCKSIZE;
        int block_offset = current_file_pos % BLOCKSIZE;
        int disk_block_num = inode.direct_blocks[block_index];

        int bytes_to_copy_to_block = BLOCKSIZE - block_offset;
        int bytes_remaining_total = nbytes - bytes_written;

        if (bytes_to_copy_to_block > bytes_remaining_total)
        {
            bytes_to_copy_to_block = bytes_remaining_total;
        }

        // Check if we can skip reading (i.e., we are overwriting a full block)
        if (block_offset == 0 && bytes_to_copy_to_block == BLOCKSIZE)
        {
            // No read needed, just copy from user buffer
            memcpy(block_buffer, buf + buf_offset, BLOCKSIZE);
        }
        else
        {
            // Check if this is a brand new block we just allocated
            int is_new_block = 0;
            for(int i=0; i<num_new_blocks; i++) {
                if (new_blocks_allocated[i] == disk_block_num) {
                    is_new_block = 1;
                    break;
                }
            }

            // Read-Modify-Write
            if (is_new_block && block_offset == 0)
            {
                // New block, starting at the beginning. No need to read garbage.
                // We can just zero it, though memcpy will overwrite anyway.
                memset(block_buffer, 0, BLOCKSIZE);
            }
            else if (is_new_block)
            {
                 // New block, but starting mid-way (e.g., from a previous write)
                 // This shouldn't happen if writes are contiguous, but to be safe:
                 memset(block_buffer, 0, BLOCKSIZE);
            }
            else
            {
                // Existing block, read its current content
                simplefs_readDataBlock(disk_block_num, block_buffer);
            }

            // Modify the buffer with the new data
            memcpy(block_buffer + block_offset, buf + buf_offset, bytes_to_copy_to_block);
        }

        // Write the (potentially modified) block back to disk
        simplefs_writeDataBlock(disk_block_num, block_buffer);

        bytes_written += bytes_to_copy_to_block;
        buf_offset += bytes_to_copy_to_block;
    }

    // --- Phase 3: Commit Changes ---
    // Update file size if it has grown
    int new_file_size = offset + nbytes;
    if (new_file_size > inode.file_size)
    {
        inode.file_size = new_file_size;
    }

    // Write the updated inode back to disk
    simplefs_writeInode(inodenum, &inode);

    return 0; // Success
}

int simplefs_seek(int file_handle, int nseek)
{
    /*
	   increase `file_handle` offset by `nseek`
	*/

    // 1. Validate file handle
    if (file_handle < 0 || file_handle >= MAX_OPEN_FILES)
    {
        return -1;
    }
    int inodenum = file_handle_array[file_handle].inode_number;
    if (inodenum == -1)
    {
        return -1; // File not open
    }

    // 2. Get file size
    struct inode_t inode;
    simplefs_readInode(inodenum, &inode);
    int file_size = inode.file_size;

    // 3. Calculate and validate new offset
    int current_offset = file_handle_array[file_handle].offset;
    int new_offset = current_offset + nseek;

    if (new_offset < 0 || new_offset > file_size)
    {
        return -1; // Seek out of bounds
    }

    // 4. Update the offset in the file handle
    file_handle_array[file_handle].offset = new_offset;

    return 0; // Success
}