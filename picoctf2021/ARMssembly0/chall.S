	.arch armv8-a
	.file	"chall.c"
	.text
	.align	2
	.global	func1
	.type	func1, %function
func1: // func1(int x, int y)
	sub	sp, sp, #16
	str	w0, [sp, 12] // *(sp + 12) = atoi(argv[1]) = x
	str	w1, [sp, 8] // *(sp + 8) = atoi(argv[2]) = y
	ldr	w1, [sp, 12] // w1 = x
	ldr	w0, [sp, 8] // w0 = y
	cmp	w1, w0
	bls	.L2 // if (y <= x) goto .L2
	ldr	w0, [sp, 12] // w0 = x
	b	.L3
.L2:
	ldr	w0, [sp, 8] // w0 = y
.L3:
	add	sp, sp, 16
	ret
	.size	func1, .-func1
	.section	.rodata
	.align	3
.LC0:
	.string	"Result: %ld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	w0, [x29, 44] // *(x29 + 44) = w0;
	str	x1, [x29, 32]
	ldr	x0, [x29, 32] // x0 = argv
	add	x0, x0, 8 // x0 = argv + 1
	ldr	x0, [x0] // x0 = argv[1]
	bl	atoi // w0 = atoi(argv[1])
	mov	w19, w0 // w19 = atoi(argv[1])
	ldr	x0, [x29, 32]
	add	x0, x0, 16
	ldr	x0, [x0]
	bl	atoi // w0 = atoi(argv[2])
	mov	w1, w0
	mov	w0, w19
	bl	func1 // func1(argv[1], argv[2])
	mov	w1, w0 // w1 = argv[1] >= argv[2] ? argv[1] : argv[2]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf // printf("Result: %ld\n", w1)
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
