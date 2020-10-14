section .data
n dd 219 ;195
sum dd 0;
x dd 0
i dd 0
result dd 0
global _start
global main
global CMAIN

section .text
  main:
  mov ebp, esp; for correct debugging
  CMAIN:
  ;_start:
  



; 0000000000001157 <main>:
    ; push   rbp
    ; mov    rbp,rsp
    ; sub    rsp,0x20
    mov    DWORD [n],0x5
;     mov    DWORD PTR [rbp-0x4],0x0
;     mov    DWORD PTR [rbp-0x8],0xb
;     mov    ebx,0x0
; for:
;     mov    eax,ebx
;     cmp    eax,0x4    ;n-1
;     ja     exit_for
;     mov    eax, DWORD PTR [rbp-0x8]
;     add    DWORD PTR [rbp-0x4],eax
;     mov    edx,DWORD PTR [rbp-0x8]
;     mov    eax,0x0
;     sub    eax,edx
;     add    eax,eax
;     mov    DWORD PTR [rbp-0x8],eax
;     add    ebx,0x1
;     jmp    for <main+0x24>
; exit_for:
    mov    DWORD [sum],0x6f
    sub    DWORD [sum], 0x6f
    mov    esi,0x5
    mov    edi,0xfffffffe
    call   pow
    lea    eax,[eax-0x1]
    ; mov    eax,edx
    ; shl    eax,0x2 edx*4
    ; add    eax,edx *5
    ; add    eax,eax *10
    ; lea    ecx,[rax+rdx*1] *11
    mov edx, 0xffffffff
    xor ecx, ecx
    test eax, eax
    ;jg gr_e
    ;sub ecx, eax
    ;mov eax, ecx
    ;xor ecx, ecx
    gr_e:
    xor ebx, ebx
    lea esi, [-2-1]
    idiv esi
    mov ebx, eax
    mov eax, 1
    int 80h
;     mov    edx,0x55555556
;     mov    eax,ecx
;     imul   edx
;     mov    eax,ecx
;     sar    eax,0x1f
;     sub    eax,edx
;     mov    DWORD [rbp-0x14],eax

; ; mov    eax,DWORD PTR [rbp-0x4] ;temp
; mov    eax,DWORD [rbp-0x14]

ret;;;;




pow:
;push   rbp
;    mov    rbp,rsp
    mov    DWORD [x],edi
    mov    DWORD [i],esi
    mov    DWORD [result],0x1
while:
    mov    eax,DWORD [i]
    lea    edx,[eax-0x1]
    mov    DWORD [i],edx
    test   eax,eax
    ;setne  al
    ;test   al,al
    je     exit_while
    mov    eax,DWORD [result]
    imul   eax,DWORD [x]
    mov    DWORD [result],eax
    ;dec DWORD[i];
    jmp while;
exit_while:
    mov    eax, [result]
;    pop    rbp
    ret    


; mov    DWORD PTR [n],0x5
;     mov    DWORD PTR [rbp-0x4],0x0
;     mov    DWORD PTR [rbp-0x8],0xb
;     mov    ebx,0x0
;     118b:	mov    eax,ebx
;     cmp    eax,0x4
;     ja     11ae <main+0x47>
;     mov    eax,DWORD PTR [rbp-0x8]
;     add    DWORD PTR [rbp-0x4],eax
;     mov    edx,DWORD PTR [rbp-0x8]
;     mov    eax,0x0
;     sub    eax,edx
;     add    eax,eax
;     mov    DWORD PTR [rbp-0x8],eax
;     add    ebx,0x1
;     jmp    118b <main+0x24>
;     11ae:	mov    DWORD PTR [rbp-0x14],0x6f
;     sub    DWORD PTR [rbp-0x14],0x6f
;     mov    esi,0x5
;     mov    edi,0xfffffffe
;     call   11ff <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_>
;     movapd xmm1,xmm0
;     movsd  xmm0,QWORD PTR [rip+0xe34]        # 2008 <_IO_stdin_used+0x8>
     
;     subsd  xmm1,xmm0
;     movsd  xmm0,QWORD PTR [rip+0xe30]        # 2010 <_IO_stdin_used+0x10>
     
;     mulsd  xmm0,xmm1
;     movsd  xmm1,QWORD PTR [rip+0xe2c]        # 2018 <_IO_stdin_used+0x18>
     
;     divsd  xmm0,xmm1
;     cvttsd2si eax,xmm0
;     mov    DWORD PTR [rbp-0x14],eax
;     mov    eax,DWORD PTR [rbp-0x4]
;     sub    eax,DWORD PTR [rbp-0x14]

; mov    ebx, DWORD 0x0
; for:
;     cmp    ebx,DWORD 0x3
;     jg     exit
;     mov    eax,0x7
;     sub    eax, ebx
;     ;mov    edx, [n]
;     mov    esi,[n]
;     mov    ecx,eax
;     shr    esi,cl
;     ;mov    eax,  ebx
;     mov    edx, [n]
;     mov    ecx,ebx
;     shr    edx,cl
;     mov    eax,edx
;     xor    eax,esi
;     and    eax,0x1
;       test   eax,eax
;       je     if
;       mov   BYTE [if_palindrom],0x0
; if:
;   add    ebx,0x1
;   jmp    for

; exit:
; mov eax, 1;
; movzx ebx, BYTE[if_palindrom]
; int 80h;
