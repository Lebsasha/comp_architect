run_only:
	nasm -f elf Lab4.asm;
	ld -m elf_i386 -s -o Lab4 Lab4.o;
	./Lab4;
	rm Lab4.o ;
	rm ./Lab4
debug:
	nasm -g -f elf Lab4.asm
	ld -m elf_i386 Lab4.o -o Lab4
	gdb ./Lab4
	rm Lab4.o ;
	rm ./Lab4
assemble:
	g++ -g main.cpp
	objdump -Mintel -d ./a.out >d.asm
	rm a.out
assemble_2:
	g++ -g -S main.cpp -o d_1.asm
