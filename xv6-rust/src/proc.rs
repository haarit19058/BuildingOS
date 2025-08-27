#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(dead_code)]

use core::ptr;
use core::mem;

use crate::proc_h::{proc, procstate, context, cpu};
use crate::spinlock_h;
use crate::arm;
use crate::types_h::uint;
use crate::params_h::{NPROC, NOFILE,KSTACKSIZE};
use crate::mmu_h::{PTE_SZ};
// use crate::memlayout_h;
// use crate::mmu_h; // for page / kpt helpers - assumed present

// External helpers / functions assumed to be defined elsewhere:
// extern "C" {
//     fn forkret();
//     fn trapret();
//     fn initlog();
//     fn cprintf(fmt: &str, ...);
//     fn panic(msg: &str) -> !;
// }

// // Helper kernel functions assumed present elsewhere (signatures approximated)
// extern "Rust" {
//     // memory / page allocators
//     fn alloc_page() -> *mut u8;
//     fn free_page(p: *mut u8);

//     // page table helpers
//     fn kpt_alloc() -> *mut core::ffi::c_void;
//     fn inituvm(pgdir: *mut core::ffi::c_void, init: *const u8, sz: i32);
//     fn copyuvm(pgdir: *mut core::ffi::c_void, sz: uint) -> *mut core::ffi::c_void;
//     fn allocuvm(pgdir: *mut core::ffi::c_void, oldsz: uint, newsz: uint) -> uint;
//     fn deallocuvm(pgdir: *mut core::ffi::c_void, oldsz: uint, newsz: uint) -> uint;
//     fn freevm(pgdir: *mut core::ffi::c_void);
//     fn switchuvm(p: *mut );
//     fn safestrcpy(dst: *mut u8, src: *const u8, n: usize);
//     fn namei(path: *const u8) -> *mut core::ffi::c_void;

//     // file and inode helpers
//     fn fileclose(f: *mut crate::file_h::file);
//     fn idup(cwd: *mut core::ffi::c_void) -> *mut core::ffi::c_void;
//     fn iput(ip: *mut core::ffi::c_void);

//     // scheduling primitives
//     fn swtch(old_ctx: *mut *mut , new_ctx: *mut );
//     fn sleep(chan: *mut core::ffi::c_void, lk: *mut spinlock_h::spinlock);
//     fn wakeup1(chan: *mut core::ffi::c_void);
//     fn wakeup(chan: *mut core::ffi::c_void);
//     fn sched();
//     fn show_callstk(s: &str);

//     // syscount reporting (if any)
// }

// Process table
pub struct ptable {
    pub lock: spinlock_h::spinlock,
    pub proc: [proc; NPROC as usize],
}

impl ptable {
    pub const fn new() -> Self {
        // Assumes ::new() exists as a const fn to create zeroed/initial state.
        // If not const, consider runtime initialization in pinit().
        ptable {
            lock: spinlock_h::spinlock::new(),
            proc: crate::util::array_from_fn(|_| ::new()),
        }
    }
}

// Global process table, initproc and current proc pointer
static mut PTABLE: ptable = ptable::new();

static mut initproc: *mut  proc= ptr::null_mut();
pub static mut proc: *mut  proc= ptr::null_mut();

// next pid
static mut nextpid: int = 1isize; // we'll cast when needed

// Initialize process table lock
pub unsafe fn pinit() {
    PTABLE.lock.init(b"ptable\0".as_ptr());
}

