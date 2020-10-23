all:
	g++ -g -c instr_mem.cpp -o instr_mem.o 
	g++ -g -c instr_branch.cpp -o instr_branch.o 
	g++ -g -c instr_arith.cpp -o instr_arith.o 
	g++ -g -c instr_logic.cpp -o instr_logic.o 
	g++ -g -c instr_sys.cpp -o instr_sys.o 
	g++ -g -c scsbx.cpp -o scsbx.o 
	g++ -g -c main.cpp -o main.o 
	g++ -g main.o instr_sys.o instr_branch.o instr_logic.o instr_arith.o instr_mem.o scsbx.o -o scsbx
