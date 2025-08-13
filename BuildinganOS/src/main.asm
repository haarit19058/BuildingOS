; qemu-system-i386 -fda build/main_floppy.img
;  Command to run floppy



; What is a section in assembly language
;  It is a logical block in our program that tells the assembler how to group code and data
; .text - for code 
; .data - for initialzied data
;  .bss - for uninitialized data

;  in boot loader you often dont use thse nromal sections instead you just tell teh assembler exactly where your code will be loaded with or





; How the BIOS finds and starts an OS:
;  - During startup, BIOS runs POST (Power-On Self Test) to check hardware.
;  - It reads the boot order from CMOS/BIOS settings.
;  - For each bootable device in order:
;       * Reads the first sector (512 bytes) into memory at address 0x7C00.
;       * Checks the last two bytes for the boot signature 0x55 0xAA (in that order).
;       * If signature is valid, jumps to 0x7C00 and executes the loaded code.
;  - That first sector is called the "Master Boot Record" (MBR) or "Boot Sector".
;  - The boot sector code’s job is to load the rest of the OS or another boot stage.


; EFI
; BIOS looks into special EFI paritions
;  operating systems must be compiled as an EFI program



; Bios always puts our os at address 7c00 so first we will give our asslembler this information

; Tells the assembler where we expect our code to be loaded 
org 0x7C00

; Directives vs Instructions:
; - Directive: Assembler-only commands (assembly time). Control code/data layout,
;              define constants, allocate storage. Not executed by CPU.
; - Instruction: Actual CPU operations (runtime). Translated into machine code
;                and executed by the processor (e.g., mov, add, jmp).


; tells teh assembler to emit 16 bit code for backward compatibilti
bits 16

%define ENDL 0x0D, 0x0A

start:
    jmp main



;
; Prints a string to the screen
; Params:
;   - ds:si points to string
;
puts:
    ; save registers we will modify
    push si
    push ax
    push bx

.loop:
    lodsb               ; loads next character in al
    or al, al           ; verify if next character is null?
    jz .done

    mov ah, 0x0E        ; call bios interrupt
    mov bh, 0           ; set page number to 0
    int 0x10

    jmp .loop

.done:
    pop bx
    pop ax
    pop si    
    ret








main:
    ; setup data segments
    mov ax, 0           ; can't set ds/es directly
    mov ds, ax
    mov es, ax
    
    ; setup stack
    mov ss, ax
    mov sp, 0x7C00      ; stack grows downwards from where we are loaded in memory

    ; print hello world message
    mov si, msg_hello
    call puts

    hlt

.halt:
    jmp .halt




msg_hello: db 'Hello world!', ENDL, 0



; times - repeates given instructino or piece of data a number of tiems
; $ - special symbol which is equal to the memory offset of the current line
;  $$ - special symbol which is equa to the memory offset of beginnin of current secion
; $ - $$ gives teh size of our program so far
times 510-($-$$) db 0


; stands for define words. Writes the fiven words (2 byte value encoded in little endian to the assembled binary file)
dw 0AA55h










; Memory Segmentation
; RAM memory
; 80_86 proc have adress bus of 20 bits this means that you could access upto a total of 2^20 bits ~ 64kb
; But using memory segmentation you can access upto 1MiB of memory

; segmetn : offset
;  each segmetn contains 64 kb f memor and each of them can be accessed using offset value
;  Real addr = segment * 16 + offset

;  Special registers are used to specify currently active segments
; CS- currently running code segment
;  DS - data segment
; SS - stack segment
;  ES,FS,GS - extra (data) segments