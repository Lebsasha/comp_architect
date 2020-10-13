
section .data
n dd 1219

global _start
global main
global CMAIN

section .bss

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  _start:


mov    DWORD PTR [rbp-0xc],0x4c3
mov    BYTE PTR [rbp-0x1],0x0
mov    DWORD PTR [rbp-0x8],0x0

  113b:
  cmp    DWORD PTR [rbp-0x8],0x3
  jg     116c
  mov    eax,DWORD PTR [rbp-0x8]
  mov    edx,DWORD PTR [rbp-0xc]
  mov    esi,edx
  mov    ecx,eax
  shl    esi,cl
  mov    eax,DWORD PTR [rbp-0x8]
  mov    edx,DWORD PTR [rbp-0xc]
  mov    ecx,eax
  shr    edx,cl
  mov    eax,edx
  xor    eax,esi
  and    eax,0x1
  test   eax,eax
    je     1166
    mov    BYTE PTR [rbp-0x1],0x1

    1166:
  add    DWORD PTR [rbp-0x8],0x1
  jmp    113b

116c:
movzx  eax,BYTE PTR [rbp-0x1]
    
  ; false:
  ; mov eax, 0
  ; jmp exit; end

  ; true:
  ; mov eax, 1
  ; ; x/4xb &arr
  ; ; p (int*)(p_end)
  ; ; p (int*)(&arr)
  exit:
  mov eax, 1;
  mov ebx, 0;
  int 80h;
