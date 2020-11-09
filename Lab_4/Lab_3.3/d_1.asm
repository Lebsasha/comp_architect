
./main:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    rsp,0x8
  401004:	48 8b 05 e5 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe5]        # 403ff0 <__gmon_start__>
  40100b:	48 85 c0             	test   rax,rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	call   rax
  401012:	48 83 c4 08          	add    rsp,0x8
  401016:	c3                   	ret    

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <__cxa_atexit@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 404018 <__cxa_atexit@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <.plt>

0000000000401040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  401040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 404020 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <.plt>

0000000000401050 <_ZNSolsEPFRSoS_E@plt>:
  401050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 404028 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <.plt>

0000000000401060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>:
  401060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 404030 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@GLIBCXX_3.4>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <.plt>

0000000000401070 <_ZNSt8ios_base4InitC1Ev@plt>:
  401070:	ff 25 c2 2f 00 00    	jmp    QWORD PTR [rip+0x2fc2]        # 404038 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <.plt>

0000000000401080 <_ZNSolsEi@plt>:
  401080:	ff 25 ba 2f 00 00    	jmp    QWORD PTR [rip+0x2fba]        # 404040 <_ZNSolsEi@GLIBCXX_3.4>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <.plt>

Disassembly of section .text:

0000000000401090 <_start>:
  401090:	31 ed                	xor    ebp,ebp
  401092:	49 89 d1             	mov    r9,rdx
  401095:	5e                   	pop    rsi
  401096:	48 89 e2             	mov    rdx,rsp
  401099:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40109d:	50                   	push   rax
  40109e:	54                   	push   rsp
  40109f:	49 c7 c0 40 15 40 00 	mov    r8,0x401540
  4010a6:	48 c7 c1 e0 14 40 00 	mov    rcx,0x4014e0
  4010ad:	48 c7 c7 72 11 40 00 	mov    rdi,0x401172
  4010b4:	ff 15 2e 2f 00 00    	call   QWORD PTR [rip+0x2f2e]        # 403fe8 <__libc_start_main@GLIBC_2.2.5>
  4010ba:	f4                   	hlt    
  4010bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010c0 <_dl_relocate_static_pie>:
  4010c0:	c3                   	ret    
  4010c1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4010c8:	00 00 00 
  4010cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010d0 <deregister_tm_clones>:
  4010d0:	b8 60 40 40 00       	mov    eax,0x404060
  4010d5:	48 3d 60 40 40 00    	cmp    rax,0x404060
  4010db:	74 13                	je     4010f0 <deregister_tm_clones+0x20>
  4010dd:	b8 00 00 00 00       	mov    eax,0x0
  4010e2:	48 85 c0             	test   rax,rax
  4010e5:	74 09                	je     4010f0 <deregister_tm_clones+0x20>
  4010e7:	bf 60 40 40 00       	mov    edi,0x404060
  4010ec:	ff e0                	jmp    rax
  4010ee:	66 90                	xchg   ax,ax
  4010f0:	c3                   	ret    
  4010f1:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4010f8:	00 00 00 00 
  4010fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401100 <register_tm_clones>:
  401100:	be 60 40 40 00       	mov    esi,0x404060
  401105:	48 81 ee 60 40 40 00 	sub    rsi,0x404060
  40110c:	48 c1 fe 03          	sar    rsi,0x3
  401110:	48 89 f0             	mov    rax,rsi
  401113:	48 c1 e8 3f          	shr    rax,0x3f
  401117:	48 01 c6             	add    rsi,rax
  40111a:	48 d1 fe             	sar    rsi,1
  40111d:	74 11                	je     401130 <register_tm_clones+0x30>
  40111f:	b8 00 00 00 00       	mov    eax,0x0
  401124:	48 85 c0             	test   rax,rax
  401127:	74 07                	je     401130 <register_tm_clones+0x30>
  401129:	bf 60 40 40 00       	mov    edi,0x404060
  40112e:	ff e0                	jmp    rax
  401130:	c3                   	ret    
  401131:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401138:	00 00 00 00 
  40113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401140 <__do_global_dtors_aux>:
  401140:	80 3d 29 30 00 00 00 	cmp    BYTE PTR [rip+0x3029],0x0        # 404170 <completed.7325>
  401147:	75 17                	jne    401160 <__do_global_dtors_aux+0x20>
  401149:	55                   	push   rbp
  40114a:	48 89 e5             	mov    rbp,rsp
  40114d:	e8 7e ff ff ff       	call   4010d0 <deregister_tm_clones>
  401152:	c6 05 17 30 00 00 01 	mov    BYTE PTR [rip+0x3017],0x1        # 404170 <completed.7325>
  401159:	5d                   	pop    rbp
  40115a:	c3                   	ret    
  40115b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401160:	c3                   	ret    
  401161:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401168:	00 00 00 00 
  40116c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401170 <frame_dummy>:
  401170:	eb 8e                	jmp    401100 <register_tm_clones>

