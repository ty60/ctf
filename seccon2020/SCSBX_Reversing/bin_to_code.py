def main():
    with open("./seccon.bin", "rb") as f:
        code = f.read()

    hex_code = ''
    for ch in code:
        hex_code += "\\x{:02x}".format(ch)
    print(hex_code)

if __name__ == '__main__':
    main()
