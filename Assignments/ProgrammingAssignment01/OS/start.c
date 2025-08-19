// initialize section


// contains shorthand nottaions for types
#include "types.h"

// defines the parameters for processor and processes and memory file system and hertz etc. 
#include "param.h"

// complicated and self explanatory hardware based
#include "arm.h"

// memory management unit see file for more details
#include "mmu.h"

// definitions for functions
#include "defs.h"

// memory layout fixed offset
#include "memlayout.h"

// uart stands for universal asynchronous receiver transmetter
// It’s one of the simplest and most widely used hardware modules for serial communication between devices

/*
How it works
Transmitting (TX):
CPU writes a byte (8 bits) into the UART’s transmit buffer.
UART hardware adds:
Start bit (0) → marks the beginning.
Data bits (usually 8).
Optional parity bit (for error checking).
Stop bit(s) (1) → marks the end.
This serial stream goes out through the TX line.

Receiving (RX)
UART listens on the RX line.
Detects start bit, samples bits at correct intervals (based on baud rate).
Assembles them into a byte and stores it in the receive buffer.
CPU can then read the byte.
*/


// send a character
void _uart_putc(int c)
{
    volatile uint8 * uart0 = (uint8*)UART0;
    *uart0 = c;
}

// sends a  string
void _puts (char *s)
{
    while (*s != '\0') {
        _uart_putc(*s);
        s++;
    }
}

// send a int and print in hexadecimal format
void _putint(char *prefix, uint val, char *suffix)
{
    // Hexadecimal character lookup table
    // Used to convert a 4-bit nibble into a character ('0'-'F')
    char *arr = "0123456789ABCDEF";

    int idx;

    // Print prefix if provided (e.g., "0x")
    if (prefix) {
        _puts(prefix);  // _puts is assumed to print a string over UART
    }

    // Print the number in hexadecimal, 8 hex digits for 32-bit values
    // Loop starts from the most significant nibble (MSN) and goes down
    // Each iteration extracts 4 bits (1 hex digit) using a mask (0x0F)
    for (idx = sizeof(val) * 8 - 4; idx >= 0; idx -= 4) {
        // Shift right by 'idx' bits, then mask with 0x0F to isolate a nibble
        // Example: if val = 0xDEADBEEF
        //          when idx = 28, (val >> 28) & 0x0F = 0xD
        _uart_putc(arr[(val >> idx) & 0x0F]); // Send character over UART
    }

    // Print suffix if provided (e.g., "\n")
    if (suffix) {
        _puts(suffix);
    }
}


// kernel page table, reserved in the kernel.ld
// extern : his variable/function is defined somewhere else (in another file or later in the program), not here
// volatile: This variable can change at any time, outside the program’s normal flow
extern uint32 _kernel_pgtbl;
extern uint32 _user_pgtbl;

uint32 *kernel_pgtbl = &_kernel_pgtbl;
uint32 *user_pgtbl = &_user_pgtbl;

#define PDE_SHIFT 20

uint32 get_pde (uint32 virt)
{
    virt >>= PDE_SHIFT;
    return kernel_pgtbl[virt];
}

