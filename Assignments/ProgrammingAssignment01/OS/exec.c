#include "types.h"
#include "param.h"
#include "defs.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"
#include "elf.h"
#include "arm.h"

// -------------------------------------------------------------
// exec(path, argv)
//  - Replaces the current process image with a new program.
//  - Loads 'path' (like "/ls") into memory, sets up stack with argv[],
//    and jumps to the program's entry point defined in its ELF header.
// -------------------------------------------------------------
int exec(char *path, char **argv)
{
    struct elfhdr elf;          // ELF header (holds entry point, prog headers)
    struct inode *ip;           // inode for the program file
    struct proghdr ph;          // program header (describes segments to load)
    pde_t *pgdir;               // new page directory for process
    pde_t *oldpgdir;            // old page directory (to free later)
    char *s, *last;             // helpers for program name
    int i, off;                 
    uint argc;                  // argument count
    uint sz;                    // size of process memory (bytes)
    uint sp;                    // stack pointer
    uint ustack[3 + MAXARG + 1]; // temporary array to build user stack

    // ---------------------------------------------------------
    // Step 1: Locate the program file in the file system.
    // ---------------------------------------------------------
    if ((ip = namei(path)) == 0) {   // find inode for "path"
        return -1;                   // file not found
    }
    ilock(ip);                       // lock the inode for safe read

    // ---------------------------------------------------------
    // Step 2: Validate ELF header.
    // ---------------------------------------------------------
    if (readi(ip, (char*) &elf, 0, sizeof(elf)) < sizeof(elf)) {
        goto bad;    // couldn’t read ELF header
    }
    if (elf.magic != ELF_MAGIC) {    // check ELF magic number
        goto bad;    // not a valid ELF binary
    }

    pgdir = 0;

    // ---------------------------------------------------------
    // Step 3: Allocate a new page directory (new virtual memory space).
    // ---------------------------------------------------------
    if ((pgdir = kpt_alloc()) == 0) {
        goto bad;    // failed to allocate kernel page table
    }

    // ---------------------------------------------------------
    // Step 4: Load program segments into memory.
    // ---------------------------------------------------------
    sz = 0;                         // start process size at 0
    for (i = 0, off = elf.phoff;    // loop through program headers
         i < elf.phnum;
         i++, off += sizeof(ph)) 
    {
        // read program header i
        if (readi(ip, (char*) &ph, off, sizeof(ph)) != sizeof(ph)) {
            goto bad;
        }

        if (ph.type != ELF_PROG_LOAD) {
            continue;  // only load segments marked "LOAD"
        }

        if (ph.memsz < ph.filesz) {  // sanity check
            goto bad;
        }

        // extend process memory to hold this segment
        if ((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0) {
            goto bad;
        }

        // copy the segment from file into virtual memory
        if (loaduvm(pgdir, (char*) ph.vaddr, ip, ph.off, ph.filesz) < 0) {
            goto bad;
        }
    }

    iunlockput(ip);   // release inode
    ip = 0;           // prevent accidental reuse

    // ---------------------------------------------------------
    // Step 5: Allocate stack (two pages).
    //   - First page: guard (inaccessible)
    //   - Second page: actual user stack
    // ---------------------------------------------------------
    sz = align_up(sz, PTE_SZ);   // round size up to page boundary
    if ((sz = allocuvm(pgdir, sz, sz + 2 * PTE_SZ)) == 0) {
        goto bad;
    }
    clearpteu(pgdir, (char*) (sz - 2 * PTE_SZ)); // mark guard page as invalid

    sp = sz;    // user stack pointer starts at end of stack region

    // ---------------------------------------------------------
    // Step 6: Push arguments (argv[]) onto the new user stack.
    // ---------------------------------------------------------
    for (argc = 0; argv[argc]; argc++) {
        if (argc >= MAXARG) {
            goto bad;  // too many arguments
        }

        // move stack pointer down to allocate space for string
        sp = (sp - (strlen(argv[argc]) + 1)) & ~3; // align to 4 bytes

        // copy argument string from kernel -> user memory
        if (copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0) {
            goto bad;
        }

        ustack[argc] = sp;   // record pointer to this argument
    }
    ustack[argc] = 0;        // argv[argc] = NULL (terminator)

    // In ARM ABI: 
    // r0 = argc, r1 = argv
    proc->tf->r0 = argc;
    proc->tf->r1 = sp - (argc + 1) * 4; // where argv[] will be copied

    // allocate space on user stack for argv[]
    sp -= (argc + 1) * 4;
    if (copyout(pgdir, sp, ustack, (argc + 1) * 4) < 0) {
        goto bad;
    }

    // ---------------------------------------------------------
    // Step 7: Save process name (for debugging/ps).
    // ---------------------------------------------------------
    for (last = s = path; *s; s++) {
        if (*s == '/') {      // skip to last part of path
            last = s + 1;
        }
    }
    safestrcpy(proc->name, last, sizeof(proc->name));

    // ---------------------------------------------------------
    // Step 8: Commit to the new image.
    // ---------------------------------------------------------
    oldpgdir = proc->pgdir;    // remember old memory
    proc->pgdir = pgdir;       // install new page directory
    proc->sz = sz;             // set new memory size
    proc->tf->pc = elf.entry;  // set program counter to ELF entry point
    proc->tf->sp_usr = sp;     // set user stack pointer
    switchuvm(proc);           // switch to new address space
    freevm(oldpgdir);          // free old memory

    return 0;  // success!

// -------------------------------------------------------------
// Failure path: free resources and return -1
// -------------------------------------------------------------
bad:
    if (pgdir) {
        freevm(pgdir);
    }
    if (ip) {
        iunlockput(ip);
    }
    return -1;
}
