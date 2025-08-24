//! # Mingo Kernel
//!
//! This is the experimental OS kernel for Raspberry Pi 3.
//! It runs in a `no_std`, `no_main` bare-metal environment.


#![no_main]
#![no_std]


mod bsp;
mod cpu;
mod panic_wait;


