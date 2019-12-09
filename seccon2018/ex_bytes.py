import re
import sys

if len(sys.argv) < 2:
    print('argument')
    sys.exit(1)

with open(sys.argv[1]) as f:
    lines = f.readlines()


pat = re.compile('^.*:\s*([a-f0-9][a-f0-9]\s[a-f0-9][a-f0-9]).*$')
s = ''
for line in lines:
    bs = pat.search(line).group(1).split()
    #print(bs)
    for b in bs:
        s += chr(int(b, 16))
        system.stdout.write(int(b, 16))
print(s)
