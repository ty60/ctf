import re


def fixer_dec(s):
    if not (s.startswith('SECCON{') and s.endswith('}')):
        return
    s = m.group(1)
    f = lambda s: lambda a: lambda b: a == b(13611142019359843741091679554812914051545792465993098606064046040462991)(lambda a: lambda b: a(lambda c: b(b)(c))(lambda b: a(lambda c: b(b)(c)))(lambda f: lambda b: lambda c: lambda d: d if len(c) == 0 else b(f(b)(c[1:])(d))(c[0]))(lambda a: lambda b: a * lambda a: lambda b: a(lambda c: b(b)(c))(lambda b: a(lambda c: b(b)(c)))(lambda a: lambda b: b - 10 if b > 266 else a(a(b + 11)))(b) + b)(lambda a: lambda b: a(lambda c: b(b)(c))(lambda b: a(lambda c: b(b)(c)))(lambda f: lambda b: lambda c: [] if len(c) == 0 else [b(ord(c[0]) - 65)] + f(b)(c[1:]))(lambda a: lambda b: a(lambda c: b(b)(c))(lambda b: a(lambda c: b(b)(c)))(lambda a: lambda b: 1 if b == 0 else (b + 1) * a(b - 1) + 7 & 255))(s))(0))
    if f(s):
        print('correct')
    else:
        print('wrong')




