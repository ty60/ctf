	.file	"v850-elf.c"
# GNU C (GCC) version 4.7.2 (v850-elf)
#	compiled by GNU C version 4.2.1 20070719  [FreeBSD], GMP version 5.1.1, MPFR version 3.1.2, MPC version 1.0.1
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -D__v850__ -D ___FreeBSD___ -D ARCH="v850-elf"
# -D USE_SYSCALL_WRAPPER v850-elf.c -auxbase-strip v850-elf.s -g -O -Wall
# -fno-builtin -fverbose-asm -fomit-frame-pointer
# options enabled:  -fauto-inc-dec -fbranch-count-reg
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdebug-types-section -fdefer-pop -fdelete-null-pointer-checks
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffunction-cse -fgcse-lm -fgnu-runtime -fguess-branch-probability -fident
# -fif-conversion -fif-conversion2 -finline -finline-atomics
# -finline-functions-called-once -fipa-profile -fipa-pure-const
# -fipa-reference -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-volatile-bitfields
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-ccp -ftree-ch
# -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize
# -ftree-sra -ftree-ter -ftree-vect-loop-version -funit-at-a-time
# -fverbose-asm -fzero-initialized-in-bss -mapp-regs -mprolog-function
# -mv850

	.stabs	"/home/hiroaki/cross2-gcc4/printf/",100,0,2,.Ltext0
	.stabs	"v850-elf.c",100,0,2,.Ltext0
	.section .text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-2147483648;2147483647;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=r(0,3);-2147483648;2147483647;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;037777777777;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=r(0,5);0;037777777777;",128,0,0,0
	.stabs	"long long int:t(0,6)=@s64;r(0,6);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long long unsigned int:t(0,7)=@s64;r(0,7);0;01777777777777777777777;",128,0,0,0
	.stabs	"short int:t(0,8)=@s16;r(0,8);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,9)=@s16;r(0,9);0;65535;",128,0,0,0
	.stabs	"signed char:t(0,10)=@s8;r(0,10);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,11)=@s8;r(0,11);0;255;",128,0,0,0
	.stabs	"float:t(0,12)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,13)=r(0,1);8;0;",128,0,0,0
	.stabs	"long double:t(0,14)=r(0,1);8;0;",128,0,0,0
	.stabs	"void:t(0,15)=(0,15)",128,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/stdio.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/include/stddef.h",130,0,0,0
	.stabs	"size_t:t(2,1)=(0,4)",128,0,213,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/include/stdarg.h",130,0,0,0
	.stabs	"__gnuc_va_list:t(3,1)=(3,2)=*(0,15)",128,0,40,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/sys/reent.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/sys/_types.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/machine/_types.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/machine/_default_types.h",130,0,0,0
	.stabs	"__int8_t:t(7,1)=(0,10)",128,0,26,0
	.stabs	"__uint8_t:t(7,2)=(0,11)",128,0,27,0
	.stabs	"__int16_t:t(7,3)=(0,8)",128,0,36,0
	.stabs	"__uint16_t:t(7,4)=(0,9)",128,0,37,0
	.stabs	"__int_least16_t:t(7,5)=(7,3)",128,0,46,0
	.stabs	"__uint_least16_t:t(7,6)=(7,4)",128,0,47,0
	.stabs	"__int32_t:t(7,7)=(0,1)",128,0,58,0
	.stabs	"__uint32_t:t(7,8)=(0,4)",128,0,59,0
	.stabs	"__int_least32_t:t(7,9)=(7,7)",128,0,76,0
	.stabs	"__uint_least32_t:t(7,10)=(7,8)",128,0,77,0
	.stabs	"__int64_t:t(7,11)=(0,6)",128,0,99,0
	.stabs	"__uint64_t:t(7,12)=(0,7)",128,0,100,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/sys/lock.h",130,0,0,0
	.stabs	"_LOCK_T:t(8,1)=(0,1)",128,0,6,0
	.stabs	"_LOCK_RECURSIVE_T:t(8,2)=(0,1)",128,0,7,0
	.stabn	162,0,0,0
	.stabs	"_off_t:t(5,1)=(0,3)",128,0,16,0
	.stabs	"__dev_t:t(5,2)=(0,8)",128,0,24,0
	.stabs	"__uid_t:t(5,3)=(0,9)",128,0,29,0
	.stabs	"__gid_t:t(5,4)=(0,9)",128,0,32,0
	.stabs	"_off64_t:t(5,5)=(0,6)",128,0,36,0
	.stabs	"_fpos_t:t(5,6)=(0,3)",128,0,44,0
	.stabs	"_ssize_t:t(5,7)=(0,1)",128,0,56,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/include/stddef.h",130,0,0,0
	.stabs	"wint_t:t(9,1)=(0,4)",128,0,354,0
	.stabn	162,0,0,0
	.stabs	"_mbstate_t:t(5,8)=(5,9)=s8__count:(0,1),0,32;__value:(5,10)=u4__wch:(9,1),0,32;__wchb:(5,11)=ar(5,12)=r(5,12);0;037777777777;;0;3;(0,11),0,32;;,32,32;;",128,0,75,0
	.stabs	"_flock_t:t(5,13)=(8,2)",128,0,79,0
	.stabs	"_iconv_t:t(5,14)=(5,15)=*(0,15)",128,0,84,0
	.stabn	162,0,0,0
	.stabs	"__ULong:t(4,1)=(0,5)",128,0,21,0
	.stabs	"_Bigint:T(4,2)=s24_next:(4,3)=*(4,2),0,32;_k:(0,1),32,32;_maxwds:(0,1),64,32;_sign:(0,1),96,32;_wds:(0,1),128,32;_x:(4,4)=ar(5,12);0;0;(4,1),160,32;;",128,0,0,0
	.stabs	"__tm:T(4,5)=s36__tm_sec:(0,1),0,32;__tm_min:(0,1),32,32;__tm_hour:(0,1),64,32;__tm_mday:(0,1),96,32;__tm_mon:(0,1),128,32;__tm_year:(0,1),160,32;__tm_wday:(0,1),192,32;__tm_yday:(0,1),224,32;__tm_isdst:(0,1),256,32;;",128,0,0,0
	.stabs	"_on_exit_args:T(4,6)=s264_fnargs:(4,7)=ar(5,12);0;31;(5,15),0,1024;_dso_handle:(4,7),1024,1024;_fntypes:(4,1),2048,32;_is_cxa:(4,1),2080,32;;",128,0,0,0
	.stabs	"_atexit:T(4,8)=s400_next:(4,9)=*(4,8),0,32;_ind:(0,1),32,32;_fns:(4,10)=ar(5,12);0;31;(4,11)=*(4,12)=f(0,15),64,1024;_on_exit_args:(4,6),1088,2112;;",128,0,0,0
	.stabs	"__sbuf:T(4,13)=s8_base:(4,14)=*(0,11),0,32;_size:(0,1),32,32;;",128,0,0,0
	.stabs	"__sFILE:T(4,15)=s104_p:(4,14),0,32;_r:(0,1),32,32;_w:(0,1),64,32;_flags:(0,8),96,16;_file:(0,8),112,16;_bf:(4,13),128,64;_lbfsize:(0,1),192,32;_cookie:(5,15),224,32;_read:(4,16)=*(4,17)=f(0,1),256,32;_write:(4,18)=*(4,19)=f(0,1),288,32;_seek:(4,20)=*(4,21)=f(5,6),320,32;_close:(4,22)=*(4,23)=f(0,1),352,32;_ub:(4,13),384,64;_up:(4,14),448,32;_ur:(0,1),480,32;_ubuf:(4,24)=ar(5,12);0;2;(0,11),512,24;_nbuf:(4,25)=ar(5,12);0;0;(0,11),536,8;_lb:(4,13),544,64;_blksize:(0,1),608,32;_offset:(0,1),640,32;_data:(4,26)=*(4,27)=xs_reent:,672,32;_lock:(5,13),704,32;_mbstate:(5,8),736,64;_flags2:(0,1),800,32;;",128,0,0,0
	.stabs	"__FILE:t(4,28)=(4,15)",128,0,273,0
	.stabs	"_glue:T(4,29)=s12_next:(4,30)=*(4,29),0,32;_niobs:(0,1),32,32;_iobs:(4,31)=*(4,28),64,32;;",128,0,0,0
	.stabs	"_rand48:T(4,32)=s14_seed:(4,33)=ar(5,12);0;2;(0,9),0,48;_mult:(4,33),48,48;_add:(0,9),96,16;;",128,0,0,0
	.stabs	"_reent:T(4,27)=s1060_errno:(0,1),0,32;_stdin:(4,31),32,32;_stdout:(4,31),64,32;_stderr:(4,31),96,32;_inc:(0,1),128,32;_emergency:(4,34)=ar(5,12);0;24;(0,2),160,200;_current_category:(0,1),384,32;_current_locale:(4,35)=*(4,36)=k(0,2),416,32;__sdidinit:(0,1),448,32;__cleanup:(4,37)=*(4,38)=f(0,15),480,32;_result:(4,3),512,32;_result_k:(0,1),544,32;_p5s:(4,3),576,32;_freelist:(4,39)=*(4,3),608,32;_cvtlen:(0,1),640,32;_cvtbuf:(4,40)=*(0,2),672,32;_new:(4,41)=u240_reent:(4,42)=s204_unused_rand:(0,4),0,32;_strtok_last:(4,40),32,32;_asctime_buf:(4,43)=ar(5,12);0;25;(0,2),64,208;_localtime_buf:(4,5),288,288;_gamma_signgam:(0,1),576,32;_rand_next:(0,7),608,64;_r48:(4,32),672,112;_mblen_state:(5,8),800,64;_mbtowc_state:(5,8),864,64;_wctomb_state:(5,8),928,64;_l64a_buf:(4,44)=ar(5,12);0;7;(0,2),992,64;_signal_buf:(4,45)=ar(5,12);0;23;(0,2),1056,192;_getdate_err:(0,1),1248,32;_mbrlen_state:(5,8),1280,64;_mbrtowc_state:(5,8),1344,64;_mbsrtowcs_state:(5,8),1408,64;_wcrtomb_state:(5,8),1472,64;_wcsrtombs_state:(5,8),1536,64;_h_errno:(0,1),1600,32;;,0,1632;_unused:(4,46)=s240_nextf:(4,47)=ar(5,12);0;29;(4,14),0,960;_nmalloc:(4,48)=ar(5,12);0;29;(0,4),960,960;;,0,1920;;,704,1920;_atexit:(4,9),2624,32;_atexit0:(4,8),2656,3200;_sig_func:(4,49)=*(4,50)=*(4,51)=f(0,15),5856,32;__sglue:(4,29),5888,96;__sf:(4,52)=ar(5,12);0;2;(4,28),5984,2496;;",128,0,0,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/sys/types.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/include/stddef.h",130,0,0,0
	.stabs	"ptrdiff_t:t(11,1)=(0,1)",128,0,150,0
	.stabs	"wchar_t:t(11,2)=(0,3)",128,0,325,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/machine/types.h",130,0,0,0
	.stabs	"__off_t:t(12,1)=(0,3)",128,0,19,0
	.stabs	"__pid_t:t(12,2)=(0,1)",128,0,20,0
	.stabs	"__loff_t:t(12,3)=(0,6)",128,0,22,0
	.stabn	162,0,0,0
	.stabs	"u_char:t(10,1)=(0,11)",128,0,92,0
	.stabs	"u_short:t(10,2)=(0,9)",128,0,93,0
	.stabs	"u_int:t(10,3)=(0,4)",128,0,94,0
	.stabs	"u_long:t(10,4)=(0,5)",128,0,95,0
	.stabs	"ushort:t(10,5)=(0,9)",128,0,99,0
	.stabs	"uint:t(10,6)=(0,4)",128,0,100,0
	.stabs	"ulong:t(10,7)=(0,5)",128,0,101,0
	.stabs	"clock_t:t(10,8)=(0,5)",128,0,105,0
	.stabs	"time_t:t(10,9)=(0,3)",128,0,110,0
	.stabs	"timespec:T(10,10)=s8tv_sec:(10,9),0,32;tv_nsec:(0,3),32,32;;",128,0,0,0
	.stabs	"itimerspec:T(10,11)=s16it_interval:(10,10),0,64;it_value:(10,10),64,64;;",128,0,0,0
	.stabs	"daddr_t:t(10,12)=(0,3)",128,0,126,0
	.stabs	"caddr_t:t(10,13)=(4,40)",128,0,127,0
	.stabs	"ino_t:t(10,14)=(0,9)",128,0,134,0
	.stabs	"off_t:t(10,15)=(5,1)",128,0,163,0
	.stabs	"dev_t:t(10,16)=(5,2)",128,0,164,0
	.stabs	"uid_t:t(10,17)=(5,3)",128,0,165,0
	.stabs	"gid_t:t(10,18)=(5,4)",128,0,166,0
	.stabs	"pid_t:t(10,19)=(0,1)",128,0,172,0
	.stabs	"key_t:t(10,20)=(0,3)",128,0,180,0
	.stabs	"ssize_t:t(10,21)=(5,7)",128,0,182,0
	.stabs	"mode_t:t(10,22)=(0,4)",128,0,196,0
	.stabs	"nlink_t:t(10,23)=(0,9)",128,0,201,0
	.stabs	"fd_mask:t(10,24)=(0,3)",128,0,223,0
	.stabs	"_types_fd_set:T(10,25)=s8fds_bits:(10,26)=ar(5,12);0;1;(10,24),0,64;;",128,0,0,0
	.stabs	"_types_fd_set:t(10,27)=(10,25)",128,0,233,0
	.stabs	"clockid_t:t(10,28)=(0,5)",128,0,254,0
	.stabs	"timer_t:t(10,29)=(0,5)",128,0,259,0
	.stabs	"useconds_t:t(10,30)=(0,5)",128,0,263,0
	.stabs	"suseconds_t:t(10,31)=(0,3)",128,0,264,0
	.stabn	162,0,0,0
	.stabs	"FILE:t(1,1)=(4,28)",128,0,50,0
	.stabs	"fpos_t:t(1,2)=(5,6)",128,0,55,0
	.stabs	"cookie_read_function_t:t(1,3)=(1,4)=f(10,21)",128,0,552,0
	.stabs	"cookie_write_function_t:t(1,5)=(1,6)=f(10,21)",128,0,553,0
	.stabs	"cookie_seek_function_t:t(1,7)=(1,8)=f(0,1)",128,0,559,0
	.stabs	"cookie_close_function_t:t(1,9)=(1,10)=f(0,1)",128,0,561,0
	.stabs	"cookie_io_functions_t:t(1,11)=(1,12)=s16read:(1,13)=*(1,3),0,32;write:(1,14)=*(1,5),32,32;seek:(1,15)=*(1,7),64,32;close:(1,16)=*(1,9),96,32;;",128,0,570,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/stdlib.h",130,0,0,0
	.stabs	"div_t:t(13,1)=(13,2)=s8quot:(0,1),0,32;rem:(0,1),32,32;;",128,0,33,0
	.stabs	"ldiv_t:t(13,3)=(13,4)=s8quot:(0,3),0,32;rem:(0,3),32,32;;",128,0,39,0
	.stabs	"lldiv_t:t(13,5)=(13,6)=s16quot:(0,6),0,64;rem:(0,6),64,64;;",128,0,46,0
	.stabn	162,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/sys/stat.h",130,0,0,0
	.stabs	"/usr/local/cross2-gcc4/lib/gcc/v850-elf/4.7.2/../../../../v850-elf/include/time.h",130,0,0,0
	.stabs	"tm:T(15,1)=s36tm_sec:(0,1),0,32;tm_min:(0,1),32,32;tm_hour:(0,1),64,32;tm_mday:(0,1),96,32;tm_mon:(0,1),128,32;tm_year:(0,1),160,32;tm_wday:(0,1),192,32;tm_yday:(0,1),224,32;tm_isdst:(0,1),256,32;;",128,0,0,0
	.stabs	"__tzrule_struct:T(15,2)=s28ch:(0,2),0,8;m:(0,1),32,32;n:(0,1),64,32;d:(0,1),96,32;s:(0,1),128,32;change:(10,9),160,32;offset:(0,3),192,32;;",128,0,0,0
	.stabs	"__tzrule_type:t(15,3)=(15,2)",128,0,83,0
	.stabs	"__tzinfo_struct:T(15,4)=s64__tznorth:(0,1),0,32;__tzyear:(0,1),32,32;__tzrule:(15,5)=ar(5,12);0;1;(15,3),64,448;;",128,0,0,0
	.stabs	"__tzinfo_type:t(15,6)=(15,4)",128,0,90,0
	.stabn	162,0,0,0
	.stabs	"stat:T(14,1)=s60st_dev:(10,16),0,16;st_ino:(10,14),16,16;st_mode:(10,22),32,32;st_nlink:(10,23),64,16;st_uid:(10,17),80,16;st_gid:(10,18),96,16;st_rdev:(10,16),112,16;st_size:(10,15),128,32;st_atime:(10,9),160,32;st_spare1:(0,3),192,32;st_mtime:(10,9),224,32;st_spare2:(0,3),256,32;st_ctime:(10,9),288,32;st_spare3:(0,3),320,32;st_blksize:(0,3),352,32;st_blocks:(0,3),384,32;st_spare4:(14,2)=ar(5,12);0;1;(0,3),416,64;;",128,0,0,0
	.stabn	162,0,0,0
	.align 2
	.stabs	"__exit:F(0,15)",36,0,16,___exit
	.stabs	"status:P(0,1)",64,0,16,7
	.global ___exit
	.type	___exit, @function
