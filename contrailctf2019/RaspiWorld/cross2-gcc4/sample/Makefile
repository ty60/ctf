# major architectures.
TARGETS += arm-elf.d h8300-elf.d i386-elf.d mips-elf.d powerpc-elf.d sh-elf.d

# available on new gcc.
TARGETS += bfin-elf.d cr16-elf.d m32c-elf.d microblaze-elf.d moxie-elf.d
TARGETS += rl78-elf.d rx-elf.d spu-elf.d tic6x-elf.d

# other architectures.
TARGETS += avr-elf.d cris-elf.d frv-elf.d hppa-linux.d m32r-elf.d m68k-elf.d
TARGETS += mips64-elf.d mn10300-elf.d pdp11-aout.d sh64-elf.d sparc-elf.d
TARGETS += strongarm-elf.d v850-elf.d xscale-elf.d xstormy16-elf.d xtensa-elf.d

# need patches to build cross binutils/gcc.
TARGETS += alpha-elf.d

# use compiler for main architecture.
TARGETS += arm16-elf.d avr8-elf.d h8300h-elf.d mips16-elf.d

SRCS = $(TARGETS:.d=.c)
ASMS = $(TARGETS:.d=.s)
OBJS = $(TARGETS:.d=.o)
EXES = $(TARGETS:.d=.x)

SOURCE = sample.c

PREFIX = /usr/local/cross2-gcc4
BINDIR = $(PREFIX)/bin

# common options.
GFLAGS   = -fno-builtin -nostdinc -nostdlib -static -O -Wall
GFLAGS  += -g
CFLAGS   = -fverbose-asm
CFLAGS  += -fomit-frame-pointer
#CFLAGS += -fno-omit-frame-pointer
AFLAGS   = 
LFLAGS   = -Wl,-Tld.scr
DFLAGS   = -d
#DFLAGS += -S

FGCC-arm16-elf  = arm16-elf
TGCC-arm16-elf  = arm-elf
FGCC-avr8-elf   = avr8-elf
TGCC-avr8-elf   = avr-elf
FGCC-h8300h-elf = h8300h-elf
TGCC-h8300h-elf = h8300-elf
FGCC-m6811s-elf = m6811s-elf
TGCC-m6811s-elf = m6811-elf
FGCC-mips16-elf = mips16-elf
TGCC-mips16-elf = mips-elf

# general options.
GFLAGS-arm16-elf       += -mthumb -mthumb-interwork
GFLAGS-avr8-elf        += -mint8 -w
GFLAGS-h8300h-elf      += -mh -mint32
GFLAGS-m6811s-elf      += -mshort
#GFLAGS-m68k-elf       += -mshort
GFLAGS-mips16-elf      += -mips16
GFLAGS-mips64-elf      += -mips64 -march=mips64 -mtune=mips64 -mlong64
GFLAGS-mmix-elf        += -melf
#GFLAGS-pdp11-aout     += -mint32
GFLAGS-powerpc64-linux += -mpowerpc64 -mcpu=powerpc64 -mtune=powerpc64
GFLAGS-sh64-elf        += -m5-64media
GFLAGS-x86_64-linux    += -m64

# options without symbols defined on linker script.
#GFLAGS-avr-elf    += -minit-stack=0xfe1c00
#GFLAGS-avr8-elf   += -minit-stack=0xfe1c00
#GFLAGS-frv-elf    += -G 0
#GFLAGS-hppa-linux += -mfast-indirect-calls
#GFLAGS-m6811-elf  += -msoft-reg-count=0
#GFLAGS-m6811s-elf += -msoft-reg-count=0
#GFLAGS-mips-elf   += -G 0
#GFLAGS-mips16-elf += -G 0
#GFLAGS-mips64-elf += -G 0
#GFLAGS-v850-elf   += -mno-prolog-function
#GFLAGS-xtensa-elf += -mtext-section-literals

