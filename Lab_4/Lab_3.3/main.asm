section .data
;arr dd 1, 2, 3,  4, 5, 6,  7, 8, 8
size dd 3
result dd 0
global _start
global main
global CMAIN
global multiply_matrix

section .bss
n_arr resd 2 ;9 resb 9*4
arr resd 2
i resd 1
j resd 1
k resd 1

p resd 1
result_f resd 1

section .text
  ;main:
  mov ebp, esp; for correct debugging
  ;CMAIN:
;  _start:
  

multiply_matrix:
    push rbp
    mov rbp, rsp; for correct debugging
    mov rax, [rbp+16]
    mov QWORD[arr], rax
    ;mov    DWORD [size],0x3
    mov    DWORD [i],0x0

    for_i:	mov    eax,DWORD [i]
    cmp    eax,DWORD [size]
    jge    exit_for_i
    mov    DWORD [k],0x0
    for_k: mov    eax,DWORD [k]
    cmp    eax,DWORD [size]
    jge    exit_for_k
    mov    DWORD [j],0x0
    for_j: mov    eax,DWORD [j]
    cmp    eax,DWORD [size]
    jge    exit_for_j
        mov    eax,DWORD [i]
        imul   eax,DWORD [size]
        mov    edx,eax
        mov    eax,DWORD [k]
        add    eax,edx
        ; cdqe   
        mov    ecx,DWORD [n_arr+ eax*4] ; +=
        mov    eax,DWORD [i]
        imul   eax,DWORD [size]
        mov    edx,eax
        mov    eax,DWORD [j]
        add    eax,edx
        ;cdqe   
        mov    edx,DWORD [arr+eax*4] ; a[k] [j]
        mov    eax,DWORD [k]
        imul   eax,DWORD [size]
        mov    esi,eax
        mov    eax,DWORD [j]
        add    eax,esi
        ;cdqe   
        mov    eax,DWORD [arr+eax*4] ;a[i][k]
        imul   edx,eax ; a[k] [j]*a[i][k]
        mov    eax,DWORD [i]
        imul   eax,DWORD [size]
        mov    esi,eax
        mov    eax,DWORD [k]
        add    eax,esi
        add    edx,ecx;+=a[k] [j]*a[i][k]
        ;cdqe   
        mov    DWORD [n_arr+eax*4],edx
        add    DWORD [j],0x1
    jmp    for_j
    exit_for_j:
        add    DWORD [k],0x1
    jmp    for_k
    exit_for_k:
        add    DWORD [i],0x1
    jmp    for_i
    exit_for_i:

    pop rbp
    ret