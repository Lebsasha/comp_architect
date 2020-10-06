
section .data
  arr db 3, 4, 9, 1
  size db $-arr
   global main;
   global CMAIN;
  global _start
 p_end dd 1
  min db 1
section .bss
section .text
   main:
    mov ebp, esp; for correct debugging
  ; CMAIN:
  _start:
  ; x/4xb &arr
    mov eax, p_end
    mov DWORD[eax], arr
    L1:
    movzx ebx, BYTE[size]
    L2:
    add DWORD[eax], ebx
    ddd:
    mov eax, min
    movzx ebx, BYTE[arr]
    mov [eax], ebx
    mov eax, 0
    mov eax, arr; p
;    mov BYTE[eax], 6
    while:
      cmp eax, [p_end]
      je exit_while; jump if not equal
      mov ebx, eax; x
      for:
        cmp ebx, [p_end]
        je exit_for
          movzx ecx, BYTE[min]
          movzx edx, BYTE[ebx]
          cmp ecx, edx
          jnl exit_if
          mov ecx, min
          mov edx, [ebx]
          mov [ecx], edx
        exit_if:
        mov edx, eax

      exit_for:
      mov ecx, [min]
      mov [eax], ecx
      inc eax
      jmp while
    exit_while:
    ; mov ebx, 1
    ; mov cl, [count1]
    ; SAL ebx, cl
    ; mov edx, 1
    ; mov cl, [count2]
    ; SAL edx, cl
    ; xor eax, ebx
    ; xor eax, edx
    mov eax, 1;
    mov ebx, 0;
    int 80h;
    ; ret;
    ;DWORD - 4 байта
    ;WORD - 2 байта
