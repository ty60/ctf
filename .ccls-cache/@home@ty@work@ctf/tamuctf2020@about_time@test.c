#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main(void)
{
    time_t now;
    now = time(NULL);
    struct tm *tm_p = localtime(&now);
    char *p = malloc(0x100);
    strftime(p, 0x100, "%Y-%m-%dT%H:%M:%S%Z", tm_p);
    printf("%s\n", p);
    strftime(p, 0x100, "%M", tm_p);
    printf("%s\n", p);
    printf("%d\n", atoi(p));
    free(p);

    return 0;
}
