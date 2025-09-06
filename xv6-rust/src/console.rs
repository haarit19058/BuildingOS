#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]
#![allow(non_camel_case_types)]

use crate::spinlock_h::*;  
use crate::uart::*;
use crate::proc::{ procdump,wakeup};
use crate::arm::cli;
use crate::fs::*;
use crate::file_h::*; 
use crate::proc::*;

const INPUT_BUF: usize = 512;
const BACKSPACE: u8 = 0x10;
const C: fn(u8) -> u8 = |x| x - b'@';

static mut PANICKED: bool = false;

// static proc: *mut Proc = current_proc();
/// Console state
#[repr(C)]
pub struct cons_t {
    pub lock: spinlock,
    pub locking: i32,
}
pub static mut CONS: cons_t = cons_t {
    lock: spinlock::new(),
    locking: 0,
};

/// Input buffer
#[repr(C)]
pub struct inputbuf_t {
    pub lock: spinlock,
    pub buf: [u8; INPUT_BUF],
    pub r: usize,
    pub w: usize,
    pub e: usize,
}
pub static mut INPUT: inputbuf_t = inputbuf_t {
    lock: spinlock::new(),
    buf: [0; INPUT_BUF],
    r: 0,
    w: 0,
    e: 0,
};

// Console output
pub unsafe fn consputc(c: u8) {
    if PANICKED {
        cli();
        loop {}
    }

    if c == BACKSPACE {
        uartputc('\x08' as u32);
        uartputc(' ' as u32);
        uartputc('\x08' as u32);
    } else {
        uartputc(c as u32);
    }
}

// Print integer
pub unsafe fn printint( xx: i32, base: u32,  sign: bool) {
    let digits = b"0123456789abcdef";
    let mut buf = [0u8; 16];
    let mut i = 0;
    let x: u32;

    if sign && xx < 0 {
        x = xx.wrapping_neg() as u32;
    } else {
        x = xx as u32;
    }

    let mut val = x;
    loop {
        buf[i] = digits[(val % base) as usize];
        val /= base;
        i += 1;
        if val == 0 { break; }
    }

    if sign && xx < 0 {
        buf[i] = b'-';
        i += 1;
    }

    while i > 0 {
        i -= 1;
        consputc(buf[i]);
    }
}

// Simple cprintf with %d, %x, %p, %s
pub unsafe fn cprintf(fmt: *const u8, args: *const usize, _nargs: usize) {
    let mut argp = args;
    let mut i = 0;

    if CONS.locking != 0 {
        CONS.lock.acquire();
    }

    if fmt.is_null() {
        // panic(b"null fmt\0".as_ptr());
    }

    while *fmt.add(i) != 0 {
        let c = *fmt.add(i);
        if c != b'%' {
            consputc(c);
            i += 1;
            continue;
        }

        i += 1;
        let c2 = *fmt.add(i);
        match c2 {
            b'd' => {
                printint(*argp as i32, 10, true);
                argp = argp.add(1);
            }
            b'x' | b'p' => {
                printint(*argp as i32, 16, false);
                argp = argp.add(1);
            }
            b's' => {
                let s = *argp as *const u8;
                argp = argp.add(1);
                let mut j = 0;
                if !s.is_null() {
                    while *s.add(j) != 0 {
                        consputc(*s.add(j));
                        j += 1;
                    }
                } else {
                    for &b in b"(null)" { consputc(b); }
                }
            }
            b'%' => consputc(b'%'),
            _ => {
                consputc(b'%');
                consputc(c2);
            }
        }

        i += 1;
    }

    if CONS.locking != 0 {
        CONS.lock.release();
    }
}

// Console input interrupt
pub unsafe fn consoleintr(getc: fn() -> i32) {
    INPUT.lock.acquire();
    loop {
        let c = getc();
        if c < 0 { break; }

        match c {
            x if x == C(b'P') as i32 => procdump(),
            x if x == C(b'U') as i32 => {
                while INPUT.e != INPUT.w && INPUT.buf[(INPUT.e - 1) % INPUT_BUF] != b'\n' {
                    INPUT.e -= 1;
                    consputc(BACKSPACE);
                }
            }
            x if x == C(b'H') as i32 || x == 0x7f => {
                if INPUT.e != INPUT.w {
                    INPUT.e -= 1;
                    consputc(BACKSPACE);
                }
            }
            _ => {
                let c = if c == b'\r' as i32 { b'\n' } else { c as u8 };
                if INPUT.e - INPUT.r < INPUT_BUF {
                    INPUT.buf[INPUT.e % INPUT_BUF] = c;
                    INPUT.e += 1;
                    consputc(c);

                    if c == b'\n' || c == C(b'D') as u8 || INPUT.e - INPUT.r == INPUT_BUF {
                        INPUT.w = INPUT.e;
                        wakeup(INPUT.r as *mut u8);
                    }
                }
            }
        }
    }
    INPUT.lock.release();
}

use core::ptr;

pub unsafe fn consoleread(ip: *mut inode, mut dst: *mut u8, mut n: usize) -> isize {
    let target = n;
    let mut c: i32;

    iunlock(ip);

    INPUT.lock.acquire();

    while n > 0 {
        while INPUT.r == INPUT.w {
            if (*proc).killed != 0 {
                INPUT.lock.release();
                ilock(ip);
                return -1;
            }

            sleep(INPUT.r as *mut u8, &mut INPUT.lock);
        }

        c = INPUT.buf[INPUT.r % INPUT_BUF] as i32;
        INPUT.r = INPUT.r.wrapping_add(1);

        if c == C(b'D') as i32 { // EOF
            if n < target {
                INPUT.r = INPUT.r.wrapping_sub(1);
            }
            break;
        }

        ptr::write(dst, c as u8);
        dst = dst.add(1);
        n -= 1;

        if c == b'\n' as i32 {
            break;
        }
    }

    INPUT.lock.release();
    ilock(ip);

    (target - n) as isize
}

pub unsafe fn consolewrite(ip: *mut inode, buf: *const u8, n: usize) -> isize {
    iunlock(ip);

    CONS.lock.acquire();

    for i in 0..n {
        consputc(ptr::read(buf.add(i)) & 0xff);
    }

    CONS.lock.release();

    ilock(ip);

    n as isize
}


// Initialize console
pub unsafe fn consoleinit() {
    CONS.lock.acquire();
    INPUT.lock.acquire();
    // initlock(&mut CONS.lock, b"console\0".as_ptr());
    // initlock(&mut INPUT.lock, b"input\0".as_ptr());
    CONS.locking = 1;

    devsw[CONSOLE as usize].write = Some(consolewrite);
    devsw[CONSOLE as usize].read = Some(consoleread);
}
