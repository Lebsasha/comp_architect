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
  


push   rbp
;    1126:	48 89 e5             	mov    rbp,rsp
    1129:	89 7d fc             	mov    DWORD [result],edi
    112c:	                    	cmp    DWORD [result],0x1
    1130:	74 49                	je     117b
    1132:	8b 4d fc             	mov    ecx,DWORD [result]
    1135:	ba 67 66 66 66       	mov    edx,0x66666667
    113a:	89 c8                	mov    eax,ecx
    113c:	f7 ea                	imul   edx
    113e:	d1 fa                	sar    edx,1
    1140:	89 c8                	mov    eax,ecx
    1142:	c1 f8 1f             	sar    eax,0x1f
    1145:	29 c2                	sub    edx,eax
    1147:	89 d0                	mov    eax,edx
    1149:	89 c2                	mov    edx,eax
    114b:	c1 e2 02             	shl    edx,0x2
    114e:	01 c2                	add    edx,eax
    1150:	89 c8                	mov    eax,ecx
    1152:	29 d0                	sub    eax,edx
    1154:	85 c0                	test   eax,eax
    1156:	75 1c                	jne    1174
    1158:	8b 4d fc             	mov    ecx,DWORD [result]
    115b:	ba 67 66 66 66       	mov    edx,0x66666667
    1160:	89 c8                	mov    eax,ecx
    1162:	f7 ea                	imul   edx
    1164:	d1 fa                	sar    edx,1
    1166:	89 c8                	mov    eax,ecx
    1168:	c1 f8 1f             	sar    eax,0x1f
    116b:	29 c2                	sub    edx,eax
    116d:	89 d0                	mov    eax,edx
    116f:	89 45 fc             	mov    DWORD [result],eax
    1172:	eb b8                	jmp    112c
    1174:	                       	mov    eax,0x0
    1179:	eb 05                	jmp    1180
    117b:	                    	mov    eax,0x1
    1180:	                     	pop    rbp
    1181:	c3                   	ret    

; 0000000000001182 <main>:
    ; 1182:	55                   	push   rbp
    ; 1183:	48 89 e5             	mov    rbp,rsp
    ; 1186:	48 83 ec 30          	sub    rsp,0x30
    ; 118a:	c7 45 d0 01 00 00 00 	mov    DWORD [rbp-0x30],0x1
    ; 1191:	c7 45 d4 02 00 00 00 	mov    DWORD [rbp-0x2c],0x2
    ; 1198:	c7 45 d8 03 00 00 00 	mov    DWORD [rbp-0x28],0x3
    ; 119f:	c7 45 dc 04 00 00 00 	mov    DWORD [rbp-0x24],0x4
    ; 11a6:	c7 45 e0 05 00 00 00 	mov    DWORD [rbp-0x20],0x5
    11ad:	c7 45 fc 00 00 00 00 	mov    DWORD [result],0x0
    11b4:	48 8d 45 d0          	lea    eax,[rbp-0x30]
    11b8:	48 89 45 f0          	mov    DWORD [p],eax

    11bc:                           lea    eax,[rbp-0x30]
    11c0:	48 83 c0 14          	add    eax,0x14
    11c4:	48 39 45 f0          	cmp    DWORD [p],eax ;cmp
    11c8:	73 21                	jae    11eb
    ; 11ca:	48 8b 45 f0          	mov    eax,DWORD [p]
    11ce:	8b 00                	mov    eax,DWORD [p]
    11d0:	89 c7                	mov    edi,eax
    11d2:	e8 4e ff ff ff       	call   1125
    11d7:	84 c0                	test   al,al
    11d9:	74 09                	je     11e4
    ; 11db:	48 8b 45 f0          	mov    eax,DWORD [p]
    11df:	8b 00                	mov    eax,DWORD [p]
    11e1:	01 45 fc             	add    DWORD [result],eax
    11e4:	                    	add    DWORD [p],0x4
    11e9:	eb d1                	jmp    11bc
    11eb:	                     	mov    eax,DWORD [result]