# to avoid debug option.
NOGFLAGS-h8300-elf  += -g
NOGFLAGS-h8300h-elf += -g
NOGFLAGS-i960-elf   += -g
NOGFLAGS-m6811-elf  += -g
NOGFLAGS-m6811s-elf += -g
NOGFLAGS-microblaze-elf += -g
NOGFLAGS-pdp11-aout += -g

# compile options.
NOCFLAGS-i386-elf += -fverbose-asm
CFLAGS-i960-elf   += -DNO_DIRECT
CFLAGS-ia64-elf   += -DNO_DIRECT -DNO_BINARY
CFLAGS-mmix-elf   += -DNO_DIRECT

# assemble options.
AFLAGS-arc-elf  += -Wa,-marc5
AFLAGS-ia64-elf += -mgnu-as

# link options.
LFLAGS-ia64-elf      += -mgnu-ld
#LFLAGS-ia64-elf     += -Wl,-r
#NOLFLAGS-ia64-elf   += -Wl,-Tld.scr
LFLAGS-rl78-elf      += -Wl,-Ttext -Wl,0x1400
LFLAGS-rx-elf        += -N
LFLAGS-spu-elf       += -Wl,-Ttext -Wl,0x1400
LFLAGS-x86_64-linux  += -Wl,-n
LFLAGS-xstormy16-elf += -Wl,-Ttext -Wl,0x1400

# disassemble options.
#DFLAGS-arm-elf    += -M reg-names-raw
#DFLAGS-arm16-elf  += -M reg-names-raw
#DFLAGS-mips-elf   += -M reg-names=numeric
#DFLAGS-mips16-elf += -M reg-names=numeric
#DFLAGS-mips64-elf += -M reg-names=numeric
#DFLAGS-mips-elf   += -M no-aliases
#DFLAGS-mips64-elf += -M no-aliases

.SUFFIXES:
.SUFFIXES: .d .x .o .s .c
.PRECIOUS: $(SRCS) $(ASMS) $(OBJS) $(EXES)

all :		$(TARGETS)

$(SRCS) :	$(SOURCE)
		@echo ---------------- $* ----------------
		@echo ---- create source file \($(SOURCE) =\> $@\)
		cp $(SOURCE) $@

$(ASMS) :	Makefile

$(EXES) :	ld.scr

.c.s :
		@echo ---- compile \($< =\> $@\)
		$(BINDIR)/$(*:$(FGCC-$*)=$(TGCC-$*))-gcc \
			$(GFLAGS:$(NOGFLAGS-$*)=) $(GFLAGS-$*) \
			$(CFLAGS:$(NOCFLAGS-$*)=) $(CFLAGS-$*) -o $@ -S $<

.s.o :
		@echo ---- assemble \($< =\> $@\)
		$(BINDIR)/$(*:$(FGCC-$*)=$(TGCC-$*))-gcc \
			$(GFLAGS:$(NOGFLAGS-$*)=) $(GFLAGS-$*) \
			$(AFLAGS:$(NOAFLAGS-$*)=) $(AFLAGS-$*) -o $@ -c $<

.o.x :
		@echo ---- link \($< =\> $@\)
		$(BINDIR)/$(*:$(FGCC-$*)=$(TGCC-$*))-gcc \
			$(GFLAGS:$(NOGFLAGS-$*)=) $(GFLAGS-$*) \
			$(LFLAGS:$(NOLFLAGS-$*)=) $(LFLAGS-$*) -o $@ $<

#ia64-elf.x :	ia64-elf.o
#		cp $< $@

.x.d :
		@echo ---- disassemble \($< =\> $@\)
		$(BINDIR)/$(*:$(FGCC-$*)=$(TGCC-$*))-objdump \
			$(DFLAGS:$(NODFLAGS-$*)=) $(DFLAGS-$*) $< > $@

# clear default .c.o rule
# (useless because of priority definition of .SUFFIXES)

# for BSD make
.c.o :

# for GNU make
%.o :		%.c

clean :
		rm -f $(SRCS) $(ASMS) $(OBJS) $(EXES) $(TARGETS)
