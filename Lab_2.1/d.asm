
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

0000000000001030 <cos@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <cos@GLIBC_2.2.5>
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
    105f:	4c 8d 05 1a 02 00 00 	lea    r8,[rip+0x21a]        # 1280 <__libc_csu_fini>
    1066:	48 8d 0d b3 01 00 00 	lea    rcx,[rip+0x1b3]        # 1220 <__libc_csu_init>
    106d:	48 8d 3d c1 00 00 00 	lea    rdi,[rip+0xc1]        # 1135 <main>
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

0000000000001135 <main>:
    1135:	55                   	push   rbp
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	48 83 ec 50          	sub    rsp,0x50
    113d:	c7 45 b0 03 00 00 00 	mov    DWORD PTR [rbp-0x50],0x3
    1144:	c7 45 b4 04 00 00 00 	mov    DWORD PTR [rbp-0x4c],0x4
    114b:	c7 45 b8 05 00 00 00 	mov    DWORD PTR [rbp-0x48],0x5
    1152:	c7 45 bc 01 00 00 00 	mov    DWORD PTR [rbp-0x44],0x1
    1159:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    115d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    1161:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    1165:	48 83 c0 10          	add    rax,0x10
    1169:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    116d:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
    1170:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1173:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1177:	48 3b 45 e0          	cmp    rax,QWORD PTR [rbp-0x20]
    117b:	74 59                	je     11d6 <main+0xa1>
    117d:	48 8d 45 b0          	lea    rax,[rbp-0x50]
    1181:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1185:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1189:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    118d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1191:	48 83 c0 10          	add    rax,0x10
    1195:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1199:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    119d:	48 3b 45 d0          	cmp    rax,QWORD PTR [rbp-0x30]
    11a1:	74 23                	je     11c6 <main+0x91>
    11a3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    11a7:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    11ab:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    11af:	8b 00                	mov    eax,DWORD PTR [rax]
    11b1:	39 45 f4             	cmp    DWORD PTR [rbp-0xc],eax
    11b4:	7e 09                	jle    11bf <main+0x8a>
    11b6:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
    11ba:	8b 00                	mov    eax,DWORD PTR [rax]
    11bc:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    11bf:	48 83 45 e8 04       	add    QWORD PTR [rbp-0x18],0x4
    11c4:	eb d3                	jmp    1199 <main+0x64>
    11c6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    11ca:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
    11cd:	89 10                	mov    DWORD PTR [rax],edx
    11cf:	48 83 45 f8 04       	add    QWORD PTR [rbp-0x8],0x4
    11d4:	eb 9d                	jmp    1173 <main+0x3e>
    11d6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11d9:	89 c7                	mov    edi,eax
    11db:	e8 10 00 00 00       	call   11f0 <_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_>
    11e0:	66 48 0f 7e c0       	movq   rax,xmm0
    11e5:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
    11e9:	b8 00 00 00 00       	mov    eax,0x0
    11ee:	c9                   	leave  
    11ef:	c3                   	ret    

00000000000011f0 <_ZSt3cosIiEN9__gnu_cxx11__enable_ifIXsrSt12__is_integerIT_E7__valueEdE6__typeES3_>:
    11f0:	55                   	push   rbp
    11f1:	48 89 e5             	mov    rbp,rsp
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    11fb:	f2 0f 2a 45 fc       	cvtsi2sd xmm0,DWORD PTR [rbp-0x4]
    1200:	e8 2b fe ff ff       	call   1030 <cos@plt>
    1205:	66 48 0f 7e c0       	movq   rax,xmm0
    120a:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    120e:	f2 0f 10 45 f0       	movsd  xmm0,QWORD PTR [rbp-0x10]
    1213:	c9                   	leave  
    1214:	c3                   	ret    
    1215:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    121c:	00 00 00 
    121f:	90                   	nop

0000000000001220 <__libc_csu_init>:
    1220:	41 57                	push   r15
    1222:	49 89 d7             	mov    r15,rdx
    1225:	41 56                	push   r14
    1227:	49 89 f6             	mov    r14,rsi
    122a:	41 55                	push   r13
    122c:	41 89 fd             	mov    r13d,edi
    122f:	41 54                	push   r12
    1231:	4c 8d 25 80 2b 00 00 	lea    r12,[rip+0x2b80]        # 3db8 <__frame_dummy_init_array_entry>
    1238:	55                   	push   rbp
    1239:	48 8d 2d 80 2b 00 00 	lea    rbp,[rip+0x2b80]        # 3dc0 <__init_array_end>
    1240:	53                   	push   rbx
    1241:	4c 29 e5             	sub    rbp,r12
    1244:	48 83 ec 08          	sub    rsp,0x8
    1248:	e8 b3 fd ff ff       	call   1000 <_init>
    124d:	48 c1 fd 03          	sar    rbp,0x3
    1251:	74 1b                	je     126e <__libc_csu_init+0x4e>
    1253:	31 db                	xor    ebx,ebx
    1255:	0f 1f 00             	nop    DWORD PTR [rax]
    1258:	4c 89 fa             	mov    rdx,r15
    125b:	4c 89 f6             	mov    rsi,r14
    125e:	44 89 ef             	mov    edi,r13d
    1261:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1265:	48 83 c3 01          	add    rbx,0x1
    1269:	48 39 dd             	cmp    rbp,rbx
    126c:	75 ea                	jne    1258 <__libc_csu_init+0x38>
    126e:	48 83 c4 08          	add    rsp,0x8
    1272:	5b                   	pop    rbx
    1273:	5d                   	pop    rbp
    1274:	41 5c                	pop    r12
    1276:	41 5d                	pop    r13
    1278:	41 5e                	pop    r14
    127a:	41 5f                	pop    r15
    127c:	c3                   	ret    
    127d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001280 <__libc_csu_fini>:
    1280:	c3                   	ret    

Disassembly of section .fini:

0000000000001284 <_fini>:
    1284:	48 83 ec 08          	sub    rsp,0x8
    1288:	48 83 c4 08          	add    rsp,0x8
    128c:	c3                   	ret    