// Allocate a process. Returns a pointer to proc or null on failure.
unsafe fn allocproc() -> *mut  proc{
    PTABLE.lock.acquire();

    // find UNUSED proc
    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc= &mut PTABLE.proc[i];
        if (*pptr).state == procstate::UNUSED {
            // found
            (*pptr).syscount = 0;
            (*pptr).state = procstate::EMBRYO;
            (*pptr).pid = nextpid as uint;
            nextpid += 1;
            PTABLE.lock.release();

            // allocate kernel stack
            let kstack = alloc_page();
            if kstack.is_null() {
                (*pptr).state = procstate::UNUSED;
                return ptr::null_mut();
            }
            (*pptr).kstack = kstack;

            // set up initial stack pointer
            let mut sp = kstack.add(KSTACKSIZE as usize);

            // leave room for trapframe
            sp = sp.offset(-(mem::size_of::<crate::arm_h::trapframe>() as isize) as usize);
            (*pptr).tf = sp as *mut crate::arm_h::trapframe;

            // set up context so that swtch will start at forkret -> trapret
            sp = sp.offset(-(4)); // for lr (trapret)
            // write trapret address
            let trapret_ptr = sp as *mut uint;
            *trapret_ptr = trapret as uint;

            sp = sp.offset(-(4));
            let kstack_top_ptr = sp as *mut uint;
            *kstack_top_ptr = (kstack as usize + KSTACKSIZE as usize) as uint;

            sp = sp.offset(-(mem::size_of::<>()));
            (*pptr).context = sp as *mut proc;

            // zero context
            ptr::write_bytes((*pptr).context as *mut u8, 0, mem::size_of::<>());

            // skip push {fp, lr} in forkret; set lr to forkret + 4
            (*(*pptr).context).lr = (forkret as usize + 4) as uint;

            return pptr;
        }
    }

    PTABLE.lock.release();
    ptr::null_mut()
}

// Panic helper for first process error
unsafe fn error_init() -> ! {
    panic("failed to craft first process\n");
}

// Create the first user process and set it runnable.
pub unsafe fn userinit() {
    extern "C" {
        static _binary_initcode_start: u8;
        static _binary_initcode_size: u8;
    }

    let p = allocproc();
    if p.is_null() {
        error_init();
    }
    initproc = p;
    (*p).parent = ptr::null_mut();

    // allocate page table and load initcode
    (*p).pgdir = kpt_alloc();
    if (*p).pgdir.is_null() {
        panic("userinit: out of memory?");
    }

    inituvm((*p).pgdir, &_binary_initcode_start as *const u8, (&_binary_initcode_size as *const u8 as isize) as i32);

    (*p).sz = PTE_SZ;

    // craft trapframe as if interrupted
    ptr::write_bytes((*p).tf as *mut u8, 0, mem::size_of::<crate::arm_h::trapframe>());

    (*p).tf.as_mut().unwrap().r14_svc = error_init as uint;
    (*p).tf.as_mut().unwrap().spsr = arm::spsr_usr();
    (*p).tf.as_mut().unwrap().sp_usr = PTE_SZ;
    (*p).tf.as_mut().unwrap().lr_usr = 0;
    (*p).tf.as_mut().unwrap().pc = 0;

    // name and cwd
    safestrcpy((*p).name.as_mut_ptr(), b"initcode\0".as_ptr(), (*p).name.len());
    (*p).cwd = namei(b"/\0".as_ptr());

    (*p).state = procstate::RUNNABLE;
}

// Grow current process's memory by n bytes.
pub unsafe fn growproc(n: i32) -> i32 {
    if proc.is_null() {
        return -1;
    }
    let mut sz = (*proc).sz;

    if n > 0 {
        let newsz = allocuvm((*proc).pgdir, sz, sz.wrapping_add(n as uint));
        if newsz == 0 {
            return -1;
        }
        sz = newsz;
    } else if n < 0 {
        let newsz = deallocuvm((*proc).pgdir, sz, sz.wrapping_add(n as uint));
        if newsz == 0 {
            return -1;
        }
        sz = newsz;
    }

    (*proc).sz = sz;
    switchuvm(proc);

    0
}

// Fork current process. Returns child's pid in parent, 0 in child, -1 on error.
pub unsafe fn fork() -> i32 {
    if proc.is_null() {
        return -1;
    }

    let np = allocproc();
    if np.is_null() {
        return -1;
    }

    // copy user memory
    let new_pgdir = copyuvm((*proc).pgdir, (*proc).sz);
    if new_pgdir.is_null() {
        free_page((*np).kstack);
        (*np).kstack = ptr::null_mut();
        (*np).state = procstate::UNUSED;
        return -1;
    }

    (*np).pgdir = new_pgdir;
    (*np).sz = (*proc).sz;
    (*np).parent = proc;

    // copy trapframe
    ptr::copy_nonoverlapping((*proc).tf, (*np).tf, 1);

    // child returns 0
    (*np).tf.as_mut().unwrap().r0 = 0;

    // duplicate open files
    for fd in 0..(NOFILE as usize) {
        if !(*proc).ofile[fd].is_null() {
            (*np).ofile[fd] = crate::file::filedup((*proc).ofile[fd]);
        }
    }

    (*np).cwd = idup((*proc).cwd);

    let pid = (*np).pid as i32;
    (*np).state = procstate::RUNNABLE;
    safestrcpy((*np).name.as_mut_ptr(), (*proc).name.as_ptr(), (*proc).name.len());

    pid
}

