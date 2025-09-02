#![allow(non_snake_case)]
#![allow(non_upper_case_globals)]

use core::ptr::{read_volatile, write_volatile};
use crate::spinlock_h::*;
use crate::proc::{wakeup};
// use crate::types_h::*;
// use crate::params_h::*;
use crate::versatile_pb_h::*;
use crate::picirq::{*};
use crate::arm_h::*;

// Timer register offsets
const TIMER_LOAD: usize = 0;
const TIMER_CURVAL: usize = 1;
const TIMER_CONTROL: usize = 2;
const TIMER_INTCLR: usize = 3;
const TIMER_MIS: usize = 5;

// Control bits
const TIMER_ONESHOT: u32 = 0x01;
const TIMER_32BIT: u32 = 0x02;
const TIMER_INTEN: u32 = 0x20;
const TIMER_PERIODIC: u32 = 0x40;
const TIMER_EN: u32 = 0x80;

// global state
static mut TICKS: u32 = 0;
static mut TIMER_HZ: u32 = 0;
static mut TICKSLOCK: spinlock = spinlock::new(); // assume spinlock has a const new()

// convert physical to virtual address
fn P2V(addr: usize) -> *mut u32 {
    addr as *mut u32
}

// acknowledge timer interrupt
unsafe fn ack_timer() {
    let timer0 = P2V(TIMER0 as usize);
    write_volatile(timer0.add(TIMER_INTCLR), 1);
}

// timer interrupt handler
pub unsafe fn isr_timer(_tp: *mut trapframe, _irq_idx: u32) {
    TICKSLOCK.acquire();
    TICKS += 1;
    wakeup(TICKS as *mut u8);
    TICKSLOCK.release();
    ack_timer();
}
fn isr_timer_wrapper(_tp: *mut trapframe, _irq_idx: u32) {
    unsafe {
        // forward irq to your real handler, trapframe is not available
        isr_timer(_tp, _irq_idx );
    }
}


// initialize timer
pub unsafe fn timer_init(hz: u32) {
    let timer0 = P2V(TIMER0 as usize);
    TIMER_HZ = hz;

    TICKSLOCK.init("time".as_ptr());

    write_volatile(timer0.add(TIMER_LOAD), CLK_HZ / hz);
    write_volatile(
        timer0.add(TIMER_CONTROL),
        TIMER_EN | TIMER_PERIODIC | TIMER_32BIT | TIMER_INTEN,
    );

    pic_enable(PIC_TIMER01, isr_timer_wrapper);
}


// microsecond delay using timer1
pub unsafe fn micro_delay(us: u32) {
    let timer1 = P2V(TIMER1 as usize);

    // configure freerun timer
    write_volatile(timer1.add(TIMER_CONTROL), TIMER_EN | TIMER_32BIT);
    write_volatile(timer1.add(TIMER_LOAD), us);

    // busy wait
    while read_volatile(timer1.add(TIMER_CURVAL)) as i32 > 0 {}

    // disable timer
    write_volatile(timer1.add(TIMER_CONTROL), 0);
}
