#include <stdio.h>
#include <stdlib.h>
#include <sys/ptrace.h>

//gcc exp-easy.c -o exp-easy.elf -m32 -fno-stack-protector
void print_flag(){
  /*
  print flag code here
  */
}

void main(){
  char* buf[512];  
  read(0,buf,4096);
}
