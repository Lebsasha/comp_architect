build:
	@nasm -f elf64 main.asm -o assemblee.o;
	@g++ -no-pie main.cpp assemblee.o -o main
	@./main
	@rm ./main assemblee.o
assemble:
	@g++ -g main.cpp
	@objdump -Mintel -d ./a.out >d.asm
	@rm a.out
assemble_2:
	g++ -g -S main.cpp -o d_1.asm
