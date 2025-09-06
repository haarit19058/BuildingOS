    .section .text
    .align 2
    .global swtch

// void swtch(uint64_t *old_sp, uint64_t new_sp);
swtch:
    // Save callee-saved registers (x19–x28) and lr (x30) onto stack
    stp     x19, x20, [sp, #-16]!
    stp     x21, x22, [sp, #-16]!
    stp     x23, x24, [sp, #-16]!
    stp     x25, x26, [sp, #-16]!
    stp     x27, x28, [sp, #-16]!
    stp     x29, x30, [sp, #-16]!   // save fp and lr

    // Save current stack pointer into *old_sp (x0)
    mov     x2, sp          // temp register
    str     x2, [x0]

    // Load new stack pointer from x1
    mov     sp, x1

    // Restore callee-saved registers + lr
    ldp     x29, x30, [sp], #16
    ldp     x27, x28, [sp], #16
    ldp     x25, x26, [sp], #16
    ldp     x23, x24, [sp], #16
    ldp     x21, x22, [sp], #16
    ldp     x19, x20, [sp], #16

    ret     // return to lr (x30)
