#ifndef ARM_INCLUDE
#define ARM_INCLUDE

#include "device/versatile_pb.h"

/*
seven modes
1) USR : user mode normal application execution
2) SYS : privileged but like user
3) SVC(supervisor): OS kernel/SYScall
4) IRQ :interrupt handling mode
5) FIQ : fast interrupt handling
6) ABT : abort
7) UND : undefined

each mode may need its own dtack an raeturn address to handle events independently


TrapFrame:
snapshot of the program cpu register



*/

// banked registers : all modes shares same register but  for some critical registers arm provides banked versions - meaning eeach mode has its won private copy
// banked refisters are not overrriden

// trap frame: in ARM, there are seven modes. Among the 16 regular registers,
// r13 (sp - stack pointer), r14(lr - link register - stores return address), r15(pc - program counter) are banked in all modes.
// 1. In xv6_a, all kernel level activities (e.g., Syscall and IRQ) happens
// in the SVC mode. CPU is put in different modes by different events. We
// switch them to the SVC mode, by shoving the trapframe to the kernel stack.



// 2. during the context switched, the banked user space registers should also
// be saved/restored.


// Here is an example:
// 1. a user app issues a syscall (via SWI - software interrupt), its user-space registers are
// saved on its kernel stack, syscall is being served.
// 2. an interrupt happens, it preempted the syscall. the app's kernel-space
// registers are again saved on its stack.
// 3. interrupt service ended, and execution returns to the syscall.
// 4. kernel decides to reschedule (context switch), it saves the kernel states
// and switches to a new process (including user-space banked registers)
#ifndef __ASSEMBLER__
struct trapframe {
    uint    sp_usr;     // user mode sp
    uint    lr_usr;     // user mode lr
    uint    r14_svc;    // r14_svc (r14_svc == pc if SWI)
    uint    spsr;
    uint    r0;
    uint    r1;
    uint    r2;
    uint    r3;
    uint    r4;
    uint    r5;
    uint    r6;
    uint    r7;
    uint    r8;
    uint    r9;
    uint    r10;
    uint    r11;
    uint    r12;
    uint    pc;         // (lr on entry) instruction to resume execution
};
#endif

// cpsr - current program status register
/*
it holds information about:
- condition flags
- interrupt masks
- processor mode
- state

31   30   29   28   27..........8   7   6   5   4   3   2   1   0
N    Z    C    V    Q           | I | F | T |   Mode bits (5)


N (Negative): set if result of last ALU op was negative.

Z (Zero): set if result was zero.

C (Carry): carry/borrow from arithmetic.

V (Overflow): signed overflow.

Q: sticky overflow (for DSP).

I: IRQ disable bit (1 = mask IRQ).

F: FIQ disable bit (1 = mask FIQ).

T: Thumb state (1 = executing 16-bit Thumb instructions, 0 = 32-bit ARM instructions).


SPSR - saved program status register
When the CPU switches to an exception mode (IRQ, SVC, FIQ, etc.),
it saves the previous CPSR into a banked SPSR for that mode.

Each privileged mode has its own SPSR copy:

SPSR_irq

SPSR_svc

SPSR_fiq

etc.

This allows the handler to restore user state later.

*/
// cpsr/spsr bits
#define NO_INT      0xc0
#define DIS_INT     0x80

// ARM has 7 modes and banked registers
#define MODE_MASK   0x1f
#define USR_MODE    0x10
#define FIQ_MODE    0x11
#define IRQ_MODE    0x12
#define SVC_MODE    0x13
#define ABT_MODE    0x17
#define UND_MODE    0x1b
#define SYS_MODE    0x1f

// vector table

#define TRAP_RESET  0   // Reset
#define TRAP_UND    1   // Undefined instruction
#define TRAP_SWI    2   // Software interrupt (SWI)
#define TRAP_IABT   3   // Instruction abort
#define TRAP_DABT   4   // Data abort
#define TRAP_NA     5   // Not assigned (reserved)
#define TRAP_IRQ    6   // Interrupt request (IRQ)
#define TRAP_FIQ    7   // Fast interrupt request (FIQ)


#endif
