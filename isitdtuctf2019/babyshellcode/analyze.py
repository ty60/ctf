from unicorn import *
from unicorn.x86_const import *
from collections import namedtuple
from traceback import format_exc
import struct

from shellcode import X86_CODE64_SYSCALL


def hook_block(uc, address, size, user_data):
    print(">>> Tracing basic block at 0x{:x}".format(address))


def check_mapped(mu, addr):
    for start, end, perm in mu.mem_regions():
        if start < addr < end:
            return True
    return False


Syscall = namedtuple('Syscall', ['name', 'num_args'])
ARG_REGS = [UC_X86_REG_RDI, UC_X86_REG_RSI, UC_X86_REG_RDX, UC_X86_REG_R10, UC_X86_REG_R9, UC_X86_REG_R8]
SYSCALLS = {
        0: Syscall('sys_read', 3),
        1: Syscall('sys_write', 3),
        2: Syscall('sys_open', 3),
        3: Syscall('sys_close', 1),
        21: Syscall('sys_access', 2),
        }


def hook_syscall(mu, user_data):
    rax = mu.reg_read(UC_X86_REG_RAX)
    syscall = SYSCALLS.get(rax, Syscall('unkown', 4))

    args = list()
    for arg_reg in ARG_REGS[:syscall.num_args]:
        arg = mu.reg_read(arg_reg)
        if check_mapped(mu, arg):
            deref = bytes(mu.mem_read(arg, 64))
            deref_str = hex(struct.unpack("<Q", deref[:8])[0])
            deref_str += ' "{}"'.format(deref[:deref.find(b'\x00')].decode('utf-8'))
        else:
            deref_str = ''
        arg_str = hex(arg) + ((' = ' + deref_str) if deref_str else '')
        args.append(arg_str)

    rip = mu.reg_read(UC_X86_REG_RIP)

    # TODO: this is a really dumb way to emulate syscall return value
    # seems unicorn does nothing on *syscall* instruction
    # need to implement each syscall by hand(?)
    mu.reg_write(UC_X86_REG_RAX, 0)

    args_str = ', '.join(args)
    print('0x{:x}: {}({})'.format(rip, syscall.name, args_str))


def hook_unmapped_access(mu, access, address, size, value, user_data):
    if access == UC_MEM_WRITE_UNMAPPED or access == UC_MEM_READ_UNMAPPED:
        page_start = (address // 0x1000) * 0x1000
        rip = mu.reg_read(UC_X86_REG_RIP)
        print(">>> Accessing unmapped memory at 0x{:x} to 0x{:x}".format(rip, address))
        print(">>> Map page at 0x{:x}".format(page_start))
        mu.mem_map(page_start, 0x1000)
        # return True to indicate we want to continue emulation
        return True
    else:
        # stop emulation if the hook wasn't about unmapped mem access
        return False


ADDRESS = 0x1000000
def main():
    try:
        mu = Uc(UC_ARCH_X86, UC_MODE_64)
        mu.mem_map(ADDRESS, 2 * 0x1000 * 0x1000)
        mu.mem_write(ADDRESS, X86_CODE64_SYSCALL)
        mu.reg_write(UC_X86_REG_RSP, ADDRESS + 0x200000)

        mu.hook_add(UC_HOOK_BLOCK, hook_block)
        mu.hook_add(UC_HOOK_INSN, hook_syscall, None, 1, 0, UC_X86_INS_SYSCALL)
        mu.hook_add(UC_HOOK_MEM_READ_UNMAPPED | UC_HOOK_MEM_WRITE_UNMAPPED, hook_unmapped_access)

        try:
            mu.emu_start(ADDRESS, ADDRESS + len(X86_CODE64_SYSCALL))
        except UcError as e:
            print("Emulation error: {}".format(str(e)))
            print(format_exc())
    except UcError as e:
        print("Error: {}".format(str(e)))


if __name__ == "__main__":
    main()
