#define O_RDONLY 00
#define O_RDWR 02
#define SEEK_SET 0
#define SEEK_CUR 1
#define SEEK_END 2

int  open(char *path, int flags);
long lseek(int fd, long offset, int whence);
long read(int fd, char *buffer, unsigned long size);
long write(int fd, char *buffer, unsigned long size);
int  close(int fd);
void exit(int status);

int  socket(int af, int sol, int proto);
void pause(void);
int  execve(const char *path, const char** args, const char **envs);
int  fork();
//void shell(void);
void userloop(void);
