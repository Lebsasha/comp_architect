section .data
n dd 219 ;195
if_palindrom db 1
global _start
global main
global CMAIN

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  _start:

mov    ebx, DWORD 0x0
for:
    cmp    ebx,DWORD 0x3
    jg     exit
    mov    eax,0x7
    sub    eax, ebx
    ;mov    edx, [n]
    mov    esi,[n]
    mov    ecx,eax
    shr    esi,cl
    ;mov    eax,  ebx
    mov    edx, [n]
    mov    ecx,ebx
    shr    edx,cl
    mov    eax,edx
    xor    eax,esi
    and    eax,0x1
      test   eax,eax
      je     if
      mov   BYTE [if_palindrom],0x0
if:
  add    ebx,0x1
  jmp    for

exit:
mov eax, 1;
mov  ebx, BYTE[if_palindrom]
int 80h;
