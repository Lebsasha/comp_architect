
section .data
a dd 4;
b dd 20;
ccc dd 1;
global main;_start - 

section .text
main: ;_start
mov eax, [a];
mov ebx, [b];
movv:
mul ebx;
mov esi, eax
mov eax, [b]
mov ebx, [b]
mul ebx;
mull:

mov ebx, [ccc];
add ebx, 2;
div ebx;
divv:
sub esi, eax

figg:
mov eax, 1;
mov ebx, 0;
int 80h;
