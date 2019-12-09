import sys
import re
import struct
import subprocess


PAT = re.compile(' +[0-9a-f]+:\s+(([0-9a-f]{2} )+)\s+')
def main():
    if len(sys.argv) != 2:
        print("Provide one binary")
        return

    p = subprocess.run('objdump -d -M intel -j .text {}'.format(sys.argv[1]), shell=True, stdout=subprocess.PIPE)

    shellcode = ''
    dump_lines = (l.decode('utf-8') for l in p.stdout.split(b'\n'))
    for dump_line in dump_lines:
        ms = PAT.findall(dump_line)
        if ms is None:
            continue
        for m in ms:
            if isinstance(m, tuple):
                m = m[0]
            bs = (b for b in m.split(' ') if b)
            shellcode += ''.join(('\\x' + b for b in bs))
    print(shellcode)

if __name__ == '__main__':
    main()