0000000000401172 <main>:
  401172:	55                   	push   rbp
  401173:	48 89 e5             	mov    rbp,rsp
  401176:	48 83 ec 60          	sub    rsp,0x60
  40117a:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [rbp-0x30],0x1
  401181:	c7 45 d4 02 00 00 00 	mov    DWORD PTR [rbp-0x2c],0x2
  401188:	c7 45 d8 03 00 00 00 	mov    DWORD PTR [rbp-0x28],0x3
  40118f:	c7 45 dc 04 00 00 00 	mov    DWORD PTR [rbp-0x24],0x4
  401196:	c7 45 e0 05 00 00 00 	mov    DWORD PTR [rbp-0x20],0x5
  40119d:	c7 45 e4 06 00 00 00 	mov    DWORD PTR [rbp-0x1c],0x6
  4011a4:	c7 45 e8 07 00 00 00 	mov    DWORD PTR [rbp-0x18],0x7
  4011ab:	c7 45 ec 08 00 00 00 	mov    DWORD PTR [rbp-0x14],0x8
  4011b2:	c7 45 f0 08 00 00 00 	mov    DWORD PTR [rbp-0x10],0x8
  4011b9:	48 c7 45 a0 00 00 00 	mov    QWORD PTR [rbp-0x60],0x0
  4011c0:	00 
  4011c1:	48 c7 45 a8 00 00 00 	mov    QWORD PTR [rbp-0x58],0x0
  4011c8:	00 
  4011c9:	48 c7 45 b0 00 00 00 	mov    QWORD PTR [rbp-0x50],0x0
  4011d0:	00 
  4011d1:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
  4011d8:	00 
  4011d9:	c7 45 c0 00 00 00 00 	mov    DWORD PTR [rbp-0x40],0x0
  4011e0:	c7 45 fc 03 00 00 00 	mov    DWORD PTR [rbp-0x4],0x3
  4011e7:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  4011ea:	48 8d 4d a0          	lea    rcx,[rbp-0x60]
  4011ee:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  4011f2:	48 89 ce             	mov    rsi,rcx
  4011f5:	48 89 c7             	mov    rdi,rax
  4011f8:	e8 93 01 00 00       	call   401390 <multiply_matrix>
  4011fd:	48 8d 45 d0          	lea    rax,[rbp-0x30]
  401201:	ba 03 00 00 00       	mov    edx,0x3
  401206:	be 03 00 00 00       	mov    esi,0x3
  40120b:	48 89 c7             	mov    rdi,rax
  40120e:	e8 87 00 00 00       	call   40129a <_Z4ViewIiEvPT_mm>
  401213:	48 8d 45 a0          	lea    rax,[rbp-0x60]
  401217:	ba 03 00 00 00       	mov    edx,0x3
  40121c:	be 03 00 00 00       	mov    esi,0x3
  401221:	48 89 c7             	mov    rdi,rax
  401224:	e8 71 00 00 00       	call   40129a <_Z4ViewIiEvPT_mm>
  401229:	b8 00 00 00 00       	mov    eax,0x0
  40122e:	c9                   	leave  
  40122f:	c3                   	ret    

0000000000401230 <_Z41__static_initialization_and_destruction_0ii>:
  401230:	55                   	push   rbp
  401231:	48 89 e5             	mov    rbp,rsp
  401234:	48 83 ec 10          	sub    rsp,0x10
  401238:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  40123b:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  40123e:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
  401242:	75 32                	jne    401276 <_Z41__static_initialization_and_destruction_0ii+0x46>
  401244:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
  40124b:	75 29                	jne    401276 <_Z41__static_initialization_and_destruction_0ii+0x46>
  40124d:	48 8d 3d 1d 2f 00 00 	lea    rdi,[rip+0x2f1d]        # 404171 <_ZStL8__ioinit>
  401254:	e8 17 fe ff ff       	call   401070 <_ZNSt8ios_base4InitC1Ev@plt>
  401259:	48 8d 15 f0 2d 00 00 	lea    rdx,[rip+0x2df0]        # 404050 <__dso_handle>
  401260:	48 8d 35 0a 2f 00 00 	lea    rsi,[rip+0x2f0a]        # 404171 <_ZStL8__ioinit>
  401267:	48 8b 05 8a 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d8a]        # 403ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  40126e:	48 89 c7             	mov    rdi,rax
  401271:	e8 ba fd ff ff       	call   401030 <__cxa_atexit@plt>
  401276:	90                   	nop
  401277:	c9                   	leave  
  401278:	c3                   	ret    

0000000000401279 <_GLOBAL__sub_I_main>:
  401279:	55                   	push   rbp
  40127a:	48 89 e5             	mov    rbp,rsp
  40127d:	be ff ff 00 00       	mov    esi,0xffff
  401282:	bf 01 00 00 00       	mov    edi,0x1
  401287:	e8 a4 ff ff ff       	call   401230 <_Z41__static_initialization_and_destruction_0ii>
  40128c:	5d                   	pop    rbp
  40128d:	c3                   	ret    

000000000040128e <_ZSt4setwi>:
  40128e:	55                   	push   rbp
  40128f:	48 89 e5             	mov    rbp,rsp
  401292:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  401295:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401298:	5d                   	pop    rbp
  401299:	c3                   	ret    

000000000040129a <_Z4ViewIiEvPT_mm>:
  40129a:	55                   	push   rbp
  40129b:	48 89 e5             	mov    rbp,rsp
  40129e:	48 83 ec 30          	sub    rsp,0x30
  4012a2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4012a6:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4012aa:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  4012ae:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4012b2:	48 8d 50 ff          	lea    rdx,[rax-0x1]
  4012b6:	48 89 55 e0          	mov    QWORD PTR [rbp-0x20],rdx
  4012ba:	48 85 c0             	test   rax,rax
  4012bd:	0f 95 c0             	setne  al
  4012c0:	84 c0                	test   al,al
  4012c2:	0f 84 aa 00 00 00    	je     401372 <_Z4ViewIiEvPT_mm+0xd8>
  4012c8:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  4012cf:	00 
  4012d0:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4012d4:	48 83 e8 01          	sub    rax,0x1
  4012d8:	48 39 45 f8          	cmp    QWORD PTR [rbp-0x8],rax
  4012dc:	73 46                	jae    401324 <_Z4ViewIiEvPT_mm+0x8a>
  4012de:	bf 03 00 00 00       	mov    edi,0x3
  4012e3:	e8 a6 ff ff ff       	call   40128e <_ZSt4setwi>
  4012e8:	89 c6                	mov    esi,eax
  4012ea:	48 8d 3d 6f 2d 00 00 	lea    rdi,[rip+0x2d6f]        # 404060 <_ZSt4cout@@GLIBCXX_3.4>
  4012f1:	e8 6a fd ff ff       	call   401060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>
  4012f6:	48 89 c2             	mov    rdx,rax
  4012f9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4012fd:	8b 00                	mov    eax,DWORD PTR [rax]
  4012ff:	89 c6                	mov    esi,eax
  401301:	48 89 d7             	mov    rdi,rdx
  401304:	e8 77 fd ff ff       	call   401080 <_ZNSolsEi@plt>
  401309:	48 8d 35 f7 0c 00 00 	lea    rsi,[rip+0xcf7]        # 402007 <_ZStL6ignore+0x1>
  401310:	48 89 c7             	mov    rdi,rax
  401313:	e8 28 fd ff ff       	call   401040 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  401318:	48 83 45 e8 04       	add    QWORD PTR [rbp-0x18],0x4
  40131d:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  401322:	eb ac                	jmp    4012d0 <_Z4ViewIiEvPT_mm+0x36>
  401324:	bf 03 00 00 00       	mov    edi,0x3
  401329:	e8 60 ff ff ff       	call   40128e <_ZSt4setwi>
  40132e:	89 c6                	mov    esi,eax
  401330:	48 8d 3d 29 2d 00 00 	lea    rdi,[rip+0x2d29]        # 404060 <_ZSt4cout@@GLIBCXX_3.4>
  401337:	e8 24 fd ff ff       	call   401060 <_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw@plt>
  40133c:	48 89 c1             	mov    rcx,rax
  40133f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401343:	48 8d 50 04          	lea    rdx,[rax+0x4]
  401347:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  40134b:	8b 00                	mov    eax,DWORD PTR [rax]
  40134d:	89 c6                	mov    esi,eax
  40134f:	48 89 cf             	mov    rdi,rcx
  401352:	e8 29 fd ff ff       	call   401080 <_ZNSolsEi@plt>
  401357:	48 8b 05 82 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c82]        # 403fe0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  40135e:	48 89 c6             	mov    rsi,rax
  401361:	48 8d 3d f8 2c 00 00 	lea    rdi,[rip+0x2cf8]        # 404060 <_ZSt4cout@@GLIBCXX_3.4>
  401368:	e8 e3 fc ff ff       	call   401050 <_ZNSolsEPFRSoS_E@plt>
  40136d:	e9 3c ff ff ff       	jmp    4012ae <_Z4ViewIiEvPT_mm+0x14>
  401372:	48 8b 05 67 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c67]        # 403fe0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
  401379:	48 89 c6             	mov    rsi,rax
  40137c:	48 8d 3d dd 2c 00 00 	lea    rdi,[rip+0x2cdd]        # 404060 <_ZSt4cout@@GLIBCXX_3.4>
  401383:	e8 c8 fc ff ff       	call   401050 <_ZNSolsEPFRSoS_E@plt>
  401388:	90                   	nop
  401389:	c9                   	leave  
  40138a:	c3                   	ret    
  40138b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401390 <multiply_matrix>:
  401390:	48 89 3c 25 7c 41 40 	mov    QWORD PTR ds:0x40417c,rdi
  401397:	00 
  401398:	48 89 34 25 74 41 40 	mov    QWORD PTR ds:0x404174,rsi
  40139f:	00 
  4013a0:	89 14 25 84 41 40 00 	mov    DWORD PTR ds:0x404184,edx
  4013a7:	c7 04 25 88 41 40 00 	mov    DWORD PTR ds:0x404188,0x0
  4013ae:	00 00 00 00 

00000000004013b2 <for_i>:
  4013b2:	8b 04 25 88 41 40 00 	mov    eax,DWORD PTR ds:0x404188
  4013b9:	3b 04 25 84 41 40 00 	cmp    eax,DWORD PTR ds:0x404184
  4013c0:	0f 8d 0c 01 00 00    	jge    4014d2 <exit_for_i>
  4013c6:	c7 04 25 90 41 40 00 	mov    DWORD PTR ds:0x404190,0x0
  4013cd:	00 00 00 00 

00000000004013d1 <for_k>:
  4013d1:	8b 04 25 90 41 40 00 	mov    eax,DWORD PTR ds:0x404190
  4013d8:	3b 04 25 84 41 40 00 	cmp    eax,DWORD PTR ds:0x404184
  4013df:	0f 8d e0 00 00 00    	jge    4014c5 <exit_for_k>
  4013e5:	c7 04 25 8c 41 40 00 	mov    DWORD PTR ds:0x40418c,0x0
  4013ec:	00 00 00 00 

00000000004013f0 <for_j>:
  4013f0:	8b 04 25 8c 41 40 00 	mov    eax,DWORD PTR ds:0x40418c
  4013f7:	3b 04 25 84 41 40 00 	cmp    eax,DWORD PTR ds:0x404184
  4013fe:	0f 8d b4 00 00 00    	jge    4014b8 <exit_for_j>
  401404:	8b 04 25 88 41 40 00 	mov    eax,DWORD PTR ds:0x404188
  40140b:	0f af 04 25 84 41 40 	imul   eax,DWORD PTR ds:0x404184
  401412:	00 
  401413:	89 c2                	mov    edx,eax
  401415:	8b 04 25 90 41 40 00 	mov    eax,DWORD PTR ds:0x404190
  40141c:	01 d0                	add    eax,edx
  40141e:	48 8b 0c 25 74 41 40 	mov    rcx,QWORD PTR ds:0x404174
  401425:	00 
  401426:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  40142a:	8b 09                	mov    ecx,DWORD PTR [rcx]
  40142c:	8b 04 25 88 41 40 00 	mov    eax,DWORD PTR ds:0x404188
  401433:	0f af 04 25 84 41 40 	imul   eax,DWORD PTR ds:0x404184
  40143a:	00 
  40143b:	89 c2                	mov    edx,eax
  40143d:	8b 04 25 8c 41 40 00 	mov    eax,DWORD PTR ds:0x40418c
  401444:	01 d0                	add    eax,edx
  401446:	48 98                	cdqe   
  401448:	48 8b 14 25 7c 41 40 	mov    rdx,QWORD PTR ds:0x40417c
  40144f:	00 
  401450:	48 8d 14 82          	lea    rdx,[rdx+rax*4]
  401454:	8b 12                	mov    edx,DWORD PTR [rdx]
  401456:	8b 04 25 90 41 40 00 	mov    eax,DWORD PTR ds:0x404190
  40145d:	0f af 04 25 84 41 40 	imul   eax,DWORD PTR ds:0x404184
  401464:	00 
  401465:	89 c6                	mov    esi,eax
  401467:	8b 04 25 8c 41 40 00 	mov    eax,DWORD PTR ds:0x40418c
  40146e:	01 f0                	add    eax,esi
  401470:	48 8b 34 25 7c 41 40 	mov    rsi,QWORD PTR ds:0x40417c
  401477:	00 
  401478:	48 8d 34 86          	lea    rsi,[rsi+rax*4]
  40147c:	8b 06                	mov    eax,DWORD PTR [rsi]
  40147e:	0f af d0             	imul   edx,eax
  401481:	8b 04 25 88 41 40 00 	mov    eax,DWORD PTR ds:0x404188
  401488:	0f af 04 25 84 41 40 	imul   eax,DWORD PTR ds:0x404184
  40148f:	00 
  401490:	89 c6                	mov    esi,eax
  401492:	8b 04 25 90 41 40 00 	mov    eax,DWORD PTR ds:0x404190
  401499:	01 f0                	add    eax,esi
  40149b:	01 ca                	add    edx,ecx
  40149d:	48 8b 34 25 74 41 40 	mov    rsi,QWORD PTR ds:0x404174
  4014a4:	00 
  4014a5:	48 8d 34 86          	lea    rsi,[rsi+rax*4]
  4014a9:	89 16                	mov    DWORD PTR [rsi],edx
  4014ab:	83 04 25 8c 41 40 00 	add    DWORD PTR ds:0x40418c,0x1
  4014b2:	01 
  4014b3:	e9 38 ff ff ff       	jmp    4013f0 <for_j>

