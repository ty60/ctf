#include <stdio.h>
#include <stdlib.h>


int main(void)
{
    int ret;
    ret = atoi("123");
    printf("%d %50choge\n", ret, 'a');
    ret = atoi("123 %d");
    printf("%d\n", ret);
}
