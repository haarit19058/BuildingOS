#![allow(non_camel_case_types)]
#![allow(non_snake_case)]
// #![no_std]

use core::ptr;

use crate::types_h::*; // for uint aliases if you use them
use crate::arm_h;  // assume arm_h::trapframe exists

// Register offsets (word offsets; we index as VIC_BASE.add(offset))
const VIC_IRQSTATUS: uint = 0;
const VIC_FIQSTATUS: uint = 1;
const VIC_RAWINTR: uint = 2;
const VIC_INTSEL: uint = 3;
const VIC_INTENABLE: uint = 4;
const VIC_INTCLEAR: uint = 5;
const VIC_PROTECTION: uint = 8;

const NUM_INTSRC: uint = 32;

// ISR type alias: a function that takes (*mut trapframe, int) and returns ()
pub type ISR = fn(*mut arm_h::trapframe, uint);

// Storage for VIC base pointer and ISR table
static mut VIC_BASE: *mut u32 = core::ptr::null_mut();
static mut ISRS: [ISR; NUM_INTSRC as usize] = [default_isr; NUM_INTSRC as usize];

// Default ISR - called for unhandled interrupts. Keep lightweight.
fn default_isr(_tf: *mut arm_h::trapframe, n: uint) {
    // You can call your console printing routine here if available.
    // e.g. crate::console::cprintf(b"unhandled interrupt: %d\n\0".as_ptr(), n);
    // For now we keep this a no-op to avoid additional dependencies.
    let _ = n;
}

/// Initialize the PL190 VIC with a base address (pointer to the controller's registers).
/// `base` should be a pointer to the mapped VIC MMIO region (word-addressable).
pub unsafe fn pic_init(base: *mut u32) {
    // Set base and disable all interrupts: clear the enable register by writing 1s.
    VIC_BASE = base;

    // Write 1s to INTCLEAR (clear all)
    ptr::write_volatile(VIC_BASE.add(VIC_INTCLEAR as usize), 0xFFFF_FFFF);

    // Initialize ISR table to default_isr
    for i in 0..NUM_INTSRC {
        ISRS[i as usize] = default_isr;
    }
}

/// Enable an interrupt source `n` and register `isr` as its handler.
/// Panics on invalid `n`.
pub unsafe fn pic_enable(n: uint, isr: ISR) {
    if n < 0 || (n as uint) >= NUM_INTSRC {
        panic!("pic_enable: invalid interrupt source");
    }

    // Register the handler
    ISRS[n as usize] = isr;

    // Enable by writing the bit to INTENABLE.
    // On PL190 writing a 1 to the bit enables that source (hardware semantics).
    ptr::write_volatile(VIC_BASE.add(VIC_INTENABLE as usize), 1u32 << (n as u32));
}

/// Disable an interrupt source `n`. Panics on invalid `n`.
pub unsafe fn pic_disable(n: uint) {
    if n < 0 || (n as uint) >= NUM_INTSRC {
        panic!("pic_disable: invalid interrupt source");
    }

    // Clear the bit in the enable register by writing to INTCLEAR.
    ptr::write_volatile(VIC_BASE.add(VIC_INTCLEAR as usize), 1u32 << (n as u32));

    // Restore default handler
    ISRS[n as usize] = default_isr;
}

/// Dispatch handler: read IRQ status and call registered ISRs for each active source.
pub unsafe fn pic_dispatch(tp: *mut arm_h::trapframe) {
    // Read interrupt status after masking
    let  intstatus = ptr::read_volatile(VIC_BASE.add(VIC_IRQSTATUS as usize));

    // For each possible source, call its handler if the bit is set
    for i in 0..NUM_INTSRC {
        if (intstatus & (1u32 << (i as u32))) != 0 {
            // call the registered ISR
            (ISRS[i as usize])(tp, i as uint);
        }
    }

    // Re-read IRQSTATUS if needed (original C code read it again)
    let _ = ptr::read_volatile(VIC_BASE.add(VIC_IRQSTATUS as usize));
}
