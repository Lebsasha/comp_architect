section .data
arr dd 1, 2, 3,  4, 5, 6,  7, 8, 8
size dd 4*5
result dd 0

global _start
global main
global CMAIN

section .bss
n_arr resd 9; resb 9*4
p resd 1
result_f resd 1

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
 ; _start:
  

push   rbp
    mov    rbp,rsp
    mov    DWORD PTR [i0],0x1
    mov    DWORD PTR [rbp-0x3c],0x2
    mov    DWORD PTR [rbp-0x38],0x3
    mov    DWORD PTR [rbp-0x34],0x4
    mov    DWORD PTR [rbp-0x30],0x5
    mov    DWORD PTR [rbp-0x2c],0x6
    mov    DWORD PTR [rbp-0x28],0x7
    mov    DWORD PTR [rbp-0x24],0x8
    mov    DWORD PTR [rbp-0x20],0x8

    mov    QWORD PTR [rbp-0x70],0x0
    mov    QWORD PTR [rbp-0x68],0x0
    mov    QWORD PTR [rbp-0x60],0x0
    mov    QWORD PTR [rbp-0x58],0x0
    mov    DWORD PTR [rbp-0x50],0x0
    mov    DWORD PTR [size],0x3 -- size
    mov    DWORD PTR [i],0x0

    for_i:	mov    eax,DWORD PTR [i]
    cmp    eax,DWORD PTR [size]
    jge    exit_for_i
    mov    DWORD PTR [k],0x0
    for_k: mov    eax,DWORD PTR [k]
    cmp    eax,DWORD PTR [size]
    jge    exit_for_k
    mov    DWORD PTR [j],0x0
    for_j: mov    eax,DWORD PTR [j]
    cmp    eax,DWORD PTR [size]
    jge    exit_for_j
        mov    eax,DWORD PTR [i]
        imul   eax,DWORD PTR [size]
        mov    edx,eax
        mov    eax,DWORD PTR [k]
        add    eax,edx
        ; cdqe   
        mov    ecx,DWORD PTR [n_arr+ eax*4] ; +=
        mov    eax,DWORD PTR [i]
        imul   eax,DWORD PTR [size]
        mov    edx,eax
        mov    eax,DWORD PTR [j]
        add    eax,edx
        ;cdqe   
        mov    edx,DWORD PTR [arr+eax*4] ; a[k] [j]
        mov    eax,DWORD PTR [k]
        imul   eax,DWORD PTR [size]
        mov    esi,eax
        mov    eax,DWORD PTR [j]
        add    eax,esi
        ;cdqe   
        mov    eax,DWORD PTR [arr+eax*4] ;a[i][k]
        imul   edx,eax ; a[k] [j]*a[i][k]
        mov    eax,DWORD PTR [i]
        imul   eax,DWORD PTR [size]
        mov    esi,eax
        mov    eax,DWORD PTR [k]
        add    eax,esi
        add    edx,ecx;+=a[k] [j]*a[i][k]
        ;cdqe   
        mov    DWORD PTR [n_arr+eax*4-0x70],edx
        add    DWORD PTR [j],0x1
    jmp    for_j
    exit_for_j:
        add    DWORD PTR [k],0x1
    jmp    for_k
    exit_for_k:
        add    DWORD PTR [i],0x1
    jmp    for_i
    exit_for_i:

    mov    eax,0x0
    mov    DWORD PTR [rbp-0x14],0xffff
    pop    rbp
    ret

    exit:
    mov    eax, 1
    ; mov    ebx, 0
    int    80h
    



    lea    eax,[arr]
    mov    DWORD [p],eax
    lea    ebx,[arr]
    add    ebx, [size]

    for:
    cmp    DWORD [p],ebx
    jae    for_exit
      mov    eax, DWORD [p]
      mov    eax, [eax]
      mov    edi,eax
      call   if_pow_5
      test   al,al
      je     if_not_mod_5
        mov    eax,DWORD [p]
        mov    eax, [eax]
        add    DWORD [result],eax
      if_not_mod_5:
      add    DWORD [p],0x4
      jmp    for
    for_exit:
    add DWORD[result], 48
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 4
    int    80h
    sub DWORD[result], 48
    mov    eax, 1
    mov    ebx,DWORD [result]
    int    80h


if_pow_5:
    mov    DWORD [result_f],edi
    while:
    cmp    DWORD [result_f],0x1
    je     exit_while
        mov eax, DWORD [result_f]
        mov edx, 0
        mov esi, 5
        div esi
        test   edx,edx
        jne    mod_5_not_0
            mov    DWORD [result_f],eax
        jmp    while
    mod_5_not_0:
    mov    eax,0x0
    jmp    return
    exit_while:
    mov    eax,0x1
    return:
    ret    
