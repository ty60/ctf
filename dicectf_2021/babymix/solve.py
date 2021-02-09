import angr


proj = angr.Project('./babymix')
state = proj.factory.entry_state()
simgr = proj.factory.simgr(state)

simgr.explore(find=lambda s: b'Correct!' in s.posix.dumps(1))
s = simgr.found[0]
flag = s.posix.dumps(0)
print(flag)


# dice{m1x_it_4ll_t0geth3r!1!}
