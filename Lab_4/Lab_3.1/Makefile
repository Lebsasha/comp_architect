build:
	@nasm -f elf64 main.asm -o assemblee.o;
	@g++ -no-pie main.cpp assemblee.o -o main
	@./main
	@rm ./main assemble.o
run_only:
	@nasm -f elf main.asm;
	@ld -m elf_i386 -s -o main main.o;
	@./main;
	@rm main.o ;
	@rm ./main
debug:
	@nasm -g -f elf main.asm
	@ld -m elf_i386 main.o -o main
	@gdb ./main
	@rm main.o ;
	@rm ./main
assemble:
	@g++ -g main.cpp
	@objdump -Mintel -d ./a.out >d.asm
	@rm a.out
assemble_2:
	g++ -g -S main.cpp -o d_1.asm
exec_cpp:
	@g++ -g main.cpp;
	@./a.out;
	@rm a.out;