//
// setup the boot page table
// virt   = starting virtual address
// phy    = starting physical address
// len    = length of mapping (in bytes)
// dev_mem= flag indicating whether this mapping is device memory (1) or normal memory (0)
//
void set_bootpgtbl(uint32 virt, uint32 phy, uint len, int dev_mem)
{
    uint32 pde;   // Page Directory Entry (holds mapping info)
    int idx;      // loop counter

    // ------------------------------------------------------------------
    // Convert all parameters from byte addresses into *page directory indexes*
    // (because page tables work on aligned page sizes, not raw bytes)
    //
    // PDE_SHIFT usually = 20 (4 KB * 1024 = 1 MB sections)
    // So shifting by 20 bits means: "divide by 1MB".
    // ------------------------------------------------------------------
    virt >>= PDE_SHIFT;   // convert virtual address to PDE index
    phy  >>= PDE_SHIFT;   // convert physical address to PDE index
    len  >>= PDE_SHIFT;   // convert length in bytes to number of PDEs

    // ------------------------------------------------------------------
    // Loop through each page directory entry we need to create
    // ------------------------------------------------------------------
    for (idx = 0; idx < len; idx++) {

        // Start forming the PDE: put the base physical address
        // (shifted back up by PDE_SHIFT to restore proper alignment).
        pde = (phy << PDE_SHIFT);

        if (!dev_mem) {
            // --------------------------------------------------------------
            // CASE 1: Normal memory (RAM)
            // - Access permission = Kernel Only (AP_KO << 10)
            // - Cache enabled (PE_CACHE)
            // - Write buffer enabled (PE_BUF)
            // - Mark as "section entry" type (KPDE_TYPE)
            // --------------------------------------------------------------
            pde |= (AP_KO << 10) | PE_CACHE | PE_BUF | KPDE_TYPE;

        } else {
            // --------------------------------------------------------------
            // CASE 2: Device memory (MMIO, peripherals)
            // - Access permission = Kernel Only (AP_KO << 10)
            // - Cache disabled (so every read/write hits device directly)
            // - Buffer disabled (so no reordering of memory ops)
            // - Still mark as "section entry" type (KPDE_TYPE)
            // --------------------------------------------------------------
            pde |= (AP_KO << 10) | KPDE_TYPE;
        }

        // ------------------------------------------------------------------
        // Install PDE into correct page table:
        // - If virtual address is in *user space* (< NUM_UPDE),
        //   put entry into the user page table.
        // - Else, put it in the kernel page table.
        // ------------------------------------------------------------------
        if (virt < NUM_UPDE) {
            user_pgtbl[virt] = pde;
        } else {
            kernel_pgtbl[virt] = pde;
        }

        // ------------------------------------------------------------------
        // Move to next virtual and physical page (section)
        // Each iteration maps another 1 MB region
        // ------------------------------------------------------------------
        virt++;
        phy++;
    }
}

static void _flush_all (void)
{
    uint val = 0;

    // flush all TLB
    asm("MCR p15, 0, %[r], c8, c7, 0" : :[r]"r" (val):);

    // invalid entire data and instruction cache
    // asm ("MCR p15,0,%[r],c7,c5,0": :[r]"r" (val):);
    // asm ("MCR p15,0,%[r],c7,c6,0": :[r]"r" (val):);
}


// to do hardware specific page table loaded succesfully
void load_pgtlb (uint32* kern_pgtbl, uint32* user_pgtbl)
{
    uint	ret;
    char	arch;
    uint	val;

    // read the main id register to make sure we are running on ARMv6
    asm("MRC p15, 0, %[r], c0, c0, 0": [r]"=r" (ret)::);

    if (ret >> 24 == 0x41) {
        //_puts ("ARM-based CPU\n");
    }

    arch = (ret >> 16) & 0x0F;

    if ((arch != 7) && (arch != 0xF)) {
        _puts ("need AARM v6 or higher\n");
    }

    // we need to check the cache/tlb etc., but let's skip it for now

    // set domain access control: all domain will be checked for permission
    val = 0x55555555;
    asm("MCR p15, 0, %[v], c3, c0, 0": :[v]"r" (val):);

    // set the page table base registers. We use two page tables: TTBR0
    // for user space and TTBR1 for kernel space
    val = 32 - UADDR_BITS;
    asm("MCR p15, 0, %[v], c2, c0, 2": :[v]"r" (val):);

    // set the kernel page table
    val = (uint)kernel_pgtbl | 0x00;
    asm("MCR p15, 0, %[v], c2, c0, 1": :[v]"r" (val):);

    // set the user page table
    val = (uint)user_pgtbl | 0x00;
    asm("MCR p15, 0, %[v], c2, c0, 0": :[v]"r" (val):);

    // ok, enable paging using read/modify/write
    asm("MRC p15, 0, %[r], c1, c0, 0": [r]"=r" (val)::);

    val |= 0x80300D; // enable MMU, cache, write buffer, high vector tbl,
                     // disable subpage
    asm("MCR p15, 0, %[r], c1, c0, 0": :[r]"r" (val):);

    _flush_all();
}


