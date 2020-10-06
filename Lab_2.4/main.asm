
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
  mov eax, [k]
  mov ebx, [m]
  cmp eax, ebx
  je true
  
  cmp eax, ebx
  jg if_k_m
  mov eax, k
  mov ebx, [eax]
  mov ecx, [m]
  mov [eax], ecx
  mov ecx, m
  mov [ecx], ebx
  if_k_m:

  mov eax, [l]
  mov ebx, [n]
  cmp eax, ebx
  je true

  cmp eax, ebx
  jg if_l_n
  mov eax, l
  mov ebx, [eax]
  mov ecx, [n]
  mov [eax], ecx
  mov ecx, n
  mov [ecx], ebx
  if_l_n:

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
