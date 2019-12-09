import angr
import struct


MAIN_START = 0x4009d4
MAIN_END = 0x00400c18

FLAG_LOCATION = 0x400D80
FLAG_PTR_LOCATION = 0x410EA0


def load_trace():
    res = []
    delay_slots = set()
    with open("./trace_8339a701aae26588966ad9efa0815a0a.log") as f:
        for line in f:
            if line.startswith('[INFO]'):
                addr = int(line[6:6+8], 16)

                res.append(addr)

                # every command like this is in delay slot
                # (in this particular binary)
                if ("move r1, r1" in line):
                    delay_slots.add(addr)

    return res, delay_slots


def main():
    trace_log, delay_slots = load_trace()

    # data.bin is simply the binary assembled from trace,
    # starting on 0x400770
    proj = angr.Project(
            './data.bin',
            main_opts={ 'backend': 'blob', 'arch': 'mipsel', 'base_addr': 0x400770 },
            )


    state = proj.factory.blank_state(addr=MAIN_START)
    state.memory.store(FLAG_LOCATION, state.solver.BVS("flag", 8 * 32))
    state.memory.store(FLAG_PTR_LOCATION, struct.pack("<I", FLAG_LOCATION))

    choices = [state]
    for addr in trace_log:
        if addr in delay_slots:
            continue

        for s in choices:
            if s.addr == addr:
                break

        if s.addr != addr:
            raise Exception()

        if s.addr == MAIN_END:
            break

        if s.addr + 4 in delay_slots:
            choices = s.step(num_inst=2)
        else:
            choices = s.step(num_inst=1)

    state = s
    solution = state.solver.eval(state.memory.load(FLAG_LOCATION, 32), cast_to=bytes).rstrip(b'\0').decode('ascii')
    print("The flag is", solution)

    return solution


if __name__ == '__main__':
    main()
