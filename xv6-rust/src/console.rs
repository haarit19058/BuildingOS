use crate::types_h::*;
// use crate::defs::*;
use crate::param_h::*;
use crate::spinlock_h::*;
use crate::fs_h::*;
use crate::file_h::*;
use crate::memlayout_h::*;
use crate::mmu_h::*;
use crate::proc_h::*;

const BACKSPACE: i32 = 0x100;
const INPUT_BUF: usize = 512;

static mut PANICKED: bool = false;

static mut CONS: Console = Console {
    lock: SpinLock::new(),
    locking: 0,
};

struct Console {
    lock: SpinLock,
    locking: i32,
}

struct Input {
    lock: SpinLock,
    buf: [u8; INPUT_BUF],
    r: usize,
    w: usize,
    e: usize,
}

static mut INPUT: Input = Input {
    lock: SpinLock::new(),
    buf: [0; INPUT_BUF],
    r: 0,
    w: 0,
    e: 0,
};

fn consputc(c: i32) {
    unsafe {
        if PANICKED {
            cli();
            loop {}
        }

        if c == BACKSPACE {
            uartputc(b'\x08'); // \b
            uartputc(b' ');
            uartputc(b'\x08');
        } else {
            uartputc(c as u8);
        }
    }
}

fn printint(mut xx: i32, base: i32, sign: bool) {
    let digits = b"0123456789abcdef";
    let mut buf = [0u8; 16];
    let mut i = 0;
    let mut x: u32;

    let mut sgn = false;
    if sign && xx < 0 {
        sgn = true;
        x = (-xx) as u32;
    } else {
        x = xx as u32;
    }

    loop {
        buf[i] = digits[(x % base as u32) as usize];
        i += 1;
        x /= base as u32;
        if x == 0 { break; }
    }

    if sgn {
        buf[i] = b'-';
        i += 1;
    }

    while i > 0 {
        i -= 1;
        consputc(buf[i] as i32);
    }
}

pub unsafe fn cprintf(fmt: *const u8, args: ...) {
    let locking = CONS.locking != 0;
    if locking {
        acquire(&mut CONS.lock);
    }

    if fmt.is_null() {
        panic(b"null fmt\0".as_ptr());
    }

    // argument handling: Rust varargs not supported directly; emulate if needed

    if locking {
        release(&mut CONS.lock);
    }
}

pub fn panic(s: &str) {
    unsafe {
        cli();
        CONS.locking = 0;
        cprintf(format!("cpu{}: panic: {}\n", cpu.id, s).as_ptr());
        show_callstk(s);
        PANICKED = true;
        loop {}
    }
}

fn consoleintr(getc: fn() -> i32) {
    unsafe {
        acquire(&mut INPUT.lock);
        while let c @ _ if c >= 0 = getc() {
            match c {
                x if x == C(b'P') => procdump(),
                x if x == C(b'U') => {
                    while INPUT.e != INPUT.w && INPUT.buf[(INPUT.e - 1) % INPUT_BUF] != b'\n' {
                        INPUT.e -= 1;
                        consputc(BACKSPACE);
                    }
                }
                x if x == C(b'H') || x == 0x7f => {
                    if INPUT.e != INPUT.w {
                        INPUT.e -= 1;
                        consputc(BACKSPACE);
                    }
                }
                x if x == b'\t' => {
                    // TODO: autocomplete logic
                }
                _ => {
                    if INPUT.e - INPUT.r < INPUT_BUF {
                        let c = if c == b'\r' as i32 { b'\n' } else { c as u8 };
                        INPUT.buf[INPUT.e % INPUT_BUF] = c;
                        INPUT.e += 1;
                        consputc(c as i32);

                        if c == b'\n' || c == C(b'D') || INPUT.e == INPUT.r + INPUT_BUF {
                            INPUT.w = INPUT.e;
                            wakeup(&mut INPUT.r);
                        }
                    }
                }
            }
        }
        release(&mut INPUT.lock);
    }
}

fn consoleread(ip: &mut Inode, dst: &mut [u8]) -> i32 {
    unsafe {
        let n = dst.len();
        let mut i = 0;
        iunlock(ip);
        acquire(&mut INPUT.lock);

        while i < n {
            while INPUT.r == INPUT.w {
                if proc.killed {
                    release(&mut INPUT.lock);
                    ilock(ip);
                    return -1;
                }
                sleep(&mut INPUT.r, &mut INPUT.lock);
            }

            let c = INPUT.buf[INPUT.r % INPUT_BUF];
            INPUT.r += 1;

            if c == C(b'D') as u8 {
                if i < n { INPUT.r -= 1; }
                break;
            }

            dst[i] = c;
            i += 1;
            if c == b'\n' { break; }
        }

        release(&mut INPUT.lock);
        ilock(ip);
        i as i32
    }
}

fn consolewrite(ip: &mut Inode, buf: &[u8]) -> i32 {
    unsafe {
        iunlock(ip);
        acquire(&mut CONS.lock);
        for &b in buf {
            consputc(b as i32);
        }
        release(&mut CONS.lock);
        ilock(ip);
        buf.len() as i32
    }
}

pub fn consoleinit() {
    unsafe {
        initlock(&mut CONS.lock, b"console\0".as_ptr());
        initlock(&mut INPUT.lock, b"input\0".as_ptr());
        devsw[CONSOLE].write = Some(consolewrite);
        devsw[CONSOLE].read = Some(consoleread);
        CONS.locking = 1;
    }
}

const fn C(x: u8) -> i32 { (x - b'@') as i32 }
