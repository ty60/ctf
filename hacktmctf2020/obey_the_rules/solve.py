from pwn import *


with open("./read_shellcode", "br") as f:
    read_sh_shellcode = f.read()


