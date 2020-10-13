
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
    104f:	4c 8d 05 fa 01 00 00 	lea    r8,[rip+0x1fa]        # 1250 <__libc_csu_fini>
    1056:	48 8d 0d 93 01 00 00 	lea    rcx,[rip+0x193]        # 11f0 <__libc_csu_init>
    105d:	48 8d 3d 1e 01 00 00 	lea    rdi,[rip+0x11e]        # 1182 <main>
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

0000000000001125 <_Z8if_5_powi>:
    1125:	55                   	push   rbp
    1126:	48 89 e5             	mov    rbp,rsp
    1129:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    112c:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1130:	74 49                	je     117b <_Z8if_5_powi+0x56>
    1132:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
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
    1156:	75 1c                	jne    1174 <_Z8if_5_powi+0x4f>
    1158:	8b 4d fc             	mov    ecx,DWORD PTR [rbp-0x4]
    115b:	ba 67 66 66 66       	mov    edx,0x66666667
    1160:	89 c8                	mov    eax,ecx
    1162:	f7 ea                	imul   edx
    1164:	d1 fa                	sar    edx,1
    1166:	89 c8                	mov    eax,ecx
    1168:	c1 f8 1f             	sar    eax,0x1f
    116b:	29 c2                	sub    edx,eax
    116d:	89 d0                	mov    eax,edx
    116f:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
    1172:	eb b8                	jmp    112c <_Z8if_5_powi+0x7>
    1174:	b8 00 00 00 00       	mov    eax,0x0
    1179:	eb 05                	jmp    1180 <_Z8if_5_powi+0x5b>
    117b:	b8 01 00 00 00       	mov    eax,0x1
    1180:	5d                   	pop    rbp
    1181:	c3                   	ret    

0000000000001182 <main>:
    1182:	55                   	push   rbp
    1183:	48 89 e5             	mov    rbp,rsp
    1186:	48 83 ec 30          	sub    rsp,0x30
    118a:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [rbp-0x30],0x1
    1191:	c7 45 d4 02 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x2
    1198:	c7 45 d8 03 00 00 00 	mov    DWORD PTR [rbp-0x28],0x3
    119f:	c7 45 dc 04 00 00 00 	mov    DWORD PTR [rbp-0x24],0x4
    11a6:	c7 45 e0 05 00 00 00 	mov    DWORD PTR [rbp-0x20],0x5
    11ad:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    11b4:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    11b8:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    11bc:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    11c0:	48 83 c0 14          	add    rax,0x14
    11c4:	48 39 45 f0          	cmp    QWORD PTR [rbp-0x10],rax
    11c8:	73 21                	jae    11eb <main+0x69>
    11ca:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    11ce:	8b 00                	mov    eax,DWORD PTR [rax]
    11d0:	89 c7                	mov    edi,eax
    11d2:	e8 4e ff ff ff       	call   1125 <_Z8if_5_powi>
    11d7:	84 c0                	test   al,al
    11d9:	74 09                	je     11e4 <main+0x62>
    11db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
    11df:	8b 00                	mov    eax,DWORD PTR [rax]
    11e1:	01 45 fc             	add    DWORD PTR [rbp-0x4],eax
    11e4:	48 83 45 f0 04       	add    QWORD PTR [rbp-0x10],0x4
    11e9:	eb d1                	jmp    11bc <main+0x3a>
    11eb:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11ee:	c9                   	leave  
    11ef:	c3                   	ret    

00000000000011f0 <__libc_csu_init>:
    11f0:	41 57                	push   r15
    11f2:	49 89 d7             	mov    r15,rdx
    11f5:	41 56                	push   r14
    11f7:	49 89 f6             	mov    r14,rsi
    11fa:	41 55                	push   r13
    11fc:	41 89 fd             	mov    r13d,edi
    11ff:	41 54                	push   r12
    1201:	4c 8d 25 e0 2b 00 00 	lea    r12,[rip+0x2be0]        # 3de8 <__frame_dummy_init_array_entry>
    1208:	55                   	push   rbp
    1209:	48 8d 2d e0 2b 00 00 	lea    rbp,[rip+0x2be0]        # 3df0 <__init_array_end>
    1210:	53                   	push   rbx
    1211:	4c 29 e5             	sub    rbp,r12
    1214:	48 83 ec 08          	sub    rsp,0x8
    1218:	e8 e3 fd ff ff       	call   1000 <_init>
    121d:	48 c1 fd 03          	sar    rbp,0x3
    1221:	74 1b                	je     123e <__libc_csu_init+0x4e>
    1223:	31 db                	xor    ebx,ebx
    1225:	0f 1f 00             	nop    DWORD PTR [rax]
    1228:	4c 89 fa             	mov    rdx,r15
    122b:	4c 89 f6             	mov    rsi,r14
    122e:	44 89 ef             	mov    edi,r13d
    1231:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    1235:	48 83 c3 01          	add    rbx,0x1
    1239:	48 39 dd             	cmp    rbp,rbx
    123c:	75 ea                	jne    1228 <__libc_csu_init+0x38>
    123e:	48 83 c4 08          	add    rsp,0x8
    1242:	5b                   	pop    rbx
    1243:	5d                   	pop    rbp
    1244:	41 5c                	pop    r12
    1246:	41 5d                	pop    r13
    1248:	41 5e                	pop    r14
    124a:	41 5f                	pop    r15
    124c:	c3                   	ret    
    124d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001250 <__libc_csu_fini>:
    1250:	c3                   	ret    

Disassembly of section .fini:

0000000000001254 <_fini>:
    1254:	48 83 ec 08          	sub    rsp,0x8
    1258:	48 83 c4 08          	add    rsp,0x8
    125c:	c3                   	ret    
