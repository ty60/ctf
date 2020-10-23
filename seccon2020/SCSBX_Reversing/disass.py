import sys
import struct


opcode_to_inst = {
0x20: "INS_PUSH",    
0x21: "INS_POP",     
0x22: "INS_DUP",     
0x23: "INS_XCHG",    
0x24: "INS_LOAD32",  
0x25: "INS_LOAD64",  
0x26: "INS_STORE8",  
0x27: "INS_STORE16", 
0x28: "INS_STORE32", 
0x70: "INS_SHOW",    
0x30: "INS_JMP",     
0x31: "INS_JEQ",     
0x32: "INS_JGT",     
0x33: "INS_JGE",     
0x34: "INS_CALL",    
0x40: "INS_ADD",     
0x41: "INS_SUB",     
0x42: "INS_MUL",     
0x43: "INS_DIV",     
0x44: "INS_MOD",     
0x50: "INS_NOT",     
0x51: "INS_AND",     
0x52: "INS_OR",      
0x53: "INS_XOR",     
0x54: "INS_SHL",     
0x55: "INS_SHR",     
0x56: "INS_ROL",     
0x57: "INS_ROR",     
0x60: "INS_READ",    
0x61: "INS_WRITE",   
0x62: "INS_MAP",     
0x63: "INS_UNMAP",   
0x64: "INS_EXIT",    
}




BASE_ADDR = 0x55540000 
def disass(code):
    ip = 0
    asm = ""
    while ip < len(code):
        opcode = code[ip]
        if opcode == 0x20:  # INS_PUSH
            data = code[ip + 1:ip + 5]
            asm += "0x{:08x}: INS_PUSH 0x{:08x} // {}".format(
                    ip, struct.unpack("<I", data)[0], data) + "\n"
            ip += 5
            continue
        asm += "0x{:08x}: ".format(ip) + opcode_to_inst[opcode] + "\n"
        ip += 1
    return asm

def main():
    if len(sys.argv) < 2:
        print("Provide file name")
        return

    with open(sys.argv[1], "rb") as f:
        code = f.read()
        asm = disass(code)

    print(asm)


if __name__ == "__main__":
    main()
