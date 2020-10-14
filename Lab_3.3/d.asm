
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
    104f:	4c 8d 05 4a 02 00 00 	lea    r8,[rip+0x24a]        # 12a0 <__libc_csu_fini>
    1056:	48 8d 0d e3 01 00 00 	lea    rcx,[rip+0x1e3]        # 1240 <__libc_csu_init>
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
    1129:	c7 45 c0 01 00 00 00 	mov    DWORD PTR [rbp-0x40],0x1
    1130:	c7 45 c4 02 00 00 00 	mov    DWORD PTR [rbp-0x3c],0x2
    1137:	c7 45 c8 03 00 00 00 	mov    DWORD PTR [rbp-0x38],0x3
    113e:	c7 45 cc 04 00 00 00 	mov    DWORD PTR [rbp-0x34],0x4
    1145:	c7 45 d0 05 00 00 00 	mov    DWORD PTR [rbp-0x30],0x5
    114c:	c7 45 d4 06 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x6
    1153:	c7 45 d8 07 00 00 00 	mov    DWORD PTR [rbp-0x28],0x7
    115a:	c7 45 dc 08 00 00 00 	mov    DWORD PTR [rbp-0x24],0x8
    1161:	c7 45 e0 08 00 00 00 	mov    DWORD PTR [rbp-0x20],0x8
    1168:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0
    116f:	00 
    1170:	48 c7 45 98 00 00 00 	mov    QWORD PTR [rbp-0x68],0x0
    1177:	00 
    1178:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
    117f:	00 
    1180:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
    1187:	00 
    1188:	c7 45 b0 00 00 00 00 	mov    DWORD PTR [rbp-0x50],0x0
    118f:	c7 45 f0 03 00 00 00 	mov    DWORD PTR [rbp-0x10],0x3
    1196:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    119d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11a0:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
    11a3:	0f 8d 88 00 00 00    	jge    1231 <main+0x10c>
    11a9:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    11b0:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11b3:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
    11b6:	7d 70                	jge    1228 <main+0x103>
    11b8:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    11bf:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11c2:	3b 45 f0             	cmp    eax,DWORD PTR [rbp-0x10]
    11c5:	7d 5b                	jge    1222 <main+0xfd>
    11c7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11ca:	0f af 45 f0          	imul   eax,DWORD PTR [rbp-0x10]
    11ce:	89 c2                	mov    edx,eax
    11d0:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11d3:	01 d0                	add    eax,edx
    11d5:	48 98                	cdqe   
    11d7:	8b 4c 85 90          	mov    ecx,DWORD PTR [rbp+rax*4-0x70]
    11db:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11de:	0f af 45 f0          	imul   eax,DWORD PTR [rbp-0x10]
    11e2:	89 c2                	mov    edx,eax
    11e4:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11e7:	01 d0                	add    eax,edx
    11e9:	48 98                	cdqe   
    11eb:	8b 54 85 c0          	mov    edx,DWORD PTR [rbp+rax*4-0x40]
    11ef:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11f2:	0f af 45 f0          	imul   eax,DWORD PTR [rbp-0x10]
    11f6:	89 c6                	mov    esi,eax
    11f8:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11fb:	01 f0                	add    eax,esi
    11fd:	48 98                	cdqe   
    11ff:	8b 44 85 c0          	mov    eax,DWORD PTR [rbp+rax*4-0x40]
    1203:	0f af d0             	imul   edx,eax
    1206:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1209:	0f af 45 f0          	imul   eax,DWORD PTR [rbp-0x10]
    120d:	89 c6                	mov    esi,eax
    120f:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1212:	01 f0                	add    eax,esi
    1214:	01 ca                	add    edx,ecx
    1216:	48 98                	cdqe   
    1218:	89 54 85 90          	mov    DWORD PTR [rbp+rax*4-0x70],edx
    121c:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    1220:	eb 9d                	jmp    11bf <main+0x9a>
    1222:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    1226:	eb 88                	jmp    11b0 <main+0x8b>
    1228:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    122c:	e9 6c ff ff ff       	jmp    119d <main+0x78>
    1231:	c7 45 ec ff ff 00 00 	mov    DWORD PTR [rbp-0x14],0xffff
    1238:	b8 00 00 00 00       	mov    eax,0x0
    123d:	5d                   	pop    rbp
    123e:	c3                   	ret    
    123f:	90                   	nop

0000000000001240 <__libc_csu_init>:
    1240:	41 57                	push   r15
    1242:	49 89 d7             	mov    r15,rdx
    1245:	41 56                	push   r14
    1247:	49 89 f6             	mov    r14,rsi
    124a:	41 55                	push   r13
    124c:	41 89 fd             	mov    r13d,edi
    124f:	41 54                	push   r12
    1251:	4c 8d 25 90 2b 00 00 	lea    r12,[rip+0x2b90]        # 3de8 <__frame_dummy_init_array_entry>
    1258:	55                   	push   rbp
    1259:	48 8d 2d 90 2b 00 00 	lea    rbp,[rip+0x2b90]        # 3df0 <__init_array_end>
    1260:	53                   	push   rbx
    1261:	4c 29 e5             	sub    rbp,r12
    1264:	48 83 ec 08          	sub    rsp,0x8
    1268:	e8 93 fd ff ff       	call   1000 <_init>
    126d:	48 c1 fd 03          	sar    rbp,0x3
    1271:	74 1b                	je     128e <__libc_csu_init+0x4e>
    1273:	31 db                	xor    ebx,ebx
    1275:	0f 1f 00             	nop    DWORD PTR [rax]
    1278:	4c 89 fa             	mov    rdx,r15
    127b:	4c 89 f6             	mov    rsi,r14
    127e:	44 89 ef             	mov    edi,r13d
    1281:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1285:	48 83 c3 01          	add    rbx,0x1
    1289:	48 39 dd             	cmp    rbp,rbx
    128c:	75 ea                	jne    1278 <__libc_csu_init+0x38>
    128e:	48 83 c4 08          	add    rsp,0x8
    1292:	5b                   	pop    rbx
    1293:	5d                   	pop    rbp
    1294:	41 5c                	pop    r12
    1296:	41 5d                	pop    r13
    1298:	41 5e                	pop    r14
    129a:	41 5f                	pop    r15
    129c:	c3                   	ret    
    129d:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000012a0 <__libc_csu_fini>:
    12a0:	c3                   	ret    

Disassembly of section .fini:

00000000000012a4 <_fini>:
    12a4:	48 83 ec 08          	sub    rsp,0x8
    12a8:	48 83 c4 08          	add    rsp,0x8
    12ac:	c3                   	ret    
