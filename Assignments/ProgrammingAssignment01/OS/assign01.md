first of all do not remove teh os folder this one contains all the commented code 


Step 01
We will need some tools/frameworks  that will help us work with xv6 
1) arm gcc toolchain arm-none-eabi-gcc
2) qemu
3) gnu make




## Task 01
Implementing the uptime command to print how long the system has been running

According to my understanding the user programs that runs in terminal are defined as .c file under /usr 

During compile time first all those /usr/*.c files are compiled into executable and then linked by mkfs.c into / folder so that when we call the function from the terminal it will execute succesfully

so we make a file uptime.c in /usr that will print the uptime using the uptime() function.

Now the problem is to implement uptime() function that would calulate and return the uptime and for 


Note:
- sys_uptime is a systemcall defined in syscall.c
- the funciton that executes on system call is implemented in sysproc.c
- Wrapped as a system call in user.s
- already defined as uptime(void) in /usr/user.h

therefore we can directly use the uptime call in the uptime.c file
But uptime returns the number of ticks, so we need to convert it into seconds by dividing using frequency of ticks (HZ).
The rest is abstraction that we need to study tomorrow

That is all to understand how the user functions are defined


## Task 02

pause \< no. of command \>
We need to use the sleep() system call and make a new file pause.c

add _pause  to makefile in usr so that it is included into the kernel elf file

same as uptime


## Task 03
Implement funtoin auto complete


in console.c there is a functoin that deals with the keyboard 
We need to detect the tab event and check in the root directory and print all the possible commands.

So there is this easy method where we will list all the commands manually and then write a function to compare and auto complete the commands

Another mehtod is to scan teh root dir and list all the commands. and use them for this purpose.

Write autocomplete in sh.c and call it when we detect a tab in the  user input

will discuss tomorrow with vedant before implementing



Step 01:

Make a temporary buffer to store teh partial user input. Then make a auto_complete.c file in teh kernel and add autocomplete.o in makefile so that it gets compiled along wiht the kernel

Add function enty to defs.h


Now the important part:
auto_complete.c

What issue we faced:
- Could nto figure out how to collect allthe commnds for processing.
- one way is to define static list of all commands
- another way is to dynamically use the filesystem to extract all teh commands

But we faced a problem while doing the second part
We cannot call a function in console.c that is defined in user space.
There we were left with a choice to either write teh function  only in kernel space. 

the workflow is kernel level functions (readi,namei) -> then read() close() fstat() in user space uses the kernel level functions -> now we were trying to use read() in kernel space which i snot ideal


Therefore, 

we used teh kernel level filesystem function to traverse the file system and collect all the commands.




## Task 04
implement ps command to list all the processes

See defingin syscalls according to the conventoin is one thing and understanding waht is happening under the hood is another.



Defining the system call ps to use in the user command

step 01
in syscall.h
`#define SYS_ps     22`

in syscall.c
`extern int sys_ps(void);`
and
`[SYS_ps]        sys_ps,`

ctrl+p will execute process dump...


There is a function proc_dump that list all the running processes and their addresses. So we rewrite a new functon based on proc_dump that will traverse the ptable and print all the pid along with the name 

Then we will use the same ps in ps.c file in usr.








For implementing the count of teh system call we need to add a new variable proc->syscount that keeps the count of the system calls. So therefore in allocproc initialzie it to 0 and every time we do system call we increment it by 1.




















































gpt does it for you but it does not mean that you should not try

here is the code in case you cannot do it by yourself

#include "string.h"  // for strcmp, strncmp

char *commands[] = {
  "cat", "echo", "forktest", "grep", "init", "kill", "ln", 
  "ls", "mkdir", "rm", "sh", "stressfs", "usertests", 
  "wc", "zombie", "pause", 0
};

void autocomplete(char *buf, int *n) {
  // find start of current word
  int start = *n;
  while(start > 0 && buf[start-1] != ' ')
    start--;

  char prefix[100];
  int plen = *n - start;
  memmove(prefix, buf+start, plen);
  prefix[plen] = '\0';

  int matches = 0;
  char *match = 0;

  for (int i = 0; commands[i]; i++) {
    if (strncmp(prefix, commands[i], plen) == 0) {
      matches++;
      if (matches == 1)
        match = commands[i];
      else {
        // Multiple matches: print them
        printf(1, "\n");
        for (int j = 0; commands[j]; j++) {
          if (strncmp(prefix, commands[j], plen) == 0)
            printf(1, "%s\n", commands[j]);
        }
        // reprint prompt + buffer
        printf(1, "$ %s", buf);
        return;
      }
    }
  }

  if (matches == 1 && match) {
    // complete
    int rest = strlen(match) - plen;
    memmove(buf+*n, match+plen, rest);
    *n += rest;
    buf[*n] = '\0';
    printf(1, "%s", match+plen);
  }
}
