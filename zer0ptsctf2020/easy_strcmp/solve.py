import angr
import claripy


base_addr = 0x400000
proj = angr.Project("./chall")

flag = claripy.BVS("flag", 8 * 36)
argv = [proj.filename]
argv.append(flag)

state = proj.factory.entry_state(args=argv)
simgr = proj.factory.simgr(state)


simgr.explore(find=(base_addr + 0x817))


if simgr.found:
    print(simgr.found[0].solver.eval(flag, cast_to=bytes))
else:
    print("not found")

# zer0pts{l3ts_m4k3_4_DETOUR_t0d4y}
