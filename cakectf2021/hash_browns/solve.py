import subprocess
import hashlib
import string

from collections import defaultdict


def main():
    # reverse-engineer comparison order of sha256 table
    p = subprocess.run('./rev_order', capture_output=True, shell=True)
    order = list(map(int, p.stdout.split()))

    md5_rev = {}
    for ch in string.printable:
        md5 = hashlib.md5()
        md5.update(ch.encode())
        h = md5.hexdigest()[:10]
        md5_rev[h] = ch

    sha256_rev = {}
    for ch in string.printable:
        sha256 = hashlib.sha256()
        sha256.update(ch.encode())
        h = sha256.hexdigest()[:10]
        sha256_rev[h] = ch

    p = subprocess.run('objcopy -O binary --only-section=.rodata ./hash_browns ans_tab.bin', shell=True)
    with open('./ans_tab.bin', 'rb') as f:
        data = f.read()
        md5_ans_tab = []
        for i in range(37):
            ans = data[0xa0 + i * 11:0xa0 + (i + 1) * 11 - 1]
            md5_ans_tab.append(ans.decode())
        sha256_ans_tab = []
        for i in range(37):
            ans = data[0x240 + i * 11:0x240 + (i + 1) * 11 - 1]
            sha256_ans_tab.append(ans.decode())

    flag = ''
    for i in range(37):
        md5_ans = md5_ans_tab[i]
        sha256_ans = sha256_ans_tab[order[i]]
        flag += md5_rev[md5_ans]
        flag += sha256_rev[sha256_ans]
    print(flag)
    # CakeCTF{(^o^)==(-p-)~~(=_=)~~~POTATOOOO~~~(^@^)++(-_-)**(^o-)_486512778b4}


if __name__ == '__main__':
    main()
