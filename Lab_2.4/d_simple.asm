
./a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    rsp,0x8
    1004:	48 8b 05 dd 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fdd]        # 3fe8 <__gmon_start__>
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

0000000000001030 <__cxa_atexit@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <__cxa_atexit@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

0000000000001040 <_ZNSt8ios_base4InitC1Ev@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <_ZNSolsEi@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <_ZNSolsEi@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <_ZNSolsEb@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <_ZNSolsEb@GLIBCXX_3.4>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 5a 2f 00 00    	jmp    QWORD PTR [rip+0x2f5a]        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1076:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	31 ed                	xor    ebp,ebp
    1082:	49 89 d1             	mov    r9,rdx
    1085:	5e                   	pop    rsi
    1086:	48 89 e2             	mov    rdx,rsp
    1089:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    108d:	50                   	push   rax
    108e:	54                   	push   rsp
    108f:	4c 8d 05 3a 02 00 00 	lea    r8,[rip+0x23a]        # 12d0 <__libc_csu_fini>
    1096:	48 8d 0d d3 01 00 00 	lea    rcx,[rip+0x1d3]        # 1270 <__libc_csu_init>
    109d:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1165 <main>
    10a4:	ff 15 36 2f 00 00    	call   QWORD PTR [rip+0x2f36]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10aa:	f4                   	hlt    
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 91 2f 00 00 	lea    rdi,[rip+0x2f91]        # 4048 <__TMC_END__>
    10b7:	48 8d 05 8a 2f 00 00 	lea    rax,[rip+0x2f8a]        # 4048 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f0e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 61 2f 00 00 	lea    rdi,[rip+0x2f61]        # 4048 <__TMC_END__>
    10e7:	48 8d 35 5a 2f 00 00 	lea    rsi,[rip+0x2f5a]        # 4048 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 c1 fe 03          	sar    rsi,0x3
    10f5:	48 89 f0             	mov    rax,rsi
    10f8:	48 c1 e8 3f          	shr    rax,0x3f
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee5]        # 3ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <__do_global_dtors_aux>:
    1120:	80 3d 49 30 00 00 00 	cmp    BYTE PTR [rip+0x3049],0x0        # 4170 <completed.7325>
    1127:	75 2f                	jne    1158 <__do_global_dtors_aux+0x38>
    1129:	55                   	push   rbp
    112a:	48 83 3d 9e 2e 00 00 	cmp    QWORD PTR [rip+0x2e9e],0x0        # 3fd0 <__cxa_finalize@GLIBC_2.2.5>
    1131:	00 
    1132:	48 89 e5             	mov    rbp,rsp
    1135:	74 0c                	je     1143 <__do_global_dtors_aux+0x23>
    1137:	48 8b 3d 02 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f02]        # 4040 <__dso_handle>
    113e:	e8 2d ff ff ff       	call   1070 <__cxa_finalize@plt>
    1143:	e8 68 ff ff ff       	call   10b0 <deregister_tm_clones>
    1148:	c6 05 21 30 00 00 01 	mov    BYTE PTR [rip+0x3021],0x1        # 4170 <completed.7325>
    114f:	5d                   	pop    rbp
    1150:	c3                   	ret    
    1151:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <frame_dummy>:
    1160:	e9 7b ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001165 <main>:
    1165:	55                   	push   rbp
    1166:	48 89 e5             	mov    rbp,rsp
    1169:	48 83 ec 10          	sub    rsp,0x10
    116d:	c6 45 f7 db          	mov    BYTE PTR [rbp-0x9],0xdb
    1171:	c6 45 ff 01          	mov    BYTE PTR [rbp-0x1],0x1
    1175:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    117c:	83 7d f8 03          	cmp    DWORD PTR [rbp-0x8],0x3
    1180:	7f 72                	jg     11f4 <main+0x8f>
    1182:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
    1186:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1189:	89 c1                	mov    ecx,eax
    118b:	d3 e2                	shl    edx,cl
    118d:	89 d0                	mov    eax,edx
    118f:	c1 f8 1f             	sar    eax,0x1f
    1192:	c1 e8 1f             	shr    eax,0x1f
    1195:	01 c2                	add    edx,eax
    1197:	83 e2 01             	and    edx,0x1
    119a:	29 c2                	sub    edx,eax
    119c:	89 d0                	mov    eax,edx
    119e:	89 c6                	mov    esi,eax
    11a0:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
    11a4:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11a7:	89 c1                	mov    ecx,eax
    11a9:	d3 fa                	sar    edx,cl
    11ab:	89 d0                	mov    eax,edx
    11ad:	c1 f8 1f             	sar    eax,0x1f
    11b0:	c1 e8 1f             	shr    eax,0x1f
    11b3:	01 c2                	add    edx,eax
    11b5:	83 e2 01             	and    edx,0x1
    11b8:	29 c2                	sub    edx,eax
    11ba:	89 d0                	mov    eax,edx
    11bc:	39 c6                	cmp    esi,eax
    11be:	74 04                	je     11c4 <main+0x5f>
    11c0:	c6 45 ff 00          	mov    BYTE PTR [rbp-0x1],0x0
    11c4:	0f b6 55 f7          	movzx  edx,BYTE PTR [rbp-0x9]
    11c8:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11cb:	89 c1                	mov    ecx,eax
    11cd:	d3 e2                	shl    edx,cl
    11cf:	89 d0                	mov    eax,edx
    11d1:	c1 f8 1f             	sar    eax,0x1f
    11d4:	c1 e8 1f             	shr    eax,0x1f
    11d7:	01 c2                	add    edx,eax
    11d9:	83 e2 01             	and    edx,0x1
    11dc:	29 c2                	sub    edx,eax
    11de:	89 d0                	mov    eax,edx
    11e0:	89 c6                	mov    esi,eax
    11e2:	48 8d 3d 77 2e 00 00 	lea    rdi,[rip+0x2e77]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    11e9:	e8 62 fe ff ff       	call   1050 <_ZNSolsEi@plt>
    11ee:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    11f2:	eb 88                	jmp    117c <main+0x17>
    11f4:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
    11f8:	89 c6                	mov    esi,eax
    11fa:	48 8d 3d 5f 2e 00 00 	lea    rdi,[rip+0x2e5f]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    1201:	e8 5a fe ff ff       	call   1060 <_ZNSolsEb@plt>
    1206:	0f b6 45 ff          	movzx  eax,BYTE PTR [rbp-0x1]
    120a:	c9                   	leave  
    120b:	c3                   	ret    

