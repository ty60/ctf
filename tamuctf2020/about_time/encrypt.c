#include <stdio.h>
#include <string.h>
#include <time.h>
#include <stdlib.h>



void FUN_001012a9(char *pcParm1,int iParm2)

{
  int iVar1;
  size_t sVar2;
  int local_1c_i;
  
  local_1c_i = 0;
  while( 1 ) {
    sVar2 = strlen(pcParm1);
    if (sVar2 <= (unsigned long)(long)local_1c_i) break;
    if (('`' < pcParm1[(long)local_1c_i]) && (pcParm1[(long)local_1c_i] < '{')) {
      iVar1 = iParm2 + (int)pcParm1[(long)local_1c_i] + -0x54;
      pcParm1[(long)local_1c_i] = (char)iVar1 + (char)(iVar1 / 0x1a) * -0x1a + 'a';
    }
    if (('@' < pcParm1[(long)local_1c_i]) && (pcParm1[(long)local_1c_i] < '[')) {
      iVar1 = iParm2 + (int)pcParm1[(long)local_1c_i] + -0x34;
      pcParm1[(long)local_1c_i] = (char)iVar1 + (char)(iVar1 / 0x1a) * -0x1a + 'A';
    }
    local_1c_i = local_1c_i + 3;
  }
  return;
}


int main()
{
    time_t now;
    now = time(NULL);
    struct tm *tm_p = localtime(&now);
    char *p = malloc(0x100);
    strftime(p, 0x100, "%M", tm_p);
    int key = atoi(p);
    free(p);

    char flag[] = "ThiS1sFl3gd4y0";
    puts(flag);
    FUN_001012a9(flag, key);
    puts(flag);

    return 0;
}
