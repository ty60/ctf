import re
s = input()
m = re.match('^SECCON{([A-Z]+)}$', s)
if not m:
    print('invalid flag')
else:
    s = m.group(1)

    f = lambda s: (lambda a: (lambda b = None: a == b)
)(0x1F8DD85698FB84CC77D5D5046A176F6B51A9531952D4409D133FF48B68F)((lambda a: None((lambda b = None: None((lambda c = None: b(b)(c)))
))
)((lambda f: (lambda b = None: (lambda c = None: (lambda d = None: if len(c) == 0:
dNone(f(b)(c[1:])(d))(c[0]))
)
)
))((lambda a: (lambda b = None: a * (lambda a: None((lambda b = None: None((lambda c = None: b(b)(c)))
))
)((lambda a: (lambda b = None: if b > 266:
b - 10None(a(b + 11)))
))(b) + b
)
))((lambda a: None((lambda b = None: None((lambda c = None: b(b)(c)))
))
)((lambda f: (lambda b = None: (lambda c = None: if len(c) == 0:
[][
None(ord(c[0]) - 65)] + f(b)(c[1:]))
)
))((lambda a: None((lambda b = None: None((lambda c = None: b(b)(c)))
))
)((lambda a: (lambda b = None: if b == 0:
1(None + 1) * a(b - 1) + 7 & 255)
)))(s))(0))

    if f(s):
        print('correct')
    else:
        print('wrong')