___exit:
	.stabd	46,0,0
	.stabn	68,0,17,.LM0-.LFBB1
.LM0:
.LFBB1:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r7	# status, status
	.stabn	68,0,18,.LM1-.LFBB1
.LM1:
	mov 0,r6	#,
	jarl ___r_exit,r31	#
	.size	___exit, .-___exit
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.align 2
	.stabs	"__read:F(0,1)",36,0,20,___read
	.stabs	"fd:P(0,1)",64,0,20,11
	.stabs	"buffer:P(5,15)",64,0,20,10
	.stabs	"size:P(0,1)",64,0,20,9
	.global ___read
	.type	___read, @function
___read:
	.stabd	46,0,0
	.stabn	68,0,21,.LM2-.LFBB2
.LM2:
.LFBB2:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# fd, fd
	mov r7,r10	# buffer, buffer
	mov r8,r9	# size, size
	.stabn	68,0,22,.LM3-.LFBB2
.LM3:
	mov 0,r6	#,
	mov r11,r7	# fd,
	mov r10,r8	# buffer,
	jarl ___r_read,r31	#
	.stabn	68,0,23,.LM4-.LFBB2
.LM4:
	jr __return_r31
	.size	___read, .-___read
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.align 2
	.stabs	"__write:F(0,1)",36,0,24,___write
	.stabs	"fd:P(0,1)",64,0,24,11
	.stabs	"buffer:P(0,16)=*(0,17)=k(0,15)",64,0,24,10
	.stabs	"size:P(0,1)",64,0,24,9
	.global ___write
	.type	___write, @function
