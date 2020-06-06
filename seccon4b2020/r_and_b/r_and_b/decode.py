import codecs
from base64 import b64decode


def decode(enc):
    while (enc[0] == 'R' or enc[0] == 'B'):
        if enc[0] == 'R':
            enc = codecs.encode(enc[1:], 'rot-13')
        elif enc[0] == 'B':
            enc = b64decode(enc[1:]).decode()
        else:
            print("unknown")
    return enc


if __name__ == '__main__':
    with open("./encoded_flag") as f:
        encoded_flag = f.read().rstrip()
    print(decode(encoded_flag))

# ctf4b{rot_base_rot_base_rot_base_base}
