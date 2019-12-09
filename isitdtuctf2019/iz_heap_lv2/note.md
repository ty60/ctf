# Vulnerability
- NULL byte overflow at sub_40091E
- sub_40091E
```
void sub_40091E(char *buf, size)
{
    read(0, buf, size);
    if (buf[size] != '\0') {
        // buf[size] is not in the legitimate range of buf
        // buf[size - 1] is the end of buf
        buf[size] = '\0';
    }
    return;
}
```


# Exploit
- Fill tcache of chunk size X
- House of einherjar
    - Clear prev_in_use of chunk size X
    - Set prev size so it will consolidate backwards to create overalpping chunk
    - free chunk size X
    - The consolidated chunk should be linked to unsorted chunk
- Double free using overlapping chunk
