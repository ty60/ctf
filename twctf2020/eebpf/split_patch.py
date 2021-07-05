import re

def main():
    with open('./diff.patch') as f:
        lines = list(f.readlines())

    patches = []
    begin = 0
    end = 1
    while begin < len(lines):
        if end >= len(lines) or lines[end].startswith('diff'):
            patches.append(''.join(lines[begin:end]))
            begin = end
            end = begin + 1
        else:
            end += 1

    pat = re.compile('/(\w+\.[ch]\s)')
    for p in patches:
        filename = pat.search(p).group(1).rstrip()
        filename += '.patch'
        with open('./patches/{}'.format(filename), 'w') as f:
            f.write(p)


if __name__ == '__main__':
    main()
