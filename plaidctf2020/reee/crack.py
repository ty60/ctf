import angr
import claripy
import logging


def crack():
    flag = claripy.BVS("flag", 0x8 * 0x30)

    proj = angr.Project('./reee_patched')
    state = proj.factory.entry_state(args=['./reee_patched', flag])
    simgr = proj.factory.simgr(state)

    state.solver.add(flag.get_byte(0) == b'p')
    state.solver.add(flag.get_byte(1) == b'c')
    state.solver.add(flag.get_byte(2) == b't')
    state.solver.add(flag.get_byte(3) == b'f')
    state.solver.add(flag.get_byte(4) == b'{')

    for i in range(5, 0x30):
        state.solver.add(0x21 <= flag.get_byte(i))
        state.solver.add(flag.get_byte(i) <= 0x7e)

    avoids = [
            0x4006b7,
            0x400742,
            0x400748,
            0x400747,
            # 0x4007b6,
            0x400748,
            0x4007ee,
            0x40085f,
            ]
    avoids = []

    # simgr.explore(find=0x400856, avoid=avoids)
    simgr.explore(find=0x400842, avoid=avoids)
    import pdb; pdb.set_trace()
    if simgr.found:
        print(simgr.found[0].solver.eval(flag, cast_to=bytes).decode())


if __name__ == '__main__':
    logging.getLogger('angr').setLevel('WARNING')
    # logging.getLogger('angr').setLevel('INFO')
    crack()