___write:
	.stabd	46,0,0
	.stabn	68,0,25,.LM5-.LFBB3
.LM5:
.LFBB3:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# fd, fd
	mov r7,r10	# buffer, buffer
	mov r8,r9	# size, size
	.stabn	68,0,26,.LM6-.LFBB3
.LM6:
	mov 0,r6	#,
	mov r11,r7	# fd,
	mov r10,r8	# buffer,
	jarl ___r_write,r31	#
	.stabn	68,0,27,.LM7-.LFBB3
.LM7:
	jr __return_r31
	.size	___write, .-___write
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.align 2
	.stabs	"__open:F(0,1)",36,0,28,___open
	.stabs	"path:P(4,35)",64,0,28,11
	.stabs	"flags:P(0,1)",64,0,28,10
	.stabs	"mode:P(0,1)",64,0,28,9
	.global ___open
	.type	___open, @function
___open:
	.stabd	46,0,0
	.stabn	68,0,29,.LM8-.LFBB4
.LM8:
.LFBB4:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r11	# path, path
	mov r7,r10	# flags, flags
	mov r8,r9	# mode, mode
	.stabn	68,0,30,.LM9-.LFBB4
.LM9:
	mov 0,r6	#,
	mov r11,r7	# path,
	mov r10,r8	# flags,
	jarl ___r_open,r31	#
	.stabn	68,0,31,.LM10-.LFBB4
