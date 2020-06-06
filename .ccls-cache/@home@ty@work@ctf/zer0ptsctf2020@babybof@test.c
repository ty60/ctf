#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>


char *str = "leak me\n";
void *fake_vtable[] = {
  NULL, NULL, NULL, NULL,
  NULL, NULL, NULL, NULL,
  NULL, NULL, NULL, NULL,
  NULL, NULL, NULL, NULL,
  NULL, NULL, NULL, NULL,
  NULL
};


typedef struct {
    FILE file;
    void *vtable;
} _IO_FILE_plus;


int main()
{
    setbuf(stdout, NULL);
    setbuf(stdin, NULL);
    setbuf(stderr, NULL);

    _IO_FILE_plus *fp = malloc(sizeof(_IO_FILE_plus));
    memcpy(fp, stdout, sizeof(_IO_FILE_plus));
    fp->file._IO_write_base = str;
    fp->file._IO_write_ptr = str + sizeof(str);
    // fp->vtable = fake_vtable;

    stdout = (FILE *)fp;
    setbuf(stdout, NULL);
    return 0;
}
