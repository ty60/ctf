import sys


if __name__ == "__main__":
    if len(sys.argv) == 1:
        print("Provide size in hex")
    req_size = int(sys.argv[1], 16)
    print(hex(((req_size+0x10)>>4)<<4))