.LM10:
	jr __return_r31
	.size	___open, .-___open
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.align 2
	.stabs	"__close:F(0,1)",36,0,32,___close
	.stabs	"fd:P(0,1)",64,0,32,7
	.global ___close
	.type	___close, @function
___close:
	.stabd	46,0,0
	.stabn	68,0,33,.LM11-.LFBB5
.LM11:
.LFBB5:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	mov r6,r7	# fd, fd
	.stabn	68,0,34,.LM12-.LFBB5
.LM12:
	mov 0,r6	#,
	jarl ___r_close,r31	#
	.stabn	68,0,35,.LM13-.LFBB5
.LM13:
	jr __return_r31
	.size	___close, .-___close
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.align 2
	.stabs	"_exit:F(0,15)",36,0,38,__exit
	.stabs	"status:P(0,1)",64,0,38,6
	.global __exit
	.type	__exit, @function
__exit:
	.stabd	46,0,0
	.stabn	68,0,39,.LM14-.LFBB6
.LM14:
.LFBB6:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,40,.LM15-.LFBB6
.LM15:
	jarl ___exit,r31	#
	.size	__exit, .-__exit
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.align 2
	.stabs	"read:F(0,1)",36,0,43,_read
	.stabs	"fd:P(0,1)",64,0,43,6
	.stabs	"buffer:P(5,15)",64,0,43,7
	.stabs	"size:P(0,1)",64,0,43,8
	.global _read
	.type	_read, @function
