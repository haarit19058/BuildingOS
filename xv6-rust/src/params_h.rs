// params_h.rs

pub const NPROC: usize      = 64;    // maximum number of processes
pub const KSTACKSIZE: usize = 4096;  // size of per-process kernel stack
pub const NCPU: usize       = 8;     // maximum number of CPUs
pub const NOFILE: usize     = 16;    // open files per process
pub const NFILE: usize      = 100;   // open files per system
pub const NBUF: usize       = 10;    // size of disk block cache
pub const NINODE: usize     = 50;    // maximum number of active i-nodes
pub const NDEV: usize       = 10;    // maximum major device number
pub const ROOTDEV: usize    = 1;     // device number of file system root disk
pub const MAXARG: usize     = 32;    // max exec arguments
pub const LOGSIZE: usize    = 10;    // max data sectors in on-disk log

pub const HZ: usize         = 10;    // timer interrupts per second
pub const N_CALLSTK: usize  = 15;    // call stack depth
