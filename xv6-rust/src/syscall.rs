// syscall.rs
#![allow(dead_code)]
#![allow(non_snake_case)]

use core::ptr;

use crate::types_h::*;   // uint, uint32, etc.
// use crate::defs::*;    // panic, cprintf
use crate::param_h::*;   // syscall numbers constants
use crate::mmu_h::*;     // v2p if needed
use crate::proc_h::*;    // proc struct and proc global (adjust to your layout)
use crate::arm_h::*;     // any arm constants used
use crate::syscall_h::*;

// Assumes TrapFrame is defined as in previous translation with fields r0..r12, etc.
use crate::arm::TrapFrame;

extern "C" {
    // The current process pointer (from your proc module / global)
    // If your symbol is in another module, adjust this declaration.
    static mut proc: *mut proc;
}

// Fetch the int at addr from the current process.
pub unsafe fn fetchint(addr: uint, ip: *mut i32) -> i32 {
    // ensure the address is inside the process memory
    if addr >= (*proc).sz || addr.wrapping_add(4) > (*proc).sz {
        return -1;
    }

    // addr is a user virtual address already mapped into kernel address space
    let p = addr as *const i32;
    ptr::write(ip, ptr::read(p));
    0
}

// Fetch the nul-terminated string at addr from the current process.
// Doesn't copy the string; sets *pp to point at it. Returns length (excluding nul).
pub unsafe fn fetchstr(addr: uint, pp: *mut *mut u8) -> i32 {
    if addr >= (*proc).sz {
        return -1;
    }

    let s = addr as *mut u8;
    let ep = (*proc).sz as *const u8;

    let mut cur = s as *const u8;
    while (cur as usize) < (ep as usize) {
        if ptr::read(cur) == 0 {
            ptr::write(pp, s);
            return (cur as isize - s as isize) as i32;
        }
        cur = cur.add(1);
    }

    -1
}

// Fetch nth 32-bit syscall argument. In our ABI, r0 contains syscall index,
// r1-r4 contain parameters. We support up to 4 parameters.
pub unsafe fn argint(n: usize, ip: *mut i32) -> i32 {
    if n > 3 {
        panic(b"too many system call parameters\n\0".as_ptr() as *const i8);
    }

    let tf = (*proc).tf as *const TrapFrame;

    let val: i32 = match n {
        0 => (*tf).r1 as i32,
        1 => (*tf).r2 as i32,
        2 => (*tf).r3 as i32,
        3 => (*tf).r4 as i32,
        _ => unreachable!(),
    };

    ptr::write(ip, val);
    0
}

// Fetch nth word-sized syscall argument as pointer to block of size `size`.
// Check pointer lies within process address space.
pub unsafe fn argptr(n: usize, pp: *mut *mut u8, size: uint) -> i32 {
    let mut i: i32 = 0;
    if argint(n, &mut i as *mut i32) < 0 {
        return -1;
    }

    if (i as uint) >= (*proc).sz || (i as uint).wrapping_add(size) > (*proc).sz {
        return -1;
    }

    ptr::write(pp, i as *mut u8);
    0
}

// Fetch nth argument as string pointer.
pub unsafe fn argstr(n: usize, pp: *mut *mut u8) -> i32 {
    let mut addr: i32 = 0;
    if argint(n, &mut addr as *mut i32) < 0 {
        return -1;
    }
    fetchstr(addr as uint, pp)
}

// Declarations of syscall handlers (extern "C" functions implemented elsewhere).
extern "C" {
    fn sys_chdir() -> i32;
    fn sys_close() -> i32;
    fn sys_dup() -> i32;
    fn sys_exec() -> i32;
    fn sys_exit() -> i32;
    fn sys_fork() -> i32;
    fn sys_fstat() -> i32;
    fn sys_getpid() -> i32;
    fn sys_kill() -> i32;
    fn sys_link() -> i32;
    fn sys_mkdir() -> i32;
    fn sys_mknod() -> i32;
    fn sys_open() -> i32;
    fn sys_pipe() -> i32;
    fn sys_read() -> i32;
    fn sys_sbrk() -> i32;
    fn sys_sleep() -> i32;
    fn sys_unlink() -> i32;
    fn sys_wait() -> i32;
    fn sys_write() -> i32;
    fn sys_uptime() -> i32;
    fn sys_ps() -> i32;
}

// Build syscall table as array indexed by syscall number.
// We'll use Option to represent empty slots; table size = max syscall number + 1.
const SYSCALL_MAX: usize = 22; // highest syscall number in your list

static SYSCALLS: [Option<unsafe extern "C" fn() -> i32>; SYSCALL_MAX + 1] = {
    let mut table: [Option<unsafe extern "C" fn() -> i32>; SYSCALL_MAX + 1] = [None; SYSCALL_MAX + 1];
    // populate
    table[SYS_fork as usize]   = Some(sys_fork);
    table[SYS_exit as usize]   = Some(sys_exit);
    table[SYS_wait as usize]   = Some(sys_wait);
    table[SYS_pipe as usize]   = Some(sys_pipe);
    table[SYS_read as usize]   = Some(sys_read);
    table[SYS_kill as usize]   = Some(sys_kill);
    table[SYS_exec as usize]   = Some(sys_exec);
    table[SYS_fstat as usize]  = Some(sys_fstat);
    table[SYS_chdir as usize]  = Some(sys_chdir);
    table[SYS_dup as usize]    = Some(sys_dup);
    table[SYS_getpid as usize] = Some(sys_getpid);
    table[SYS_sbrk as usize]   = Some(sys_sbrk);
    table[SYS_sleep as usize]  = Some(sys_sleep);
    table[SYS_uptime as usize] = Some(sys_uptime);
    table[SYS_open as usize]   = Some(sys_open);
    table[SYS_write as usize]  = Some(sys_write);
    table[SYS_mknod as usize]  = Some(sys_mknod);
    table[SYS_unlink as usize] = Some(sys_unlink);
    table[SYS_link as usize]   = Some(sys_link);
    table[SYS_mkdir as usize]  = Some(sys_mkdir);
    table[SYS_close as usize]  = Some(sys_close);
    table[SYS_ps as usize]     = Some(sys_ps);
    table
};

// Main syscall dispatcher: called when a SWI/trap happens.
pub unsafe fn syscall() {
    let num = (*(*proc).tf).r0 as usize;

    if num > 0 && num < SYSCALLS.len() {
        if let Some(f) = SYSCALLS[num] {
            let ret = f();
            (*proc).syscount = (*proc).syscount.wrapping_add(1);

            // Do not set return value for exec
            if num != SYS_exec as usize {
                (*(*proc).tf).r0 = ret as u32;
            }
            return;
        }
    }

    // unknown syscall
    cprintf(b"%d %s: unknown sys call %d\n\0".as_ptr() as *const i8, (*proc).pid, (*proc).name.as_ptr(), num as i32);
    (*(*proc).tf).r0 = u32::MAX as u32; // -1 in unsigned cast
}
