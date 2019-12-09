import angr, claripy


def solve():
    proj = angr.Project('./scramble')

    flag_header = 'HarekazeCTF'
    user_input = claripy.BVV(flag_header, len(flag_header) * 8)
    user_input = user_input.concat(claripy.BVS('flag', 50 * 8))
    state = proj.factory.entry_state(stdin=user_input, load_options={'auto_load_libs': False})
    simgr = proj.factory.simgr(state)

    addr_find = 0x400000 + 0x737
    addr_avoid = 0x400000 + 0x6fb
    simgr.explore(find=(addr_find,), avoid=(addr_avoid,))
    found_state = simgr.found[0]
    print(found_state.solver.eval(user_input, cast_to=bytes))


if __name__ == '__main__':
    solve()
