import angr
import claripy


proj = angr.Project('./reversing')
flag = claripy.BVS('flag', 0x8 * 0x30)

state = proj.factory.full_init_state(args=['./reversing'], stdin=flag)

for i in range(0x25):
    state.solver.add(0x21 <= flag.get_byte(i))
    state.solver.add(flag.get_byte(i) <= 0x7e)

simgr = proj.factory.simgr(state)
simgr.explore(find=0x60015c)
# simgr.explore(find=0x600171)
if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
else:
    print("failed")

# TSGCTF{S0r3d3m0_b1n4ry_w4_M4wa77e1ru}
