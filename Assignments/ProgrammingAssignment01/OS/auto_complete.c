// kernel/autocomplete.c
#include "types.h"
#include "param.h"
#include "stat.h"
#include "fs.h"
#include "file.h"
#include "spinlock.h"
#include "defs.h"

#define MAX_CMDS 20

int
auto_complete(char *buff, uint *index)
{
  struct inode *dp;
  struct dirent de;
  uint off;

  int num_commands = 0;
  char commands[MAX_CMDS][DIRSIZ+1];

  dp = namei("/");
  if(dp == 0){
    cprintf("autocomplete: namei(\"/\") failed\n");
    return 0;
  }

  ilock(dp);
  if(dp->type != T_DIR){
    iunlockput(dp);
    return 0;
  }

  // collect directory entries
  for(off = 0; off + sizeof(de) <= dp->size; off += sizeof(de)){
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
      break;
    if(de.inum == 0) continue;

    if(num_commands < MAX_CMDS){
      // copy name and trim trailing spaces
      int len = DIRSIZ;
      while(len > 0 && (de.name[len-1] == ' ' || de.name[len-1] == '\0'))
        len--;

      memmove(commands[num_commands], de.name, len);
      commands[num_commands][len] = '\0';
      num_commands++;
    }
  }
  iunlockput(dp);

  // find matches
  int matches = 0, last = -1;
  int prefix_len = strlen(buff);

  for(int i = 0; i < num_commands; i++){
    if(strncmp(commands[i], buff, prefix_len) == 0){
      matches++;
      last = i;
    }
  }

  if(matches == 1){
    safestrcpy(buff, commands[last], DIRSIZ+1);
    *index = strlen(buff);
  } else if(matches > 1){
    cprintf("\n");
    for(int i = 0; i < num_commands; i++){
      if(strncmp(commands[i], buff, prefix_len) == 0)
        cprintf("%s\n", commands[i]);
    }
  }

  return matches;
}
