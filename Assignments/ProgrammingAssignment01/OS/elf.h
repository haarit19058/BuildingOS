// Format of an ELF executable file
//  read teh comment at the end of teh file

#define ELF_MAGIC 0x464C457FU  // "\x7FELF" in little endian

// File header
struct elfhdr {
    uint    magic;      // must equal ELF_MAGIC = 0x464C457F ("\x7FELF")
    uchar   elf[12];    // more identifying info
    ushort  type;       // type of file (exec, relocatable, shared lib)
    ushort  machine;    // target architecture (x86, ARM, etc.)
    uint    version;    // ELF version
    uint    entry;      // address to start execution (like main())
    uint    phoff;      // offset of program header table
    uint    shoff;      // offset of section header table
    uint    flags;      // CPU-specific flags
    ushort  ehsize;     // ELF header size
    ushort  phentsize;  // size of each program header entry
    ushort  phnum;      // number of program header entries
    ushort  shentsize;  // size of each section header entry
    ushort  shnum;      // number of section header entries
    ushort  shstrndx;   // index of section header string table
};

// Program section header
struct proghdr {
    uint    type;    // what kind of segment (LOAD, DYNAMIC, etc.)
    uint    off;     // file offset where segment starts
    uint    vaddr;   // virtual address where it should go in memory
    uint    paddr;   // (for some systems, physical addr, unused here)
    uint    filesz;  // size of data in file
    uint    memsz;   // size in memory (may be bigger than filesz → bss)
    uint    flags;   // permissions (R/W/X)
    uint    align;   // alignment (page aligned)
};


// Values for Proghdr type
#define ELF_PROG_LOAD           1

// Flag bits for Proghdr flags
#define ELF_PROG_FLAG_EXEC      1
#define ELF_PROG_FLAG_WRITE     2
#define ELF_PROG_FLAG_READ      4


/*
This is an 32 bit elf layout that xv6 uses to load a user program. 

What is an elf file ??

An ELF file is just a binary file format that contains:
- Instructions (machine code)
- Data
- Metadata that tells the OS how to load and run the program


When you compile a C program:
gcc hello.c -o hello
gcc turns source → assembly → machine code
ld (the linker) puts everything into an ELF file.
The ELF file:
Helps the linker (during build time) know where sections like .text, .data, .rodata are.
Helps the loader (at runtime, inside kernel) know which parts of the file to map into memory, where to start execution, etc.
So one format serves two different purposes:
Linking time → sections, symbols, relocations matter.
Loading time → program headers (segments) matter.

Virtual Memory of Process
+---------------------------+  ← high memory
| stack                     |
+---------------------------+
| heap (malloc, etc.)       |
+---------------------------+
| data segment (.data, .bss)|
+---------------------------+
| text segment (code)       |
+---------------------------+  ← entry point


*/