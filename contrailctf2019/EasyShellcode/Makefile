all:
	nasm -f elf64 read_shellcode.asm -o read_shellcode.o
	ld read_shellcode.o -o read_shellcode
	objdump -M intel -d read_shellcode | grep '^ ' | cut -f2 | perl -pe 's/(\w{2})\s+/\\x\1/g'
	nasm -f elf64 shellcode.asm -o shellcode.o
	ld shellcode.o -o shellcode
	objdump -M intel -d shellcode | grep '^ ' | cut -f2 | perl -pe 's/(\w{2})\s+/\\x\1/g'
