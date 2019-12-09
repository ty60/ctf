import angr

def solve():
    proj = angr.Project('./beginner_reverse')
    simgr = proj.factory.simulation_manager()
    simgr.explore(find=(0x400000+0x69B6,))
    state = simgr.found[0]
    print(state)
    print(state.posix.dumps(0))


if __name__ == '__main__':
    solve()
