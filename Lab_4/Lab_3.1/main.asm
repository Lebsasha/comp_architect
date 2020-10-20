section .data
result_f dd 1
global if_5_pow

section .text

if_5_pow:
    push rbp
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
    mov edx, 0
    return:
    pop rbp
    ret    
