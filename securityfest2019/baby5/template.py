from pwn import *


binpath = './baby5'
context.binary = binpath
# if you want to use tmux
# context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc
# libc = ELF('./libc.so.6')


gdbscript = '''
gef
# after menu
b *0x400dc3
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


def add(size, data):
    io.recvuntil('> ')
    io.sendline('1')

    io.recvuntil('size: ')
    io.sendline(str(size))

    io.recvuntil('data: ')
    io.sendline(data)


def edit(item, size, data):
    pass


def delete(item):
    pass


def show(item):
    pass


add(0x28, 'A')


# Write your exploit here!


io.interactive()
