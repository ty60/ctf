/**
  $ gcc read_emperor.c -L./ -lemperor -lcitizen -lslave
  $ LD_LIBRARY_PATH=./ ./a.out
  */
#include <stdio.h>

char *emperor_flag(void);

int main(void) {
    printf("%s", emperor_flag());
    return 0;
}
