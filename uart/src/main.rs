#![no_std]  // dont link the rust standard library you only get core
#![no_main] // there is no c style main(). You'll provide you own entyr symbol (_start) the the linker or bootloader jumps to

/*
Panic info : used by your custom panic handler
read_volatile/write_volatile: tell the compiler therse memory mus tnot be optimized away or reordered across other volatile accesses 
critical for mmio registers
*/

use core::panic::PanicInfo;
use core::ptr::{read_volatile, write_volatile};


// In no_std, you must say what to do on panic. Here you spin forever.
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

/// Base address of PL011 UART on Raspberry Pi 2/3 (BCM2836/2837).
const UART0_BASE: usize = 0x3F201000;

#[allow(non_snake_case)]
mod pl011 {
    pub const DR: usize   = 0x00; // Data Register
    pub const FR: usize   = 0x18; // Flag Register
    pub const IBRD: usize = 0x24; // Integer Baud Rate Divisor
    pub const FBRD: usize = 0x28; // Fractional Baud Rate Divisor
    pub const LCRH: usize = 0x2C; // Line Control
    pub const CR: usize   = 0x30; // Control
    pub const ICR: usize  = 0x44; // Interrupt Clear

    // Bits
    pub const FR_TXFF: u32   = 1 << 5; // Transmit FIFO full
    pub const CR_UARTEN: u32 = 1 << 0;
    pub const CR_TXE: u32    = 1 << 8;
    pub const CR_RXE: u32    = 1 << 9;
    pub const LCRH_FEN: u32  = 1 << 4;
    pub const LCRH_WLEN_8: u32 = 3 << 5; // 8-bit word length
}

unsafe fn mmio_write(offset: usize, val: u32) {
    write_volatile((UART0_BASE + offset) as *mut u32, val);
}
unsafe fn mmio_read(offset: usize) -> u32 {
    read_volatile((UART0_BASE + offset) as *const u32)
}

fn uart_init() {
    unsafe {
        // Disable UART
        mmio_write(pl011::CR, 0);

        // Clear pending interrupts
        mmio_write(pl011::ICR, 0x7FF);

        // Assume UART clock is 48 MHz on Pi
        // BaudDiv = UARTCLK / (16 * Baud)
        // 48_000_000 / (16*115200) = 26.0416 → IBRD=26, FBRD≈3
        mmio_write(pl011::IBRD, 26);
        mmio_write(pl011::FBRD, 3);

        // 8N1, enable FIFO
        mmio_write(pl011::LCRH, pl011::LCRH_WLEN_8 | pl011::LCRH_FEN);

        // Enable UART, TX, RX
        mmio_write(pl011::CR, pl011::CR_UARTEN | pl011::CR_TXE | pl011::CR_RXE);
    }
}

fn uart_putc(c: u8) {
    unsafe {
        // Wait until TX FIFO not full
        while (mmio_read(pl011::FR) & pl011::FR_TXFF) != 0 {}
        write_volatile((UART0_BASE + pl011::DR) as *mut u32, c as u32);
    }
}

fn uart_write(s: &str) {
    for &b in s.as_bytes() {
        if b == b'\n' { uart_putc(b'\r'); }
        uart_putc(b);
    }
}

fn uart_getc() -> u8 {
    unsafe {
        // Wait until RX FIFO has data
        while (mmio_read(pl011::FR) & (1 << 4)) != 0 {}
        (mmio_read(pl011::DR) & 0xFF) as u8
    }
}


#[no_mangle]
pub extern "C" fn _start() -> ! {
    uart_init();
    uart_write("UART Echo ready. Type something...\n");

    loop {
        let c = uart_getc();   // wait for keypress
        uart_putc(c);          // echo back

        // Optionally handle newline properly
        if c == b'\r' {
            uart_putc(b'\n');
        }
    }
}
