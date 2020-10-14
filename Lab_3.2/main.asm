section .data
arr dd 1, 2, 3, 4, 5, -4, -6, -1, 0, 8, 10 ,11, 125, 1125, 3125
size dd 4*15
result dd 0

global _start
global main
global CMAIN

section .bss
n_arr resd 15; resb 4*5
result_f resd 1
p resd 1
n_p resd 1
p_end resd 1
n_p_end resd 1
section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
 ; _start:
  

    lea    eax, [arr]
    mov    DWORD [p],eax
    add eax, [size]
    mov DWORD[p_end], eax
    lea    eax,[n_arr]
    mov    DWORD [n_p],eax
    add eax, [size]
    mov DWORD[n_p_end], eax
    
    mov    ebx,[p_end]

    for_neg:
    cmp    DWORD [p],ebx
    jae    for_exit_neg
      mov    eax, DWORD [p]
      mov    eax, [eax]
      cmp eax, 0
      jg gr_0
        mov ecx, [n_p]
        mov [ecx], eax
        add    DWORD [n_p],0x4
      gr_0:
      add    DWORD [p],0x4
      jmp    for_neg
    for_exit_neg:

    lea    eax, [arr]
    mov    DWORD [p],eax

    for_pos:
    cmp    DWORD [p],ebx
    jae    for_exit_pos
      mov    eax, DWORD [p]
      mov    eax, [eax]
      cmp eax, 0
      jle l_0
        mov ecx, [n_p]
        mov [ecx], eax
        add    DWORD [n_p],0x4
      l_0:
      add    DWORD [p],0x4
      jmp    for_pos
    for_exit_pos:


    mov    eax, 1
    mov    ebx,0
    int    80h


    ; add DWORD[result], 48
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 4
    int    80h
    sub DWORD[result], 48
    mov    eax, 1
    mov    ebx,DWORD [result]


find_min_1:
    mov    DWORD [result_f],edi
    for_f:
    cmp    ecx,ebx
    jae    for_f_exit
      cmp eax, [ecx]
      jle min
      cmp eax, 0
      jle min
      MOV eax, [ecx]
      min:
      add    ecx,0x4
      jmp    for_f

    for_f_exit:
    ret

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
