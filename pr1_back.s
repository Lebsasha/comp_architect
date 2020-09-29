
section .data 
;strr db "SASAS";
;lenn db 5;
a db 1;
b db 2;
;ccc db 3;
global _start 

section .text
_start:
mov eax, a;
mov ebx, b;
bbbbb:
mul ebx;
mov ecx, eax
mov eax, [b]
mov ebx, [b]
mul ebx;
mull:

mov ebx, [ccc];
add ebx, 2;
div ebx;
add eax, ecx

divv:
; mov eax, 4;
; mov ebx, 1
; mov ecx, strr;
; mov edx, [lenn];
; int 80h;
mov eax, 1;
mov ebx, 5;
int 80h;
