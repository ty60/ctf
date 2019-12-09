#include <stdio.h>
#include <stdlib.h>
#include <sys/ptrace.h>

// gcc exp-easy.c -o exp-easy.elf -m32 -fno-stack-protector
void print_flag(){
  /*
  print flag code here
  */
}

void main(){
  char* buf[512];  
  int flag=0;
  read(0,buf,4096);
  if(flag != 0)print_flag();
}
