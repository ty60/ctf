import angr
p = angr.Project('./angrme')
simgr = p.factory.simulation_manager()
simgr.explore(find=(0x400000+0x2370,), avoid=(0x400000+0x2390,))
state = simgr.found[0]
print(state)
print(str(state))
print(state.posix.dumps(0))
