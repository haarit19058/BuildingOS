#ifndef PROC_INCLUDE_
#define PROC_INCLUDE_

// Per-CPU state, now we only support one CPU


struct cpu {
    uchar           id;             // index into cpus[] below
    struct context*   scheduler;    // swtch() here to enter scheduler
    volatile uint   started;        // Has the CPU started?

    // cli i sclear interrupt flag
    /*
    pushcli() = disable interrupts, but also count how many times this has been done.
    popcli() = decrement counter; only re-enable interrupts when the count goes back to 0.
    */
    int             ncli;           // Depth of pushcli nesting.
    int             intena;         // Were interrupts enabled before pushcli?

    // Cpu-local storage variables; see below
    // dbt why cpu* is there in the file
    struct cpu*     cpu;
    struct proc*    proc;           // The currently-running process.
};

extern struct cpu cpus[NCPU];
extern int ncpu;


extern struct cpu* cpu;
extern struct proc* proc;

//PAGEBREAK: 17
// Saved registers for kernel context switches. The context switcher
// needs to save the callee save register, as usually. For ARM, it is
// also necessary to save the banked sp (r13) and lr (r14) registers.
// There is, however, no need to save the user space pc (r15) because
// pc has been saved on the stack somewhere. We only include it here
// for debugging purpose. It will not be restored for the next process.
// According to ARM calling convension, r0-r3 is caller saved. We do
// not need to save sp_svc, as it will be saved in the pcb, neither
// pc_svc, as it will be always be the same value.
//
// Keep it in sync with swtch.S
//
struct context {
    // svc mode registers
    uint    r4;
    uint    r5;
    uint    r6;
    uint    r7;
    uint    r8;
    uint    r9;
    uint    r10;
    uint    r11;
    uint    r12;
    uint    lr;
};


/*
1. unused
The process slot in the process table is free
the kernel hanst assigned this slot to any process yet
when teh allocproc() finds a slot unused it uses it to create a new process

2. Embryo
The process is being created. It just got teh slot in the process table but it is not ready to run yet
Once the setup is complete it the state is changed to runnable

3. Sleeping
the process is blocked waititng for an event (i/0,lock, or toehr condition)
it cannot run until somethign expelcitly wakes it up with wakeup()
the scheduler will ignore process in sleeping

4. Runnable
the procses is ready to run waititng for cpu time
it is teh process table and wil lbe picked up by the scheduler when the cpu is free
multiple runnable proceeses may exist and teh scheduelr picks one in a round robin fashion

5. running
the process is in running state currently executing on a cpu
there is one running process per cpu at a time
the scheduler sets a process state  to running when it switches to it

6. zombie
the process has finished executing but its parent has not yet called wait() to collect its exit status
the kernel keeps the process entry aroud so teh parent can read the exit code
once the parent calls wait() the process entry is cleand up set back to unused

UNUSED → EMBRYO → RUNNABLE → RUNNING → (SLEEPING ↔ RUNNABLE many times) → ZOMBIE → UNUSED

*/

enum procstate { UNUSED, EMBRYO, SLEEPING, RUNNABLE, RUNNING, ZOMBIE };

// Per-process state
struct proc {
    uint            sz;             // Size of process memory (bytes)
    pde_t*          pgdir;          // Page table
    char*           kstack;         // Bottom of kernel stack for this process
    enum procstate  state;          // Process state
    volatile int    pid;            // Process ID
    struct proc*    parent;         // Parent process
    struct trapframe*   tf;         // Trap frame for current syscall
    struct context* context;        // swtch() here to run process
    void*           chan;           // If non-zero, sleeping on chan
    int             killed;         // If non-zero, have been killed
    struct file*    ofile[NOFILE];  // Open files
    struct inode*   cwd;            // Current directory
    char            name[16];       // Process name (debugging)
};

// Process memory is laid out contiguously, low addresses first:
//   text
//   original data and bss
//   fixed-size stack
//   expandable heap
#endif
