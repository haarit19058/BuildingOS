// Memory layout



/*
In kernel mode, we usually want a fixed offset mapping between kernel virtual addresses and physical memory.
This is often called a “direct map”.


Without paging physical reality
Physical Memory (real RAM)
+-----------------------+ 0x00000000
|   Reserved (BIOS...) |
+-----------------------+ 0x00020000  <-- EXTMEM (kernel load addr)
|   Kernel code & data |
|        (1 MB)        |
+-----------------------+ 0x00100000  <-- INIT_KERNMAP end
|   Free memory        |
|       ...            |
+-----------------------+ higher addresses


With paging virtual cpu

Virtual Memory (as seen by kernel)
+-----------------------+ 0x80000000  <-- KERNBASE
|   Reserved (gap)      |
+-----------------------+ 0x80020000  <-- KERNLINK
|   Kernel code & data  |
|        (1 MB)         |
+-----------------------+ 0x80100000  <-- mapped up to INIT_KERNMAP
|   Free kernel memory  |
|       ...             |
+-----------------------+ higher addresses


till here the offset i smeant for kernel only fixed one

*/


// Key addresses for address space layout (see kmap in vm.c for layout)
#define EXTMEM	  		0x20000
#define KERNBASE  		0x80000000         // First kernel virtual address
#define KERNLINK  		(KERNBASE+EXTMEM)  // Address where kernel is linked

// we first map 1MB low memory containing kernel code.
#define INIT_KERNMAP 	0x100000

#ifndef __ASSEMBLER__

static inline uint v2p(void *a) { return ((uint) (a))  - KERNBASE; }
static inline void *p2v(uint a) { return (void *) ((a) + KERNBASE); }

#endif

#define V2P(a) (((uint) (a)) - KERNBASE)
#define P2V(a) (((void *) (a)) + KERNBASE)

#define V2P_WO(x) ((x) - KERNBASE)    // same as V2P, but without casts
#define P2V_WO(x) ((x) + KERNBASE)    // same as V2P, but without casts
