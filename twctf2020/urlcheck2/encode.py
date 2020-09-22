s = b'example.com'
e = b''
for b in s:
    e += b'%%%x' % b
print(e)
