all: exploit

exploit: exploit.c
	musl-gcc -o $@ -static -masm=intel $<
