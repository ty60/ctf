import angr
import struct
import claripy

flag = claripy.BVS("flag", 0x8 * 0x100)

base_addr = 0x400000
proj = angr.Project("./beleaf", load_options={'main_opts': {'base_addr': base_addr }})
state = proj.factory.entry_state(stdin=flag)

def fill_len(state):
    state.memory.store(0x7fffffffffeff70,  claripy.BVV(struct.pack("<Q", 0x50), 8 * 8))
proj.hook_symbol("strlen", fill_len)

with open("./const", "rb") as f:
    const = f.read()
state.memory.store(0x601020, claripy.BVV(const, len(const) * 8))

with open("./order", "rb") as f:
    order = f.read()
state.memory.store(0x6014e0, claripy.BVV(order, len(order) * 8))


simgr = proj.factory.simgr(state)

simgr.explore(find=base_addr+0x9AD)
print(simgr.found)
