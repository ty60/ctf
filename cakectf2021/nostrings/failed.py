import angr
import claripy


def main():
    flag = claripy.BVS('flag', 57 * 8)

    proj = angr.Project('./chall')
    # state = proj.factory.entry_state(
    #         stdin=angr.SimFileStream(name='stdin', content=flag, has_end=False))
    state = proj.factory.full_init_state(args=['chall'], stdin=flag)

    for i in range(57):
        b = flag.get_byte(i)
        state.solver.add(0x21 <= b)
        state.solver.add(b <= 0x7e)

    simgr = proj.factory.simgr(state)
    # simgr.explore(find=0x400000+0x1283)
    simgr.explore(find=0x400000+0x1277)
    if simgr.found:
        s = simgr.found[0]
        print(s.posix.dumps(0))
    else:
        print("not found")


if __name__ == '__main__':
    main()
