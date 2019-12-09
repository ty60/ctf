#include <stdio.h>
#include <unistd.h>

int main(void)
{
    char *argv[] = {"HOGE", NULL};
    execve("/bin/sh", argv, NULL);
}
