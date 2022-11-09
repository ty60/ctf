TGT := main_asan
SRC := ../main.c

$(TGT): $(SRC)
	gcc -g -fsanitize=address -o $@ $^

clean:
	rm -f $(TGT)
