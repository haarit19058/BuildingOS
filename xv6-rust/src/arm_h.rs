// arm.rs

// ===== ARM CPU Modes =====
//
// ARM has 7 CPU modes:
// 1) USR : user mode normal application execution
// 2) SYS : privileged but like user
// 3) SVC : supervisor mode, used by OS kernel/syscalls
// 4) IRQ : interrupt handling mode
// 5) FIQ : fast interrupt handling mode
// 6) ABT : abort mode (memory faults)
// 7) UND : undefined instruction mode
//
// Each mode can have its own banked SP/LR registers and SPSR copy.
// trapframe is a snapshot of CPU registers pushed on the stack
// when an exception/interrupt occurs.
//

#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(non_upper_case_globals)]

// mod types_h;
use crate::types_h; // import types_h::uint = u32, etc. from your types.rs

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct trapframe {
    pub sp_usr:  types_h::uint,  // user mode sp
    pub lr_usr:  types_h::uint,  // user mode lr
    pub r14_svc: types_h::uint,  // r14_svc (r14_svc == pc if SWI)
    pub spsr:    types_h::uint,  // saved program status register
    pub r0:      types_h::uint,
    pub r1:      types_h::uint,
    pub r2:      types_h::uint,
    pub r3:      types_h::uint,
    pub r4:      types_h::uint,
    pub r5:      types_h::uint,
    pub r6:      types_h::uint,
    pub r7:      types_h::uint,
    pub r8:      types_h::uint,
    pub r9:      types_h::uint,
    pub r10:     types_h::uint,
    pub r11:     types_h::uint,
    pub r12:     types_h::uint,
    pub pc:      types_h::uint,  // (lr on entry) instruction to resume execution
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
