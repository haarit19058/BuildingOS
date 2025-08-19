// BSP support routine

// defines the dataytpes
#include "types.h"

// fuctino definitinos
#include "defs.h"

// parameters for various stuff
#include "param.h"

// device based constants
#include "arm.h"

// processor definitinos
#include "proc.h"

// memory layout ad memory management unit
#include "memlayout.h"
#include "mmu.h"

// end is a linker symbol marking the end of teh kernel binary in memory
extern void* end;


struct cpu	cpus[NCPU];
// pointer to curretn cpu
struct cpu	*cpu;

#define MB (1024*1024)

void kmain (void)
{
    uint vectbl;

    // Initialize cpu pointer to CPU 0’s structure. In multiprocessor systems this would be set differently per core, but here it’s uniprocessor.
    cpu = &cpus[0];

    // definitino in device/uart.c to initialize the uart with screen
    uart_init (P2V(UART0));

    // interrrupt vector table is in the middle of first 1MB. We use the left
    // over for page tables
    vectbl = P2V_WO (VEC_TBL & PDE_MASK);
    

    /*
    ./vm.c

    */
    init_vmm ();


    // custom memory allocator for arm architecutre bcuz they say that it supports only 1kb and the default xv6 buddy does 4kb allocation at min
    kpt_freerange (align_up(&end, PT_SZ), vectbl);
    kpt_freerange (vectbl + PT_SZ, P2V_WO(INIT_KERNMAP));
    paging_init (INIT_KERNMAP, PHYSTOP);
    kmem_init ();
    kmem_init2(P2V(INIT_KERNMAP), P2V(PHYSTOP));

    
    trap_init ();				// vector table and stacks for models
    pic_init (P2V(VIC_BASE));	// interrupt controller
    uart_enable_rx ();			// interrupt for uart
    
    consoleinit ();				// console
    pinit ();					// process (locks)

    binit ();					// buffer cache
    fileinit ();				// file table
    iinit ();					// inode cache
    ideinit ();					// ide (memory block device)
    timer_init (HZ);			// the timer (ticker)


    sti ();

    userinit();					// first user process
    scheduler();				// start running processes
}



/*

How does the command files end up in the kernel image
1. First all the commands are compiled into their binaries 
2. Then during the compilation time they are put into / of the filesystem by mkfs.c file
3. Now the commands are in filesystem
*/



/*
Great question 👍 Let’s walk step by step what happens in **xv6** when you type `ls` at the shell prompt and see its output on the screen.

---

## 1. **You type `ls`**

* The **keyboard interrupt** delivers keystrokes to the kernel.
* `consoleintr()` puts characters into `input.buf`.
* When you press **Enter**, `\n` is stored and `wakeup(&input.r)` wakes up processes waiting to read input.
* The shell (`sh`) was blocked in `read()` on stdin → now it receives `"ls\n"`.

---

## 2. **The shell parses the command**

* The xv6 shell (`sh.c`) reads the line.
* It tokenizes → finds first word `"ls"`.
* It checks if it's a **builtin** (like `cd`). It’s not.
* So it calls `fork()` → creates a child process.

---

## 3. **Child process calls `exec("ls", argv)`**

* The child replaces its memory with the program `ls` from the file system.
* `exec()` loads the `ls` ELF binary from disk (via inode, file system routines).
* Sets up its code, data, stack.
* Now the child is running the `ls` program.

---

## 4. **`ls` runs**

* `ls` uses **system calls** like `open()`, `read()`, `fstat()`, `close()` to read the contents of the current directory.
* For each filename it finds, it calls `printf()`.

---

## 5. **`printf()` in `ls`**

* `printf()` → calls `write(fd=1, buffer, len)`.
* File descriptor `1` = **stdout**, which is attached to the console device.

---

## 6. **Kernel console write**

* `sys_write()` → `consolewrite()`.
* `consolewrite()` → calls `consputc(c)` for each character.
* `consputc()` → sends characters to:

  * **UART** (serial output),
  * and (optionally) **VGA console** (`cgaputc`).

---

## 7. **Characters appear on screen**

* The UART driver (or VGA) moves bytes to the display.
* You finally see the filenames printed.

---

## 🔑 Flow Summary:

```
Keyboard → consoleintr() → shell → fork+exec("ls") 
→ ls program → printf() → write() → consolewrite() → consputc()
→ UART/VGA → Screen
```

---

👉 Do you want me to show you this exact flow with **code pointers** in xv6 (like where in `sh.c`, `sysfile.c`, `console.c` each part is)?



*/
