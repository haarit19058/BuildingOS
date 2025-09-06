    .section .text
    .align 2
    .global trapret
    .type trapret, %function

// Return from trap, restore registers and user state
trapret:
    // restore user mode sp and lr (we assume stored on stack)
    ldp     x1, x2, [sp], #16       // x1=user sp, x2=user lr
    mov     sp, x1
    mov     lr, x2

    // restore saved lr (x30)
    ldr     x30, [sp], #8

    // restore saved pstate (spsr analogue)
    ldr     x3, [sp], #8
    msr     spsr_el1, x3            // write back exception PSTATE

    // restore general-purpose registers
    ldp     x0, x1, [sp], #16
    ldp     x2, x3, [sp], #16
    ldp     x4, x5, [sp], #16
    ldp     x6, x7, [sp], #16
    ldp     x8, x9, [sp], #16
    ldp     x10, x11, [sp], #16
    ldp     x12, x13, [sp], #16
    ldp     x14, x15, [sp], #16
    ldp     x16, x17, [sp], #16
    ldp     x18, x19, [sp], #16
    ldp     x20, x21, [sp], #16
    ldp     x22, x23, [sp], #16
    ldp     x24, x25, [sp], #16
    ldp     x26, x27, [sp], #16
    ldp     x28, x29, [sp], #16     // restore fp (x29)

    eret                            // return from exception

    .size trapret, .-trapret