000000000000120c <_Z41__static_initialization_and_destruction_0ii>:
    120c:	55                   	push   rbp
    120d:	48 89 e5             	mov    rbp,rsp
    1210:	48 83 ec 10          	sub    rsp,0x10
    1214:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1217:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    121a:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    121e:	75 32                	jne    1252 <_Z41__static_initialization_and_destruction_0ii+0x46>
    1220:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    1227:	75 29                	jne    1252 <_Z41__static_initialization_and_destruction_0ii+0x46>
    1229:	48 8d 3d 41 2f 00 00 	lea    rdi,[rip+0x2f41]        # 4171 <_ZStL8__ioinit>
    1230:	e8 0b fe ff ff       	call   1040 <_ZNSt8ios_base4InitC1Ev@plt>
    1235:	48 8d 15 04 2e 00 00 	lea    rdx,[rip+0x2e04]        # 4040 <__dso_handle>
    123c:	48 8d 35 2e 2f 00 00 	lea    rsi,[rip+0x2f2e]        # 4171 <_ZStL8__ioinit>
    1243:	48 8b 05 ae 2d 00 00 	mov    rax,QWORD PTR [rip+0x2dae]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    124a:	48 89 c7             	mov    rdi,rax
    124d:	e8 de fd ff ff       	call   1030 <__cxa_atexit@plt>
    1252:	90                   	nop
    1253:	c9                   	leave  
    1254:	c3                   	ret    

0000000000001255 <_GLOBAL__sub_I_main>:
    1255:	55                   	push   rbp
    1256:	48 89 e5             	mov    rbp,rsp
    1259:	be ff ff 00 00       	mov    esi,0xffff
    125e:	bf 01 00 00 00       	mov    edi,0x1
    1263:	e8 a4 ff ff ff       	call   120c <_Z41__static_initialization_and_destruction_0ii>
    1268:	5d                   	pop    rbp
    1269:	c3                   	ret    
    126a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001270 <__libc_csu_init>:
    1270:	41 57                	push   r15
    1272:	49 89 d7             	mov    r15,rdx
    1275:	41 56                	push   r14
    1277:	49 89 f6             	mov    r14,rsi
    127a:	41 55                	push   r13
    127c:	41 89 fd             	mov    r13d,edi
    127f:	41 54                	push   r12
    1281:	4c 8d 25 20 2b 00 00 	lea    r12,[rip+0x2b20]        # 3da8 <__frame_dummy_init_array_entry>
    1288:	55                   	push   rbp
    1289:	48 8d 2d 28 2b 00 00 	lea    rbp,[rip+0x2b28]        # 3db8 <__init_array_end>
    1290:	53                   	push   rbx
    1291:	4c 29 e5             	sub    rbp,r12
    1294:	48 83 ec 08          	sub    rsp,0x8
    1298:	e8 63 fd ff ff       	call   1000 <_init>
    129d:	48 c1 fd 03          	sar    rbp,0x3
    12a1:	74 1b                	je     12be <__libc_csu_init+0x4e>
    12a3:	31 db                	xor    ebx,ebx
    12a5:	0f 1f 00             	nop    DWORD PTR [rax]
    12a8:	4c 89 fa             	mov    rdx,r15
    12ab:	4c 89 f6             	mov    rsi,r14
    12ae:	44 89 ef             	mov    edi,r13d
    12b1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    12b5:	48 83 c3 01          	add    rbx,0x1
    12b9:	48 39 dd             	cmp    rbp,rbx
    12bc:	75 ea                	jne    12a8 <__libc_csu_init+0x38>
    12be:	48 83 c4 08          	add    rsp,0x8
    12c2:	5b                   	pop    rbx
    12c3:	5d                   	pop    rbp
    12c4:	41 5c                	pop    r12
    12c6:	41 5d                	pop    r13
    12c8:	41 5e                	pop    r14
    12ca:	41 5f                	pop    r15
    12cc:	c3                   	ret    
    12cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000012d0 <__libc_csu_fini>:
    12d0:	c3                   	ret    

Disassembly of section .fini:

00000000000012d4 <_fini>:
    12d4:	48 83 ec 08          	sub    rsp,0x8
    12d8:	48 83 c4 08          	add    rsp,0x8
    12dc:	c3                   	ret    