// =============================
// Extern declarations
// =============================
// These symbols are defined in the linker script (kernel.ld) or elsewhere in the kernel.
// They are not defined here, but we "declare" them so the compiler knows about them.

extern void *edata_entry;   // Start address of initialized data section
extern void *svc_stktop;    // Top of the stack for Supervisor (SVC) mode
extern void kmain(void);    // Main kernel entry point (C code)
extern void jump_stack(void); // Assembly routine to switch to kernel stack

extern void *edata;         // Start of the BSS section (uninitialized data)
extern void *end;           // End of the kernel image (BSS + data)

// =============================
// Clear BSS Section  (block started by symbol)
// It contains global and static variables that are declared but not initialized.
// =============================
// The BSS section holds uninitialized global/static variables.
// By convention, it must be set to zero before main() executes.
// This ensures predictable behavior for variables like `static int counter;`
void clear_bss(void)
{
    // memset the region between 'edata' and 'end' to 0.
    // (uint)&end - (uint)&edata gives the size of BSS section.
    memset(&edata, 0x00, (uint)&end - (uint)&edata);
}

// =============================
// Kernel Start Function
// =============================
// This is the very first C function called after assembly startup code.
// It prepares the MMU (paging), page tables, clears BSS, then calls kmain().
void start(void)
{
    uint32 vectbl; // Will hold the virtual address of the interrupt vector table

    _puts("starting xv6 for ARM...\n");

    // ------------------------------------------------------
    // Step 1: Setup boot page tables
    // ------------------------------------------------------

    // Double-map the low memory region.
    // - Map physical 0 → virtual 0 (identity mapping).
    // - Also map physical 0 → high kernel address (KERNBASE).
    // This is needed so both early boot code and kernel code can access memory.
    set_bootpgtbl(0, 0, INIT_KERNMAP, 0);
    set_bootpgtbl(KERNBASE, 0, INIT_KERNMAP, 0);

    // ------------------------------------------------------
    // Step 2: Setup the interrupt vector table mapping
    // ------------------------------------------------------

    // Vector table address:
    //  - VEC_TBL is at 0xFFFF0000 (high vectors).
    //  - PDE_MASK ensures alignment to 1 MB section boundary.
    vectbl = P2V_WO(VEC_TBL & PDE_MASK);

    // Sanity check: ensure vector table does not overlap with kernel code.
    if (vectbl <= (uint)&end) {
        cprintf("error: vector table overlaps kernel\n");
    }

    // Map one section for the vector table at VEC_TBL address
    set_bootpgtbl(VEC_TBL, 0, 1 << PDE_SHIFT, 0);

    // ------------------------------------------------------
    // Step 3: Map device memory
    // ------------------------------------------------------

    // Map all device registers (UART, timers, VIC, etc.)
    // into kernel virtual space at (KERNBASE + DEVBASE).
    // Marked as "device memory" so it is non-cacheable & non-bufferable.
    set_bootpgtbl(KERNBASE + DEVBASE, DEVBASE, DEV_MEM_SZ, 1);

    // ------------------------------------------------------
    // Step 4: Load the page table into MMU
    // ------------------------------------------------------

    // Load the kernel and user page tables into the CPU’s MMU (Translation Table Base).
    // This enables paging and virtual memory.
    load_pgtlb(kernel_pgtbl, user_pgtbl);

    // ------------------------------------------------------
    // Step 5: Switch to kernel stack
    // ------------------------------------------------------

    // Jump to the SVC stack (defined by svc_stktop).
    // After this point, the kernel executes on its proper stack.
    jump_stack();

    // ------------------------------------------------------
    // Step 6: Clear BSS section
    // ------------------------------------------------------

    // Now that paging and stack are ready, clear the BSS section.
    clear_bss();

    // ------------------------------------------------------
    // Step 7: Enter the main kernel
    // ------------------------------------------------------

    // Call the C kernel main function (like main() in user programs).
    kmain();
}






















