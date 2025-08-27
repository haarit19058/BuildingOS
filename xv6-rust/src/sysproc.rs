use crate::proc_h::*;   // assume `proc` is a static/global current process pointer
use crate::spinlock_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::memlayout_h::*;
use crate::mmu_h::*;
use crate::arm_h::*;
// use crate::ps;

// External globals
extern "C" {
    static mut ticks: u32;
    static mut tickslock: SpinLock;
}

pub fn sys_fork() -> i32 {
    fork()
}

pub fn sys_exit() -> i32 {
    exit();
    0 // not reached
}

pub fn sys_wait() -> i32 {
    wait()
}

pub fn sys_kill() -> i32 {
    let mut pid: i32 = 0;
    if argint(0, &mut pid) < 0 {
        return -1;
    }
    kill(pid)
}

pub fn sys_getpid() -> i32 {
    unsafe { (*proc).pid }
}

pub fn sys_sbrk() -> i32 {
    let mut n: i32 = 0;
    if argint(0, &mut n) < 0 {
        return -1;
    }

    let addr = unsafe { (*proc).sz as i32 };

    if growproc(n) < 0 {
        return -1;
    }

    addr
}

pub fn sys_sleep() -> i32 {
    let mut n: i32 = 0;
    if argint(0, &mut n) < 0 {
        return -1;
    }

    unsafe {
        acquire(&mut tickslock);
        let ticks0 = ticks;

        while ticks.wrapping_sub(ticks0) < n as u32 {
            if (*proc).killed {
                release(&mut tickslock);
                return -1;
            }
            sleep(&ticks as *const u32 as *mut u32, &mut tickslock);
        }

        release(&mut tickslock);
    }
    0
}

pub fn sys_uptime() -> i32 {
    let xticks: u32;
    unsafe {
        acquire(&mut tickslock);
        xticks = ticks;
        release(&mut tickslock);
    }
    xticks as i32
}

pub fn sys_ps() -> i32 {
    ps();
    0
}
