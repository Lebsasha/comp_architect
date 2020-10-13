section .data
n dd 219
if_palindrom dd 1
offsett dd 1
global _start
global main
global CMAIN

section .bss

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  _start:
; %use masm

mov    DWORD [n],0xdb
mov    DWORD[if_palindrom],0x1
mov    [ebx],DWORD 0x0
for:
    cmp    [ebx],DWORD 0x3
    jg     exit
    mov    eax,0x7
    sub    eax, [ebx]
    mov    edx, [n]
    mov    esi,edx
    mov    ecx,eax
    shr    esi,cl
    mov    eax,  [ebx]
    mov    edx, [n]
    mov    ecx,eax
    shr    edx,cl
    mov    eax,edx
    xor    eax,esi
    and    eax,0x1
    test   eax,eax
      je     if
      mov   DWORD [if_palindrom],0x0
if:
  add    DWORD [ebx],0x1
  jmp    for

exit:
mov eax, 1;
mov  ebx, [if_palindrom]
int 80h;






  ; false:
  ; mov eax, 0
  ; jmp exit; end

  ; true:
  ; mov eax, 1
  ; ; x/4xb &arr
  ; ; p (int*)(p_end)
  ; ; p (int*)(&arr)
  ; exit:
  ; mov eax, 1;
  ; mov ebx, 0;
  ; int 80h;
