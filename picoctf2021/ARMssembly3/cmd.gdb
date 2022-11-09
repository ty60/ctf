target remote localhost:1234
b *0x400600
commands 1
    p *(unsigned int *)($sp + 28)
end
