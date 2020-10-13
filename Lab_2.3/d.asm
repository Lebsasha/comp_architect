
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

0000000000001030 <pow@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <pow@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 92 2f 00 00    	jmp    QWORD PTR [rip+0x2f92]        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	31 ed                	xor    ebp,ebp
    1052:	49 89 d1             	mov    r9,rdx
    1055:	5e                   	pop    rsi
    1056:	48 89 e2             	mov    rdx,rsp
    1059:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    105d:	50                   	push   rax
    105e:	54                   	push   rsp
    105f:	4c 8d 05 5a 02 00 00 	lea    r8,[rip+0x25a]        # 12c0 <__libc_csu_fini>
    1066:	48 8d 0d f3 01 00 00 	lea    rcx,[rip+0x1f3]        # 1260 <__libc_csu_init>
    106d:	48 8d 3d f3 00 00 00 	lea    rdi,[rip+0xf3]        # 1167 <main>
    1074:	ff 15 6e 2f 00 00    	call   QWORD PTR [rip+0x2f6e]        # 3fe8 <__libc_start_main@GLIBC_2.2.5>
    107a:	f4                   	hlt    
    107b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d a9 2f 00 00 	lea    rdi,[rip+0x2fa9]        # 4030 <__TMC_END__>
    1087:	48 8d 05 a2 2f 00 00 	lea    rax,[rip+0x2fa2]        # 4030 <__TMC_END__>
    108e:	48 39 f8             	cmp    rax,rdi
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 46 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f46]        # 3fe0 <_ITM_deregisterTMCloneTable>
    109a:	48 85 c0             	test   rax,rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    rax
    10a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 79 2f 00 00 	lea    rdi,[rip+0x2f79]        # 4030 <__TMC_END__>
    10b7:	48 8d 35 72 2f 00 00 	lea    rsi,[rip+0x2f72]        # 4030 <__TMC_END__>
    10be:	48 29 fe             	sub    rsi,rdi
    10c1:	48 c1 fe 03          	sar    rsi,0x3
    10c5:	48 89 f0             	mov    rax,rsi
    10c8:	48 c1 e8 3f          	shr    rax,0x3f
    10cc:	48 01 c6             	add    rsi,rax
    10cf:	48 d1 fe             	sar    rsi,1
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 1d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f1d]        # 3ff8 <_ITM_registerTMCloneTable>
    10db:	48 85 c0             	test   rax,rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    rax
    10e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	80 3d 39 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f39],0x0        # 4030 <__TMC_END__>
    10f7:	75 2f                	jne    1128 <__do_global_dtors_aux+0x38>
    10f9:	55                   	push   rbp
    10fa:	48 83 3d d6 2e 00 00 	cmp    QWORD PTR [rip+0x2ed6],0x0        # 3fd8 <__cxa_finalize@GLIBC_2.2.5>
    1101:	00 
    1102:	48 89 e5             	mov    rbp,rsp
    1105:	74 0c                	je     1113 <__do_global_dtors_aux+0x23>
    1107:	48 8b 3d 1a 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f1a]        # 4028 <__dso_handle>
    110e:	e8 2d ff ff ff       	call   1040 <__cxa_finalize@plt>
    1113:	e8 68 ff ff ff       	call   1080 <deregister_tm_clones>
    1118:	c6 05 11 2f 00 00 01 	mov    BYTE PTR [rip+0x2f11],0x1        # 4030 <__TMC_END__>
    111f:	5d                   	pop    rbp
    1120:	c3                   	ret    
    1121:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1128:	c3                   	ret    
    1129:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001130 <frame_dummy>:
    1130:	e9 7b ff ff ff       	jmp    10b0 <register_tm_clones>

0000000000001135 <_Z3powii>:
    1135:	55                   	push   rbp
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
    113c:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
    113f:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
    1146:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
    1149:	8d 50 ff             	lea    edx,[rax-0x1]
    114c:	89 55 e8             	mov    DWORD PTR [rbp-0x18],edx
    114f:	85 c0                	test   eax,eax
    1151:	0f 95 c0             	setne  al
    1154:	84 c0                	test   al,al
    1156:	74 0a                	je     1162 <_Z3powii+0x2d>
    1158:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    115b:	0f af 45 ec          	imul   eax,DWORD PTR [rbp-0x14]
    115f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    1162:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1165:	5d                   	pop    rbp
    1166:	c3                   	ret    

