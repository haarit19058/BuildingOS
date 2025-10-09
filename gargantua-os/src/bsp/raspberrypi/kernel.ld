/* kernel.ld - AArch64 kernel linker script for Raspberry Pi 3 */

ENTRY(_start);

MEMORY
{
  RAM (rwx) : ORIGIN = 0x80000, LENGTH = 64M
}

/* Tunables */
STACK_SIZE    = 64 * 1024;          /* matches .bss.stack in boot.S */
PGTBL_SIZE    = 4 * 1024;
CPUSTATE_SIZE = 4 * 1024;

SECTIONS
{
  /* Start where Pi firmware jumps after reset */
  . = ORIGIN(RAM);

  /* Boot code section (must come first) */
  .text.boot : ALIGN(0x1000)
  {
    KEEP(*(.text.boot))       /* ensure _start is kept */
  } > RAM

  /* Normal text + rodata */
  .text : ALIGN(0x1000)
  {
    *(.text*)
  } > RAM

  .rodata : ALIGN(0x1000)
  {
    *(.rodata*)
  } > RAM

  /* Data section */
  .data : ALIGN(0x1000)
  {
    *(.data*)
    *(.sdata*)
    . = ALIGN(8);
  } > RAM

  /* BSS section */
  . = ALIGN(0x1000);
  .bss (NOLOAD) : ALIGN(0x1000)
  {
    __bss_start = .;
    *(.bss*)
    *(COMMON)
    . = ALIGN(8);
    __bss_end = .;
  } > RAM

  /* Page table */
  . = ALIGN(0x1000);
  .kernel_pgtbl (NOLOAD) :
  {
    PROVIDE(_kernel_pgtbl = .);
    . = . + PGTBL_SIZE;
    PROVIDE(_kernel_pgtbl_end = .);
  } > RAM

  /* Per-CPU state */
  . = ALIGN(0x1000);
  .cpu_state (NOLOAD) :
  {
    PROVIDE(cpu = .);
    . = . + CPUSTATE_SIZE;
    PROVIDE(cpu_end = .);
  } > RAM


  /* Optional initcode (tiny user program) */
  . = ALIGN(0x1000);
  .initcode :
  {
    PROVIDE(__binary_initcode_start = .);
    KEEP(*(.initcode))
    PROVIDE(__binary_initcode_end = .);
    PROVIDE(__binary_initcode_size = __binary_initcode_end - __binary_initcode_start);
  } > RAM

  /* Symbols for stack (already allocated in .bss.stack) */
  PROVIDE(stack_bottom = __bss_start);   /* boot.S expects stack_bottom */
  PROVIDE(stack_top = __bss_end);        /* boot.S expects stack_top   */

  /* End symbol */
  PROVIDE(end_addr = .);

  /* Strip unneeded sections */
  /DISCARD/ : { *(.comment) *(.eh_frame) }
}