_read:
	.stabd	46,0,0
	.stabn	68,0,44,.LM16-.LFBB7
.LM16:
.LFBB7:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,45,.LM17-.LFBB7
.LM17:
	jarl ___read,r31	#
	.stabn	68,0,46,.LM18-.LFBB7
.LM18:
	jr __return_r31
	.size	_read, .-_read
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
	.align 2
	.stabs	"write:F(0,1)",36,0,47,_write
	.stabs	"fd:P(0,1)",64,0,47,6
	.stabs	"buffer:P(0,16)",64,0,47,7
	.stabs	"size:P(0,1)",64,0,47,8
	.global _write
	.type	_write, @function
_write:
	.stabd	46,0,0
	.stabn	68,0,48,.LM19-.LFBB8
.LM19:
.LFBB8:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,49,.LM20-.LFBB8
.LM20:
	jarl ___write,r31	#
	.stabn	68,0,50,.LM21-.LFBB8
.LM21:
	jr __return_r31
	.size	_write, .-_write
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabd	78,0,0
	.align 2
	.stabs	"open:F(0,1)",36,0,51,_open
	.stabs	"path:P(4,35)",64,0,51,6
	.stabs	"flags:P(0,1)",64,0,51,7
	.stabs	"mode:P(0,1)",64,0,51,8
	.global _open
	.type	_open, @function
