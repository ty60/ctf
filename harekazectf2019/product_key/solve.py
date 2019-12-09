import angr, claripy
from angr import sim_options as so


def show(state):
    print('debug',)
    print(state.memory.load(0x7fffffffffefe40, 40))

class SimStrncatChk(angr.SimProcedure):
    def run(self, dest, src, n):
        return 0


class SimStrtok(angr.SimProcedure):
    def run(self, str_, delim):
        return 0


BINPATH = './product_key'
REBASE_ADDR = 0x400000
RAW_KEY = None
def solve():
    proj = angr.Project(BINPATH,
            load_options={ 'auto_load_libs': False },
            main_opts={'base_addr': REBASE_ADDR},
            )

    key = claripy.BVS('key_0', 4 * 8)
    raw_key = key
    for i in range(1, 8):
        t = claripy.BVS('key_{}'.format(i), 4 * 8)
        raw_key = raw_key.concat(t)
        key = key.concat(b'-', t)
    for i in range(174):
        key = key.concat(claripy.BVV(b'\x00', 8))

    @proj.hook(REBASE_ADDR + 0x904)
    def store_key(state):
        state.memory.store(0x7fffffffffefe40, raw_key)
        # state.memory.store(0x7fffffffffefe90, claripy.BVV(2, 8 * 8))

        # table = b'Y9ND6U0RXCPIOHQL418G7KAVJ3FW5BZT'
        # state.memory.store(0x400e38, claripy.BVV(table, len(table) * 8))

    args = [BINPATH, key]
    proj.hook_symbol('__strncat_chk', SimStrncatChk())
    proj.hook_symbol('strtok', SimStrtok())
    proj.hook(REBASE_ADDR + 0x904, store_key)

    # proj.hook(REBASE_ADDR + 0x9c3, show)
    # proj.hook(REBASE_ADDR + 0x960, lambda s: print('yay'))
    # proj.hook_symbol('decode', lambda s: print('decode'))

    es = proj.factory.entry_state(args=args)
    for byte in raw_key.chop(8):
        es.add_constraints(byte >= b'\x20')
        es.add_constraints(byte <= b'\x7e')

    addrs_find = [REBASE_ADDR + 0x9e8]
    addrs_avoid = [REBASE_ADDR + 0x9b0, REBASE_ADDR + 0x87d]
    # es.inspect.b('symbolic_variable', when=angr.BP_AFTER, action=show)

    simgr = proj.factory.simgr(es)
    simgr.explore(find=addrs_find, avoid=addrs_avoid)

    fs = simgr.found[0]
    addr_flag = fs.solver.eval(fs.regs.rsi)
    flag = fs.solver.eval(fs.memory.load(addr_flag, 50), cast_to=bytes)
    print(flag)
    hoge = fs.solver.eval(key, cast_to=bytes)
    print(hoge)


if __name__ == '__main__':
    solve()
