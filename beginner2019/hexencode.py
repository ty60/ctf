md5sum = '084e0343a0486ff05530df6c705c8bb4' # guest
md5sum = '456b7016a916a4b178dd72b947c152b7' # admin
md5sum = '21232f297a57a5a743894a0e4a801fc3'

import base64
dec = base64.b64encode(md5sum)


res = ''
for ch in dec:
    res += hex(ord(ch))[2:]
print res
