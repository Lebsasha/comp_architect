
section .data
k dd 1
l dd 1
m dd 2
n dd 2

global _start
global main
global CMAIN

section .bss

section .text
   main:
    mov ebp, esp; for correct debugging
  CMAIN:
  _start:
  mov eax, [k]
  mov ebx, [m]
  cmp eax, ebx
  je true

  mov eax, [l]
  mov ebx, [n]
  cmp eax, ebx
  je true

  mov eax, [k]
  sub eax, [m]
  mov ebx, [l]
  sub ebx, [n]
  cmp eax, ebx
  je true

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
