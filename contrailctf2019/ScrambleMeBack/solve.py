import angr
import claripy


flag = claripy.BVS('flag', 8 * 32)

print("Load program")
BASE_ADDR = 0x400000
proj = angr.Project('./ScrambleMeBack')
state = proj.factory.entry_state(stdin=flag)

for i in range(32):
    state.solver.add(0x21 <= flag.get_byte(i))
    state.solver.add(flag.get_byte(i) <= 0x7e)

simgr = proj.factory.simgr(state)

print("Explore")
simgr.explore(find=(BASE_ADDR+0x160D))
if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
