    .section .text
    .global _start
    .align  7
_start:
    /* set up stack pointer (example: stack top at 0x800000) */
    ldr x0, =stack_top
    mov sp, x0

    /* branch to rust entrypoint */
    bl kernel_main

    /* hang if rust_main returns */
1:  wfe
    b 1b

    .section .bss
    .align 12
    .global stack
stack:
    .skip 0x10000    /* 64 KiB stack */
stack_top:
