
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

0000000000001040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <.plt>

0000000000001050 <_ZNSolsEPFRSoS_E@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <.plt>

0000000000001060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@GLIBCXX_3.4>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <.plt>

0000000000001070 <_ZNSt8ios_base4InitC1Ev@plt>:
    1070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 4038 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <.plt>

0000000000001080 <_ZNSolsEi@plt>:
    1080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 4040 <_ZNSolsEi@GLIBCXX_3.4>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <.plt>

Disassembly of section .plt.got:

0000000000001090 <__cxa_finalize@plt>:
    1090:	ff 25 32 2f 00 00    	jmp    QWORD PTR [rip+0x2f32]        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1096:	66 90                	xchg   ax,ax

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	31 ed                	xor    ebp,ebp
    10a2:	49 89 d1             	mov    r9,rdx
    10a5:	5e                   	pop    rsi
    10a6:	48 89 e2             	mov    rdx,rsp
    10a9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    10ad:	50                   	push   rax
    10ae:	54                   	push   rsp
    10af:	4c 8d 05 3a 04 00 00 	lea    r8,[rip+0x43a]        # 14f0 <__libc_csu_fini>
    10b6:	48 8d 0d d3 03 00 00 	lea    rcx,[rip+0x3d3]        # 1490 <__libc_csu_init>
    10bd:	48 8d 3d b0 01 00 00 	lea    rdi,[rip+0x1b0]        # 1274 <main>
    10c4:	ff 15 16 2f 00 00    	call   QWORD PTR [rip+0x2f16]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ca:	f4                   	hlt    
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 89 2f 00 00 	lea    rdi,[rip+0x2f89]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    10d7:	48 8d 05 82 2f 00 00 	lea    rax,[rip+0x2f82]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    10de:	48 39 f8             	cmp    rax,rdi
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 2e 00 00 	mov    rax,QWORD PTR [rip+0x2eee]        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   rax,rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmp    rax
    10f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 59 2f 00 00 	lea    rdi,[rip+0x2f59]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    1107:	48 8d 35 52 2f 00 00 	lea    rsi,[rip+0x2f52]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    110e:	48 29 fe             	sub    rsi,rdi
    1111:	48 c1 fe 03          	sar    rsi,0x3
    1115:	48 89 f0             	mov    rax,rsi
    1118:	48 c1 e8 3f          	shr    rax,0x3f
    111c:	48 01 c6             	add    rsi,rax
    111f:	48 d1 fe             	sar    rsi,1
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ec5]        # 3ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   rax,rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmp    rax
    1132:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001140 <__do_global_dtors_aux>:
    1140:	80 3d 29 30 00 00 00 	cmp    BYTE PTR [rip+0x3029],0x0        # 4170 <completed.7325>
    1147:	75 2f                	jne    1178 <__do_global_dtors_aux+0x38>
    1149:	55                   	push   rbp
    114a:	48 83 3d 76 2e 00 00 	cmp    QWORD PTR [rip+0x2e76],0x0        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1151:	00 
    1152:	48 89 e5             	mov    rbp,rsp
    1155:	74 0c                	je     1163 <__do_global_dtors_aux+0x23>
    1157:	48 8b 3d f2 2e 00 00 	mov    rdi,QWORD PTR [rip+0x2ef2]        # 4050 <__dso_handle>
    115e:	e8 2d ff ff ff       	call   1090 <__cxa_finalize@plt>
    1163:	e8 68 ff ff ff       	call   10d0 <deregister_tm_clones>
    1168:	c6 05 01 30 00 00 01 	mov    BYTE PTR [rip+0x3001],0x1        # 4170 <completed.7325>
    116f:	5d                   	pop    rbp
    1170:	c3                   	ret    
    1171:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1178:	c3                   	ret    
    1179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001180 <frame_dummy>:
    1180:	e9 7b ff ff ff       	jmp    1100 <register_tm_clones>