// Exit the current process. Does not return.
pub unsafe fn exit() -> !{
    if proc == initproc {
        panic("init exiting");
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

    // wake parent (could be sleeping in wait)
    wakeup1((*proc).parent as *mut core::ffi::c_void);

    // reparent children to initproc
    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc = &mut PTABLE.proc[i];
        if (*pptr).parent == proc {
            (*pptr).parent = initproc;
            if (*pptr).state == procstate::ZOMBIE {
                wakeup1(initproc as *mut core::ffi::c_void);
            }
        }
    }

    (*proc).state = procstate::ZOMBIE;
    // switch to scheduler never returns
    sched();

    // panic("zombie exit");
}

// Wait for a child process to exit and return its pid.
pub unsafe fn wait() -> i32 {
    PTABLE.lock.acquire();

    loop {
        let mut havekids = false;
        for i in 0..(NPROC as usize) {
            let pptr: *mut  proc = &mut PTABLE.proc[i];
            if (*pptr).parent != proc {
                continue;
            }
            havekids = true;
            if (*pptr).state == procstate::ZOMBIE {
                // found one
                let pid = (*pptr).pid as i32;
                free_page((*pptr).kstack);
                (*pptr).kstack = ptr::null_mut();
                freevm((*pptr).pgdir);
                (*pptr).state = procstate::UNUSED;
                (*pptr).pid = 0;
                (*pptr).parent = ptr::null_mut();
                (*pptr).name[0] = 0;
                (*pptr).killed = 0;
                PTABLE.lock.release();
                return pid;
            }
        }

        if !havekids || (*proc).killed != 0 {
            PTABLE.lock.release();
            return -1;
        }

        // wait for child to exit
        // sleep takes (chan, lock)
        sleep(proc as *mut core::ffi::c_void, &mut PTABLE.lock as *mut _);
    }
}

// Per-CPU scheduler. Never returns.
pub unsafe fn scheduler() -> ! {
    loop {
        arm::sti();

        PTABLE.lock.acquire();

        for i in 0..(NPROC as usize) {
            let pptr: *mut  proc = &mut PTABLE.proc[i];
            if (*pptr).state != procstate::RUNNABLE {
                continue;
            }

            proc = pptr;
            switchuvm(pptr);
            (*pptr).state = procstate::RUNNING;

            // context switch: swtch(&cpu->scheduler, proc->context)
            // here `cpu` is assumed to be a global pointer defined elsewhere (proc_h/global)
            swtch(&mut (*(crate::proc_h::cpu::get_cpu())).scheduler as *mut _, (*pptr).context);

            // when swtch returns, process no longer running
            proc = ptr::null_mut();
        }

        PTABLE.lock.release();
    }
}

// Enter scheduler. Must hold only ptable.lock and changed proc->state.
pub unsafe fn sched() {
    // show_callstk("sched");
    if !PTABLE.lock.holding() {
        panic("sched ptable.lock");
    }

    let cpu_ptr = crate::proc_h::cpu::get_cpu_ptr();
    if (*cpu_ptr).ncli != 1 {
        panic("sched locks");
    }

    if (*proc).state == procstate::RUNNING {
        panic("sched running");
    }

    if arm::int_enabled() != 0 {
        panic("sched interruptible");
    }

    let intena = (*cpu_ptr).intena;
    swtch(&mut (*proc).context as *mut _, (*cpu_ptr).scheduler);
    (*cpu_ptr).intena = intena;
}

// Yield CPU for one scheduling round.
pub unsafe fn yield_proc() {
    PTABLE.lock.acquire();
    (*proc).state = procstate::RUNNABLE;
    sched();
    PTABLE.lock.release();
}