// Why kernel lives in high memory space

/*

Perfect follow-up 👍
This question goes to the **heart of kernel vs user address space design**. Let’s dig into it step by step.

---

## 1. Two “worlds”: Kernel vs User

An operating system has to run two kinds of code:

* **Kernel code** → trusted, full hardware access (drivers, memory management, interrupts, system calls).
* **User code** → untrusted, runs applications (bash, gcc, browser, etc.), must be isolated from the kernel.

Both run **on the same CPU**, but we need **protection** so buggy/malicious user programs can’t crash or take over the system.

👉 The solution: **virtual memory separation**.
We split the virtual address space into two regions:

* **Low addresses** → User space
* **High addresses** → Kernel space

---

## 2. Why put the kernel in high memory?

The kernel could, in theory, live anywhere. But putting it in **high virtual addresses** has big benefits:

### 🔹 (a) User programs start at 0

* Most user programs assume they can use low addresses (e.g., `0x00000000` upward).
* Compilers, linkers, and loaders expect to place code/data starting from low addresses.
* If the kernel occupied low memory, **user space would be fragmented** and harder to manage.

Example (32-bit x86):

```
0x00000000 ------------------- 
            | User program     |
            | stack, heap, etc |
0xBFFFFFFF -------------------
```

### 🔹 (b) Kernel is always mapped

* If the kernel lives at high addresses, we can map it **into every process’s page table**.
* That means whenever the CPU switches to a new user process, the kernel memory is still there (no reload).
* Saves a lot of overhead and simplifies system calls / interrupts.

So every process sees:

```
Virtual Address Space:
0x00000000 ------------------ User space (unique per process)
            ...
0xBFFFFFFF ------------------
0xC0000000 ------------------ Kernel space (shared, same for all processes)
0xFFFFFFFF ------------------
```

### 🔹 (c) Protection

* The hardware MMU uses **page table permissions** to ensure:

  * User mode can access **only low memory** (user pages).
  * Kernel mode can access **all memory** (both user + kernel).

So:

* In **user mode**, trying to read/write `KERNBASE+` addresses → page fault.
* In **kernel mode**, those addresses are valid.

This is how the kernel is protected from user bugs.

---

## 3. Example: Linux on 32-bit x86

* Virtual memory = **4 GB** (32-bit).
* Split at `0xC0000000`:

  * `0x00000000–0xBFFFFFFF` (3 GB) → user space.
  * `0xC0000000–0xFFFFFFFF` (1 GB) → kernel space.

Every process sees **the same kernel at the top 1 GB**, and its own private 3 GB user space.

---

## 4. ARM / xv6

On ARM, xv6 uses something like:

* `KERNBASE = 0x80000000`
* User space = `0x00000000–0x7FFFFFFF`
* Kernel space = `0x80000000–0xFFFFFFFF`

Same logic applies.

---

## 5. Why not put kernel at low memory?

If kernel occupied low memory:

* User processes couldn’t start at 0, wasting low address space.
* You’d need to reload kernel mappings on every context switch → slow.
* Harder to enforce privilege separation (since kernel overlaps with user regions).

---

✅ **Summary**

* Kernel is placed in **high memory** so that:

  1. User programs can use low addresses freely.
  2. Kernel can be **mapped once, shared across all processes**.
  3. Protection is easy: user mode simply cannot access high addresses.

That’s why **user space = low memory, kernel space = high memory**.

---

👉 Do you want me to draw you a **side-by-side diagram of process memory layout** (showing user vs kernel split) so you can visualize this more clearly?

*/