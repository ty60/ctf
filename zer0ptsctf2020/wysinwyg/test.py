def rec(b, n, m):
    if b == 0:
        return 0
    elif n == 0:
        return 1
    else:
        tmp = rec(b, n - 1, m)
        ret = (m + ((tmp * (b % m)) % m) % m) % m
        return ret


print(rec(ord('a'), 0x5beb, 0x8bae6fa3))
