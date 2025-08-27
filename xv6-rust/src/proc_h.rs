#![allow(non_camel_case_types)]
#![allow(dead_code)]

use crate::memlayout_h::uint;
use crate::types_h; // for types_h::uint, types_h::uchar, etc.
use crate::params_h; // for NCPU, NOFILE, etc.
use core::ffi::c_void;

/// Per-CPU state
#[repr(C)]
pub struct cpu {
    pub id: types_h::uchar,                  // index into cpus[] below
    pub scheduler: *mut context,    // swtch() here to enter scheduler
    pub started: core::sync::atomic::AtomicU32, // Has the CPU started?
    pub ncli: types_h::uint,                  // Depth of pushcli nesting
    pub intena: types_h::uint,                // Were interrupts enabled before pushcli?
    pub cpu: *mut cpu,              // Self-pointer
    pub proc: *mut proc,            // The currently running process
}

/// Saved registers for kernel context switches.
/// Keep in sync with swtch.S
#[repr(C)]
pub struct context {
    pub r4:  types_h::uint,
    pub r5:  types_h::uint,
    pub r6:  types_h::uint,
    pub r7:  types_h::uint,
    pub r8:  types_h::uint,
    pub r9:  types_h::uint,
    pub r10: types_h::uint,
    pub r11: types_h::uint,
    pub r12: types_h::uint,
    pub lr:  types_h::uint,
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
    pub syscount:  types_h::uint,
    pub sz:        types_h::uint,           // Size of process memory (bytes)
    pub pgdir:     *mut c_void,    // Page table (pde_t*)
    pub kstack:    *mut u8,        // Bottom of kernel stack for this process
    pub state:     procstate,      // Process state
    pub pid:       uint,            // Process ID
    pub parent:    *mut proc,      // Parent process
    pub tf:        *mut c_void,    // Trap frame for current syscall
    pub context:   *mut context,   // swtch() here to run process
    pub chan:      *mut c_void,    // If non-zero, sleeping on chan
    pub killed:    uint,            // If non-zero, have been killed
    pub ofile:     [*mut c_void; params_h::NOFILE as usize], // Open files
    pub cwd:       *mut c_void,    // Current directory (inode)
    pub name:      [u8; 16],       // Process name (debugging)
}

// Globals (to be defined elsewhere, like in proc.c originally)
// extern "C" {
//     pub static mut cpus: [cpu; params_h::NCPU as usize];
//     pub static mut ncpu: uint;

//     pub static mut cpu: *mut cpu;
//     pub static mut proc: *mut proc;
// }
