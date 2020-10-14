section .data
arr dd 1, 2, 3, 4, 5;, 10 ,11, 125, 1125
size dd 4*5
result dd 0

global _start
global main
global CMAIN

section .bss
p resd 1
result_f resd 1

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  _start:
  

    mov    DWORD [result],0x0
    lea    eax,[arr]
    mov    DWORD [p],eax

    for:
    lea    eax,[arr]
    add    eax, [size]
    cmp    DWORD [p],eax ;cmp
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
