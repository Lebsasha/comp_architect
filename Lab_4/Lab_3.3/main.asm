section .data
global multiply_matrix

section .bss
n_arr resd 2
arr resd 2
size resd 1
i resd 1
j resd 1
k resd 1

p resd 1
result_f resd 1

section .text

multiply_matrix:
    push rbp
    mov rbp, rsp; for correct debugging
    mov QWORD[arr], rdi
    mov QWORD[n_arr], rsi
    mov DWORD[size], edx

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
        mov    rcx,QWORD [n_arr]
        lea    rcx, [rcx+rax*4]
        mov ecx, DWORD[rcx] ; +=
        mov    eax,DWORD [i]
        imul   eax,DWORD [size]
        mov    edx,eax
        mov    eax,DWORD [j]
        add    eax,edx
        ;cdqe   
        ;cwde -- maybe same as cdqe in 32 bits mode
        mov    rdx,QWORD [arr]
        lea    rdx, [rdx+rax*4]
        mov edx, DWORD[rdx]; a[i][j]
        mov    eax,DWORD [k]
        imul   eax,DWORD [size]
        mov    esi,eax
        mov    eax,DWORD [j]
        add    eax,esi
        ;cdqe
        mov    rsi,QWORD [arr]
        lea    rsi, [rsi+rax*4]
        mov eax, DWORD[rsi]  ;a[k][j]
        imul   edx,eax ; a[i][j]*a[k][j]
        mov    eax,DWORD [i]
        imul   eax,DWORD [size]
        mov    esi,eax
        mov    eax,DWORD [k]
        add    eax,esi
        add    edx,ecx;+=a[i][j]*a[k][j]
        ;cdqe   ; for extension eax -> rax with zeroing (in fact copying leading sign)
        mov    rsi,QWORD [n_arr]
        lea    rsi, [rsi+rax*4]
        mov    DWORD [rsi],edx; a[i][k]= edx
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