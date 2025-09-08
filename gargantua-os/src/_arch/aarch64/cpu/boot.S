/* boot.S – minimal boot for Raspberry Pi 3 in AArch64 */

    .section .text.boot
    .align  7
    .global _start

_start:
    // Disable interrupts (optional early safety)
    msr daifset, #0b1111

    // Load the address of stack_top into x0 and set SP
    ldr x0, =stack_top
    mov sp, x0

    // Zero out the .bss section
    ldr x1, =__bss_start
    ldr x2, =__bss_end
    mov x3, #0
bss_clear:
    cmp x1, x2
    b.ge bss_done
    str x3, [x1], #8      // store 0 and increment by 8 bytes (64-bit)
    b bss_clear
bss_done:

    // Jump to Rust entrypoint
    bl kernel_main

    // If Rust ever returns, hang the CPU
1:  wfe
    b 1b

//----------------------------------------------------------------
// Stack space (placed in .bss so it’s zero-inited)
//----------------------------------------------------------------
    .section .bss.stack, "aw", %nobits
    .align 12                 // 4K aligned
    .global stack_bottom
    .global stack_top

stack_bottom:
    .skip 0x10000              // 64 KiB stack
stack_top:
