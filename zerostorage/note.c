



typedef struct {
    int is_used;
    int size;
    char *enc_ptr;
} entry;

void merge(void) {
    // 省略

    // from の内容を to のあとに memcpy して新しい entry を作成
    memcpy(
            entries[to].enc_ptr ^ key + entries[to].size,
            entries[from].enc_ptr ^ key,
            entries[from].size
          );
    entries[new_index].is_used = 1;
    entries[new_index].size = entries[from].size + entries[to].size;
    entries[new_index].enc_ptr = entries[to].enc_ptr;

    //省略 (entries[to] とか entries[from] とか初期化)

    // from を free
    free(entries[from].enc_ptr ^ key)

    //省略
}
