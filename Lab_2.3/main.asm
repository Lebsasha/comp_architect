section .data
n dd 5
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
    mov    edi, -2
    call   pow
    lea    eax,[eax-0x1]
    cmp eax, 0
    jge gr
        mov edx, 0xffffffff
        jmp end_if
        gr:
        mov edx, 0
    end_if:
    lea esi, [-2-1]
    idiv esi
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
