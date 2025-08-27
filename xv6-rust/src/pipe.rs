use crate::file_h::*;
use crate::spinlock_h::*;
use crate::proc_h::*;

const PIPESIZE: usize = 512;

pub struct Pipe {
    lock: SpinLock,
    data: [u8; PIPESIZE],
    nread: usize,     // bytes read
    nwrite: usize,    // bytes written
    readopen: bool,   // read fd is still open
    writeopen: bool,  // write fd is still open
}

impl Pipe {
    pub fn new() -> Option<Box<Self>> {
        let mut p = Box::new(Self {
            lock: SpinLock::new("pipe"),
            data: [0; PIPESIZE],
            nread: 0,
            nwrite: 0,
            readopen: true,
            writeopen: true,
        });
        Some(p)
    }
}

pub fn pipealloc(f0: &mut Option<File>, f1: &mut Option<File>) -> i32 {
    *f0 = File::alloc();
    *f1 = File::alloc();

    if f0.is_none() || f1.is_none() {
        return -1;
    }

    let p = match Pipe::new() {
        Some(pipe) => pipe,
        None => {
            f0.take().map(|f| f.close());
            f1.take().map(|f| f.close());
            return -1;
        }
    };

    // Initialize file ends
    f0.as_mut().unwrap().init_pipe(true, false, p.clone());
    f1.as_mut().unwrap().init_pipe(false, true, p.clone());

    0
}

pub fn pipeclose(p: &mut Pipe, writable: bool) {
    p.lock.acquire();
    if writable {
        p.writeopen = false;
        wakeup(&mut p.nread);
    } else {
        p.readopen = false;
        wakeup(&mut p.nwrite);
    }

    if !p.readopen && !p.writeopen {
        p.lock.release();
        // Memory freed automatically in Rust when Box goes out of scope
    } else {
        p.lock.release();
    }
}

pub fn pipewrite(p: &mut Pipe, buf: &[u8]) -> i32 {
    p.lock.acquire();

    let mut written = 0;
    for &byte in buf {
        while p.nwrite == p.nread + PIPESIZE {
            if !p.readopen || proc().killed {
                p.lock.release();
                return -1;
            }
            wakeup(&mut p.nread);
            sleep(&mut p.nwrite, &p.lock);
        }

        p.data[p.nwrite % PIPESIZE] = byte;
        p.nwrite += 1;
        written += 1;
    }

    wakeup(&mut p.nread);
    p.lock.release();
    written
}

pub fn piperead(p: &mut Pipe, buf: &mut [u8]) -> i32 {
    p.lock.acquire();

    while p.nread == p.nwrite && p.writeopen {
        if proc().killed {
            p.lock.release();
            return -1;
        }
        sleep(&mut p.nread, &p.lock);
    }

    let mut read = 0;
    for slot in buf.iter_mut() {
        if p.nread == p.nwrite {
            break;
        }
        *slot = p.data[p.nread % PIPESIZE];
        p.nread += 1;
        read += 1;
    }

    wakeup(&mut p.nwrite);
    p.lock.release();
    read
}
