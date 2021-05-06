import subprocess
import re
from collections import OrderedDict

NOKASLR_CMD = 'qemu-system-x86_64 -m 128M -cpu kvm64,+smep,+smap -kernel ./vmlinuz -initrd initramfs.cpio.gz -hdb flag.txt -snapshot -nographic -monitor /dev/null -no-reboot -append "console=ttyS0 nokaslr kpti=1 quiet panic=1"'
KASLR_CMD = 'qemu-system-x86_64 -m 128M -cpu kvm64,+smep,+smap -kernel ./vmlinuz -initrd initramfs.cpio.gz -hdb flag.txt -snapshot -nographic -monitor /dev/null -no-reboot -append "console=ttyS0 kaslr kpti=1 quiet panic=1"'


def run():
    cmd = NOKASLR_CMD
    p = subprocess.run(cmd, stdout=subprocess.PIPE, shell=True)
    data = p.stdout
    lines = data.split(b'\r\n')

    kallsyms_lines = lines[2:lines.index(b'solve')]
    kallsyms = {}
    for line in kallsyms_lines:
        res = re.match(b'([0-9a-f]*) \w (\w*)', line)
        kallsyms[res.group(2)] = int(res.group(1), 16)

    stack_lines = lines[lines.index(b'solve') + 1:-6]
    stack = {}
    for line in stack_lines:
        res = re.match(b'([0-9a-f]{2,3}): 0x([0-9a-f]{16})', line)
        if res is None:
            break
        kallsyms[res.group(2)] = int(res.group(1), 16)
        stack[int(res.group(1), 16)] = int(res.group(2), 16)

    return kallsyms, stack


def main():
    print('[+] Initial run (kallsyms)')
    kallsyms, _ = run()

    is_same_sym = {}
    for sym in kallsyms:
        is_same_sym[sym] = True

    prev_kallsyms = kallsyms
    for i in range(5):
        print('[+] {}th run (kallsyms)'.format(i))
        kallsyms, _ = run()
        for sym in kallsyms:
            is_same_sym[sym] = sym in prev_kallsyms and is_same_sym[sym] and (prev_kallsyms[sym] == kallsyms[sym])
        prev_kallsyms = kallsyms


    print('[+] Initial run (stack)')
    _, stack = run()

    is_same_stack = {}
    for off in stack:
        is_same_stack[off] = True

    prev_stack = stack
    for i in range(5):
        print('[+] {}th run (stack)'.format(i))
        _, stack = run()
        for off in stack:
            is_same_stack[off] = off in prev_stack and is_same_stack[off] and (prev_stack[off] == stack[off])


    for k, v in is_same_sym.items():
        if not v or k not in kallsyms:
            continue
        print('{}: {}'.format(k, hex(kallsyms[k])))
    for k, v in is_same_stack.items():
        if not v:
            continue
        print('{}: {}'.format(hex(k), hex(stack[k])))


if __name__ == '__main__':
    main()