_open:
	.stabd	46,0,0
	.stabn	68,0,52,.LM22-.LFBB9
.LM22:
.LFBB9:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,53,.LM23-.LFBB9
.LM23:
	jarl ___open,r31	#
	.stabn	68,0,54,.LM24-.LFBB9
.LM24:
	jr __return_r31
	.size	_open, .-_open
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabd	78,0,0
	.align 2
	.stabs	"close:F(0,1)",36,0,55,_close
	.stabs	"fd:P(0,1)",64,0,55,6
	.global _close
	.type	_close, @function
_close:
	.stabd	46,0,0
	.stabn	68,0,56,.LM25-.LFBB10
.LM25:
.LFBB10:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,57,.LM26-.LFBB10
.LM26:
	jarl ___close,r31	#
	.stabn	68,0,58,.LM27-.LFBB10
.LM27:
	jr __return_r31
	.size	_close, .-_close
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabd	78,0,0
	.align 2
	.stabs	"fstat:F(0,1)",36,0,147,_fstat
	.stabs	"fd:P(0,1)",64,0,62,6
	.stabs	"sb:P(0,18)=*(14,1)",64,0,62,7
	.global _fstat
	.type	_fstat, @function
_fstat:
	.stabd	46,0,0
	.stabn	68,0,63,.LM28-.LFBB11