0000000000001185 <_Z15multiple_matrixPiS_i>:
    1185:	55                   	push   rbp
    1186:	48 89 e5             	mov    rbp,rsp
    1189:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    118d:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    1191:	89 55 dc             	mov    DWORD PTR [rbp-0x24],edx
    1194:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    119b:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    119e:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
    11a1:	0f 8d ca 00 00 00    	jge    1271 <_Z15multiple_matrixPiS_i+0xec>
    11a7:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    11ae:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11b1:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
    11b4:	0f 8d ae 00 00 00    	jge    1268 <_Z15multiple_matrixPiS_i+0xe3>
    11ba:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    11c1:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11c4:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
    11c7:	0f 8d 92 00 00 00    	jge    125f <_Z15multiple_matrixPiS_i+0xda>
    11cd:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11d0:	0f af 45 dc          	imul   eax,DWORD PTR [rbp-0x24]
    11d4:	89 c2                	mov    edx,eax
    11d6:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    11d9:	01 d0                	add    eax,edx
    11db:	48 98                	cdqe   
    11dd:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    11e4:	00 
    11e5:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    11e9:	48 01 d0             	add    rax,rdx
    11ec:	8b 08                	mov    ecx,DWORD PTR [rax]
    11ee:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    11f1:	0f af 45 dc          	imul   eax,DWORD PTR [rbp-0x24]
    11f5:	89 c2                	mov    edx,eax
    11f7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    11fa:	01 d0                	add    eax,edx
    11fc:	48 98                	cdqe   
    11fe:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    1205:	00 
    1206:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    120a:	48 01 d0             	add    rax,rdx
    120d:	8b 10                	mov    edx,DWORD PTR [rax]
    120f:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1212:	0f af 45 dc          	imul   eax,DWORD PTR [rbp-0x24]
    1216:	89 c6                	mov    esi,eax
    1218:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    121b:	01 f0                	add    eax,esi
    121d:	48 98                	cdqe   
    121f:	48 8d 34 85 00 00 00 	lea    rsi,[rax*4+0x0]
    1226:	00 
    1227:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    122b:	48 01 f0             	add    rax,rsi
    122e:	8b 00                	mov    eax,DWORD PTR [rax]
    1230:	0f af d0             	imul   edx,eax
    1233:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    1236:	0f af 45 dc          	imul   eax,DWORD PTR [rbp-0x24]
    123a:	89 c6                	mov    esi,eax
    123c:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    123f:	01 f0                	add    eax,esi
    1241:	48 98                	cdqe   
    1243:	48 8d 34 85 00 00 00 	lea    rsi,[rax*4+0x0]
    124a:	00 
    124b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    124f:	48 01 f0             	add    rax,rsi
    1252:	01 ca                	add    edx,ecx
    1254:	89 10                	mov    DWORD PTR [rax],edx
    1256:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
    125a:	e9 62 ff ff ff       	jmp    11c1 <_Z15multiple_matrixPiS_i+0x3c>
    125f:	83 45 f8 01          	add    DWORD PTR [rbp-0x8],0x1
    1263:	e9 46 ff ff ff       	jmp    11ae <_Z15multiple_matrixPiS_i+0x29>
    1268:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
    126c:	e9 2a ff ff ff       	jmp    119b <_Z15multiple_matrixPiS_i+0x16>
    1271:	90                   	nop
    1272:	5d                   	pop    rbp
    1273:	c3                   	ret    

0000000000001274 <main>:
    1274:	55                   	push   rbp
    1275:	48 89 e5             	mov    rbp,rsp
    1278:	48 83 ec 60          	sub    rsp,0x60
    127c:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [rbp-0x30],0x1
    1283:	c7 45 d4 02 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x2
    128a:	c7 45 d8 03 00 00 00 	mov    DWORD PTR [rbp-0x28],0x3
    1291:	c7 45 dc 04 00 00 00 	mov    DWORD PTR [rbp-0x24],0x4
    1298:	c7 45 e0 05 00 00 00 	mov    DWORD PTR [rbp-0x20],0x5
    129f:	c7 45 e4 06 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x6
    12a6:	c7 45 e8 07 00 00 00 	mov    DWORD PTR [rbp-0x18],0x7
    12ad:	c7 45 ec 08 00 00 00 	mov    DWORD PTR [rbp-0x14],0x8
    12b4:	c7 45 f0 08 00 00 00 	mov    DWORD PTR [rbp-0x10],0x8
    12bb:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
    12c2:	00 
    12c3:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
    12ca:	00 
    12cb:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
    12d2:	00 
    12d3:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
    12da:	00 
    12db:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
    12e2:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [rbp-0x4],0x3
    12e9:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
    12ec:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
    12f0:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    12f4:	48 89 ce             	mov    rsi,rcx
    12f7:	48 89 c7             	mov    rdi,rax
    12fa:	e8 86 fe ff ff       	call   1185 <_Z15multiple_matrixPiS_i>
    12ff:	48 8d 45 d0          	lea    rax,[rbp-0x30]
    1303:	ba 03 00 00 00       	mov    edx,0x3
    1308:	be 03 00 00 00       	mov    esi,0x3
    130d:	48 89 c7             	mov    rdi,rax
    1310:	e8 87 00 00 00       	call   139c <_Z4ViewIiEvPT_mm>
    1315:	48 8d 45 a0          	lea    rax,[rbp-0x60]
    1319:	ba 03 00 00 00       	mov    edx,0x3
    131e:	be 03 00 00 00       	mov    esi,0x3
    1323:	48 89 c7             	mov    rdi,rax
    1326:	e8 71 00 00 00       	call   139c <_Z4ViewIiEvPT_mm>
    132b:	b8 00 00 00 00       	mov    eax,0x0
    1330:	c9                   	leave  
    1331:	c3                   	ret    

