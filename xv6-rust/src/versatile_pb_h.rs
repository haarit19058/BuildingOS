#![allow(non_upper_case_globals)]

pub const PHYSTOP:        u32 = 0x0800_0000;
pub const BSP_MEMREMAP:   u32 = 0x0400_0000;

pub const DEVBASE:        u32 = 0x1000_0000;
pub const DEV_MEM_SZ:     u32 = 0x0800_0000;

pub const VEC_TBL:        u32 = 0xFFFF_0000;

pub const STACK_FILL:     u32 = 0xDEAD_BEEF;

pub const UART0:          u32 = 0x101F_1000;
pub const UART_CLK:       u32 = 24_000_000;

pub const TIMER0:         u32 = 0x101E_2000;
pub const TIMER1:         u32 = 0x101E_2020;
pub const CLK_HZ:         u32 = 1_000_000;

pub const VIC_BASE:       u32 = 0x1014_0000;

pub const PIC_TIMER01:    u32 = 4;
pub const PIC_TIMER23:    u32 = 5;
pub const PIC_UART0:      u32 = 12;
pub const PIC_GRAPHIC:    u32 = 19;