00000000004014b8 <exit_for_j>:
  4014b8:	83 04 25 90 41 40 00 	add    DWORD PTR ds:0x404190,0x1
  4014bf:	01 
  4014c0:	e9 0c ff ff ff       	jmp    4013d1 <for_k>

00000000004014c5 <exit_for_k>:
  4014c5:	83 04 25 88 41 40 00 	add    DWORD PTR ds:0x404188,0x1
  4014cc:	01 
  4014cd:	e9 e0 fe ff ff       	jmp    4013b2 <for_i>

00000000004014d2 <exit_for_i>:
  4014d2:	c3                   	ret    
  4014d3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4014da:	00 00 00 
  4014dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004014e0 <__libc_csu_init>:
  4014e0:	41 57                	push   r15
  4014e2:	49 89 d7             	mov    r15,rdx
  4014e5:	41 56                	push   r14
  4014e7:	49 89 f6             	mov    r14,rsi
  4014ea:	41 55                	push   r13
  4014ec:	41 89 fd             	mov    r13d,edi
  4014ef:	41 54                	push   r12
  4014f1:	4c 8d 25 d0 28 00 00 	lea    r12,[rip+0x28d0]        # 403dc8 <__frame_dummy_init_array_entry>
  4014f8:	55                   	push   rbp
  4014f9:	48 8d 2d d8 28 00 00 	lea    rbp,[rip+0x28d8]        # 403dd8 <__init_array_end>
  401500:	53                   	push   rbx
  401501:	4c 29 e5             	sub    rbp,r12
  401504:	48 83 ec 08          	sub    rsp,0x8
  401508:	e8 f3 fa ff ff       	call   401000 <_init>
  40150d:	48 c1 fd 03          	sar    rbp,0x3
  401511:	74 1b                	je     40152e <__libc_csu_init+0x4e>
  401513:	31 db                	xor    ebx,ebx
  401515:	0f 1f 00             	nop    DWORD PTR [rax]
  401518:	4c 89 fa             	mov    rdx,r15
  40151b:	4c 89 f6             	mov    rsi,r14
  40151e:	44 89 ef             	mov    edi,r13d
  401521:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  401525:	48 83 c3 01          	add    rbx,0x1
  401529:	48 39 dd             	cmp    rbp,rbx
  40152c:	75 ea                	jne    401518 <__libc_csu_init+0x38>
  40152e:	48 83 c4 08          	add    rsp,0x8
  401532:	5b                   	pop    rbx
  401533:	5d                   	pop    rbp
  401534:	41 5c                	pop    r12
  401536:	41 5d                	pop    r13
  401538:	41 5e                	pop    r14
  40153a:	41 5f                	pop    r15
  40153c:	c3                   	ret    
  40153d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000401540 <__libc_csu_fini>:
  401540:	c3                   	ret    

Disassembly of section .fini:

0000000000401544 <_fini>:
  401544:	48 83 ec 08          	sub    rsp,0x8
  401548:	48 83 c4 08          	add    rsp,0x8
  40154c:	c3                   	ret    
