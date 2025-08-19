//
// Board-specific configuration for the ARM VersatilePB board
//
// This file defines memory layout, device base addresses,
// and interrupt numbers specific to the VersatilePB platform.
//

#ifndef VERSATILEPB
#define VERSATILEPB

//---------------------------------------------------------
// MEMORY LAYOUT
//---------------------------------------------------------

// Maximum physical memory supported by the board is 256MB.
// But here we assume only 128MB of RAM is available for use.
#define PHYSTOP         0x08000000   // Physical memory ends at 128MB (0x0800 0000)

// On real hardware, the lower 64MB of memory is initially mapped
// to flash storage (ROM). Normally, this needs to be remapped to SDRAM
// so that the CPU executes programs from RAM instead of flash.
// In QEMU emulation, this remapping step is skipped.
#define BSP_MEMREMAP    0x04000000   // Memory remap register (not used in QEMU)

//---------------------------------------------------------
// DEVICE ADDRESS SPACE
//---------------------------------------------------------

// Base address of the device memory region
#define DEVBASE         0x10000000   // All peripherals start here
#define DEV_MEM_SZ      0x08000000   // Size of device memory region = 128MB

// Location of the exception vector table in ARM (high vectors)
// Vector table holds addresses for reset, IRQ, FIQ, etc.
#define VEC_TBL         0xFFFF0000

//---------------------------------------------------------
// DEBUGGING AND STACK SAFETY
//---------------------------------------------------------

// Magic number used to "fill" the stack during initialization.
// Useful for debugging stack overflows (if you see 0xdeadbeef,
// it means unused stack space).
#define STACK_FILL      0xdeadbeef

//---------------------------------------------------------
// UART (Serial Communication)
//---------------------------------------------------------

// Base address for UART0 (used for serial console, printf, etc.)
#define UART0           0x101f1000

// Input clock frequency for UART0.
// UART baud rate generator derives from this clock.
#define UART_CLK        24000000     // 24 MHz clock source

//---------------------------------------------------------
// TIMERS
//---------------------------------------------------------

// Base addresses for timers
#define TIMER0          0x101E2000   // Timer0 base address
#define TIMER1          0x101E2020   // Timer1 base address

// Timer input clock frequency
#define CLK_HZ          1000000      // 1 MHz (each tick = 1 microsecond)

//---------------------------------------------------------
// INTERRUPT CONTROLLER (VIC - Vectored Interrupt Controller)
//---------------------------------------------------------

#define VIC_BASE        0x10140000   // Base address of interrupt controller

// Interrupt numbers (IRQ IDs) for various devices
#define PIC_TIMER01     4   // Timer0 and Timer1 combined interrupt line
#define PIC_TIMER23     5   // Timer2 and Timer3 combined interrupt line
#define PIC_UART0       12  // UART0 interrupt line
#define PIC_GRAPHIC     19  // Graphics controller interrupt line

#endif // VERSATILEPB