.LM28:
.LFBB11:
	add -4,sp	#,
	st.w r31,0[sp]	#,
	.stabn	68,0,64,.LM29-.LFBB11
.LM29:
	mov r7,r6	# sb,
	mov 0,r7	#,
	movea 60,r0,r8	#,
	jarl _memset,r31	#
	.stabn	68,0,66,.LM30-.LFBB11
.LM30:
	mov 0,r10	#,
	jr __return_r31
	.size	_fstat, .-_fstat
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabd	78,0,0
	.align 2
	.stabs	"lseek:F(0,1)",36,0,68,_lseek
	.stabs	"fd:P(0,1)",64,0,68,6
	.stabs	"offset:P(0,1)",64,0,68,7
	.stabs	"whence:P(0,1)",64,0,68,8
	.global _lseek
	.type	_lseek, @function
_lseek:
	.stabd	46,0,0
	.stabn	68,0,69,.LM31-.LFBB12
.LM31:
.LFBB12:
	.stabn	68,0,71,.LM32-.LFBB12
.LM32:
	mov r7,r10	# offset,
	jmp [r31]
	.size	_lseek, .-_lseek
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabd	78,0,0
	.align 2
	.stabs	"sbrk:F(5,15)",36,0,76,_sbrk
	.stabs	"incr:P(0,1)",64,0,76,6
	.global _sbrk
	.type	_sbrk, @function
_sbrk:
	.stabd	46,0,0
	.stabn	68,0,77,.LM33-.LFBB13
.LM33:
.LFBB13:
	.stabn	68,0,79,.LM34-.LFBB13
.LM34:
	movhi hi(_sbrk_top),r0,r11	#, tmp48
	ld.w lo(_sbrk_top)[r11],r10	# sbrk_top, old_top
	.stabn	68,0,80,.LM35-.LFBB13
