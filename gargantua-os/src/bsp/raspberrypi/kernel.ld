/* kernel.ld - AArch64 kernel linker script */

ENTRY(_start);

MEMORY
{
  RAM (rwx) : ORIGIN = 0x80000, LENGTH = 64M
}

/* Sizes (tunable) */
STACK_SIZE    = 16 * 1024;    /* kernel stack space reserved at top of RAM */
PGTBL_SIZE    = 4 * 1024;     /* one page for kernel page table */
CPUSTATE_SIZE = 4 * 1024;     /* per-cpu/state area */

SECTIONS
{
  /* Start at beginning of RAM */
  . = ORIGIN(RAM);

  /* Text section */
  .text : ALIGN(0x1000)
  {
    KEEP(*(.text.boot))
    *(.text*)
    *(.rodata*)
    . = ALIGN(8); /* Ensure 8-byte alignment for 64-bit data */
  } > RAM

  /* Data section */
  .data : ALIGN(0x1000)
  {
    *(.data*)
    *(.sdata*)
    . = ALIGN(8); /* Ensure 8-byte alignment */
  } > RAM

  /* Kernel page table */
  . = ALIGN(0x1000);
  .kernel_pgtbl (NOLOAD) : ALIGN(8)
  {
    PROVIDE(_kernel_pgtbl = .);
    . = . + PGTBL_SIZE;
    PROVIDE(_kernel_pgtbl_end = .);
  } > RAM

  /* CPU state */
  . = ALIGN(0x1000);
  .cpu_state (NOLOAD) : ALIGN(8)
  {
    PROVIDE(cpu = .);
    . = . + CPUSTATE_SIZE;
    PROVIDE(cpu_end = .);
  } > RAM

  /* BSS section */
  . = ALIGN(0x1000);
  .bss (NOLOAD) : ALIGN(8)
  {
    __bss_start = .;
    *(.bss*)
    *(COMMON)
    __bss_end = .;
  } > RAM

  /* Initcode */
  . = ALIGN(0x1000);
  .initcode : ALIGN(0x1000)
  {
    PROVIDE(__binary_initcode_start = .);
    KEEP(*(.initcode))
    PROVIDE(__binary_initcode_end = .);
    PROVIDE(__binary_initcode_size = __binary_initcode_end - __binary_initcode_start);
  } > RAM

  /* Kernel stack */
  PROVIDE(__stack_top = ORIGIN(RAM) + LENGTH(RAM));
  PROVIDE(__stack_start = __stack_top - STACK_SIZE);

  . = ALIGN(0x1000);
  .kernel_stack (NOLOAD) : ALIGN(8)
  {
    . = __stack_start;
    PROVIDE(__stack_start_sym = .);
    . = . + STACK_SIZE;
    PROVIDE(__stack_top_sym = .);
  } > RAM

  /* End symbol */
  PROVIDE(end_addr = .);

  /* Discard unwanted sections */
  /DISCARD/ : { *(.comment) *(.eh_frame) }
}
