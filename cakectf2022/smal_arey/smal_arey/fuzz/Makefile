TGT := main
SRC := main.c


$(TGT): $(SRC)
	AFL_USE_ASAN=1 afl-clang-fast -o $@ $^

fuzz: $(TGT)
	mkdir -p input
	printf "5\n0\n10\n100" > input/in
	AFL_SKIP_CPUFREQ=1 afl-fuzz -i input -o output -- ./$(TGT)

clean:
	rm -f $(TGT)
