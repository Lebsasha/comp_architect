
./a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 e5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe5]        # 3ff0 <__gmon_start__>
    100b:	48 85 c0             	test   rax,rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   rax
    1012:	48 83 c4 08          	add    rsp,0x8
    1016:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	ff 25 a2 2f 00 00    	jmp    QWORD PTR [rip+0x2fa2]        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1036:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	31 ed                	xor    ebp,ebp
    1042:	49 89 d1             	mov    r9,rdx
    1045:	5e                   	pop    rsi
    1046:	48 89 e2             	mov    rdx,rsp
    1049:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    104d:	50                   	push   rax
    104e:	54                   	push   rsp
    104f:	4c 8d 05 8a 01 00 00 	lea    r8,[rip+0x18a]        # 11e0 <__libc_csu_fini>
    1056:	48 8d 0d 23 01 00 00 	lea    rcx,[rip+0x123]        # 1180 <__libc_csu_init>
    105d:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1125 <main>
    1064:	ff 15 7e 2f 00 00    	call   QWORD PTR [rip+0x2f7e]        # 3fe8 <__libc_start_main@GLIBC_2.2.5>
    106a:	f4                   	hlt    
    106b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d b1 2f 00 00 	lea    rdi,[rip+0x2fb1]        # 4028 <__TMC_END__>
    1077:	48 8d 05 aa 2f 00 00 	lea    rax,[rip+0x2faa]        # 4028 <__TMC_END__>
    107e:	48 39 f8             	cmp    rax,rdi
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 56 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f56]        # 3fe0 <_ITM_deregisterTMCloneTable>
    108a:	48 85 c0             	test   rax,rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmp    rax
    1091:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1098:	c3                   	ret    
    1099:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 81 2f 00 00 	lea    rdi,[rip+0x2f81]        # 4028 <__TMC_END__>
    10a7:	48 8d 35 7a 2f 00 00 	lea    rsi,[rip+0x2f7a]        # 4028 <__TMC_END__>
    10ae:	48 29 fe             	sub    rsi,rdi
    10b1:	48 c1 fe 03          	sar    rsi,0x3
    10b5:	48 89 f0             	mov    rax,rsi
    10b8:	48 c1 e8 3f          	shr    rax,0x3f
    10bc:	48 01 c6             	add    rsi,rax
    10bf:	48 d1 fe             	sar    rsi,1
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 2d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f2d]        # 3ff8 <_ITM_registerTMCloneTable>
    10cb:	48 85 c0             	test   rax,rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmp    rax
    10d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	80 3d 41 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f41],0x0        # 4028 <__TMC_END__>
    10e7:	75 2f                	jne    1118 <__do_global_dtors_aux+0x38>
    10e9:	55                   	push   rbp
    10ea:	48 83 3d e6 2e 00 00 	cmp    QWORD PTR [rip+0x2ee6],0x0        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    10f1:	00 
    10f2:	48 89 e5             	mov    rbp,rsp
    10f5:	74 0c                	je     1103 <__do_global_dtors_aux+0x23>
    10f7:	48 8b 3d 22 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f22]        # 4020 <__dso_handle>
    10fe:	e8 2d ff ff ff       	call   1030 <__cxa_finalize@plt>
    1103:	e8 68 ff ff ff       	call   1070 <deregister_tm_clones>
    1108:	c6 05 19 2f 00 00 01 	mov    BYTE PTR [rip+0x2f19],0x1        # 4028 <__TMC_END__>
    110f:	5d                   	pop    rbp
    1110:	c3                   	ret    
    1111:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <frame_dummy>:
    1120:	e9 7b ff ff ff       	jmp    10a0 <register_tm_clones>

0000000000001125 <main>:
    1125:	55                   	push   rbp
    1126:	48 89 e5             	mov    rbp,rsp
    1129:	c7 45 f4 c3 04 00 00 	mov    DWORD PTR [rbp-0xc],0x4c3
    1130:	c6 45 ff 01          	mov    BYTE PTR [rbp-0x1],0x1
    1134:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    113b:	83 7d f8 03          	cmp    DWORD PTR [rbp-0x8],0x3
    113f:	7f 2b                	jg     116c <main+0x47>
    1141:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1144:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    1147:	89 d6                	mov    esi,edx
    1149:	89 c1                	mov    ecx,eax
    114b:	d3 e6                	shl    esi,cl
    114d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1150:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    1153:	89 c1                	mov    ecx,eax
    1155:	d3 ea                	shr    edx,cl
    1157:	89 d0                	mov    eax,edx
    1159:	31 f0                	xor    eax,esi
    115b:	83 e0 01             	and    eax,0x1
    115e:	85 c0                	test   eax,eax
    1160:	74 04                	je     1166 <main+0x41>
    1162:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
    1166:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    116a:	eb cf                	jmp    113b <main+0x16>
    116c:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
    1170:	5d                   	pop    rbp
    1171:	c3                   	ret    
    1172:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    1179:	00 00 00 
    117c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001180 <__libc_csu_init>:
    1180:	41 57                	push   r15
    1182:	49 89 d7             	mov    r15,rdx
    1185:	41 56                	push   r14
    1187:	49 89 f6             	mov    r14,rsi
    118a:	41 55                	push   r13
    118c:	41 89 fd             	mov    r13d,edi
    118f:	41 54                	push   r12
    1191:	4c 8d 25 50 2c 00 00 	lea    r12,[rip+0x2c50]        # 3de8 <__frame_dummy_init_array_entry>
    1198:	55                   	push   rbp
    1199:	48 8d 2d 50 2c 00 00 	lea    rbp,[rip+0x2c50]        # 3df0 <__init_array_end>
    11a0:	53                   	push   rbx
    11a1:	4c 29 e5             	sub    rbp,r12
    11a4:	48 83 ec 08          	sub    rsp,0x8
    11a8:	e8 53 fe ff ff       	call   1000 <_init>
    11ad:	48 c1 fd 03          	sar    rbp,0x3
    11b1:	74 1b                	je     11ce <__libc_csu_init+0x4e>
    11b3:	31 db                	xor    ebx,ebx
    11b5:	0f 1f 00             	nop    DWORD PTR [rax]
    11b8:	4c 89 fa             	mov    rdx,r15
    11bb:	4c 89 f6             	mov    rsi,r14
    11be:	44 89 ef             	mov    edi,r13d
    11c1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    11c5:	48 83 c3 01          	add    rbx,0x1
    11c9:	48 39 dd             	cmp    rbp,rbx
    11cc:	75 ea                	jne    11b8 <__libc_csu_init+0x38>
    11ce:	48 83 c4 08          	add    rsp,0x8
    11d2:	5b                   	pop    rbx
    11d3:	5d                   	pop    rbp
    11d4:	41 5c                	pop    r12
    11d6:	41 5d                	pop    r13
    11d8:	41 5e                	pop    r14
    11da:	41 5f                	pop    r15
    11dc:	c3                   	ret    
    11dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000011e0 <__libc_csu_fini>:
    11e0:	c3                   	ret    

Disassembly of section .fini:

00000000000011e4 <_fini>:
    11e4:	48 83 ec 08          	sub    rsp,0x8
    11e8:	48 83 c4 08          	add    rsp,0x8
    11ec:	c3                   	ret    
