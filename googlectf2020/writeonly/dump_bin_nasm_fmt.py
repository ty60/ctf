import sys

def main():
    if len(sys.argv) < 2:
        print("Give path")
        return
    path = sys.argv[1]
    with open(path, "rb") as f:
        payload = f.read()
    for b in payload:
        sys.stdout.write(hex(b) + ", ")
    print('; Length: ', len(payload))


if __name__ == "__main__":
    main()
