#![allow(non_camel_case_types)]
#![allow(dead_code)]

use crate::arm_h::trapframe;
// use crate::file_h::file;
// use crate::file_h::inode;
// use crate::memlayout_h::;
// use crate::// for u32, u32, etc.
use crate::params;
// use crate::pde_t; // for NCPU, NOFILE, etc.
use core::ffi::c_void;

/// Per-CPU state
#[repr(C)]
pub struct cpu {
    pub id: u32,                  // index into cpus[] below
    pub scheduler: *mut context,    // swtch() here to enter scheduler
    pub started: core::sync::atomic::AtomicU32, // Has the CPU started?
    pub ncli: i32,                  // Depth of pushcli nesting
    pub intena: u32,                // Were interrupts enabled before pushcli?
    pub cpu: *mut cpu,              // Self-pointer
    pub proc: *mut proc,            // The currently running process
}

/// Saved registers for kernel context switches.
/// Keep in sync with swtch.S
#[repr(C)]
pub struct context {
    pub r4:  u32,
    pub r5:  u32,
    pub r6:  u32,
    pub r7:  u32,
    pub r8:  u32,
    pub r9:  u32,
    pub r10: u32,
    pub r11: u32,
    pub r12: u32,
    pub lr:  u32,
}

/// Process states
#[repr(C)]
#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub enum procstate {
    UNUSED,
    EMBRYO,
    SLEEPING,
    RUNNABLE,
    RUNNING,
    ZOMBIE,
}

/// Per-process state
#[repr(C)]
pub struct proc {
    pub syscount:  u32,
    pub sz:        u32,           // Size of process memory (bytes)
    pub pgdir:     *mut u32,    // Page table (pde_t*)
    pub kstack:    *mut u8,        // Bottom of kernel stack for this process
    pub state:     procstate,      // Process state
    pub pid:       u32,            // Process ID
    pub parent:    *mut proc,      // Parent process
    pub tf:        *mut trapframe,    // Trap frame for current syscall
    pub context:   *mut context,   // swtch() here to run process
    pub chan:      *mut c_void,    // If non-zero, sleeping on chan
    pub killed:    i32,            // If non-zero, have been killed
    // pub ofile:     [*mut file; params::NOFILE as usize], // Open files
    // pub cwd:       *mut inode,    // Current directory (inode)
    pub name:      [u8; 16],       // Process name (debugging)
}

// Globals (to be defined elsewhere, like in proc.c originally)
// extern "C" {
//     pub static mut cpus: [cpu; params::NCPU as usize];
//     pub static mut ncpu: u32;

//     pub static mut cpu: *mut cpu;
//     pub static mut proc: *mut proc;
// }