// fork child's first scheduling will land here. Return to user space.
pub unsafe fn forkret() {
    static mut FIRST: bool = true;

    PTABLE.lock.release();

    if FIRST {
        FIRST = false;
        initlog();
    }

    // return to trapret (the code at allocproc arranged lr)
}

// Sleep on channel atomically releasing lock and reacquire on wakeup.
pub unsafe fn sleep_chan(chan: *mut core::ffi::c_void, lk: *mut spinlock_h::spinlock) {
    if proc.is_null() {
        panic("sleep");
    }

    if lk.is_null() {
        panic("sleep without lk");
    }

    if lk != &mut PTABLE.lock as *mut _ {
        PTABLE.lock.acquire();
        (*lk).release();
    }

    (*proc).chan = chan;
    (*proc).state = procstate::SLEEPING;
    sched();

    (*proc).chan = ptr::null_mut();

    if lk != &mut PTABLE.lock as *mut _ {
        PTABLE.lock.release();
        (*lk).acquire();
    }
}

// Wakeup1: must be called with ptable.lock held.
// Wake up all processes sleeping on chan.
unsafe fn wakeup1_internal(chan: *mut core::ffi::c_void) {
    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc= &mut PTABLE.proc[i];
        if (*pptr).state == procstate::SLEEPING && (*pptr).chan == chan {
            (*pptr).state = procstate::RUNNABLE;
        }
    }
}

// Wakeup all processes sleeping on chan.
pub unsafe fn wakeup_public(chan: *mut core::ffi::c_void) {
    PTABLE.lock.acquire();
    wakeup1_internal(chan);
    PTABLE.lock.release();
}

// Kill the process with given pid.
pub unsafe fn kill(pid: i32) -> i32 {
    PTABLE.lock.acquire();

    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc= &mut PTABLE.proc[i];
        if (*pptr).pid as i32 == pid {
            (*pptr).killed = 1;
            if (*pptr).state == procstate::SLEEPING {
                (*pptr).state = procstate::RUNNABLE;
            }
            PTABLE.lock.release();
            return 0;
        }
    }

    PTABLE.lock.release();
    -1
}

// Print process list for debugging (no locks to avoid wedging).
pub unsafe fn procdump() {
    let states = [
        "unused", "embryo", "sleep ", "runble", "run   ", "zombie",
    ];

    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc= &mut PTABLE.proc[i];
        if (*pptr).state == procstate::UNUSED {
            continue;
        }

        let state_idx = match (*pptr).state {
            procstate::UNUSED => 0,
            procstate::EMBRYO => 1,
            procstate::SLEEPING => 2,
            procstate::RUNNABLE => 3,
            procstate::RUNNING => 4,
            procstate::ZOMBIE => 5,
            _ => 0,
        };

        let state_str = states[state_idx];
        cprintf("%d %s %s\n", (*pptr).pid, state_str, (*pptr).name.as_ptr());
    }

    show_callstk("procdump: \n");
}

// Print running processes: pid, parent pid, state, name, syscalls
pub unsafe fn ps() {
    let states = [
        "unused", "embryo", "sleep", "runble", "run", "zombie",
    ];

    PTABLE.lock.acquire();

    cprintf("PID\tPARENT PID\tSTATE\t\tNAME\tSYSCALLS\n");

    for i in 0..(NPROC as usize) {
        let pptr: *mut  proc = &mut PTABLE.proc[i];
        if (*pptr).state == procstate::UNUSED {
            continue;
        }

        let state_idx = match (*pptr).state {
            procstate::UNUSED => 0,
            procstate::EMBRYO => 1,
            procstate::SLEEPING => 2,
            procstate::RUNNABLE => 3,
            procstate::RUNNING => 4,
            procstate::ZOMBIE => 5,
            _ => 0,
        };

        let state_str = states[state_idx];
        let ppid = if !(*pptr).parent.is_null() { (*(*pptr).parent).pid as i32 } else { -1 };

        cprintf("%d\t%d\t\t%s\t\t%s\t%d\n",
                (*pptr).pid,
                ppid,
                state_str,
                (*pptr).name.as_ptr(),
                (*pptr).syscount);
    }

    PTABLE.lock.release();
}
