#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"

int
main(int argc, char *argv[])
{
    if(argc != 2){
        // Print error if no argument given
        printf(2, "Usage: pause <no. of seconds>\n");
        exit();
    }
    
    // Convert string arg to integer
    int seconds = atoi(argv[1]);

    // Frequency is 10 hz so accordingly multiply it by 10
    sleep(seconds * HZ);
    printf(1,"\n");

    exit();
}
