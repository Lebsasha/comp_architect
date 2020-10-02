run_only:
	nasm -f elf Lab4.asm;
	ld -m elf_i386 -s -o Lab4 Lab4.o;
	rm Lab4.o ;
	./Lab4;
	rm ./Lab4
debug:
	nasm -g -f elf $(source)
	ld -m elf_i386 $(source).o -o $(source)
	gdb ./pr1
