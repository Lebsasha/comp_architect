SECTION .text ; program
global factorial ; linux
global _factorial ; windows
global main
factorial:
_factorial:
push rbp ; save base pointer
mov rbp, rsp ; store stack pointer
push rcx ; save rcx
;;; start function
add rbp, 16
mov rcx, [rbp] ; rcx = first argumrnt
mov rax, 1 ; rax = 1
mainloop:
cmp rcx, 0 ; if(rcx == 0)
jz done ; goto done
mul rcx ; else rax = rax * rcx
dec rcx ; rcx = rcx - 1
jmp mainloop
done:
pop rcx ; restore rcx
pop rbp ; restore rbp
ret ; return from function