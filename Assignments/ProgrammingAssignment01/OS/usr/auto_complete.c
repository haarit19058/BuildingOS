#include "types.h"
#include "param.h"
#include "stat.h"
#include "user.h"
#include "fs.h"

#define MAX_CMDS 20

int num_commands = 0;
char commands[MAX_CMDS][DIRSIZ+1];   // store names properly (fixed-size)

// check if string `buff` is a prefix of `command`
int
startsWith(const char *command, const char *buff)
{
    int n = strlen(buff);
    return strncmp(command, buff, n) == 0;
}

char*
fmtname(char *path)
{
    static char buf[DIRSIZ+1];
    char *p;

    // find first character after last slash
    for(p=path+strlen(path); p >= path && *p != '/'; p--)
        ;
    p++;

    // return blank-padded name
    if(strlen(p) >= DIRSIZ)
        return p;
    safestrcpy(buf, p, DIRSIZ+1);
    memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
    return buf;
}

void
auto_complete(char* buff, uint* index)
{
    int fd;
    struct dirent de;
    struct stat st;
    char buf[512], *p;
    char *path = "/";

    num_commands = 0;

    if((fd = namei(path, 0)) < 0){
        cprintf( "autocomplete: cannot namei %s\n", path);
        return;
    }

    if(fstat(fd, &st) < 0){
        cprintf( "autocomplete: cannot stat %s\n", path);
        close(fd);
        return;
    }

    if(st.type == T_DIR){
        if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
            cprintf( "autocomplete: path too long\n");
            close(fd);
            return;
        }
        safestrcpy(buf, path, sizeof(buf));
        p = buf+strlen(buf);
        *p++ = '/';

        while(read(fd, &de, sizeof(de)) == sizeof(de)){
            if(de.inum == 0)
                continue;
            memmove(p, de.name, DIRSIZ);
            p[DIRSIZ] = 0;
            if(stat(buf, &st) < 0)
                continue;

            if(num_commands < MAX_CMDS){
                // copy into commands array safely
                safestrcpy(commands[num_commands], fmtname(buf), DIRSIZ+1);
                num_commands++;
            }
        }
    }
    close(fd);

    int similar_commands = 0;
    int ind = -1;
    for(int i = 0; i < num_commands; i++){
        if(startsWith(commands[i], buff)){
            similar_commands++;
            ind = i;
        }
    }

    if(similar_commands == 1){
        safestrcpy(buff, commands[ind], DIRSIZ+1);
    } else if(similar_commands > 1){
        cprintf( "\n");
        for(int i = 0; i < num_commands; i++){
            if(startsWith(commands[i], buff)){
                cprintf( "%s\n", commands[i]);
            }
        }
    }
}
