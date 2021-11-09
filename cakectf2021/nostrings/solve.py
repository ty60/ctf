import string


def main():
    # objcopy -O binary --only-section=.data chall table.bin
    with open('table.bin', 'rb') as f:
        data = f.read()
        table = data[0x20:]

    flag_len = 0x40
    flag = ''
    for i in range(flag_len):
        for ch in string.printable:
            chi = ord(ch.encode())
            t = chr(table[(chi << 7) - chi + i])
            if ch == t:
                flag += ch
                break
        print('flag: {}'.format(flag))


if __name__ == '__main__':
    main()
    # CakeCTF{th3_b357_p14c3_70_hid3_4_f14g_i5_in_4_f14g_f0r357}
