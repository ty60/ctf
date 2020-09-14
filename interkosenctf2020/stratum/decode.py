import sys


def decode(enc):
    pass


def main():
    if len(sys.argv) < 2:
        print("Provide file")
    with open(sys.argv[1], "rb") as f:
        enc = f.read()

    print(decode(enc))
