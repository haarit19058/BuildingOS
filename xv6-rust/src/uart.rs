use core::ptr::{read_volatile, write_volatile};
use crate::arm_h;

// UART register offsets
pub const UART_DR:    u32 = 0;   // Data register
pub const UART_RSR:   u32 = 1;   // Receive status/error clear register
pub const UART_FR:    u32 = 6;   // Flag register
pub const UART_IBRD:  u32 = 9;   // Integer baud rate register
pub const UART_FBRD:  u32 = 10;  // Fractional baud rate register
pub const UART_LCR:   u32 = 11;  // Line control register
pub const UART_CR:    u32 = 12;  // Control register
pub const UART_IMSC:  u32 = 14;  // Interrupt mask set/clear register
pub const UART_MIS:   u32 = 16;  // Masked interrupt status register
pub const UART_ICR:   u32 = 17;  // Interrupt clear register

// Bit masks
pub const UARTFR_TXFF: u32 = 1 << 5;   // Transmit FIFO full
pub const UARTFR_RXFE: u32 = 1 << 4;   // Receive FIFO empty
pub const UARTCR_RXE:  u32 = 1 << 9;   // Enable receive
pub const UARTCR_TXE:  u32 = 1 << 8;   // Enable transmit
pub const UARTCR_EN:   u32 = 1 << 0;   // Enable UART
pub const UARTLCR_FEN: u32 = 1 << 4;   // Enable FIFO
pub const UART_RXI:    u32 = 1 << 4;   // Receive interrupt
pub const UART_TXI:    u32 = 1 << 5;   // Transmit interrupt

pub const UART_BITRATE: u32 = 19200;
pub const UART_CLK:     u32 = 24_000_000;

static mut UART_BASE: *mut u32 = core::ptr::null_mut();

// ----------------------------------------------------------
// Initialize UART
// ----------------------------------------------------------
pub unsafe fn uart_init(addr: *mut u32) {
    UART_BASE = addr;

    // Integer baud rate divisor
    let ibrd = UART_CLK / (16 * UART_BITRATE);
    write_reg(UART_IBRD, ibrd);

    // Fractional baud rate divisor
    let left = UART_CLK % (16 * UART_BITRATE);
    let fbrd = (left * 4 + UART_BITRATE / 2) / UART_BITRATE;
    write_reg(UART_FBRD, fbrd);

    // Enable transmit + receive + UART
    let cr_val = read_reg(UART_CR) | (UARTCR_EN | UARTCR_RXE | UARTCR_TXE);
    write_reg(UART_CR, cr_val);

    // Enable FIFO
    let lcr_val = read_reg(UART_LCR) | UARTLCR_FEN;
    write_reg(UART_LCR, lcr_val);
}

// ----------------------------------------------------------
// Enable UART RX interrupts
// ----------------------------------------------------------
pub unsafe fn uart_enable_rx() {
    write_reg(UART_IMSC, UART_RXI);
    // external: pic_enable(PIC_UART0, isr_uart);
}

// ----------------------------------------------------------
// Write character
// ----------------------------------------------------------
pub unsafe fn uartputc(c: u32) {
    while read_reg(UART_FR) & UARTFR_TXFF != 0 {
        micro_delay(10); // external fn
    }
    write_reg(UART_DR, c);
}

// ----------------------------------------------------------
// Read character
// ----------------------------------------------------------
pub unsafe fn uartgetc() -> i32 {
    if read_reg(UART_FR) & UARTFR_RXFE != 0 {
        return -1;
    }
    read_reg(UART_DR) as i32
}

// ----------------------------------------------------------
// UART ISR
// ----------------------------------------------------------
pub unsafe fn isr_uart(_tf: *mut arm_h::trapframe, _idx: i32) {
    if read_reg(UART_MIS) & UART_RXI != 0 {
        consoleintr(uartgetc); // external fn
    }
    write_reg(UART_ICR, UART_RXI | UART_TXI);
}

// ----------------------------------------------------------
// Helpers
// ----------------------------------------------------------
#[inline(always)]
unsafe fn read_reg(off: u32) -> u32 {
    read_volatile(UART_BASE.add(off as usize))
}

#[inline(always)]
unsafe fn write_reg(off: u32, val: u32) {
    write_volatile(UART_BASE.add(off as usize), val);
}


// ----------------------------------------------------------
// External stubs (to be implemented elsewhere)
// ----------------------------------------------------------
extern "C" {
    fn micro_delay(us: u32);
    fn consoleintr(getc: unsafe fn() -> i32);
}

// #[repr(C)]
// pub struct arm_h::trapframe {
//     _dummy: u32, // define properly later
// }
