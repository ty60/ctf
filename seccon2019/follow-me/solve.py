import angr
import sys
import claripy
import json
import collections


def chosen_succ(proj, succs, prev, branch):
    assert prev.addr == branch.addr

    b = proj.factory.block(prev.addr)
    addr_not_taken = b.addr + b.size

    if addr_not_taken == succs[0].addr:
        not_taken = succs[0]
        taken = succs[1]
    elif addr_not_taken == succs[1].addr:
        not_taken = succs[1]
        taken = succs[0]
    else:
        raise Exception("Emulation failed")

    if branch.taken:
        return taken
    else:
        return not_taken


Branch = collections.namedtuple('Branch', ['addr', 'taken'])


def debug_hook(state):
    import pdb; pdb.set_trace()

def hook(proj):
    # proj.hook(ADDR_BASE + 0xba0, debug_hook)
    # proj.hook(ADDR_BASE + 0xbba, debug_hook)
    # proj.hook(ADDR_BASE + 0x91d, debug_hook)
    pass


def dump_res(state, flag, flag_len):
    for i in range(flag_len):
        sys.stdout.write(chr(state.solver.eval(flag.get_byte(i))))
    print('')


ADDR_BASE = 0x55f6b4d44000
def main():
    # calc_mod is binary patched version of calc
    # malloc(0x8) -> malloc(0x20)
    proj = angr.Project('./calc_mod',
                        load_options={'main_opts': {'base_addr': 0x55f6b4d44000}})
    hook(proj)

    argv = [proj.filename]

    flag_len = 90
    flag = claripy.BVS('flag', flag_len * 8)  # this isn't really flag. it's the formula passed to calc as formula
    argv.append(flag)

    entry_state = proj.factory.entry_state(args=argv)
    # entry_state.inspect.b('mem_read', when=angr.BP_BEFORE, action=angr.BP_IPYTHON, mem_read_address=0x3e7)

    with open('./calc.trace') as f:
        trace = json.loads(f.read())
        trace = filter(lambda d: d["event"] == "branch", trace)
        trace = list(map(lambda d: Branch(addr=int(d["inst_addr"], 16), taken=bool(d["branch_taken"])), trace))
        trace = collections.deque(trace)

    state = entry_state
    try:
        while len(trace) > 0:
            print(len(trace))
            if state.addr == trace[0].addr:
                branch = trace.popleft()

            succs = proj.factory.successors(state, num_inst=1).successors

            prev = state
            if len(succs) == 2:
                state = chosen_succ(proj, succs, state, branch)
            elif len(succs) == 1:
                state = succs[0]
            else:
                dump_res(state, flag, flag_len)
                raise Exception("Emulation failed")
    except Exception:
        dump_res(state, flag, flag_len)
        raise
    dump_res(state, flag, flag_len)


if __name__ == '__main__':
    main()

# This script took like 30 minutes !!!!!!
# SECCON{Is it easy for you to recovery input from execution trace? Keep hacking:)}