0000000000001332 <_Z41__static_initialization_and_destruction_0ii>:
    1332:	55                   	push   rbp
    1333:	48 89 e5             	mov    rbp,rsp
    1336:	48 83 ec 10          	sub    rsp,0x10
    133a:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    133d:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1340:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1344:	75 32                	jne    1378 <_Z41__static_initialization_and_destruction_0ii+0x46>
    1346:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    134d:	75 29                	jne    1378 <_Z41__static_initialization_and_destruction_0ii+0x46>
    134f:	48 8d 3d 1b 2e 00 00 	lea    rdi,[rip+0x2e1b]        # 4171 <_ZStL8__ioinit>
    1356:	e8 15 fd ff ff       	call   1070 <_ZNSt8ios_base4InitC1Ev@plt>
    135b:	48 8d 15 ee 2c 00 00 	lea    rdx,[rip+0x2cee]        # 4050 <__dso_handle>
    1362:	48 8d 35 08 2e 00 00 	lea    rsi,[rip+0x2e08]        # 4171 <_ZStL8__ioinit>
    1369:	48 8b 05 88 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c88]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1370:	48 89 c7             	mov    rdi,rax
    1373:	e8 b8 fc ff ff       	call   1030 <__cxa_atexit@plt>
    1378:	90                   	nop
    1379:	c9                   	leave  
    137a:	c3                   	ret    

000000000000137b <_GLOBAL__sub_I__Z15multiple_matrixPiS_i>:
    137b:	55                   	push   rbp
    137c:	48 89 e5             	mov    rbp,rsp
    137f:	be ff ff 00 00       	mov    esi,0xffff
    1384:	bf 01 00 00 00       	mov    edi,0x1
    1389:	e8 a4 ff ff ff       	call   1332 <_Z41__static_initialization_and_destruction_0ii>
    138e:	5d                   	pop    rbp
    138f:	c3                   	ret    

0000000000001390 <_ZSt4setwi>:
    1390:	55                   	push   rbp
    1391:	48 89 e5             	mov    rbp,rsp
    1394:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1397:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
    139a:	5d                   	pop    rbp
    139b:	c3                   	ret    

