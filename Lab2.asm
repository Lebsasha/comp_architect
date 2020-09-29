%include "io.inc"

section .data
a dw 0
b dw 1
c dw 0
d dw 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    movzx ax, BYTE[a];T=(a+b)*!c*!d
    OR ax, [b];
    movzx bx, BYTE[c];
    NOT bx;
    AND ax, bx;
    movzx bx, BYTE[d];
    NOT bx;
    AND ax, bx;
    mov dx, ax
    ;S=a*!(c+d)+b*!(c+d)
    movzx ax, BYTE[c]
    OR ax, [d]
    NOT ax
    AND ax, [a] 
    mov bx, ax 
    movzx ax, BYTE[c]
    OR ax, [d]
    NOT ax
    AND ax, [b]
    OR ax, bx
    CMP ax, dx
    SETE al
;    mov bx,  ax && dx ? 1 : 0
;    PRINT_CHAR ax
;    PRINT_CHAR dx
    ret