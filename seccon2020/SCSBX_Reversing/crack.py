import angr
import claripy


def solve():
    binpath = './src_angr/scsbx'
    flag = claripy.BVS('flag', 0x40 * 8)
    args = [binpath, '/seccon.bin']

    # proj = angr.Project(binpath, load_options={'auto_load_libs': False})
    proj = angr.Project(binpath)
    state = proj.factory.entry_state(
            args=args,
            stdin=flag,
            )

    # state.solver.add(flag.get_bytes(0, len(b'SECCON{')) == b'SECCON{')
    # state.solver.add(flag.get_byte(0x39) == '}')
    # for i in range(0x40):
    #     b = flag.get_byte(i)
    #     state.solver.add(0x21 <= b)
    #     state.solver.add(b <= 0x7e)
    # Why couldn't it be solved with the above constraints?

    simgr = proj.factory.simgr(state)
    simgr.explore(find=lambda s: b'Correct' in s.posix.dumps(1))
    # simgr.explore(find=lambda s: b'Wrong' in s.posix.dumps(1))
    if simgr.found:
        print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())
    import pdb; pdb.set_trace()




if __name__ == '__main__':
    solve()
