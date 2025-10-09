.section .text.boot
.align  7
.global _start

_start:
    // Park secondary cores
    mrs x0, mpidr_el1
    and x0, x0, #3
    cbz x0, 1f
    wfe
    b .

1:  // Primary core only

    // Disable interrupts
    msr daifset, #0b1111

    // Set up stack (SP must be 16-byte aligned)
    ldr x0, =stack_top
    mov sp, x0

    // Clear .bss
    ldr x1, =__bss_start
    ldr x2, =__bss_end
    mov x3, #0
bss_clear:
    cmp x1, x2
    b.ge bss_done
    str x3, [x1], #8
    b bss_clear
bss_done:

    // Jump to Rust entry
    bl kernel_main

    // If kernel_main returns, hang
2:  wfe
    b 2b

//----------------------------------------------------------------
// Stack space
//----------------------------------------------------------------
.section .bss.stack, "aw", %nobits
.align 12            // 4 KiB section alignment
.global stack_bottom
.global stack_top

stack_bottom:
    .skip 0x10000     // 64 KiB stack
.align 4             // 16-byte align for SP
stack_top:
