struct address_t {
    int phonenumber;
    char *name; // malloc(0x20);
    char *desc; // malloc(size); (one byte overflow)
};

struct address_t addresses[10]; // @ 0x555555756048

void add_address() {
    int i, len;
    for (i = 0; i < 10; i++) {
        if (addresses[i].name == NULL)
            break;
    }

    if (i == 10)
        return;

    scanf("%d", &len);

    addresses[i].name = malloc(0x20);
    addresses[i].desc = malloc(len);

    scanf("%d", &(addresses[i].phonenumber));
    read(0, &(addresses[i].name), 0x20);
    read(0, &(addresses[i].desc), len + 1); // <-- !?
}





