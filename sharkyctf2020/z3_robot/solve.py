import angr
import claripy


BASE_ADDR = 0x400000
addr_find = BASE_ADDR + 0x1329
addr_avoid = BASE_ADDR + 0x1330


flag = claripy.BVS('flag', 8 * 0x19)

binpath = './z3_robot'
proj = angr.Project(binpath)
state = proj.factory.entry_state(stdin=flag)
simgr = proj.factory.simgr(state)


for i in range(0x19):
    state.solver.add(0x21 <= flag.get_byte(i))
    state.solver.add(flag.get_byte(i) <= 0x7f)


simgr.explore(find=addr_find, avoid=addr_avoid)


if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
else:
    print("Not found")

# shkCTF{cl4ss1c_z3___t0_st4rt_:)}
