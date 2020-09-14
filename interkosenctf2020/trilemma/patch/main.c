/**
  $ gcc main.c -L./ -lemperor -lcitizen -lslave
  $ LD_LIBRARY_PATH=./ ./a.out
  */
#include <stdio.h>

char *emperor_flag(void);
char *citizen_flag(void);
char *slave_flag(void);

char *emperor_secret(void);
char *citizen_secret(void);
char *slave_secret(void);

int main(void) {
    // emperor_secret();
    // citizen_secret();
    // slave_secret();
    printf("The flag is %s%s%s\n", emperor_flag(), citizen_flag(), slave_flag());
    return 0;
}
