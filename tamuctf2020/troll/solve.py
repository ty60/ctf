import subprocess

from pwn import *


context.log_level = 'DEBUG'

binpath = './troll'
# io = process(binpath)
io = remote('challenges.tamuctf.com', 4765)
# io = remote('localhost', 4088)
io.recvline()
io.sendline(b'hogehoge')

proc = subprocess.run(['./predict'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
ints = [int(i) for i in proc.stdout.split()]

for i in range(100):
    io.sendline(b'%d' % ints[i])
    io.recvline()
    io.recvuntil(b'Impressive.\n')

io.recvline(b'reward.\n')

print(io.recvline().decode())
# gigem{Y0uve_g0ne_4nD_!D3fe4t3d_th3_tr01L!}
