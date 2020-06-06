#include <stdio.h>

long FUN_0010075a(long lParm1,long lParm2,long lParm3)

{
  long lVar1;
  
  if (lParm1 == 0) {
    lParm3 = 0;
  }
  else {
    if (lParm2 == 0) {
      lParm3 = 1;
    }
    else {
      lVar1 = FUN_0010075a(lParm1,lParm2 + -1,lParm3);
      lParm3 = (lParm3 + ((lVar1 * (lParm1 % lParm3)) % lParm3) % lParm3) % lParm3;
    }
  }
  return lParm3;
}


int main(void)
{
    printf("Input byte: ");
    printf("0x%lx\n", FUN_0010075a((long)(getchar()), 0x5BEB, 0x8BAE6FA3));
    return 0;
}
