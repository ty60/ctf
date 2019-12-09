# analyses
## Malloc
```
struct node {
    char *p;
    long size;
};
```

- malloc up to ten indexes
- ps[10] @ 0x00004060 (PIE though)
- maximum size = 0x177 + 1
- minimum size = 0xf8

```c
int rbx = 0;
long r12d = size;
char ch;

read(0, &ch, 1);
while (rbx != r12d) {
    if (ch == '\n')
        break;
    read(0, &ch, 1);
    nodes[i].p[
    rbx++;
}
```
- can one byte overflow by size = 0x178 | 0xf8
