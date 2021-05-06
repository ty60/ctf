import subprocess
import re
import sys

from collections import namedtuple


"""
Script to search and print rop gadgets which are not affected by FGKASLR.
Provide vmlinux and output of ROPgadget.
"""


READELF_CMD_FMT = 'readelf -W -S {}'

Section = namedtuple('Section', ['name', 'address', 'size'])

def elf_sections(elf):
    cmd = READELF_CMD_FMT.format(elf)
    p = subprocess.run(cmd, shell=True, stdout=subprocess.PIPE)
    lines = p.stdout.split(b'\n')

    sections = []
    c = re.compile(b'\s*\[.*\]\s*(\S*)\s*\S*\s*([a-f0-9]*) [a-f0-9]* ([a-f0-9]*).*')
    for line in lines:
        m = c.match(line)
        if m is None:
            continue
        try:
            name = m.group(1).decode()
            address = int(m.group(2), 16)
            size = int(m.group(3), 16)
        except ValueError:
            continue
        if name is None or address is None or size is None:
            continue
        sec = Section(name, address, size)
        sections.append(sec)
    return sections


def check_fgkaslr_not_affected(section):
    """
    Return True if the given section is affected by FGKASLR.
    Sections beginning with '.text.' are affected ('.text.*')
    The '.text' section is not affected.
    """
    return '.text.' not in section.name


def load_gadgets(rop_txt):
    with open(rop_txt) as f:
        lines = f.readlines()

    gadgets = []
    c = re.compile('0x([a-f0-9]*)\s:.*')
    for line in lines:
        m = c.match(line)
        if m is None:
            continue
        addr = int(m.group(1), 16)
        gadgets.append((addr, line.rstrip()))
    return gadgets


def included_in_sections(gadget, sections):
    g_addr = gadget[0]
    for s in sections:
        s_begin = s.address
        s_end = s_begin + s.size
        if s_begin <= g_addr < s_end:
            return True
    return False


def main():
    if len(sys.argv) < 3:
        print("Usage: nofgkaslr_gadget.py vmlinux rop.txt")
        return

    vmlinux_path = sys.argv[1]
    rop_txt_path = sys.argv[2]

    sections = elf_sections(vmlinux_path)
    nofgkaslr_secs = list(filter(check_fgkaslr_not_affected, sections))

    gadgets = load_gadgets(rop_txt_path)

    for g in gadgets:
        if included_in_sections(g, nofgkaslr_secs):
            print(g[1])


if __name__ == '__main__':
    main()
