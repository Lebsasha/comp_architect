
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
    104f:	4c 8d 05 da 01 00 00 	lea    r8,[rip+0x1da]        # 1230 <__libc_csu_fini>
    1056:	48 8d 0d 73 01 00 00 	lea    rcx,[rip+0x173]        # 11d0 <__libc_csu_init>
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
    1129:	c7 45 b0 03 00 00 00 	mov    DWORD PTR [rbp-0x50],0x3
    1130:	c7 45 b4 04 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x4
    1137:	c7 45 b8 05 00 00 00 	mov    DWORD PTR [rbp-0x48],0x5
    113e:	c7 45 bc 01 00 00 00 	mov    DWORD PTR [rbp-0x44],0x1
    1145:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    1149:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    114d:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    1151:	48 83 c0 10          	add    rax,0x10
    1155:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1159:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
    115c:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    115f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1163:	48 3b 45 e0          	cmp    rax,QWORD PTR [rbp-0x20]
    1167:	74 59                	je     11c2 <main+0x9d>
    1169:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    116d:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1171:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1175:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1179:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    117d:	48 83 c0 10          	add    rax,0x10
    1181:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1185:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1189:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
    118d:	74 23                	je     11b2 <main+0x8d>
    118f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1193:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1197:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    119b:	8b 00                	mov    eax,DWORD PTR [rax]
    119d:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    11a0:	7e 09                	jle    11ab <main+0x86>
    11a2:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    11a6:	8b 00                	mov    eax,DWORD PTR [rax]
    11a8:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    11ab:	48 83 45 e8 04       	add    QWORD PTR [rbp-0x18],0x4
    11b0:	eb d3                	jmp    1185 <main+0x60>
    11b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11b6:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    11b9:	89 10                	mov    DWORD PTR [rax],edx
    11bb:	48 83 45 f8 04       	add    QWORD PTR [rbp-0x8],0x4
    11c0:	eb 9d                	jmp    115f <main+0x3a>
    11c2:	b8 00 00 00 00       	mov    eax,0x0
    11c7:	5d                   	pop    rbp
    11c8:	c3                   	ret    
    11c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011d0 <__libc_csu_init>:
    11d0:	41 57                	push   r15
    11d2:	49 89 d7             	mov    r15,rdx
    11d5:	41 56                	push   r14
    11d7:	49 89 f6             	mov    r14,rsi
    11da:	41 55                	push   r13
    11dc:	41 89 fd             	mov    r13d,edi
    11df:	41 54                	push   r12
    11e1:	4c 8d 25 00 2c 00 00 	lea    r12,[rip+0x2c00]        # 3de8 <__frame_dummy_init_array_entry>
    11e8:	55                   	push   rbp
    11e9:	48 8d 2d 00 2c 00 00 	lea    rbp,[rip+0x2c00]        # 3df0 <__init_array_end>
    11f0:	53                   	push   rbx
    11f1:	4c 29 e5             	sub    rbp,r12
    11f4:	48 83 ec 08          	sub    rsp,0x8
    11f8:	e8 03 fe ff ff       	call   1000 <_init>
    11fd:	48 c1 fd 03          	sar    rbp,0x3
    1201:	74 1b                	je     121e <__libc_csu_init+0x4e>
    1203:	31 db                	xor    ebx,ebx
    1205:	0f 1f 00             	nop    DWORD PTR [rax]
    1208:	4c 89 fa             	mov    rdx,r15
    120b:	4c 89 f6             	mov    rsi,r14
    120e:	44 89 ef             	mov    edi,r13d
    1211:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1215:	48 83 c3 01          	add    rbx,0x1
    1219:	48 39 dd             	cmp    rbp,rbx
    121c:	75 ea                	jne    1208 <__libc_csu_init+0x38>
    121e:	48 83 c4 08          	add    rsp,0x8
    1222:	5b                   	pop    rbx
    1223:	5d                   	pop    rbp
    1224:	41 5c                	pop    r12
    1226:	41 5d                	pop    r13
    1228:	41 5e                	pop    r14
    122a:	41 5f                	pop    r15
    122c:	c3                   	ret    
    122d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001230 <__libc_csu_fini>:
    1230:	c3                   	ret    

Disassembly of section .fini:

0000000000001234 <_fini>:
    1234:	48 83 ec 08          	sub    rsp,0x8
    1238:	48 83 c4 08          	add    rsp,0x8
    123c:	c3                   	ret    
