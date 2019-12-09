#include <stdio.h>
#include <string.h>


int main(void)
{
    char str[1024];
    fgets(str, sizeof(str), stdin);
    printf("%d\n", strlen(str));
    return 0;
}
