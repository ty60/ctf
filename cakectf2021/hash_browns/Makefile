all:
	nasm -felf64 f.asm
	gcc -c rev_order.c
	gcc -o rev_order rev_order.o f.o
