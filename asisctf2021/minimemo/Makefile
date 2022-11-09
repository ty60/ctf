TGT := exploit
obj-m = minimemo.o

all: $(TGT)

module:
	make -C ./linux-5.14.3 M=$(PWD) modules

%: %.c
	gcc -static -o $@ $^

clean:
	rm -f $(TGT)
	make -C ./linux-5.14.3 M=$(PWD) clean
