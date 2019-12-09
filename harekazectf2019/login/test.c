#include <stdio.h>


// char *F = "%4[^]%s[]";
char *F = "%79[%]%s";
int main(void)
{
    char buf[1024] = {0};
    scanf(F, buf);
    printf("%s", buf);
    return 0;
}
