#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>


int main()
{
    pid_t pid;
    if ((pid = fork()) == 0) {
        printf("Child\n");
        printf("main: %p\n", &main);
        printf("printf: %p\n\n", &printf);
        exit(0);
    }
    int status;
    wait(&status);
    printf("Parent\n");
    printf("main: %p\n", &main);
    printf("printf: %p\n", &printf);
    return 0;
}
