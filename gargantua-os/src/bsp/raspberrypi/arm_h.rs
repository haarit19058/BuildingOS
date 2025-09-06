#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]

// mod types_h;
// use crate::types_h; // import u32 = u32, etc. from your types.rs

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct trapframe {
    pub sp_usr:  u32,  // user mode sp
    pub lr_usr:  u32,  // user mode lr
    pub r14_svc: u32,  // r14_svc (r14_svc == pc if SWI)
    pub spsr:    u32,  // saved program status register
    pub r0:      u32,
    pub r1:      u32,
    pub r2:      u32,
    pub r3:      u32,
    pub r4:      u32,
    pub r5:      u32,
    pub r6:      u32,
    pub r7:      u32,
    pub r8:      u32,
    pub r9:      u32,
    pub r10:     u32,
    pub r11:     u32,
    pub r12:     u32,
    pub pc:      u32,  // (lr on entry) instruction to resume execution
}

// ===== CPSR/SPSR Bits =====
//
// CPSR (Current Program Status Register):
// - Condition flags: N Z C V Q
// - Interrupt masks: I (IRQ), F (FIQ)
// - State: T (Thumb), mode bits (M[4:0])
//
// SPSR (Saved Program Status Register):
// Each privileged mode has its own SPSR, used to save/restore CPSR.
//

pub const NO_INT: u32  = 0xc0;
pub const DIS_INT: u32 = 0x80;

// ===== ARM CPU Modes =====
pub const MODE_MASK: u32 = 0x1f;
pub const USR_MODE:  u32 = 0x10;
pub const FIQ_MODE:  u32 = 0x11;
pub const IRQ_MODE:  u32 = 0x12;
pub const SVC_MODE:  u32 = 0x13;
pub const ABT_MODE:  u32 = 0x17;
pub const UND_MODE:  u32 = 0x1b;
pub const SYS_MODE:  u32 = 0x1f;

// ===== Trap Vector Table =====
pub const TRAP_RESET: u32 = 0; // Reset
pub const TRAP_UND:   u32 = 1; // Undefined instruction
pub const TRAP_SWI:   u32 = 2; // Software interrupt (SWI)
pub const TRAP_IABT:  u32 = 3; // Instruction abort
pub const TRAP_DABT:  u32 = 4; // Data abort
pub const TRAP_NA:    u32 = 5; // Reserved
pub const TRAP_IRQ:   u32 = 6; // IRQ
pub const TRAP_FIQ:   u32 = 7; // FIQ
