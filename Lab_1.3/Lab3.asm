
  section .data
 a db 0xff
 count1 db 3-1
 count2 db 6-1
global main;

section .text
main:
    mov ebp, esp; for correct debugging
movzx eax, BYTE [a]
mov ebx, 1
mov cl, [count1]
SAL ebx, cl
mov edx, 1
mov cl, [count2]
SAL edx, cl
xor eax, ebx
xor eax, edx
ret;