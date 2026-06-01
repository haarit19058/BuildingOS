// start.S - minimal entry for Raspberry Pi 5 (AArch64)
.section .text.boot
.align 7
.global _start
.type _start, %function

_start:
    // Read MPIDR_EL1 to find current core ID
    mrs     x0, mpidr_el1
    and     x0, x0, #0x3      // core ID = bits[1:0]
    cbz     x0, 1f            // if core 0 -> continue
2:  wfe                         // otherwise park
    b       2b

1:  // Disable interrupts
    msr     daifset, #0b1111

    // Set up stack pointer
    ldr     x1, =__stack_top
    mov     sp, x1

    // Zero .bss section
    ldr     x2, =__bss_start
    ldr     x3, =__bss_end
3:  cmp     x2, x3
    b.hs    4f
    str     xzr, [x2], #8
    b       3b

4:  // Jump to Rust entry
    bl      _start_rust

    // If Rust ever returns, hang
5:  wfe
    b       5b
