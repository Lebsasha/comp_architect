section .data
znam dd -2
first dd 1
n dd 30
sum dd 0;
x dd 0
i dd 0
result dd 0
global _start
global main
global CMAIN

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  _start:

    mov    esi, DWORD [n]
    mov    edi, DWORD [znam]
    call   pow
    lea    eax,[eax-0x1]
    cdq
    ;cmp eax, 0
;    jge gr
;        mov edx, 0xffffffff
;        jmp end_if
;        gr:
;        mov edx, 0
;    end_if:
    mov    esi, DWORD [znam]
    lea esi, [esi-1]
    idiv esi
    imul eax, DWORD [first]
    mov ebx, eax
    mov eax, 1
    nop
    int 80h



pow:
    mov    DWORD [x],edi
    mov    DWORD [i],esi
    mov    DWORD [result],0x1
while:
    mov    eax,DWORD [i]
    lea    edx,[eax-0x1]
    mov    DWORD [i],edx
    test   eax,eax
    je     exit_while
    mov    eax,DWORD [result]
    imul   eax,DWORD [x]
    mov    DWORD [result],eax
    jmp while;
exit_while:
    mov    eax, [result]
    ret    
