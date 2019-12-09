void hello_asm(char *);

int main(void)
{
    char *str = "Hello ABI!\n";
    hello_asm(str);
}