.LM35:
	add r10,r6	# old_top, tmp51
	st.w r6,lo(_sbrk_top)[r11]	# sbrk_top, tmp51
	.stabn	68,0,82,.LM36-.LFBB13
.LM36:
	jmp [r31]
	.size	_sbrk, .-_sbrk
	.stabs	"old_top:r(5,15)",64,0,78,10
	.stabn	192,0,0,.LFBB13-.LFBB13
	.stabn	224,0,0,.Lscope13-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabd	78,0,0
	.align 2
	.stabs	"isatty:F(0,1)",36,0,84,_isatty
	.stabs	"fd:P(0,1)",64,0,84,6
	.global _isatty
	.type	_isatty, @function
_isatty:
	.stabd	46,0,0
	.stabn	68,0,85,.LM37-.LFBB14
.LM37:
.LFBB14:
	.stabn	68,0,87,.LM38-.LFBB14
.LM38:
	mov 1,r10	#,
	jmp [r31]
	.size	_isatty, .-_isatty
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabd	78,0,0
	.section	.rodata
.LC0:
	.string	"Hello World! %08lx This architecture is %s\n"
.LC1:
	.string	"v850-elf"
	.section .text
	.align 2
	.stabs	"main:F(0,1)",36,0,172,_main
	.global _main
	.type	_main, @function
_main:
	.stabd	46,0,0
	.stabn	68,0,173,.LM39-.LFBB15
.LM39:
.LFBB15:
	add -12,sp	#,
	st.w r31,8[sp]	#,
	.stabn	68,0,174,.LM40-.LFBB15
.LM40:
	movhi hi(_data_value),r0,r10	#, tmp47
	ld.w lo(_data_value)[r10],r10	# data_value, data_value
	st.w r10,0[sp]	#, data_value
	movhi hi(.LC1),r0,r10	#, tmp50
	movea lo(.LC1),r10,r10	#, tmp50, tmp49
	st.w r10,4[sp]	#, tmp49
	movhi hi(.LC0),r0,r6	#, tmp45
	movea lo(.LC0),r6,r6	#, tmp45,
	jarl _printf,r31	#
	.stabn	68,0,175,.LM41-.LFBB15
.LM41:
	mov 0,r6	#,
	jarl _exit,r31	#
	.size	_main, .-_main
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabd	78,0,0
	.align 2
	.stabs	"_startmain:F(0,1)",36,0,165,__startmain
	.global __startmain
	.type	__startmain, @function
__startmain:
	.stabd	46,0,0
	.stabn	68,0,166,.LM42-.LFBB16
.LM42:
.LFBB16:
	add -4,sp	#,
	st.w r31,0[sp]	#,
.LBB4:
.LBB5:
	.stabn	68,0,159,.LM43-.LFBB16
.LM43:
	movhi hi(__bss_start),r0,r10	#, tmp48
	movea lo(__bss_start),r10,r10	#, tmp48, tmp47
	mov r10,r6	# tmp47,
	mov 0,r7	#,
	movhi hi(__ebss),r0,r8	#, tmp51
	movea lo(__ebss),r8,r8	#, tmp51, tmp50
	sub r10,r8	# tmp47,
	jarl _memset,r31	#
.LBE5:
.LBE4:
	.stabn	68,0,168,.LM44-.LFBB16
.LM44:
	jarl _main,r31	#
	.size	__startmain, .-__startmain
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabd	78,0,0
	.global _sbrk_top
	.section .data
	.align 2
	.type	_sbrk_top, @object
	.size	_sbrk_top, 4
_sbrk_top:
	.long	__heap
	.comm	_bss_value,4,4
	.global _data_value
	.align 2
	.type	_data_value, @object
	.size	_data_value, 4
_data_value:
	.long	-1414661426
	.stabs	"data_value:G(0,3)",32,0,8,0
	.stabs	"bss_value:G(0,1)",32,0,9,0
	.stabs	"sbrk_top:G(4,40)",32,0,74,0
	.section .text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
