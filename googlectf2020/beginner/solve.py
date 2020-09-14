import angr
import claripy

flag = claripy.BVS('flag', 0x8 * 15)

proj = angr.Project('./a.out')
state = proj.factory.entry_state(stdin=flag)
simgr = proj.factory.simgr(state)

for i in range(15):
    state.solver.add(0x21 <= flag.get_byte(i))
    state.solver.add(flag.get_byte(i) <= 0x7e)

simgr.explore(find=lambda s: b"SUCCESS" in s.posix.dumps(1))
if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
else:
    print("Not found")
