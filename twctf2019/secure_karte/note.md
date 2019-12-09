# delete
- zero out flag.
- free content pointer (which can be overwritten by UAF in modify).

# modify
- modifies content of entry specified by id.
- doesn't check flag -> UAF.
- global variables `key` and `lock` has to be the same to edit.
- after modifing, it will overwrite `key` so it won't be able to be called again.
    - can `lock` be overwritten?