; ; 0000000000001157 <main>:
;     ; push   rbp
;     ; mov    rbp,rsp
;     ; sub    rsp,0x20
;     mov    DWORD [n],0x5
; ;     mov    DWORD [result],0x0
; ;     mov    DWORD [rbp-0x8],0xb
; ;     mov    ebx,0x0
; ; for:
; ;     mov    eax,ebx
; ;     cmp    eax,0x4    ;n-1
; ;     ja     exit_for
; ;     mov    eax, DWORD [rbp-0x8]
; ;     add    DWORD [result],eax
; ;     mov    edx,DWORD [rbp-0x8]
; ;     mov    eax,0x0
; ;     sub    eax,edx
; ;     add    eax,eax
; ;     mov    DWORD [rbp-0x8],eax
; ;     add    ebx,0x1
; ;     jmp    for <main+0x24>
; ; exit_for:
;     mov    DWORD [sum],0x6f
;     sub    DWORD [sum], 0x6f
;     mov    esi,0x5
;     mov    edi,0xfffffffe
;     call   pow
;     lea    eax,[eax-0x1]
;     ; mov    eax,edx
;     ; shl    eax,0x2 edx*4
;     ; add    eax,edx *5
;     ; add    eax,eax *10
;     ; lea    ecx,[eax+rdx*1] *11
;     mov ebx, 1
;     mul ebx;
;     lea esi, [2+1]
;     idiv esi;
;     sub ecx, eax
;     mov eax, ecx
; ;     mov    edx,0x55555556
; ;     mov    eax,ecx
; ;     imul   edx
; ;     mov    eax,ecx
; ;     sar    eax,0x1f
; ;     sub    eax,edx
; ;     mov    DWORD [rbp-0x14],eax

; ; ; mov    eax,DWORD [result] ;temp
; ; mov    eax,DWORD [rbp-0x14]

; ret;;;;




; pow:
; ;push   rbp
; ;    mov    rbp,rsp
;     mov    DWORD [x],edi
;     mov    DWORD [i],esi
;     mov    DWORD [result],0x1
; while:
;     mov    eax,DWORD [i]
;     lea    edx,[eax-0x1]
;     mov    DWORD [i],edx
;     test   eax,eax
;     ;setne  al
;     ;test   al,al
;     je     exit_while
;     mov    eax,DWORD [result]
;     imul   eax,DWORD [x]
;     mov    DWORD [result],eax
;     ;dec DWORD[i];
;     jmp while;
; exit_while:
;     mov    eax, [result]
; ;    pop    rbp
;     ret    


; mov    DWORD [n],0x5
;     mov    DWORD [result],0x0
;     mov    DWORD [rbp-0x8],0xb
;     mov    ebx,0x0
;     118b:	mov    eax,ebx
;     cmp    eax,0x4
;     ja     11ae <main+0x47>
;     mov    eax,DWORD [rbp-0x8]
;     add    DWORD [result],eax
;     mov    edx,DWORD [rbp-0x8]
;     mov    eax,0x0
;     sub    eax,edx
;     add    eax,eax
;     mov    DWORD [rbp-0x8],eax
;     add    ebx,0x1
;     jmp    118b <main+0x24>
;     11ae:	mov    DWORD [rbp-0x14],0x6f
;     sub    DWORD [rbp-0x14],0x6f
;     mov    esi,0x5
;     mov    edi,0xfffffffe
;     call   11ff <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_>
;     movapd xmm1,xmm0
;     movsd  xmm0,DWORD [rip+0xe34]        # 2008 <_IO_stdin_used+0x8>
     
;     subsd  xmm1,xmm0
;     movsd  xmm0,DWORD [rip+0xe30]        # 2010 <_IO_stdin_used+0x10>
     
;     mulsd  xmm0,xmm1
;     movsd  xmm1,DWORD [rip+0xe2c]        # 2018 <_IO_stdin_used+0x18>
     
;     divsd  xmm0,xmm1
;     cvttsd2si eax,xmm0
;     mov    DWORD [rbp-0x14],eax
;     mov    eax,DWORD [result]
;     sub    eax,DWORD [rbp-0x14]

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
