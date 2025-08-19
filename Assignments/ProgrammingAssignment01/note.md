How to implement a new system call ps
1) Write your function in proc.c
2) add to all the relevant header files
3) if you want to implement a new command then make a separate file in /usr/ps.c and add that to the make file of the dirrectory
4) If it is a system call then you need to define a SYS_callname variable
5) for ps call you need to read the process table and then print all the ongong processes.





# Analyzing teh proc.c file

There is a struct named ptable that contains struct spinlock and array of proc structures to store teh processes.

What is a spinlock struct  and where is it defined ??


What is the proc struct  and where is it defined ??



--

then there is a init proc the initial process

A function named allocproc that is supposed to allocate some resources to beign a process. and returns a pointer to that process.

a fuction named error init that would raise issue on failed creation of the process

userintit() It says to handcraft teh first process 
here it first allocates the resources for the process sets the user stack and stuff.

growproc() function to grow the current processses memory by n bytes
fork() to make copy of the current process and run it separately

exit() to exit the current process and the exited process remains in the zombie state unless teh parent calls wait() to find it 

wait()  wait for a child process to exit

scheduler() per cpu processro scheduler it loops doing :
chose a process to run swth to start running rpocess eventually that process transfers control via swth bac to cheduler


# Makefile