0000000000001167 <main>:
    1167:	55                   	push   rbp
    1168:	48 89 e5             	mov    rbp,rsp
    116b:	48 83 ec 20          	sub    rsp,0x20
    116f:	c7 45 f0 05 00 00 00 	mov    DWORD PTR [rbp-0x10],0x5
    1176:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    117d:	c7 45 f8 0b 00 00 00 	mov    DWORD PTR [rbp-0x8],0xb
    1184:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    118b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    118e:	83 f8 04             	cmp    eax,0x4
    1191:	77 1b                	ja     11ae <main+0x47>
    1193:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1196:	01 45 fc             	add    DWORD PTR [rbp-0x4],eax
    1199:	8b 55 f8             	mov    edx,DWORD PTR [rbp-0x8]
    119c:	b8 00 00 00 00       	mov    eax,0x0
    11a1:	29 d0                	sub    eax,edx
    11a3:	01 c0                	add    eax,eax
    11a5:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    11a8:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    11ac:	eb dd                	jmp    118b <main+0x24>
    11ae:	c7 45 ec 6f 00 00 00 	mov    DWORD PTR [rbp-0x14],0x6f
    11b5:	83 6d ec 6f          	sub    DWORD PTR [rbp-0x14],0x6f
    11b9:	be 05 00 00 00       	mov    esi,0x5
    11be:	bf fe ff ff ff       	mov    edi,0xfffffffe
    11c3:	e8 37 00 00 00       	call   11ff <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_>
    11c8:	66 0f 28 c8          	movapd xmm1,xmm0
    11cc:	f2 0f 10 05 34 0e 00 	movsd  xmm0,QWORD PTR [rip+0xe34]        # 2008 <_IO_stdin_used+0x8>
    11d3:	00 
    11d4:	f2 0f 5c c8          	subsd  xmm1,xmm0
    11d8:	f2 0f 10 05 30 0e 00 	movsd  xmm0,QWORD PTR [rip+0xe30]        # 2010 <_IO_stdin_used+0x10>
    11df:	00 
    11e0:	f2 0f 59 c1          	mulsd  xmm0,xmm1
    11e4:	f2 0f 10 0d 2c 0e 00 	movsd  xmm1,QWORD PTR [rip+0xe2c]        # 2018 <_IO_stdin_used+0x18>
    11eb:	00 
    11ec:	f2 0f 5e c1          	divsd  xmm0,xmm1
    11f0:	f2 0f 2c c0          	cvttsd2si eax,xmm0
    11f4:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
    11f7:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11fa:	2b 45 ec             	sub    eax,DWORD PTR [rbp-0x14]
    11fd:	c9                   	leave  
    11fe:	c3                   	ret    

00000000000011ff <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_>:
    11ff:	55                   	push   rbp
    1200:	48 89 e5             	mov    rbp,rsp
    1203:	48 83 ec 10          	sub    rsp,0x10
    1207:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    120a:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    120d:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1210:	48 85 c0             	test   rax,rax
    1213:	78 07                	js     121c <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_+0x1d>
    1215:	f2 48 0f 2a c0       	cvtsi2sd xmm0,rax
    121a:	eb 15                	jmp    1231 <_ZSt3powIijEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_XsrSt12__is_integerIS2_E7__valueEE6__typeENS4_IS3_XsrS5_IS3_E7__valueEE6__typeEE6__typeES2_S3_+0x32>
    121c:	48 89 c2             	mov    rdx,rax
    121f:	48 d1 ea             	shr    rdx,1
    1222:	83 e0 01             	and    eax,0x1
    1225:	48 09 c2             	or     rdx,rax
    1228:	f2 48 0f 2a c2       	cvtsi2sd xmm0,rdx
    122d:	f2 0f 58 c0          	addsd  xmm0,xmm0
    1231:	f2 0f 2a 55 fc       	cvtsi2sd xmm2,DWORD PTR [rbp-0x4]
    1236:	66 0f 28 c8          	movapd xmm1,xmm0
    123a:	66 0f 28 c2          	movapd xmm0,xmm2
    123e:	e8 ed fd ff ff       	call   1030 <pow@plt>
    1243:	66 48 0f 7e c0       	movq   rax,xmm0
    1248:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    124c:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
    1251:	c9                   	leave  
    1252:	c3                   	ret    
    1253:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    125a:	00 00 00 
    125d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001260 <__libc_csu_init>:
    1260:	41 57                	push   r15
    1262:	49 89 d7             	mov    r15,rdx
    1265:	41 56                	push   r14
    1267:	49 89 f6             	mov    r14,rsi
    126a:	41 55                	push   r13
    126c:	41 89 fd             	mov    r13d,edi
    126f:	41 54                	push   r12
    1271:	4c 8d 25 40 2b 00 00 	lea    r12,[rip+0x2b40]        # 3db8 <__frame_dummy_init_array_entry>
    1278:	55                   	push   rbp
    1279:	48 8d 2d 40 2b 00 00 	lea    rbp,[rip+0x2b40]        # 3dc0 <__init_array_end>
    1280:	53                   	push   rbx
    1281:	4c 29 e5             	sub    rbp,r12
    1284:	48 83 ec 08          	sub    rsp,0x8
    1288:	e8 73 fd ff ff       	call   1000 <_init>
    128d:	48 c1 fd 03          	sar    rbp,0x3
    1291:	74 1b                	je     12ae <__libc_csu_init+0x4e>
    1293:	31 db                	xor    ebx,ebx
    1295:	0f 1f 00             	nop    DWORD PTR [rax]
    1298:	4c 89 fa             	mov    rdx,r15
    129b:	4c 89 f6             	mov    rsi,r14
    129e:	44 89 ef             	mov    edi,r13d
    12a1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    12a5:	48 83 c3 01          	add    rbx,0x1
    12a9:	48 39 dd             	cmp    rbp,rbx
    12ac:	75 ea                	jne    1298 <__libc_csu_init+0x38>
    12ae:	48 83 c4 08          	add    rsp,0x8
    12b2:	5b                   	pop    rbx
    12b3:	5d                   	pop    rbp
    12b4:	41 5c                	pop    r12
    12b6:	41 5d                	pop    r13
    12b8:	41 5e                	pop    r14
    12ba:	41 5f                	pop    r15
    12bc:	c3                   	ret    
    12bd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000012c0 <__libc_csu_fini>:
    12c0:	c3                   	ret    

Disassembly of section .fini:

00000000000012c4 <_fini>:
    12c4:	48 83 ec 08          	sub    rsp,0x8
    12c8:	48 83 c4 08          	add    rsp,0x8
    12cc:	c3                   	ret    
