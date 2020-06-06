from Crypto.Util.number import *
import telnetlib

t = telnetlib.Telnet('rsacalc.quals.beginners.seccon.jp', 10001)

N = 104452494729225554355976515219434250315042721821732083150042629449067462088950256883215876205745135468798595887009776140577366427694442102435040692014432042744950729052688898874640941018896944459642713041721494593008013710266103709315252166260911167655036124762795890569902823253950438711272265515759550956133


def sign(data):
    t.read_until(b'>')
    t.write(b'1\n')
    t.read_until(b'data> ')
    t.write(data + b'\n')
    t.read_until(b'Signature: ')
    return int(t.read_until(b'\n'), 16)


def execute(data, sign):
    t.read_until(b'>')
    t.write(b'2\n')
    t.read_until(b'data> ')
    t.write(data + b'\n')
    t.read_until(b'signature> ')
    t.write(b'%x' % sign + b'\n')
    return t.read_until(b'1)')


# sign of 2
sign_2 = sign(b'\x02')
print('sign_2:')
print(hex(sign_2))


# sign of sign_1337 // 2
num = bytes_to_long(b'1337,F') // 2
data = long_to_bytes(num)
sign_1337_f_2 = sign(data)
print('sign_1337_f_2:')
print(hex(sign_1337_f_2))

sign_1337_f = sign_1337_f_2 * sign_2 % N
print('sign_1337_f:')
print(hex(sign_1337_f))

# data = b'2,2,*'
# print(execute(data, sign(data)))

print(execute(b'1337,F', sign_1337_f))


t.interact()

# ctf4b{SIgn_n33ds_P4d&H4sh}
