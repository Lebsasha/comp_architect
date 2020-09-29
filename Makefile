run_only:
    nasm -f elf $(source)
    ld -m elf_i386 -s -o $(source) $(source).o
    rm $(source).o 
    ./pr1
debug:
    nasm -g -f elf $(source)
    ld -m elf_i386 $(source).o -o $(source)
    gdb ./pr1
