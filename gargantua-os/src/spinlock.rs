#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]
#![allow(non_snake_case)]

use crate::{  proc_h,arm};

#[repr(C)]
pub struct spinlock {
    /// Is the lock held? (0 = unlocked, 1 = locked)
    pub locked: u32,

    /// Name of the lock (for debugging).
    /// In C this was a `char *`, here we use raw pointer for compatibility.
    pub name: *const u8,

    /// The CPU holding the lock (can be null if unlocked).
    /// In C this was `struct cpu *`, so we use a raw pointer here too.
    pub cpu: *mut proc_h::cpu,

    /// The call stack (array of program counters) that locked the lock.
    pub pcs: [u32; 10],
}

impl spinlock {
    // what was the issue here ??
    /*
        vm.rs
        static mut KPT_MEM: KptMem = KptMem { lock: spinlock_h::spinlock::init(b"mylock".as_ptr()), freelist: core::ptr::null_mut(), };

        this code didnt work
    
     */
    pub const fn new() -> Self {
        Self {
            locked: 0,
            name: core::ptr::null(),
            cpu: core::ptr::null_mut(),
            pcs: [0; 10], // adjust based on your N_CALLSTK
        }
    }

    pub unsafe fn init(&mut self, name: *const u8) {
        self.name = name;
        self.locked = 0;
        self.cpu = core::ptr::null_mut();
        // pcs stays zeroed
    }

    pub unsafe fn acquire(&mut self) {
        arm::pushcli();
        self.locked = 1;
    }

    pub unsafe fn release(&mut self) {
        self.locked = 0;
        arm::popcli();
    }

    pub fn holding(&self) -> bool {
        self.locked != 0
    }
}
// Forward declare CPU struct so spinlock can reference it.
// #[repr(C)]
// pub struct proc_h::cpu {
//     // Fill in later as you implement your proc_h::cpu struct
// }
