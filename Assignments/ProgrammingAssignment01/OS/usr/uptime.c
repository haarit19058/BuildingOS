#include "types.h"
#include "stat.h"
#include "user.h"
#include "param.h"


int
main(int argc, char *argv[])
{
    printf(1,"System Uptime: %d s\n",uptime()/HZ);

    exit();
}
