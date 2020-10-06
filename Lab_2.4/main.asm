
section .data
n dd 73

global _start
global main
global CMAIN

section .bss

section .text
   main:
    mov ebp, esp; for correct debugging
  CMAIN:
  _start:

  false:
  mov eax, 0
  jmp exit; end

  true:
  mov eax, 1
  ; x/4xb &arr
  ; p (int*)(p_end)
  ; p (int*)(&arr)
  exit:
  mov eax, 1;
  mov ebx, 0;
  int 80h;
