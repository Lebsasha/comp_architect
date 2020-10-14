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
