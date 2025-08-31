#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]

// use crate::types_h::*;
use crate::params_h::*;       // NPROC, KSTACKSIZE, NOFILE, PTE_SZ, etc.
// use crate::memlayout_h::*;
use crate::string_h::*;
use crate::mmu_h::*;
use crate::arm_h::*;
use crate::arm::*;
use crate::spinlock_h::*;
use crate::proc_h::{proc as Proc,procstate,context,cpu as CPU};
// use crate::proc::*;          // struct proc, trapframe, context, etc.
use crate::fs::*;
use crate::file::*;
use crate::buddy::*;       // alloc_page, free_page (assumed)
use crate::vm::*;           // kpt_alloc, inituvm, copyuvm, freevm
use crate::log::*;          use core::ffi::c_void;
// initlog
use core::ptr;

/// Process table
// use core::ptr;

pub struct PTable {
    pub lock: spinlock,
    pub proc: [*mut Proc; NPROC as usize],  // array of raw pointers
}

impl PTable {
    pub const fn new() -> Self {
        PTable {
            lock: spinlock::new(),
            proc: [ptr::null_mut(); NPROC as usize], // initialize all to null
        }
    }
}


/// Global process table and globals
pub static mut PTABLE: PTable = PTable::new();
pub static mut initproc: *mut Proc = ptr::null_mut();
pub static mut proc: *mut Proc = ptr::null_mut(); // current running process (on this CPU)
pub static mut nextpid: i32 = 1;

extern "C" {
//     fn forkret();
    fn trapret();
}

pub unsafe fn cpu() -> &'static mut CPU {
    if cpu.is_null() {
        panic!("cpu: cpu is null");
    }
    &mut *cpu
}

pub unsafe fn current_proc() -> *mut Proc {
    proc
}


/// Helper to wake up processes sleeping on `chan`. `ptable.lock` must be held.
unsafe fn wakeup1(chan: *const u8) {
    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i];
        if (*p).state == procstate::SLEEPING  && (*p).chan == chan as *mut _ {
            (*p).state = procstate::RUNNABLE;
        }
    }
}

/// Initialize process table lock.
pub unsafe fn pinit() {
    PTABLE.lock.init("ptable\0".as_ptr());
}

/// Allocate a new process slot and set up kernel stack/context.
/// Returns null on failure.
pub unsafe fn allocproc() -> *mut Proc {
    PTABLE.lock.acquire();

    // find UNUSED slot
    let mut found: Option<usize> = None;
    for i in 0..(NPROC as usize) {
        if (*PTABLE.proc[i]).state == procstate::UNUSED  {
            found = Some(i);
            break;
        }
    }

    if found.is_none() {
        PTABLE.lock.release();
        return ptr::null_mut();
    }

    let idx = found.unwrap();
    let p: *mut Proc = PTABLE.proc[idx] as *mut Proc;

    // initialize proc fields
    (*p).syscount = 0;
    (*p).state = procstate::EMBRYO ;
    (*p).pid = nextpid as u32;
    nextpid += 1;

    PTABLE.lock.release();

    // allocate kernel stack
    let ks = alloc_page();
    if ks.is_null() {
        (*p).state = procstate::UNUSED ;
        return ptr::null_mut();
    }
    (*p).kstack = ks as *mut u8;

    // set up kernel stack layout: trapframe, return lr/context
    let mut sp = (ks as usize) + KSTACKSIZE as usize;

    // leave room for trapframe
    sp -= core::mem::size_of::<trapframe>();
    (*p).tf = sp as *mut trapframe;

    // push trapret as return address
    sp -= 4;
    *(sp as *mut u32) = trapret as u32 ;

    // push top of kernel stack as dummy frame pointer (platform-specific)
    sp -= 4;
    *(sp as *mut u32) = ((ks as usize) + KSTACKSIZE as usize) as u32;

    // allocate context
    sp -= core::mem::size_of::<context>();
    (*p).context = sp as *mut context;
    ptr::write_bytes((*p).context as *mut u8, 0, core::mem::size_of::<context>());

    // set link register to forkret + 4 to skip prologue push in forkret (ARM)
    (*p).context.as_mut().unwrap().lr = (forkret as usize + 4) as u32;

    p
}

/// Called if user process creation failed in a way we couldn't recover from.
pub unsafe fn error_init() -> ! {
    panic!("failed to craft first process");
}

