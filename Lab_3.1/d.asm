
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
    104f:	4c 8d 05 ea 01 00 00 	lea    r8,[rip+0x1ea]        # 1240 <__libc_csu_fini>
    1056:	48 8d 0d 83 01 00 00 	lea    rcx,[rip+0x183]        # 11e0 <__libc_csu_init>
    105d:	48 8d 3d f3 00 00 00 	lea    rdi,[rip+0xf3]        # 1157 <main>
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

0000000000001125 <_Z3powii>:
    1125:	55                   	push   rbp
    1126:	48 89 e5             	mov    rbp,rsp
    1129:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    112c:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
    112f:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
    1136:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    1139:	8d 50 ff             	lea    edx,[rax-0x1]
    113c:	89 55 e8             	mov    DWORD PTR [rbp-0x18],edx
    113f:	85 c0                	test   eax,eax
    1141:	0f 95 c0             	setne  al
    1144:	84 c0                	test   al,al
    1146:	74 0a                	je     1152 <_Z3powii+0x2d>
    1148:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    114b:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
    114f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    1152:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1155:	5d                   	pop    rbp
    1156:	c3                   	ret    

0000000000001157 <main>:
    1157:	55                   	push   rbp
    1158:	48 89 e5             	mov    rbp,rsp
    115b:	48 83 ec 20          	sub    rsp,0x20
    115f:	c7 45 f0 05 00 00 00 	mov    DWORD PTR [rbp-0x10],0x5
    1166:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    116d:	c7 45 f8 0b 00 00 00 	mov    DWORD PTR [rbp-0x8],0xb
    1174:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    117b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    117e:	83 f8 04             	cmp    eax,0x4
    1181:	77 1b                	ja     119e <main+0x47>
    1183:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1186:	01 45 fc             	add    DWORD PTR [rbp-0x4],eax
    1189:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    118c:	b8 00 00 00 00       	mov    eax,0x0
    1191:	29 d0                	sub    eax,edx
    1193:	01 c0                	add    eax,eax
    1195:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    1198:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    119c:	eb dd                	jmp    117b <main+0x24>
    119e:	c7 45 ec 6f 00 00 00 	mov    DWORD PTR [rbp-0x14],0x6f
    11a5:	83 6d ec 6f          	sub    DWORD PTR [rbp-0x14],0x6f
    11a9:	be 05 00 00 00       	mov    esi,0x5
    11ae:	bf fe ff ff ff       	mov    edi,0xfffffffe
    11b3:	e8 6d ff ff ff       	call   1125 <_Z3powii>
    11b8:	8d 48 ff             	lea    ecx,[rax-0x1]
    11bb:	ba 56 55 55 55       	mov    edx,0x55555556
    11c0:	89 c8                	mov    eax,ecx
    11c2:	f7 ea                	imul   edx
    11c4:	89 c8                	mov    eax,ecx
    11c6:	c1 f8 1f             	sar    eax,0x1f
    11c9:	29 d0                	sub    eax,edx
    11cb:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
    11ce:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11d1:	2b 45 ec             	sub    eax,DWORD PTR [rbp-0x14]
    11d4:	c9                   	leave  
    11d5:	c3                   	ret    
    11d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    11dd:	00 00 00 

00000000000011e0 <__libc_csu_init>:
    11e0:	41 57                	push   r15
    11e2:	49 89 d7             	mov    r15,rdx
    11e5:	41 56                	push   r14
    11e7:	49 89 f6             	mov    r14,rsi
    11ea:	41 55                	push   r13
    11ec:	41 89 fd             	mov    r13d,edi
    11ef:	41 54                	push   r12
    11f1:	4c 8d 25 f0 2b 00 00 	lea    r12,[rip+0x2bf0]        # 3de8 <__frame_dummy_init_array_entry>
    11f8:	55                   	push   rbp
    11f9:	48 8d 2d f0 2b 00 00 	lea    rbp,[rip+0x2bf0]        # 3df0 <__init_array_end>
    1200:	53                   	push   rbx
    1201:	4c 29 e5             	sub    rbp,r12
    1204:	48 83 ec 08          	sub    rsp,0x8
    1208:	e8 f3 fd ff ff       	call   1000 <_init>
    120d:	48 c1 fd 03          	sar    rbp,0x3
    1211:	74 1b                	je     122e <__libc_csu_init+0x4e>
    1213:	31 db                	xor    ebx,ebx
    1215:	0f 1f 00             	nop    DWORD PTR [rax]
    1218:	4c 89 fa             	mov    rdx,r15
    121b:	4c 89 f6             	mov    rsi,r14
    121e:	44 89 ef             	mov    edi,r13d
    1221:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1225:	48 83 c3 01          	add    rbx,0x1
    1229:	48 39 dd             	cmp    rbp,rbx
    122c:	75 ea                	jne    1218 <__libc_csu_init+0x38>
    122e:	48 83 c4 08          	add    rsp,0x8
    1232:	5b                   	pop    rbx
    1233:	5d                   	pop    rbp
    1234:	41 5c                	pop    r12
    1236:	41 5d                	pop    r13
    1238:	41 5e                	pop    r14
    123a:	41 5f                	pop    r15
    123c:	c3                   	ret    
    123d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001240 <__libc_csu_fini>:
    1240:	c3                   	ret    

Disassembly of section .fini:

0000000000001244 <_fini>:
    1244:	48 83 ec 08          	sub    rsp,0x8
    1248:	48 83 c4 08          	add    rsp,0x8
    124c:	c3                   	ret    
