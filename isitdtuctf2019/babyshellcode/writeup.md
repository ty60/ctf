# subA30
- .init_array に登録されている関数
- flag をメモリにロードする
- 以下のようなことをやっている

```
access("/flag", 0x0)
mmap(0xcafe000, 0x1000, 0x7, 0x32)
open("/flag", 0x0, 0x0)
read(0x3, 0xcafe000, 0x30)
open("/dev/urandom", 0x0, 0x0)
read(0x4, 0xcafe050, 0x8)
```
1. `/flag` の内容を `0xcafe000` にロード
2. `/dev/urandom` を 8 バイト `0xcafe050` にロードして鍵として使う
3. 鍵と `/flag` を 8 バイトずつ XOR していく