/// Create the first user process, loading initcode.
pub unsafe fn userinit() {
    // linker-provided binary for initcode
    extern "C" {
        static __binary_initcode_start: u8;
        static __binary_initcode_size: u32;
    }

    let p = allocproc();
    if p.is_null() {
        error_init();
    }
    initproc = p;
    (*p).parent = ptr::null_mut();

    // allocate page table
    (*p).pgdir = kpt_alloc();
    if (*p).pgdir.is_null() {
        panic!("userinit: out of memory?");
    }

    // initialize user memory with initcode
    inituvm((*p).pgdir, &__binary_initcode_start as *const u8, __binary_initcode_size as u32);

    (*p).sz = PTE_SZ as u32;

    // craft trapframe for user mode
    ptr::write_bytes((*p).tf as *mut u8, 0, core::mem::size_of::<trapframe>());

    (*p).tf.as_mut().unwrap().r14_svc = error_init as u32; // r14_svc
    (*p).tf.as_mut().unwrap().spsr = spsr_usr();
    (*p).tf.as_mut().unwrap().sp_usr = PTE_SZ as u32;
    (*p).tf.as_mut().unwrap().lr_usr = 0;
    (*p).tf.as_mut().unwrap().pc = 0;

    safestrcpy((*p).name.as_mut_ptr(), "initcode\0".as_ptr(), core::mem::size_of_val(&(*p).name));
    (*p).cwd = namei("/\0".as_ptr());

    (*p).state = procstate::RUNNABLE;
}

/// Grow or shrink current process memory by n bytes.
/// Returns 0 on success, -1 on failure.
pub unsafe fn growproc(n: isize) -> i32 {
    let mut sz = (*proc).sz;
    if n > 0 {
        let newsz = allocuvm((*proc).pgdir, sz, (sz as isize + n) as u32);
        if newsz == 0 {
            return -1;
        }
        sz = newsz;
    } else if n < 0 {
        let newsz = deallocuvm((*proc).pgdir, sz, (sz as isize + n) as u32);
        if newsz == 0 {
            return -1;
        }
        sz = newsz;
    }
    (*proc).sz = sz;
    switchuvm(proc);
    0
}

/// Fork the current process. Returns child pid in parent, 0 in child, or -1 on error.
pub unsafe fn fork() -> i32 {
    // allocate new proc
    let np = allocproc();
    if np.is_null() {
        return -1;
    }

    // copy user memory
    let newpgdir = copyuvm((*proc).pgdir, (*proc).sz);
    if newpgdir.is_null() {
        free_page((*np).kstack as *mut c_void);
        (*np).kstack = ptr::null_mut();
        (*np).state = procstate::UNUSED;
        return -1;
    }
    (*np).pgdir = newpgdir;
    (*np).sz = (*proc).sz;
    (*np).parent = proc;
    *(*np).tf = *(*proc).tf;

    // child returns 0
    (*np).tf.as_mut().unwrap().r0 = 0;

    // copy file descriptors
    for i in 0..NOFILE as usize {
        if !(*proc).ofile[i].is_null() {
            (*np).ofile[i] = filedup((*proc).ofile[i]);
        }
    }

    (*np).cwd = idup((*proc).cwd);

    let pid = (*np).pid;
    (*np).state = procstate::RUNNABLE;
    safestrcpy((*np).name.as_mut_ptr(), (*proc).name.as_ptr() , core::mem::size_of_val(&(*proc).name));
    pid as i32
}

/// Exit current process. Does not return.
pub unsafe fn exit() -> ! {
    if proc == initproc {
        panic!("init exiting");
    }

    // close files
    for fd in 0..(NOFILE as usize) {
        if !(*proc).ofile[fd].is_null() {
            fileclose((*proc).ofile[fd]);
            (*proc).ofile[fd] = ptr::null_mut();
        }
    }

    iput((*proc).cwd);
    (*proc).cwd = ptr::null_mut();

    PTABLE.lock.acquire();

    // wake parent
    wakeup1((*proc).parent as *const u8);

    // pass abandoned children to init
    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i] as *mut Proc;
        if (*p).parent == proc {
            (*p).parent = initproc;
            if (*p).state == procstate::ZOMBIE {
                wakeup1(initproc as *const u8);
            }
        }
    }

    // become zombie and schedule away
    (*proc).state = procstate::ZOMBIE ;
    sched();

    panic!("zombie exit");
}

/// Wait for a child to exit; return its pid or -1.
pub unsafe fn wait() -> i32 {
    PTABLE.lock.acquire();

    loop {
        let mut havekids = false;
        for i in 0..(NPROC as usize) {
            let p = PTABLE.proc[i] as *mut Proc;
            if (*p).parent != proc {
                continue;
            }
            havekids = true;
            if (*p).state == procstate::ZOMBIE{
                // found one
                let pid = (*p).pid;
                free_page((*p).kstack as *mut c_void);
                (*p).kstack = ptr::null_mut();
                freevm((*p).pgdir);
                (*p).state = procstate::UNUSED;
                (*p).pid = 0;
                (*p).parent = ptr::null_mut();
                (*p).name[0] = 0;
                (*p).killed = 0;
                PTABLE.lock.release();
                return pid as i32;
            }
        }

        if !havekids || (*proc).killed != 0 {
            PTABLE.lock.release();
            return -1;
        }

        // wait for children
        sleep(proc as *mut _ as *mut u8, &mut PTABLE.lock);
    }
}

/// Per-CPU scheduler loop. This never returns.
pub unsafe fn scheduler() -> ! {
    loop {
        sti(); // enable interrupts

        PTABLE.lock.acquire();

        for i in 0..(NPROC as usize) {
            let p = PTABLE.proc[i] as *mut Proc;
            if (*p).state != procstate::RUNNABLE {
                continue;
            }

            proc = p;
            switchuvm(p);
            (*p).state = procstate::RUNNING ;

            // context switch to process
            swtch(&mut cpu().scheduler, (*p).context);

            // when returning here, process is no longer running
            proc = ptr::null_mut();
        }

        PTABLE.lock.release();
    }
}