000000000000139c <_Z4ViewIiEvPT_mm>:
    139c:	55                   	push   rbp
    139d:	48 89 e5             	mov    rbp,rsp
    13a0:	48 83 ec 30          	sub    rsp,0x30
    13a4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
    13a8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
    13ac:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    13b0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
    13b4:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    13b8:	48 89 55 e0          	mov    QWORD PTR [rbp-0x20],rdx
    13bc:	48 85 c0             	test   rax,rax
    13bf:	0f 95 c0             	setne  al
    13c2:	84 c0                	test   al,al
    13c4:	0f 84 aa 00 00 00    	je     1474 <_Z4ViewIiEvPT_mm+0xd8>
    13ca:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
    13d1:	00 
    13d2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    13d6:	48 83 e8 01          	sub    rax,0x1
    13da:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
    13de:	73 46                	jae    1426 <_Z4ViewIiEvPT_mm+0x8a>
    13e0:	bf 03 00 00 00       	mov    edi,0x3
    13e5:	e8 a6 ff ff ff       	call   1390 <_ZSt4setwi>
    13ea:	89 c6                	mov    esi,eax
    13ec:	48 8d 3d 6d 2c 00 00 	lea    rdi,[rip+0x2c6d]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    13f3:	e8 68 fc ff ff       	call   1060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>
    13f8:	48 89 c2             	mov    rdx,rax
    13fb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    13ff:	8b 00                	mov    eax,DWORD PTR [rax]
    1401:	89 c6                	mov    esi,eax
    1403:	48 89 d7             	mov    rdi,rdx
    1406:	e8 75 fc ff ff       	call   1080 <_ZNSolsEi@plt>
    140b:	48 8d 35 f5 0b 00 00 	lea    rsi,[rip+0xbf5]        # 2007 <_ZStL6ignore+0x1>
    1412:	48 89 c7             	mov    rdi,rax
    1415:	e8 26 fc ff ff       	call   1040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    141a:	48 83 45 e8 04       	add    QWORD PTR [rbp-0x18],0x4
    141f:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
    1424:	eb ac                	jmp    13d2 <_Z4ViewIiEvPT_mm+0x36>
    1426:	bf 03 00 00 00       	mov    edi,0x3
    142b:	e8 60 ff ff ff       	call   1390 <_ZSt4setwi>
    1430:	89 c6                	mov    esi,eax
    1432:	48 8d 3d 27 2c 00 00 	lea    rdi,[rip+0x2c27]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    1439:	e8 22 fc ff ff       	call   1060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>
    143e:	48 89 c1             	mov    rcx,rax
    1441:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1445:	48 8d 50 04          	lea    rdx,[rax+0x4]
    1449:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
    144d:	8b 00                	mov    eax,DWORD PTR [rax]
    144f:	89 c6                	mov    esi,eax
    1451:	48 89 cf             	mov    rdi,rcx
    1454:	e8 27 fc ff ff       	call   1080 <_ZNSolsEi@plt>
    1459:	48 8b 05 70 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b70]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1460:	48 89 c6             	mov    rsi,rax
    1463:	48 8d 3d f6 2b 00 00 	lea    rdi,[rip+0x2bf6]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    146a:	e8 e1 fb ff ff       	call   1050 <_ZNSolsEPFRSoS_E@plt>
    146f:	e9 3c ff ff ff       	jmp    13b0 <_Z4ViewIiEvPT_mm+0x14>
    1474:	48 8b 05 55 2b 00 00 	mov    rax,QWORD PTR [rip+0x2b55]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    147b:	48 89 c6             	mov    rsi,rax
    147e:	48 8d 3d db 2b 00 00 	lea    rdi,[rip+0x2bdb]        # 4060 <_ZSt4cout@@GLIBCXX_3.4>
    1485:	e8 c6 fb ff ff       	call   1050 <_ZNSolsEPFRSoS_E@plt>
    148a:	90                   	nop
    148b:	c9                   	leave  
    148c:	c3                   	ret    
    148d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001490 <__libc_csu_init>:
    1490:	41 57                	push   r15
    1492:	49 89 d7             	mov    r15,rdx
    1495:	41 56                	push   r14
    1497:	49 89 f6             	mov    r14,rsi
    149a:	41 55                	push   r13
    149c:	41 89 fd             	mov    r13d,edi
    149f:	41 54                	push   r12
    14a1:	4c 8d 25 f8 28 00 00 	lea    r12,[rip+0x28f8]        # 3da0 <__frame_dummy_init_array_entry>
    14a8:	55                   	push   rbp
    14a9:	48 8d 2d 00 29 00 00 	lea    rbp,[rip+0x2900]        # 3db0 <__init_array_end>
    14b0:	53                   	push   rbx
    14b1:	4c 29 e5             	sub    rbp,r12
    14b4:	48 83 ec 08          	sub    rsp,0x8
    14b8:	e8 43 fb ff ff       	call   1000 <_init>
    14bd:	48 c1 fd 03          	sar    rbp,0x3
    14c1:	74 1b                	je     14de <__libc_csu_init+0x4e>
    14c3:	31 db                	xor    ebx,ebx
    14c5:	0f 1f 00             	nop    DWORD PTR [rax]
    14c8:	4c 89 fa             	mov    rdx,r15
    14cb:	4c 89 f6             	mov    rsi,r14
    14ce:	44 89 ef             	mov    edi,r13d
    14d1:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
    14d5:	48 83 c3 01          	add    rbx,0x1
    14d9:	48 39 dd             	cmp    rbp,rbx
    14dc:	75 ea                	jne    14c8 <__libc_csu_init+0x38>
    14de:	48 83 c4 08          	add    rsp,0x8
    14e2:	5b                   	pop    rbx
    14e3:	5d                   	pop    rbp
    14e4:	41 5c                	pop    r12
    14e6:	41 5d                	pop    r13
    14e8:	41 5e                	pop    r14
    14ea:	41 5f                	pop    r15
    14ec:	c3                   	ret    
    14ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000014f0 <__libc_csu_fini>:
    14f0:	c3                   	ret    

Disassembly of section .fini:

00000000000014f4 <_fini>:
    14f4:	48 83 ec 08          	sub    rsp,0x8
    14f8:	48 83 c4 08          	add    rsp,0x8
    14fc:	c3                   	ret    
