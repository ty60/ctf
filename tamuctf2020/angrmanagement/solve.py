import angr
import claripy

proj = angr.Project('./angrmanagement')

password = claripy.BVS('password', 0x21 * 8)
state = proj.factory.entry_state(stdin=password)
for i in range(0x20):
    state.solver.add(0x21 <= password.get_byte(i))
    state.solver.add(password.get_byte(i) <= 0x7e)

simgr = proj.factory.simgr(state)


BASE_ADDR = 0x400000
simgr.explore(find=BASE_ADDR + 0x2359, avoid=BASE_ADDR + 0x2347)

if simgr.found:
    found_state = simgr.found[0]
    print(found_state.solver.eval(password, cast_to=bytes))
    # P#P#YGzmT[$D5^[QX[`A/@{(I.+w*ADj
else:
    print("Not found")
# nc challenges.tamuctf.com 4322
# gigem{4n63r_m4n463m3n7}
