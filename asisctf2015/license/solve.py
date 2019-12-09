import angr, claripy


# Loading shared libraries will slow down exploration
# C++ library functions are not implemented as SimProcedure (like cout << "hoge")
proj = angr.Project("./license", load_options={'auto_load_libs': False})

# this works with blank_state() (the original write up used blank)
# blank_state() sets up minimum environment to symbolicaly execute binary (like initial rsp and rip).
# entry_state() sets up stuff like argc, argv, env var, in addition to what blank_state does.
state = proj.factory.entry_state()
# state = proj.factory.blank_state()


content = None
for i in range(5):
    line_bytes = []
    for j in range(6):
        b = state.solver.BVS('line_{}_byte{}'.format(i, j), 8)
        state.add_constraints(b != b'\n')
        line_bytes.append(b)
    if content is None:
        content = claripy.Concat(*line_bytes)
    else:
        content = content.concat(b'\n', *line_bytes)

filename = '_a\nb\tc_'
symfile = angr.SimFile(filename, content=content)
state.fs.insert(filename, symfile)


simgr = proj.factory.simgr(state)
simgr.explore(
            find=(0x400e93, ),
            avoid=(0x400bb1, 0x400b8f, 0x400b6d, 0x400a85,
                   0x400ebf, 0x400a59)
        )

found = simgr.found[0]
rsp = found.regs.rsp
flag_addr = rsp + 0x278 - 0xd8 # Ripped from IDA


flag = ''
i = 0
while True:
    x = found.solver.eval(found.memory.load(flag_addr + i, 1))
    flag = flag + chr(x)
    if flag[-1] == '}':
        break
    i += 1

print(flag)
