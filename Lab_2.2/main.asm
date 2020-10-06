
section .data

global _start
global main
global CMAIN
section .bss

section .text
   main:
    mov ebp, esp; for correct debugging
  CMAIN:
  _start:
  ; x/4xb &arr
  ; p (int*)(p_end)
  ; p (int*)(&arr)

    mov eax, 1;
    mov ebx, 0;
    int 80h;
