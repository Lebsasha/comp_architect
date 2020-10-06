
section .data
  arr dd 3, 10, 90, 1
  size db 16; 4*4 $-arr
   global main;
   global CMAIN;
  global _start
 p_end dd 1
  min dd 1
section .bss
section .text
   main:
    mov ebp, esp; for correct debugging
  ; CMAIN:
  ;_start:
  ; x/4xb &arr
  ; p (int*)(p_end)
  ; p (int*)(&arr)
    mov eax, p_end
    mov DWORD[eax], arr
    L1:
    movzx ebx, BYTE[size]
    L2:
    add DWORD[eax], ebx
    ddd:
    mov eax, min
    mov ebx, arr
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
          mov ecx, [min]
          mov edx, [ebx]
          cmp [ecx], edx
          jl exit_if
          mov ecx, min
          mov edx, ebx;Temp edx
          mov [ecx], edx
        exit_if:
        add ebx, 4
        ;mov edx, eax
        jmp for
      exit_for:
      mov ecx, [min]
      mov edx, [ecx]
      mov ebx, [eax]
      mov [ecx], ebx
      mov [eax], edx
      ; inc eax
      add eax, 4
      mov ebx, [p_end]
      mov [min], ebx
    ;add DWORD[min], 4
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
