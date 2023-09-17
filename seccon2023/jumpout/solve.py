import angr


def main():
    proj = angr.Project('./jumpout')
    state = proj.factory.entry_state()
    simgr = proj.factory.simgr(state)

    simgr.explore(find=lambda s: b'Correct!' in s.posix.dumps(1))
    s = simgr.found[0]
    flag = s.posix.dumps(0)
    print(flag)


if __name__ == '__main__':
    main()

# SECCON{jump_table_everywhere}
