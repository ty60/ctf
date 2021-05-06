KERNDIR := /home/ty/work/ctf/blazectf2018/blazeme_fukushuu/linux-4.15
BUILD_DIR := $(shell pwd)
VERBOSE = 0

obj-m := blazeme.o

all:
	$(MAKE) -C $(KERNDIR) M=$(PWD) KBUILD_VERBOSE=$(VERBOSE) modules

clean:
	rm -f *.o
	rm -f *.ko
	rm -f *.mod.c
	rm -f *~