/// Enter scheduler; must hold only ptable.lock and have changed proc->state.
pub unsafe fn sched() {
    // check invariants
    if !PTABLE.lock.holding() {
        panic!("sched: ptable.lock");
    }

    if cpu().ncli != 1 {
        panic!("sched: locks");
    }

    if (*proc).state == procstate::RUNNING{
        panic!("sched: running");
    }

    if int_enabled() == 0 {
        panic!("sched: interruptible");
    }

    let intena = cpu().intena;
    swtch(&mut (*proc).context, cpu().scheduler);
    cpu().intena = intena;
}

/// Yield CPU voluntarily.
pub unsafe fn yield_cpu() {
    PTABLE.lock.acquire();
    (*proc).state = procstate::RUNNABLE ;
    sched();
    PTABLE.lock.release();
}

/// First scheduling point for a forked child.
pub unsafe fn forkret() {
    static mut FIRST: bool = true;

    // still holding ptable.lock from scheduler
    PTABLE.lock.release();

    if FIRST {
        FIRST = false;
        initlog(); // run one-time init that requires process context
    }

    // return to trapret (done by context / lr)
}

/// Sleep on channel `chan`. `lk` is the lock the caller holds.
/// Atomically release `lk` and sleep; reacquire `lk` when awoken.
pub unsafe fn sleep(chan: *mut u8, lk: &mut spinlock) {
    if proc.is_null() {
        panic!("sleep: no proc");
    }
    if lk as *mut _ == ptr::null_mut() {
        panic!("sleep without lk");
    }

    // Acquire ptable lock to modify proc state without races.
    if lk as *mut _ != &mut PTABLE.lock as *mut _ {
        PTABLE.lock.acquire();
        lk.release();
    }

    // go to sleep
    (*proc).chan = chan as *mut _;
    (*proc).state = procstate::SLEEPING ;
    sched();

    // tidy up
    (*proc).chan = ptr::null_mut();

    // reacquire original lock
    if lk as *mut _ != &mut PTABLE.lock as *mut _ {
        PTABLE.lock.release();
        lk.acquire();
    }
}

/// Wake up all processes sleeping on `chan`. ptable.lock must be held by caller.
unsafe fn wakeup1_chan(chan: *mut u8) {
    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i] as *mut Proc;
        if (*p).state == procstate::SLEEPING && (*p).chan == chan as *mut _ {
            (*p).state = procstate::RUNNABLE ;
        }
    }
}

/// Wake up all processes sleeping on `chan`.
pub unsafe fn wakeup(chan: *mut u8) {
    PTABLE.lock.acquire();
    wakeup1_chan(chan);
    PTABLE.lock.release();
}

/// Kill process with pid. Returns 0 on success, -1 if not found.
pub unsafe fn kill(pid: i32) -> i32 {
    PTABLE.lock.acquire();
    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i] as *mut Proc;
        if (*p).pid == pid as u32{
            (*p).killed = 1;
            if (*p).state == procstate::SLEEPING{
                (*p).state = procstate::RUNNABLE;
            }
            PTABLE.lock.release();
            return 0;
        }
    }
    PTABLE.lock.release();
    -1
}

/// Print process list for debugging. No lock to avoid wedging the machine.
pub unsafe fn procdump() {
    // textual states mapping - ensure it matches your enum/consts
    let states = [
        "unused", "embryo", "sleep ", "runble", "run   ", "zombie"
    ];

    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i] as *mut Proc;
        if (*p).state == procstate::UNUSED {
            continue;
        }

        let s = if (*p).state >= 0 && ((*p).state as usize) < states.len() {
            states[(*p).state as usize]
        } else {
            "???"
        };

        cprintf!("{} {} {}\n\0", (*p).pid, s.as_ptr() as u32, (*p).name.as_ptr() as u32);
    }

    show_callstk("procdump: \n\0" );
}

/// Print running processes table (PID, PPID, STATE, NAME, SYSCALLS)
pub unsafe fn ps() {
    let states = [
        "unused", "embryo", "sleep", "runble", "run", "zombie"
    ];

    PTABLE.lock.acquire();
    cprintf!("PID\tPPID\tSTATE\t\tNAME\tSYSCALLS\n\0");

    for i in 0..(NPROC as usize) {
        let p = PTABLE.proc[i] as *mut Proc;
        if (*p).state == procstate::UNUSED {
            continue;
        }

        let s = if (*p).state >= 0 && (*p).state as usize < states.len() {
            states[(*p).state as usize]
        } else {
            "???"
        };

        let ppid = if !(*p).parent.is_null() { (*(*p).parent).pid } else { -1 };
        cprintf!("{}\t{}\t\t{}\t\t\t{}\n\0",
                (*p).pid, ppid,
                s,
                // (*p).name,
                (*p).syscount);
    }

    PTABLE.lock.release();
}
