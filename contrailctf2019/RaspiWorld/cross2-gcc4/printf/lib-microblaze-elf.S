/*
 * Write operation is not implemented on MicroBlaze simulator in GDB.
 * See gdb/sim/microblaze/interp.c:process_stub(),handle_trap1()
 * (handle_trap1() is empty function)
 * And printf utility is not implemented too.
 * See gdb/sim/microblaze/interp.c:util() (case 1:)
 */

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	addik	r1, r0, _estack
	brlid	r15, _startmain
	nop

	addk	r5, r3, r0
	/* fall through */

	.globl	__exit
	.type	__exit, @function
__exit:
	/*
	 * Use halt instruction.
	 * See gdb/sim/microblaze/interp.c:sim_resume()
	 * (MICROBLAZE_HALT_INST, SIGQUIT)
	 * Exit code is by r3.
	 * See gdb/sim/microblaze/interp.c:sim_stop_reason() (RETREG)
	 */
	addk	r3, r5, r0
	.long	0xb8000000
	rtsd	r15, 8
	nop

	.globl	__read
	.type	__read, @function
__read:
	rtsd	r15, 8
	nop

	.globl	__write
	.type	__write, @function
__write:
	/*
	 * Write operation is not implemented on simulator,
	 * so write character to buffer.
	 * You can see output message to run by gdb,
	 * and execute below command.
	 * (gdb) x/s &_writebuf
	 */
1:
	blei	r7, 2f

	lwi	r3, r0, _current
	lbui	r5, r6, 0
	sbi	r5, r3, 0
	addik	r3, r3, 1
	swi	r3, r0, _current

	addik	r6, r6, 1
	addik	r7, r7, -1
	brai	1b
2:
	rtsd	r15, 8
	nop

	.globl	__open
	.type	__open, @function
__open:
	rtsd	r15, 8
	nop

	.globl	__close
	.type	__close, @function
__close:
	rtsd	r15, 8
	nop

	.data
	.globl _current
_current:
	.long	_writebuf
_writebuf:
	.fill	128, 1, 0x00
