first of all do not remove teh os folder this one contains all the commented code 


Step 01
We will need some tools/frameworks  that will help us work with xv6 
1) arm gcc toolchain arm-none-eabi-gcc
2) qemu
3) gnu make




## Task 01
Implementing the uptime command to print how long the system has been running

According to my understanding the user programs that runs in terminal are defined as .c file under /usr 

During compile time first all those /usr/*.c files are compiled into executable and tehn linked by mkfs.c into / folder so that when we call the function from the terminal it will execute succesfully

so we make a file uptime.c in /usr that will print the uptime using the uptime() function.

Now the problem is to implement uptime() function that would calulate and return the uptime and for 


Note:
- sys_uptime is a systemcall defined in syscall.c
- the funciton that executes on system call is implemented in sysproc.c
- Wrapped as a system call in user.s
- already defined as uptime(void) in /usr/user.h

therefore we can directly use the uptime call in the uptime.c file
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
