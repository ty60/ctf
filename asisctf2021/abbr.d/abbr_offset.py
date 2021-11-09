import re


def main():
    with open("./rules.h") as f:
        rules_h = f.readlines()

    for rule in rules_h:
        res = re.search('\.a="(\w*)", \.b="([\w\s]*)"', rule)
        if res is None:
            continue
        a = res.group(1)
        b = res.group(2)

        print('{}: {}'.format(a, len(b) - len(a)))


if __name__ == '__main__':
    main()

