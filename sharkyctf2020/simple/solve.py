import angr
import claripy


addr_find = 0x4000dc
addr_avoid = 0x4000e8


flag = claripy.BVS('flag', 33 * 8)

proj = angr.Project('./a.out')
state = proj.factory.entry_state(args=['./a.out', flag])
simgr = proj.factory.simgr(state)


for i in range(33):
    state.solver.add(0x21 <= flag.get_byte(i))
    state.solver.add(flag.get_byte(i) <= 0x7e)


simgr.explore(find=addr_find, avoid=addr_avoid)


if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
else:
    print("Not found")

# shkCTF{h3ll0_fr0m_ASM_my_fr13nd}
