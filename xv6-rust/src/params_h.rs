// params_h.rs

pub const NPROC: u32      = 64;    // maximum number of processes
pub const KSTACKSIZE: u32 = 4096;  // size of per-process kernel stack
pub const NCPU: u32       = 8;     // maximum number of CPUs
pub const NOFILE: u32     = 16;    // open files per process
pub const NFILE: u32      = 100;   // open files per system
pub const NBUF: u32       = 10;    // size of disk block cache
pub const NINODE: u32     = 50;    // maximum number of active i-nodes
pub const NDEV: u32       = 10;    // maximum major device number
pub const ROOTDEV: u32    = 1;     // device number of file system root disk
pub const MAXARG: u32     = 32;    // max exec arguments
pub const LOGSIZE: u32    = 10;    // max data sectors in on-disk log

pub const HZ: u32         = 10;    // timer interrupts per second
pub const N_CALLSTK: u32  = 15;    // call stack depth
