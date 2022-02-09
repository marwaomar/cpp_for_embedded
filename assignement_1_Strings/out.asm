
Strings/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000000401000 <__mingw_invalidParameterHandler>:
  401000:	c3                   	retq   
  401001:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401006:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40100d:	00 00 00 

0000000000401010 <pre_c_init>:
  401010:	48 83 ec 28          	sub    $0x28,%rsp
  401014:	48 8b 05 55 a9 00 00 	mov    0xa955(%rip),%rax        # 40b970 <.refptr.mingw_initltsdrot_force>
  40101b:	31 d2                	xor    %edx,%edx
  40101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401023:	48 8b 05 56 a9 00 00 	mov    0xa956(%rip),%rax        # 40b980 <.refptr.mingw_initltsdyn_force>
  40102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  401030:	48 8b 05 59 a9 00 00 	mov    0xa959(%rip),%rax        # 40b990 <.refptr.mingw_initltssuo_force>
  401037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40103d:	48 8b 05 1c a9 00 00 	mov    0xa91c(%rip),%rax        # 40b960 <.refptr.mingw_initcharmax>
  401044:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40104a:	48 8b 05 ef a7 00 00 	mov    0xa7ef(%rip),%rax        # 40b840 <.refptr.__image_base__>
  401051:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
  401056:	74 58                	je     4010b0 <pre_c_init+0xa0>
  401058:	48 8b 05 f1 a8 00 00 	mov    0xa8f1(%rip),%rax        # 40b950 <.refptr.mingw_app_type>
  40105f:	89 15 a3 cf 00 00    	mov    %edx,0xcfa3(%rip)        # 40e008 <managedapp>
  401065:	8b 00                	mov    (%rax),%eax
  401067:	85 c0                	test   %eax,%eax
  401069:	74 35                	je     4010a0 <pre_c_init+0x90>
  40106b:	b9 02 00 00 00       	mov    $0x2,%ecx
  401070:	e8 f3 7f 00 00       	callq  409068 <__set_app_type>
  401075:	e8 76 80 00 00       	callq  4090f0 <__p__fmode>
  40107a:	48 8b 15 8f a8 00 00 	mov    0xa88f(%rip),%rdx        # 40b910 <.refptr._fmode>
  401081:	8b 12                	mov    (%rdx),%edx
  401083:	89 10                	mov    %edx,(%rax)
  401085:	e8 d6 1f 00 00       	callq  403060 <_setargv>
  40108a:	48 8b 05 2f a7 00 00 	mov    0xa72f(%rip),%rax        # 40b7c0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
  401091:	83 38 01             	cmpl   $0x1,(%rax)
  401094:	74 5a                	je     4010f0 <pre_c_init+0xe0>
  401096:	31 c0                	xor    %eax,%eax
  401098:	48 83 c4 28          	add    $0x28,%rsp
  40109c:	c3                   	retq   
  40109d:	0f 1f 00             	nopl   (%rax)
  4010a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4010a5:	e8 be 7f 00 00       	callq  409068 <__set_app_type>
  4010aa:	eb c9                	jmp    401075 <pre_c_init+0x65>
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)
  4010b0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
  4010b4:	48 01 c8             	add    %rcx,%rax
  4010b7:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
  4010bd:	75 99                	jne    401058 <pre_c_init+0x48>
  4010bf:	0f b7 48 18          	movzwl 0x18(%rax),%ecx
  4010c3:	66 81 f9 0b 01       	cmp    $0x10b,%cx
  4010c8:	74 39                	je     401103 <pre_c_init+0xf3>
  4010ca:	66 81 f9 0b 02       	cmp    $0x20b,%cx
  4010cf:	75 87                	jne    401058 <pre_c_init+0x48>
  4010d1:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
  4010d8:	0f 86 7a ff ff ff    	jbe    401058 <pre_c_init+0x48>
  4010de:	8b 88 f8 00 00 00    	mov    0xf8(%rax),%ecx
  4010e4:	31 d2                	xor    %edx,%edx
  4010e6:	85 c9                	test   %ecx,%ecx
  4010e8:	0f 95 c2             	setne  %dl
  4010eb:	e9 68 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  4010f0:	48 8d 0d 79 22 00 00 	lea    0x2279(%rip),%rcx        # 403370 <_matherr>
  4010f7:	e8 64 22 00 00       	callq  403360 <__mingw_setusermatherr>
  4010fc:	31 c0                	xor    %eax,%eax
  4010fe:	48 83 c4 28          	add    $0x28,%rsp
  401102:	c3                   	retq   
  401103:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
  401107:	0f 86 4b ff ff ff    	jbe    401058 <pre_c_init+0x48>
  40110d:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
  401114:	31 d2                	xor    %edx,%edx
  401116:	45 85 c0             	test   %r8d,%r8d
  401119:	0f 95 c2             	setne  %dl
  40111c:	e9 37 ff ff ff       	jmpq   401058 <pre_c_init+0x48>
  401121:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <pre_cpp_init>:
  401130:	48 83 ec 38          	sub    $0x38,%rsp
  401134:	48 8b 05 05 a8 00 00 	mov    0xa805(%rip),%rax        # 40b940 <.refptr._newmode>
  40113b:	4c 8d 05 ce ce 00 00 	lea    0xcece(%rip),%r8        # 40e010 <envp>
  401142:	48 8d 15 cf ce 00 00 	lea    0xcecf(%rip),%rdx        # 40e018 <argv>
  401149:	48 8d 0d d0 ce 00 00 	lea    0xced0(%rip),%rcx        # 40e020 <argc>
  401150:	8b 00                	mov    (%rax),%eax
  401152:	89 05 a8 ce 00 00    	mov    %eax,0xcea8(%rip)        # 40e000 <__bss_start__>
  401158:	48 8d 05 a1 ce 00 00 	lea    0xcea1(%rip),%rax        # 40e000 <__bss_start__>
  40115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  401164:	48 8b 05 95 a7 00 00 	mov    0xa795(%rip),%rax        # 40b900 <.refptr._dowildcard>
  40116b:	44 8b 08             	mov    (%rax),%r9d
  40116e:	e8 05 7f 00 00       	callq  409078 <__getmainargs>
  401173:	90                   	nop
  401174:	48 83 c4 38          	add    $0x38,%rsp
  401178:	c3                   	retq   
  401179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401180 <__tmainCRTStartup>:
  401180:	41 55                	push   %r13
  401182:	41 54                	push   %r12
  401184:	55                   	push   %rbp
  401185:	57                   	push   %rdi
  401186:	56                   	push   %rsi
  401187:	53                   	push   %rbx
  401188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
  40118f:	31 c0                	xor    %eax,%eax
  401191:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401196:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  40119b:	48 89 d7             	mov    %rdx,%rdi
  40119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4011a1:	48 8b 3d a8 a7 00 00 	mov    0xa7a8(%rip),%rdi        # 40b950 <.refptr.mingw_app_type>
  4011a8:	44 8b 0f             	mov    (%rdi),%r9d
  4011ab:	45 85 c9             	test   %r9d,%r9d
  4011ae:	0f 85 bc 02 00 00    	jne    401470 <__tmainCRTStartup+0x2f0>
  4011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
  4011bb:	00 00 
  4011bd:	48 8b 1d cc a6 00 00 	mov    0xa6cc(%rip),%rbx        # 40b890 <.refptr.__native_startup_lock>
  4011c4:	31 ed                	xor    %ebp,%ebp
  4011c6:	48 8b 70 08          	mov    0x8(%rax),%rsi
  4011ca:	4c 8b 25 d3 f2 00 00 	mov    0xf2d3(%rip),%r12        # 4104a4 <__imp_Sleep>
  4011d1:	eb 11                	jmp    4011e4 <__tmainCRTStartup+0x64>
  4011d3:	48 39 c6             	cmp    %rax,%rsi
  4011d6:	0f 84 34 02 00 00    	je     401410 <__tmainCRTStartup+0x290>
  4011dc:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  4011e1:	41 ff d4             	callq  *%r12
  4011e4:	48 89 e8             	mov    %rbp,%rax
  4011e7:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
  4011ec:	48 85 c0             	test   %rax,%rax
  4011ef:	75 e2                	jne    4011d3 <__tmainCRTStartup+0x53>
  4011f1:	48 8b 35 a8 a6 00 00 	mov    0xa6a8(%rip),%rsi        # 40b8a0 <.refptr.__native_startup_state>
  4011f8:	31 ed                	xor    %ebp,%ebp
  4011fa:	8b 06                	mov    (%rsi),%eax
  4011fc:	83 f8 01             	cmp    $0x1,%eax
  4011ff:	0f 84 22 02 00 00    	je     401427 <__tmainCRTStartup+0x2a7>
  401205:	8b 06                	mov    (%rsi),%eax
  401207:	85 c0                	test   %eax,%eax
  401209:	0f 84 71 02 00 00    	je     401480 <__tmainCRTStartup+0x300>
  40120f:	c7 05 eb cd 00 00 01 	movl   $0x1,0xcdeb(%rip)        # 40e004 <has_cctor>
  401216:	00 00 00 
  401219:	8b 06                	mov    (%rsi),%eax
  40121b:	83 f8 01             	cmp    $0x1,%eax
  40121e:	0f 84 18 02 00 00    	je     40143c <__tmainCRTStartup+0x2bc>
  401224:	85 ed                	test   %ebp,%ebp
  401226:	0f 84 31 02 00 00    	je     40145d <__tmainCRTStartup+0x2dd>
  40122c:	48 8b 05 fd a5 00 00 	mov    0xa5fd(%rip),%rax        # 40b830 <.refptr.__dyn_tls_init_callback>
  401233:	48 8b 00             	mov    (%rax),%rax
  401236:	48 85 c0             	test   %rax,%rax
  401239:	74 0c                	je     401247 <__tmainCRTStartup+0xc7>
  40123b:	45 31 c0             	xor    %r8d,%r8d
  40123e:	ba 02 00 00 00       	mov    $0x2,%edx
  401243:	31 c9                	xor    %ecx,%ecx
  401245:	ff d0                	callq  *%rax
  401247:	e8 24 24 00 00       	callq  403670 <_pei386_runtime_relocator>
  40124c:	48 8d 0d 6d 29 00 00 	lea    0x296d(%rip),%rcx        # 403bc0 <_gnu_exception_handler>
  401253:	ff 15 43 f2 00 00    	callq  *0xf243(%rip)        # 41049c <__imp_SetUnhandledExceptionFilter>
  401259:	48 8b 15 20 a6 00 00 	mov    0xa620(%rip),%rdx        # 40b880 <.refptr.__mingw_oldexcpt_handler>
  401260:	48 89 02             	mov    %rax,(%rdx)
  401263:	e8 68 28 00 00       	callq  403ad0 <__mingw_init_ehandler>
  401268:	48 8d 0d 91 fd ff ff 	lea    -0x26f(%rip),%rcx        # 401000 <__mingw_invalidParameterHandler>
  40126f:	e8 5c 7e 00 00       	callq  4090d0 <_set_invalid_parameter_handler>
  401274:	e8 f7 21 00 00       	callq  403470 <_fpreset>
  401279:	48 8b 05 c0 a5 00 00 	mov    0xa5c0(%rip),%rax        # 40b840 <.refptr.__image_base__>
  401280:	48 89 05 e1 e0 00 00 	mov    %rax,0xe0e1(%rip)        # 40f368 <__mingw_winmain_hInstance>
  401287:	e8 54 7e 00 00       	callq  4090e0 <__p__acmdln>
  40128c:	31 c9                	xor    %ecx,%ecx
  40128e:	48 8b 00             	mov    (%rax),%rax
  401291:	48 85 c0             	test   %rax,%rax
  401294:	75 1c                	jne    4012b2 <__tmainCRTStartup+0x132>
  401296:	eb 5f                	jmp    4012f7 <__tmainCRTStartup+0x177>
  401298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40129f:	00 
  4012a0:	84 d2                	test   %dl,%dl
  4012a2:	74 2c                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a4:	83 e1 01             	and    $0x1,%ecx
  4012a7:	74 27                	je     4012d0 <__tmainCRTStartup+0x150>
  4012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
  4012ae:	48 83 c0 01          	add    $0x1,%rax
  4012b2:	0f b6 10             	movzbl (%rax),%edx
  4012b5:	80 fa 20             	cmp    $0x20,%dl
  4012b8:	7e e6                	jle    4012a0 <__tmainCRTStartup+0x120>
  4012ba:	41 89 c8             	mov    %ecx,%r8d
  4012bd:	41 83 f0 01          	xor    $0x1,%r8d
  4012c1:	80 fa 22             	cmp    $0x22,%dl
  4012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
  4012c8:	eb e4                	jmp    4012ae <__tmainCRTStartup+0x12e>
  4012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4012d0:	84 d2                	test   %dl,%dl
  4012d2:	75 11                	jne    4012e5 <__tmainCRTStartup+0x165>
  4012d4:	eb 1a                	jmp    4012f0 <__tmainCRTStartup+0x170>
  4012d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012dd:	00 00 00 
  4012e0:	80 fa 20             	cmp    $0x20,%dl
  4012e3:	7f 0b                	jg     4012f0 <__tmainCRTStartup+0x170>
  4012e5:	48 83 c0 01          	add    $0x1,%rax
  4012e9:	0f b6 10             	movzbl (%rax),%edx
  4012ec:	84 d2                	test   %dl,%dl
  4012ee:	75 f0                	jne    4012e0 <__tmainCRTStartup+0x160>
  4012f0:	48 89 05 69 e0 00 00 	mov    %rax,0xe069(%rip)        # 40f360 <__mingw_winmain_lpCmdLine>
  4012f7:	44 8b 07             	mov    (%rdi),%r8d
  4012fa:	45 85 c0             	test   %r8d,%r8d
  4012fd:	74 16                	je     401315 <__tmainCRTStartup+0x195>
  4012ff:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
  401304:	b8 0a 00 00 00       	mov    $0xa,%eax
  401309:	0f 85 f1 00 00 00    	jne    401400 <__tmainCRTStartup+0x280>
  40130f:	89 05 eb 8c 00 00    	mov    %eax,0x8ceb(%rip)        # 40a000 <__data_start__>
  401315:	8b 1d 05 cd 00 00    	mov    0xcd05(%rip),%ebx        # 40e020 <argc>
  40131b:	44 8d 63 01          	lea    0x1(%rbx),%r12d
  40131f:	4d 63 e4             	movslq %r12d,%r12
  401322:	49 c1 e4 03          	shl    $0x3,%r12
  401326:	4c 89 e1             	mov    %r12,%rcx
  401329:	e8 c2 7c 00 00       	callq  408ff0 <malloc>
  40132e:	85 db                	test   %ebx,%ebx
  401330:	48 8b 3d e1 cc 00 00 	mov    0xcce1(%rip),%rdi        # 40e018 <argv>
  401337:	48 89 c5             	mov    %rax,%rbp
  40133a:	7e 4b                	jle    401387 <__tmainCRTStartup+0x207>
  40133c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40133f:	31 db                	xor    %ebx,%ebx
  401341:	4c 8d 2c c5 08 00 00 	lea    0x8(,%rax,8),%r13
  401348:	00 
  401349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401350:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
  401354:	e8 77 7c 00 00       	callq  408fd0 <strlen>
  401359:	48 8d 70 01          	lea    0x1(%rax),%rsi
  40135d:	48 89 f1             	mov    %rsi,%rcx
  401360:	e8 8b 7c 00 00       	callq  408ff0 <malloc>
  401365:	49 89 f0             	mov    %rsi,%r8
  401368:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
  40136d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
  401371:	48 89 c1             	mov    %rax,%rcx
  401374:	48 83 c3 08          	add    $0x8,%rbx
  401378:	e8 6b 7c 00 00       	callq  408fe8 <memcpy>
  40137d:	49 39 dd             	cmp    %rbx,%r13
  401380:	75 ce                	jne    401350 <__tmainCRTStartup+0x1d0>
  401382:	4a 8d 44 25 f8       	lea    -0x8(%rbp,%r12,1),%rax
  401387:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40138e:	48 89 2d 83 cc 00 00 	mov    %rbp,0xcc83(%rip)        # 40e018 <argv>
  401395:	e8 96 1c 00 00       	callq  403030 <__main>
  40139a:	48 8b 05 af a4 00 00 	mov    0xa4af(%rip),%rax        # 40b850 <.refptr.__imp___initenv>
  4013a1:	48 8b 15 68 cc 00 00 	mov    0xcc68(%rip),%rdx        # 40e010 <envp>
  4013a8:	8b 0d 72 cc 00 00    	mov    0xcc72(%rip),%ecx        # 40e020 <argc>
  4013ae:	48 8b 00             	mov    (%rax),%rax
  4013b1:	48 89 10             	mov    %rdx,(%rax)
  4013b4:	4c 8b 05 55 cc 00 00 	mov    0xcc55(%rip),%r8        # 40e010 <envp>
  4013bb:	48 8b 15 56 cc 00 00 	mov    0xcc56(%rip),%rdx        # 40e018 <argv>
  4013c2:	e8 8c 16 00 00       	callq  402a53 <main>
  4013c7:	8b 0d 3b cc 00 00    	mov    0xcc3b(%rip),%ecx        # 40e008 <managedapp>
  4013cd:	89 05 39 cc 00 00    	mov    %eax,0xcc39(%rip)        # 40e00c <mainret>
  4013d3:	85 c9                	test   %ecx,%ecx
  4013d5:	0f 84 c3 00 00 00    	je     40149e <__tmainCRTStartup+0x31e>
  4013db:	8b 15 23 cc 00 00    	mov    0xcc23(%rip),%edx        # 40e004 <has_cctor>
  4013e1:	85 d2                	test   %edx,%edx
  4013e3:	75 0b                	jne    4013f0 <__tmainCRTStartup+0x270>
  4013e5:	e8 66 7c 00 00       	callq  409050 <_cexit>
  4013ea:	8b 05 1c cc 00 00    	mov    0xcc1c(%rip),%eax        # 40e00c <mainret>
  4013f0:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
  4013f7:	5b                   	pop    %rbx
  4013f8:	5e                   	pop    %rsi
  4013f9:	5f                   	pop    %rdi
  4013fa:	5d                   	pop    %rbp
  4013fb:	41 5c                	pop    %r12
  4013fd:	41 5d                	pop    %r13
  4013ff:	c3                   	retq   
  401400:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
  401405:	e9 05 ff ff ff       	jmpq   40130f <__tmainCRTStartup+0x18f>
  40140a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401410:	48 8b 35 89 a4 00 00 	mov    0xa489(%rip),%rsi        # 40b8a0 <.refptr.__native_startup_state>
  401417:	bd 01 00 00 00       	mov    $0x1,%ebp
  40141c:	8b 06                	mov    (%rsi),%eax
  40141e:	83 f8 01             	cmp    $0x1,%eax
  401421:	0f 85 de fd ff ff    	jne    401205 <__tmainCRTStartup+0x85>
  401427:	b9 1f 00 00 00       	mov    $0x1f,%ecx
  40142c:	e8 27 7c 00 00       	callq  409058 <_amsg_exit>
  401431:	8b 06                	mov    (%rsi),%eax
  401433:	83 f8 01             	cmp    $0x1,%eax
  401436:	0f 85 e8 fd ff ff    	jne    401224 <__tmainCRTStartup+0xa4>
  40143c:	48 8b 15 8d a4 00 00 	mov    0xa48d(%rip),%rdx        # 40b8d0 <.refptr.__xc_z>
  401443:	48 8b 0d 76 a4 00 00 	mov    0xa476(%rip),%rcx        # 40b8c0 <.refptr.__xc_a>
  40144a:	e8 f1 7b 00 00       	callq  409040 <_initterm>
  40144f:	85 ed                	test   %ebp,%ebp
  401451:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
  401457:	0f 85 cf fd ff ff    	jne    40122c <__tmainCRTStartup+0xac>
  40145d:	31 c0                	xor    %eax,%eax
  40145f:	48 87 03             	xchg   %rax,(%rbx)
  401462:	e9 c5 fd ff ff       	jmpq   40122c <__tmainCRTStartup+0xac>
  401467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40146e:	00 00 
  401470:	48 89 d1             	mov    %rdx,%rcx
  401473:	ff 15 c3 ef 00 00    	callq  *0xefc3(%rip)        # 41043c <__imp_GetStartupInfoA>
  401479:	e9 36 fd ff ff       	jmpq   4011b4 <__tmainCRTStartup+0x34>
  40147e:	66 90                	xchg   %ax,%ax
  401480:	48 8b 15 69 a4 00 00 	mov    0xa469(%rip),%rdx        # 40b8f0 <.refptr.__xi_z>
  401487:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
  40148d:	48 8b 0d 4c a4 00 00 	mov    0xa44c(%rip),%rcx        # 40b8e0 <.refptr.__xi_a>
  401494:	e8 a7 7b 00 00       	callq  409040 <_initterm>
  401499:	e9 7b fd ff ff       	jmpq   401219 <__tmainCRTStartup+0x99>
  40149e:	89 c1                	mov    %eax,%ecx
  4014a0:	e8 7b 7b 00 00       	callq  409020 <exit>
  4014a5:	90                   	nop
  4014a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014ad:	00 00 00 

00000000004014b0 <WinMainCRTStartup>:
  4014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014b4 <.l_startw>:
  4014b4:	48 8b 05 95 a4 00 00 	mov    0xa495(%rip),%rax        # 40b950 <.refptr.mingw_app_type>
  4014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  4014c1:	e8 aa 1b 00 00       	callq  403070 <__security_init_cookie>
  4014c6:	e8 b5 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014cb:	90                   	nop

00000000004014cc <.l_endw>:
  4014cc:	90                   	nop
  4014cd:	48 83 c4 28          	add    $0x28,%rsp
  4014d1:	c3                   	retq   
  4014d2:	0f 1f 40 00          	nopl   0x0(%rax)
  4014d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4014dd:	00 00 00 

00000000004014e0 <mainCRTStartup>:
  4014e0:	48 83 ec 28          	sub    $0x28,%rsp

00000000004014e4 <.l_start>:
  4014e4:	48 8b 05 65 a4 00 00 	mov    0xa465(%rip),%rax        # 40b950 <.refptr.mingw_app_type>
  4014eb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4014f1:	e8 7a 1b 00 00       	callq  403070 <__security_init_cookie>
  4014f6:	e8 85 fc ff ff       	callq  401180 <__tmainCRTStartup>
  4014fb:	90                   	nop

00000000004014fc <.l_end>:
  4014fc:	90                   	nop
  4014fd:	48 83 c4 28          	add    $0x28,%rsp
  401501:	c3                   	retq   
  401502:	0f 1f 40 00          	nopl   0x0(%rax)
  401506:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40150d:	00 00 00 

0000000000401510 <atexit>:
  401510:	48 83 ec 28          	sub    $0x28,%rsp
  401514:	e8 1f 7b 00 00       	callq  409038 <_onexit>
  401519:	48 85 c0             	test   %rax,%rax
  40151c:	0f 94 c0             	sete   %al
  40151f:	0f b6 c0             	movzbl %al,%eax
  401522:	f7 d8                	neg    %eax
  401524:	48 83 c4 28          	add    $0x28,%rsp
  401528:	c3                   	retq   
  401529:	90                   	nop
  40152a:	90                   	nop
  40152b:	90                   	nop
  40152c:	90                   	nop
  40152d:	90                   	nop
  40152e:	90                   	nop
  40152f:	90                   	nop

0000000000401530 <__gcc_register_frame>:
  401530:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 401540 <__gcc_deregister_frame>
  401537:	e9 d4 ff ff ff       	jmpq   401510 <atexit>
  40153c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401540 <__gcc_deregister_frame>:
  401540:	c3                   	retq   
  401541:	90                   	nop
  401542:	90                   	nop
  401543:	90                   	nop
  401544:	90                   	nop
  401545:	90                   	nop
  401546:	90                   	nop
  401547:	90                   	nop
  401548:	90                   	nop
  401549:	90                   	nop
  40154a:	90                   	nop
  40154b:	90                   	nop
  40154c:	90                   	nop
  40154d:	90                   	nop
  40154e:	90                   	nop
}

__mingw_ovr
__attribute__((__format__ (gnu_printf, 3, 0))) __MINGW_ATTRIB_NONNULL(3)
int vsnprintf (char *__stream, size_t __n, const char *__format, __builtin_va_list __local_argv)
{
  40154f:	90                   	nop

0000000000401550 <_ZL9vsnprintfPcyPKcS_>:
  401550:	55                   	push   %rbp
  401551:	48 89 e5             	mov    %rsp,%rbp
  401554:	48 83 ec 20          	sub    $0x20,%rsp
  401558:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40155c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  401560:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  401564:	4c 89 4d 28          	mov    %r9,0x28(%rbp)
  return __mingw_vsnprintf( __stream, __n, __format, __local_argv );
  401568:	48 8b 4d 28          	mov    0x28(%rbp),%rcx
  40156c:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  401570:	48 8b 45 18          	mov    0x18(%rbp),%rax
  401574:	49 89 c9             	mov    %rcx,%r9
  401577:	49 89 d0             	mov    %rdx,%r8
  40157a:	48 89 c2             	mov    %rax,%rdx
  40157d:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  401581:	e8 ca 2e 00 00       	callq  404450 <__mingw_vsnprintf>
}
  401586:	48 83 c4 20          	add    $0x20,%rsp
  40158a:	5d                   	pop    %rbp
  40158b:	c3                   	retq   

000000000040158c <_Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:

using namespace std;

/*countWords function to count the number of inputs in first line*/
int countWords(string str)
{
  40158c:	55                   	push   %rbp
  40158d:	53                   	push   %rbx
  40158e:	48 81 ec d8 01 00 00 	sub    $0x1d8,%rsp
  401595:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40159c:	00 
  40159d:	48 89 8d 70 01 00 00 	mov    %rcx,0x170(%rbp)
    stringstream s(str);
  4015a4:	ba 08 00 00 00       	mov    $0x8,%edx
  4015a9:	b9 10 00 00 00       	mov    $0x10,%ecx
  4015ae:	e8 5d 81 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  4015b3:	89 c2                	mov    %eax,%edx
  4015b5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4015b9:	41 89 d0             	mov    %edx,%r8d
  4015bc:	48 8b 95 70 01 00 00 	mov    0x170(%rbp),%rdx
  4015c3:	48 89 c1             	mov    %rax,%rcx
  4015c6:	e8 9d 18 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    string word;
  4015cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4015cf:	48 89 c1             	mov    %rax,%rcx
  4015d2:	e8 a9 18 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>

    int count = 0;
  4015d7:	c7 85 4c 01 00 00 00 	movl   $0x0,0x14c(%rbp)
  4015de:	00 00 00 

    while (s >> word)
  4015e1:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4015e5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4015e9:	48 89 c1             	mov    %rax,%rcx
  4015ec:	e8 2f 18 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  4015f1:	48 8b 10             	mov    (%rax),%rdx
  4015f4:	48 83 ea 18          	sub    $0x18,%rdx
  4015f8:	48 8b 12             	mov    (%rdx),%rdx
  4015fb:	48 01 d0             	add    %rdx,%rax
  4015fe:	48 89 c1             	mov    %rax,%rcx
  401601:	e8 2a 19 00 00       	callq  402f30 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
  401606:	84 c0                	test   %al,%al
  401608:	74 09                	je     401613 <_Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x87>
    {
        count++;
  40160a:	83 85 4c 01 00 00 01 	addl   $0x1,0x14c(%rbp)
    while (s >> word)
  401611:	eb ce                	jmp    4015e1 <_Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x55>
    }

    return count;
  401613:	8b 9d 4c 01 00 00    	mov    0x14c(%rbp),%ebx
    string word;
  401619:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40161d:	48 89 c1             	mov    %rax,%rcx
  401620:	e8 53 18 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    stringstream s(str);
  401625:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401629:	48 89 c1             	mov    %rax,%rcx
  40162c:	e8 2f 18 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
    return count;
  401631:	89 d8                	mov    %ebx,%eax
  401633:	eb 26                	jmp    40165b <_Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xcf>
  401635:	48 89 c3             	mov    %rax,%rbx
    string word;
  401638:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40163c:	48 89 c1             	mov    %rax,%rcx
  40163f:	e8 34 18 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    stringstream s(str);
  401644:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401648:	48 89 c1             	mov    %rax,%rcx
  40164b:	e8 10 18 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  401650:	48 89 d8             	mov    %rbx,%rax
  401653:	48 89 c1             	mov    %rax,%rcx
  401656:	e8 a5 2d 00 00       	callq  404400 <_Unwind_Resume>
}
  40165b:	48 81 c4 d8 01 00 00 	add    $0x1d8,%rsp
  401662:	5b                   	pop    %rbx
  401663:	5d                   	pop    %rbp
  401664:	c3                   	retq   

0000000000401665 <_Z13No_Test_CasesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPi>:
/*No_Test_Cases function to check first input to know the number of test cases*/
void No_Test_Cases(string str, int count, int *output)
{
  401665:	55                   	push   %rbp
  401666:	53                   	push   %rbx
  401667:	48 81 ec d8 01 00 00 	sub    $0x1d8,%rsp
  40166e:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401675:	00 
  401676:	48 89 8d 70 01 00 00 	mov    %rcx,0x170(%rbp)
  40167d:	89 95 78 01 00 00    	mov    %edx,0x178(%rbp)
  401683:	4c 89 85 80 01 00 00 	mov    %r8,0x180(%rbp)
    stringstream s(str);
  40168a:	ba 08 00 00 00       	mov    $0x8,%edx
  40168f:	b9 10 00 00 00       	mov    $0x10,%ecx
  401694:	e8 77 80 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  401699:	89 c2                	mov    %eax,%edx
  40169b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40169f:	41 89 d0             	mov    %edx,%r8d
  4016a2:	48 8b 95 70 01 00 00 	mov    0x170(%rbp),%rdx
  4016a9:	48 89 c1             	mov    %rax,%rcx
  4016ac:	e8 b7 17 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
    string word;
  4016b1:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4016b5:	48 89 c1             	mov    %rax,%rcx
  4016b8:	e8 c3 17 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    while (count)
  4016bd:	83 bd 78 01 00 00 00 	cmpl   $0x0,0x178(%rbp)
  4016c4:	74 44                	je     40170a <_Z13No_Test_CasesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPi+0xa5>
    {
        s >> output[count - 1];
  4016c6:	8b 85 78 01 00 00    	mov    0x178(%rbp),%eax
  4016cc:	48 98                	cltq   
  4016ce:	48 c1 e0 02          	shl    $0x2,%rax
  4016d2:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
  4016d6:	48 8b 85 80 01 00 00 	mov    0x180(%rbp),%rax
  4016dd:	48 01 c2             	add    %rax,%rdx
  4016e0:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4016e4:	48 89 c1             	mov    %rax,%rcx
  4016e7:	e8 24 18 00 00       	callq  402f10 <_ZNSirsERi>
        s.clear();
  4016ec:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4016f0:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  4016f4:	ba 00 00 00 00       	mov    $0x0,%edx
  4016f9:	48 89 c1             	mov    %rax,%rcx
  4016fc:	e8 47 17 00 00       	callq  402e48 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>
        count--;
  401701:	83 ad 78 01 00 00 01 	subl   $0x1,0x178(%rbp)
    while (count)
  401708:	eb b3                	jmp    4016bd <_Z13No_Test_CasesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPi+0x58>
    string word;
  40170a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40170e:	48 89 c1             	mov    %rax,%rcx
  401711:	e8 62 17 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    stringstream s(str);
  401716:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40171a:	48 89 c1             	mov    %rax,%rcx
  40171d:	e8 3e 17 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
    }
}
  401722:	eb 27                	jmp    40174b <_Z13No_Test_CasesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPi+0xe6>
  401724:	48 89 c3             	mov    %rax,%rbx
    string word;
  401727:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40172b:	48 89 c1             	mov    %rax,%rcx
  40172e:	e8 45 17 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    stringstream s(str);
  401733:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401737:	48 89 c1             	mov    %rax,%rcx
  40173a:	e8 21 17 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  40173f:	48 89 d8             	mov    %rbx,%rax
  401742:	48 89 c1             	mov    %rax,%rcx
  401745:	e8 b6 2c 00 00       	callq  404400 <_Unwind_Resume>
  40174a:	90                   	nop
}
  40174b:	48 81 c4 d8 01 00 00 	add    $0x1d8,%rsp
  401752:	5b                   	pop    %rbx
  401753:	5d                   	pop    %rbp
  401754:	c3                   	retq   

0000000000401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
/*check_files_Types function to check file extensions type*/
char check_files_Types(string input)
{
  401755:	55                   	push   %rbp
  401756:	41 54                	push   %r12
  401758:	57                   	push   %rdi
  401759:	56                   	push   %rsi
  40175a:	53                   	push   %rbx
  40175b:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  401762:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401769:	00 
  40176a:	48 89 8d f0 00 00 00 	mov    %rcx,0xf0(%rbp)
    /////////////////////// music ///////////////////////
    if (input.substr(input.find_last_of(".") + 1) == "mp3" || input.substr(input.find_last_of(".") + 1) == "aac" || input.substr(input.find_last_of(".") + 1) == "flac")
  401771:	bb 00 00 00 00       	mov    $0x0,%ebx
  401776:	be 00 00 00 00       	mov    $0x0,%esi
  40177b:	bf 00 00 00 00       	mov    $0x0,%edi
  401780:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401787:	48 8d 15 1a 99 00 00 	lea    0x991a(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  40178e:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401795:	e8 d6 17 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  40179a:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40179e:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4017a2:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  4017a9:	49 89 d0             	mov    %rdx,%r8
  4017ac:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  4017b3:	48 89 c1             	mov    %rax,%rcx
  4017b6:	e8 95 17 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  4017bb:	bb 01 00 00 00       	mov    $0x1,%ebx
  4017c0:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4017c4:	48 8d 15 df 98 00 00 	lea    0x98df(%rip),%rdx        # 40b0aa <_ZNSt8__detailL19_S_invalid_state_idE+0x6>
  4017cb:	48 89 c1             	mov    %rax,%rcx
  4017ce:	e8 0d 7f 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  4017d3:	84 c0                	test   %al,%al
  4017d5:	0f 85 ae 00 00 00    	jne    401889 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x134>
  4017db:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  4017e2:	48 8d 15 bf 98 00 00 	lea    0x98bf(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  4017e9:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  4017f0:	e8 7b 17 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  4017f5:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4017f9:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4017fd:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401804:	49 89 d0             	mov    %rdx,%r8
  401807:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  40180e:	48 89 c1             	mov    %rax,%rcx
  401811:	e8 3a 17 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401816:	be 01 00 00 00       	mov    $0x1,%esi
  40181b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  40181f:	48 8d 15 88 98 00 00 	lea    0x9888(%rip),%rdx        # 40b0ae <_ZNSt8__detailL19_S_invalid_state_idE+0xa>
  401826:	48 89 c1             	mov    %rax,%rcx
  401829:	e8 b2 7e 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  40182e:	84 c0                	test   %al,%al
  401830:	75 57                	jne    401889 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x134>
  401832:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401839:	48 8d 15 68 98 00 00 	lea    0x9868(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  401840:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401847:	e8 24 17 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  40184c:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401850:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401854:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  40185b:	49 89 d0             	mov    %rdx,%r8
  40185e:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401865:	48 89 c1             	mov    %rax,%rcx
  401868:	e8 e3 16 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  40186d:	bf 01 00 00 00       	mov    $0x1,%edi
  401872:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401876:	48 8d 15 35 98 00 00 	lea    0x9835(%rip),%rdx        # 40b0b2 <_ZNSt8__detailL19_S_invalid_state_idE+0xe>
  40187d:	48 89 c1             	mov    %rax,%rcx
  401880:	e8 5b 7e 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401885:	84 c0                	test   %al,%al
  401887:	74 08                	je     401891 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x13c>
  401889:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  40188f:	eb 06                	jmp    401897 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x142>
  401891:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  401897:	40 84 ff             	test   %dil,%dil
  40189a:	74 0c                	je     4018a8 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x153>
  40189c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4018a0:	48 89 c1             	mov    %rax,%rcx
  4018a3:	e8 d0 15 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4018a8:	40 84 f6             	test   %sil,%sil
  4018ab:	74 0c                	je     4018b9 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x164>
  4018ad:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  4018b1:	48 89 c1             	mov    %rax,%rcx
  4018b4:	e8 bf 15 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4018b9:	84 db                	test   %bl,%bl
  4018bb:	74 0c                	je     4018c9 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x174>
  4018bd:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4018c1:	48 89 c1             	mov    %rax,%rcx
  4018c4:	e8 af 15 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4018c9:	45 84 e4             	test   %r12b,%r12b
  4018cc:	74 0a                	je     4018d8 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x183>
    {

        return 1;
  4018ce:	b8 01 00 00 00       	mov    $0x1,%eax
  4018d3:	e9 be 03 00 00       	jmpq   401c96 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x541>
    }
    /////////////////////// images ///////////////////////
    else if (input.substr(input.find_last_of(".") + 1) == "jpg" || input.substr(input.find_last_of(".") + 1) == "bmp" || input.substr(input.find_last_of(".") + 1) == "gif")
  4018d8:	bb 00 00 00 00       	mov    $0x0,%ebx
  4018dd:	be 00 00 00 00       	mov    $0x0,%esi
  4018e2:	bf 00 00 00 00       	mov    $0x0,%edi
  4018e7:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  4018ee:	48 8d 15 b3 97 00 00 	lea    0x97b3(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  4018f5:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  4018fc:	e8 6f 16 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  401901:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401905:	48 89 e8             	mov    %rbp,%rax
  401908:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  40190f:	49 89 d0             	mov    %rdx,%r8
  401912:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401919:	48 89 c1             	mov    %rax,%rcx
  40191c:	e8 2f 16 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401921:	bb 01 00 00 00       	mov    $0x1,%ebx
  401926:	48 89 e8             	mov    %rbp,%rax
  401929:	48 8d 15 87 97 00 00 	lea    0x9787(%rip),%rdx        # 40b0b7 <_ZNSt8__detailL19_S_invalid_state_idE+0x13>
  401930:	48 89 c1             	mov    %rax,%rcx
  401933:	e8 a8 7d 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401938:	84 c0                	test   %al,%al
  40193a:	0f 85 ae 00 00 00    	jne    4019ee <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x299>
  401940:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401947:	48 8d 15 5a 97 00 00 	lea    0x975a(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  40194e:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401955:	e8 16 16 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  40195a:	48 8d 50 01          	lea    0x1(%rax),%rdx
  40195e:	48 8d 45 20          	lea    0x20(%rbp),%rax
  401962:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401969:	49 89 d0             	mov    %rdx,%r8
  40196c:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401973:	48 89 c1             	mov    %rax,%rcx
  401976:	e8 d5 15 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  40197b:	be 01 00 00 00       	mov    $0x1,%esi
  401980:	48 8d 45 20          	lea    0x20(%rbp),%rax
  401984:	48 8d 15 30 97 00 00 	lea    0x9730(%rip),%rdx        # 40b0bb <_ZNSt8__detailL19_S_invalid_state_idE+0x17>
  40198b:	48 89 c1             	mov    %rax,%rcx
  40198e:	e8 4d 7d 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401993:	84 c0                	test   %al,%al
  401995:	75 57                	jne    4019ee <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x299>
  401997:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  40199e:	48 8d 15 03 97 00 00 	lea    0x9703(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  4019a5:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  4019ac:	e8 bf 15 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  4019b1:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4019b5:	48 8d 45 40          	lea    0x40(%rbp),%rax
  4019b9:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  4019c0:	49 89 d0             	mov    %rdx,%r8
  4019c3:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  4019ca:	48 89 c1             	mov    %rax,%rcx
  4019cd:	e8 7e 15 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  4019d2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d7:	48 8d 45 40          	lea    0x40(%rbp),%rax
  4019db:	48 8d 15 dd 96 00 00 	lea    0x96dd(%rip),%rdx        # 40b0bf <_ZNSt8__detailL19_S_invalid_state_idE+0x1b>
  4019e2:	48 89 c1             	mov    %rax,%rcx
  4019e5:	e8 f6 7c 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  4019ea:	84 c0                	test   %al,%al
  4019ec:	74 08                	je     4019f6 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2a1>
  4019ee:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  4019f4:	eb 06                	jmp    4019fc <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2a7>
  4019f6:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  4019fc:	40 84 ff             	test   %dil,%dil
  4019ff:	74 0c                	je     401a0d <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2b8>
  401a01:	48 8d 45 40          	lea    0x40(%rbp),%rax
  401a05:	48 89 c1             	mov    %rax,%rcx
  401a08:	e8 6b 14 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401a0d:	40 84 f6             	test   %sil,%sil
  401a10:	74 0c                	je     401a1e <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2c9>
  401a12:	48 8d 45 20          	lea    0x20(%rbp),%rax
  401a16:	48 89 c1             	mov    %rax,%rcx
  401a19:	e8 5a 14 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401a1e:	84 db                	test   %bl,%bl
  401a20:	74 0b                	je     401a2d <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2d8>
  401a22:	48 89 e8             	mov    %rbp,%rax
  401a25:	48 89 c1             	mov    %rax,%rcx
  401a28:	e8 4b 14 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401a2d:	45 84 e4             	test   %r12b,%r12b
  401a30:	74 0a                	je     401a3c <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x2e7>
    {
        return 2;
  401a32:	b8 02 00 00 00       	mov    $0x2,%eax
  401a37:	e9 5a 02 00 00       	jmpq   401c96 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x541>
    }
    ///////////////////////// Movie ///////////////////////
    else if (input.substr(input.find_last_of(".") + 1) == "mp4" || input.substr(input.find_last_of(".") + 1) == "avi" || input.substr(input.find_last_of(".") + 1) == "mkv")
  401a3c:	bb 00 00 00 00       	mov    $0x0,%ebx
  401a41:	be 00 00 00 00       	mov    $0x0,%esi
  401a46:	bf 00 00 00 00       	mov    $0x0,%edi
  401a4b:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401a52:	48 8d 15 4f 96 00 00 	lea    0x964f(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  401a59:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401a60:	e8 0b 15 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  401a65:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401a69:	48 8d 45 60          	lea    0x60(%rbp),%rax
  401a6d:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401a74:	49 89 d0             	mov    %rdx,%r8
  401a77:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401a7e:	48 89 c1             	mov    %rax,%rcx
  401a81:	e8 ca 14 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401a86:	bb 01 00 00 00       	mov    $0x1,%ebx
  401a8b:	48 8d 45 60          	lea    0x60(%rbp),%rax
  401a8f:	48 8d 15 2d 96 00 00 	lea    0x962d(%rip),%rdx        # 40b0c3 <_ZNSt8__detailL19_S_invalid_state_idE+0x1f>
  401a96:	48 89 c1             	mov    %rax,%rcx
  401a99:	e8 42 7c 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401a9e:	84 c0                	test   %al,%al
  401aa0:	0f 85 ba 00 00 00    	jne    401b60 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x40b>
  401aa6:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401aad:	48 8d 15 f4 95 00 00 	lea    0x95f4(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  401ab4:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401abb:	e8 b0 14 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  401ac0:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401ac4:	48 8d 85 80 00 00 00 	lea    0x80(%rbp),%rax
  401acb:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401ad2:	49 89 d0             	mov    %rdx,%r8
  401ad5:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401adc:	48 89 c1             	mov    %rax,%rcx
  401adf:	e8 6c 14 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401ae4:	be 01 00 00 00       	mov    $0x1,%esi
  401ae9:	48 8d 85 80 00 00 00 	lea    0x80(%rbp),%rax
  401af0:	48 8d 15 d0 95 00 00 	lea    0x95d0(%rip),%rdx        # 40b0c7 <_ZNSt8__detailL19_S_invalid_state_idE+0x23>
  401af7:	48 89 c1             	mov    %rax,%rcx
  401afa:	e8 e1 7b 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401aff:	84 c0                	test   %al,%al
  401b01:	75 5d                	jne    401b60 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x40b>
  401b03:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
  401b0a:	48 8d 15 97 95 00 00 	lea    0x9597(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  401b11:	48 8b 8d f0 00 00 00 	mov    0xf0(%rbp),%rcx
  401b18:	e8 53 14 00 00       	callq  402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  401b1d:	48 8d 50 01          	lea    0x1(%rax),%rdx
  401b21:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
  401b28:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
  401b2f:	49 89 d0             	mov    %rdx,%r8
  401b32:	48 8b 95 f0 00 00 00 	mov    0xf0(%rbp),%rdx
  401b39:	48 89 c1             	mov    %rax,%rcx
  401b3c:	e8 0f 14 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401b41:	bf 01 00 00 00       	mov    $0x1,%edi
  401b46:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
  401b4d:	48 8d 15 77 95 00 00 	lea    0x9577(%rip),%rdx        # 40b0cb <_ZNSt8__detailL19_S_invalid_state_idE+0x27>
  401b54:	48 89 c1             	mov    %rax,%rcx
  401b57:	e8 84 7b 00 00       	callq  4096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
  401b5c:	84 c0                	test   %al,%al
  401b5e:	74 08                	je     401b68 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x413>
  401b60:	41 bc 01 00 00 00    	mov    $0x1,%r12d
  401b66:	eb 06                	jmp    401b6e <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x419>
  401b68:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  401b6e:	40 84 ff             	test   %dil,%dil
  401b71:	74 0f                	je     401b82 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x42d>
  401b73:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
  401b7a:	48 89 c1             	mov    %rax,%rcx
  401b7d:	e8 f6 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401b82:	40 84 f6             	test   %sil,%sil
  401b85:	74 0f                	je     401b96 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x441>
  401b87:	48 8d 85 80 00 00 00 	lea    0x80(%rbp),%rax
  401b8e:	48 89 c1             	mov    %rax,%rcx
  401b91:	e8 e2 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401b96:	84 db                	test   %bl,%bl
  401b98:	74 0c                	je     401ba6 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x451>
  401b9a:	48 8d 45 60          	lea    0x60(%rbp),%rax
  401b9e:	48 89 c1             	mov    %rax,%rcx
  401ba1:	e8 d2 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401ba6:	45 84 e4             	test   %r12b,%r12b
  401ba9:	74 0a                	je     401bb5 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x460>
    {
        return 3;
  401bab:	b8 03 00 00 00       	mov    $0x3,%eax
  401bb0:	e9 e1 00 00 00       	jmpq   401c96 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x541>
    }
    /////////////////////// others ///////////////////////
    else
    {
        return 0;
  401bb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401bba:	e9 d7 00 00 00       	jmpq   401c96 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x541>
  401bbf:	49 89 c4             	mov    %rax,%r12
    if (input.substr(input.find_last_of(".") + 1) == "mp3" || input.substr(input.find_last_of(".") + 1) == "aac" || input.substr(input.find_last_of(".") + 1) == "flac")
  401bc2:	40 84 ff             	test   %dil,%dil
  401bc5:	74 0c                	je     401bd3 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x47e>
  401bc7:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401bcb:	48 89 c1             	mov    %rax,%rcx
  401bce:	e8 a5 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401bd3:	4c 89 e7             	mov    %r12,%rdi
  401bd6:	40 84 f6             	test   %sil,%sil
  401bd9:	74 0c                	je     401be7 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x492>
  401bdb:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401bdf:	48 89 c1             	mov    %rax,%rcx
  401be2:	e8 91 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401be7:	48 89 fe             	mov    %rdi,%rsi
  401bea:	84 db                	test   %bl,%bl
  401bec:	74 0c                	je     401bfa <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x4a5>
  401bee:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  401bf2:	48 89 c1             	mov    %rax,%rcx
  401bf5:	e8 7e 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401bfa:	48 89 f0             	mov    %rsi,%rax
  401bfd:	48 89 c1             	mov    %rax,%rcx
  401c00:	e8 fb 27 00 00       	callq  404400 <_Unwind_Resume>
  401c05:	49 89 c4             	mov    %rax,%r12
    else if (input.substr(input.find_last_of(".") + 1) == "jpg" || input.substr(input.find_last_of(".") + 1) == "bmp" || input.substr(input.find_last_of(".") + 1) == "gif")
  401c08:	40 84 ff             	test   %dil,%dil
  401c0b:	74 0c                	je     401c19 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x4c4>
  401c0d:	48 8d 45 40          	lea    0x40(%rbp),%rax
  401c11:	48 89 c1             	mov    %rax,%rcx
  401c14:	e8 5f 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c19:	4c 89 e7             	mov    %r12,%rdi
  401c1c:	40 84 f6             	test   %sil,%sil
  401c1f:	74 0c                	je     401c2d <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x4d8>
  401c21:	48 8d 45 20          	lea    0x20(%rbp),%rax
  401c25:	48 89 c1             	mov    %rax,%rcx
  401c28:	e8 4b 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c2d:	48 89 fe             	mov    %rdi,%rsi
  401c30:	84 db                	test   %bl,%bl
  401c32:	74 0b                	je     401c3f <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x4ea>
  401c34:	48 89 e8             	mov    %rbp,%rax
  401c37:	48 89 c1             	mov    %rax,%rcx
  401c3a:	e8 39 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c3f:	48 89 f0             	mov    %rsi,%rax
  401c42:	48 89 c1             	mov    %rax,%rcx
  401c45:	e8 b6 27 00 00       	callq  404400 <_Unwind_Resume>
  401c4a:	49 89 c4             	mov    %rax,%r12
    else if (input.substr(input.find_last_of(".") + 1) == "mp4" || input.substr(input.find_last_of(".") + 1) == "avi" || input.substr(input.find_last_of(".") + 1) == "mkv")
  401c4d:	40 84 ff             	test   %dil,%dil
  401c50:	74 0f                	je     401c61 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x50c>
  401c52:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
  401c59:	48 89 c1             	mov    %rax,%rcx
  401c5c:	e8 17 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c61:	4c 89 e7             	mov    %r12,%rdi
  401c64:	40 84 f6             	test   %sil,%sil
  401c67:	74 0f                	je     401c78 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x523>
  401c69:	48 8d 85 80 00 00 00 	lea    0x80(%rbp),%rax
  401c70:	48 89 c1             	mov    %rax,%rcx
  401c73:	e8 00 12 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c78:	48 89 fe             	mov    %rdi,%rsi
  401c7b:	84 db                	test   %bl,%bl
  401c7d:	74 0c                	je     401c8b <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x536>
  401c7f:	48 8d 45 60          	lea    0x60(%rbp),%rax
  401c83:	48 89 c1             	mov    %rax,%rcx
  401c86:	e8 ed 11 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401c8b:	48 89 f0             	mov    %rsi,%rax
  401c8e:	48 89 c1             	mov    %rax,%rcx
  401c91:	e8 6a 27 00 00       	callq  404400 <_Unwind_Resume>
    }
}
  401c96:	48 81 c4 40 01 00 00 	add    $0x140,%rsp
  401c9d:	5b                   	pop    %rbx
  401c9e:	5e                   	pop    %rsi
  401c9f:	5f                   	pop    %rdi
  401ca0:	41 5c                	pop    %r12
  401ca2:	5d                   	pop    %rbp
  401ca3:	c3                   	retq   

0000000000401ca4 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_>:
/*get_test_cases function to check check each test case file extension then calculate the size in each category*/
void get_test_cases(int *No_cases, int size, string *files[], int *counters, string *out)
{
  401ca4:	55                   	push   %rbp
  401ca5:	56                   	push   %rsi
  401ca6:	53                   	push   %rbx
  401ca7:	48 81 ec 90 06 00 00 	sub    $0x690,%rsp
  401cae:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  401cb5:	00 
  401cb6:	48 89 8d 30 06 00 00 	mov    %rcx,0x630(%rbp)
  401cbd:	89 95 38 06 00 00    	mov    %edx,0x638(%rbp)
  401cc3:	4c 89 85 40 06 00 00 	mov    %r8,0x640(%rbp)
  401cca:	4c 89 8d 48 06 00 00 	mov    %r9,0x648(%rbp)

    for (int i = size - 2; i >= 0; i--)
  401cd1:	8b 85 38 06 00 00    	mov    0x638(%rbp),%eax
  401cd7:	83 e8 02             	sub    $0x2,%eax
  401cda:	89 85 0c 06 00 00    	mov    %eax,0x60c(%rbp)
  401ce0:	83 bd 0c 06 00 00 00 	cmpl   $0x0,0x60c(%rbp)
  401ce7:	0f 88 5a 0d 00 00    	js     402a47 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xda3>
    {
        int count;
        int testCase = No_cases[i];
  401ced:	8b 85 0c 06 00 00    	mov    0x60c(%rbp),%eax
  401cf3:	48 98                	cltq   
  401cf5:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401cfc:	00 
  401cfd:	48 8b 85 30 06 00 00 	mov    0x630(%rbp),%rax
  401d04:	48 01 d0             	add    %rdx,%rax
  401d07:	8b 00                	mov    (%rax),%eax
  401d09:	89 85 04 06 00 00    	mov    %eax,0x604(%rbp)
        // files[i] = new string[testCase];
        for (int j = 0; j < testCase; j++)
  401d0f:	c7 85 08 06 00 00 00 	movl   $0x0,0x608(%rbp)
  401d16:	00 00 00 
  401d19:	8b 85 08 06 00 00    	mov    0x608(%rbp),%eax
  401d1f:	3b 85 04 06 00 00    	cmp    0x604(%rbp),%eax
  401d25:	0f 8d 06 08 00 00    	jge    402531 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x88d>
        {
            string size;
  401d2b:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  401d2f:	48 89 c1             	mov    %rax,%rcx
  401d32:	e8 49 11 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
            string input;
  401d37:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401d3b:	48 89 c1             	mov    %rax,%rcx
  401d3e:	e8 3d 11 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
            getline(cin, input);
  401d43:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401d47:	48 89 c2             	mov    %rax,%rdx
  401d4a:	48 8b 0d 7f 9a 00 00 	mov    0x9a7f(%rip),%rcx        # 40b7d0 <__fu1__ZSt3cin>
  401d51:	e8 da 10 00 00       	callq  402e30 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
            // files[i][j] = input;
            stringstream s(input);
  401d56:	ba 08 00 00 00       	mov    $0x8,%edx
  401d5b:	b9 10 00 00 00       	mov    $0x10,%ecx
  401d60:	e8 ab 79 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  401d65:	89 c1                	mov    %eax,%ecx
  401d67:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  401d6b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401d6f:	41 89 c8             	mov    %ecx,%r8d
  401d72:	48 89 c1             	mov    %rax,%rcx
  401d75:	e8 ee 10 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
            while (s >> input)
  401d7a:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  401d7e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401d82:	48 89 c1             	mov    %rax,%rcx
  401d85:	e8 96 10 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  401d8a:	48 8b 10             	mov    (%rax),%rdx
  401d8d:	48 83 ea 18          	sub    $0x18,%rdx
  401d91:	48 8b 12             	mov    (%rdx),%rdx
  401d94:	48 01 d0             	add    %rdx,%rax
  401d97:	48 89 c1             	mov    %rax,%rcx
  401d9a:	e8 91 11 00 00       	callq  402f30 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
  401d9f:	84 c0                	test   %al,%al
  401da1:	0f 84 5a 07 00 00    	je     402501 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x85d>
            {
                /*Convert file names to lower case to check on extensions with solving case sensitivity problem*/
                transform(input.begin(), input.end(), input.begin(), ::tolower);
  401da7:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401dab:	48 89 c1             	mov    %rax,%rcx
  401dae:	e8 15 11 00 00       	callq  402ec8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv>
  401db3:	48 89 c6             	mov    %rax,%rsi
  401db6:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401dba:	48 89 c1             	mov    %rax,%rcx
  401dbd:	e8 0e 11 00 00       	callq  402ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv>
  401dc2:	48 89 c3             	mov    %rax,%rbx
  401dc5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  401dc9:	48 89 c1             	mov    %rax,%rcx
  401dcc:	e8 f7 10 00 00       	callq  402ec8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv>
  401dd1:	48 89 c1             	mov    %rax,%rcx
  401dd4:	48 8b 05 f9 e7 00 00 	mov    0xe7f9(%rip),%rax        # 4105d4 <__imp_tolower>
  401ddb:	49 89 c1             	mov    %rax,%r9
  401dde:	49 89 f0             	mov    %rsi,%r8
  401de1:	48 89 da             	mov    %rbx,%rdx
  401de4:	e8 77 78 00 00       	callq  409660 <_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFiiEET0_T_SD_SC_T1_>
                ///////////////////////// Music ///////////////////////
                if (check_files_Types(input) == 1)
  401de9:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  401ded:	48 8d 85 00 03 00 00 	lea    0x300(%rbp),%rax
  401df4:	48 89 c1             	mov    %rax,%rcx
  401df7:	e8 8c 10 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  401dfc:	48 8d 85 00 03 00 00 	lea    0x300(%rbp),%rax
  401e03:	48 89 c1             	mov    %rax,%rcx
  401e06:	e8 4a f9 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  401e0b:	3c 01                	cmp    $0x1,%al
  401e0d:	0f 94 c3             	sete   %bl
  401e10:	48 8d 85 00 03 00 00 	lea    0x300(%rbp),%rax
  401e17:	48 89 c1             	mov    %rax,%rcx
  401e1a:	e8 59 10 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401e1f:	84 db                	test   %bl,%bl
  401e21:	0f 84 c3 00 00 00    	je     401eea <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x246>
                {
                    s >> size;
  401e27:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  401e2b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401e2f:	48 89 c1             	mov    %rax,%rcx
  401e32:	e8 e9 0f 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                    stringstream str2int(size.substr(0, size.find('b')));
  401e37:	ba 08 00 00 00       	mov    $0x8,%edx
  401e3c:	b9 10 00 00 00       	mov    $0x10,%ecx
  401e41:	e8 ca 78 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  401e46:	89 c3                	mov    %eax,%ebx
  401e48:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  401e4c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e52:	ba 62 00 00 00       	mov    $0x62,%edx
  401e57:	48 89 c1             	mov    %rax,%rcx
  401e5a:	e8 01 11 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  401e5f:	48 89 c1             	mov    %rax,%rcx
  401e62:	48 8d 85 20 03 00 00 	lea    0x320(%rbp),%rax
  401e69:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  401e6d:	49 89 c9             	mov    %rcx,%r9
  401e70:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e76:	48 89 c1             	mov    %rax,%rcx
  401e79:	e8 d2 10 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401e7e:	48 8d 95 20 03 00 00 	lea    0x320(%rbp),%rdx
  401e85:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401e8c:	41 89 d8             	mov    %ebx,%r8d
  401e8f:	48 89 c1             	mov    %rax,%rcx
  401e92:	e8 d1 0f 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  401e97:	48 8d 85 20 03 00 00 	lea    0x320(%rbp),%rax
  401e9e:	48 89 c1             	mov    %rax,%rcx
  401ea1:	e8 d2 0f 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                    str2int >> count;
  401ea6:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  401ead:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401eb4:	48 89 c1             	mov    %rax,%rcx
  401eb7:	e8 54 10 00 00       	callq  402f10 <_ZNSirsERi>
                    counters[0] += count;
  401ebc:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  401ec3:	8b 10                	mov    (%rax),%edx
  401ec5:	8b 85 fc 02 00 00    	mov    0x2fc(%rbp),%eax
  401ecb:	01 c2                	add    %eax,%edx
  401ecd:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  401ed4:	89 10                	mov    %edx,(%rax)
                    stringstream str2int(size.substr(0, size.find('b')));
  401ed6:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401edd:	48 89 c1             	mov    %rax,%rcx
  401ee0:	e8 7b 0f 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  401ee5:	e9 90 fe ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                }
                ///////////////////////// Images ///////////////////////
                else if (check_files_Types(input) == 2)
  401eea:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  401eee:	48 8d 85 40 03 00 00 	lea    0x340(%rbp),%rax
  401ef5:	48 89 c1             	mov    %rax,%rcx
  401ef8:	e8 8b 0f 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  401efd:	48 8d 85 40 03 00 00 	lea    0x340(%rbp),%rax
  401f04:	48 89 c1             	mov    %rax,%rcx
  401f07:	e8 49 f8 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  401f0c:	3c 02                	cmp    $0x2,%al
  401f0e:	0f 94 c3             	sete   %bl
  401f11:	48 8d 85 40 03 00 00 	lea    0x340(%rbp),%rax
  401f18:	48 89 c1             	mov    %rax,%rcx
  401f1b:	e8 58 0f 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  401f20:	84 db                	test   %bl,%bl
  401f22:	0f 84 cb 00 00 00    	je     401ff3 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x34f>
                {
                    s >> size;
  401f28:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  401f2c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401f30:	48 89 c1             	mov    %rax,%rcx
  401f33:	e8 e8 0e 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                    stringstream str2int(size.substr(0, size.find('b')));
  401f38:	ba 08 00 00 00       	mov    $0x8,%edx
  401f3d:	b9 10 00 00 00       	mov    $0x10,%ecx
  401f42:	e8 c9 77 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  401f47:	89 c3                	mov    %eax,%ebx
  401f49:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  401f4d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f53:	ba 62 00 00 00       	mov    $0x62,%edx
  401f58:	48 89 c1             	mov    %rax,%rcx
  401f5b:	e8 00 10 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  401f60:	48 89 c1             	mov    %rax,%rcx
  401f63:	48 8d 85 60 03 00 00 	lea    0x360(%rbp),%rax
  401f6a:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  401f6e:	49 89 c9             	mov    %rcx,%r9
  401f71:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f77:	48 89 c1             	mov    %rax,%rcx
  401f7a:	e8 d1 0f 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  401f7f:	48 8d 95 60 03 00 00 	lea    0x360(%rbp),%rdx
  401f86:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401f8d:	41 89 d8             	mov    %ebx,%r8d
  401f90:	48 89 c1             	mov    %rax,%rcx
  401f93:	e8 d0 0e 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  401f98:	48 8d 85 60 03 00 00 	lea    0x360(%rbp),%rax
  401f9f:	48 89 c1             	mov    %rax,%rcx
  401fa2:	e8 d1 0e 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                    str2int >> count;
  401fa7:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  401fae:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401fb5:	48 89 c1             	mov    %rax,%rcx
  401fb8:	e8 53 0f 00 00       	callq  402f10 <_ZNSirsERi>
                    counters[1] += count;
  401fbd:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  401fc4:	48 83 c0 04          	add    $0x4,%rax
  401fc8:	8b 08                	mov    (%rax),%ecx
  401fca:	8b 95 fc 02 00 00    	mov    0x2fc(%rbp),%edx
  401fd0:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  401fd7:	48 83 c0 04          	add    $0x4,%rax
  401fdb:	01 ca                	add    %ecx,%edx
  401fdd:	89 10                	mov    %edx,(%rax)
                    stringstream str2int(size.substr(0, size.find('b')));
  401fdf:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  401fe6:	48 89 c1             	mov    %rax,%rcx
  401fe9:	e8 72 0e 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  401fee:	e9 87 fd ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                }
                ///////////////////////// Movie ///////////////////////
                else if (check_files_Types(input) == 3)
  401ff3:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  401ff7:	48 8d 85 80 03 00 00 	lea    0x380(%rbp),%rax
  401ffe:	48 89 c1             	mov    %rax,%rcx
  402001:	e8 82 0e 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402006:	48 8d 85 80 03 00 00 	lea    0x380(%rbp),%rax
  40200d:	48 89 c1             	mov    %rax,%rcx
  402010:	e8 40 f7 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  402015:	3c 03                	cmp    $0x3,%al
  402017:	0f 94 c3             	sete   %bl
  40201a:	48 8d 85 80 03 00 00 	lea    0x380(%rbp),%rax
  402021:	48 89 c1             	mov    %rax,%rcx
  402024:	e8 4f 0e 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402029:	84 db                	test   %bl,%bl
  40202b:	0f 84 cb 00 00 00    	je     4020fc <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x458>
                {
                    s >> size;
  402031:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402035:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402039:	48 89 c1             	mov    %rax,%rcx
  40203c:	e8 df 0d 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                    stringstream str2int(size.substr(0, size.find('b')));
  402041:	ba 08 00 00 00       	mov    $0x8,%edx
  402046:	b9 10 00 00 00       	mov    $0x10,%ecx
  40204b:	e8 c0 76 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  402050:	89 c3                	mov    %eax,%ebx
  402052:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402056:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40205c:	ba 62 00 00 00       	mov    $0x62,%edx
  402061:	48 89 c1             	mov    %rax,%rcx
  402064:	e8 f7 0e 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  402069:	48 89 c1             	mov    %rax,%rcx
  40206c:	48 8d 85 a0 03 00 00 	lea    0x3a0(%rbp),%rax
  402073:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402077:	49 89 c9             	mov    %rcx,%r9
  40207a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402080:	48 89 c1             	mov    %rax,%rcx
  402083:	e8 c8 0e 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  402088:	48 8d 95 a0 03 00 00 	lea    0x3a0(%rbp),%rdx
  40208f:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402096:	41 89 d8             	mov    %ebx,%r8d
  402099:	48 89 c1             	mov    %rax,%rcx
  40209c:	e8 c7 0d 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  4020a1:	48 8d 85 a0 03 00 00 	lea    0x3a0(%rbp),%rax
  4020a8:	48 89 c1             	mov    %rax,%rcx
  4020ab:	e8 c8 0d 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                    str2int >> count;
  4020b0:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  4020b7:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4020be:	48 89 c1             	mov    %rax,%rcx
  4020c1:	e8 4a 0e 00 00       	callq  402f10 <_ZNSirsERi>
                    counters[2] += count;
  4020c6:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  4020cd:	48 83 c0 08          	add    $0x8,%rax
  4020d1:	8b 08                	mov    (%rax),%ecx
  4020d3:	8b 95 fc 02 00 00    	mov    0x2fc(%rbp),%edx
  4020d9:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  4020e0:	48 83 c0 08          	add    $0x8,%rax
  4020e4:	01 ca                	add    %ecx,%edx
  4020e6:	89 10                	mov    %edx,(%rax)
                    stringstream str2int(size.substr(0, size.find('b')));
  4020e8:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4020ef:	48 89 c1             	mov    %rax,%rcx
  4020f2:	e8 69 0d 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  4020f7:	e9 7e fc ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>

                //////////////////////// Others ////////////////////////
                else
                {

                    s >> size;
  4020fc:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402100:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402104:	48 89 c1             	mov    %rax,%rcx
  402107:	e8 14 0d 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                    /*This part of code solves the problem of having spaces in file name*/
                    if (size.find_first_of(".") == 0)
  40210c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402110:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402116:	48 8d 15 8b 8f 00 00 	lea    0x8f8b(%rip),%rdx        # 40b0a8 <_ZNSt8__detailL19_S_invalid_state_idE+0x4>
  40211d:	48 89 c1             	mov    %rax,%rcx
  402120:	e8 43 0e 00 00       	callq  402f68 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcy>
  402125:	48 85 c0             	test   %rax,%rax
  402128:	0f 94 c0             	sete   %al
  40212b:	84 c0                	test   %al,%al
  40212d:	0f 84 13 03 00 00    	je     402446 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x7a2>
                    {
                        if (check_files_Types(size) == 1)
  402133:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402137:	48 8d 85 c0 03 00 00 	lea    0x3c0(%rbp),%rax
  40213e:	48 89 c1             	mov    %rax,%rcx
  402141:	e8 42 0d 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402146:	48 8d 85 c0 03 00 00 	lea    0x3c0(%rbp),%rax
  40214d:	48 89 c1             	mov    %rax,%rcx
  402150:	e8 00 f6 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  402155:	3c 01                	cmp    $0x1,%al
  402157:	0f 94 c3             	sete   %bl
  40215a:	48 8d 85 c0 03 00 00 	lea    0x3c0(%rbp),%rax
  402161:	48 89 c1             	mov    %rax,%rcx
  402164:	e8 0f 0d 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402169:	84 db                	test   %bl,%bl
  40216b:	0f 84 c3 00 00 00    	je     402234 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x590>
                        {
                            s >> size;
  402171:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402175:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402179:	48 89 c1             	mov    %rax,%rcx
  40217c:	e8 9f 0c 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                            stringstream str2int(size.substr(0, size.find('b')));
  402181:	ba 08 00 00 00       	mov    $0x8,%edx
  402186:	b9 10 00 00 00       	mov    $0x10,%ecx
  40218b:	e8 80 75 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  402190:	89 c3                	mov    %eax,%ebx
  402192:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402196:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40219c:	ba 62 00 00 00       	mov    $0x62,%edx
  4021a1:	48 89 c1             	mov    %rax,%rcx
  4021a4:	e8 b7 0d 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  4021a9:	48 89 c1             	mov    %rax,%rcx
  4021ac:	48 8d 85 e0 03 00 00 	lea    0x3e0(%rbp),%rax
  4021b3:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4021b7:	49 89 c9             	mov    %rcx,%r9
  4021ba:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4021c0:	48 89 c1             	mov    %rax,%rcx
  4021c3:	e8 88 0d 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  4021c8:	48 8d 95 e0 03 00 00 	lea    0x3e0(%rbp),%rdx
  4021cf:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4021d6:	41 89 d8             	mov    %ebx,%r8d
  4021d9:	48 89 c1             	mov    %rax,%rcx
  4021dc:	e8 87 0c 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  4021e1:	48 8d 85 e0 03 00 00 	lea    0x3e0(%rbp),%rax
  4021e8:	48 89 c1             	mov    %rax,%rcx
  4021eb:	e8 88 0c 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                            str2int >> count;
  4021f0:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  4021f7:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4021fe:	48 89 c1             	mov    %rax,%rcx
  402201:	e8 0a 0d 00 00       	callq  402f10 <_ZNSirsERi>
                            counters[0] += count;
  402206:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40220d:	8b 10                	mov    (%rax),%edx
  40220f:	8b 85 fc 02 00 00    	mov    0x2fc(%rbp),%eax
  402215:	01 c2                	add    %eax,%edx
  402217:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40221e:	89 10                	mov    %edx,(%rax)
                            stringstream str2int(size.substr(0, size.find('b')));
  402220:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402227:	48 89 c1             	mov    %rax,%rcx
  40222a:	e8 31 0c 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  40222f:	e9 46 fb ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                        }
                        else if (check_files_Types(size) == 2)
  402234:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402238:	48 8d 85 00 04 00 00 	lea    0x400(%rbp),%rax
  40223f:	48 89 c1             	mov    %rax,%rcx
  402242:	e8 41 0c 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402247:	48 8d 85 00 04 00 00 	lea    0x400(%rbp),%rax
  40224e:	48 89 c1             	mov    %rax,%rcx
  402251:	e8 ff f4 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  402256:	3c 02                	cmp    $0x2,%al
  402258:	0f 94 c3             	sete   %bl
  40225b:	48 8d 85 00 04 00 00 	lea    0x400(%rbp),%rax
  402262:	48 89 c1             	mov    %rax,%rcx
  402265:	e8 0e 0c 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  40226a:	84 db                	test   %bl,%bl
  40226c:	0f 84 cb 00 00 00    	je     40233d <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x699>
                        {
                            s >> size;
  402272:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402276:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40227a:	48 89 c1             	mov    %rax,%rcx
  40227d:	e8 9e 0b 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                            stringstream str2int(size.substr(0, size.find('b')));
  402282:	ba 08 00 00 00       	mov    $0x8,%edx
  402287:	b9 10 00 00 00       	mov    $0x10,%ecx
  40228c:	e8 7f 74 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  402291:	89 c3                	mov    %eax,%ebx
  402293:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402297:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40229d:	ba 62 00 00 00       	mov    $0x62,%edx
  4022a2:	48 89 c1             	mov    %rax,%rcx
  4022a5:	e8 b6 0c 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  4022aa:	48 89 c1             	mov    %rax,%rcx
  4022ad:	48 8d 85 20 04 00 00 	lea    0x420(%rbp),%rax
  4022b4:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4022b8:	49 89 c9             	mov    %rcx,%r9
  4022bb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4022c1:	48 89 c1             	mov    %rax,%rcx
  4022c4:	e8 87 0c 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  4022c9:	48 8d 95 20 04 00 00 	lea    0x420(%rbp),%rdx
  4022d0:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4022d7:	41 89 d8             	mov    %ebx,%r8d
  4022da:	48 89 c1             	mov    %rax,%rcx
  4022dd:	e8 86 0b 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  4022e2:	48 8d 85 20 04 00 00 	lea    0x420(%rbp),%rax
  4022e9:	48 89 c1             	mov    %rax,%rcx
  4022ec:	e8 87 0b 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                            str2int >> count;
  4022f1:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  4022f8:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4022ff:	48 89 c1             	mov    %rax,%rcx
  402302:	e8 09 0c 00 00       	callq  402f10 <_ZNSirsERi>
                            counters[1] += count;
  402307:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40230e:	48 83 c0 04          	add    $0x4,%rax
  402312:	8b 08                	mov    (%rax),%ecx
  402314:	8b 95 fc 02 00 00    	mov    0x2fc(%rbp),%edx
  40231a:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402321:	48 83 c0 04          	add    $0x4,%rax
  402325:	01 ca                	add    %ecx,%edx
  402327:	89 10                	mov    %edx,(%rax)
                            stringstream str2int(size.substr(0, size.find('b')));
  402329:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402330:	48 89 c1             	mov    %rax,%rcx
  402333:	e8 28 0b 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402338:	e9 3d fa ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                        }
                        else if (check_files_Types(size) == 3)
  40233d:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  402341:	48 8d 85 40 04 00 00 	lea    0x440(%rbp),%rax
  402348:	48 89 c1             	mov    %rax,%rcx
  40234b:	e8 38 0b 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402350:	48 8d 85 40 04 00 00 	lea    0x440(%rbp),%rax
  402357:	48 89 c1             	mov    %rax,%rcx
  40235a:	e8 f6 f3 ff ff       	callq  401755 <_Z17check_files_TypesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  40235f:	3c 03                	cmp    $0x3,%al
  402361:	0f 94 c3             	sete   %bl
  402364:	48 8d 85 40 04 00 00 	lea    0x440(%rbp),%rax
  40236b:	48 89 c1             	mov    %rax,%rcx
  40236e:	e8 05 0b 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402373:	84 db                	test   %bl,%bl
  402375:	0f 84 ff f9 ff ff    	je     401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                        {
                            s >> size;
  40237b:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  40237f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402383:	48 89 c1             	mov    %rax,%rcx
  402386:	e8 95 0a 00 00       	callq  402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
                            stringstream str2int(size.substr(0, size.find('b')));
  40238b:	ba 08 00 00 00       	mov    $0x8,%edx
  402390:	b9 10 00 00 00       	mov    $0x10,%ecx
  402395:	e8 76 73 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  40239a:	89 c3                	mov    %eax,%ebx
  40239c:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4023a0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023a6:	ba 62 00 00 00       	mov    $0x62,%edx
  4023ab:	48 89 c1             	mov    %rax,%rcx
  4023ae:	e8 ad 0b 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  4023b3:	48 89 c1             	mov    %rax,%rcx
  4023b6:	48 8d 85 60 04 00 00 	lea    0x460(%rbp),%rax
  4023bd:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  4023c1:	49 89 c9             	mov    %rcx,%r9
  4023c4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4023ca:	48 89 c1             	mov    %rax,%rcx
  4023cd:	e8 7e 0b 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  4023d2:	48 8d 95 60 04 00 00 	lea    0x460(%rbp),%rdx
  4023d9:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4023e0:	41 89 d8             	mov    %ebx,%r8d
  4023e3:	48 89 c1             	mov    %rax,%rcx
  4023e6:	e8 7d 0a 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  4023eb:	48 8d 85 60 04 00 00 	lea    0x460(%rbp),%rax
  4023f2:	48 89 c1             	mov    %rax,%rcx
  4023f5:	e8 7e 0a 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                            str2int >> count;
  4023fa:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  402401:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402408:	48 89 c1             	mov    %rax,%rcx
  40240b:	e8 00 0b 00 00       	callq  402f10 <_ZNSirsERi>
                            counters[2] += count;
  402410:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402417:	48 83 c0 08          	add    $0x8,%rax
  40241b:	8b 08                	mov    (%rax),%ecx
  40241d:	8b 95 fc 02 00 00    	mov    0x2fc(%rbp),%edx
  402423:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40242a:	48 83 c0 08          	add    $0x8,%rax
  40242e:	01 ca                	add    %ecx,%edx
  402430:	89 10                	mov    %edx,(%rax)
                            stringstream str2int(size.substr(0, size.find('b')));
  402432:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402439:	48 89 c1             	mov    %rax,%rcx
  40243c:	e8 1f 0a 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402441:	e9 34 f9 ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
                        }
                    }
                    else
                    {
                        stringstream str2int(size.substr(0, size.find('b')));
  402446:	ba 08 00 00 00       	mov    $0x8,%edx
  40244b:	b9 10 00 00 00       	mov    $0x10,%ecx
  402450:	e8 bb 72 00 00       	callq  409710 <_ZStorSt13_Ios_OpenmodeS_>
  402455:	89 c3                	mov    %eax,%ebx
  402457:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40245b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402461:	ba 62 00 00 00       	mov    $0x62,%edx
  402466:	48 89 c1             	mov    %rax,%rcx
  402469:	e8 f2 0a 00 00       	callq  402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  40246e:	48 89 c1             	mov    %rax,%rcx
  402471:	48 8d 85 80 04 00 00 	lea    0x480(%rbp),%rax
  402478:	48 8d 55 a0          	lea    -0x60(%rbp),%rdx
  40247c:	49 89 c9             	mov    %rcx,%r9
  40247f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402485:	48 89 c1             	mov    %rax,%rcx
  402488:	e8 c3 0a 00 00       	callq  402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  40248d:	48 8d 95 80 04 00 00 	lea    0x480(%rbp),%rdx
  402494:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  40249b:	41 89 d8             	mov    %ebx,%r8d
  40249e:	48 89 c1             	mov    %rax,%rcx
  4024a1:	e8 c2 09 00 00       	callq  402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  4024a6:	48 8d 85 80 04 00 00 	lea    0x480(%rbp),%rax
  4024ad:	48 89 c1             	mov    %rax,%rcx
  4024b0:	e8 c3 09 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
                        str2int >> count;
  4024b5:	48 8d 95 fc 02 00 00 	lea    0x2fc(%rbp),%rdx
  4024bc:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4024c3:	48 89 c1             	mov    %rax,%rcx
  4024c6:	e8 45 0a 00 00       	callq  402f10 <_ZNSirsERi>
                        counters[3] += count;
  4024cb:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  4024d2:	48 83 c0 0c          	add    $0xc,%rax
  4024d6:	8b 08                	mov    (%rax),%ecx
  4024d8:	8b 95 fc 02 00 00    	mov    0x2fc(%rbp),%edx
  4024de:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  4024e5:	48 83 c0 0c          	add    $0xc,%rax
  4024e9:	01 ca                	add    %ecx,%edx
  4024eb:	89 10                	mov    %edx,(%rax)
                        stringstream str2int(size.substr(0, size.find('b')));
  4024ed:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4024f4:	48 89 c1             	mov    %rax,%rcx
  4024f7:	e8 64 09 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
            while (s >> input)
  4024fc:	e9 79 f8 ff ff       	jmpq   401d7a <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd6>
            stringstream s(input);
  402501:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402505:	48 89 c1             	mov    %rax,%rcx
  402508:	e8 53 09 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
            string input;
  40250d:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  402511:	48 89 c1             	mov    %rax,%rcx
  402514:	e8 5f 09 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
            string size;
  402519:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40251d:	48 89 c1             	mov    %rax,%rcx
  402520:	e8 53 09 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
        for (int j = 0; j < testCase; j++)
  402525:	83 85 08 06 00 00 01 	addl   $0x1,0x608(%rbp)
  40252c:	e9 e8 f7 ff ff       	jmpq   401d19 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x75>
                    }
                }
            }
        }
        /*Save output of each category*/
        out[i] = "music " + to_string(counters[0]) + " images " + to_string(counters[1]) + " movies " + to_string(counters[2]) + " other " + to_string(counters[3]);
  402531:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402538:	48 83 c0 0c          	add    $0xc,%rax
  40253c:	8b 10                	mov    (%rax),%edx
  40253e:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
  402545:	48 89 c1             	mov    %rax,%rcx
  402548:	e8 53 70 00 00       	callq  4095a0 <_ZNSt7__cxx119to_stringEi>
  40254d:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402554:	48 83 c0 08          	add    $0x8,%rax
  402558:	8b 10                	mov    (%rax),%edx
  40255a:	48 8d 85 20 05 00 00 	lea    0x520(%rbp),%rax
  402561:	48 89 c1             	mov    %rax,%rcx
  402564:	e8 37 70 00 00       	callq  4095a0 <_ZNSt7__cxx119to_stringEi>
  402569:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402570:	48 83 c0 04          	add    $0x4,%rax
  402574:	8b 10                	mov    (%rax),%edx
  402576:	48 8d 85 80 05 00 00 	lea    0x580(%rbp),%rax
  40257d:	48 89 c1             	mov    %rax,%rcx
  402580:	e8 1b 70 00 00       	callq  4095a0 <_ZNSt7__cxx119to_stringEi>
  402585:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40258c:	8b 10                	mov    (%rax),%edx
  40258e:	48 8d 85 e0 05 00 00 	lea    0x5e0(%rbp),%rax
  402595:	48 89 c1             	mov    %rax,%rcx
  402598:	e8 03 70 00 00       	callq  4095a0 <_ZNSt7__cxx119to_stringEi>
  40259d:	48 8d 85 c0 05 00 00 	lea    0x5c0(%rbp),%rax
  4025a4:	48 8d 95 e0 05 00 00 	lea    0x5e0(%rbp),%rdx
  4025ab:	49 89 d0             	mov    %rdx,%r8
  4025ae:	48 8d 15 1a 8b 00 00 	lea    0x8b1a(%rip),%rdx        # 40b0cf <_ZNSt8__detailL19_S_invalid_state_idE+0x2b>
  4025b5:	48 89 c1             	mov    %rax,%rcx
  4025b8:	e8 93 72 00 00       	callq  409850 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>
  4025bd:	48 8d 85 a0 05 00 00 	lea    0x5a0(%rbp),%rax
  4025c4:	48 8d 95 c0 05 00 00 	lea    0x5c0(%rbp),%rdx
  4025cb:	4c 8d 05 04 8b 00 00 	lea    0x8b04(%rip),%r8        # 40b0d6 <_ZNSt8__detailL19_S_invalid_state_idE+0x32>
  4025d2:	48 89 c1             	mov    %rax,%rcx
  4025d5:	e8 56 71 00 00       	callq  409730 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  4025da:	48 8d 85 60 05 00 00 	lea    0x560(%rbp),%rax
  4025e1:	48 8d 8d 80 05 00 00 	lea    0x580(%rbp),%rcx
  4025e8:	48 8d 95 a0 05 00 00 	lea    0x5a0(%rbp),%rdx
  4025ef:	49 89 c8             	mov    %rcx,%r8
  4025f2:	48 89 c1             	mov    %rax,%rcx
  4025f5:	e8 86 71 00 00       	callq  409780 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
  4025fa:	48 8d 85 40 05 00 00 	lea    0x540(%rbp),%rax
  402601:	48 8d 95 60 05 00 00 	lea    0x560(%rbp),%rdx
  402608:	4c 8d 05 d0 8a 00 00 	lea    0x8ad0(%rip),%r8        # 40b0df <_ZNSt8__detailL19_S_invalid_state_idE+0x3b>
  40260f:	48 89 c1             	mov    %rax,%rcx
  402612:	e8 19 71 00 00       	callq  409730 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  402617:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
  40261e:	48 8d 8d 20 05 00 00 	lea    0x520(%rbp),%rcx
  402625:	48 8d 95 40 05 00 00 	lea    0x540(%rbp),%rdx
  40262c:	49 89 c8             	mov    %rcx,%r8
  40262f:	48 89 c1             	mov    %rax,%rcx
  402632:	e8 49 71 00 00       	callq  409780 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
  402637:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
  40263e:	48 8d 95 00 05 00 00 	lea    0x500(%rbp),%rdx
  402645:	4c 8d 05 9c 8a 00 00 	lea    0x8a9c(%rip),%r8        # 40b0e8 <_ZNSt8__detailL19_S_invalid_state_idE+0x44>
  40264c:	48 89 c1             	mov    %rax,%rcx
  40264f:	e8 dc 70 00 00       	callq  409730 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>
  402654:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
  40265b:	48 8d 8d c0 04 00 00 	lea    0x4c0(%rbp),%rcx
  402662:	48 8d 95 e0 04 00 00 	lea    0x4e0(%rbp),%rdx
  402669:	49 89 c8             	mov    %rcx,%r8
  40266c:	48 89 c1             	mov    %rax,%rcx
  40266f:	e8 0c 71 00 00       	callq  409780 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>
  402674:	8b 85 0c 06 00 00    	mov    0x60c(%rbp),%eax
  40267a:	48 98                	cltq   
  40267c:	48 c1 e0 05          	shl    $0x5,%rax
  402680:	48 89 c2             	mov    %rax,%rdx
  402683:	48 8b 85 50 06 00 00 	mov    0x650(%rbp),%rax
  40268a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
  40268e:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
  402695:	48 89 c2             	mov    %rax,%rdx
  402698:	e8 d3 07 00 00       	callq  402e70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
  40269d:	48 8d 85 a0 04 00 00 	lea    0x4a0(%rbp),%rax
  4026a4:	48 89 c1             	mov    %rax,%rcx
  4026a7:	e8 cc 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026ac:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
  4026b3:	48 89 c1             	mov    %rax,%rcx
  4026b6:	e8 bd 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026bb:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
  4026c2:	48 89 c1             	mov    %rax,%rcx
  4026c5:	e8 ae 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026ca:	48 8d 85 40 05 00 00 	lea    0x540(%rbp),%rax
  4026d1:	48 89 c1             	mov    %rax,%rcx
  4026d4:	e8 9f 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026d9:	48 8d 85 60 05 00 00 	lea    0x560(%rbp),%rax
  4026e0:	48 89 c1             	mov    %rax,%rcx
  4026e3:	e8 90 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026e8:	48 8d 85 a0 05 00 00 	lea    0x5a0(%rbp),%rax
  4026ef:	48 89 c1             	mov    %rax,%rcx
  4026f2:	e8 81 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4026f7:	48 8d 85 c0 05 00 00 	lea    0x5c0(%rbp),%rax
  4026fe:	48 89 c1             	mov    %rax,%rcx
  402701:	e8 72 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402706:	48 8d 85 e0 05 00 00 	lea    0x5e0(%rbp),%rax
  40270d:	48 89 c1             	mov    %rax,%rcx
  402710:	e8 63 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402715:	48 8d 85 80 05 00 00 	lea    0x580(%rbp),%rax
  40271c:	48 89 c1             	mov    %rax,%rcx
  40271f:	e8 54 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402724:	48 8d 85 20 05 00 00 	lea    0x520(%rbp),%rax
  40272b:	48 89 c1             	mov    %rax,%rcx
  40272e:	e8 45 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402733:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
  40273a:	48 89 c1             	mov    %rax,%rcx
  40273d:	e8 36 07 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
        /*Reset Counters*/
        counters[0] = counters[1] = counters[2] = counters[3] = 0;
  402742:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402749:	48 83 c0 0c          	add    $0xc,%rax
  40274d:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402753:	48 8b 95 48 06 00 00 	mov    0x648(%rbp),%rdx
  40275a:	48 83 c2 08          	add    $0x8,%rdx
  40275e:	8b 00                	mov    (%rax),%eax
  402760:	89 02                	mov    %eax,(%rdx)
  402762:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  402769:	48 83 c0 04          	add    $0x4,%rax
  40276d:	8b 12                	mov    (%rdx),%edx
  40276f:	89 10                	mov    %edx,(%rax)
  402771:	8b 10                	mov    (%rax),%edx
  402773:	48 8b 85 48 06 00 00 	mov    0x648(%rbp),%rax
  40277a:	89 10                	mov    %edx,(%rax)
    for (int i = size - 2; i >= 0; i--)
  40277c:	83 ad 0c 06 00 00 01 	subl   $0x1,0x60c(%rbp)
  402783:	e9 58 f5 ff ff       	jmpq   401ce0 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0x3c>
  402788:	48 89 c3             	mov    %rax,%rbx
                if (check_files_Types(input) == 1)
  40278b:	48 8d 85 00 03 00 00 	lea    0x300(%rbp),%rax
  402792:	48 89 c1             	mov    %rax,%rcx
  402795:	e8 de 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  40279a:	e9 a3 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  40279f:	48 89 c3             	mov    %rax,%rbx
  4027a2:	48 8d 85 20 03 00 00 	lea    0x320(%rbp),%rax
  4027a9:	48 89 c1             	mov    %rax,%rcx
  4027ac:	e8 c7 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4027b1:	e9 8c 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4027b6:	48 89 c3             	mov    %rax,%rbx
                    stringstream str2int(size.substr(0, size.find('b')));
  4027b9:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4027c0:	48 89 c1             	mov    %rax,%rcx
  4027c3:	e8 98 06 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  4027c8:	e9 75 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4027cd:	48 89 c3             	mov    %rax,%rbx
                else if (check_files_Types(input) == 2)
  4027d0:	48 8d 85 40 03 00 00 	lea    0x340(%rbp),%rax
  4027d7:	48 89 c1             	mov    %rax,%rcx
  4027da:	e8 99 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4027df:	e9 5e 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4027e4:	48 89 c3             	mov    %rax,%rbx
  4027e7:	48 8d 85 60 03 00 00 	lea    0x360(%rbp),%rax
  4027ee:	48 89 c1             	mov    %rax,%rcx
  4027f1:	e8 82 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4027f6:	e9 47 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4027fb:	48 89 c3             	mov    %rax,%rbx
                    stringstream str2int(size.substr(0, size.find('b')));
  4027fe:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402805:	48 89 c1             	mov    %rax,%rcx
  402808:	e8 53 06 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  40280d:	e9 30 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402812:	48 89 c3             	mov    %rax,%rbx
                else if (check_files_Types(input) == 3)
  402815:	48 8d 85 80 03 00 00 	lea    0x380(%rbp),%rax
  40281c:	48 89 c1             	mov    %rax,%rcx
  40281f:	e8 54 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402824:	e9 19 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402829:	48 89 c3             	mov    %rax,%rbx
  40282c:	48 8d 85 a0 03 00 00 	lea    0x3a0(%rbp),%rax
  402833:	48 89 c1             	mov    %rax,%rcx
  402836:	e8 3d 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  40283b:	e9 02 01 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402840:	48 89 c3             	mov    %rax,%rbx
                    stringstream str2int(size.substr(0, size.find('b')));
  402843:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  40284a:	48 89 c1             	mov    %rax,%rcx
  40284d:	e8 0e 06 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402852:	e9 eb 00 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402857:	48 89 c3             	mov    %rax,%rbx
                        if (check_files_Types(size) == 1)
  40285a:	48 8d 85 c0 03 00 00 	lea    0x3c0(%rbp),%rax
  402861:	48 89 c1             	mov    %rax,%rcx
  402864:	e8 0f 06 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402869:	e9 d4 00 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  40286e:	48 89 c3             	mov    %rax,%rbx
  402871:	48 8d 85 e0 03 00 00 	lea    0x3e0(%rbp),%rax
  402878:	48 89 c1             	mov    %rax,%rcx
  40287b:	e8 f8 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402880:	e9 bd 00 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402885:	48 89 c3             	mov    %rax,%rbx
                            stringstream str2int(size.substr(0, size.find('b')));
  402888:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  40288f:	48 89 c1             	mov    %rax,%rcx
  402892:	e8 c9 05 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402897:	e9 a6 00 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  40289c:	48 89 c3             	mov    %rax,%rbx
                        else if (check_files_Types(size) == 2)
  40289f:	48 8d 85 00 04 00 00 	lea    0x400(%rbp),%rax
  4028a6:	48 89 c1             	mov    %rax,%rcx
  4028a9:	e8 ca 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4028ae:	e9 8f 00 00 00       	jmpq   402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4028b3:	48 89 c3             	mov    %rax,%rbx
  4028b6:	48 8d 85 20 04 00 00 	lea    0x420(%rbp),%rax
  4028bd:	48 89 c1             	mov    %rax,%rcx
  4028c0:	e8 b3 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4028c5:	eb 7b                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4028c7:	48 89 c3             	mov    %rax,%rbx
                            stringstream str2int(size.substr(0, size.find('b')));
  4028ca:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  4028d1:	48 89 c1             	mov    %rax,%rcx
  4028d4:	e8 87 05 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  4028d9:	eb 67                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4028db:	48 89 c3             	mov    %rax,%rbx
                        else if (check_files_Types(size) == 3)
  4028de:	48 8d 85 40 04 00 00 	lea    0x440(%rbp),%rax
  4028e5:	48 89 c1             	mov    %rax,%rcx
  4028e8:	e8 8b 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4028ed:	eb 53                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  4028ef:	48 89 c3             	mov    %rax,%rbx
  4028f2:	48 8d 85 60 04 00 00 	lea    0x460(%rbp),%rax
  4028f9:	48 89 c1             	mov    %rax,%rcx
  4028fc:	e8 77 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402901:	eb 3f                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402903:	48 89 c3             	mov    %rax,%rbx
                            stringstream str2int(size.substr(0, size.find('b')));
  402906:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  40290d:	48 89 c1             	mov    %rax,%rcx
  402910:	e8 4b 05 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402915:	eb 2b                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  402917:	48 89 c3             	mov    %rax,%rbx
  40291a:	48 8d 85 80 04 00 00 	lea    0x480(%rbp),%rax
  402921:	48 89 c1             	mov    %rax,%rcx
  402924:	e8 4f 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402929:	eb 17                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  40292b:	48 89 c3             	mov    %rax,%rbx
                        stringstream str2int(size.substr(0, size.find('b')));
  40292e:	48 8d 85 70 01 00 00 	lea    0x170(%rbp),%rax
  402935:	48 89 c1             	mov    %rax,%rcx
  402938:	e8 23 05 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  40293d:	eb 03                	jmp    402942 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xc9e>
  40293f:	48 89 c3             	mov    %rax,%rbx
            stringstream s(input);
  402942:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402946:	48 89 c1             	mov    %rax,%rcx
  402949:	e8 12 05 00 00       	callq  402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  40294e:	eb 03                	jmp    402953 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xcaf>
  402950:	48 89 c3             	mov    %rax,%rbx
            string input;
  402953:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  402957:	48 89 c1             	mov    %rax,%rcx
  40295a:	e8 19 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
            string size;
  40295f:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402963:	48 89 c1             	mov    %rax,%rcx
  402966:	e8 0d 05 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  40296b:	48 89 d8             	mov    %rbx,%rax
  40296e:	48 89 c1             	mov    %rax,%rcx
  402971:	e8 8a 1a 00 00       	callq  404400 <_Unwind_Resume>
  402976:	48 89 c3             	mov    %rax,%rbx
        out[i] = "music " + to_string(counters[0]) + " images " + to_string(counters[1]) + " movies " + to_string(counters[2]) + " other " + to_string(counters[3]);
  402979:	48 8d 85 e0 04 00 00 	lea    0x4e0(%rbp),%rax
  402980:	48 89 c1             	mov    %rax,%rcx
  402983:	e8 f0 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402988:	eb 03                	jmp    40298d <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xce9>
  40298a:	48 89 c3             	mov    %rax,%rbx
  40298d:	48 8d 85 00 05 00 00 	lea    0x500(%rbp),%rax
  402994:	48 89 c1             	mov    %rax,%rcx
  402997:	e8 dc 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  40299c:	eb 03                	jmp    4029a1 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xcfd>
  40299e:	48 89 c3             	mov    %rax,%rbx
  4029a1:	48 8d 85 40 05 00 00 	lea    0x540(%rbp),%rax
  4029a8:	48 89 c1             	mov    %rax,%rcx
  4029ab:	e8 c8 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4029b0:	eb 03                	jmp    4029b5 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd11>
  4029b2:	48 89 c3             	mov    %rax,%rbx
  4029b5:	48 8d 85 60 05 00 00 	lea    0x560(%rbp),%rax
  4029bc:	48 89 c1             	mov    %rax,%rcx
  4029bf:	e8 b4 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4029c4:	eb 03                	jmp    4029c9 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd25>
  4029c6:	48 89 c3             	mov    %rax,%rbx
  4029c9:	48 8d 85 a0 05 00 00 	lea    0x5a0(%rbp),%rax
  4029d0:	48 89 c1             	mov    %rax,%rcx
  4029d3:	e8 a0 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4029d8:	eb 03                	jmp    4029dd <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd39>
  4029da:	48 89 c3             	mov    %rax,%rbx
  4029dd:	48 8d 85 c0 05 00 00 	lea    0x5c0(%rbp),%rax
  4029e4:	48 89 c1             	mov    %rax,%rcx
  4029e7:	e8 8c 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  4029ec:	eb 03                	jmp    4029f1 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd4d>
  4029ee:	48 89 c3             	mov    %rax,%rbx
  4029f1:	48 8d 85 e0 05 00 00 	lea    0x5e0(%rbp),%rax
  4029f8:	48 89 c1             	mov    %rax,%rcx
  4029fb:	e8 78 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402a00:	eb 03                	jmp    402a05 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd61>
  402a02:	48 89 c3             	mov    %rax,%rbx
  402a05:	48 8d 85 80 05 00 00 	lea    0x580(%rbp),%rax
  402a0c:	48 89 c1             	mov    %rax,%rcx
  402a0f:	e8 64 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402a14:	eb 03                	jmp    402a19 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd75>
  402a16:	48 89 c3             	mov    %rax,%rbx
  402a19:	48 8d 85 20 05 00 00 	lea    0x520(%rbp),%rax
  402a20:	48 89 c1             	mov    %rax,%rcx
  402a23:	e8 50 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402a28:	eb 03                	jmp    402a2d <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_+0xd89>
  402a2a:	48 89 c3             	mov    %rax,%rbx
  402a2d:	48 8d 85 c0 04 00 00 	lea    0x4c0(%rbp),%rax
  402a34:	48 89 c1             	mov    %rax,%rcx
  402a37:	e8 3c 04 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402a3c:	48 89 d8             	mov    %rbx,%rax
  402a3f:	48 89 c1             	mov    %rax,%rcx
  402a42:	e8 b9 19 00 00       	callq  404400 <_Unwind_Resume>
    }
}
  402a47:	90                   	nop
  402a48:	48 81 c4 90 06 00 00 	add    $0x690,%rsp
  402a4f:	5b                   	pop    %rbx
  402a50:	5e                   	pop    %rsi
  402a51:	5d                   	pop    %rbp
  402a52:	c3                   	retq   

0000000000402a53 <main>:

int main(void)
{
  402a53:	55                   	push   %rbp
  402a54:	41 56                	push   %r14
  402a56:	41 55                	push   %r13
  402a58:	41 54                	push   %r12
  402a5a:	57                   	push   %rdi
  402a5b:	56                   	push   %rsi
  402a5c:	53                   	push   %rbx
  402a5d:	48 89 e5             	mov    %rsp,%rbp
  402a60:	48 81 ec f0 00 00 00 	sub    $0xf0,%rsp
  402a67:	e8 c4 05 00 00       	callq  403030 <__main>
    for (int i = No_testCases[wordCount - 1] - 1; i >= 0; i--)
    {
        cout << output[i] << endl;
    }

    return 0;
  402a6c:	48 89 e0             	mov    %rsp,%rax
  402a6f:	49 89 c4             	mov    %rax,%r12
    string input; //Our string input
  402a72:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  402a79:	48 89 c1             	mov    %rax,%rcx
  402a7c:	e8 ff 03 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    getline(cin, input); // get it in getline to catch the whole line with spaces
  402a81:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  402a88:	48 89 c2             	mov    %rax,%rdx
  402a8b:	48 8b 0d 3e 8d 00 00 	mov    0x8d3e(%rip),%rcx        # 40b7d0 <__fu1__ZSt3cin>
  402a92:	e8 99 03 00 00       	callq  402e30 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
    int counters[4] = {0}; // we have 4 counters for 4 categories
  402a97:	48 c7 85 60 ff ff ff 	movq   $0x0,-0xa0(%rbp)
  402a9e:	00 00 00 00 
  402aa2:	48 c7 85 68 ff ff ff 	movq   $0x0,-0x98(%rbp)
  402aa9:	00 00 00 00 
    int wordCount = countWords(input); // count inputs
  402aad:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  402ab4:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402ab8:	48 89 c1             	mov    %rax,%rcx
  402abb:	e8 c8 03 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402ac0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402ac4:	48 89 c1             	mov    %rax,%rcx
  402ac7:	e8 c0 ea ff ff       	callq  40158c <_Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
  402acc:	89 45 f8             	mov    %eax,-0x8(%rbp)
  402acf:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402ad3:	48 89 c1             	mov    %rax,%rcx
  402ad6:	e8 9d 03 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    int No_testCases[wordCount]; // set array of size test cases
  402adb:	8b 45 f8             	mov    -0x8(%rbp),%eax
  402ade:	48 98                	cltq   
  402ae0:	48 83 e8 01          	sub    $0x1,%rax
  402ae4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402ae8:	48 89 c2             	mov    %rax,%rdx
  402aeb:	48 83 c2 01          	add    $0x1,%rdx
  402aef:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
  402af6:	48 c7 85 58 ff ff ff 	movq   $0x0,-0xa8(%rbp)
  402afd:	00 00 00 00 
  402b01:	48 89 c2             	mov    %rax,%rdx
  402b04:	48 83 c2 01          	add    $0x1,%rdx
  402b08:	48 89 95 40 ff ff ff 	mov    %rdx,-0xc0(%rbp)
  402b0f:	48 c7 85 48 ff ff ff 	movq   $0x0,-0xb8(%rbp)
  402b16:	00 00 00 00 
  402b1a:	48 83 c0 01          	add    $0x1,%rax
  402b1e:	48 c1 e0 02          	shl    $0x2,%rax
  402b22:	48 83 c0 0f          	add    $0xf,%rax
  402b26:	48 c1 e8 04          	shr    $0x4,%rax
  402b2a:	48 c1 e0 04          	shl    $0x4,%rax
  402b2e:	e8 dd 18 00 00       	callq  404410 <___chkstk_ms>
  402b33:	48 29 c4             	sub    %rax,%rsp
  402b36:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  402b3b:	48 83 c0 03          	add    $0x3,%rax
  402b3f:	48 c1 e8 02          	shr    $0x2,%rax
  402b43:	48 c1 e0 02          	shl    $0x2,%rax
  402b47:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    No_Test_Cases(input, wordCount, No_testCases); // assign array with input
  402b4b:	48 8b 5d e8          	mov    -0x18(%rbp),%rbx
  402b4f:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
  402b56:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  402b5a:	48 89 c1             	mov    %rax,%rcx
  402b5d:	e8 26 03 00 00       	callq  402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402b62:	8b 55 f8             	mov    -0x8(%rbp),%edx
  402b65:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  402b69:	49 89 d8             	mov    %rbx,%r8
  402b6c:	48 89 c1             	mov    %rax,%rcx
  402b6f:	e8 f1 ea ff ff       	callq  401665 <_Z13No_Test_CasesNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPi>
  402b74:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  402b78:	48 89 c1             	mov    %rax,%rcx
  402b7b:	e8 f8 02 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
    string output[No_testCases[wordCount - 1]]; //output array
  402b80:	8b 45 f8             	mov    -0x8(%rbp),%eax
  402b83:	83 e8 01             	sub    $0x1,%eax
  402b86:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402b8a:	48 98                	cltq   
  402b8c:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  402b8f:	48 98                	cltq   
  402b91:	48 8d 58 ff          	lea    -0x1(%rax),%rbx
  402b95:	48 89 5d e0          	mov    %rbx,-0x20(%rbp)
  402b99:	48 89 d8             	mov    %rbx,%rax
  402b9c:	48 83 c0 01          	add    $0x1,%rax
  402ba0:	49 89 c5             	mov    %rax,%r13
  402ba3:	41 be 00 00 00 00    	mov    $0x0,%r14d
  402ba9:	48 89 d8             	mov    %rbx,%rax
  402bac:	48 83 c0 01          	add    $0x1,%rax
  402bb0:	48 89 c6             	mov    %rax,%rsi
  402bb3:	bf 00 00 00 00       	mov    $0x0,%edi
  402bb8:	48 89 d8             	mov    %rbx,%rax
  402bbb:	48 83 c0 01          	add    $0x1,%rax
  402bbf:	48 c1 e0 05          	shl    $0x5,%rax
  402bc3:	48 83 c0 0f          	add    $0xf,%rax
  402bc7:	48 c1 e8 04          	shr    $0x4,%rax
  402bcb:	48 c1 e0 04          	shl    $0x4,%rax
  402bcf:	e8 3c 18 00 00       	callq  404410 <___chkstk_ms>
  402bd4:	48 29 c4             	sub    %rax,%rsp
  402bd7:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
  402bdc:	48 83 c0 07          	add    $0x7,%rax
  402be0:	48 c1 e8 03          	shr    $0x3,%rax
  402be4:	48 c1 e0 03          	shl    $0x3,%rax
  402be8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  402bec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402bf0:	48 89 de             	mov    %rbx,%rsi
  402bf3:	48 89 c7             	mov    %rax,%rdi
  402bf6:	48 85 f6             	test   %rsi,%rsi
  402bf9:	78 12                	js     402c0d <main+0x1ba>
  402bfb:	48 89 f9             	mov    %rdi,%rcx
  402bfe:	e8 7d 02 00 00       	callq  402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
  402c03:	48 83 c7 20          	add    $0x20,%rdi
  402c07:	48 83 ee 01          	sub    $0x1,%rsi
  402c0b:	eb e9                	jmp    402bf6 <main+0x1a3>
    string **files = new string *[wordCount]; //test cases is assigned in dynamic allocation 
  402c0d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  402c10:	48 98                	cltq   
  402c12:	48 ba ff ff ff ff ff 	movabs $0xfffffffffffffff,%rdx
  402c19:	ff ff 0f 
  402c1c:	48 39 d0             	cmp    %rdx,%rax
  402c1f:	77 0e                	ja     402c2f <main+0x1dc>
  402c21:	48 c1 e0 03          	shl    $0x3,%rax
  402c25:	48 89 c1             	mov    %rax,%rcx
  402c28:	e8 eb 01 00 00       	callq  402e18 <_Znay>
  402c2d:	eb 05                	jmp    402c34 <main+0x1e1>
  402c2f:	e8 c4 01 00 00       	callq  402df8 <__cxa_throw_bad_array_new_length>
  402c34:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    get_test_cases(No_testCases, wordCount, files, counters, output); // 
  402c38:	4c 8b 45 d8          	mov    -0x28(%rbp),%r8
  402c3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402c40:	48 8d 8d 60 ff ff ff 	lea    -0xa0(%rbp),%rcx
  402c47:	4c 8b 55 d0          	mov    -0x30(%rbp),%r10
  402c4b:	8b 55 f8             	mov    -0x8(%rbp),%edx
  402c4e:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
  402c53:	49 89 c9             	mov    %rcx,%r9
  402c56:	4d 89 d0             	mov    %r10,%r8
  402c59:	48 89 c1             	mov    %rax,%rcx
  402c5c:	e8 43 f0 ff ff       	callq  401ca4 <_Z14get_test_casesPiiPPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_S6_>
    for (int i = No_testCases[wordCount - 1] - 1; i >= 0; i--)
  402c61:	8b 45 f8             	mov    -0x8(%rbp),%eax
  402c64:	83 e8 01             	sub    $0x1,%eax
  402c67:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402c6b:	48 98                	cltq   
  402c6d:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  402c70:	83 e8 01             	sub    $0x1,%eax
  402c73:	89 45 fc             	mov    %eax,-0x4(%rbp)
  402c76:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402c7a:	78 37                	js     402cb3 <main+0x260>
        cout << output[i] << endl;
  402c7c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402c7f:	48 98                	cltq   
  402c81:	48 c1 e0 05          	shl    $0x5,%rax
  402c85:	48 89 c2             	mov    %rax,%rdx
  402c88:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402c8c:	48 01 d0             	add    %rdx,%rax
  402c8f:	48 89 c2             	mov    %rax,%rdx
  402c92:	48 8b 0d 47 8b 00 00 	mov    0x8b47(%rip),%rcx        # 40b7e0 <__fu0__ZSt4cout>
  402c99:	e8 8a 01 00 00       	callq  402e28 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  402c9e:	48 8b 15 4b 8b 00 00 	mov    0x8b4b(%rip),%rdx        # 40b7f0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  402ca5:	48 89 c1             	mov    %rax,%rcx
  402ca8:	e8 5b 02 00 00       	callq  402f08 <_ZNSolsEPFRSoS_E>
    for (int i = No_testCases[wordCount - 1] - 1; i >= 0; i--)
  402cad:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
  402cb1:	eb c3                	jmp    402c76 <main+0x223>
    return 0;
  402cb3:	be 00 00 00 00       	mov    $0x0,%esi
    string output[No_testCases[wordCount - 1]]; //output array
  402cb8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402cbc:	48 89 d8             	mov    %rbx,%rax
  402cbf:	48 83 c0 01          	add    $0x1,%rax
  402cc3:	48 c1 e0 05          	shl    $0x5,%rax
  402cc7:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
  402ccb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402ccf:	48 39 c3             	cmp    %rax,%rbx
  402cd2:	74 0e                	je     402ce2 <main+0x28f>
  402cd4:	48 83 eb 20          	sub    $0x20,%rbx
  402cd8:	48 89 d9             	mov    %rbx,%rcx
  402cdb:	e8 98 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402ce0:	eb e9                	jmp    402ccb <main+0x278>
    string input; //Our string input
  402ce2:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  402ce9:	48 89 c1             	mov    %rax,%rcx
  402cec:	e8 87 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402cf1:	4c 89 e4             	mov    %r12,%rsp
  402cf4:	89 f0                	mov    %esi,%eax
  402cf6:	eb 71                	jmp    402d69 <main+0x316>
  402cf8:	48 89 c3             	mov    %rax,%rbx
    int wordCount = countWords(input); // count inputs
  402cfb:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  402cff:	48 89 c1             	mov    %rax,%rcx
  402d02:	e8 71 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402d07:	eb 46                	jmp    402d4f <main+0x2fc>
  402d09:	48 89 c3             	mov    %rax,%rbx
    No_Test_Cases(input, wordCount, No_testCases); // assign array with input
  402d0c:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  402d10:	48 89 c1             	mov    %rax,%rcx
  402d13:	e8 60 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402d18:	eb 35                	jmp    402d4f <main+0x2fc>
  402d1a:	48 89 c6             	mov    %rax,%rsi
    string output[No_testCases[wordCount - 1]]; //output array
  402d1d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402d21:	48 89 d8             	mov    %rbx,%rax
  402d24:	48 83 c0 01          	add    $0x1,%rax
  402d28:	48 c1 e0 05          	shl    $0x5,%rax
  402d2c:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
  402d30:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402d34:	48 39 c3             	cmp    %rax,%rbx
  402d37:	74 0e                	je     402d47 <main+0x2f4>
  402d39:	48 83 eb 20          	sub    $0x20,%rbx
  402d3d:	48 89 d9             	mov    %rbx,%rcx
  402d40:	e8 33 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402d45:	eb e9                	jmp    402d30 <main+0x2dd>
  402d47:	48 89 f3             	mov    %rsi,%rbx
  402d4a:	eb 03                	jmp    402d4f <main+0x2fc>
  402d4c:	48 89 c3             	mov    %rax,%rbx
    string input; //Our string input
  402d4f:	48 8d 85 70 ff ff ff 	lea    -0x90(%rbp),%rax
  402d56:	48 89 c1             	mov    %rax,%rcx
  402d59:	e8 1a 01 00 00       	callq  402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402d5e:	48 89 d8             	mov    %rbx,%rax
  402d61:	48 89 c1             	mov    %rax,%rcx
  402d64:	e8 97 16 00 00       	callq  404400 <_Unwind_Resume>
  402d69:	48 89 ec             	mov    %rbp,%rsp
  402d6c:	5b                   	pop    %rbx
  402d6d:	5e                   	pop    %rsi
  402d6e:	5f                   	pop    %rdi
  402d6f:	41 5c                	pop    %r12
  402d71:	41 5d                	pop    %r13
  402d73:	41 5e                	pop    %r14
  402d75:	5d                   	pop    %rbp
  402d76:	c3                   	retq   

0000000000402d77 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  //@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  402d77:	55                   	push   %rbp
  402d78:	48 89 e5             	mov    %rsp,%rbp
  402d7b:	48 83 ec 20          	sub    $0x20,%rsp
  402d7f:	48 8d 0d aa b2 00 00 	lea    0xb2aa(%rip),%rcx        # 40e030 <_ZStL8__ioinit>
  402d86:	e8 c5 00 00 00       	callq  402e50 <_ZNSt8ios_base4InitD1Ev>
  402d8b:	90                   	nop
  402d8c:	48 83 c4 20          	add    $0x20,%rsp
  402d90:	5d                   	pop    %rbp
  402d91:	c3                   	retq   

0000000000402d92 <_Z41__static_initialization_and_destruction_0ii>:
  402d92:	55                   	push   %rbp
  402d93:	48 89 e5             	mov    %rsp,%rbp
  402d96:	48 83 ec 20          	sub    $0x20,%rsp
  402d9a:	89 4d 10             	mov    %ecx,0x10(%rbp)
  402d9d:	89 55 18             	mov    %edx,0x18(%rbp)
  402da0:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
  402da4:	75 21                	jne    402dc7 <_Z41__static_initialization_and_destruction_0ii+0x35>
  402da6:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
  402dad:	75 18                	jne    402dc7 <_Z41__static_initialization_and_destruction_0ii+0x35>
  402daf:	48 8d 0d 7a b2 00 00 	lea    0xb27a(%rip),%rcx        # 40e030 <_ZStL8__ioinit>
  402db6:	e8 9d 00 00 00       	callq  402e58 <_ZNSt8ios_base4InitC1Ev>
  402dbb:	48 8d 0d b5 ff ff ff 	lea    -0x4b(%rip),%rcx        # 402d77 <__tcf_0>
  402dc2:	e8 49 e7 ff ff       	callq  401510 <atexit>
  402dc7:	90                   	nop
  402dc8:	48 83 c4 20          	add    $0x20,%rsp
  402dcc:	5d                   	pop    %rbp
  402dcd:	c3                   	retq   

0000000000402dce <_GLOBAL__sub_I__Z10countWordsNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
  402dce:	55                   	push   %rbp
  402dcf:	48 89 e5             	mov    %rsp,%rbp
  402dd2:	48 83 ec 20          	sub    $0x20,%rsp
  402dd6:	ba ff ff 00 00       	mov    $0xffff,%edx
  402ddb:	b9 01 00 00 00       	mov    $0x1,%ecx
  402de0:	e8 ad ff ff ff       	callq  402d92 <_Z41__static_initialization_and_destruction_0ii>
  402de5:	90                   	nop
  402de6:	48 83 c4 20          	add    $0x20,%rsp
  402dea:	5d                   	pop    %rbp
  402deb:	c3                   	retq   
  402dec:	90                   	nop
  402ded:	90                   	nop
  402dee:	90                   	nop
  402def:	90                   	nop

0000000000402df0 <__gxx_personality_seh0>:
  402df0:	ff 25 8e d9 00 00    	jmpq   *0xd98e(%rip)        # 410784 <__imp___gxx_personality_seh0>
  402df6:	90                   	nop
  402df7:	90                   	nop

0000000000402df8 <__cxa_throw_bad_array_new_length>:
  402df8:	ff 25 7e d9 00 00    	jmpq   *0xd97e(%rip)        # 41077c <__imp___cxa_throw_bad_array_new_length>
  402dfe:	90                   	nop
  402dff:	90                   	nop

0000000000402e00 <__cxa_rethrow>:
  402e00:	ff 25 6e d9 00 00    	jmpq   *0xd96e(%rip)        # 410774 <__imp___cxa_rethrow>
  402e06:	90                   	nop
  402e07:	90                   	nop

0000000000402e08 <__cxa_end_catch>:
  402e08:	ff 25 5e d9 00 00    	jmpq   *0xd95e(%rip)        # 41076c <__imp___cxa_end_catch>
  402e0e:	90                   	nop
  402e0f:	90                   	nop

0000000000402e10 <__cxa_begin_catch>:
  402e10:	ff 25 4e d9 00 00    	jmpq   *0xd94e(%rip)        # 410764 <__imp___cxa_begin_catch>
  402e16:	90                   	nop
  402e17:	90                   	nop

0000000000402e18 <_Znay>:
  402e18:	ff 25 3e d9 00 00    	jmpq   *0xd93e(%rip)        # 41075c <__imp__Znay>
  402e1e:	90                   	nop
  402e1f:	90                   	nop

0000000000402e20 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
  402e20:	ff 25 2e d9 00 00    	jmpq   *0xd92e(%rip)        # 410754 <__imp__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  402e26:	90                   	nop
  402e27:	90                   	nop

0000000000402e28 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
  402e28:	ff 25 1e d9 00 00    	jmpq   *0xd91e(%rip)        # 41074c <__imp__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  402e2e:	90                   	nop
  402e2f:	90                   	nop

0000000000402e30 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
  402e30:	ff 25 0e d9 00 00    	jmpq   *0xd90e(%rip)        # 410744 <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
  402e36:	90                   	nop
  402e37:	90                   	nop

0000000000402e38 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
  402e38:	ff 25 fe d8 00 00    	jmpq   *0xd8fe(%rip)        # 41073c <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
  402e3e:	90                   	nop
  402e3f:	90                   	nop

0000000000402e40 <_ZSt19__throw_logic_errorPKc>:
  402e40:	ff 25 de d8 00 00    	jmpq   *0xd8de(%rip)        # 410724 <__imp__ZSt19__throw_logic_errorPKc>
  402e46:	90                   	nop
  402e47:	90                   	nop

0000000000402e48 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>:
  402e48:	ff 25 ce d8 00 00    	jmpq   *0xd8ce(%rip)        # 41071c <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>
  402e4e:	90                   	nop
  402e4f:	90                   	nop

0000000000402e50 <_ZNSt8ios_base4InitD1Ev>:
  402e50:	ff 25 be d8 00 00    	jmpq   *0xd8be(%rip)        # 410714 <__imp__ZNSt8ios_base4InitD1Ev>
  402e56:	90                   	nop
  402e57:	90                   	nop

0000000000402e58 <_ZNSt8ios_base4InitC1Ev>:
  402e58:	ff 25 ae d8 00 00    	jmpq   *0xd8ae(%rip)        # 41070c <__imp__ZNSt8ios_base4InitC1Ev>
  402e5e:	90                   	nop
  402e5f:	90                   	nop

0000000000402e60 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
  402e60:	ff 25 9e d8 00 00    	jmpq   *0xd89e(%rip)        # 410704 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
  402e66:	90                   	nop
  402e67:	90                   	nop

0000000000402e68 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>:
  402e68:	ff 25 8e d8 00 00    	jmpq   *0xd88e(%rip)        # 4106fc <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode>
  402e6e:	90                   	nop
  402e6f:	90                   	nop

0000000000402e70 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>:
  402e70:	ff 25 7e d8 00 00    	jmpq   *0xd87e(%rip)        # 4106f4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
  402e76:	90                   	nop
  402e77:	90                   	nop

0000000000402e78 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
  402e78:	ff 25 6e d8 00 00    	jmpq   *0xd86e(%rip)        # 4106ec <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
  402e7e:	90                   	nop
  402e7f:	90                   	nop

0000000000402e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
  402e80:	ff 25 5e d8 00 00    	jmpq   *0xd85e(%rip)        # 4106e4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
  402e86:	90                   	nop
  402e87:	90                   	nop

0000000000402e88 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>:
  402e88:	ff 25 4e d8 00 00    	jmpq   *0xd84e(%rip)        # 4106dc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
  402e8e:	90                   	nop
  402e8f:	90                   	nop

0000000000402e90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>:
  402e90:	ff 25 3e d8 00 00    	jmpq   *0xd83e(%rip)        # 4106d4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
  402e96:	90                   	nop
  402e97:	90                   	nop

0000000000402e98 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>:
  402e98:	ff 25 2e d8 00 00    	jmpq   *0xd82e(%rip)        # 4106cc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
  402e9e:	90                   	nop
  402e9f:	90                   	nop

0000000000402ea0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
  402ea0:	ff 25 1e d8 00 00    	jmpq   *0xd81e(%rip)        # 4106c4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
  402ea6:	90                   	nop
  402ea7:	90                   	nop

0000000000402ea8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyRKS4_>:
  402ea8:	ff 25 0e d8 00 00    	jmpq   *0xd80e(%rip)        # 4106bc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyRKS4_>
  402eae:	90                   	nop
  402eaf:	90                   	nop

0000000000402eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyPKc>:
  402eb0:	ff 25 fe d7 00 00    	jmpq   *0xd7fe(%rip)        # 4106b4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyPKc>
  402eb6:	90                   	nop
  402eb7:	90                   	nop

0000000000402eb8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>:
  402eb8:	ff 25 ee d7 00 00    	jmpq   *0xd7ee(%rip)        # 4106ac <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>
  402ebe:	90                   	nop
  402ebf:	90                   	nop

0000000000402ec0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>:
  402ec0:	ff 25 de d7 00 00    	jmpq   *0xd7de(%rip)        # 4106a4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>
  402ec6:	90                   	nop
  402ec7:	90                   	nop

0000000000402ec8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv>:
  402ec8:	ff 25 ce d7 00 00    	jmpq   *0xd7ce(%rip)        # 41069c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5beginEv>
  402ece:	90                   	nop
  402ecf:	90                   	nop

0000000000402ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv>:
  402ed0:	ff 25 be d7 00 00    	jmpq   *0xd7be(%rip)        # 410694 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE3endEv>
  402ed6:	90                   	nop
  402ed7:	90                   	nop

0000000000402ed8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_>:
  402ed8:	ff 25 ae d7 00 00    	jmpq   *0xd7ae(%rip)        # 41068c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_>
  402ede:	90                   	nop
  402edf:	90                   	nop

0000000000402ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>:
  402ee0:	ff 25 9e d7 00 00    	jmpq   *0xd79e(%rip)        # 410684 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
  402ee6:	90                   	nop
  402ee7:	90                   	nop

0000000000402ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
  402ee8:	ff 25 8e d7 00 00    	jmpq   *0xd78e(%rip)        # 41067c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
  402eee:	90                   	nop
  402eef:	90                   	nop

0000000000402ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>:
  402ef0:	ff 25 7e d7 00 00    	jmpq   *0xd77e(%rip)        # 410674 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
  402ef6:	90                   	nop
  402ef7:	90                   	nop

0000000000402ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>:
  402ef8:	ff 25 6e d7 00 00    	jmpq   *0xd76e(%rip)        # 41066c <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
  402efe:	90                   	nop
  402eff:	90                   	nop

0000000000402f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
  402f00:	ff 25 5e d7 00 00    	jmpq   *0xd75e(%rip)        # 410664 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
  402f06:	90                   	nop
  402f07:	90                   	nop

0000000000402f08 <_ZNSolsEPFRSoS_E>:
  402f08:	ff 25 4e d7 00 00    	jmpq   *0xd74e(%rip)        # 41065c <__imp__ZNSolsEPFRSoS_E>
  402f0e:	90                   	nop
  402f0f:	90                   	nop

0000000000402f10 <_ZNSirsERi>:
  402f10:	ff 25 3e d7 00 00    	jmpq   *0xd73e(%rip)        # 410654 <__imp__ZNSirsERi>
  402f16:	90                   	nop
  402f17:	90                   	nop

0000000000402f18 <_ZNSaIcED2Ev>:
  402f18:	ff 25 2e d7 00 00    	jmpq   *0xd72e(%rip)        # 41064c <__imp__ZNSaIcED2Ev>
  402f1e:	90                   	nop
  402f1f:	90                   	nop

0000000000402f20 <_ZNSaIcED1Ev>:
  402f20:	ff 25 1e d7 00 00    	jmpq   *0xd71e(%rip)        # 410644 <__imp__ZNSaIcED1Ev>
  402f26:	90                   	nop
  402f27:	90                   	nop

0000000000402f28 <_ZNSaIcEC1Ev>:
  402f28:	ff 25 0e d7 00 00    	jmpq   *0xd70e(%rip)        # 41063c <__imp__ZNSaIcEC1Ev>
  402f2e:	90                   	nop
  402f2f:	90                   	nop

0000000000402f30 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>:
  402f30:	ff 25 fe d6 00 00    	jmpq   *0xd6fe(%rip)        # 410634 <__imp__ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
  402f36:	90                   	nop
  402f37:	90                   	nop

0000000000402f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>:
  402f38:	ff 25 ee d6 00 00    	jmpq   *0xd6ee(%rip)        # 41062c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
  402f3e:	90                   	nop
  402f3f:	90                   	nop

0000000000402f40 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
  402f40:	ff 25 de d6 00 00    	jmpq   *0xd6de(%rip)        # 410624 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
  402f46:	90                   	nop
  402f47:	90                   	nop

0000000000402f48 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
  402f48:	ff 25 ce d6 00 00    	jmpq   *0xd6ce(%rip)        # 41061c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  402f4e:	90                   	nop
  402f4f:	90                   	nop

0000000000402f50 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>:
  402f50:	ff 25 be d6 00 00    	jmpq   *0xd6be(%rip)        # 410614 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
  402f56:	90                   	nop
  402f57:	90                   	nop

0000000000402f58 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>:
  402f58:	ff 25 ae d6 00 00    	jmpq   *0xd6ae(%rip)        # 41060c <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
  402f5e:	90                   	nop
  402f5f:	90                   	nop

0000000000402f60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>:
  402f60:	ff 25 9e d6 00 00    	jmpq   *0xd69e(%rip)        # 410604 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcy>
  402f66:	90                   	nop
  402f67:	90                   	nop

0000000000402f68 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcy>:
  402f68:	ff 25 8e d6 00 00    	jmpq   *0xd68e(%rip)        # 4105fc <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13find_first_ofEPKcy>
  402f6e:	90                   	nop
  402f6f:	90                   	nop

0000000000402f70 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>:
  402f70:	ff 25 7e d6 00 00    	jmpq   *0xd67e(%rip)        # 4105f4 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
  402f76:	90                   	nop
  402f77:	90                   	nop
  402f78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f7f:	00 

0000000000402f80 <__do_global_dtors>:
  402f80:	48 83 ec 28          	sub    $0x28,%rsp
  402f84:	48 8b 05 85 70 00 00 	mov    0x7085(%rip),%rax        # 40a010 <p.93846>
  402f8b:	48 8b 00             	mov    (%rax),%rax
  402f8e:	48 85 c0             	test   %rax,%rax
  402f91:	74 1d                	je     402fb0 <__do_global_dtors+0x30>
  402f93:	ff d0                	callq  *%rax
  402f95:	48 8b 05 74 70 00 00 	mov    0x7074(%rip),%rax        # 40a010 <p.93846>
  402f9c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  402fa0:	48 8b 40 08          	mov    0x8(%rax),%rax
  402fa4:	48 89 15 65 70 00 00 	mov    %rdx,0x7065(%rip)        # 40a010 <p.93846>
  402fab:	48 85 c0             	test   %rax,%rax
  402fae:	75 e3                	jne    402f93 <__do_global_dtors+0x13>
  402fb0:	48 83 c4 28          	add    $0x28,%rsp
  402fb4:	c3                   	retq   
  402fb5:	90                   	nop
  402fb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402fbd:	00 00 00 

0000000000402fc0 <__do_global_ctors>:
  402fc0:	56                   	push   %rsi
  402fc1:	53                   	push   %rbx
  402fc2:	48 83 ec 28          	sub    $0x28,%rsp
  402fc6:	48 8b 0d 33 88 00 00 	mov    0x8833(%rip),%rcx        # 40b800 <.refptr.__CTOR_LIST__>
  402fcd:	48 8b 11             	mov    (%rcx),%rdx
  402fd0:	83 fa ff             	cmp    $0xffffffff,%edx
  402fd3:	89 d0                	mov    %edx,%eax
  402fd5:	74 39                	je     403010 <__do_global_ctors+0x50>
  402fd7:	85 c0                	test   %eax,%eax
  402fd9:	74 20                	je     402ffb <__do_global_ctors+0x3b>
  402fdb:	89 c2                	mov    %eax,%edx
  402fdd:	83 e8 01             	sub    $0x1,%eax
  402fe0:	48 8d 1c d1          	lea    (%rcx,%rdx,8),%rbx
  402fe4:	48 29 c2             	sub    %rax,%rdx
  402fe7:	48 8d 74 d1 f8       	lea    -0x8(%rcx,%rdx,8),%rsi
  402fec:	0f 1f 40 00          	nopl   0x0(%rax)
  402ff0:	ff 13                	callq  *(%rbx)
  402ff2:	48 83 eb 08          	sub    $0x8,%rbx
  402ff6:	48 39 f3             	cmp    %rsi,%rbx
  402ff9:	75 f5                	jne    402ff0 <__do_global_ctors+0x30>
  402ffb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 402f80 <__do_global_dtors>
  403002:	48 83 c4 28          	add    $0x28,%rsp
  403006:	5b                   	pop    %rbx
  403007:	5e                   	pop    %rsi
  403008:	e9 03 e5 ff ff       	jmpq   401510 <atexit>
  40300d:	0f 1f 00             	nopl   (%rax)
  403010:	31 c0                	xor    %eax,%eax
  403012:	eb 02                	jmp    403016 <__do_global_ctors+0x56>
  403014:	89 d0                	mov    %edx,%eax
  403016:	44 8d 40 01          	lea    0x1(%rax),%r8d
  40301a:	4a 83 3c c1 00       	cmpq   $0x0,(%rcx,%r8,8)
  40301f:	4c 89 c2             	mov    %r8,%rdx
  403022:	75 f0                	jne    403014 <__do_global_ctors+0x54>
  403024:	eb b1                	jmp    402fd7 <__do_global_ctors+0x17>
  403026:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40302d:	00 00 00 

0000000000403030 <__main>:
  403030:	8b 05 0a b0 00 00    	mov    0xb00a(%rip),%eax        # 40e040 <initialized>
  403036:	85 c0                	test   %eax,%eax
  403038:	74 06                	je     403040 <__main+0x10>
  40303a:	c3                   	retq   
  40303b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403040:	c7 05 f6 af 00 00 01 	movl   $0x1,0xaff6(%rip)        # 40e040 <initialized>
  403047:	00 00 00 
  40304a:	e9 71 ff ff ff       	jmpq   402fc0 <__do_global_ctors>
  40304f:	90                   	nop

0000000000403050 <my_lconv_init>:
  403050:	48 ff 25 bd d4 00 00 	rex.W jmpq *0xd4bd(%rip)        # 410514 <__imp___lconv_init>
  403057:	90                   	nop
  403058:	90                   	nop
  403059:	90                   	nop
  40305a:	90                   	nop
  40305b:	90                   	nop
  40305c:	90                   	nop
  40305d:	90                   	nop
  40305e:	90                   	nop
  40305f:	90                   	nop

0000000000403060 <_setargv>:
  403060:	31 c0                	xor    %eax,%eax
  403062:	c3                   	retq   
  403063:	90                   	nop
  403064:	90                   	nop
  403065:	90                   	nop
  403066:	90                   	nop
  403067:	90                   	nop
  403068:	90                   	nop
  403069:	90                   	nop
  40306a:	90                   	nop
  40306b:	90                   	nop
  40306c:	90                   	nop
  40306d:	90                   	nop
  40306e:	90                   	nop
  40306f:	90                   	nop

0000000000403070 <__security_init_cookie>:
  403070:	41 54                	push   %r12
  403072:	55                   	push   %rbp
  403073:	57                   	push   %rdi
  403074:	56                   	push   %rsi
  403075:	53                   	push   %rbx
  403076:	48 83 ec 30          	sub    $0x30,%rsp
  40307a:	48 8b 1d 5f 70 00 00 	mov    0x705f(%rip),%rbx        # 40a0e0 <__security_cookie>
  403081:	48 b8 32 a2 df 2d 99 	movabs $0x2b992ddfa232,%rax
  403088:	2b 00 00 
  40308b:	48 39 c3             	cmp    %rax,%rbx
  40308e:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  403095:	00 00 
  403097:	74 17                	je     4030b0 <__security_init_cookie+0x40>
  403099:	48 f7 d3             	not    %rbx
  40309c:	48 89 1d 4d 70 00 00 	mov    %rbx,0x704d(%rip)        # 40a0f0 <__security_cookie_complement>
  4030a3:	48 83 c4 30          	add    $0x30,%rsp
  4030a7:	5b                   	pop    %rbx
  4030a8:	5e                   	pop    %rsi
  4030a9:	5f                   	pop    %rdi
  4030aa:	5d                   	pop    %rbp
  4030ab:	41 5c                	pop    %r12
  4030ad:	c3                   	retq   
  4030ae:	66 90                	xchg   %ax,%ax
  4030b0:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4030b5:	ff 15 89 d3 00 00    	callq  *0xd389(%rip)        # 410444 <__imp_GetSystemTimeAsFileTime>
  4030bb:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
  4030c0:	ff 15 5e d3 00 00    	callq  *0xd35e(%rip)        # 410424 <__imp_GetCurrentProcessId>
  4030c6:	41 89 c4             	mov    %eax,%r12d
  4030c9:	ff 15 5d d3 00 00    	callq  *0xd35d(%rip)        # 41042c <__imp_GetCurrentThreadId>
  4030cf:	89 c5                	mov    %eax,%ebp
  4030d1:	ff 15 75 d3 00 00    	callq  *0xd375(%rip)        # 41044c <__imp_GetTickCount>
  4030d7:	48 8d 4c 24 28       	lea    0x28(%rsp),%rcx
  4030dc:	89 c7                	mov    %eax,%edi
  4030de:	ff 15 90 d3 00 00    	callq  *0xd390(%rip)        # 410474 <__imp_QueryPerformanceCounter>
  4030e4:	48 33 74 24 28       	xor    0x28(%rsp),%rsi
  4030e9:	44 89 e0             	mov    %r12d,%eax
  4030ec:	48 ba ff ff ff ff ff 	movabs $0xffffffffffff,%rdx
  4030f3:	ff 00 00 
  4030f6:	48 31 f0             	xor    %rsi,%rax
  4030f9:	89 ee                	mov    %ebp,%esi
  4030fb:	48 31 c6             	xor    %rax,%rsi
  4030fe:	89 f8                	mov    %edi,%eax
  403100:	48 31 f0             	xor    %rsi,%rax
  403103:	48 21 d0             	and    %rdx,%rax
  403106:	48 39 d8             	cmp    %rbx,%rax
  403109:	74 25                	je     403130 <__security_init_cookie+0xc0>
  40310b:	48 89 c2             	mov    %rax,%rdx
  40310e:	48 f7 d2             	not    %rdx
  403111:	48 89 05 c8 6f 00 00 	mov    %rax,0x6fc8(%rip)        # 40a0e0 <__security_cookie>
  403118:	48 89 15 d1 6f 00 00 	mov    %rdx,0x6fd1(%rip)        # 40a0f0 <__security_cookie_complement>
  40311f:	48 83 c4 30          	add    $0x30,%rsp
  403123:	5b                   	pop    %rbx
  403124:	5e                   	pop    %rsi
  403125:	5f                   	pop    %rdi
  403126:	5d                   	pop    %rbp
  403127:	41 5c                	pop    %r12
  403129:	c3                   	retq   
  40312a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403130:	48 ba cc 5d 20 d2 66 	movabs $0xffffd466d2205dcc,%rdx
  403137:	d4 ff ff 
  40313a:	48 b8 33 a2 df 2d 99 	movabs $0x2b992ddfa233,%rax
  403141:	2b 00 00 
  403144:	eb cb                	jmp    403111 <__security_init_cookie+0xa1>
  403146:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40314d:	00 00 00 

0000000000403150 <__report_gsfailure>:
  403150:	55                   	push   %rbp
  403151:	56                   	push   %rsi
  403152:	53                   	push   %rbx
  403153:	48 89 e5             	mov    %rsp,%rbp
  403156:	48 83 ec 70          	sub    $0x70,%rsp
  40315a:	48 89 ce             	mov    %rcx,%rsi
  40315d:	48 8d 0d fc ae 00 00 	lea    0xaefc(%rip),%rcx        # 40e060 <GS_ContextRecord>
  403164:	ff 15 1a d3 00 00    	callq  *0xd31a(%rip)        # 410484 <__imp_RtlCaptureContext>
  40316a:	48 8b 1d e7 af 00 00 	mov    0xafe7(%rip),%rbx        # 40e158 <GS_ContextRecord+0xf8>
  403171:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
  403175:	45 31 c0             	xor    %r8d,%r8d
  403178:	48 89 d9             	mov    %rbx,%rcx
  40317b:	ff 15 0b d3 00 00    	callq  *0xd30b(%rip)        # 41048c <__imp_RtlLookupFunctionEntry>
  403181:	48 85 c0             	test   %rax,%rax
  403184:	0f 84 a3 00 00 00    	je     40322d <__report_gsfailure+0xdd>
  40318a:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  40318e:	49 89 c1             	mov    %rax,%r9
  403191:	49 89 d8             	mov    %rbx,%r8
  403194:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  40319b:	00 00 
  40319d:	48 8d 0d bc ae 00 00 	lea    0xaebc(%rip),%rcx        # 40e060 <GS_ContextRecord>
  4031a4:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4031a9:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  4031ad:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  4031b2:	31 c9                	xor    %ecx,%ecx
  4031b4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4031b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4031bd:	ff 15 d1 d2 00 00    	callq  *0xd2d1(%rip)        # 410494 <__imp_RtlVirtualUnwind>
  4031c3:	48 8b 05 8e af 00 00 	mov    0xaf8e(%rip),%rax        # 40e158 <GS_ContextRecord+0xf8>
  4031ca:	31 c9                	xor    %ecx,%ecx
  4031cc:	48 89 35 0d af 00 00 	mov    %rsi,0xaf0d(%rip)        # 40e0e0 <GS_ContextRecord+0x80>
  4031d3:	48 89 05 76 b3 00 00 	mov    %rax,0xb376(%rip)        # 40e550 <GS_ExceptionRecord+0x10>
  4031da:	48 b8 09 04 00 c0 01 	movabs $0x1c0000409,%rax
  4031e1:	00 00 00 
  4031e4:	48 89 05 55 b3 00 00 	mov    %rax,0xb355(%rip)        # 40e540 <GS_ExceptionRecord>
  4031eb:	48 8b 05 ee 6e 00 00 	mov    0x6eee(%rip),%rax        # 40a0e0 <__security_cookie>
  4031f2:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4031f6:	48 8b 05 f3 6e 00 00 	mov    0x6ef3(%rip),%rax        # 40a0f0 <__security_cookie_complement>
  4031fd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  403201:	ff 15 95 d2 00 00    	callq  *0xd295(%rip)        # 41049c <__imp_SetUnhandledExceptionFilter>
  403207:	48 8d 0d 12 7f 00 00 	lea    0x7f12(%rip),%rcx        # 40b120 <GS_ExceptionPointers>
  40320e:	ff 15 a8 d2 00 00    	callq  *0xd2a8(%rip)        # 4104bc <__imp_UnhandledExceptionFilter>
  403214:	ff 15 02 d2 00 00    	callq  *0xd202(%rip)        # 41041c <__imp_GetCurrentProcess>
  40321a:	ba 09 04 00 c0       	mov    $0xc0000409,%edx
  40321f:	48 89 c1             	mov    %rax,%rcx
  403222:	ff 15 84 d2 00 00    	callq  *0xd284(%rip)        # 4104ac <__imp_TerminateProcess>
  403228:	e8 03 5e 00 00       	callq  409030 <abort>
  40322d:	48 8b 45 18          	mov    0x18(%rbp),%rax
  403231:	48 89 05 20 af 00 00 	mov    %rax,0xaf20(%rip)        # 40e158 <GS_ContextRecord+0xf8>
  403238:	48 8d 45 08          	lea    0x8(%rbp),%rax
  40323c:	48 89 05 b5 ae 00 00 	mov    %rax,0xaeb5(%rip)        # 40e0f8 <GS_ContextRecord+0x98>
  403243:	e9 7b ff ff ff       	jmpq   4031c3 <__report_gsfailure+0x73>
  403248:	90                   	nop
  403249:	90                   	nop
  40324a:	90                   	nop
  40324b:	90                   	nop
  40324c:	90                   	nop
  40324d:	90                   	nop
  40324e:	90                   	nop
  40324f:	90                   	nop

0000000000403250 <__dyn_tls_dtor>:
  403250:	48 83 ec 28          	sub    $0x28,%rsp
  403254:	83 fa 03             	cmp    $0x3,%edx
  403257:	74 17                	je     403270 <__dyn_tls_dtor+0x20>
  403259:	85 d2                	test   %edx,%edx
  40325b:	74 13                	je     403270 <__dyn_tls_dtor+0x20>
  40325d:	b8 01 00 00 00       	mov    $0x1,%eax
  403262:	48 83 c4 28          	add    $0x28,%rsp
  403266:	c3                   	retq   
  403267:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40326e:	00 00 
  403270:	e8 cb 0c 00 00       	callq  403f40 <__mingw_TLScallback>
  403275:	b8 01 00 00 00       	mov    $0x1,%eax
  40327a:	48 83 c4 28          	add    $0x28,%rsp
  40327e:	c3                   	retq   
  40327f:	90                   	nop

0000000000403280 <__dyn_tls_init>:
  403280:	56                   	push   %rsi
  403281:	53                   	push   %rbx
  403282:	48 83 ec 28          	sub    $0x28,%rsp
  403286:	48 8b 05 23 85 00 00 	mov    0x8523(%rip),%rax        # 40b7b0 <.refptr._CRT_MT>
  40328d:	83 38 02             	cmpl   $0x2,(%rax)
  403290:	74 06                	je     403298 <__dyn_tls_init+0x18>
  403292:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
  403298:	83 fa 02             	cmp    $0x2,%edx
  40329b:	74 13                	je     4032b0 <__dyn_tls_init+0x30>
  40329d:	83 fa 01             	cmp    $0x1,%edx
  4032a0:	74 40                	je     4032e2 <__dyn_tls_init+0x62>
  4032a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4032a7:	48 83 c4 28          	add    $0x28,%rsp
  4032ab:	5b                   	pop    %rbx
  4032ac:	5e                   	pop    %rsi
  4032ad:	c3                   	retq   
  4032ae:	66 90                	xchg   %ax,%ax
  4032b0:	48 8d 1d a9 ed 00 00 	lea    0xeda9(%rip),%rbx        # 412060 <__xd_z>
  4032b7:	48 8d 35 a2 ed 00 00 	lea    0xeda2(%rip),%rsi        # 412060 <__xd_z>
  4032be:	48 39 de             	cmp    %rbx,%rsi
  4032c1:	74 df                	je     4032a2 <__dyn_tls_init+0x22>
  4032c3:	48 8b 03             	mov    (%rbx),%rax
  4032c6:	48 85 c0             	test   %rax,%rax
  4032c9:	74 02                	je     4032cd <__dyn_tls_init+0x4d>
  4032cb:	ff d0                	callq  *%rax
  4032cd:	48 83 c3 08          	add    $0x8,%rbx
  4032d1:	48 39 de             	cmp    %rbx,%rsi
  4032d4:	75 ed                	jne    4032c3 <__dyn_tls_init+0x43>
  4032d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4032db:	48 83 c4 28          	add    $0x28,%rsp
  4032df:	5b                   	pop    %rbx
  4032e0:	5e                   	pop    %rsi
  4032e1:	c3                   	retq   
  4032e2:	e8 59 0c 00 00       	callq  403f40 <__mingw_TLScallback>
  4032e7:	b8 01 00 00 00       	mov    $0x1,%eax
  4032ec:	48 83 c4 28          	add    $0x28,%rsp
  4032f0:	5b                   	pop    %rbx
  4032f1:	5e                   	pop    %rsi
  4032f2:	c3                   	retq   
  4032f3:	0f 1f 00             	nopl   (%rax)
  4032f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4032fd:	00 00 00 

0000000000403300 <__tlregdtor>:
  403300:	31 c0                	xor    %eax,%eax
  403302:	c3                   	retq   
  403303:	90                   	nop
  403304:	90                   	nop
  403305:	90                   	nop
  403306:	90                   	nop
  403307:	90                   	nop
  403308:	90                   	nop
  403309:	90                   	nop
  40330a:	90                   	nop
  40330b:	90                   	nop
  40330c:	90                   	nop
  40330d:	90                   	nop
  40330e:	90                   	nop
  40330f:	90                   	nop

0000000000403310 <__mingw_raise_matherr>:
  403310:	48 83 ec 58          	sub    $0x58,%rsp
  403314:	48 8b 05 e5 b2 00 00 	mov    0xb2e5(%rip),%rax        # 40e600 <stUserMathErr>
  40331b:	48 85 c0             	test   %rax,%rax
  40331e:	74 2c                	je     40334c <__mingw_raise_matherr+0x3c>
  403320:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
  403327:	00 00 
  403329:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  40332d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  403332:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  403337:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
  40333d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
  403343:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  403349:	ff d0                	callq  *%rax
  40334b:	90                   	nop
  40334c:	48 83 c4 58          	add    $0x58,%rsp
  403350:	c3                   	retq   
  403351:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40335d:	00 00 00 

0000000000403360 <__mingw_setusermatherr>:
  403360:	48 89 0d 99 b2 00 00 	mov    %rcx,0xb299(%rip)        # 40e600 <stUserMathErr>
  403367:	e9 f4 5c 00 00       	jmpq   409060 <__setusermatherr>
  40336c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403370 <_matherr>:
  403370:	56                   	push   %rsi
  403371:	53                   	push   %rbx
  403372:	48 83 ec 78          	sub    $0x78,%rsp
  403376:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
  40337b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
  403380:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
  403386:	83 39 06             	cmpl   $0x6,(%rcx)
  403389:	0f 87 d1 00 00 00    	ja     403460 <_matherr+0xf0>
  40338f:	8b 01                	mov    (%rcx),%eax
  403391:	48 8d 15 2c 7f 00 00 	lea    0x7f2c(%rip),%rdx        # 40b2c4 <.rdata+0x124>
  403398:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40339c:	48 01 d0             	add    %rdx,%rax
  40339f:	ff e0                	jmpq   *%rax
  4033a1:	48 8d 1d f8 7d 00 00 	lea    0x7df8(%rip),%rbx        # 40b1a0 <.rdata>
  4033a8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
  4033ac:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
  4033b2:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
  4033b7:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
  4033bc:	b9 02 00 00 00       	mov    $0x2,%ecx
  4033c1:	e8 da 5c 00 00       	callq  4090a0 <__acrt_iob_func>
  4033c6:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
  4033cd:	49 89 f1             	mov    %rsi,%r9
  4033d0:	49 89 d8             	mov    %rbx,%r8
  4033d3:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
  4033d9:	48 8d 15 b8 7e 00 00 	lea    0x7eb8(%rip),%rdx        # 40b298 <.rdata+0xf8>
  4033e0:	48 89 c1             	mov    %rax,%rcx
  4033e3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
  4033e9:	e8 2a 5c 00 00       	callq  409018 <fprintf>
  4033ee:	90                   	nop
  4033ef:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
  4033f4:	31 c0                	xor    %eax,%eax
  4033f6:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
  4033fb:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
  403401:	48 83 c4 78          	add    $0x78,%rsp
  403405:	5b                   	pop    %rbx
  403406:	5e                   	pop    %rsi
  403407:	c3                   	retq   
  403408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40340f:	00 
  403410:	48 8d 1d a8 7d 00 00 	lea    0x7da8(%rip),%rbx        # 40b1bf <.rdata+0x1f>
  403417:	eb 8f                	jmp    4033a8 <_matherr+0x38>
  403419:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403420:	48 8d 1d b9 7d 00 00 	lea    0x7db9(%rip),%rbx        # 40b1e0 <.rdata+0x40>
  403427:	e9 7c ff ff ff       	jmpq   4033a8 <_matherr+0x38>
  40342c:	0f 1f 40 00          	nopl   0x0(%rax)
  403430:	48 8d 1d 19 7e 00 00 	lea    0x7e19(%rip),%rbx        # 40b250 <.rdata+0xb0>
  403437:	e9 6c ff ff ff       	jmpq   4033a8 <_matherr+0x38>
  40343c:	0f 1f 40 00          	nopl   0x0(%rax)
  403440:	48 8d 1d e1 7d 00 00 	lea    0x7de1(%rip),%rbx        # 40b228 <.rdata+0x88>
  403447:	e9 5c ff ff ff       	jmpq   4033a8 <_matherr+0x38>
  40344c:	0f 1f 40 00          	nopl   0x0(%rax)
  403450:	48 8d 1d a9 7d 00 00 	lea    0x7da9(%rip),%rbx        # 40b200 <.rdata+0x60>
  403457:	e9 4c ff ff ff       	jmpq   4033a8 <_matherr+0x38>
  40345c:	0f 1f 40 00          	nopl   0x0(%rax)
  403460:	48 8d 1d 1f 7e 00 00 	lea    0x7e1f(%rip),%rbx        # 40b286 <.rdata+0xe6>
  403467:	e9 3c ff ff ff       	jmpq   4033a8 <_matherr+0x38>
  40346c:	90                   	nop
  40346d:	90                   	nop
  40346e:	90                   	nop
  40346f:	90                   	nop

0000000000403470 <_fpreset>:
  403470:	db e3                	fninit 
  403472:	c3                   	retq   
  403473:	90                   	nop
  403474:	90                   	nop
  403475:	90                   	nop
  403476:	90                   	nop
  403477:	90                   	nop
  403478:	90                   	nop
  403479:	90                   	nop
  40347a:	90                   	nop
  40347b:	90                   	nop
  40347c:	90                   	nop
  40347d:	90                   	nop
  40347e:	90                   	nop
  40347f:	90                   	nop

0000000000403480 <_decode_pointer>:
  403480:	48 89 c8             	mov    %rcx,%rax
  403483:	c3                   	retq   
  403484:	66 90                	xchg   %ax,%ax
  403486:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40348d:	00 00 00 

0000000000403490 <_encode_pointer>:
  403490:	48 89 c8             	mov    %rcx,%rax
  403493:	c3                   	retq   
  403494:	90                   	nop
  403495:	90                   	nop
  403496:	90                   	nop
  403497:	90                   	nop
  403498:	90                   	nop
  403499:	90                   	nop
  40349a:	90                   	nop
  40349b:	90                   	nop
  40349c:	90                   	nop
  40349d:	90                   	nop
  40349e:	90                   	nop
  40349f:	90                   	nop

00000000004034a0 <__write_memory.part.0>:
  4034a0:	41 54                	push   %r12
  4034a2:	55                   	push   %rbp
  4034a3:	57                   	push   %rdi
  4034a4:	56                   	push   %rsi
  4034a5:	53                   	push   %rbx
  4034a6:	48 83 ec 50          	sub    $0x50,%rsp
  4034aa:	48 63 35 73 b1 00 00 	movslq 0xb173(%rip),%rsi        # 40e624 <maxSections>
  4034b1:	85 f6                	test   %esi,%esi
  4034b3:	48 89 cb             	mov    %rcx,%rbx
  4034b6:	48 89 d5             	mov    %rdx,%rbp
  4034b9:	4c 89 c7             	mov    %r8,%rdi
  4034bc:	0f 8e 66 01 00 00    	jle    403628 <__write_memory.part.0+0x188>
  4034c2:	48 8b 05 5f b1 00 00 	mov    0xb15f(%rip),%rax        # 40e628 <the_secs>
  4034c9:	31 c9                	xor    %ecx,%ecx
  4034cb:	48 83 c0 18          	add    $0x18,%rax
  4034cf:	90                   	nop
  4034d0:	48 8b 10             	mov    (%rax),%rdx
  4034d3:	48 39 d3             	cmp    %rdx,%rbx
  4034d6:	72 14                	jb     4034ec <__write_memory.part.0+0x4c>
  4034d8:	4c 8b 40 08          	mov    0x8(%rax),%r8
  4034dc:	45 8b 40 08          	mov    0x8(%r8),%r8d
  4034e0:	4c 01 c2             	add    %r8,%rdx
  4034e3:	48 39 d3             	cmp    %rdx,%rbx
  4034e6:	0f 82 89 00 00 00    	jb     403575 <__write_memory.part.0+0xd5>
  4034ec:	83 c1 01             	add    $0x1,%ecx
  4034ef:	48 83 c0 28          	add    $0x28,%rax
  4034f3:	39 f1                	cmp    %esi,%ecx
  4034f5:	75 d9                	jne    4034d0 <__write_memory.part.0+0x30>
  4034f7:	48 89 d9             	mov    %rbx,%rcx
  4034fa:	e8 41 0c 00 00       	callq  404140 <__mingw_GetSectionForAddress>
  4034ff:	48 85 c0             	test   %rax,%rax
  403502:	49 89 c4             	mov    %rax,%r12
  403505:	0f 84 52 01 00 00    	je     40365d <__write_memory.part.0+0x1bd>
  40350b:	48 8b 05 16 b1 00 00 	mov    0xb116(%rip),%rax        # 40e628 <the_secs>
  403512:	48 8d 34 b6          	lea    (%rsi,%rsi,4),%rsi
  403516:	48 c1 e6 03          	shl    $0x3,%rsi
  40351a:	48 01 f0             	add    %rsi,%rax
  40351d:	4c 89 60 20          	mov    %r12,0x20(%rax)
  403521:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  403527:	e8 44 0d 00 00       	callq  404270 <_GetPEImageBase>
  40352c:	41 8b 4c 24 0c       	mov    0xc(%r12),%ecx
  403531:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  403536:	41 b8 30 00 00 00    	mov    $0x30,%r8d
  40353c:	48 01 c1             	add    %rax,%rcx
  40353f:	48 8b 05 e2 b0 00 00 	mov    0xb0e2(%rip),%rax        # 40e628 <the_secs>
  403546:	48 89 4c 30 18       	mov    %rcx,0x18(%rax,%rsi,1)
  40354b:	ff 15 7b cf 00 00    	callq  *0xcf7b(%rip)        # 4104cc <__imp_VirtualQuery>
  403551:	48 85 c0             	test   %rax,%rax
  403554:	0f 84 e6 00 00 00    	je     403640 <__write_memory.part.0+0x1a0>
  40355a:	8b 44 24 44          	mov    0x44(%rsp),%eax
  40355e:	8d 50 fc             	lea    -0x4(%rax),%edx
  403561:	83 e2 fb             	and    $0xfffffffb,%edx
  403564:	74 08                	je     40356e <__write_memory.part.0+0xce>
  403566:	83 e8 40             	sub    $0x40,%eax
  403569:	83 e0 bf             	and    $0xffffffbf,%eax
  40356c:	75 62                	jne    4035d0 <__write_memory.part.0+0x130>
  40356e:	83 05 af b0 00 00 01 	addl   $0x1,0xb0af(%rip)        # 40e624 <maxSections>
  403575:	83 ff 08             	cmp    $0x8,%edi
  403578:	73 29                	jae    4035a3 <__write_memory.part.0+0x103>
  40357a:	40 f6 c7 04          	test   $0x4,%dil
  40357e:	0f 85 90 00 00 00    	jne    403614 <__write_memory.part.0+0x174>
  403584:	85 ff                	test   %edi,%edi
  403586:	74 10                	je     403598 <__write_memory.part.0+0xf8>
  403588:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  40358c:	40 f6 c7 02          	test   $0x2,%dil
  403590:	88 03                	mov    %al,(%rbx)
  403592:	0f 85 97 00 00 00    	jne    40362f <__write_memory.part.0+0x18f>
  403598:	48 83 c4 50          	add    $0x50,%rsp
  40359c:	5b                   	pop    %rbx
  40359d:	5e                   	pop    %rsi
  40359e:	5f                   	pop    %rdi
  40359f:	5d                   	pop    %rbp
  4035a0:	41 5c                	pop    %r12
  4035a2:	c3                   	retq   
  4035a3:	89 f8                	mov    %edi,%eax
  4035a5:	83 ef 01             	sub    $0x1,%edi
  4035a8:	48 8b 54 05 f8       	mov    -0x8(%rbp,%rax,1),%rdx
  4035ad:	83 ff 08             	cmp    $0x8,%edi
  4035b0:	48 89 54 03 f8       	mov    %rdx,-0x8(%rbx,%rax,1)
  4035b5:	72 e1                	jb     403598 <__write_memory.part.0+0xf8>
  4035b7:	83 e7 f8             	and    $0xfffffff8,%edi
  4035ba:	31 c0                	xor    %eax,%eax
  4035bc:	89 c2                	mov    %eax,%edx
  4035be:	83 c0 08             	add    $0x8,%eax
  4035c1:	48 8b 4c 15 00       	mov    0x0(%rbp,%rdx,1),%rcx
  4035c6:	39 f8                	cmp    %edi,%eax
  4035c8:	48 89 0c 13          	mov    %rcx,(%rbx,%rdx,1)
  4035cc:	72 ee                	jb     4035bc <__write_memory.part.0+0x11c>
  4035ce:	eb c8                	jmp    403598 <__write_memory.part.0+0xf8>
  4035d0:	48 03 35 51 b0 00 00 	add    0xb051(%rip),%rsi        # 40e628 <the_secs>
  4035d7:	41 b8 40 00 00 00    	mov    $0x40,%r8d
  4035dd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4035e2:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4035e7:	49 89 f1             	mov    %rsi,%r9
  4035ea:	48 89 4e 08          	mov    %rcx,0x8(%rsi)
  4035ee:	48 89 56 10          	mov    %rdx,0x10(%rsi)
  4035f2:	ff 15 cc ce 00 00    	callq  *0xcecc(%rip)        # 4104c4 <__imp_VirtualProtect>
  4035f8:	85 c0                	test   %eax,%eax
  4035fa:	0f 85 6e ff ff ff    	jne    40356e <__write_memory.part.0+0xce>
  403600:	ff 15 2e ce 00 00    	callq  *0xce2e(%rip)        # 410434 <__imp_GetLastError>
  403606:	48 8d 0d 4b 7d 00 00 	lea    0x7d4b(%rip),%rcx        # 40b358 <.rdata+0x78>
  40360d:	89 c2                	mov    %eax,%edx
  40360f:	e8 8c 62 00 00       	callq  4098a0 <__report_error>
  403614:	8b 45 00             	mov    0x0(%rbp),%eax
  403617:	89 ff                	mov    %edi,%edi
  403619:	89 03                	mov    %eax,(%rbx)
  40361b:	8b 44 3d fc          	mov    -0x4(%rbp,%rdi,1),%eax
  40361f:	89 44 3b fc          	mov    %eax,-0x4(%rbx,%rdi,1)
  403623:	e9 70 ff ff ff       	jmpq   403598 <__write_memory.part.0+0xf8>
  403628:	31 f6                	xor    %esi,%esi
  40362a:	e9 c8 fe ff ff       	jmpq   4034f7 <__write_memory.part.0+0x57>
  40362f:	89 ff                	mov    %edi,%edi
  403631:	0f b7 44 3d fe       	movzwl -0x2(%rbp,%rdi,1),%eax
  403636:	66 89 44 3b fe       	mov    %ax,-0x2(%rbx,%rdi,1)
  40363b:	e9 58 ff ff ff       	jmpq   403598 <__write_memory.part.0+0xf8>
  403640:	48 8b 05 e1 af 00 00 	mov    0xafe1(%rip),%rax        # 40e628 <the_secs>
  403647:	48 8d 0d d2 7c 00 00 	lea    0x7cd2(%rip),%rcx        # 40b320 <.rdata+0x40>
  40364e:	41 8b 54 24 08       	mov    0x8(%r12),%edx
  403653:	4c 8b 44 30 18       	mov    0x18(%rax,%rsi,1),%r8
  403658:	e8 43 62 00 00       	callq  4098a0 <__report_error>
  40365d:	48 8d 0d 9c 7c 00 00 	lea    0x7c9c(%rip),%rcx        # 40b300 <.rdata+0x20>
  403664:	48 89 da             	mov    %rbx,%rdx
  403667:	e8 34 62 00 00       	callq  4098a0 <__report_error>
  40366c:	90                   	nop
  40366d:	0f 1f 00             	nopl   (%rax)

0000000000403670 <_pei386_runtime_relocator>:
  403670:	55                   	push   %rbp
  403671:	41 57                	push   %r15
  403673:	41 56                	push   %r14
  403675:	41 55                	push   %r13
  403677:	41 54                	push   %r12
  403679:	57                   	push   %rdi
  40367a:	56                   	push   %rsi
  40367b:	53                   	push   %rbx
  40367c:	48 83 ec 38          	sub    $0x38,%rsp
  403680:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  403687:	00 
  403688:	8b 1d 92 af 00 00    	mov    0xaf92(%rip),%ebx        # 40e620 <was_init.95174>
  40368e:	85 db                	test   %ebx,%ebx
  403690:	74 11                	je     4036a3 <_pei386_runtime_relocator+0x33>
  403692:	48 8d 65 b8          	lea    -0x48(%rbp),%rsp
  403696:	5b                   	pop    %rbx
  403697:	5e                   	pop    %rsi
  403698:	5f                   	pop    %rdi
  403699:	41 5c                	pop    %r12
  40369b:	41 5d                	pop    %r13
  40369d:	41 5e                	pop    %r14
  40369f:	41 5f                	pop    %r15
  4036a1:	5d                   	pop    %rbp
  4036a2:	c3                   	retq   
  4036a3:	c7 05 73 af 00 00 01 	movl   $0x1,0xaf73(%rip)        # 40e620 <was_init.95174>
  4036aa:	00 00 00 
  4036ad:	e8 0e 0b 00 00       	callq  4041c0 <__mingw_GetSectionCount>
  4036b2:	48 98                	cltq   
  4036b4:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4036b8:	48 8d 04 c5 1e 00 00 	lea    0x1e(,%rax,8),%rax
  4036bf:	00 
  4036c0:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4036c4:	e8 47 0d 00 00       	callq  404410 <___chkstk_ms>
  4036c9:	4c 8b 25 40 81 00 00 	mov    0x8140(%rip),%r12        # 40b810 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
  4036d0:	c7 05 4a af 00 00 00 	movl   $0x0,0xaf4a(%rip)        # 40e624 <maxSections>
  4036d7:	00 00 00 
  4036da:	48 8b 35 3f 81 00 00 	mov    0x813f(%rip),%rsi        # 40b820 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
  4036e1:	48 29 c4             	sub    %rax,%rsp
  4036e4:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  4036e9:	48 89 05 38 af 00 00 	mov    %rax,0xaf38(%rip)        # 40e628 <the_secs>
  4036f0:	4c 89 e0             	mov    %r12,%rax
  4036f3:	48 29 f0             	sub    %rsi,%rax
  4036f6:	48 83 f8 07          	cmp    $0x7,%rax
  4036fa:	7e 96                	jle    403692 <_pei386_runtime_relocator+0x22>
  4036fc:	48 83 f8 0b          	cmp    $0xb,%rax
  403700:	8b 16                	mov    (%rsi),%edx
  403702:	0f 8e c8 00 00 00    	jle    4037d0 <_pei386_runtime_relocator+0x160>
  403708:	85 d2                	test   %edx,%edx
  40370a:	0f 84 a4 00 00 00    	je     4037b4 <_pei386_runtime_relocator+0x144>
  403710:	4c 39 e6             	cmp    %r12,%rsi
  403713:	0f 83 79 ff ff ff    	jae    403692 <_pei386_runtime_relocator+0x22>
  403719:	4c 8d 76 08          	lea    0x8(%rsi),%r14
  40371d:	49 83 c4 07          	add    $0x7,%r12
  403721:	4c 8b 2d 18 81 00 00 	mov    0x8118(%rip),%r13        # 40b840 <.refptr.__image_base__>
  403728:	48 8d 7d a8          	lea    -0x58(%rbp),%rdi
  40372c:	4d 29 f4             	sub    %r14,%r12
  40372f:	49 c1 ec 03          	shr    $0x3,%r12
  403733:	4e 8d 64 e6 08       	lea    0x8(%rsi,%r12,8),%r12
  403738:	eb 0a                	jmp    403744 <_pei386_runtime_relocator+0xd4>
  40373a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403740:	49 83 c6 08          	add    $0x8,%r14
  403744:	8b 4e 04             	mov    0x4(%rsi),%ecx
  403747:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  40374d:	48 89 fa             	mov    %rdi,%rdx
  403750:	8b 06                	mov    (%rsi),%eax
  403752:	4c 89 f6             	mov    %r14,%rsi
  403755:	4c 01 e9             	add    %r13,%rcx
  403758:	03 01                	add    (%rcx),%eax
  40375a:	89 45 a8             	mov    %eax,-0x58(%rbp)
  40375d:	e8 3e fd ff ff       	callq  4034a0 <__write_memory.part.0>
  403762:	4d 39 e6             	cmp    %r12,%r14
  403765:	75 d9                	jne    403740 <_pei386_runtime_relocator+0xd0>
  403767:	8b 05 b7 ae 00 00    	mov    0xaeb7(%rip),%eax        # 40e624 <maxSections>
  40376d:	31 f6                	xor    %esi,%esi
  40376f:	4c 8b 25 4e cd 00 00 	mov    0xcd4e(%rip),%r12        # 4104c4 <__imp_VirtualProtect>
  403776:	85 c0                	test   %eax,%eax
  403778:	0f 8e 14 ff ff ff    	jle    403692 <_pei386_runtime_relocator+0x22>
  40377e:	66 90                	xchg   %ax,%ax
  403780:	48 8b 05 a1 ae 00 00 	mov    0xaea1(%rip),%rax        # 40e628 <the_secs>
  403787:	48 01 f0             	add    %rsi,%rax
  40378a:	44 8b 00             	mov    (%rax),%r8d
  40378d:	45 85 c0             	test   %r8d,%r8d
  403790:	74 0e                	je     4037a0 <_pei386_runtime_relocator+0x130>
  403792:	48 8b 50 10          	mov    0x10(%rax),%rdx
  403796:	49 89 f9             	mov    %rdi,%r9
  403799:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40379d:	41 ff d4             	callq  *%r12
  4037a0:	83 c3 01             	add    $0x1,%ebx
  4037a3:	48 83 c6 28          	add    $0x28,%rsi
  4037a7:	3b 1d 77 ae 00 00    	cmp    0xae77(%rip),%ebx        # 40e624 <maxSections>
  4037ad:	7c d1                	jl     403780 <_pei386_runtime_relocator+0x110>
  4037af:	e9 de fe ff ff       	jmpq   403692 <_pei386_runtime_relocator+0x22>
  4037b4:	8b 4e 04             	mov    0x4(%rsi),%ecx
  4037b7:	85 c9                	test   %ecx,%ecx
  4037b9:	0f 85 51 ff ff ff    	jne    403710 <_pei386_runtime_relocator+0xa0>
  4037bf:	8b 56 08             	mov    0x8(%rsi),%edx
  4037c2:	85 d2                	test   %edx,%edx
  4037c4:	75 1d                	jne    4037e3 <_pei386_runtime_relocator+0x173>
  4037c6:	8b 56 0c             	mov    0xc(%rsi),%edx
  4037c9:	48 83 c6 0c          	add    $0xc,%rsi
  4037cd:	0f 1f 00             	nopl   (%rax)
  4037d0:	85 d2                	test   %edx,%edx
  4037d2:	0f 85 38 ff ff ff    	jne    403710 <_pei386_runtime_relocator+0xa0>
  4037d8:	8b 46 04             	mov    0x4(%rsi),%eax
  4037db:	85 c0                	test   %eax,%eax
  4037dd:	0f 85 2d ff ff ff    	jne    403710 <_pei386_runtime_relocator+0xa0>
  4037e3:	8b 56 08             	mov    0x8(%rsi),%edx
  4037e6:	83 fa 01             	cmp    $0x1,%edx
  4037e9:	0f 85 2f 01 00 00    	jne    40391e <_pei386_runtime_relocator+0x2ae>
  4037ef:	4c 8b 2d 4a 80 00 00 	mov    0x804a(%rip),%r13        # 40b840 <.refptr.__image_base__>
  4037f6:	48 83 c6 0c          	add    $0xc,%rsi
  4037fa:	49 bf 00 00 00 00 ff 	movabs $0xffffffff00000000,%r15
  403801:	ff ff ff 
  403804:	4c 8d 75 a8          	lea    -0x58(%rbp),%r14
  403808:	4c 39 e6             	cmp    %r12,%rsi
  40380b:	72 48                	jb     403855 <_pei386_runtime_relocator+0x1e5>
  40380d:	e9 80 fe ff ff       	jmpq   403692 <_pei386_runtime_relocator+0x22>
  403812:	0f 86 b8 00 00 00    	jbe    4038d0 <_pei386_runtime_relocator+0x260>
  403818:	83 fa 20             	cmp    $0x20,%edx
  40381b:	0f 84 7f 00 00 00    	je     4038a0 <_pei386_runtime_relocator+0x230>
  403821:	83 fa 40             	cmp    $0x40,%edx
  403824:	0f 85 e0 00 00 00    	jne    40390a <_pei386_runtime_relocator+0x29a>
  40382a:	48 8b 11             	mov    (%rcx),%rdx
  40382d:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  403833:	4c 89 f7             	mov    %r14,%rdi
  403836:	48 29 c2             	sub    %rax,%rdx
  403839:	4c 01 ca             	add    %r9,%rdx
  40383c:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  403840:	4c 89 f2             	mov    %r14,%rdx
  403843:	e8 58 fc ff ff       	callq  4034a0 <__write_memory.part.0>
  403848:	48 83 c6 0c          	add    $0xc,%rsi
  40384c:	4c 39 e6             	cmp    %r12,%rsi
  40384f:	0f 83 12 ff ff ff    	jae    403767 <_pei386_runtime_relocator+0xf7>
  403855:	8b 4e 04             	mov    0x4(%rsi),%ecx
  403858:	8b 06                	mov    (%rsi),%eax
  40385a:	0f b6 56 08          	movzbl 0x8(%rsi),%edx
  40385e:	4c 01 e9             	add    %r13,%rcx
  403861:	4c 01 e8             	add    %r13,%rax
  403864:	83 fa 10             	cmp    $0x10,%edx
  403867:	4c 8b 08             	mov    (%rax),%r9
  40386a:	75 a6                	jne    403812 <_pei386_runtime_relocator+0x1a2>
  40386c:	44 0f b7 01          	movzwl (%rcx),%r8d
  403870:	4c 89 f2             	mov    %r14,%rdx
  403873:	4c 89 f7             	mov    %r14,%rdi
  403876:	4d 89 c2             	mov    %r8,%r10
  403879:	49 81 ca 00 00 ff ff 	or     $0xffffffffffff0000,%r10
  403880:	66 45 85 c0          	test   %r8w,%r8w
  403884:	4d 0f 48 c2          	cmovs  %r10,%r8
  403888:	49 29 c0             	sub    %rax,%r8
  40388b:	4d 01 c8             	add    %r9,%r8
  40388e:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  403892:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  403898:	e8 03 fc ff ff       	callq  4034a0 <__write_memory.part.0>
  40389d:	eb a9                	jmp    403848 <_pei386_runtime_relocator+0x1d8>
  40389f:	90                   	nop
  4038a0:	8b 11                	mov    (%rcx),%edx
  4038a2:	4c 89 f7             	mov    %r14,%rdi
  4038a5:	49 89 d0             	mov    %rdx,%r8
  4038a8:	4c 09 fa             	or     %r15,%rdx
  4038ab:	45 85 c0             	test   %r8d,%r8d
  4038ae:	49 0f 49 d0          	cmovns %r8,%rdx
  4038b2:	41 b8 04 00 00 00    	mov    $0x4,%r8d
  4038b8:	48 29 c2             	sub    %rax,%rdx
  4038bb:	4c 01 ca             	add    %r9,%rdx
  4038be:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  4038c2:	4c 89 f2             	mov    %r14,%rdx
  4038c5:	e8 d6 fb ff ff       	callq  4034a0 <__write_memory.part.0>
  4038ca:	e9 79 ff ff ff       	jmpq   403848 <_pei386_runtime_relocator+0x1d8>
  4038cf:	90                   	nop
  4038d0:	83 fa 08             	cmp    $0x8,%edx
  4038d3:	75 35                	jne    40390a <_pei386_runtime_relocator+0x29a>
  4038d5:	44 0f b6 01          	movzbl (%rcx),%r8d
  4038d9:	4c 89 f2             	mov    %r14,%rdx
  4038dc:	4c 89 f7             	mov    %r14,%rdi
  4038df:	4d 89 c2             	mov    %r8,%r10
  4038e2:	49 81 ca 00 ff ff ff 	or     $0xffffffffffffff00,%r10
  4038e9:	45 84 c0             	test   %r8b,%r8b
  4038ec:	4d 0f 48 c2          	cmovs  %r10,%r8
  4038f0:	49 29 c0             	sub    %rax,%r8
  4038f3:	4d 01 c8             	add    %r9,%r8
  4038f6:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  4038fa:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  403900:	e8 9b fb ff ff       	callq  4034a0 <__write_memory.part.0>
  403905:	e9 3e ff ff ff       	jmpq   403848 <_pei386_runtime_relocator+0x1d8>
  40390a:	48 8d 0d a7 7a 00 00 	lea    0x7aa7(%rip),%rcx        # 40b3b8 <.rdata+0xd8>
  403911:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  403918:	00 
  403919:	e8 82 5f 00 00       	callq  4098a0 <__report_error>
  40391e:	48 8d 0d 5b 7a 00 00 	lea    0x7a5b(%rip),%rcx        # 40b380 <.rdata+0xa0>
  403925:	e8 76 5f 00 00       	callq  4098a0 <__report_error>
  40392a:	90                   	nop
  40392b:	90                   	nop
  40392c:	90                   	nop
  40392d:	90                   	nop
  40392e:	90                   	nop
  40392f:	90                   	nop

0000000000403930 <__mingw_SEH_error_handler>:
  403930:	48 83 ec 28          	sub    $0x28,%rsp
  403934:	8b 01                	mov    (%rcx),%eax
  403936:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  40393b:	77 63                	ja     4039a0 <__mingw_SEH_error_handler+0x70>
  40393d:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  403942:	73 7b                	jae    4039bf <__mingw_SEH_error_handler+0x8f>
  403944:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  403949:	0f 84 05 01 00 00    	je     403a54 <__mingw_SEH_error_handler+0x124>
  40394f:	0f 87 cb 00 00 00    	ja     403a20 <__mingw_SEH_error_handler+0xf0>
  403955:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  40395a:	0f 84 f4 00 00 00    	je     403a54 <__mingw_SEH_error_handler+0x124>
  403960:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  403965:	0f 85 c3 00 00 00    	jne    403a2e <__mingw_SEH_error_handler+0xfe>
  40396b:	31 d2                	xor    %edx,%edx
  40396d:	b9 0b 00 00 00       	mov    $0xb,%ecx
  403972:	e8 69 56 00 00       	callq  408fe0 <signal>
  403977:	48 83 f8 01          	cmp    $0x1,%rax
  40397b:	0f 84 2f 01 00 00    	je     403ab0 <__mingw_SEH_error_handler+0x180>
  403981:	48 85 c0             	test   %rax,%rax
  403984:	0f 84 3c 01 00 00    	je     403ac6 <__mingw_SEH_error_handler+0x196>
  40398a:	b9 0b 00 00 00       	mov    $0xb,%ecx
  40398f:	ff d0                	callq  *%rax
  403991:	31 c0                	xor    %eax,%eax
  403993:	48 83 c4 28          	add    $0x28,%rsp
  403997:	c3                   	retq   
  403998:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40399f:	00 
  4039a0:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  4039a5:	0f 84 b5 00 00 00    	je     403a60 <__mingw_SEH_error_handler+0x130>
  4039ab:	77 37                	ja     4039e4 <__mingw_SEH_error_handler+0xb4>
  4039ad:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  4039b2:	0f 84 9c 00 00 00    	je     403a54 <__mingw_SEH_error_handler+0x124>
  4039b8:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  4039bd:	75 6f                	jne    403a2e <__mingw_SEH_error_handler+0xfe>
  4039bf:	31 d2                	xor    %edx,%edx
  4039c1:	b9 08 00 00 00       	mov    $0x8,%ecx
  4039c6:	e8 15 56 00 00       	callq  408fe0 <signal>
  4039cb:	48 83 f8 01          	cmp    $0x1,%rax
  4039cf:	74 6f                	je     403a40 <__mingw_SEH_error_handler+0x110>
  4039d1:	48 85 c0             	test   %rax,%rax
  4039d4:	74 58                	je     403a2e <__mingw_SEH_error_handler+0xfe>
  4039d6:	b9 08 00 00 00       	mov    $0x8,%ecx
  4039db:	ff d0                	callq  *%rax
  4039dd:	31 c0                	xor    %eax,%eax
  4039df:	48 83 c4 28          	add    $0x28,%rsp
  4039e3:	c3                   	retq   
  4039e4:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  4039e9:	74 69                	je     403a54 <__mingw_SEH_error_handler+0x124>
  4039eb:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  4039f0:	75 3c                	jne    403a2e <__mingw_SEH_error_handler+0xfe>
  4039f2:	31 d2                	xor    %edx,%edx
  4039f4:	b9 04 00 00 00       	mov    $0x4,%ecx
  4039f9:	e8 e2 55 00 00       	callq  408fe0 <signal>
  4039fe:	48 83 f8 01          	cmp    $0x1,%rax
  403a02:	0f 84 88 00 00 00    	je     403a90 <__mingw_SEH_error_handler+0x160>
  403a08:	48 85 c0             	test   %rax,%rax
  403a0b:	0f 84 b5 00 00 00    	je     403ac6 <__mingw_SEH_error_handler+0x196>
  403a11:	b9 04 00 00 00       	mov    $0x4,%ecx
  403a16:	ff d0                	callq  *%rax
  403a18:	31 c0                	xor    %eax,%eax
  403a1a:	48 83 c4 28          	add    $0x28,%rsp
  403a1e:	c3                   	retq   
  403a1f:	90                   	nop
  403a20:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  403a25:	74 cb                	je     4039f2 <__mingw_SEH_error_handler+0xc2>
  403a27:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  403a2c:	74 26                	je     403a54 <__mingw_SEH_error_handler+0x124>
  403a2e:	b8 01 00 00 00       	mov    $0x1,%eax
  403a33:	48 83 c4 28          	add    $0x28,%rsp
  403a37:	c3                   	retq   
  403a38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403a3f:	00 
  403a40:	ba 01 00 00 00       	mov    $0x1,%edx
  403a45:	b9 08 00 00 00       	mov    $0x8,%ecx
  403a4a:	e8 91 55 00 00       	callq  408fe0 <signal>
  403a4f:	e8 1c fa ff ff       	callq  403470 <_fpreset>
  403a54:	31 c0                	xor    %eax,%eax
  403a56:	48 83 c4 28          	add    $0x28,%rsp
  403a5a:	c3                   	retq   
  403a5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403a60:	31 d2                	xor    %edx,%edx
  403a62:	b9 08 00 00 00       	mov    $0x8,%ecx
  403a67:	e8 74 55 00 00       	callq  408fe0 <signal>
  403a6c:	48 83 f8 01          	cmp    $0x1,%rax
  403a70:	0f 85 5b ff ff ff    	jne    4039d1 <__mingw_SEH_error_handler+0xa1>
  403a76:	ba 01 00 00 00       	mov    $0x1,%edx
  403a7b:	b9 08 00 00 00       	mov    $0x8,%ecx
  403a80:	e8 5b 55 00 00       	callq  408fe0 <signal>
  403a85:	31 c0                	xor    %eax,%eax
  403a87:	e9 07 ff ff ff       	jmpq   403993 <__mingw_SEH_error_handler+0x63>
  403a8c:	0f 1f 40 00          	nopl   0x0(%rax)
  403a90:	ba 01 00 00 00       	mov    $0x1,%edx
  403a95:	b9 04 00 00 00       	mov    $0x4,%ecx
  403a9a:	e8 41 55 00 00       	callq  408fe0 <signal>
  403a9f:	31 c0                	xor    %eax,%eax
  403aa1:	e9 ed fe ff ff       	jmpq   403993 <__mingw_SEH_error_handler+0x63>
  403aa6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403aad:	00 00 00 
  403ab0:	ba 01 00 00 00       	mov    $0x1,%edx
  403ab5:	b9 0b 00 00 00       	mov    $0xb,%ecx
  403aba:	e8 21 55 00 00       	callq  408fe0 <signal>
  403abf:	31 c0                	xor    %eax,%eax
  403ac1:	e9 cd fe ff ff       	jmpq   403993 <__mingw_SEH_error_handler+0x63>
  403ac6:	b8 04 00 00 00       	mov    $0x4,%eax
  403acb:	e9 c3 fe ff ff       	jmpq   403993 <__mingw_SEH_error_handler+0x63>

0000000000403ad0 <__mingw_init_ehandler>:
  403ad0:	41 54                	push   %r12
  403ad2:	55                   	push   %rbp
  403ad3:	57                   	push   %rdi
  403ad4:	56                   	push   %rsi
  403ad5:	53                   	push   %rbx
  403ad6:	48 83 ec 20          	sub    $0x20,%rsp
  403ada:	e8 91 07 00 00       	callq  404270 <_GetPEImageBase>
  403adf:	48 89 c5             	mov    %rax,%rbp
  403ae2:	8b 05 60 ab 00 00    	mov    0xab60(%rip),%eax        # 40e648 <was_here.95013>
  403ae8:	85 c0                	test   %eax,%eax
  403aea:	75 25                	jne    403b11 <__mingw_init_ehandler+0x41>
  403aec:	48 85 ed             	test   %rbp,%rbp
  403aef:	74 20                	je     403b11 <__mingw_init_ehandler+0x41>
  403af1:	48 8d 0d f8 78 00 00 	lea    0x78f8(%rip),%rcx        # 40b3f0 <.rdata>
  403af8:	c7 05 46 ab 00 00 01 	movl   $0x1,0xab46(%rip)        # 40e648 <was_here.95013>
  403aff:	00 00 00 
  403b02:	e8 a9 05 00 00       	callq  4040b0 <_FindPESectionByName>
  403b07:	48 85 c0             	test   %rax,%rax
  403b0a:	74 14                	je     403b20 <__mingw_init_ehandler+0x50>
  403b0c:	b8 01 00 00 00       	mov    $0x1,%eax
  403b11:	48 83 c4 20          	add    $0x20,%rsp
  403b15:	5b                   	pop    %rbx
  403b16:	5e                   	pop    %rsi
  403b17:	5f                   	pop    %rdi
  403b18:	5d                   	pop    %rbp
  403b19:	41 5c                	pop    %r12
  403b1b:	c3                   	retq   
  403b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  403b20:	48 8d 1d 39 ac 00 00 	lea    0xac39(%rip),%rbx        # 40e760 <emu_pdata>
  403b27:	b9 30 00 00 00       	mov    $0x30,%ecx
  403b2c:	31 f6                	xor    %esi,%esi
  403b2e:	48 8d 15 2b ab 00 00 	lea    0xab2b(%rip),%rdx        # 40e660 <emu_xdata>
  403b35:	48 89 df             	mov    %rbx,%rdi
  403b38:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  403b3b:	4c 8d 25 ee fd ff ff 	lea    -0x212(%rip),%r12        # 403930 <__mingw_SEH_error_handler>
  403b42:	b9 20 00 00 00       	mov    $0x20,%ecx
  403b47:	48 89 d7             	mov    %rdx,%rdi
  403b4a:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  403b4d:	49 29 ec             	sub    %rbp,%r12
  403b50:	48 89 d7             	mov    %rdx,%rdi
  403b53:	eb 2e                	jmp    403b83 <__mingw_init_ehandler+0xb3>
  403b55:	c6 07 09             	movb   $0x9,(%rdi)
  403b58:	48 83 c6 01          	add    $0x1,%rsi
  403b5c:	48 83 c3 0c          	add    $0xc,%rbx
  403b60:	44 89 67 04          	mov    %r12d,0x4(%rdi)
  403b64:	8b 48 0c             	mov    0xc(%rax),%ecx
  403b67:	89 4b f4             	mov    %ecx,-0xc(%rbx)
  403b6a:	03 48 08             	add    0x8(%rax),%ecx
  403b6d:	48 89 f8             	mov    %rdi,%rax
  403b70:	48 83 c7 08          	add    $0x8,%rdi
  403b74:	48 29 e8             	sub    %rbp,%rax
  403b77:	89 43 fc             	mov    %eax,-0x4(%rbx)
  403b7a:	89 4b f8             	mov    %ecx,-0x8(%rbx)
  403b7d:	48 83 fe 20          	cmp    $0x20,%rsi
  403b81:	74 32                	je     403bb5 <__mingw_init_ehandler+0xe5>
  403b83:	48 89 f1             	mov    %rsi,%rcx
  403b86:	e8 75 06 00 00       	callq  404200 <_FindPESectionExec>
  403b8b:	48 85 c0             	test   %rax,%rax
  403b8e:	75 c5                	jne    403b55 <__mingw_init_ehandler+0x85>
  403b90:	48 85 f6             	test   %rsi,%rsi
  403b93:	89 f2                	mov    %esi,%edx
  403b95:	0f 84 71 ff ff ff    	je     403b0c <__mingw_init_ehandler+0x3c>
  403b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403ba0:	48 8d 0d b9 ab 00 00 	lea    0xabb9(%rip),%rcx        # 40e760 <emu_pdata>
  403ba7:	49 89 e8             	mov    %rbp,%r8
  403baa:	ff 15 cc c8 00 00    	callq  *0xc8cc(%rip)        # 41047c <__imp_RtlAddFunctionTable>
  403bb0:	e9 57 ff ff ff       	jmpq   403b0c <__mingw_init_ehandler+0x3c>
  403bb5:	ba 20 00 00 00       	mov    $0x20,%edx
  403bba:	eb e4                	jmp    403ba0 <__mingw_init_ehandler+0xd0>
  403bbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403bc0 <_gnu_exception_handler>:
  403bc0:	53                   	push   %rbx
  403bc1:	48 83 ec 20          	sub    $0x20,%rsp
  403bc5:	48 8b 11             	mov    (%rcx),%rdx
  403bc8:	8b 02                	mov    (%rdx),%eax
  403bca:	48 89 cb             	mov    %rcx,%rbx
  403bcd:	89 c1                	mov    %eax,%ecx
  403bcf:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
  403bd5:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
  403bdb:	0f 84 bf 00 00 00    	je     403ca0 <_gnu_exception_handler+0xe0>
  403be1:	3d 91 00 00 c0       	cmp    $0xc0000091,%eax
  403be6:	77 68                	ja     403c50 <_gnu_exception_handler+0x90>
  403be8:	3d 8d 00 00 c0       	cmp    $0xc000008d,%eax
  403bed:	73 7c                	jae    403c6b <_gnu_exception_handler+0xab>
  403bef:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
  403bf4:	0f 84 b0 00 00 00    	je     403caa <_gnu_exception_handler+0xea>
  403bfa:	0f 87 f4 00 00 00    	ja     403cf4 <_gnu_exception_handler+0x134>
  403c00:	3d 02 00 00 80       	cmp    $0x80000002,%eax
  403c05:	0f 84 9f 00 00 00    	je     403caa <_gnu_exception_handler+0xea>
  403c0b:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
  403c10:	75 1f                	jne    403c31 <_gnu_exception_handler+0x71>
  403c12:	31 d2                	xor    %edx,%edx
  403c14:	b9 0b 00 00 00       	mov    $0xb,%ecx
  403c19:	e8 c2 53 00 00       	callq  408fe0 <signal>
  403c1e:	48 83 f8 01          	cmp    $0x1,%rax
  403c22:	0f 84 51 01 00 00    	je     403d79 <_gnu_exception_handler+0x1b9>
  403c28:	48 85 c0             	test   %rax,%rax
  403c2b:	0f 85 0f 01 00 00    	jne    403d40 <_gnu_exception_handler+0x180>
  403c31:	48 8b 05 08 aa 00 00 	mov    0xaa08(%rip),%rax        # 40e640 <__mingw_oldexcpt_handler>
  403c38:	48 85 c0             	test   %rax,%rax
  403c3b:	0f 84 10 01 00 00    	je     403d51 <_gnu_exception_handler+0x191>
  403c41:	48 89 d9             	mov    %rbx,%rcx
  403c44:	48 83 c4 20          	add    $0x20,%rsp
  403c48:	5b                   	pop    %rbx
  403c49:	48 ff e0             	rex.W jmpq *%rax
  403c4c:	0f 1f 40 00          	nopl   0x0(%rax)
  403c50:	3d 94 00 00 c0       	cmp    $0xc0000094,%eax
  403c55:	0f 84 b5 00 00 00    	je     403d10 <_gnu_exception_handler+0x150>
  403c5b:	77 58                	ja     403cb5 <_gnu_exception_handler+0xf5>
  403c5d:	3d 92 00 00 c0       	cmp    $0xc0000092,%eax
  403c62:	74 46                	je     403caa <_gnu_exception_handler+0xea>
  403c64:	3d 93 00 00 c0       	cmp    $0xc0000093,%eax
  403c69:	75 c6                	jne    403c31 <_gnu_exception_handler+0x71>
  403c6b:	31 d2                	xor    %edx,%edx
  403c6d:	b9 08 00 00 00       	mov    $0x8,%ecx
  403c72:	e8 69 53 00 00       	callq  408fe0 <signal>
  403c77:	48 83 f8 01          	cmp    $0x1,%rax
  403c7b:	0f 84 df 00 00 00    	je     403d60 <_gnu_exception_handler+0x1a0>
  403c81:	48 85 c0             	test   %rax,%rax
  403c84:	74 ab                	je     403c31 <_gnu_exception_handler+0x71>
  403c86:	b9 08 00 00 00       	mov    $0x8,%ecx
  403c8b:	ff d0                	callq  *%rax
  403c8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403c92:	48 83 c4 20          	add    $0x20,%rsp
  403c96:	5b                   	pop    %rbx
  403c97:	c3                   	retq   
  403c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403c9f:	00 
  403ca0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
  403ca4:	0f 85 37 ff ff ff    	jne    403be1 <_gnu_exception_handler+0x21>
  403caa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403caf:	48 83 c4 20          	add    $0x20,%rsp
  403cb3:	5b                   	pop    %rbx
  403cb4:	c3                   	retq   
  403cb5:	3d 95 00 00 c0       	cmp    $0xc0000095,%eax
  403cba:	74 ee                	je     403caa <_gnu_exception_handler+0xea>
  403cbc:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
  403cc1:	0f 85 6a ff ff ff    	jne    403c31 <_gnu_exception_handler+0x71>
  403cc7:	31 d2                	xor    %edx,%edx
  403cc9:	b9 04 00 00 00       	mov    $0x4,%ecx
  403cce:	e8 0d 53 00 00       	callq  408fe0 <signal>
  403cd3:	48 83 f8 01          	cmp    $0x1,%rax
  403cd7:	0f 84 b3 00 00 00    	je     403d90 <_gnu_exception_handler+0x1d0>
  403cdd:	48 85 c0             	test   %rax,%rax
  403ce0:	0f 84 4b ff ff ff    	je     403c31 <_gnu_exception_handler+0x71>
  403ce6:	b9 04 00 00 00       	mov    $0x4,%ecx
  403ceb:	ff d0                	callq  *%rax
  403ced:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403cf2:	eb 9e                	jmp    403c92 <_gnu_exception_handler+0xd2>
  403cf4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
  403cf9:	74 cc                	je     403cc7 <_gnu_exception_handler+0x107>
  403cfb:	3d 8c 00 00 c0       	cmp    $0xc000008c,%eax
  403d00:	0f 85 2b ff ff ff    	jne    403c31 <_gnu_exception_handler+0x71>
  403d06:	eb a2                	jmp    403caa <_gnu_exception_handler+0xea>
  403d08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403d0f:	00 
  403d10:	31 d2                	xor    %edx,%edx
  403d12:	b9 08 00 00 00       	mov    $0x8,%ecx
  403d17:	e8 c4 52 00 00       	callq  408fe0 <signal>
  403d1c:	48 83 f8 01          	cmp    $0x1,%rax
  403d20:	0f 85 5b ff ff ff    	jne    403c81 <_gnu_exception_handler+0xc1>
  403d26:	ba 01 00 00 00       	mov    $0x1,%edx
  403d2b:	b9 08 00 00 00       	mov    $0x8,%ecx
  403d30:	e8 ab 52 00 00       	callq  408fe0 <signal>
  403d35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403d3a:	e9 53 ff ff ff       	jmpq   403c92 <_gnu_exception_handler+0xd2>
  403d3f:	90                   	nop
  403d40:	b9 0b 00 00 00       	mov    $0xb,%ecx
  403d45:	ff d0                	callq  *%rax
  403d47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403d4c:	e9 41 ff ff ff       	jmpq   403c92 <_gnu_exception_handler+0xd2>
  403d51:	31 c0                	xor    %eax,%eax
  403d53:	e9 3a ff ff ff       	jmpq   403c92 <_gnu_exception_handler+0xd2>
  403d58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403d5f:	00 
  403d60:	ba 01 00 00 00       	mov    $0x1,%edx
  403d65:	b9 08 00 00 00       	mov    $0x8,%ecx
  403d6a:	e8 71 52 00 00       	callq  408fe0 <signal>
  403d6f:	e8 fc f6 ff ff       	callq  403470 <_fpreset>
  403d74:	e9 31 ff ff ff       	jmpq   403caa <_gnu_exception_handler+0xea>
  403d79:	ba 01 00 00 00       	mov    $0x1,%edx
  403d7e:	b9 0b 00 00 00       	mov    $0xb,%ecx
  403d83:	e8 58 52 00 00       	callq  408fe0 <signal>
  403d88:	83 c8 ff             	or     $0xffffffff,%eax
  403d8b:	e9 02 ff ff ff       	jmpq   403c92 <_gnu_exception_handler+0xd2>
  403d90:	ba 01 00 00 00       	mov    $0x1,%edx
  403d95:	b9 04 00 00 00       	mov    $0x4,%ecx
  403d9a:	e8 41 52 00 00       	callq  408fe0 <signal>
  403d9f:	83 c8 ff             	or     $0xffffffff,%eax
  403da2:	e9 eb fe ff ff       	jmpq   403c92 <_gnu_exception_handler+0xd2>
  403da7:	90                   	nop
  403da8:	90                   	nop
  403da9:	90                   	nop
  403daa:	90                   	nop
  403dab:	90                   	nop
  403dac:	90                   	nop
  403dad:	90                   	nop
  403dae:	90                   	nop
  403daf:	90                   	nop

0000000000403db0 <__mingwthr_run_key_dtors.part.0>:
  403db0:	55                   	push   %rbp
  403db1:	57                   	push   %rdi
  403db2:	56                   	push   %rsi
  403db3:	53                   	push   %rbx
  403db4:	48 83 ec 28          	sub    $0x28,%rsp
  403db8:	48 8d 0d 41 ab 00 00 	lea    0xab41(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403dbf:	ff 15 4f c6 00 00    	callq  *0xc64f(%rip)        # 410414 <__imp_EnterCriticalSection>
  403dc5:	48 8b 1d 14 ab 00 00 	mov    0xab14(%rip),%rbx        # 40e8e0 <key_dtor_list>
  403dcc:	48 85 db             	test   %rbx,%rbx
  403dcf:	74 33                	je     403e04 <__mingwthr_run_key_dtors.part.0+0x54>
  403dd1:	48 8b 2d dc c6 00 00 	mov    0xc6dc(%rip),%rbp        # 4104b4 <__imp_TlsGetValue>
  403dd8:	48 8b 3d 55 c6 00 00 	mov    0xc655(%rip),%rdi        # 410434 <__imp_GetLastError>
  403ddf:	90                   	nop
  403de0:	8b 0b                	mov    (%rbx),%ecx
  403de2:	ff d5                	callq  *%rbp
  403de4:	48 89 c6             	mov    %rax,%rsi
  403de7:	ff d7                	callq  *%rdi
  403de9:	85 c0                	test   %eax,%eax
  403deb:	75 0e                	jne    403dfb <__mingwthr_run_key_dtors.part.0+0x4b>
  403ded:	48 85 f6             	test   %rsi,%rsi
  403df0:	74 09                	je     403dfb <__mingwthr_run_key_dtors.part.0+0x4b>
  403df2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  403df6:	48 89 f1             	mov    %rsi,%rcx
  403df9:	ff d0                	callq  *%rax
  403dfb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
  403dff:	48 85 db             	test   %rbx,%rbx
  403e02:	75 dc                	jne    403de0 <__mingwthr_run_key_dtors.part.0+0x30>
  403e04:	48 8d 0d f5 aa 00 00 	lea    0xaaf5(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403e0b:	48 83 c4 28          	add    $0x28,%rsp
  403e0f:	5b                   	pop    %rbx
  403e10:	5e                   	pop    %rsi
  403e11:	5f                   	pop    %rdi
  403e12:	5d                   	pop    %rbp
  403e13:	48 ff 25 4a c6 00 00 	rex.W jmpq *0xc64a(%rip)        # 410464 <__imp_LeaveCriticalSection>
  403e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403e20 <___w64_mingwthr_add_key_dtor>:
  403e20:	55                   	push   %rbp
  403e21:	57                   	push   %rdi
  403e22:	56                   	push   %rsi
  403e23:	53                   	push   %rbx
  403e24:	48 83 ec 28          	sub    $0x28,%rsp
  403e28:	8b 05 ba aa 00 00    	mov    0xaaba(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403e2e:	31 f6                	xor    %esi,%esi
  403e30:	85 c0                	test   %eax,%eax
  403e32:	89 cd                	mov    %ecx,%ebp
  403e34:	48 89 d7             	mov    %rdx,%rdi
  403e37:	75 0b                	jne    403e44 <___w64_mingwthr_add_key_dtor+0x24>
  403e39:	89 f0                	mov    %esi,%eax
  403e3b:	48 83 c4 28          	add    $0x28,%rsp
  403e3f:	5b                   	pop    %rbx
  403e40:	5e                   	pop    %rsi
  403e41:	5f                   	pop    %rdi
  403e42:	5d                   	pop    %rbp
  403e43:	c3                   	retq   
  403e44:	ba 18 00 00 00       	mov    $0x18,%edx
  403e49:	b9 01 00 00 00       	mov    $0x1,%ecx
  403e4e:	e8 d5 51 00 00       	callq  409028 <calloc>
  403e53:	48 85 c0             	test   %rax,%rax
  403e56:	48 89 c3             	mov    %rax,%rbx
  403e59:	74 3d                	je     403e98 <___w64_mingwthr_add_key_dtor+0x78>
  403e5b:	89 28                	mov    %ebp,(%rax)
  403e5d:	48 8d 0d 9c aa 00 00 	lea    0xaa9c(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403e64:	48 89 78 08          	mov    %rdi,0x8(%rax)
  403e68:	ff 15 a6 c5 00 00    	callq  *0xc5a6(%rip)        # 410414 <__imp_EnterCriticalSection>
  403e6e:	48 8b 05 6b aa 00 00 	mov    0xaa6b(%rip),%rax        # 40e8e0 <key_dtor_list>
  403e75:	48 8d 0d 84 aa 00 00 	lea    0xaa84(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403e7c:	48 89 1d 5d aa 00 00 	mov    %rbx,0xaa5d(%rip)        # 40e8e0 <key_dtor_list>
  403e83:	48 89 43 10          	mov    %rax,0x10(%rbx)
  403e87:	ff 15 d7 c5 00 00    	callq  *0xc5d7(%rip)        # 410464 <__imp_LeaveCriticalSection>
  403e8d:	89 f0                	mov    %esi,%eax
  403e8f:	48 83 c4 28          	add    $0x28,%rsp
  403e93:	5b                   	pop    %rbx
  403e94:	5e                   	pop    %rsi
  403e95:	5f                   	pop    %rdi
  403e96:	5d                   	pop    %rbp
  403e97:	c3                   	retq   
  403e98:	be ff ff ff ff       	mov    $0xffffffff,%esi
  403e9d:	eb 9a                	jmp    403e39 <___w64_mingwthr_add_key_dtor+0x19>
  403e9f:	90                   	nop

0000000000403ea0 <___w64_mingwthr_remove_key_dtor>:
  403ea0:	53                   	push   %rbx
  403ea1:	48 83 ec 20          	sub    $0x20,%rsp
  403ea5:	8b 05 3d aa 00 00    	mov    0xaa3d(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403eab:	85 c0                	test   %eax,%eax
  403ead:	89 cb                	mov    %ecx,%ebx
  403eaf:	75 0f                	jne    403ec0 <___w64_mingwthr_remove_key_dtor+0x20>
  403eb1:	31 c0                	xor    %eax,%eax
  403eb3:	48 83 c4 20          	add    $0x20,%rsp
  403eb7:	5b                   	pop    %rbx
  403eb8:	c3                   	retq   
  403eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403ec0:	48 8d 0d 39 aa 00 00 	lea    0xaa39(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403ec7:	ff 15 47 c5 00 00    	callq  *0xc547(%rip)        # 410414 <__imp_EnterCriticalSection>
  403ecd:	48 8b 05 0c aa 00 00 	mov    0xaa0c(%rip),%rax        # 40e8e0 <key_dtor_list>
  403ed4:	48 85 c0             	test   %rax,%rax
  403ed7:	74 1a                	je     403ef3 <___w64_mingwthr_remove_key_dtor+0x53>
  403ed9:	8b 10                	mov    (%rax),%edx
  403edb:	39 d3                	cmp    %edx,%ebx
  403edd:	75 0b                	jne    403eea <___w64_mingwthr_remove_key_dtor+0x4a>
  403edf:	eb 4f                	jmp    403f30 <___w64_mingwthr_remove_key_dtor+0x90>
  403ee1:	8b 11                	mov    (%rcx),%edx
  403ee3:	39 da                	cmp    %ebx,%edx
  403ee5:	74 29                	je     403f10 <___w64_mingwthr_remove_key_dtor+0x70>
  403ee7:	48 89 c8             	mov    %rcx,%rax
  403eea:	48 8b 48 10          	mov    0x10(%rax),%rcx
  403eee:	48 85 c9             	test   %rcx,%rcx
  403ef1:	75 ee                	jne    403ee1 <___w64_mingwthr_remove_key_dtor+0x41>
  403ef3:	48 8d 0d 06 aa 00 00 	lea    0xaa06(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403efa:	ff 15 64 c5 00 00    	callq  *0xc564(%rip)        # 410464 <__imp_LeaveCriticalSection>
  403f00:	31 c0                	xor    %eax,%eax
  403f02:	48 83 c4 20          	add    $0x20,%rsp
  403f06:	5b                   	pop    %rbx
  403f07:	c3                   	retq   
  403f08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403f0f:	00 
  403f10:	48 8b 51 10          	mov    0x10(%rcx),%rdx
  403f14:	48 89 50 10          	mov    %rdx,0x10(%rax)
  403f18:	e8 eb 50 00 00       	callq  409008 <free>
  403f1d:	48 8d 0d dc a9 00 00 	lea    0xa9dc(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403f24:	ff 15 3a c5 00 00    	callq  *0xc53a(%rip)        # 410464 <__imp_LeaveCriticalSection>
  403f2a:	eb d4                	jmp    403f00 <___w64_mingwthr_remove_key_dtor+0x60>
  403f2c:	0f 1f 40 00          	nopl   0x0(%rax)
  403f30:	48 8b 50 10          	mov    0x10(%rax),%rdx
  403f34:	48 89 c1             	mov    %rax,%rcx
  403f37:	48 89 15 a2 a9 00 00 	mov    %rdx,0xa9a2(%rip)        # 40e8e0 <key_dtor_list>
  403f3e:	eb d8                	jmp    403f18 <___w64_mingwthr_remove_key_dtor+0x78>

0000000000403f40 <__mingw_TLScallback>:
  403f40:	53                   	push   %rbx
  403f41:	48 83 ec 20          	sub    $0x20,%rsp
  403f45:	83 fa 01             	cmp    $0x1,%edx
  403f48:	0f 84 92 00 00 00    	je     403fe0 <__mingw_TLScallback+0xa0>
  403f4e:	72 30                	jb     403f80 <__mingw_TLScallback+0x40>
  403f50:	83 fa 02             	cmp    $0x2,%edx
  403f53:	74 1b                	je     403f70 <__mingw_TLScallback+0x30>
  403f55:	83 fa 03             	cmp    $0x3,%edx
  403f58:	75 1b                	jne    403f75 <__mingw_TLScallback+0x35>
  403f5a:	8b 05 88 a9 00 00    	mov    0xa988(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403f60:	85 c0                	test   %eax,%eax
  403f62:	74 11                	je     403f75 <__mingw_TLScallback+0x35>
  403f64:	e8 47 fe ff ff       	callq  403db0 <__mingwthr_run_key_dtors.part.0>
  403f69:	eb 0a                	jmp    403f75 <__mingw_TLScallback+0x35>
  403f6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403f70:	e8 fb f4 ff ff       	callq  403470 <_fpreset>
  403f75:	b8 01 00 00 00       	mov    $0x1,%eax
  403f7a:	48 83 c4 20          	add    $0x20,%rsp
  403f7e:	5b                   	pop    %rbx
  403f7f:	c3                   	retq   
  403f80:	8b 05 62 a9 00 00    	mov    0xa962(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403f86:	85 c0                	test   %eax,%eax
  403f88:	0f 85 82 00 00 00    	jne    404010 <__mingw_TLScallback+0xd0>
  403f8e:	8b 05 54 a9 00 00    	mov    0xa954(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403f94:	83 f8 01             	cmp    $0x1,%eax
  403f97:	75 dc                	jne    403f75 <__mingw_TLScallback+0x35>
  403f99:	48 8b 0d 40 a9 00 00 	mov    0xa940(%rip),%rcx        # 40e8e0 <key_dtor_list>
  403fa0:	48 85 c9             	test   %rcx,%rcx
  403fa3:	74 11                	je     403fb6 <__mingw_TLScallback+0x76>
  403fa5:	48 8b 59 10          	mov    0x10(%rcx),%rbx
  403fa9:	e8 5a 50 00 00       	callq  409008 <free>
  403fae:	48 85 db             	test   %rbx,%rbx
  403fb1:	48 89 d9             	mov    %rbx,%rcx
  403fb4:	75 ef                	jne    403fa5 <__mingw_TLScallback+0x65>
  403fb6:	48 8d 0d 43 a9 00 00 	lea    0xa943(%rip),%rcx        # 40e900 <__mingwthr_cs>
  403fbd:	48 c7 05 18 a9 00 00 	movq   $0x0,0xa918(%rip)        # 40e8e0 <key_dtor_list>
  403fc4:	00 00 00 00 
  403fc8:	c7 05 16 a9 00 00 00 	movl   $0x0,0xa916(%rip)        # 40e8e8 <__mingwthr_cs_init>
  403fcf:	00 00 00 
  403fd2:	ff 15 34 c4 00 00    	callq  *0xc434(%rip)        # 41040c <__imp_DeleteCriticalSection>
  403fd8:	eb 9b                	jmp    403f75 <__mingw_TLScallback+0x35>
  403fda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403fe0:	8b 05 02 a9 00 00    	mov    0xa902(%rip),%eax        # 40e8e8 <__mingwthr_cs_init>
  403fe6:	85 c0                	test   %eax,%eax
  403fe8:	74 16                	je     404000 <__mingw_TLScallback+0xc0>
  403fea:	c7 05 f4 a8 00 00 01 	movl   $0x1,0xa8f4(%rip)        # 40e8e8 <__mingwthr_cs_init>
  403ff1:	00 00 00 
  403ff4:	b8 01 00 00 00       	mov    $0x1,%eax
  403ff9:	48 83 c4 20          	add    $0x20,%rsp
  403ffd:	5b                   	pop    %rbx
  403ffe:	c3                   	retq   
  403fff:	90                   	nop
  404000:	48 8d 0d f9 a8 00 00 	lea    0xa8f9(%rip),%rcx        # 40e900 <__mingwthr_cs>
  404007:	ff 15 47 c4 00 00    	callq  *0xc447(%rip)        # 410454 <__imp_InitializeCriticalSection>
  40400d:	eb db                	jmp    403fea <__mingw_TLScallback+0xaa>
  40400f:	90                   	nop
  404010:	e8 9b fd ff ff       	callq  403db0 <__mingwthr_run_key_dtors.part.0>
  404015:	e9 74 ff ff ff       	jmpq   403f8e <__mingw_TLScallback+0x4e>
  40401a:	90                   	nop
  40401b:	90                   	nop
  40401c:	90                   	nop
  40401d:	90                   	nop
  40401e:	90                   	nop
  40401f:	90                   	nop

0000000000404020 <_ValidateImageBase.part.0>:
  404020:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  404024:	48 01 c1             	add    %rax,%rcx
  404027:	31 c0                	xor    %eax,%eax
  404029:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
  40402f:	74 01                	je     404032 <_ValidateImageBase.part.0+0x12>
  404031:	c3                   	retq   
  404032:	31 c0                	xor    %eax,%eax
  404034:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
  40403a:	0f 94 c0             	sete   %al
  40403d:	c3                   	retq   
  40403e:	66 90                	xchg   %ax,%ax

0000000000404040 <_ValidateImageBase>:
  404040:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
  404045:	74 09                	je     404050 <_ValidateImageBase+0x10>
  404047:	31 c0                	xor    %eax,%eax
  404049:	c3                   	retq   
  40404a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404050:	eb ce                	jmp    404020 <_ValidateImageBase.part.0>
  404052:	0f 1f 40 00          	nopl   0x0(%rax)
  404056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40405d:	00 00 00 

0000000000404060 <_FindPESection>:
  404060:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
  404064:	48 01 c1             	add    %rax,%rcx
  404067:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40406b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  404070:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  404074:	85 c9                	test   %ecx,%ecx
  404076:	74 29                	je     4040a1 <_FindPESection+0x41>
  404078:	83 e9 01             	sub    $0x1,%ecx
  40407b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  40407f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
  404084:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  404088:	49 39 d0             	cmp    %rdx,%r8
  40408b:	4c 89 c1             	mov    %r8,%rcx
  40408e:	77 08                	ja     404098 <_FindPESection+0x38>
  404090:	03 48 08             	add    0x8(%rax),%ecx
  404093:	48 39 d1             	cmp    %rdx,%rcx
  404096:	77 0b                	ja     4040a3 <_FindPESection+0x43>
  404098:	48 83 c0 28          	add    $0x28,%rax
  40409c:	4c 39 c8             	cmp    %r9,%rax
  40409f:	75 e3                	jne    404084 <_FindPESection+0x24>
  4040a1:	31 c0                	xor    %eax,%eax
  4040a3:	c3                   	retq   
  4040a4:	66 90                	xchg   %ax,%ax
  4040a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4040ad:	00 00 00 

00000000004040b0 <_FindPESectionByName>:
  4040b0:	57                   	push   %rdi
  4040b1:	56                   	push   %rsi
  4040b2:	53                   	push   %rbx
  4040b3:	48 83 ec 20          	sub    $0x20,%rsp
  4040b7:	48 89 ce             	mov    %rcx,%rsi
  4040ba:	e8 11 4f 00 00       	callq  408fd0 <strlen>
  4040bf:	48 83 f8 08          	cmp    $0x8,%rax
  4040c3:	77 6b                	ja     404130 <_FindPESectionByName+0x80>
  4040c5:	48 8b 15 74 77 00 00 	mov    0x7774(%rip),%rdx        # 40b840 <.refptr.__image_base__>
  4040cc:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4040d1:	75 5d                	jne    404130 <_FindPESectionByName+0x80>
  4040d3:	48 89 d1             	mov    %rdx,%rcx
  4040d6:	e8 45 ff ff ff       	callq  404020 <_ValidateImageBase.part.0>
  4040db:	85 c0                	test   %eax,%eax
  4040dd:	74 51                	je     404130 <_FindPESectionByName+0x80>
  4040df:	48 63 4a 3c          	movslq 0x3c(%rdx),%rcx
  4040e3:	48 01 d1             	add    %rdx,%rcx
  4040e6:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  4040ea:	48 8d 5c 01 18       	lea    0x18(%rcx,%rax,1),%rbx
  4040ef:	0f b7 41 06          	movzwl 0x6(%rcx),%eax
  4040f3:	85 c0                	test   %eax,%eax
  4040f5:	74 39                	je     404130 <_FindPESectionByName+0x80>
  4040f7:	83 e8 01             	sub    $0x1,%eax
  4040fa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4040fe:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
  404103:	eb 09                	jmp    40410e <_FindPESectionByName+0x5e>
  404105:	48 83 c3 28          	add    $0x28,%rbx
  404109:	48 39 fb             	cmp    %rdi,%rbx
  40410c:	74 22                	je     404130 <_FindPESectionByName+0x80>
  40410e:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  404114:	48 89 f2             	mov    %rsi,%rdx
  404117:	48 89 d9             	mov    %rbx,%rcx
  40411a:	e8 a9 4e 00 00       	callq  408fc8 <strncmp>
  40411f:	85 c0                	test   %eax,%eax
  404121:	75 e2                	jne    404105 <_FindPESectionByName+0x55>
  404123:	48 89 d8             	mov    %rbx,%rax
  404126:	48 83 c4 20          	add    $0x20,%rsp
  40412a:	5b                   	pop    %rbx
  40412b:	5e                   	pop    %rsi
  40412c:	5f                   	pop    %rdi
  40412d:	c3                   	retq   
  40412e:	66 90                	xchg   %ax,%ax
  404130:	31 db                	xor    %ebx,%ebx
  404132:	48 89 d8             	mov    %rbx,%rax
  404135:	48 83 c4 20          	add    $0x20,%rsp
  404139:	5b                   	pop    %rbx
  40413a:	5e                   	pop    %rsi
  40413b:	5f                   	pop    %rdi
  40413c:	c3                   	retq   
  40413d:	0f 1f 00             	nopl   (%rax)

0000000000404140 <__mingw_GetSectionForAddress>:
  404140:	48 83 ec 28          	sub    $0x28,%rsp
  404144:	4c 8b 05 f5 76 00 00 	mov    0x76f5(%rip),%r8        # 40b840 <.refptr.__image_base__>
  40414b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  404151:	48 89 ca             	mov    %rcx,%rdx
  404154:	75 57                	jne    4041ad <__mingw_GetSectionForAddress+0x6d>
  404156:	4c 89 c1             	mov    %r8,%rcx
  404159:	e8 c2 fe ff ff       	callq  404020 <_ValidateImageBase.part.0>
  40415e:	85 c0                	test   %eax,%eax
  404160:	74 4b                	je     4041ad <__mingw_GetSectionForAddress+0x6d>
  404162:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  404166:	48 89 d1             	mov    %rdx,%rcx
  404169:	4c 29 c1             	sub    %r8,%rcx
  40416c:	49 01 c0             	add    %rax,%r8
  40416f:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  404174:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  404179:	85 d2                	test   %edx,%edx
  40417b:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  404180:	74 2b                	je     4041ad <__mingw_GetSectionForAddress+0x6d>
  404182:	83 ea 01             	sub    $0x1,%edx
  404185:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  404189:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  40418e:	66 90                	xchg   %ax,%ax
  404190:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  404194:	4c 39 c1             	cmp    %r8,%rcx
  404197:	4c 89 c2             	mov    %r8,%rdx
  40419a:	72 08                	jb     4041a4 <__mingw_GetSectionForAddress+0x64>
  40419c:	03 50 08             	add    0x8(%rax),%edx
  40419f:	48 39 d1             	cmp    %rdx,%rcx
  4041a2:	72 0b                	jb     4041af <__mingw_GetSectionForAddress+0x6f>
  4041a4:	48 83 c0 28          	add    $0x28,%rax
  4041a8:	4c 39 c8             	cmp    %r9,%rax
  4041ab:	75 e3                	jne    404190 <__mingw_GetSectionForAddress+0x50>
  4041ad:	31 c0                	xor    %eax,%eax
  4041af:	48 83 c4 28          	add    $0x28,%rsp
  4041b3:	c3                   	retq   
  4041b4:	66 90                	xchg   %ax,%ax
  4041b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4041bd:	00 00 00 

00000000004041c0 <__mingw_GetSectionCount>:
  4041c0:	48 83 ec 28          	sub    $0x28,%rsp
  4041c4:	48 8b 15 75 76 00 00 	mov    0x7675(%rip),%rdx        # 40b840 <.refptr.__image_base__>
  4041cb:	45 31 c0             	xor    %r8d,%r8d
  4041ce:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  4041d3:	74 0b                	je     4041e0 <__mingw_GetSectionCount+0x20>
  4041d5:	44 89 c0             	mov    %r8d,%eax
  4041d8:	48 83 c4 28          	add    $0x28,%rsp
  4041dc:	c3                   	retq   
  4041dd:	0f 1f 00             	nopl   (%rax)
  4041e0:	48 89 d1             	mov    %rdx,%rcx
  4041e3:	e8 38 fe ff ff       	callq  404020 <_ValidateImageBase.part.0>
  4041e8:	85 c0                	test   %eax,%eax
  4041ea:	74 e9                	je     4041d5 <__mingw_GetSectionCount+0x15>
  4041ec:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
  4041f0:	44 0f b7 44 10 06    	movzwl 0x6(%rax,%rdx,1),%r8d
  4041f6:	44 89 c0             	mov    %r8d,%eax
  4041f9:	48 83 c4 28          	add    $0x28,%rsp
  4041fd:	c3                   	retq   
  4041fe:	66 90                	xchg   %ax,%ax

0000000000404200 <_FindPESectionExec>:
  404200:	48 83 ec 28          	sub    $0x28,%rsp
  404204:	4c 8b 05 35 76 00 00 	mov    0x7635(%rip),%r8        # 40b840 <.refptr.__image_base__>
  40420b:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  404211:	48 89 ca             	mov    %rcx,%rdx
  404214:	75 52                	jne    404268 <_FindPESectionExec+0x68>
  404216:	4c 89 c1             	mov    %r8,%rcx
  404219:	e8 02 fe ff ff       	callq  404020 <_ValidateImageBase.part.0>
  40421e:	85 c0                	test   %eax,%eax
  404220:	74 46                	je     404268 <_FindPESectionExec+0x68>
  404222:	49 63 48 3c          	movslq 0x3c(%r8),%rcx
  404226:	4c 01 c1             	add    %r8,%rcx
  404229:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
  40422d:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
  404232:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
  404236:	85 c9                	test   %ecx,%ecx
  404238:	74 2e                	je     404268 <_FindPESectionExec+0x68>
  40423a:	83 e9 01             	sub    $0x1,%ecx
  40423d:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
  404241:	48 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%rcx
  404246:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40424d:	00 00 00 
  404250:	f6 40 27 20          	testb  $0x20,0x27(%rax)
  404254:	74 09                	je     40425f <_FindPESectionExec+0x5f>
  404256:	48 85 d2             	test   %rdx,%rdx
  404259:	74 0f                	je     40426a <_FindPESectionExec+0x6a>
  40425b:	48 83 ea 01          	sub    $0x1,%rdx
  40425f:	48 83 c0 28          	add    $0x28,%rax
  404263:	48 39 c8             	cmp    %rcx,%rax
  404266:	75 e8                	jne    404250 <_FindPESectionExec+0x50>
  404268:	31 c0                	xor    %eax,%eax
  40426a:	48 83 c4 28          	add    $0x28,%rsp
  40426e:	c3                   	retq   
  40426f:	90                   	nop

0000000000404270 <_GetPEImageBase>:
  404270:	48 83 ec 28          	sub    $0x28,%rsp
  404274:	48 8b 15 c5 75 00 00 	mov    0x75c5(%rip),%rdx        # 40b840 <.refptr.__image_base__>
  40427b:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
  404280:	75 1e                	jne    4042a0 <_GetPEImageBase+0x30>
  404282:	48 89 d1             	mov    %rdx,%rcx
  404285:	e8 96 fd ff ff       	callq  404020 <_ValidateImageBase.part.0>
  40428a:	85 c0                	test   %eax,%eax
  40428c:	b8 00 00 00 00       	mov    $0x0,%eax
  404291:	48 0f 45 c2          	cmovne %rdx,%rax
  404295:	48 83 c4 28          	add    $0x28,%rsp
  404299:	c3                   	retq   
  40429a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4042a0:	31 c0                	xor    %eax,%eax
  4042a2:	48 83 c4 28          	add    $0x28,%rsp
  4042a6:	c3                   	retq   
  4042a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4042ae:	00 00 

00000000004042b0 <_IsNonwritableInCurrentImage>:
  4042b0:	48 83 ec 28          	sub    $0x28,%rsp
  4042b4:	4c 8b 05 85 75 00 00 	mov    0x7585(%rip),%r8        # 40b840 <.refptr.__image_base__>
  4042bb:	31 c0                	xor    %eax,%eax
  4042bd:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
  4042c3:	48 89 ca             	mov    %rcx,%rdx
  4042c6:	74 08                	je     4042d0 <_IsNonwritableInCurrentImage+0x20>
  4042c8:	48 83 c4 28          	add    $0x28,%rsp
  4042cc:	c3                   	retq   
  4042cd:	0f 1f 00             	nopl   (%rax)
  4042d0:	4c 89 c1             	mov    %r8,%rcx
  4042d3:	e8 48 fd ff ff       	callq  404020 <_ValidateImageBase.part.0>
  4042d8:	85 c0                	test   %eax,%eax
  4042da:	74 ec                	je     4042c8 <_IsNonwritableInCurrentImage+0x18>
  4042dc:	49 63 40 3c          	movslq 0x3c(%r8),%rax
  4042e0:	48 89 d1             	mov    %rdx,%rcx
  4042e3:	4c 29 c1             	sub    %r8,%rcx
  4042e6:	49 01 c0             	add    %rax,%r8
  4042e9:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
  4042ee:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
  4042f3:	85 d2                	test   %edx,%edx
  4042f5:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
  4042fa:	74 31                	je     40432d <_IsNonwritableInCurrentImage+0x7d>
  4042fc:	83 ea 01             	sub    $0x1,%edx
  4042ff:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
  404303:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
  404308:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40430f:	00 
  404310:	44 8b 40 0c          	mov    0xc(%rax),%r8d
  404314:	4c 39 c1             	cmp    %r8,%rcx
  404317:	4c 89 c2             	mov    %r8,%rdx
  40431a:	72 08                	jb     404324 <_IsNonwritableInCurrentImage+0x74>
  40431c:	03 50 08             	add    0x8(%rax),%edx
  40431f:	48 39 d1             	cmp    %rdx,%rcx
  404322:	72 10                	jb     404334 <_IsNonwritableInCurrentImage+0x84>
  404324:	48 83 c0 28          	add    $0x28,%rax
  404328:	4c 39 c8             	cmp    %r9,%rax
  40432b:	75 e3                	jne    404310 <_IsNonwritableInCurrentImage+0x60>
  40432d:	31 c0                	xor    %eax,%eax
  40432f:	48 83 c4 28          	add    $0x28,%rsp
  404333:	c3                   	retq   
  404334:	8b 40 24             	mov    0x24(%rax),%eax
  404337:	f7 d0                	not    %eax
  404339:	c1 e8 1f             	shr    $0x1f,%eax
  40433c:	48 83 c4 28          	add    $0x28,%rsp
  404340:	c3                   	retq   
  404341:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404346:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40434d:	00 00 00 

0000000000404350 <__mingw_enum_import_library_names>:
  404350:	48 83 ec 28          	sub    $0x28,%rsp
  404354:	4c 8b 1d e5 74 00 00 	mov    0x74e5(%rip),%r11        # 40b840 <.refptr.__image_base__>
  40435b:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
  404361:	41 89 c9             	mov    %ecx,%r9d
  404364:	75 58                	jne    4043be <__mingw_enum_import_library_names+0x6e>
  404366:	4c 89 d9             	mov    %r11,%rcx
  404369:	e8 b2 fc ff ff       	callq  404020 <_ValidateImageBase.part.0>
  40436e:	85 c0                	test   %eax,%eax
  404370:	74 4c                	je     4043be <__mingw_enum_import_library_names+0x6e>
  404372:	49 63 43 3c          	movslq 0x3c(%r11),%rax
  404376:	4c 01 d8             	add    %r11,%rax
  404379:	8b 90 90 00 00 00    	mov    0x90(%rax),%edx
  40437f:	85 d2                	test   %edx,%edx
  404381:	74 3b                	je     4043be <__mingw_enum_import_library_names+0x6e>
  404383:	0f b7 48 14          	movzwl 0x14(%rax),%ecx
  404387:	48 8d 4c 08 18       	lea    0x18(%rax,%rcx,1),%rcx
  40438c:	0f b7 40 06          	movzwl 0x6(%rax),%eax
  404390:	85 c0                	test   %eax,%eax
  404392:	74 2a                	je     4043be <__mingw_enum_import_library_names+0x6e>
  404394:	83 e8 01             	sub    $0x1,%eax
  404397:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40439b:	48 8d 44 c1 28       	lea    0x28(%rcx,%rax,8),%rax
  4043a0:	44 8b 51 0c          	mov    0xc(%rcx),%r10d
  4043a4:	4c 39 d2             	cmp    %r10,%rdx
  4043a7:	4d 89 d0             	mov    %r10,%r8
  4043aa:	72 09                	jb     4043b5 <__mingw_enum_import_library_names+0x65>
  4043ac:	44 03 41 08          	add    0x8(%rcx),%r8d
  4043b0:	4c 39 c2             	cmp    %r8,%rdx
  4043b3:	72 10                	jb     4043c5 <__mingw_enum_import_library_names+0x75>
  4043b5:	48 83 c1 28          	add    $0x28,%rcx
  4043b9:	48 39 c1             	cmp    %rax,%rcx
  4043bc:	75 e2                	jne    4043a0 <__mingw_enum_import_library_names+0x50>
  4043be:	31 c0                	xor    %eax,%eax
  4043c0:	48 83 c4 28          	add    $0x28,%rsp
  4043c4:	c3                   	retq   
  4043c5:	4c 01 da             	add    %r11,%rdx
  4043c8:	75 0e                	jne    4043d8 <__mingw_enum_import_library_names+0x88>
  4043ca:	eb f2                	jmp    4043be <__mingw_enum_import_library_names+0x6e>
  4043cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4043d0:	41 83 e9 01          	sub    $0x1,%r9d
  4043d4:	48 83 c2 14          	add    $0x14,%rdx
  4043d8:	8b 4a 04             	mov    0x4(%rdx),%ecx
  4043db:	85 c9                	test   %ecx,%ecx
  4043dd:	75 07                	jne    4043e6 <__mingw_enum_import_library_names+0x96>
  4043df:	8b 42 0c             	mov    0xc(%rdx),%eax
  4043e2:	85 c0                	test   %eax,%eax
  4043e4:	74 d8                	je     4043be <__mingw_enum_import_library_names+0x6e>
  4043e6:	45 85 c9             	test   %r9d,%r9d
  4043e9:	7f e5                	jg     4043d0 <__mingw_enum_import_library_names+0x80>
  4043eb:	8b 42 0c             	mov    0xc(%rdx),%eax
  4043ee:	4c 01 d8             	add    %r11,%rax
  4043f1:	48 83 c4 28          	add    $0x28,%rsp
  4043f5:	c3                   	retq   
  4043f6:	90                   	nop
  4043f7:	90                   	nop
  4043f8:	90                   	nop
  4043f9:	90                   	nop
  4043fa:	90                   	nop
  4043fb:	90                   	nop
  4043fc:	90                   	nop
  4043fd:	90                   	nop
  4043fe:	90                   	nop
  4043ff:	90                   	nop

0000000000404400 <_Unwind_Resume>:
  404400:	ff 25 f6 bf 00 00    	jmpq   *0xbff6(%rip)        # 4103fc <__IAT_start__>
  404406:	90                   	nop
  404407:	90                   	nop
  404408:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40440f:	00 

0000000000404410 <___chkstk_ms>:
  404410:	51                   	push   %rcx
  404411:	50                   	push   %rax
  404412:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  404418:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
  40441d:	72 19                	jb     404438 <___chkstk_ms+0x28>
  40441f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
  404426:	48 83 09 00          	orq    $0x0,(%rcx)
  40442a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
  404430:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
  404436:	77 e7                	ja     40441f <___chkstk_ms+0xf>
  404438:	48 29 c1             	sub    %rax,%rcx
  40443b:	48 83 09 00          	orq    $0x0,(%rcx)
  40443f:	58                   	pop    %rax
  404440:	59                   	pop    %rcx
  404441:	c3                   	retq   
  404442:	90                   	nop
  404443:	90                   	nop
  404444:	90                   	nop
  404445:	90                   	nop
  404446:	90                   	nop
  404447:	90                   	nop
  404448:	90                   	nop
  404449:	90                   	nop
  40444a:	90                   	nop
  40444b:	90                   	nop
  40444c:	90                   	nop
  40444d:	90                   	nop
  40444e:	90                   	nop
  40444f:	90                   	nop

0000000000404450 <__mingw_vsnprintf>:
  404450:	56                   	push   %rsi
  404451:	53                   	push   %rbx
  404452:	48 83 ec 38          	sub    $0x38,%rsp
  404456:	48 85 d2             	test   %rdx,%rdx
  404459:	48 89 ce             	mov    %rcx,%rsi
  40445c:	74 32                	je     404490 <__mingw_vsnprintf+0x40>
  40445e:	48 8d 5a ff          	lea    -0x1(%rdx),%rbx
  404462:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  404467:	48 89 ca             	mov    %rcx,%rdx
  40446a:	4d 89 c1             	mov    %r8,%r9
  40446d:	31 c9                	xor    %ecx,%ecx
  40446f:	41 89 d8             	mov    %ebx,%r8d
  404472:	e8 39 18 00 00       	callq  405cb0 <__mingw_pformat>
  404477:	89 da                	mov    %ebx,%edx
  404479:	39 c3                	cmp    %eax,%ebx
  40447b:	0f 4f d0             	cmovg  %eax,%edx
  40447e:	48 63 d2             	movslq %edx,%rdx
  404481:	c6 04 16 00          	movb   $0x0,(%rsi,%rdx,1)
  404485:	48 83 c4 38          	add    $0x38,%rsp
  404489:	5b                   	pop    %rbx
  40448a:	5e                   	pop    %rsi
  40448b:	c3                   	retq   
  40448c:	0f 1f 40 00          	nopl   0x0(%rax)
  404490:	4c 89 4c 24 20       	mov    %r9,0x20(%rsp)
  404495:	48 89 ca             	mov    %rcx,%rdx
  404498:	4d 89 c1             	mov    %r8,%r9
  40449b:	31 c9                	xor    %ecx,%ecx
  40449d:	45 31 c0             	xor    %r8d,%r8d
  4044a0:	e8 0b 18 00 00       	callq  405cb0 <__mingw_pformat>
  4044a5:	48 83 c4 38          	add    $0x38,%rsp
  4044a9:	5b                   	pop    %rbx
  4044aa:	5e                   	pop    %rsi
  4044ab:	c3                   	retq   
  4044ac:	90                   	nop
  4044ad:	90                   	nop
  4044ae:	90                   	nop
  4044af:	90                   	nop

00000000004044b0 <__pformat_cvt>:
  4044b0:	48 83 ec 58          	sub    $0x58,%rsp
  4044b4:	48 8b 02             	mov    (%rdx),%rax
  4044b7:	49 89 d3             	mov    %rdx,%r11
  4044ba:	8b 52 08             	mov    0x8(%rdx),%edx
  4044bd:	49 89 d2             	mov    %rdx,%r10
  4044c0:	66 41 81 e2 ff 7f    	and    $0x7fff,%r10w
  4044c6:	75 1c                	jne    4044e4 <__pformat_cvt+0x34>
  4044c8:	48 89 c2             	mov    %rax,%rdx
  4044cb:	45 0f b7 53 08       	movzwl 0x8(%r11),%r10d
  4044d0:	48 c1 ea 20          	shr    $0x20,%rdx
  4044d4:	09 d0                	or     %edx,%eax
  4044d6:	75 78                	jne    404550 <__pformat_cvt+0xa0>
  4044d8:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
  4044df:	00 
  4044e0:	31 d2                	xor    %edx,%edx
  4044e2:	eb 24                	jmp    404508 <__pformat_cvt+0x58>
  4044e4:	66 41 81 fa ff 7f    	cmp    $0x7fff,%r10w
  4044ea:	74 77                	je     404563 <__pformat_cvt+0xb3>
  4044ec:	45 0f b7 53 08       	movzwl 0x8(%r11),%r10d
  4044f1:	44 89 d2             	mov    %r10d,%edx
  4044f4:	c7 44 24 44 01 00 00 	movl   $0x1,0x44(%rsp)
  4044fb:	00 
  4044fc:	81 e2 ff 7f 00 00    	and    $0x7fff,%edx
  404502:	81 ea 3e 40 00 00    	sub    $0x403e,%edx
  404508:	41 81 e2 00 80 00 00 	and    $0x8000,%r10d
  40450f:	48 8b 84 24 80 00 00 	mov    0x80(%rsp),%rax
  404516:	00 
  404517:	44 89 10             	mov    %r10d,(%rax)
  40451a:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
  40451f:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
  404524:	4c 8d 4c 24 44       	lea    0x44(%rsp),%r9
  404529:	44 89 44 24 28       	mov    %r8d,0x28(%rsp)
  40452e:	4d 89 d8             	mov    %r11,%r8
  404531:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
  404535:	48 8d 0d 34 5b 00 00 	lea    0x5b34(%rip),%rcx        # 40a070 <fpi.6121>
  40453c:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404541:	e8 fa 22 00 00       	callq  406840 <__gdtoa>
  404546:	48 83 c4 58          	add    $0x58,%rsp
  40454a:	c3                   	retq   
  40454b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404550:	85 d2                	test   %edx,%edx
  404552:	78 9d                	js     4044f1 <__pformat_cvt+0x41>
  404554:	c7 44 24 44 02 00 00 	movl   $0x2,0x44(%rsp)
  40455b:	00 
  40455c:	ba c3 bf ff ff       	mov    $0xffffbfc3,%edx
  404561:	eb a5                	jmp    404508 <__pformat_cvt+0x58>
  404563:	48 89 c2             	mov    %rax,%rdx
  404566:	48 c1 ea 20          	shr    $0x20,%rdx
  40456a:	81 e2 ff ff ff 7f    	and    $0x7fffffff,%edx
  404570:	09 c2                	or     %eax,%edx
  404572:	74 0f                	je     404583 <__pformat_cvt+0xd3>
  404574:	c7 44 24 44 04 00 00 	movl   $0x4,0x44(%rsp)
  40457b:	00 
  40457c:	31 d2                	xor    %edx,%edx
  40457e:	45 31 d2             	xor    %r10d,%r10d
  404581:	eb 8c                	jmp    40450f <__pformat_cvt+0x5f>
  404583:	c7 44 24 44 03 00 00 	movl   $0x3,0x44(%rsp)
  40458a:	00 
  40458b:	45 0f b7 53 08       	movzwl 0x8(%r11),%r10d
  404590:	31 d2                	xor    %edx,%edx
  404592:	e9 71 ff ff ff       	jmpq   404508 <__pformat_cvt+0x58>
  404597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40459e:	00 00 

00000000004045a0 <__pformat_putc>:
  4045a0:	53                   	push   %rbx
  4045a1:	48 83 ec 20          	sub    $0x20,%rsp
  4045a5:	44 8b 42 08          	mov    0x8(%rdx),%r8d
  4045a9:	41 f7 c0 00 40 00 00 	test   $0x4000,%r8d
  4045b0:	48 89 d3             	mov    %rdx,%rbx
  4045b3:	75 08                	jne    4045bd <__pformat_putc+0x1d>
  4045b5:	8b 42 24             	mov    0x24(%rdx),%eax
  4045b8:	39 42 28             	cmp    %eax,0x28(%rdx)
  4045bb:	7e 16                	jle    4045d3 <__pformat_putc+0x33>
  4045bd:	41 81 e0 00 20 00 00 	and    $0x2000,%r8d
  4045c4:	48 8b 13             	mov    (%rbx),%rdx
  4045c7:	75 17                	jne    4045e0 <__pformat_putc+0x40>
  4045c9:	48 63 43 24          	movslq 0x24(%rbx),%rax
  4045cd:	88 0c 02             	mov    %cl,(%rdx,%rax,1)
  4045d0:	8b 43 24             	mov    0x24(%rbx),%eax
  4045d3:	83 c0 01             	add    $0x1,%eax
  4045d6:	89 43 24             	mov    %eax,0x24(%rbx)
  4045d9:	48 83 c4 20          	add    $0x20,%rsp
  4045dd:	5b                   	pop    %rbx
  4045de:	c3                   	retq   
  4045df:	90                   	nop
  4045e0:	e8 2b 4a 00 00       	callq  409010 <fputc>
  4045e5:	8b 43 24             	mov    0x24(%rbx),%eax
  4045e8:	83 c0 01             	add    $0x1,%eax
  4045eb:	89 43 24             	mov    %eax,0x24(%rbx)
  4045ee:	48 83 c4 20          	add    $0x20,%rsp
  4045f2:	5b                   	pop    %rbx
  4045f3:	c3                   	retq   
  4045f4:	66 90                	xchg   %ax,%ax
  4045f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4045fd:	00 00 00 

0000000000404600 <__pformat_wputchars>:
  404600:	41 56                	push   %r14
  404602:	41 55                	push   %r13
  404604:	41 54                	push   %r12
  404606:	55                   	push   %rbp
  404607:	57                   	push   %rdi
  404608:	56                   	push   %rsi
  404609:	53                   	push   %rbx
  40460a:	48 83 ec 40          	sub    $0x40,%rsp
  40460e:	4c 8d 74 24 2c       	lea    0x2c(%rsp),%r14
  404613:	89 d3                	mov    %edx,%ebx
  404615:	4c 89 c6             	mov    %r8,%rsi
  404618:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
  40461d:	31 d2                	xor    %edx,%edx
  40461f:	49 89 cd             	mov    %rcx,%r13
  404622:	4d 89 f0             	mov    %r14,%r8
  404625:	4c 89 e1             	mov    %r12,%rcx
  404628:	e8 13 48 00 00       	callq  408e40 <wcrtomb>
  40462d:	8b 6e 10             	mov    0x10(%rsi),%ebp
  404630:	39 dd                	cmp    %ebx,%ebp
  404632:	0f 8d cc 00 00 00    	jge    404704 <__pformat_wputchars+0x104>
  404638:	85 ed                	test   %ebp,%ebp
  40463a:	0f 88 c4 00 00 00    	js     404704 <__pformat_wputchars+0x104>
  404640:	8b 46 0c             	mov    0xc(%rsi),%eax
  404643:	39 c5                	cmp    %eax,%ebp
  404645:	0f 8c 85 00 00 00    	jl     4046d0 <__pformat_wputchars+0xd0>
  40464b:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
  404652:	85 ed                	test   %ebp,%ebp
  404654:	7e 57                	jle    4046ad <__pformat_wputchars+0xad>
  404656:	49 83 c5 02          	add    $0x2,%r13
  40465a:	41 0f b7 55 fe       	movzwl -0x2(%r13),%edx
  40465f:	4d 89 f0             	mov    %r14,%r8
  404662:	4c 89 e1             	mov    %r12,%rcx
  404665:	e8 d6 47 00 00       	callq  408e40 <wcrtomb>
  40466a:	85 c0                	test   %eax,%eax
  40466c:	7e 3f                	jle    4046ad <__pformat_wputchars+0xad>
  40466e:	83 e8 01             	sub    $0x1,%eax
  404671:	4c 89 e3             	mov    %r12,%rbx
  404674:	49 8d 7c 04 01       	lea    0x1(%r12,%rax,1),%rdi
  404679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404680:	48 83 c3 01          	add    $0x1,%rbx
  404684:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
  404688:	48 89 f2             	mov    %rsi,%rdx
  40468b:	e8 10 ff ff ff       	callq  4045a0 <__pformat_putc>
  404690:	48 39 fb             	cmp    %rdi,%rbx
  404693:	75 eb                	jne    404680 <__pformat_wputchars+0x80>
  404695:	83 ed 01             	sub    $0x1,%ebp
  404698:	eb b8                	jmp    404652 <__pformat_wputchars+0x52>
  40469a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4046a0:	48 89 f2             	mov    %rsi,%rdx
  4046a3:	b9 20 00 00 00       	mov    $0x20,%ecx
  4046a8:	e8 f3 fe ff ff       	callq  4045a0 <__pformat_putc>
  4046ad:	8b 46 0c             	mov    0xc(%rsi),%eax
  4046b0:	8d 50 ff             	lea    -0x1(%rax),%edx
  4046b3:	85 c0                	test   %eax,%eax
  4046b5:	89 56 0c             	mov    %edx,0xc(%rsi)
  4046b8:	7f e6                	jg     4046a0 <__pformat_wputchars+0xa0>
  4046ba:	48 83 c4 40          	add    $0x40,%rsp
  4046be:	5b                   	pop    %rbx
  4046bf:	5e                   	pop    %rsi
  4046c0:	5f                   	pop    %rdi
  4046c1:	5d                   	pop    %rbp
  4046c2:	41 5c                	pop    %r12
  4046c4:	41 5d                	pop    %r13
  4046c6:	41 5e                	pop    %r14
  4046c8:	c3                   	retq   
  4046c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4046d0:	29 e8                	sub    %ebp,%eax
  4046d2:	f6 46 09 04          	testb  $0x4,0x9(%rsi)
  4046d6:	89 46 0c             	mov    %eax,0xc(%rsi)
  4046d9:	0f 85 73 ff ff ff    	jne    404652 <__pformat_wputchars+0x52>
  4046df:	83 e8 01             	sub    $0x1,%eax
  4046e2:	89 46 0c             	mov    %eax,0xc(%rsi)
  4046e5:	48 89 f2             	mov    %rsi,%rdx
  4046e8:	b9 20 00 00 00       	mov    $0x20,%ecx
  4046ed:	e8 ae fe ff ff       	callq  4045a0 <__pformat_putc>
  4046f2:	8b 46 0c             	mov    0xc(%rsi),%eax
  4046f5:	8d 50 ff             	lea    -0x1(%rax),%edx
  4046f8:	85 c0                	test   %eax,%eax
  4046fa:	89 56 0c             	mov    %edx,0xc(%rsi)
  4046fd:	75 e6                	jne    4046e5 <__pformat_wputchars+0xe5>
  4046ff:	e9 4e ff ff ff       	jmpq   404652 <__pformat_wputchars+0x52>
  404704:	89 dd                	mov    %ebx,%ebp
  404706:	e9 35 ff ff ff       	jmpq   404640 <__pformat_wputchars+0x40>
  40470b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000404710 <__pformat_putchars>:
  404710:	57                   	push   %rdi
  404711:	56                   	push   %rsi
  404712:	53                   	push   %rbx
  404713:	48 83 ec 20          	sub    $0x20,%rsp
  404717:	41 8b 78 10          	mov    0x10(%r8),%edi
  40471b:	39 d7                	cmp    %edx,%edi
  40471d:	48 89 ce             	mov    %rcx,%rsi
  404720:	4c 89 c3             	mov    %r8,%rbx
  404723:	0f 8d 9c 00 00 00    	jge    4047c5 <__pformat_putchars+0xb5>
  404729:	85 ff                	test   %edi,%edi
  40472b:	0f 88 94 00 00 00    	js     4047c5 <__pformat_putchars+0xb5>
  404731:	8b 43 0c             	mov    0xc(%rbx),%eax
  404734:	39 c7                	cmp    %eax,%edi
  404736:	7c 5c                	jl     404794 <__pformat_putchars+0x84>
  404738:	85 ff                	test   %edi,%edi
  40473a:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
  404741:	0f 84 89 00 00 00    	je     4047d0 <__pformat_putchars+0xc0>
  404747:	8d 47 ff             	lea    -0x1(%rdi),%eax
  40474a:	48 8d 7c 06 01       	lea    0x1(%rsi,%rax,1),%rdi
  40474f:	90                   	nop
  404750:	48 83 c6 01          	add    $0x1,%rsi
  404754:	0f be 4e ff          	movsbl -0x1(%rsi),%ecx
  404758:	48 89 da             	mov    %rbx,%rdx
  40475b:	e8 40 fe ff ff       	callq  4045a0 <__pformat_putc>
  404760:	48 39 f7             	cmp    %rsi,%rdi
  404763:	75 eb                	jne    404750 <__pformat_putchars+0x40>
  404765:	8b 43 0c             	mov    0xc(%rbx),%eax
  404768:	8d 50 ff             	lea    -0x1(%rax),%edx
  40476b:	85 c0                	test   %eax,%eax
  40476d:	89 53 0c             	mov    %edx,0xc(%rbx)
  404770:	7e 1a                	jle    40478c <__pformat_putchars+0x7c>
  404772:	48 89 da             	mov    %rbx,%rdx
  404775:	b9 20 00 00 00       	mov    $0x20,%ecx
  40477a:	e8 21 fe ff ff       	callq  4045a0 <__pformat_putc>
  40477f:	8b 43 0c             	mov    0xc(%rbx),%eax
  404782:	8d 50 ff             	lea    -0x1(%rax),%edx
  404785:	85 c0                	test   %eax,%eax
  404787:	89 53 0c             	mov    %edx,0xc(%rbx)
  40478a:	7f e6                	jg     404772 <__pformat_putchars+0x62>
  40478c:	48 83 c4 20          	add    $0x20,%rsp
  404790:	5b                   	pop    %rbx
  404791:	5e                   	pop    %rsi
  404792:	5f                   	pop    %rdi
  404793:	c3                   	retq   
  404794:	29 f8                	sub    %edi,%eax
  404796:	f6 43 09 04          	testb  $0x4,0x9(%rbx)
  40479a:	89 43 0c             	mov    %eax,0xc(%rbx)
  40479d:	75 20                	jne    4047bf <__pformat_putchars+0xaf>
  40479f:	83 e8 01             	sub    $0x1,%eax
  4047a2:	89 43 0c             	mov    %eax,0xc(%rbx)
  4047a5:	48 89 da             	mov    %rbx,%rdx
  4047a8:	b9 20 00 00 00       	mov    $0x20,%ecx
  4047ad:	e8 ee fd ff ff       	callq  4045a0 <__pformat_putc>
  4047b2:	8b 43 0c             	mov    0xc(%rbx),%eax
  4047b5:	8d 50 ff             	lea    -0x1(%rax),%edx
  4047b8:	85 c0                	test   %eax,%eax
  4047ba:	89 53 0c             	mov    %edx,0xc(%rbx)
  4047bd:	75 e6                	jne    4047a5 <__pformat_putchars+0x95>
  4047bf:	85 ff                	test   %edi,%edi
  4047c1:	75 84                	jne    404747 <__pformat_putchars+0x37>
  4047c3:	eb ba                	jmp    40477f <__pformat_putchars+0x6f>
  4047c5:	89 d7                	mov    %edx,%edi
  4047c7:	e9 65 ff ff ff       	jmpq   404731 <__pformat_putchars+0x21>
  4047cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4047d0:	c7 43 0c fe ff ff ff 	movl   $0xfffffffe,0xc(%rbx)
  4047d7:	eb b3                	jmp    40478c <__pformat_putchars+0x7c>
  4047d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004047e0 <__pformat_puts>:
  4047e0:	56                   	push   %rsi
  4047e1:	53                   	push   %rbx
  4047e2:	48 83 ec 28          	sub    $0x28,%rsp
  4047e6:	48 8d 05 13 6c 00 00 	lea    0x6c13(%rip),%rax        # 40b400 <.rdata>
  4047ed:	48 89 d6             	mov    %rdx,%rsi
  4047f0:	48 63 52 10          	movslq 0x10(%rdx),%rdx
  4047f4:	48 85 c9             	test   %rcx,%rcx
  4047f7:	48 89 cb             	mov    %rcx,%rbx
  4047fa:	48 0f 44 d8          	cmove  %rax,%rbx
  4047fe:	48 89 d9             	mov    %rbx,%rcx
  404801:	85 d2                	test   %edx,%edx
  404803:	78 1b                	js     404820 <__pformat_puts+0x40>
  404805:	e8 86 45 00 00       	callq  408d90 <strnlen>
  40480a:	49 89 f0             	mov    %rsi,%r8
  40480d:	89 c2                	mov    %eax,%edx
  40480f:	48 89 d9             	mov    %rbx,%rcx
  404812:	48 83 c4 28          	add    $0x28,%rsp
  404816:	5b                   	pop    %rbx
  404817:	5e                   	pop    %rsi
  404818:	e9 f3 fe ff ff       	jmpq   404710 <__pformat_putchars>
  40481d:	0f 1f 00             	nopl   (%rax)
  404820:	e8 ab 47 00 00       	callq  408fd0 <strlen>
  404825:	eb e3                	jmp    40480a <__pformat_puts+0x2a>
  404827:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40482e:	00 00 

0000000000404830 <__pformat_emit_inf_or_nan>:
  404830:	48 83 ec 38          	sub    $0x38,%rsp
  404834:	45 8b 58 08          	mov    0x8(%r8),%r11d
  404838:	85 c9                	test   %ecx,%ecx
  40483a:	41 c7 40 10 ff ff ff 	movl   $0xffffffff,0x10(%r8)
  404841:	ff 
  404842:	74 40                	je     404884 <__pformat_emit_inf_or_nan+0x54>
  404844:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  404849:	c6 44 24 2c 2d       	movb   $0x2d,0x2c(%rsp)
  40484e:	4c 8d 51 01          	lea    0x1(%rcx),%r10
  404852:	41 83 e3 20          	and    $0x20,%r11d
  404856:	45 31 c9             	xor    %r9d,%r9d
  404859:	42 0f b6 04 0a       	movzbl (%rdx,%r9,1),%eax
  40485e:	83 e0 df             	and    $0xffffffdf,%eax
  404861:	44 09 d8             	or     %r11d,%eax
  404864:	43 88 04 0a          	mov    %al,(%r10,%r9,1)
  404868:	49 83 c1 01          	add    $0x1,%r9
  40486c:	49 83 f9 03          	cmp    $0x3,%r9
  404870:	75 e7                	jne    404859 <__pformat_emit_inf_or_nan+0x29>
  404872:	49 8d 52 03          	lea    0x3(%r10),%rdx
  404876:	48 29 ca             	sub    %rcx,%rdx
  404879:	e8 92 fe ff ff       	callq  404710 <__pformat_putchars>
  40487e:	90                   	nop
  40487f:	48 83 c4 38          	add    $0x38,%rsp
  404883:	c3                   	retq   
  404884:	41 f7 c3 00 01 00 00 	test   $0x100,%r11d
  40488b:	74 13                	je     4048a0 <__pformat_emit_inf_or_nan+0x70>
  40488d:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  404892:	c6 44 24 2c 2b       	movb   $0x2b,0x2c(%rsp)
  404897:	4c 8d 51 01          	lea    0x1(%rcx),%r10
  40489b:	eb b5                	jmp    404852 <__pformat_emit_inf_or_nan+0x22>
  40489d:	0f 1f 00             	nopl   (%rax)
  4048a0:	41 f6 c3 40          	test   $0x40,%r11b
  4048a4:	74 1a                	je     4048c0 <__pformat_emit_inf_or_nan+0x90>
  4048a6:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4048ab:	c6 44 24 2c 20       	movb   $0x20,0x2c(%rsp)
  4048b0:	4c 8d 51 01          	lea    0x1(%rcx),%r10
  4048b4:	eb 9c                	jmp    404852 <__pformat_emit_inf_or_nan+0x22>
  4048b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4048bd:	00 00 00 
  4048c0:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  4048c5:	49 89 ca             	mov    %rcx,%r10
  4048c8:	eb 88                	jmp    404852 <__pformat_emit_inf_or_nan+0x22>
  4048ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004048d0 <__pformat_emit_radix_point>:
  4048d0:	55                   	push   %rbp
  4048d1:	41 54                	push   %r12
  4048d3:	57                   	push   %rdi
  4048d4:	56                   	push   %rsi
  4048d5:	53                   	push   %rbx
  4048d6:	48 89 e5             	mov    %rsp,%rbp
  4048d9:	48 83 ec 30          	sub    $0x30,%rsp
  4048dd:	83 79 14 fd          	cmpl   $0xfffffffd,0x14(%rcx)
  4048e1:	48 89 ce             	mov    %rcx,%rsi
  4048e4:	0f 84 86 00 00 00    	je     404970 <__pformat_emit_radix_point+0xa0>
  4048ea:	0f b7 51 18          	movzwl 0x18(%rcx),%edx
  4048ee:	66 85 d2             	test   %dx,%dx
  4048f1:	74 61                	je     404954 <__pformat_emit_radix_point+0x84>
  4048f3:	48 63 46 14          	movslq 0x14(%rsi),%rax
  4048f7:	48 89 e7             	mov    %rsp,%rdi
  4048fa:	48 83 c0 0f          	add    $0xf,%rax
  4048fe:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  404902:	e8 09 fb ff ff       	callq  404410 <___chkstk_ms>
  404907:	4c 8d 45 fc          	lea    -0x4(%rbp),%r8
  40490b:	48 29 c4             	sub    %rax,%rsp
  40490e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  404915:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  40491a:	48 89 d9             	mov    %rbx,%rcx
  40491d:	e8 1e 45 00 00       	callq  408e40 <wcrtomb>
  404922:	85 c0                	test   %eax,%eax
  404924:	0f 8e 86 00 00 00    	jle    4049b0 <__pformat_emit_radix_point+0xe0>
  40492a:	83 e8 01             	sub    $0x1,%eax
  40492d:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
  404932:	48 83 c3 01          	add    $0x1,%rbx
  404936:	0f be 4b ff          	movsbl -0x1(%rbx),%ecx
  40493a:	48 89 f2             	mov    %rsi,%rdx
  40493d:	e8 5e fc ff ff       	callq  4045a0 <__pformat_putc>
  404942:	4c 39 e3             	cmp    %r12,%rbx
  404945:	75 eb                	jne    404932 <__pformat_emit_radix_point+0x62>
  404947:	48 89 fc             	mov    %rdi,%rsp
  40494a:	48 89 ec             	mov    %rbp,%rsp
  40494d:	5b                   	pop    %rbx
  40494e:	5e                   	pop    %rsi
  40494f:	5f                   	pop    %rdi
  404950:	41 5c                	pop    %r12
  404952:	5d                   	pop    %rbp
  404953:	c3                   	retq   
  404954:	48 89 f2             	mov    %rsi,%rdx
  404957:	b9 2e 00 00 00       	mov    $0x2e,%ecx
  40495c:	e8 3f fc ff ff       	callq  4045a0 <__pformat_putc>
  404961:	90                   	nop
  404962:	48 89 ec             	mov    %rbp,%rsp
  404965:	5b                   	pop    %rbx
  404966:	5e                   	pop    %rsi
  404967:	5f                   	pop    %rdi
  404968:	41 5c                	pop    %r12
  40496a:	5d                   	pop    %rbp
  40496b:	c3                   	retq   
  40496c:	0f 1f 40 00          	nopl   0x0(%rax)
  404970:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  404977:	e8 7c 46 00 00       	callq  408ff8 <localeconv>
  40497c:	48 8d 4d fa          	lea    -0x6(%rbp),%rcx
  404980:	41 b8 10 00 00 00    	mov    $0x10,%r8d
  404986:	48 8b 10             	mov    (%rax),%rdx
  404989:	4c 8d 4d fc          	lea    -0x4(%rbp),%r9
  40498d:	e8 3e 42 00 00       	callq  408bd0 <mbrtowc>
  404992:	85 c0                	test   %eax,%eax
  404994:	7e 2c                	jle    4049c2 <__pformat_emit_radix_point+0xf2>
  404996:	0f b7 55 fa          	movzwl -0x6(%rbp),%edx
  40499a:	66 89 56 18          	mov    %dx,0x18(%rsi)
  40499e:	89 46 14             	mov    %eax,0x14(%rsi)
  4049a1:	e9 48 ff ff ff       	jmpq   4048ee <__pformat_emit_radix_point+0x1e>
  4049a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4049ad:	00 00 00 
  4049b0:	48 89 f2             	mov    %rsi,%rdx
  4049b3:	b9 2e 00 00 00       	mov    $0x2e,%ecx
  4049b8:	e8 e3 fb ff ff       	callq  4045a0 <__pformat_putc>
  4049bd:	48 89 fc             	mov    %rdi,%rsp
  4049c0:	eb 88                	jmp    40494a <__pformat_emit_radix_point+0x7a>
  4049c2:	0f b7 56 18          	movzwl 0x18(%rsi),%edx
  4049c6:	eb d6                	jmp    40499e <__pformat_emit_radix_point+0xce>
  4049c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4049cf:	00 

00000000004049d0 <__pformat_emit_float>:
  4049d0:	41 54                	push   %r12
  4049d2:	55                   	push   %rbp
  4049d3:	57                   	push   %rdi
  4049d4:	56                   	push   %rsi
  4049d5:	53                   	push   %rbx
  4049d6:	48 83 ec 20          	sub    $0x20,%rsp
  4049da:	45 85 c0             	test   %r8d,%r8d
  4049dd:	89 cd                	mov    %ecx,%ebp
  4049df:	48 89 d7             	mov    %rdx,%rdi
  4049e2:	41 8b 49 0c          	mov    0xc(%r9),%ecx
  4049e6:	44 89 c6             	mov    %r8d,%esi
  4049e9:	4c 89 cb             	mov    %r9,%rbx
  4049ec:	0f 8e 62 02 00 00    	jle    404c54 <__pformat_emit_float+0x284>
  4049f2:	41 39 c8             	cmp    %ecx,%r8d
  4049f5:	0f 8f ba 00 00 00    	jg     404ab5 <__pformat_emit_float+0xe5>
  4049fb:	44 29 c1             	sub    %r8d,%ecx
  4049fe:	41 89 49 0c          	mov    %ecx,0xc(%r9)
  404a02:	8b 43 10             	mov    0x10(%rbx),%eax
  404a05:	39 c8                	cmp    %ecx,%eax
  404a07:	0f 8c 16 02 00 00    	jl     404c23 <__pformat_emit_float+0x253>
  404a0d:	85 f6                	test   %esi,%esi
  404a0f:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
  404a16:	0f 8f a1 00 00 00    	jg     404abd <__pformat_emit_float+0xed>
  404a1c:	85 ed                	test   %ebp,%ebp
  404a1e:	0f 85 4e 01 00 00    	jne    404b72 <__pformat_emit_float+0x1a2>
  404a24:	8b 43 08             	mov    0x8(%rbx),%eax
  404a27:	f6 c4 01             	test   $0x1,%ah
  404a2a:	0f 85 90 02 00 00    	jne    404cc0 <__pformat_emit_float+0x2f0>
  404a30:	a8 40                	test   $0x40,%al
  404a32:	0f 85 e8 02 00 00    	jne    404d20 <__pformat_emit_float+0x350>
  404a38:	8b 43 0c             	mov    0xc(%rbx),%eax
  404a3b:	85 c0                	test   %eax,%eax
  404a3d:	7e 15                	jle    404a54 <__pformat_emit_float+0x84>
  404a3f:	8b 53 08             	mov    0x8(%rbx),%edx
  404a42:	81 e2 00 06 00 00    	and    $0x600,%edx
  404a48:	81 fa 00 02 00 00    	cmp    $0x200,%edx
  404a4e:	0f 84 7e 02 00 00    	je     404cd2 <__pformat_emit_float+0x302>
  404a54:	4c 8d 63 20          	lea    0x20(%rbx),%r12
  404a58:	85 f6                	test   %esi,%esi
  404a5a:	bd ab aa aa aa       	mov    $0xaaaaaaab,%ebp
  404a5f:	0f 8e 1f 01 00 00    	jle    404b84 <__pformat_emit_float+0x1b4>
  404a65:	0f b6 07             	movzbl (%rdi),%eax
  404a68:	b9 30 00 00 00       	mov    $0x30,%ecx
  404a6d:	84 c0                	test   %al,%al
  404a6f:	74 07                	je     404a78 <__pformat_emit_float+0xa8>
  404a71:	48 83 c7 01          	add    $0x1,%rdi
  404a75:	0f be c8             	movsbl %al,%ecx
  404a78:	48 89 da             	mov    %rbx,%rdx
  404a7b:	e8 20 fb ff ff       	callq  4045a0 <__pformat_putc>
  404a80:	83 ee 01             	sub    $0x1,%esi
  404a83:	0f 84 bb 02 00 00    	je     404d44 <__pformat_emit_float+0x374>
  404a89:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
  404a8d:	74 d6                	je     404a65 <__pformat_emit_float+0x95>
  404a8f:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
  404a94:	74 cf                	je     404a65 <__pformat_emit_float+0x95>
  404a96:	89 f0                	mov    %esi,%eax
  404a98:	f7 e5                	mul    %ebp
  404a9a:	d1 ea                	shr    %edx
  404a9c:	8d 04 52             	lea    (%rdx,%rdx,2),%eax
  404a9f:	39 c6                	cmp    %eax,%esi
  404aa1:	75 c2                	jne    404a65 <__pformat_emit_float+0x95>
  404aa3:	49 89 d8             	mov    %rbx,%r8
  404aa6:	ba 01 00 00 00       	mov    $0x1,%edx
  404aab:	4c 89 e1             	mov    %r12,%rcx
  404aae:	e8 4d fb ff ff       	callq  404600 <__pformat_wputchars>
  404ab3:	eb b0                	jmp    404a65 <__pformat_emit_float+0x95>
  404ab5:	41 c7 41 0c ff ff ff 	movl   $0xffffffff,0xc(%r9)
  404abc:	ff 
  404abd:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
  404ac1:	0f 84 55 ff ff ff    	je     404a1c <__pformat_emit_float+0x4c>
  404ac7:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
  404acc:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  404ad1:	0f 84 45 ff ff ff    	je     404a1c <__pformat_emit_float+0x4c>
  404ad7:	8d 56 02             	lea    0x2(%rsi),%edx
  404ada:	41 b8 ab aa aa aa    	mov    $0xaaaaaaab,%r8d
  404ae0:	89 d0                	mov    %edx,%eax
  404ae2:	41 f7 e0             	mul    %r8d
  404ae5:	d1 ea                	shr    %edx
  404ae7:	83 fa 01             	cmp    $0x1,%edx
  404aea:	7e 26                	jle    404b12 <__pformat_emit_float+0x142>
  404aec:	85 c9                	test   %ecx,%ecx
  404aee:	0f 8e 28 ff ff ff    	jle    404a1c <__pformat_emit_float+0x4c>
  404af4:	89 c8                	mov    %ecx,%eax
  404af6:	29 d0                	sub    %edx,%eax
  404af8:	83 c0 01             	add    $0x1,%eax
  404afb:	eb 0b                	jmp    404b08 <__pformat_emit_float+0x138>
  404afd:	0f 1f 00             	nopl   (%rax)
  404b00:	85 c9                	test   %ecx,%ecx
  404b02:	0f 84 5a 02 00 00    	je     404d62 <__pformat_emit_float+0x392>
  404b08:	83 e9 01             	sub    $0x1,%ecx
  404b0b:	39 c8                	cmp    %ecx,%eax
  404b0d:	75 f1                	jne    404b00 <__pformat_emit_float+0x130>
  404b0f:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404b12:	85 c9                	test   %ecx,%ecx
  404b14:	0f 8e 02 ff ff ff    	jle    404a1c <__pformat_emit_float+0x4c>
  404b1a:	85 ed                	test   %ebp,%ebp
  404b1c:	0f 85 4e 01 00 00    	jne    404c70 <__pformat_emit_float+0x2a0>
  404b22:	8b 43 08             	mov    0x8(%rbx),%eax
  404b25:	a9 c0 01 00 00       	test   $0x1c0,%eax
  404b2a:	0f 84 d0 01 00 00    	je     404d00 <__pformat_emit_float+0x330>
  404b30:	83 e9 01             	sub    $0x1,%ecx
  404b33:	85 c9                	test   %ecx,%ecx
  404b35:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404b38:	0f 84 e9 fe ff ff    	je     404a27 <__pformat_emit_float+0x57>
  404b3e:	f6 c4 06             	test   $0x6,%ah
  404b41:	0f 85 d5 fe ff ff    	jne    404a1c <__pformat_emit_float+0x4c>
  404b47:	83 e9 01             	sub    $0x1,%ecx
  404b4a:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404b4d:	0f 1f 00             	nopl   (%rax)
  404b50:	48 89 da             	mov    %rbx,%rdx
  404b53:	b9 20 00 00 00       	mov    $0x20,%ecx
  404b58:	e8 43 fa ff ff       	callq  4045a0 <__pformat_putc>
  404b5d:	8b 43 0c             	mov    0xc(%rbx),%eax
  404b60:	8d 50 ff             	lea    -0x1(%rax),%edx
  404b63:	85 c0                	test   %eax,%eax
  404b65:	89 53 0c             	mov    %edx,0xc(%rbx)
  404b68:	7f e6                	jg     404b50 <__pformat_emit_float+0x180>
  404b6a:	85 ed                	test   %ebp,%ebp
  404b6c:	0f 84 b2 fe ff ff    	je     404a24 <__pformat_emit_float+0x54>
  404b72:	48 89 da             	mov    %rbx,%rdx
  404b75:	b9 2d 00 00 00       	mov    $0x2d,%ecx
  404b7a:	e8 21 fa ff ff       	callq  4045a0 <__pformat_putc>
  404b7f:	e9 b4 fe ff ff       	jmpq   404a38 <__pformat_emit_float+0x68>
  404b84:	48 89 da             	mov    %rbx,%rdx
  404b87:	b9 30 00 00 00       	mov    $0x30,%ecx
  404b8c:	e8 0f fa ff ff       	callq  4045a0 <__pformat_putc>
  404b91:	8b 43 10             	mov    0x10(%rbx),%eax
  404b94:	85 c0                	test   %eax,%eax
  404b96:	7f 1b                	jg     404bb3 <__pformat_emit_float+0x1e3>
  404b98:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
  404b9c:	75 15                	jne    404bb3 <__pformat_emit_float+0x1e3>
  404b9e:	85 f6                	test   %esi,%esi
  404ba0:	75 20                	jne    404bc2 <__pformat_emit_float+0x1f2>
  404ba2:	83 e8 01             	sub    $0x1,%eax
  404ba5:	89 43 10             	mov    %eax,0x10(%rbx)
  404ba8:	48 83 c4 20          	add    $0x20,%rsp
  404bac:	5b                   	pop    %rbx
  404bad:	5e                   	pop    %rsi
  404bae:	5f                   	pop    %rdi
  404baf:	5d                   	pop    %rbp
  404bb0:	41 5c                	pop    %r12
  404bb2:	c3                   	retq   
  404bb3:	48 89 d9             	mov    %rbx,%rcx
  404bb6:	e8 15 fd ff ff       	callq  4048d0 <__pformat_emit_radix_point>
  404bbb:	85 f6                	test   %esi,%esi
  404bbd:	74 4c                	je     404c0b <__pformat_emit_float+0x23b>
  404bbf:	8b 43 10             	mov    0x10(%rbx),%eax
  404bc2:	01 f0                	add    %esi,%eax
  404bc4:	89 43 10             	mov    %eax,0x10(%rbx)
  404bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404bce:	00 00 
  404bd0:	48 89 da             	mov    %rbx,%rdx
  404bd3:	b9 30 00 00 00       	mov    $0x30,%ecx
  404bd8:	e8 c3 f9 ff ff       	callq  4045a0 <__pformat_putc>
  404bdd:	83 c6 01             	add    $0x1,%esi
  404be0:	75 ee                	jne    404bd0 <__pformat_emit_float+0x200>
  404be2:	8b 43 10             	mov    0x10(%rbx),%eax
  404be5:	8d 50 ff             	lea    -0x1(%rax),%edx
  404be8:	85 c0                	test   %eax,%eax
  404bea:	89 53 10             	mov    %edx,0x10(%rbx)
  404bed:	7e b9                	jle    404ba8 <__pformat_emit_float+0x1d8>
  404bef:	90                   	nop
  404bf0:	0f b6 07             	movzbl (%rdi),%eax
  404bf3:	b9 30 00 00 00       	mov    $0x30,%ecx
  404bf8:	84 c0                	test   %al,%al
  404bfa:	74 07                	je     404c03 <__pformat_emit_float+0x233>
  404bfc:	48 83 c7 01          	add    $0x1,%rdi
  404c00:	0f be c8             	movsbl %al,%ecx
  404c03:	48 89 da             	mov    %rbx,%rdx
  404c06:	e8 95 f9 ff ff       	callq  4045a0 <__pformat_putc>
  404c0b:	8b 43 10             	mov    0x10(%rbx),%eax
  404c0e:	8d 50 ff             	lea    -0x1(%rax),%edx
  404c11:	85 c0                	test   %eax,%eax
  404c13:	89 53 10             	mov    %edx,0x10(%rbx)
  404c16:	7f d8                	jg     404bf0 <__pformat_emit_float+0x220>
  404c18:	48 83 c4 20          	add    $0x20,%rsp
  404c1c:	5b                   	pop    %rbx
  404c1d:	5e                   	pop    %rsi
  404c1e:	5f                   	pop    %rdi
  404c1f:	5d                   	pop    %rbp
  404c20:	41 5c                	pop    %r12
  404c22:	c3                   	retq   
  404c23:	29 c1                	sub    %eax,%ecx
  404c25:	85 c0                	test   %eax,%eax
  404c27:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404c2a:	7e 64                	jle    404c90 <__pformat_emit_float+0x2c0>
  404c2c:	83 e9 01             	sub    $0x1,%ecx
  404c2f:	85 f6                	test   %esi,%esi
  404c31:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404c34:	0f 8e d8 fe ff ff    	jle    404b12 <__pformat_emit_float+0x142>
  404c3a:	f6 43 09 10          	testb  $0x10,0x9(%rbx)
  404c3e:	0f 84 ce fe ff ff    	je     404b12 <__pformat_emit_float+0x142>
  404c44:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
  404c49:	0f 84 c3 fe ff ff    	je     404b12 <__pformat_emit_float+0x142>
  404c4f:	e9 83 fe ff ff       	jmpq   404ad7 <__pformat_emit_float+0x107>
  404c54:	83 f9 00             	cmp    $0x0,%ecx
  404c57:	0f 8e d5 00 00 00    	jle    404d32 <__pformat_emit_float+0x362>
  404c5d:	83 e9 01             	sub    $0x1,%ecx
  404c60:	41 89 49 0c          	mov    %ecx,0xc(%r9)
  404c64:	e9 99 fd ff ff       	jmpq   404a02 <__pformat_emit_float+0x32>
  404c69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404c70:	83 e9 01             	sub    $0x1,%ecx
  404c73:	85 c9                	test   %ecx,%ecx
  404c75:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404c78:	0f 84 f4 fe ff ff    	je     404b72 <__pformat_emit_float+0x1a2>
  404c7e:	8b 43 08             	mov    0x8(%rbx),%eax
  404c81:	e9 b8 fe ff ff       	jmpq   404b3e <__pformat_emit_float+0x16e>
  404c86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404c8d:	00 00 00 
  404c90:	8b 43 08             	mov    0x8(%rbx),%eax
  404c93:	f6 c4 08             	test   $0x8,%ah
  404c96:	75 94                	jne    404c2c <__pformat_emit_float+0x25c>
  404c98:	85 f6                	test   %esi,%esi
  404c9a:	0f 8e 7a fe ff ff    	jle    404b1a <__pformat_emit_float+0x14a>
  404ca0:	f6 c4 10             	test   $0x10,%ah
  404ca3:	0f 84 71 fe ff ff    	je     404b1a <__pformat_emit_float+0x14a>
  404ca9:	66 83 7b 20 00       	cmpw   $0x0,0x20(%rbx)
  404cae:	0f 84 66 fe ff ff    	je     404b1a <__pformat_emit_float+0x14a>
  404cb4:	e9 1e fe ff ff       	jmpq   404ad7 <__pformat_emit_float+0x107>
  404cb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404cc0:	48 89 da             	mov    %rbx,%rdx
  404cc3:	b9 2b 00 00 00       	mov    $0x2b,%ecx
  404cc8:	e8 d3 f8 ff ff       	callq  4045a0 <__pformat_putc>
  404ccd:	e9 66 fd ff ff       	jmpq   404a38 <__pformat_emit_float+0x68>
  404cd2:	83 e8 01             	sub    $0x1,%eax
  404cd5:	89 43 0c             	mov    %eax,0xc(%rbx)
  404cd8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404cdf:	00 
  404ce0:	48 89 da             	mov    %rbx,%rdx
  404ce3:	b9 30 00 00 00       	mov    $0x30,%ecx
  404ce8:	e8 b3 f8 ff ff       	callq  4045a0 <__pformat_putc>
  404ced:	8b 43 0c             	mov    0xc(%rbx),%eax
  404cf0:	8d 50 ff             	lea    -0x1(%rax),%edx
  404cf3:	85 c0                	test   %eax,%eax
  404cf5:	89 53 0c             	mov    %edx,0xc(%rbx)
  404cf8:	7f e6                	jg     404ce0 <__pformat_emit_float+0x310>
  404cfa:	e9 55 fd ff ff       	jmpq   404a54 <__pformat_emit_float+0x84>
  404cff:	90                   	nop
  404d00:	f6 c4 06             	test   $0x6,%ah
  404d03:	0f 85 1e fd ff ff    	jne    404a27 <__pformat_emit_float+0x57>
  404d09:	8b 53 0c             	mov    0xc(%rbx),%edx
  404d0c:	8d 4a ff             	lea    -0x1(%rdx),%ecx
  404d0f:	85 d2                	test   %edx,%edx
  404d11:	89 4b 0c             	mov    %ecx,0xc(%rbx)
  404d14:	0f 8e 0d fd ff ff    	jle    404a27 <__pformat_emit_float+0x57>
  404d1a:	e9 31 fe ff ff       	jmpq   404b50 <__pformat_emit_float+0x180>
  404d1f:	90                   	nop
  404d20:	48 89 da             	mov    %rbx,%rdx
  404d23:	b9 20 00 00 00       	mov    $0x20,%ecx
  404d28:	e8 73 f8 ff ff       	callq  4045a0 <__pformat_putc>
  404d2d:	e9 06 fd ff ff       	jmpq   404a38 <__pformat_emit_float+0x68>
  404d32:	0f 8d ca fc ff ff    	jge    404a02 <__pformat_emit_float+0x32>
  404d38:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
  404d3f:	e9 d8 fc ff ff       	jmpq   404a1c <__pformat_emit_float+0x4c>
  404d44:	8b 43 10             	mov    0x10(%rbx),%eax
  404d47:	85 c0                	test   %eax,%eax
  404d49:	7f 0a                	jg     404d55 <__pformat_emit_float+0x385>
  404d4b:	f6 43 09 08          	testb  $0x8,0x9(%rbx)
  404d4f:	0f 84 4d fe ff ff    	je     404ba2 <__pformat_emit_float+0x1d2>
  404d55:	48 89 d9             	mov    %rbx,%rcx
  404d58:	e8 73 fb ff ff       	callq  4048d0 <__pformat_emit_radix_point>
  404d5d:	e9 a9 fe ff ff       	jmpq   404c0b <__pformat_emit_float+0x23b>
  404d62:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%rbx)
  404d69:	e9 ae fc ff ff       	jmpq   404a1c <__pformat_emit_float+0x4c>
  404d6e:	66 90                	xchg   %ax,%ax

0000000000404d70 <__pformat_float>:
  404d70:	56                   	push   %rsi
  404d71:	53                   	push   %rbx
  404d72:	48 83 ec 68          	sub    $0x68,%rsp
  404d76:	44 8b 42 10          	mov    0x10(%rdx),%r8d
  404d7a:	db 29                	fldt   (%rcx)
  404d7c:	45 85 c0             	test   %r8d,%r8d
  404d7f:	48 89 d3             	mov    %rdx,%rbx
  404d82:	79 0d                	jns    404d91 <__pformat_float+0x21>
  404d84:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
  404d8b:	41 b8 06 00 00 00    	mov    $0x6,%r8d
  404d91:	db 7c 24 50          	fstpt  0x50(%rsp)
  404d95:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  404d9a:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  404d9f:	b9 03 00 00 00       	mov    $0x3,%ecx
  404da4:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
  404da9:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  404dae:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  404db3:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  404db8:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
  404dbd:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  404dc2:	e8 e9 f6 ff ff       	callq  4044b0 <__pformat_cvt>
  404dc7:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
  404dcc:	48 89 c6             	mov    %rax,%rsi
  404dcf:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
  404dd6:	74 48                	je     404e20 <__pformat_float+0xb0>
  404dd8:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
  404ddc:	49 89 d9             	mov    %rbx,%r9
  404ddf:	48 89 c2             	mov    %rax,%rdx
  404de2:	e8 e9 fb ff ff       	callq  4049d0 <__pformat_emit_float>
  404de7:	eb 14                	jmp    404dfd <__pformat_float+0x8d>
  404de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404df0:	48 89 da             	mov    %rbx,%rdx
  404df3:	b9 20 00 00 00       	mov    $0x20,%ecx
  404df8:	e8 a3 f7 ff ff       	callq  4045a0 <__pformat_putc>
  404dfd:	8b 43 0c             	mov    0xc(%rbx),%eax
  404e00:	8d 50 ff             	lea    -0x1(%rax),%edx
  404e03:	85 c0                	test   %eax,%eax
  404e05:	89 53 0c             	mov    %edx,0xc(%rbx)
  404e08:	7f e6                	jg     404df0 <__pformat_float+0x80>
  404e0a:	48 89 f1             	mov    %rsi,%rcx
  404e0d:	e8 6e 18 00 00       	callq  406680 <__freedtoa>
  404e12:	90                   	nop
  404e13:	48 83 c4 68          	add    $0x68,%rsp
  404e17:	5b                   	pop    %rbx
  404e18:	5e                   	pop    %rsi
  404e19:	c3                   	retq   
  404e1a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404e20:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
  404e24:	49 89 d8             	mov    %rbx,%r8
  404e27:	48 89 c2             	mov    %rax,%rdx
  404e2a:	e8 01 fa ff ff       	callq  404830 <__pformat_emit_inf_or_nan>
  404e2f:	48 89 f1             	mov    %rsi,%rcx
  404e32:	e8 49 18 00 00       	callq  406680 <__freedtoa>
  404e37:	90                   	nop
  404e38:	48 83 c4 68          	add    $0x68,%rsp
  404e3c:	5b                   	pop    %rbx
  404e3d:	5e                   	pop    %rsi
  404e3e:	c3                   	retq   
  404e3f:	90                   	nop

0000000000404e40 <__pformat_int.isra.0>:
  404e40:	55                   	push   %rbp
  404e41:	41 55                	push   %r13
  404e43:	41 54                	push   %r12
  404e45:	57                   	push   %rdi
  404e46:	56                   	push   %rsi
  404e47:	53                   	push   %rbx
  404e48:	48 83 ec 28          	sub    $0x28,%rsp
  404e4c:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  404e53:	00 
  404e54:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  404e5a:	8b 5a 10             	mov    0x10(%rdx),%ebx
  404e5d:	44 8b 4a 08          	mov    0x8(%rdx),%r9d
  404e61:	85 db                	test   %ebx,%ebx
  404e63:	48 89 d6             	mov    %rdx,%rsi
  404e66:	44 0f 49 c3          	cmovns %ebx,%r8d
  404e6a:	41 83 c0 17          	add    $0x17,%r8d
  404e6e:	41 f7 c1 00 10 00 00 	test   $0x1000,%r9d
  404e75:	74 0b                	je     404e82 <__pformat_int.isra.0+0x42>
  404e77:	66 83 7a 20 00       	cmpw   $0x0,0x20(%rdx)
  404e7c:	0f 85 c0 01 00 00    	jne    405042 <__pformat_int.isra.0+0x202>
  404e82:	4c 63 56 0c          	movslq 0xc(%rsi),%r10
  404e86:	49 63 c0             	movslq %r8d,%rax
  404e89:	45 39 c2             	cmp    %r8d,%r10d
  404e8c:	49 0f 4d c2          	cmovge %r10,%rax
  404e90:	48 83 c0 1e          	add    $0x1e,%rax
  404e94:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  404e98:	e8 73 f5 ff ff       	callq  404410 <___chkstk_ms>
  404e9d:	48 29 c4             	sub    %rax,%rsp
  404ea0:	41 f6 c1 80          	test   $0x80,%r9b
  404ea4:	4c 8d 64 24 20       	lea    0x20(%rsp),%r12
  404ea9:	74 11                	je     404ebc <__pformat_int.isra.0+0x7c>
  404eab:	48 85 c9             	test   %rcx,%rcx
  404eae:	0f 88 00 02 00 00    	js     4050b4 <__pformat_int.isra.0+0x274>
  404eb4:	41 80 e1 7f          	and    $0x7f,%r9b
  404eb8:	44 89 4e 08          	mov    %r9d,0x8(%rsi)
  404ebc:	45 89 cd             	mov    %r9d,%r13d
  404ebf:	4d 89 e0             	mov    %r12,%r8
  404ec2:	4c 89 e7             	mov    %r12,%rdi
  404ec5:	41 81 e5 00 10 00 00 	and    $0x1000,%r13d
  404ecc:	48 85 c9             	test   %rcx,%rcx
  404ecf:	49 bb cd cc cc cc cc 	movabs $0xcccccccccccccccd,%r11
  404ed6:	cc cc cc 
  404ed9:	74 6a                	je     404f45 <__pformat_int.isra.0+0x105>
  404edb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404ee0:	49 8d 78 01          	lea    0x1(%r8),%rdi
  404ee4:	48 89 c8             	mov    %rcx,%rax
  404ee7:	49 f7 e3             	mul    %r11
  404eea:	48 c1 ea 03          	shr    $0x3,%rdx
  404eee:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  404ef2:	48 01 c0             	add    %rax,%rax
  404ef5:	48 29 c1             	sub    %rax,%rcx
  404ef8:	83 c1 30             	add    $0x30,%ecx
  404efb:	48 85 d2             	test   %rdx,%rdx
  404efe:	41 88 08             	mov    %cl,(%r8)
  404f01:	48 89 d1             	mov    %rdx,%rcx
  404f04:	74 3f                	je     404f45 <__pformat_int.isra.0+0x105>
  404f06:	49 39 fc             	cmp    %rdi,%r12
  404f09:	74 35                	je     404f40 <__pformat_int.isra.0+0x100>
  404f0b:	45 85 ed             	test   %r13d,%r13d
  404f0e:	74 30                	je     404f40 <__pformat_int.isra.0+0x100>
  404f10:	66 83 7e 20 00       	cmpw   $0x0,0x20(%rsi)
  404f15:	74 29                	je     404f40 <__pformat_int.isra.0+0x100>
  404f17:	48 89 f8             	mov    %rdi,%rax
  404f1a:	4c 29 e0             	sub    %r12,%rax
  404f1d:	48 99                	cqto   
  404f1f:	48 c1 ea 3e          	shr    $0x3e,%rdx
  404f23:	48 01 d0             	add    %rdx,%rax
  404f26:	83 e0 03             	and    $0x3,%eax
  404f29:	48 29 d0             	sub    %rdx,%rax
  404f2c:	48 83 f8 03          	cmp    $0x3,%rax
  404f30:	75 0e                	jne    404f40 <__pformat_int.isra.0+0x100>
  404f32:	49 8d 78 02          	lea    0x2(%r8),%rdi
  404f36:	41 c6 40 01 2c       	movb   $0x2c,0x1(%r8)
  404f3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404f40:	49 89 f8             	mov    %rdi,%r8
  404f43:	eb 9b                	jmp    404ee0 <__pformat_int.isra.0+0xa0>
  404f45:	85 db                	test   %ebx,%ebx
  404f47:	7e 3c                	jle    404f85 <__pformat_int.isra.0+0x145>
  404f49:	48 89 f8             	mov    %rdi,%rax
  404f4c:	89 da                	mov    %ebx,%edx
  404f4e:	4c 29 e0             	sub    %r12,%rax
  404f51:	29 c2                	sub    %eax,%edx
  404f53:	85 d2                	test   %edx,%edx
  404f55:	89 d0                	mov    %edx,%eax
  404f57:	7e 2c                	jle    404f85 <__pformat_int.isra.0+0x145>
  404f59:	83 e8 01             	sub    $0x1,%eax
  404f5c:	48 8d 4c 07 01       	lea    0x1(%rdi,%rax,1),%rcx
  404f61:	48 89 c2             	mov    %rax,%rdx
  404f64:	48 89 f8             	mov    %rdi,%rax
  404f67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  404f6e:	00 00 
  404f70:	48 83 c0 01          	add    $0x1,%rax
  404f74:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
  404f78:	48 39 c8             	cmp    %rcx,%rax
  404f7b:	75 f3                	jne    404f70 <__pformat_int.isra.0+0x130>
  404f7d:	48 63 c2             	movslq %edx,%rax
  404f80:	48 8d 7c 07 01       	lea    0x1(%rdi,%rax,1),%rdi
  404f85:	49 39 fc             	cmp    %rdi,%r12
  404f88:	75 08                	jne    404f92 <__pformat_int.isra.0+0x152>
  404f8a:	85 db                	test   %ebx,%ebx
  404f8c:	0f 85 2e 01 00 00    	jne    4050c0 <__pformat_int.isra.0+0x280>
  404f92:	45 85 d2             	test   %r10d,%r10d
  404f95:	7e 39                	jle    404fd0 <__pformat_int.isra.0+0x190>
  404f97:	48 89 f8             	mov    %rdi,%rax
  404f9a:	4c 29 e0             	sub    %r12,%rax
  404f9d:	41 29 c2             	sub    %eax,%r10d
  404fa0:	45 85 d2             	test   %r10d,%r10d
  404fa3:	44 89 56 0c          	mov    %r10d,0xc(%rsi)
  404fa7:	7e 27                	jle    404fd0 <__pformat_int.isra.0+0x190>
  404fa9:	41 f7 c1 c0 01 00 00 	test   $0x1c0,%r9d
  404fb0:	74 08                	je     404fba <__pformat_int.isra.0+0x17a>
  404fb2:	41 83 ea 01          	sub    $0x1,%r10d
  404fb6:	44 89 56 0c          	mov    %r10d,0xc(%rsi)
  404fba:	85 db                	test   %ebx,%ebx
  404fbc:	0f 88 0e 01 00 00    	js     4050d0 <__pformat_int.isra.0+0x290>
  404fc2:	41 f7 c1 00 04 00 00 	test   $0x400,%r9d
  404fc9:	0f 84 b1 00 00 00    	je     405080 <__pformat_int.isra.0+0x240>
  404fcf:	90                   	nop
  404fd0:	41 f6 c1 80          	test   $0x80,%r9b
  404fd4:	74 5a                	je     405030 <__pformat_int.isra.0+0x1f0>
  404fd6:	48 8d 5f 01          	lea    0x1(%rdi),%rbx
  404fda:	c6 07 2d             	movb   $0x2d,(%rdi)
  404fdd:	49 39 dc             	cmp    %rbx,%r12
  404fe0:	73 2e                	jae    405010 <__pformat_int.isra.0+0x1d0>
  404fe2:	48 83 eb 01          	sub    $0x1,%rbx
  404fe6:	0f be 0b             	movsbl (%rbx),%ecx
  404fe9:	48 89 f2             	mov    %rsi,%rdx
  404fec:	e8 af f5 ff ff       	callq  4045a0 <__pformat_putc>
  404ff1:	49 39 dc             	cmp    %rbx,%r12
  404ff4:	75 ec                	jne    404fe2 <__pformat_int.isra.0+0x1a2>
  404ff6:	8b 46 0c             	mov    0xc(%rsi),%eax
  404ff9:	8d 50 ff             	lea    -0x1(%rax),%edx
  404ffc:	85 c0                	test   %eax,%eax
  404ffe:	89 56 0c             	mov    %edx,0xc(%rsi)
  405001:	7e 1a                	jle    40501d <__pformat_int.isra.0+0x1dd>
  405003:	48 89 f2             	mov    %rsi,%rdx
  405006:	b9 20 00 00 00       	mov    $0x20,%ecx
  40500b:	e8 90 f5 ff ff       	callq  4045a0 <__pformat_putc>
  405010:	8b 46 0c             	mov    0xc(%rsi),%eax
  405013:	8d 50 ff             	lea    -0x1(%rax),%edx
  405016:	85 c0                	test   %eax,%eax
  405018:	89 56 0c             	mov    %edx,0xc(%rsi)
  40501b:	7f e6                	jg     405003 <__pformat_int.isra.0+0x1c3>
  40501d:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
  405021:	5b                   	pop    %rbx
  405022:	5e                   	pop    %rsi
  405023:	5f                   	pop    %rdi
  405024:	41 5c                	pop    %r12
  405026:	41 5d                	pop    %r13
  405028:	5d                   	pop    %rbp
  405029:	c3                   	retq   
  40502a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405030:	41 f7 c1 00 01 00 00 	test   $0x100,%r9d
  405037:	74 27                	je     405060 <__pformat_int.isra.0+0x220>
  405039:	48 8d 5f 01          	lea    0x1(%rdi),%rbx
  40503d:	c6 07 2b             	movb   $0x2b,(%rdi)
  405040:	eb 9b                	jmp    404fdd <__pformat_int.isra.0+0x19d>
  405042:	44 89 c0             	mov    %r8d,%eax
  405045:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
  40504a:	f7 e2                	mul    %edx
  40504c:	d1 ea                	shr    %edx
  40504e:	41 01 d0             	add    %edx,%r8d
  405051:	e9 2c fe ff ff       	jmpq   404e82 <__pformat_int.isra.0+0x42>
  405056:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40505d:	00 00 00 
  405060:	41 83 e1 40          	and    $0x40,%r9d
  405064:	48 89 fb             	mov    %rdi,%rbx
  405067:	0f 84 70 ff ff ff    	je     404fdd <__pformat_int.isra.0+0x19d>
  40506d:	48 83 c3 01          	add    $0x1,%rbx
  405071:	c6 07 20             	movb   $0x20,(%rdi)
  405074:	e9 64 ff ff ff       	jmpq   404fdd <__pformat_int.isra.0+0x19d>
  405079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405080:	8b 46 0c             	mov    0xc(%rsi),%eax
  405083:	8d 50 ff             	lea    -0x1(%rax),%edx
  405086:	85 c0                	test   %eax,%eax
  405088:	89 56 0c             	mov    %edx,0xc(%rsi)
  40508b:	0f 8e 3f ff ff ff    	jle    404fd0 <__pformat_int.isra.0+0x190>
  405091:	48 89 f2             	mov    %rsi,%rdx
  405094:	b9 20 00 00 00       	mov    $0x20,%ecx
  405099:	e8 02 f5 ff ff       	callq  4045a0 <__pformat_putc>
  40509e:	8b 46 0c             	mov    0xc(%rsi),%eax
  4050a1:	8d 50 ff             	lea    -0x1(%rax),%edx
  4050a4:	85 c0                	test   %eax,%eax
  4050a6:	89 56 0c             	mov    %edx,0xc(%rsi)
  4050a9:	7f e6                	jg     405091 <__pformat_int.isra.0+0x251>
  4050ab:	44 8b 4e 08          	mov    0x8(%rsi),%r9d
  4050af:	e9 1c ff ff ff       	jmpq   404fd0 <__pformat_int.isra.0+0x190>
  4050b4:	48 f7 d9             	neg    %rcx
  4050b7:	e9 00 fe ff ff       	jmpq   404ebc <__pformat_int.isra.0+0x7c>
  4050bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4050c0:	c6 07 30             	movb   $0x30,(%rdi)
  4050c3:	48 83 c7 01          	add    $0x1,%rdi
  4050c7:	e9 c6 fe ff ff       	jmpq   404f92 <__pformat_int.isra.0+0x152>
  4050cc:	0f 1f 40 00          	nopl   0x0(%rax)
  4050d0:	44 89 c8             	mov    %r9d,%eax
  4050d3:	25 00 06 00 00       	and    $0x600,%eax
  4050d8:	3d 00 02 00 00       	cmp    $0x200,%eax
  4050dd:	0f 85 df fe ff ff    	jne    404fc2 <__pformat_int.isra.0+0x182>
  4050e3:	8b 56 0c             	mov    0xc(%rsi),%edx
  4050e6:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4050e9:	85 d2                	test   %edx,%edx
  4050eb:	89 46 0c             	mov    %eax,0xc(%rsi)
  4050ee:	0f 8e dc fe ff ff    	jle    404fd0 <__pformat_int.isra.0+0x190>
  4050f4:	89 c1                	mov    %eax,%ecx
  4050f6:	48 89 f8             	mov    %rdi,%rax
  4050f9:	48 8d 54 0f 01       	lea    0x1(%rdi,%rcx,1),%rdx
  4050fe:	66 90                	xchg   %ax,%ax
  405100:	48 83 c0 01          	add    $0x1,%rax
  405104:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
  405108:	48 39 d0             	cmp    %rdx,%rax
  40510b:	75 f3                	jne    405100 <__pformat_int.isra.0+0x2c0>
  40510d:	48 8d 7c 0f 01       	lea    0x1(%rdi,%rcx,1),%rdi
  405112:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
  405119:	e9 b2 fe ff ff       	jmpq   404fd0 <__pformat_int.isra.0+0x190>
  40511e:	66 90                	xchg   %ax,%ax

0000000000405120 <__pformat_emit_efloat>:
  405120:	57                   	push   %rdi
  405121:	56                   	push   %rsi
  405122:	53                   	push   %rbx
  405123:	48 83 ec 20          	sub    $0x20,%rsp
  405127:	4c 89 ce             	mov    %r9,%rsi
  40512a:	49 89 d2             	mov    %rdx,%r10
  40512d:	45 8d 48 ff          	lea    -0x1(%r8),%r9d
  405131:	41 b8 67 66 66 66    	mov    $0x66666667,%r8d
  405137:	44 89 c8             	mov    %r9d,%eax
  40513a:	49 63 d9             	movslq %r9d,%rbx
  40513d:	41 c1 f9 1f          	sar    $0x1f,%r9d
  405141:	41 f7 e8             	imul   %r8d
  405144:	41 89 d0             	mov    %edx,%r8d
  405147:	41 c1 f8 02          	sar    $0x2,%r8d
  40514b:	45 29 c8             	sub    %r9d,%r8d
  40514e:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  405154:	74 23                	je     405179 <__pformat_emit_efloat+0x59>
  405156:	41 bb 67 66 66 66    	mov    $0x66666667,%r11d
  40515c:	0f 1f 40 00          	nopl   0x0(%rax)
  405160:	44 89 c0             	mov    %r8d,%eax
  405163:	41 c1 f8 1f          	sar    $0x1f,%r8d
  405167:	41 83 c1 01          	add    $0x1,%r9d
  40516b:	41 f7 eb             	imul   %r11d
  40516e:	c1 fa 02             	sar    $0x2,%edx
  405171:	44 29 c2             	sub    %r8d,%edx
  405174:	41 89 d0             	mov    %edx,%r8d
  405177:	75 e7                	jne    405160 <__pformat_emit_efloat+0x40>
  405179:	8b 46 2c             	mov    0x2c(%rsi),%eax
  40517c:	83 f8 ff             	cmp    $0xffffffff,%eax
  40517f:	75 0c                	jne    40518d <__pformat_emit_efloat+0x6d>
  405181:	c7 46 2c 02 00 00 00 	movl   $0x2,0x2c(%rsi)
  405188:	b8 02 00 00 00       	mov    $0x2,%eax
  40518d:	44 8b 46 0c          	mov    0xc(%rsi),%r8d
  405191:	44 39 c8             	cmp    %r9d,%eax
  405194:	44 89 cf             	mov    %r9d,%edi
  405197:	49 89 f1             	mov    %rsi,%r9
  40519a:	0f 4d f8             	cmovge %eax,%edi
  40519d:	8d 57 02             	lea    0x2(%rdi),%edx
  4051a0:	44 89 c0             	mov    %r8d,%eax
  4051a3:	29 d0                	sub    %edx,%eax
  4051a5:	41 39 d0             	cmp    %edx,%r8d
  4051a8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4051ad:	0f 4e c2             	cmovle %edx,%eax
  4051b0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4051b6:	4c 89 d2             	mov    %r10,%rdx
  4051b9:	89 46 0c             	mov    %eax,0xc(%rsi)
  4051bc:	e8 0f f8 ff ff       	callq  4049d0 <__pformat_emit_float>
  4051c1:	8b 4e 08             	mov    0x8(%rsi),%ecx
  4051c4:	48 89 f2             	mov    %rsi,%rdx
  4051c7:	8b 46 2c             	mov    0x2c(%rsi),%eax
  4051ca:	89 46 10             	mov    %eax,0x10(%rsi)
  4051cd:	89 c8                	mov    %ecx,%eax
  4051cf:	83 e1 20             	and    $0x20,%ecx
  4051d2:	0d c0 01 00 00       	or     $0x1c0,%eax
  4051d7:	83 c9 45             	or     $0x45,%ecx
  4051da:	89 46 08             	mov    %eax,0x8(%rsi)
  4051dd:	e8 be f3 ff ff       	callq  4045a0 <__pformat_putc>
  4051e2:	44 8d 4f 01          	lea    0x1(%rdi),%r9d
  4051e6:	48 89 f2             	mov    %rsi,%rdx
  4051e9:	48 89 d9             	mov    %rbx,%rcx
  4051ec:	44 01 4e 0c          	add    %r9d,0xc(%rsi)
  4051f0:	48 83 c4 20          	add    $0x20,%rsp
  4051f4:	5b                   	pop    %rbx
  4051f5:	5e                   	pop    %rsi
  4051f6:	5f                   	pop    %rdi
  4051f7:	e9 44 fc ff ff       	jmpq   404e40 <__pformat_int.isra.0>
  4051fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000405200 <__pformat_efloat>:
  405200:	56                   	push   %rsi
  405201:	53                   	push   %rbx
  405202:	48 83 ec 68          	sub    $0x68,%rsp
  405206:	44 8b 42 10          	mov    0x10(%rdx),%r8d
  40520a:	db 29                	fldt   (%rcx)
  40520c:	45 85 c0             	test   %r8d,%r8d
  40520f:	48 89 d3             	mov    %rdx,%rbx
  405212:	78 6c                	js     405280 <__pformat_efloat+0x80>
  405214:	41 83 c0 01          	add    $0x1,%r8d
  405218:	db 7c 24 50          	fstpt  0x50(%rsp)
  40521c:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
  405221:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
  405226:	b9 02 00 00 00       	mov    $0x2,%ecx
  40522b:	4c 8d 4c 24 4c       	lea    0x4c(%rsp),%r9
  405230:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  405235:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  40523a:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40523f:	48 8d 44 24 48       	lea    0x48(%rsp),%rax
  405244:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  405249:	e8 62 f2 ff ff       	callq  4044b0 <__pformat_cvt>
  40524e:	44 8b 44 24 4c       	mov    0x4c(%rsp),%r8d
  405253:	48 89 c6             	mov    %rax,%rsi
  405256:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
  40525d:	74 31                	je     405290 <__pformat_efloat+0x90>
  40525f:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
  405263:	49 89 d9             	mov    %rbx,%r9
  405266:	48 89 c2             	mov    %rax,%rdx
  405269:	e8 b2 fe ff ff       	callq  405120 <__pformat_emit_efloat>
  40526e:	48 89 f1             	mov    %rsi,%rcx
  405271:	e8 0a 14 00 00       	callq  406680 <__freedtoa>
  405276:	90                   	nop
  405277:	48 83 c4 68          	add    $0x68,%rsp
  40527b:	5b                   	pop    %rbx
  40527c:	5e                   	pop    %rsi
  40527d:	c3                   	retq   
  40527e:	66 90                	xchg   %ax,%ax
  405280:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
  405287:	41 b8 07 00 00 00    	mov    $0x7,%r8d
  40528d:	eb 89                	jmp    405218 <__pformat_efloat+0x18>
  40528f:	90                   	nop
  405290:	8b 4c 24 48          	mov    0x48(%rsp),%ecx
  405294:	49 89 d8             	mov    %rbx,%r8
  405297:	48 89 c2             	mov    %rax,%rdx
  40529a:	e8 91 f5 ff ff       	callq  404830 <__pformat_emit_inf_or_nan>
  40529f:	48 89 f1             	mov    %rsi,%rcx
  4052a2:	e8 d9 13 00 00       	callq  406680 <__freedtoa>
  4052a7:	90                   	nop
  4052a8:	48 83 c4 68          	add    $0x68,%rsp
  4052ac:	5b                   	pop    %rbx
  4052ad:	5e                   	pop    %rsi
  4052ae:	c3                   	retq   
  4052af:	90                   	nop

00000000004052b0 <__pformat_gfloat>:
  4052b0:	56                   	push   %rsi
  4052b1:	53                   	push   %rbx
  4052b2:	48 83 ec 78          	sub    $0x78,%rsp
  4052b6:	44 8b 42 10          	mov    0x10(%rdx),%r8d
  4052ba:	db 29                	fldt   (%rcx)
  4052bc:	45 85 c0             	test   %r8d,%r8d
  4052bf:	48 89 d3             	mov    %rdx,%rbx
  4052c2:	0f 88 38 01 00 00    	js     405400 <__pformat_gfloat+0x150>
  4052c8:	0f 84 12 01 00 00    	je     4053e0 <__pformat_gfloat+0x130>
  4052ce:	db 7c 24 60          	fstpt  0x60(%rsp)
  4052d2:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  4052d7:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  4052dc:	b9 02 00 00 00       	mov    $0x2,%ecx
  4052e1:	4c 8d 4c 24 5c       	lea    0x5c(%rsp),%r9
  4052e6:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  4052eb:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  4052f0:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  4052f5:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4052fa:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  4052ff:	e8 ac f1 ff ff       	callq  4044b0 <__pformat_cvt>
  405304:	44 8b 44 24 5c       	mov    0x5c(%rsp),%r8d
  405309:	48 89 c6             	mov    %rax,%rsi
  40530c:	41 81 f8 00 80 ff ff 	cmp    $0xffff8000,%r8d
  405313:	0f 84 07 01 00 00    	je     405420 <__pformat_gfloat+0x170>
  405319:	8b 43 08             	mov    0x8(%rbx),%eax
  40531c:	25 00 08 00 00       	and    $0x800,%eax
  405321:	41 83 f8 fd          	cmp    $0xfffffffd,%r8d
  405325:	7c 79                	jl     4053a0 <__pformat_gfloat+0xf0>
  405327:	8b 53 10             	mov    0x10(%rbx),%edx
  40532a:	41 39 d0             	cmp    %edx,%r8d
  40532d:	7f 71                	jg     4053a0 <__pformat_gfloat+0xf0>
  40532f:	85 c0                	test   %eax,%eax
  405331:	0f 85 db 00 00 00    	jne    405412 <__pformat_gfloat+0x162>
  405337:	48 89 f1             	mov    %rsi,%rcx
  40533a:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
  40533f:	e8 8c 3c 00 00       	callq  408fd0 <strlen>
  405344:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
  405349:	44 29 c0             	sub    %r8d,%eax
  40534c:	85 c0                	test   %eax,%eax
  40534e:	89 43 10             	mov    %eax,0x10(%rbx)
  405351:	0f 88 e9 00 00 00    	js     405440 <__pformat_gfloat+0x190>
  405357:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
  40535b:	49 89 d9             	mov    %rbx,%r9
  40535e:	48 89 f2             	mov    %rsi,%rdx
  405361:	e8 6a f6 ff ff       	callq  4049d0 <__pformat_emit_float>
  405366:	eb 15                	jmp    40537d <__pformat_gfloat+0xcd>
  405368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40536f:	00 
  405370:	48 89 da             	mov    %rbx,%rdx
  405373:	b9 20 00 00 00       	mov    $0x20,%ecx
  405378:	e8 23 f2 ff ff       	callq  4045a0 <__pformat_putc>
  40537d:	8b 43 0c             	mov    0xc(%rbx),%eax
  405380:	8d 50 ff             	lea    -0x1(%rax),%edx
  405383:	85 c0                	test   %eax,%eax
  405385:	89 53 0c             	mov    %edx,0xc(%rbx)
  405388:	7f e6                	jg     405370 <__pformat_gfloat+0xc0>
  40538a:	48 89 f1             	mov    %rsi,%rcx
  40538d:	e8 ee 12 00 00       	callq  406680 <__freedtoa>
  405392:	90                   	nop
  405393:	48 83 c4 78          	add    $0x78,%rsp
  405397:	5b                   	pop    %rbx
  405398:	5e                   	pop    %rsi
  405399:	c3                   	retq   
  40539a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4053a0:	85 c0                	test   %eax,%eax
  4053a2:	75 4e                	jne    4053f2 <__pformat_gfloat+0x142>
  4053a4:	48 89 f1             	mov    %rsi,%rcx
  4053a7:	44 89 44 24 3c       	mov    %r8d,0x3c(%rsp)
  4053ac:	e8 1f 3c 00 00       	callq  408fd0 <strlen>
  4053b1:	44 8b 44 24 3c       	mov    0x3c(%rsp),%r8d
  4053b6:	83 e8 01             	sub    $0x1,%eax
  4053b9:	89 43 10             	mov    %eax,0x10(%rbx)
  4053bc:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
  4053c0:	49 89 d9             	mov    %rbx,%r9
  4053c3:	48 89 f2             	mov    %rsi,%rdx
  4053c6:	e8 55 fd ff ff       	callq  405120 <__pformat_emit_efloat>
  4053cb:	48 89 f1             	mov    %rsi,%rcx
  4053ce:	e8 ad 12 00 00       	callq  406680 <__freedtoa>
  4053d3:	90                   	nop
  4053d4:	48 83 c4 78          	add    $0x78,%rsp
  4053d8:	5b                   	pop    %rbx
  4053d9:	5e                   	pop    %rsi
  4053da:	c3                   	retq   
  4053db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4053e0:	c7 42 10 01 00 00 00 	movl   $0x1,0x10(%rdx)
  4053e7:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4053ed:	e9 dc fe ff ff       	jmpq   4052ce <__pformat_gfloat+0x1e>
  4053f2:	83 6b 10 01          	subl   $0x1,0x10(%rbx)
  4053f6:	eb c4                	jmp    4053bc <__pformat_gfloat+0x10c>
  4053f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4053ff:	00 
  405400:	c7 42 10 06 00 00 00 	movl   $0x6,0x10(%rdx)
  405407:	41 b8 06 00 00 00    	mov    $0x6,%r8d
  40540d:	e9 bc fe ff ff       	jmpq   4052ce <__pformat_gfloat+0x1e>
  405412:	44 29 c2             	sub    %r8d,%edx
  405415:	89 53 10             	mov    %edx,0x10(%rbx)
  405418:	e9 3a ff ff ff       	jmpq   405357 <__pformat_gfloat+0xa7>
  40541d:	0f 1f 00             	nopl   (%rax)
  405420:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
  405424:	49 89 d8             	mov    %rbx,%r8
  405427:	48 89 c2             	mov    %rax,%rdx
  40542a:	e8 01 f4 ff ff       	callq  404830 <__pformat_emit_inf_or_nan>
  40542f:	48 89 f1             	mov    %rsi,%rcx
  405432:	e8 49 12 00 00       	callq  406680 <__freedtoa>
  405437:	90                   	nop
  405438:	48 83 c4 78          	add    $0x78,%rsp
  40543c:	5b                   	pop    %rbx
  40543d:	5e                   	pop    %rsi
  40543e:	c3                   	retq   
  40543f:	90                   	nop
  405440:	8b 53 0c             	mov    0xc(%rbx),%edx
  405443:	85 d2                	test   %edx,%edx
  405445:	0f 8e 0c ff ff ff    	jle    405357 <__pformat_gfloat+0xa7>
  40544b:	01 d0                	add    %edx,%eax
  40544d:	89 43 0c             	mov    %eax,0xc(%rbx)
  405450:	e9 02 ff ff ff       	jmpq   405357 <__pformat_gfloat+0xa7>
  405455:	90                   	nop
  405456:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40545d:	00 00 00 

0000000000405460 <__pformat_xint.isra.1>:
  405460:	55                   	push   %rbp
  405461:	41 57                	push   %r15
  405463:	41 56                	push   %r14
  405465:	41 55                	push   %r13
  405467:	41 54                	push   %r12
  405469:	57                   	push   %rdi
  40546a:	56                   	push   %rsi
  40546b:	53                   	push   %rbx
  40546c:	48 83 ec 28          	sub    $0x28,%rsp
  405470:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  405477:	00 
  405478:	bb 12 00 00 00       	mov    $0x12,%ebx
  40547d:	b8 18 00 00 00       	mov    $0x18,%eax
  405482:	45 8b 58 10          	mov    0x10(%r8),%r11d
  405486:	45 8b 60 08          	mov    0x8(%r8),%r12d
  40548a:	83 f9 6f             	cmp    $0x6f,%ecx
  40548d:	41 89 ca             	mov    %ecx,%r10d
  405490:	49 89 d1             	mov    %rdx,%r9
  405493:	0f 45 c3             	cmovne %ebx,%eax
  405496:	0f 95 c1             	setne  %cl
  405499:	bb 00 00 00 00       	mov    $0x0,%ebx
  40549e:	0f b6 c9             	movzbl %cl,%ecx
  4054a1:	4c 89 c6             	mov    %r8,%rsi
  4054a4:	83 c1 03             	add    $0x3,%ecx
  4054a7:	45 85 db             	test   %r11d,%r11d
  4054aa:	41 0f 49 db          	cmovns %r11d,%ebx
  4054ae:	01 c3                	add    %eax,%ebx
  4054b0:	41 f7 c4 00 10 00 00 	test   $0x1000,%r12d
  4054b7:	74 0c                	je     4054c5 <__pformat_xint.isra.1+0x65>
  4054b9:	66 41 83 78 20 00    	cmpw   $0x0,0x20(%r8)
  4054bf:	0f 85 bb 01 00 00    	jne    405680 <__pformat_xint.isra.1+0x220>
  4054c5:	4c 63 46 0c          	movslq 0xc(%rsi),%r8
  4054c9:	48 63 c3             	movslq %ebx,%rax
  4054cc:	41 39 d8             	cmp    %ebx,%r8d
  4054cf:	49 0f 4d c0          	cmovge %r8,%rax
  4054d3:	48 83 c0 1e          	add    $0x1e,%rax
  4054d7:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4054db:	e8 30 ef ff ff       	callq  404410 <___chkstk_ms>
  4054e0:	31 d2                	xor    %edx,%edx
  4054e2:	48 29 c4             	sub    %rax,%rsp
  4054e5:	41 83 fa 6f          	cmp    $0x6f,%r10d
  4054e9:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  4054ee:	0f 95 c2             	setne  %dl
  4054f1:	4d 85 c9             	test   %r9,%r9
  4054f4:	8d 14 d5 07 00 00 00 	lea    0x7(,%rdx,8),%edx
  4054fb:	48 89 fb             	mov    %rdi,%rbx
  4054fe:	0f 84 be 01 00 00    	je     4056c2 <__pformat_xint.isra.1+0x262>
  405504:	45 89 d5             	mov    %r10d,%r13d
  405507:	41 83 e5 20          	and    $0x20,%r13d
  40550b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405510:	89 d0                	mov    %edx,%eax
  405512:	48 83 c3 01          	add    $0x1,%rbx
  405516:	44 21 c8             	and    %r9d,%eax
  405519:	44 8d 70 30          	lea    0x30(%rax),%r14d
  40551d:	83 c0 37             	add    $0x37,%eax
  405520:	44 09 e8             	or     %r13d,%eax
  405523:	45 89 f7             	mov    %r14d,%r15d
  405526:	41 80 fe 3a          	cmp    $0x3a,%r14b
  40552a:	41 0f 42 c7          	cmovb  %r15d,%eax
  40552e:	49 d3 e9             	shr    %cl,%r9
  405531:	4d 85 c9             	test   %r9,%r9
  405534:	88 43 ff             	mov    %al,-0x1(%rbx)
  405537:	75 d7                	jne    405510 <__pformat_xint.isra.1+0xb0>
  405539:	48 39 df             	cmp    %rbx,%rdi
  40553c:	0f 84 80 01 00 00    	je     4056c2 <__pformat_xint.isra.1+0x262>
  405542:	45 85 db             	test   %r11d,%r11d
  405545:	0f 8e c5 00 00 00    	jle    405610 <__pformat_xint.isra.1+0x1b0>
  40554b:	48 89 d8             	mov    %rbx,%rax
  40554e:	44 89 da             	mov    %r11d,%edx
  405551:	48 29 f8             	sub    %rdi,%rax
  405554:	29 c2                	sub    %eax,%edx
  405556:	85 d2                	test   %edx,%edx
  405558:	89 d0                	mov    %edx,%eax
  40555a:	0f 8e b0 00 00 00    	jle    405610 <__pformat_xint.isra.1+0x1b0>
  405560:	83 e8 01             	sub    $0x1,%eax
  405563:	48 8d 4c 03 01       	lea    0x1(%rbx,%rax,1),%rcx
  405568:	48 89 c2             	mov    %rax,%rdx
  40556b:	48 89 d8             	mov    %rbx,%rax
  40556e:	66 90                	xchg   %ax,%ax
  405570:	48 83 c0 01          	add    $0x1,%rax
  405574:	c6 40 ff 30          	movb   $0x30,-0x1(%rax)
  405578:	48 39 c8             	cmp    %rcx,%rax
  40557b:	75 f3                	jne    405570 <__pformat_xint.isra.1+0x110>
  40557d:	48 63 c2             	movslq %edx,%rax
  405580:	48 8d 5c 03 01       	lea    0x1(%rbx,%rax,1),%rbx
  405585:	45 85 db             	test   %r11d,%r11d
  405588:	74 09                	je     405593 <__pformat_xint.isra.1+0x133>
  40558a:	48 39 df             	cmp    %rbx,%rdi
  40558d:	0f 84 91 01 00 00    	je     405724 <__pformat_xint.isra.1+0x2c4>
  405593:	48 89 d8             	mov    %rbx,%rax
  405596:	48 29 f8             	sub    %rdi,%rax
  405599:	41 39 c0             	cmp    %eax,%r8d
  40559c:	0f 8f 8e 00 00 00    	jg     405630 <__pformat_xint.isra.1+0x1d0>
  4055a2:	41 83 fa 6f          	cmp    $0x6f,%r10d
  4055a6:	c7 46 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rsi)
  4055ad:	0f 85 7d 01 00 00    	jne    405730 <__pformat_xint.isra.1+0x2d0>
  4055b3:	48 39 df             	cmp    %rbx,%rdi
  4055b6:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
  4055bc:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  4055c2:	73 36                	jae    4055fa <__pformat_xint.isra.1+0x19a>
  4055c4:	48 83 eb 01          	sub    $0x1,%rbx
  4055c8:	0f be 0b             	movsbl (%rbx),%ecx
  4055cb:	48 89 f2             	mov    %rsi,%rdx
  4055ce:	e8 cd ef ff ff       	callq  4045a0 <__pformat_putc>
  4055d3:	48 39 df             	cmp    %rbx,%rdi
  4055d6:	72 ec                	jb     4055c4 <__pformat_xint.isra.1+0x164>
  4055d8:	45 85 ed             	test   %r13d,%r13d
  4055db:	7e 1d                	jle    4055fa <__pformat_xint.isra.1+0x19a>
  4055dd:	0f 1f 00             	nopl   (%rax)
  4055e0:	41 83 ec 01          	sub    $0x1,%r12d
  4055e4:	48 89 f2             	mov    %rsi,%rdx
  4055e7:	b9 20 00 00 00       	mov    $0x20,%ecx
  4055ec:	e8 af ef ff ff       	callq  4045a0 <__pformat_putc>
  4055f1:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  4055f6:	85 c0                	test   %eax,%eax
  4055f8:	7f e6                	jg     4055e0 <__pformat_xint.isra.1+0x180>
  4055fa:	48 8d 65 a8          	lea    -0x58(%rbp),%rsp
  4055fe:	5b                   	pop    %rbx
  4055ff:	5e                   	pop    %rsi
  405600:	5f                   	pop    %rdi
  405601:	41 5c                	pop    %r12
  405603:	41 5d                	pop    %r13
  405605:	41 5e                	pop    %r14
  405607:	41 5f                	pop    %r15
  405609:	5d                   	pop    %rbp
  40560a:	c3                   	retq   
  40560b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405610:	41 83 fa 6f          	cmp    $0x6f,%r10d
  405614:	0f 85 6b ff ff ff    	jne    405585 <__pformat_xint.isra.1+0x125>
  40561a:	f6 46 09 08          	testb  $0x8,0x9(%rsi)
  40561e:	0f 84 61 ff ff ff    	je     405585 <__pformat_xint.isra.1+0x125>
  405624:	c6 03 30             	movb   $0x30,(%rbx)
  405627:	48 83 c3 01          	add    $0x1,%rbx
  40562b:	e9 55 ff ff ff       	jmpq   405585 <__pformat_xint.isra.1+0x125>
  405630:	41 29 c0             	sub    %eax,%r8d
  405633:	41 83 fa 6f          	cmp    $0x6f,%r10d
  405637:	8b 46 08             	mov    0x8(%rsi),%eax
  40563a:	45 89 c5             	mov    %r8d,%r13d
  40563d:	44 89 46 0c          	mov    %r8d,0xc(%rsi)
  405641:	74 4f                	je     405692 <__pformat_xint.isra.1+0x232>
  405643:	f6 c4 08             	test   $0x8,%ah
  405646:	0f 84 86 00 00 00    	je     4056d2 <__pformat_xint.isra.1+0x272>
  40564c:	41 83 ed 02          	sub    $0x2,%r13d
  405650:	45 85 ed             	test   %r13d,%r13d
  405653:	7e 09                	jle    40565e <__pformat_xint.isra.1+0x1fe>
  405655:	45 85 db             	test   %r11d,%r11d
  405658:	0f 88 f2 00 00 00    	js     405750 <__pformat_xint.isra.1+0x2f0>
  40565e:	48 89 da             	mov    %rbx,%rdx
  405661:	44 88 12             	mov    %r10b,(%rdx)
  405664:	48 8d 5a 02          	lea    0x2(%rdx),%rbx
  405668:	45 85 ed             	test   %r13d,%r13d
  40566b:	c6 42 01 30          	movb   $0x30,0x1(%rdx)
  40566f:	7f 66                	jg     4056d7 <__pformat_xint.isra.1+0x277>
  405671:	48 39 df             	cmp    %rbx,%rdi
  405674:	73 84                	jae    4055fa <__pformat_xint.isra.1+0x19a>
  405676:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
  40567a:	e9 45 ff ff ff       	jmpq   4055c4 <__pformat_xint.isra.1+0x164>
  40567f:	90                   	nop
  405680:	89 d8                	mov    %ebx,%eax
  405682:	ba ab aa aa aa       	mov    $0xaaaaaaab,%edx
  405687:	f7 e2                	mul    %edx
  405689:	d1 ea                	shr    %edx
  40568b:	01 d3                	add    %edx,%ebx
  40568d:	e9 33 fe ff ff       	jmpq   4054c5 <__pformat_xint.isra.1+0x65>
  405692:	45 85 db             	test   %r11d,%r11d
  405695:	79 14                	jns    4056ab <__pformat_xint.isra.1+0x24b>
  405697:	89 c2                	mov    %eax,%edx
  405699:	81 e2 00 06 00 00    	and    $0x600,%edx
  40569f:	81 fa 00 02 00 00    	cmp    $0x200,%edx
  4056a5:	0f 84 c5 00 00 00    	je     405770 <__pformat_xint.isra.1+0x310>
  4056ab:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
  4056af:	f6 c4 04             	test   $0x4,%ah
  4056b2:	74 3c                	je     4056f0 <__pformat_xint.isra.1+0x290>
  4056b4:	48 39 df             	cmp    %rbx,%rdi
  4056b7:	0f 83 23 ff ff ff    	jae    4055e0 <__pformat_xint.isra.1+0x180>
  4056bd:	e9 02 ff ff ff       	jmpq   4055c4 <__pformat_xint.isra.1+0x164>
  4056c2:	41 81 e4 ff f7 ff ff 	and    $0xfffff7ff,%r12d
  4056c9:	44 89 66 08          	mov    %r12d,0x8(%rsi)
  4056cd:	e9 70 fe ff ff       	jmpq   405542 <__pformat_xint.isra.1+0xe2>
  4056d2:	45 85 db             	test   %r11d,%r11d
  4056d5:	78 79                	js     405750 <__pformat_xint.isra.1+0x2f0>
  4056d7:	45 8d 65 ff          	lea    -0x1(%r13),%r12d
  4056db:	f6 c4 04             	test   $0x4,%ah
  4056de:	74 10                	je     4056f0 <__pformat_xint.isra.1+0x290>
  4056e0:	48 39 df             	cmp    %rbx,%rdi
  4056e3:	0f 82 db fe ff ff    	jb     4055c4 <__pformat_xint.isra.1+0x164>
  4056e9:	e9 f2 fe ff ff       	jmpq   4055e0 <__pformat_xint.isra.1+0x180>
  4056ee:	66 90                	xchg   %ax,%ax
  4056f0:	41 83 ec 01          	sub    $0x1,%r12d
  4056f4:	48 89 f2             	mov    %rsi,%rdx
  4056f7:	b9 20 00 00 00       	mov    $0x20,%ecx
  4056fc:	e8 9f ee ff ff       	callq  4045a0 <__pformat_putc>
  405701:	41 8d 44 24 01       	lea    0x1(%r12),%eax
  405706:	85 c0                	test   %eax,%eax
  405708:	7f e6                	jg     4056f0 <__pformat_xint.isra.1+0x290>
  40570a:	48 39 df             	cmp    %rbx,%rdi
  40570d:	0f 83 e7 fe ff ff    	jae    4055fa <__pformat_xint.isra.1+0x19a>
  405713:	41 bc fe ff ff ff    	mov    $0xfffffffe,%r12d
  405719:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  40571f:	e9 a0 fe ff ff       	jmpq   4055c4 <__pformat_xint.isra.1+0x164>
  405724:	c6 03 30             	movb   $0x30,(%rbx)
  405727:	48 83 c3 01          	add    $0x1,%rbx
  40572b:	e9 63 fe ff ff       	jmpq   405593 <__pformat_xint.isra.1+0x133>
  405730:	8b 46 08             	mov    0x8(%rsi),%eax
  405733:	f6 c4 08             	test   $0x8,%ah
  405736:	74 6b                	je     4057a3 <__pformat_xint.isra.1+0x343>
  405738:	48 89 da             	mov    %rbx,%rdx
  40573b:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  405741:	e9 1b ff ff ff       	jmpq   405661 <__pformat_xint.isra.1+0x201>
  405746:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40574d:	00 00 00 
  405750:	89 c2                	mov    %eax,%edx
  405752:	81 e2 00 06 00 00    	and    $0x600,%edx
  405758:	81 fa 00 02 00 00    	cmp    $0x200,%edx
  40575e:	74 10                	je     405770 <__pformat_xint.isra.1+0x310>
  405760:	f6 c4 08             	test   $0x8,%ah
  405763:	0f 84 6e ff ff ff    	je     4056d7 <__pformat_xint.isra.1+0x277>
  405769:	e9 f0 fe ff ff       	jmpq   40565e <__pformat_xint.isra.1+0x1fe>
  40576e:	66 90                	xchg   %ax,%ax
  405770:	45 8d 45 ff          	lea    -0x1(%r13),%r8d
  405774:	44 89 c2             	mov    %r8d,%edx
  405777:	48 8d 4c 13 01       	lea    0x1(%rbx,%rdx,1),%rcx
  40577c:	48 89 da             	mov    %rbx,%rdx
  40577f:	90                   	nop
  405780:	48 83 c2 01          	add    $0x1,%rdx
  405784:	c6 42 ff 30          	movb   $0x30,-0x1(%rdx)
  405788:	48 39 d1             	cmp    %rdx,%rcx
  40578b:	75 f3                	jne    405780 <__pformat_xint.isra.1+0x320>
  40578d:	4d 63 c0             	movslq %r8d,%r8
  405790:	41 83 fa 6f          	cmp    $0x6f,%r10d
  405794:	4a 8d 54 03 01       	lea    0x1(%rbx,%r8,1),%rdx
  405799:	74 05                	je     4057a0 <__pformat_xint.isra.1+0x340>
  40579b:	f6 c4 08             	test   $0x8,%ah
  40579e:	75 9b                	jne    40573b <__pformat_xint.isra.1+0x2db>
  4057a0:	48 89 d3             	mov    %rdx,%rbx
  4057a3:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
  4057a9:	e9 c3 fe ff ff       	jmpq   405671 <__pformat_xint.isra.1+0x211>
  4057ae:	66 90                	xchg   %ax,%ax

00000000004057b0 <__pformat_xldouble>:
  4057b0:	41 55                	push   %r13
  4057b2:	41 54                	push   %r12
  4057b4:	55                   	push   %rbp
  4057b5:	57                   	push   %rdi
  4057b6:	56                   	push   %rsi
  4057b7:	53                   	push   %rbx
  4057b8:	48 83 ec 68          	sub    $0x68,%rsp
  4057bc:	4c 8b 09             	mov    (%rcx),%r9
  4057bf:	44 8b 51 08          	mov    0x8(%rcx),%r10d
  4057c3:	4c 89 c8             	mov    %r9,%rax
  4057c6:	48 89 d3             	mov    %rdx,%rbx
  4057c9:	4c 89 4c 24 30       	mov    %r9,0x30(%rsp)
  4057ce:	48 c1 e8 20          	shr    $0x20,%rax
  4057d2:	41 0f bf ca          	movswl %r10w,%ecx
  4057d6:	44 89 54 24 38       	mov    %r10d,0x38(%rsp)
  4057db:	4c 89 d7             	mov    %r10,%rdi
  4057de:	44 8d 04 09          	lea    (%rcx,%rcx,1),%r8d
  4057e2:	25 ff ff ff 7f       	and    $0x7fffffff,%eax
  4057e7:	44 09 c8             	or     %r9d,%eax
  4057ea:	45 0f b7 c0          	movzwl %r8w,%r8d
  4057ee:	89 c2                	mov    %eax,%edx
  4057f0:	f7 da                	neg    %edx
  4057f2:	09 c2                	or     %eax,%edx
  4057f4:	c1 ea 1f             	shr    $0x1f,%edx
  4057f7:	44 09 c2             	or     %r8d,%edx
  4057fa:	41 b8 fe ff 00 00    	mov    $0xfffe,%r8d
  405800:	41 29 d0             	sub    %edx,%r8d
  405803:	44 89 c2             	mov    %r8d,%edx
  405806:	c1 fa 10             	sar    $0x10,%edx
  405809:	85 d2                	test   %edx,%edx
  40580b:	0f 85 bf 02 00 00    	jne    405ad0 <__pformat_xldouble+0x320>
  405811:	66 45 85 d2          	test   %r10w,%r10w
  405815:	0f 88 95 02 00 00    	js     405ab0 <__pformat_xldouble+0x300>
  40581b:	66 81 e7 ff 7f       	and    $0x7fff,%di
  405820:	85 c0                	test   %eax,%eax
  405822:	75 0b                	jne    40582f <__pformat_xldouble+0x7f>
  405824:	66 81 ff ff 7f       	cmp    $0x7fff,%di
  405829:	0f 84 5b 04 00 00    	je     405c8a <__pformat_xldouble+0x4da>
  40582f:	66 85 ff             	test   %di,%di
  405832:	0f 85 a8 01 00 00    	jne    4059e0 <__pformat_xldouble+0x230>
  405838:	4d 85 c9             	test   %r9,%r9
  40583b:	4c 89 c8             	mov    %r9,%rax
  40583e:	0f 85 fc 02 00 00    	jne    405b40 <__pformat_xldouble+0x390>
  405844:	44 8b 43 10          	mov    0x10(%rbx),%r8d
  405848:	41 83 f8 0e          	cmp    $0xe,%r8d
  40584c:	0f 86 ae 01 00 00    	jbe    405a00 <__pformat_xldouble+0x250>
  405852:	44 8b 43 08          	mov    0x8(%rbx),%r8d
  405856:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  40585b:	8b 43 10             	mov    0x10(%rbx),%eax
  40585e:	85 c0                	test   %eax,%eax
  405860:	0f 8e 0f 04 00 00    	jle    405c75 <__pformat_xldouble+0x4c5>
  405866:	c6 44 24 40 2e       	movb   $0x2e,0x40(%rsp)
  40586b:	48 8d 45 01          	lea    0x1(%rbp),%rax
  40586f:	48 8d 70 01          	lea    0x1(%rax),%rsi
  405873:	c6 00 30             	movb   $0x30,(%rax)
  405876:	44 8b 53 0c          	mov    0xc(%rbx),%r10d
  40587a:	41 bc 02 00 00 00    	mov    $0x2,%r12d
  405880:	45 85 d2             	test   %r10d,%r10d
  405883:	0f 8e 87 00 00 00    	jle    405910 <__pformat_xldouble+0x160>
  405889:	8b 53 10             	mov    0x10(%rbx),%edx
  40588c:	48 89 f0             	mov    %rsi,%rax
  40588f:	44 0f bf df          	movswl %di,%r11d
  405893:	48 29 e8             	sub    %rbp,%rax
  405896:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
  405899:	85 d2                	test   %edx,%edx
  40589b:	0f 4f c1             	cmovg  %ecx,%eax
  40589e:	31 d2                	xor    %edx,%edx
  4058a0:	41 f7 c0 c0 01 00 00 	test   $0x1c0,%r8d
  4058a7:	0f 95 c2             	setne  %dl
  4058aa:	b9 67 66 66 66       	mov    $0x66666667,%ecx
  4058af:	44 8d 4c 10 05       	lea    0x5(%rax,%rdx,1),%r9d
  4058b4:	44 89 d8             	mov    %r11d,%eax
  4058b7:	41 c1 fb 1f          	sar    $0x1f,%r11d
  4058bb:	f7 e9                	imul   %ecx
  4058bd:	89 d1                	mov    %edx,%ecx
  4058bf:	c1 f9 02             	sar    $0x2,%ecx
  4058c2:	44 29 d9             	sub    %r11d,%ecx
  4058c5:	74 26                	je     4058ed <__pformat_xldouble+0x13d>
  4058c7:	41 bb 67 66 66 66    	mov    $0x66666667,%r11d
  4058cd:	0f 1f 00             	nopl   (%rax)
  4058d0:	89 c8                	mov    %ecx,%eax
  4058d2:	c1 f9 1f             	sar    $0x1f,%ecx
  4058d5:	41 83 c1 01          	add    $0x1,%r9d
  4058d9:	41 f7 eb             	imul   %r11d
  4058dc:	41 83 c4 01          	add    $0x1,%r12d
  4058e0:	c1 fa 02             	sar    $0x2,%edx
  4058e3:	29 ca                	sub    %ecx,%edx
  4058e5:	89 d1                	mov    %edx,%ecx
  4058e7:	75 e7                	jne    4058d0 <__pformat_xldouble+0x120>
  4058e9:	45 0f bf e4          	movswl %r12w,%r12d
  4058ed:	45 39 ca             	cmp    %r9d,%r10d
  4058f0:	0f 8e 0c 03 00 00    	jle    405c02 <__pformat_xldouble+0x452>
  4058f6:	45 29 ca             	sub    %r9d,%r10d
  4058f9:	41 f7 c0 00 06 00 00 	test   $0x600,%r8d
  405900:	0f 84 2a 03 00 00    	je     405c30 <__pformat_xldouble+0x480>
  405906:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
  40590a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405910:	41 f6 c0 80          	test   $0x80,%r8b
  405914:	0f 85 d6 02 00 00    	jne    405bf0 <__pformat_xldouble+0x440>
  40591a:	41 f7 c0 00 01 00 00 	test   $0x100,%r8d
  405921:	0f 85 e9 02 00 00    	jne    405c10 <__pformat_xldouble+0x460>
  405927:	41 83 e0 40          	and    $0x40,%r8d
  40592b:	0f 85 32 03 00 00    	jne    405c63 <__pformat_xldouble+0x4b3>
  405931:	48 89 da             	mov    %rbx,%rdx
  405934:	b9 30 00 00 00       	mov    $0x30,%ecx
  405939:	e8 62 ec ff ff       	callq  4045a0 <__pformat_putc>
  40593e:	8b 4b 08             	mov    0x8(%rbx),%ecx
  405941:	48 89 da             	mov    %rbx,%rdx
  405944:	83 e1 20             	and    $0x20,%ecx
  405947:	83 c9 58             	or     $0x58,%ecx
  40594a:	e8 51 ec ff ff       	callq  4045a0 <__pformat_putc>
  40594f:	8b 43 0c             	mov    0xc(%rbx),%eax
  405952:	85 c0                	test   %eax,%eax
  405954:	7e 26                	jle    40597c <__pformat_xldouble+0x1cc>
  405956:	f6 43 09 02          	testb  $0x2,0x9(%rbx)
  40595a:	74 20                	je     40597c <__pformat_xldouble+0x1cc>
  40595c:	83 e8 01             	sub    $0x1,%eax
  40595f:	89 43 0c             	mov    %eax,0xc(%rbx)
  405962:	48 89 da             	mov    %rbx,%rdx
  405965:	b9 30 00 00 00       	mov    $0x30,%ecx
  40596a:	e8 31 ec ff ff       	callq  4045a0 <__pformat_putc>
  40596f:	8b 43 0c             	mov    0xc(%rbx),%eax
  405972:	8d 50 ff             	lea    -0x1(%rax),%edx
  405975:	85 c0                	test   %eax,%eax
  405977:	89 53 0c             	mov    %edx,0xc(%rbx)
  40597a:	7f e6                	jg     405962 <__pformat_xldouble+0x1b2>
  40597c:	4c 8d 6c 24 2e       	lea    0x2e(%rsp),%r13
  405981:	48 39 ee             	cmp    %rbp,%rsi
  405984:	77 33                	ja     4059b9 <__pformat_xldouble+0x209>
  405986:	e9 72 01 00 00       	jmpq   405afd <__pformat_xldouble+0x34d>
  40598b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405990:	0f b7 43 20          	movzwl 0x20(%rbx),%eax
  405994:	66 85 c0             	test   %ax,%ax
  405997:	66 89 44 24 2e       	mov    %ax,0x2e(%rsp)
  40599c:	74 12                	je     4059b0 <__pformat_xldouble+0x200>
  40599e:	49 89 d8             	mov    %rbx,%r8
  4059a1:	ba 01 00 00 00       	mov    $0x1,%edx
  4059a6:	4c 89 e9             	mov    %r13,%rcx
  4059a9:	e8 52 ec ff ff       	callq  404600 <__pformat_wputchars>
  4059ae:	66 90                	xchg   %ax,%ax
  4059b0:	48 39 ee             	cmp    %rbp,%rsi
  4059b3:	0f 84 44 01 00 00    	je     405afd <__pformat_xldouble+0x34d>
  4059b9:	48 83 ee 01          	sub    $0x1,%rsi
  4059bd:	0f be 0e             	movsbl (%rsi),%ecx
  4059c0:	83 f9 2e             	cmp    $0x2e,%ecx
  4059c3:	0f 84 07 02 00 00    	je     405bd0 <__pformat_xldouble+0x420>
  4059c9:	83 f9 2c             	cmp    $0x2c,%ecx
  4059cc:	74 c2                	je     405990 <__pformat_xldouble+0x1e0>
  4059ce:	48 89 da             	mov    %rbx,%rdx
  4059d1:	e8 ca eb ff ff       	callq  4045a0 <__pformat_putc>
  4059d6:	eb d8                	jmp    4059b0 <__pformat_xldouble+0x200>
  4059d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4059df:	00 
  4059e0:	44 8b 43 10          	mov    0x10(%rbx),%r8d
  4059e4:	66 81 ef ff 3f       	sub    $0x3fff,%di
  4059e9:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  4059ee:	41 83 f8 0e          	cmp    $0xe,%r8d
  4059f2:	0f 87 78 01 00 00    	ja     405b70 <__pformat_xldouble+0x3c0>
  4059f8:	48 85 c0             	test   %rax,%rax
  4059fb:	78 08                	js     405a05 <__pformat_xldouble+0x255>
  4059fd:	0f 1f 00             	nopl   (%rax)
  405a00:	48 01 c0             	add    %rax,%rax
  405a03:	79 fb                	jns    405a00 <__pformat_xldouble+0x250>
  405a05:	b9 0e 00 00 00       	mov    $0xe,%ecx
  405a0a:	ba 04 00 00 00       	mov    $0x4,%edx
  405a0f:	48 d1 e8             	shr    %rax
  405a12:	44 29 c1             	sub    %r8d,%ecx
  405a15:	c1 e1 02             	shl    $0x2,%ecx
  405a18:	48 d3 e2             	shl    %cl,%rdx
  405a1b:	48 01 d0             	add    %rdx,%rax
  405a1e:	0f 88 fe 01 00 00    	js     405c22 <__pformat_xldouble+0x472>
  405a24:	48 01 c0             	add    %rax,%rax
  405a27:	b9 0f 00 00 00       	mov    $0xf,%ecx
  405a2c:	44 29 c1             	sub    %r8d,%ecx
  405a2f:	c1 e1 02             	shl    $0x2,%ecx
  405a32:	48 d3 e8             	shr    %cl,%rax
  405a35:	44 8b 43 08          	mov    0x8(%rbx),%r8d
  405a39:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
  405a3e:	45 89 c2             	mov    %r8d,%r10d
  405a41:	45 89 c1             	mov    %r8d,%r9d
  405a44:	48 89 ee             	mov    %rbp,%rsi
  405a47:	41 81 e2 00 08 00 00 	and    $0x800,%r10d
  405a4e:	41 83 e1 20          	and    $0x20,%r9d
  405a52:	eb 20                	jmp    405a74 <__pformat_xldouble+0x2c4>
  405a54:	31 d2                	xor    %edx,%edx
  405a56:	48 39 ee             	cmp    %rbp,%rsi
  405a59:	77 07                	ja     405a62 <__pformat_xldouble+0x2b2>
  405a5b:	8b 4b 10             	mov    0x10(%rbx),%ecx
  405a5e:	85 c9                	test   %ecx,%ecx
  405a60:	78 09                	js     405a6b <__pformat_xldouble+0x2bb>
  405a62:	8d 4a 30             	lea    0x30(%rdx),%ecx
  405a65:	88 0e                	mov    %cl,(%rsi)
  405a67:	48 83 c6 01          	add    $0x1,%rsi
  405a6b:	48 85 c0             	test   %rax,%rax
  405a6e:	0f 84 6c 01 00 00    	je     405be0 <__pformat_xldouble+0x430>
  405a74:	89 c1                	mov    %eax,%ecx
  405a76:	83 e1 0f             	and    $0xf,%ecx
  405a79:	89 ca                	mov    %ecx,%edx
  405a7b:	48 39 c2             	cmp    %rax,%rdx
  405a7e:	0f 84 fe 00 00 00    	je     405b82 <__pformat_xldouble+0x3d2>
  405a84:	8b 53 10             	mov    0x10(%rbx),%edx
  405a87:	48 c1 e8 04          	shr    $0x4,%rax
  405a8b:	85 d2                	test   %edx,%edx
  405a8d:	7e 06                	jle    405a95 <__pformat_xldouble+0x2e5>
  405a8f:	83 ea 01             	sub    $0x1,%edx
  405a92:	89 53 10             	mov    %edx,0x10(%rbx)
  405a95:	85 c9                	test   %ecx,%ecx
  405a97:	74 bb                	je     405a54 <__pformat_xldouble+0x2a4>
  405a99:	83 f9 09             	cmp    $0x9,%ecx
  405a9c:	89 ca                	mov    %ecx,%edx
  405a9e:	76 c2                	jbe    405a62 <__pformat_xldouble+0x2b2>
  405aa0:	83 c1 37             	add    $0x37,%ecx
  405aa3:	44 09 c9             	or     %r9d,%ecx
  405aa6:	eb bd                	jmp    405a65 <__pformat_xldouble+0x2b5>
  405aa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405aaf:	00 
  405ab0:	81 4b 08 80 00 00 00 	orl    $0x80,0x8(%rbx)
  405ab7:	66 81 e7 ff 7f       	and    $0x7fff,%di
  405abc:	85 c0                	test   %eax,%eax
  405abe:	0f 84 60 fd ff ff    	je     405824 <__pformat_xldouble+0x74>
  405ac4:	e9 66 fd ff ff       	jmpq   40582f <__pformat_xldouble+0x7f>
  405ac9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405ad0:	48 8d 15 30 59 00 00 	lea    0x5930(%rip),%rdx        # 40b407 <.rdata+0x7>
  405ad7:	49 89 d8             	mov    %rbx,%r8
  405ada:	31 c9                	xor    %ecx,%ecx
  405adc:	e8 4f ed ff ff       	callq  404830 <__pformat_emit_inf_or_nan>
  405ae1:	90                   	nop
  405ae2:	48 83 c4 68          	add    $0x68,%rsp
  405ae6:	5b                   	pop    %rbx
  405ae7:	5e                   	pop    %rsi
  405ae8:	5f                   	pop    %rdi
  405ae9:	5d                   	pop    %rbp
  405aea:	41 5c                	pop    %r12
  405aec:	41 5d                	pop    %r13
  405aee:	c3                   	retq   
  405aef:	90                   	nop
  405af0:	48 89 da             	mov    %rbx,%rdx
  405af3:	b9 30 00 00 00       	mov    $0x30,%ecx
  405af8:	e8 a3 ea ff ff       	callq  4045a0 <__pformat_putc>
  405afd:	8b 43 10             	mov    0x10(%rbx),%eax
  405b00:	8d 50 ff             	lea    -0x1(%rax),%edx
  405b03:	85 c0                	test   %eax,%eax
  405b05:	89 53 10             	mov    %edx,0x10(%rbx)
  405b08:	7f e6                	jg     405af0 <__pformat_xldouble+0x340>
  405b0a:	8b 4b 08             	mov    0x8(%rbx),%ecx
  405b0d:	48 89 da             	mov    %rbx,%rdx
  405b10:	83 e1 20             	and    $0x20,%ecx
  405b13:	83 c9 50             	or     $0x50,%ecx
  405b16:	e8 85 ea ff ff       	callq  4045a0 <__pformat_putc>
  405b1b:	48 0f bf cf          	movswq %di,%rcx
  405b1f:	48 89 da             	mov    %rbx,%rdx
  405b22:	44 01 63 0c          	add    %r12d,0xc(%rbx)
  405b26:	81 4b 08 c0 01 00 00 	orl    $0x1c0,0x8(%rbx)
  405b2d:	e8 0e f3 ff ff       	callq  404e40 <__pformat_int.isra.0>
  405b32:	90                   	nop
  405b33:	48 83 c4 68          	add    $0x68,%rsp
  405b37:	5b                   	pop    %rbx
  405b38:	5e                   	pop    %rsi
  405b39:	5f                   	pop    %rdi
  405b3a:	5d                   	pop    %rbp
  405b3b:	41 5c                	pop    %r12
  405b3d:	41 5d                	pop    %r13
  405b3f:	c3                   	retq   
  405b40:	bf 02 c0 ff ff       	mov    $0xffffc002,%edi
  405b45:	78 13                	js     405b5a <__pformat_xldouble+0x3aa>
  405b47:	ba 01 c0 ff ff       	mov    $0xffffc001,%edx
  405b4c:	0f 1f 40 00          	nopl   0x0(%rax)
  405b50:	89 d7                	mov    %edx,%edi
  405b52:	83 ea 01             	sub    $0x1,%edx
  405b55:	48 01 c0             	add    %rax,%rax
  405b58:	79 f6                	jns    405b50 <__pformat_xldouble+0x3a0>
  405b5a:	44 8b 43 10          	mov    0x10(%rbx),%r8d
  405b5e:	41 83 f8 0e          	cmp    $0xe,%r8d
  405b62:	0f 87 cd fe ff ff    	ja     405a35 <__pformat_xldouble+0x285>
  405b68:	e9 98 fe ff ff       	jmpq   405a05 <__pformat_xldouble+0x255>
  405b6d:	0f 1f 00             	nopl   (%rax)
  405b70:	48 85 c0             	test   %rax,%rax
  405b73:	44 8b 43 08          	mov    0x8(%rbx),%r8d
  405b77:	0f 85 bc fe ff ff    	jne    405a39 <__pformat_xldouble+0x289>
  405b7d:	e9 d4 fc ff ff       	jmpq   405856 <__pformat_xldouble+0xa6>
  405b82:	48 39 ee             	cmp    %rbp,%rsi
  405b85:	77 0e                	ja     405b95 <__pformat_xldouble+0x3e5>
  405b87:	45 85 d2             	test   %r10d,%r10d
  405b8a:	75 09                	jne    405b95 <__pformat_xldouble+0x3e5>
  405b8c:	44 8b 5b 10          	mov    0x10(%rbx),%r11d
  405b90:	45 85 db             	test   %r11d,%r11d
  405b93:	7e 07                	jle    405b9c <__pformat_xldouble+0x3ec>
  405b95:	c6 06 2e             	movb   $0x2e,(%rsi)
  405b98:	48 83 c6 01          	add    $0x1,%rsi
  405b9c:	44 8d 5f ff          	lea    -0x1(%rdi),%r11d
  405ba0:	48 83 f8 01          	cmp    $0x1,%rax
  405ba4:	74 1a                	je     405bc0 <__pformat_xldouble+0x410>
  405ba6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405bad:	00 00 00 
  405bb0:	48 d1 ea             	shr    %rdx
  405bb3:	44 89 df             	mov    %r11d,%edi
  405bb6:	44 8d 5f ff          	lea    -0x1(%rdi),%r11d
  405bba:	48 83 fa 01          	cmp    $0x1,%rdx
  405bbe:	75 f0                	jne    405bb0 <__pformat_xldouble+0x400>
  405bc0:	31 c0                	xor    %eax,%eax
  405bc2:	e9 ce fe ff ff       	jmpq   405a95 <__pformat_xldouble+0x2e5>
  405bc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  405bce:	00 00 
  405bd0:	48 89 d9             	mov    %rbx,%rcx
  405bd3:	e8 f8 ec ff ff       	callq  4048d0 <__pformat_emit_radix_point>
  405bd8:	e9 d3 fd ff ff       	jmpq   4059b0 <__pformat_xldouble+0x200>
  405bdd:	0f 1f 00             	nopl   (%rax)
  405be0:	48 39 ee             	cmp    %rbp,%rsi
  405be3:	0f 85 8d fc ff ff    	jne    405876 <__pformat_xldouble+0xc6>
  405be9:	e9 6d fc ff ff       	jmpq   40585b <__pformat_xldouble+0xab>
  405bee:	66 90                	xchg   %ax,%ax
  405bf0:	48 89 da             	mov    %rbx,%rdx
  405bf3:	b9 2d 00 00 00       	mov    $0x2d,%ecx
  405bf8:	e8 a3 e9 ff ff       	callq  4045a0 <__pformat_putc>
  405bfd:	e9 2f fd ff ff       	jmpq   405931 <__pformat_xldouble+0x181>
  405c02:	c7 43 0c ff ff ff ff 	movl   $0xffffffff,0xc(%rbx)
  405c09:	e9 02 fd ff ff       	jmpq   405910 <__pformat_xldouble+0x160>
  405c0e:	66 90                	xchg   %ax,%ax
  405c10:	48 89 da             	mov    %rbx,%rdx
  405c13:	b9 2b 00 00 00       	mov    $0x2b,%ecx
  405c18:	e8 83 e9 ff ff       	callq  4045a0 <__pformat_putc>
  405c1d:	e9 0f fd ff ff       	jmpq   405931 <__pformat_xldouble+0x181>
  405c22:	83 c7 01             	add    $0x1,%edi
  405c25:	e9 fd fd ff ff       	jmpq   405a27 <__pformat_xldouble+0x277>
  405c2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405c30:	41 83 ea 01          	sub    $0x1,%r10d
  405c34:	44 89 53 0c          	mov    %r10d,0xc(%rbx)
  405c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405c3f:	00 
  405c40:	48 89 da             	mov    %rbx,%rdx
  405c43:	b9 20 00 00 00       	mov    $0x20,%ecx
  405c48:	e8 53 e9 ff ff       	callq  4045a0 <__pformat_putc>
  405c4d:	8b 43 0c             	mov    0xc(%rbx),%eax
  405c50:	8d 50 ff             	lea    -0x1(%rax),%edx
  405c53:	85 c0                	test   %eax,%eax
  405c55:	89 53 0c             	mov    %edx,0xc(%rbx)
  405c58:	7f e6                	jg     405c40 <__pformat_xldouble+0x490>
  405c5a:	44 8b 43 08          	mov    0x8(%rbx),%r8d
  405c5e:	e9 ad fc ff ff       	jmpq   405910 <__pformat_xldouble+0x160>
  405c63:	48 89 da             	mov    %rbx,%rdx
  405c66:	b9 20 00 00 00       	mov    $0x20,%ecx
  405c6b:	e8 30 e9 ff ff       	callq  4045a0 <__pformat_putc>
  405c70:	e9 bc fc ff ff       	jmpq   405931 <__pformat_xldouble+0x181>
  405c75:	41 f7 c0 00 08 00 00 	test   $0x800,%r8d
  405c7c:	48 89 e8             	mov    %rbp,%rax
  405c7f:	0f 84 ea fb ff ff    	je     40586f <__pformat_xldouble+0xbf>
  405c85:	e9 dc fb ff ff       	jmpq   405866 <__pformat_xldouble+0xb6>
  405c8a:	48 8d 15 7a 57 00 00 	lea    0x577a(%rip),%rdx        # 40b40b <.rdata+0xb>
  405c91:	81 e1 00 80 00 00    	and    $0x8000,%ecx
  405c97:	49 89 d8             	mov    %rbx,%r8
  405c9a:	e8 91 eb ff ff       	callq  404830 <__pformat_emit_inf_or_nan>
  405c9f:	e9 3e fe ff ff       	jmpq   405ae2 <__pformat_xldouble+0x332>
  405ca4:	66 90                	xchg   %ax,%ax
  405ca6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405cad:	00 00 00 

0000000000405cb0 <__mingw_pformat>:
  405cb0:	41 57                	push   %r15
  405cb2:	41 56                	push   %r14
  405cb4:	41 55                	push   %r13
  405cb6:	41 54                	push   %r12
  405cb8:	55                   	push   %rbp
  405cb9:	57                   	push   %rdi
  405cba:	56                   	push   %rsi
  405cbb:	53                   	push   %rbx
  405cbc:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  405cc3:	48 8d 2d 56 57 00 00 	lea    0x5756(%rip),%rbp        # 40b420 <.rdata+0x20>
  405cca:	4c 8b bc 24 10 01 00 	mov    0x110(%rsp),%r15
  405cd1:	00 
  405cd2:	41 89 cc             	mov    %ecx,%r12d
  405cd5:	48 89 d7             	mov    %rdx,%rdi
  405cd8:	44 89 c6             	mov    %r8d,%esi
  405cdb:	4c 89 cb             	mov    %r9,%rbx
  405cde:	41 81 e4 00 60 00 00 	and    $0x6000,%r12d
  405ce5:	e8 5e 33 00 00       	callq  409048 <_errno>
  405cea:	31 c9                	xor    %ecx,%ecx
  405cec:	31 d2                	xor    %edx,%edx
  405cee:	8b 00                	mov    (%rax),%eax
  405cf0:	66 89 8c 24 90 00 00 	mov    %cx,0x90(%rsp)
  405cf7:	00 
  405cf8:	0f be 0b             	movsbl (%rbx),%ecx
  405cfb:	48 89 7c 24 70       	mov    %rdi,0x70(%rsp)
  405d00:	44 89 64 24 78       	mov    %r12d,0x78(%rsp)
  405d05:	c7 84 24 84 00 00 00 	movl   $0xfffffffd,0x84(%rsp)
  405d0c:	fd ff ff ff 
  405d10:	89 44 24 38          	mov    %eax,0x38(%rsp)
  405d14:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  405d1b:	48 89 44 24 7c       	mov    %rax,0x7c(%rsp)
  405d20:	66 89 94 24 88 00 00 	mov    %dx,0x88(%rsp)
  405d27:	00 
  405d28:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
  405d2f:	00 00 00 00 
  405d33:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
  405d3a:	00 00 00 00 
  405d3e:	89 b4 24 98 00 00 00 	mov    %esi,0x98(%rsp)
  405d45:	89 84 24 9c 00 00 00 	mov    %eax,0x9c(%rsp)
  405d4c:	48 8d 73 01          	lea    0x1(%rbx),%rsi
  405d50:	85 c9                	test   %ecx,%ecx
  405d52:	74 1e                	je     405d72 <__mingw_pformat+0xc2>
  405d54:	83 f9 25             	cmp    $0x25,%ecx
  405d57:	74 37                	je     405d90 <__mingw_pformat+0xe0>
  405d59:	48 8d 54 24 70       	lea    0x70(%rsp),%rdx
  405d5e:	e8 3d e8 ff ff       	callq  4045a0 <__pformat_putc>
  405d63:	0f be 4b 01          	movsbl 0x1(%rbx),%ecx
  405d67:	48 89 f3             	mov    %rsi,%rbx
  405d6a:	48 8d 73 01          	lea    0x1(%rbx),%rsi
  405d6e:	85 c9                	test   %ecx,%ecx
  405d70:	75 e2                	jne    405d54 <__mingw_pformat+0xa4>
  405d72:	8b 84 24 94 00 00 00 	mov    0x94(%rsp),%eax
  405d79:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  405d80:	5b                   	pop    %rbx
  405d81:	5e                   	pop    %rsi
  405d82:	5f                   	pop    %rdi
  405d83:	5d                   	pop    %rbp
  405d84:	41 5c                	pop    %r12
  405d86:	41 5d                	pop    %r13
  405d88:	41 5e                	pop    %r14
  405d8a:	41 5f                	pop    %r15
  405d8c:	c3                   	retq   
  405d8d:	0f 1f 00             	nopl   (%rax)
  405d90:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  405d94:	4c 8d 6c 24 70       	lea    0x70(%rsp),%r13
  405d99:	48 89 f7             	mov    %rsi,%rdi
  405d9c:	45 31 d2             	xor    %r10d,%r10d
  405d9f:	48 8d 5c 24 60       	lea    0x60(%rsp),%rbx
  405da4:	44 89 64 24 78       	mov    %r12d,0x78(%rsp)
  405da9:	45 31 f6             	xor    %r14d,%r14d
  405dac:	48 c7 44 24 7c ff ff 	movq   $0xffffffffffffffff,0x7c(%rsp)
  405db3:	ff ff 
  405db5:	4d 8d 5d 0c          	lea    0xc(%r13),%r11
  405db9:	48 89 5c 24 28       	mov    %rbx,0x28(%rsp)
  405dbe:	48 8d 5f 01          	lea    0x1(%rdi),%rbx
  405dc2:	0f be c8             	movsbl %al,%ecx
  405dc5:	84 c0                	test   %al,%al
  405dc7:	41 89 c9             	mov    %ecx,%r9d
  405dca:	0f 84 30 06 00 00    	je     406400 <__mingw_pformat+0x750>
  405dd0:	8d 50 e0             	lea    -0x20(%rax),%edx
  405dd3:	80 fa 5a             	cmp    $0x5a,%dl
  405dd6:	0f 87 c4 05 00 00    	ja     4063a0 <__mingw_pformat+0x6f0>
  405ddc:	0f b6 d2             	movzbl %dl,%edx
  405ddf:	48 63 54 95 00       	movslq 0x0(%rbp,%rdx,4),%rdx
  405de4:	48 01 ea             	add    %rbp,%rdx
  405de7:	ff e2                	jmpq   *%rdx
  405de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  405df0:	49 8b 0f             	mov    (%r15),%rcx
  405df3:	49 8d 77 08          	lea    0x8(%r15),%rsi
  405df7:	41 83 ea 02          	sub    $0x2,%r10d
  405dfb:	41 83 fa 01          	cmp    $0x1,%r10d
  405dff:	0f 86 0f 01 00 00    	jbe    405f14 <__mingw_pformat+0x264>
  405e05:	4c 89 ea             	mov    %r13,%rdx
  405e08:	49 89 f7             	mov    %rsi,%r15
  405e0b:	e8 d0 e9 ff ff       	callq  4047e0 <__pformat_puts>
  405e10:	0f be 0b             	movsbl (%rbx),%ecx
  405e13:	e9 34 ff ff ff       	jmpq   405d4c <__mingw_pformat+0x9c>
  405e18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  405e1f:	00 
  405e20:	41 8b 07             	mov    (%r15),%eax
  405e23:	49 8d 77 08          	lea    0x8(%r15),%rsi
  405e27:	41 83 ea 02          	sub    $0x2,%r10d
  405e2b:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
  405e32:	ff ff ff ff 
  405e36:	41 83 fa 01          	cmp    $0x1,%r10d
  405e3a:	0f 86 91 03 00 00    	jbe    4061d1 <__mingw_pformat+0x521>
  405e40:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
  405e45:	4d 89 e8             	mov    %r13,%r8
  405e48:	88 44 24 60          	mov    %al,0x60(%rsp)
  405e4c:	49 89 f7             	mov    %rsi,%r15
  405e4f:	ba 01 00 00 00       	mov    $0x1,%edx
  405e54:	e8 b7 e8 ff ff       	callq  404710 <__pformat_putchars>
  405e59:	eb b5                	jmp    405e10 <__mingw_pformat+0x160>
  405e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  405e60:	45 85 f6             	test   %r14d,%r14d
  405e63:	0f 85 27 05 00 00    	jne    406390 <__mingw_pformat+0x6e0>
  405e69:	83 4c 24 78 40       	orl    $0x40,0x78(%rsp)
  405e6e:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  405e72:	48 89 df             	mov    %rbx,%rdi
  405e75:	e9 44 ff ff ff       	jmpq   405dbe <__mingw_pformat+0x10e>
  405e7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405e80:	8b 44 24 78          	mov    0x78(%rsp),%eax
  405e84:	49 83 c7 08          	add    $0x8,%r15
  405e88:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  405e8c:	83 c8 20             	or     $0x20,%eax
  405e8f:	a8 04                	test   $0x4,%al
  405e91:	89 44 24 78          	mov    %eax,0x78(%rsp)
  405e95:	0f 84 a9 03 00 00    	je     406244 <__mingw_pformat+0x594>
  405e9b:	db 2a                	fldt   (%rdx)
  405e9d:	4c 89 ea             	mov    %r13,%rdx
  405ea0:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  405ea5:	db 7c 24 40          	fstpt  0x40(%rsp)
  405ea9:	e8 c2 ee ff ff       	callq  404d70 <__pformat_float>
  405eae:	e9 5d ff ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  405eb3:	45 85 f6             	test   %r14d,%r14d
  405eb6:	0f 85 d4 04 00 00    	jne    406390 <__mingw_pformat+0x6e0>
  405ebc:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
  405ec3:	00 
  405ec4:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  405ec8:	eb a8                	jmp    405e72 <__mingw_pformat+0x1c2>
  405eca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  405ed0:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  405ed4:	3c 36                	cmp    $0x36,%al
  405ed6:	0f 84 e7 05 00 00    	je     4064c3 <__mingw_pformat+0x813>
  405edc:	3c 33                	cmp    $0x33,%al
  405ede:	0f 84 36 05 00 00    	je     40641a <__mingw_pformat+0x76a>
  405ee4:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  405eea:	41 be 04 00 00 00    	mov    $0x4,%r14d
  405ef0:	eb 80                	jmp    405e72 <__mingw_pformat+0x1c2>
  405ef2:	83 4c 24 78 04       	orl    $0x4,0x78(%rsp)
  405ef7:	41 be 04 00 00 00    	mov    $0x4,%r14d
  405efd:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  405f01:	e9 6c ff ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  405f06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  405f0d:	00 00 00 
  405f10:	49 8d 77 08          	lea    0x8(%r15),%rsi
  405f14:	49 8b 3f             	mov    (%r15),%rdi
  405f17:	48 8d 05 f2 54 00 00 	lea    0x54f2(%rip),%rax        # 40b410 <.rdata+0x10>
  405f1e:	48 85 ff             	test   %rdi,%rdi
  405f21:	48 0f 44 f8          	cmove  %rax,%rdi
  405f25:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  405f2c:	85 c0                	test   %eax,%eax
  405f2e:	0f 88 0e 05 00 00    	js     406442 <__mingw_pformat+0x792>
  405f34:	48 63 d0             	movslq %eax,%rdx
  405f37:	48 89 f9             	mov    %rdi,%rcx
  405f3a:	e8 41 30 00 00       	callq  408f80 <wcsnlen>
  405f3f:	4d 89 e8             	mov    %r13,%r8
  405f42:	89 c2                	mov    %eax,%edx
  405f44:	48 89 f9             	mov    %rdi,%rcx
  405f47:	e8 b4 e6 ff ff       	callq  404600 <__pformat_wputchars>
  405f4c:	49 89 f7             	mov    %rsi,%r15
  405f4f:	e9 bc fe ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  405f54:	49 8d 77 08          	lea    0x8(%r15),%rsi
  405f58:	41 83 fa 03          	cmp    $0x3,%r10d
  405f5c:	0f 84 8d 05 00 00    	je     4064ef <__mingw_pformat+0x83f>
  405f62:	41 83 fa 02          	cmp    $0x2,%r10d
  405f66:	41 8b 0f             	mov    (%r15),%ecx
  405f69:	74 13                	je     405f7e <__mingw_pformat+0x2ce>
  405f6b:	41 83 fa 01          	cmp    $0x1,%r10d
  405f6f:	0f 84 e6 05 00 00    	je     40655b <__mingw_pformat+0x8ab>
  405f75:	41 83 fa 05          	cmp    $0x5,%r10d
  405f79:	75 03                	jne    405f7e <__mingw_pformat+0x2ce>
  405f7b:	0f b6 c9             	movzbl %cl,%ecx
  405f7e:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  405f83:	41 83 f9 75          	cmp    $0x75,%r9d
  405f87:	74 5b                	je     405fe4 <__mingw_pformat+0x334>
  405f89:	48 89 ca             	mov    %rcx,%rdx
  405f8c:	4d 89 e8             	mov    %r13,%r8
  405f8f:	44 89 c9             	mov    %r9d,%ecx
  405f92:	e8 c9 f4 ff ff       	callq  405460 <__pformat_xint.isra.1>
  405f97:	49 89 f7             	mov    %rsi,%r15
  405f9a:	e9 71 fe ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  405f9f:	90                   	nop
  405fa0:	81 4c 24 78 80 00 00 	orl    $0x80,0x78(%rsp)
  405fa7:	00 
  405fa8:	49 8d 77 08          	lea    0x8(%r15),%rsi
  405fac:	41 83 fa 03          	cmp    $0x3,%r10d
  405fb0:	0f 84 2c 05 00 00    	je     4064e2 <__mingw_pformat+0x832>
  405fb6:	41 83 fa 02          	cmp    $0x2,%r10d
  405fba:	49 63 0f             	movslq (%r15),%rcx
  405fbd:	74 14                	je     405fd3 <__mingw_pformat+0x323>
  405fbf:	41 83 fa 01          	cmp    $0x1,%r10d
  405fc3:	0f 84 9f 05 00 00    	je     406568 <__mingw_pformat+0x8b8>
  405fc9:	41 83 fa 05          	cmp    $0x5,%r10d
  405fcd:	75 04                	jne    405fd3 <__mingw_pformat+0x323>
  405fcf:	48 0f be c9          	movsbq %cl,%rcx
  405fd3:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  405fd8:	48 89 c8             	mov    %rcx,%rax
  405fdb:	48 c1 f8 3f          	sar    $0x3f,%rax
  405fdf:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  405fe4:	4c 89 ea             	mov    %r13,%rdx
  405fe7:	49 89 f7             	mov    %rsi,%r15
  405fea:	e8 51 ee ff ff       	callq  404e40 <__pformat_int.isra.0>
  405fef:	e9 1c fe ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  405ff4:	8b 44 24 78          	mov    0x78(%rsp),%eax
  405ff8:	49 83 c7 08          	add    $0x8,%r15
  405ffc:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  406000:	83 c8 20             	or     $0x20,%eax
  406003:	a8 04                	test   $0x4,%al
  406005:	89 44 24 78          	mov    %eax,0x78(%rsp)
  406009:	0f 84 e5 02 00 00    	je     4062f4 <__mingw_pformat+0x644>
  40600f:	db 2a                	fldt   (%rdx)
  406011:	4c 89 ea             	mov    %r13,%rdx
  406014:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  406019:	db 7c 24 40          	fstpt  0x40(%rsp)
  40601d:	e8 8e f7 ff ff       	callq  4057b0 <__pformat_xldouble>
  406022:	e9 e9 fd ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406027:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40602e:	00 00 
  406030:	8b 44 24 78          	mov    0x78(%rsp),%eax
  406034:	49 83 c7 08          	add    $0x8,%r15
  406038:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  40603c:	83 c8 20             	or     $0x20,%eax
  40603f:	a8 04                	test   $0x4,%al
  406041:	89 44 24 78          	mov    %eax,0x78(%rsp)
  406045:	0f 84 bc 01 00 00    	je     406207 <__mingw_pformat+0x557>
  40604b:	db 2a                	fldt   (%rdx)
  40604d:	4c 89 ea             	mov    %r13,%rdx
  406050:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  406055:	db 7c 24 40          	fstpt  0x40(%rsp)
  406059:	e8 a2 f1 ff ff       	callq  405200 <__pformat_efloat>
  40605e:	e9 ad fd ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406063:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406067:	41 ba 02 00 00 00    	mov    $0x2,%r10d
  40606d:	41 be 04 00 00 00    	mov    $0x4,%r14d
  406073:	3c 6c                	cmp    $0x6c,%al
  406075:	0f 85 f7 fd ff ff    	jne    405e72 <__mingw_pformat+0x1c2>
  40607b:	48 8d 5f 02          	lea    0x2(%rdi),%rbx
  40607f:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  406083:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  406089:	e9 e4 fd ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  40608e:	66 90                	xchg   %ax,%ax
  406090:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406094:	41 ba 01 00 00 00    	mov    $0x1,%r10d
  40609a:	41 be 04 00 00 00    	mov    $0x4,%r14d
  4060a0:	3c 68                	cmp    $0x68,%al
  4060a2:	0f 85 ca fd ff ff    	jne    405e72 <__mingw_pformat+0x1c2>
  4060a8:	48 8d 5f 02          	lea    0x2(%rdi),%rbx
  4060ac:	0f b6 47 02          	movzbl 0x2(%rdi),%eax
  4060b0:	41 ba 05 00 00 00    	mov    $0x5,%r10d
  4060b6:	e9 b7 fd ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4060bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4060c0:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  4060c4:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  4060ca:	41 be 04 00 00 00    	mov    $0x4,%r14d
  4060d0:	e9 9d fd ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4060d5:	8b 44 24 78          	mov    0x78(%rsp),%eax
  4060d9:	49 83 c7 08          	add    $0x8,%r15
  4060dd:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  4060e1:	83 c8 20             	or     $0x20,%eax
  4060e4:	a8 04                	test   $0x4,%al
  4060e6:	89 44 24 78          	mov    %eax,0x78(%rsp)
  4060ea:	0f 84 87 01 00 00    	je     406277 <__mingw_pformat+0x5c7>
  4060f0:	db 2a                	fldt   (%rdx)
  4060f2:	4c 89 ea             	mov    %r13,%rdx
  4060f5:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  4060fa:	db 7c 24 40          	fstpt  0x40(%rsp)
  4060fe:	e8 ad f1 ff ff       	callq  4052b0 <__pformat_gfloat>
  406103:	e9 08 fd ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40610f:	00 
  406110:	49 8b 17             	mov    (%r15),%rdx
  406113:	49 83 c7 08          	add    $0x8,%r15
  406117:	41 83 fa 05          	cmp    $0x5,%r10d
  40611b:	48 63 84 24 94 00 00 	movslq 0x94(%rsp),%rax
  406122:	00 
  406123:	0f 84 93 03 00 00    	je     4064bc <__mingw_pformat+0x80c>
  406129:	41 83 fa 01          	cmp    $0x1,%r10d
  40612d:	0f 84 1c 03 00 00    	je     40644f <__mingw_pformat+0x79f>
  406133:	41 83 fa 02          	cmp    $0x2,%r10d
  406137:	74 0a                	je     406143 <__mingw_pformat+0x493>
  406139:	41 83 fa 03          	cmp    $0x3,%r10d
  40613d:	0f 84 2e 03 00 00    	je     406471 <__mingw_pformat+0x7c1>
  406143:	89 02                	mov    %eax,(%rdx)
  406145:	e9 c6 fc ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  40614a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406150:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
  406154:	e8 7f 2e 00 00       	callq  408fd8 <strerror>
  406159:	4c 89 ea             	mov    %r13,%rdx
  40615c:	48 89 c1             	mov    %rax,%rcx
  40615f:	e8 7c e6 ff ff       	callq  4047e0 <__pformat_puts>
  406164:	e9 a7 fc ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406170:	45 85 f6             	test   %r14d,%r14d
  406173:	75 0b                	jne    406180 <__mingw_pformat+0x4d0>
  406175:	44 39 64 24 78       	cmp    %r12d,0x78(%rsp)
  40617a:	0f 84 d7 02 00 00    	je     406457 <__mingw_pformat+0x7a7>
  406180:	49 8b 17             	mov    (%r15),%rdx
  406183:	49 8d 77 08          	lea    0x8(%r15),%rsi
  406187:	4d 89 e8             	mov    %r13,%r8
  40618a:	b9 78 00 00 00       	mov    $0x78,%ecx
  40618f:	48 c7 44 24 68 00 00 	movq   $0x0,0x68(%rsp)
  406196:	00 00 
  406198:	49 89 f7             	mov    %rsi,%r15
  40619b:	48 89 54 24 60       	mov    %rdx,0x60(%rsp)
  4061a0:	e8 bb f2 ff ff       	callq  405460 <__pformat_xint.isra.1>
  4061a5:	e9 66 fc ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  4061aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4061b0:	4c 89 ea             	mov    %r13,%rdx
  4061b3:	b9 25 00 00 00       	mov    $0x25,%ecx
  4061b8:	e8 e3 e3 ff ff       	callq  4045a0 <__pformat_putc>
  4061bd:	e9 4e fc ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  4061c2:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
  4061c9:	ff ff ff ff 
  4061cd:	49 8d 77 08          	lea    0x8(%r15),%rsi
  4061d1:	41 8b 07             	mov    (%r15),%eax
  4061d4:	48 8d 4c 24 60       	lea    0x60(%rsp),%rcx
  4061d9:	4d 89 e8             	mov    %r13,%r8
  4061dc:	ba 01 00 00 00       	mov    $0x1,%edx
  4061e1:	49 89 f7             	mov    %rsi,%r15
  4061e4:	66 89 44 24 60       	mov    %ax,0x60(%rsp)
  4061e9:	e8 12 e4 ff ff       	callq  404600 <__pformat_wputchars>
  4061ee:	e9 1d fc ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  4061f3:	8b 44 24 78          	mov    0x78(%rsp),%eax
  4061f7:	49 83 c7 08          	add    $0x8,%r15
  4061fb:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  4061ff:	a8 04                	test   $0x4,%al
  406201:	0f 85 44 fe ff ff    	jne    40604b <__mingw_pformat+0x39b>
  406207:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  40620c:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  406211:	dd 44 24 28          	fldl   0x28(%rsp)
  406215:	4c 89 ea             	mov    %r13,%rdx
  406218:	db 7c 24 40          	fstpt  0x40(%rsp)
  40621c:	e8 df ef ff ff       	callq  405200 <__pformat_efloat>
  406221:	e9 ea fb ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406226:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40622d:	00 00 00 
  406230:	8b 44 24 78          	mov    0x78(%rsp),%eax
  406234:	49 83 c7 08          	add    $0x8,%r15
  406238:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  40623c:	a8 04                	test   $0x4,%al
  40623e:	0f 85 57 fc ff ff    	jne    405e9b <__mingw_pformat+0x1eb>
  406244:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  406249:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  40624e:	dd 44 24 28          	fldl   0x28(%rsp)
  406252:	4c 89 ea             	mov    %r13,%rdx
  406255:	db 7c 24 40          	fstpt  0x40(%rsp)
  406259:	e8 12 eb ff ff       	callq  404d70 <__pformat_float>
  40625e:	e9 ad fb ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406263:	8b 44 24 78          	mov    0x78(%rsp),%eax
  406267:	49 83 c7 08          	add    $0x8,%r15
  40626b:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  40626f:	a8 04                	test   $0x4,%al
  406271:	0f 85 79 fe ff ff    	jne    4060f0 <__mingw_pformat+0x440>
  406277:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  40627c:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  406281:	dd 44 24 28          	fldl   0x28(%rsp)
  406285:	4c 89 ea             	mov    %r13,%rdx
  406288:	db 7c 24 40          	fstpt  0x40(%rsp)
  40628c:	e8 1f f0 ff ff       	callq  4052b0 <__pformat_gfloat>
  406291:	e9 7a fb ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406296:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40629d:	00 00 00 
  4062a0:	45 85 f6             	test   %r14d,%r14d
  4062a3:	0f 85 e7 00 00 00    	jne    406390 <__mingw_pformat+0x6e0>
  4062a9:	81 4c 24 78 00 08 00 	orl    $0x800,0x78(%rsp)
  4062b0:	00 
  4062b1:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  4062b5:	e9 b8 fb ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4062ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4062c0:	45 85 f6             	test   %r14d,%r14d
  4062c3:	0f 85 14 01 00 00    	jne    4063dd <__mingw_pformat+0x72d>
  4062c9:	81 4c 24 78 00 02 00 	orl    $0x200,0x78(%rsp)
  4062d0:	00 
  4062d1:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  4062d5:	e9 98 fb ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4062da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4062e0:	8b 44 24 78          	mov    0x78(%rsp),%eax
  4062e4:	49 83 c7 08          	add    $0x8,%r15
  4062e8:	49 8b 57 f8          	mov    -0x8(%r15),%rdx
  4062ec:	a8 04                	test   $0x4,%al
  4062ee:	0f 85 1b fd ff ff    	jne    40600f <__mingw_pformat+0x35f>
  4062f4:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
  4062f9:	48 8d 4c 24 40       	lea    0x40(%rsp),%rcx
  4062fe:	dd 44 24 28          	fldl   0x28(%rsp)
  406302:	4c 89 ea             	mov    %r13,%rdx
  406305:	db 7c 24 40          	fstpt  0x40(%rsp)
  406309:	e8 a2 f4 ff ff       	callq  4057b0 <__pformat_xldouble>
  40630e:	e9 fd fa ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406313:	41 83 fe 01          	cmp    $0x1,%r14d
  406317:	0f 86 81 01 00 00    	jbe    40649e <__mingw_pformat+0x7ee>
  40631d:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406321:	41 be 04 00 00 00    	mov    $0x4,%r14d
  406327:	e9 46 fb ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  40632c:	0f 1f 40 00          	nopl   0x0(%rax)
  406330:	4d 85 db             	test   %r11,%r11
  406333:	74 e8                	je     40631d <__mingw_pformat+0x66d>
  406335:	41 f7 c6 fd ff ff ff 	test   $0xfffffffd,%r14d
  40633c:	0f 85 c6 00 00 00    	jne    406408 <__mingw_pformat+0x758>
  406342:	41 8b 07             	mov    (%r15),%eax
  406345:	49 8d 57 08          	lea    0x8(%r15),%rdx
  406349:	85 c0                	test   %eax,%eax
  40634b:	41 89 03             	mov    %eax,(%r11)
  40634e:	0f 88 22 02 00 00    	js     406576 <__mingw_pformat+0x8c6>
  406354:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406358:	49 89 d7             	mov    %rdx,%r15
  40635b:	45 31 db             	xor    %r11d,%r11d
  40635e:	e9 0f fb ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  406363:	45 85 f6             	test   %r14d,%r14d
  406366:	75 28                	jne    406390 <__mingw_pformat+0x6e0>
  406368:	81 4c 24 78 00 01 00 	orl    $0x100,0x78(%rsp)
  40636f:	00 
  406370:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406374:	e9 f9 fa ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  406379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406380:	45 85 f6             	test   %r14d,%r14d
  406383:	0f 84 73 01 00 00    	je     4064fc <__mingw_pformat+0x84c>
  406389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  406390:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406394:	e9 d9 fa ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  406399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4063a0:	83 e8 30             	sub    $0x30,%eax
  4063a3:	3c 09                	cmp    $0x9,%al
  4063a5:	0f 87 ce 00 00 00    	ja     406479 <__mingw_pformat+0x7c9>
  4063ab:	41 83 fe 03          	cmp    $0x3,%r14d
  4063af:	0f 87 c4 00 00 00    	ja     406479 <__mingw_pformat+0x7c9>
  4063b5:	45 85 f6             	test   %r14d,%r14d
  4063b8:	75 2d                	jne    4063e7 <__mingw_pformat+0x737>
  4063ba:	41 be 01 00 00 00    	mov    $0x1,%r14d
  4063c0:	4d 85 db             	test   %r11,%r11
  4063c3:	74 cb                	je     406390 <__mingw_pformat+0x6e0>
  4063c5:	41 8b 03             	mov    (%r11),%eax
  4063c8:	85 c0                	test   %eax,%eax
  4063ca:	0f 88 be 00 00 00    	js     40648e <__mingw_pformat+0x7de>
  4063d0:	8d 04 80             	lea    (%rax,%rax,4),%eax
  4063d3:	41 8d 44 41 d0       	lea    -0x30(%r9,%rax,2),%eax
  4063d8:	41 89 03             	mov    %eax,(%r11)
  4063db:	eb b3                	jmp    406390 <__mingw_pformat+0x6e0>
  4063dd:	41 83 fe 03          	cmp    $0x3,%r14d
  4063e1:	0f 87 92 00 00 00    	ja     406479 <__mingw_pformat+0x7c9>
  4063e7:	41 83 fe 02          	cmp    $0x2,%r14d
  4063eb:	b8 03 00 00 00       	mov    $0x3,%eax
  4063f0:	44 0f 44 f0          	cmove  %eax,%r14d
  4063f4:	eb ca                	jmp    4063c0 <__mingw_pformat+0x710>
  4063f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4063fd:	00 00 00 
  406400:	48 89 fb             	mov    %rdi,%rbx
  406403:	e9 44 f9 ff ff       	jmpq   405d4c <__mingw_pformat+0x9c>
  406408:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  40640c:	45 31 db             	xor    %r11d,%r11d
  40640f:	41 be 04 00 00 00    	mov    $0x4,%r14d
  406415:	e9 58 fa ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  40641a:	80 7f 02 32          	cmpb   $0x32,0x2(%rdi)
  40641e:	0f 84 72 01 00 00    	je     406596 <__mingw_pformat+0x8e6>
  406424:	48 89 df             	mov    %rbx,%rdi
  406427:	41 be 04 00 00 00    	mov    $0x4,%r14d
  40642d:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  406433:	41 b9 33 00 00 00    	mov    $0x33,%r9d
  406439:	48 83 c3 01          	add    $0x1,%rbx
  40643d:	e9 8e f9 ff ff       	jmpq   405dd0 <__mingw_pformat+0x120>
  406442:	48 89 f9             	mov    %rdi,%rcx
  406445:	e8 66 2b 00 00       	callq  408fb0 <wcslen>
  40644a:	e9 f0 fa ff ff       	jmpq   405f3f <__mingw_pformat+0x28f>
  40644f:	66 89 02             	mov    %ax,(%rdx)
  406452:	e9 b9 f9 ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406457:	c7 84 24 80 00 00 00 	movl   $0x10,0x80(%rsp)
  40645e:	10 00 00 00 
  406462:	44 89 e0             	mov    %r12d,%eax
  406465:	80 cc 02             	or     $0x2,%ah
  406468:	89 44 24 78          	mov    %eax,0x78(%rsp)
  40646c:	e9 0f fd ff ff       	jmpq   406180 <__mingw_pformat+0x4d0>
  406471:	48 89 02             	mov    %rax,(%rdx)
  406474:	e9 97 f9 ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  406479:	4c 89 ea             	mov    %r13,%rdx
  40647c:	b9 25 00 00 00       	mov    $0x25,%ecx
  406481:	48 89 f3             	mov    %rsi,%rbx
  406484:	e8 17 e1 ff ff       	callq  4045a0 <__pformat_putc>
  406489:	e9 82 f9 ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  40648e:	41 83 e9 30          	sub    $0x30,%r9d
  406492:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406496:	45 89 0b             	mov    %r9d,(%r11)
  406499:	e9 d4 f9 ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  40649e:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  4064a2:	4d 8d 5d 10          	lea    0x10(%r13),%r11
  4064a6:	41 be 02 00 00 00    	mov    $0x2,%r14d
  4064ac:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%rsp)
  4064b3:	00 00 00 00 
  4064b7:	e9 b6 f9 ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4064bc:	88 02                	mov    %al,(%rdx)
  4064be:	e9 4d f9 ff ff       	jmpq   405e10 <__mingw_pformat+0x160>
  4064c3:	80 7f 02 34          	cmpb   $0x34,0x2(%rdi)
  4064c7:	75 b0                	jne    406479 <__mingw_pformat+0x7c9>
  4064c9:	48 8d 5f 03          	lea    0x3(%rdi),%rbx
  4064cd:	0f b6 47 03          	movzbl 0x3(%rdi),%eax
  4064d1:	41 ba 03 00 00 00    	mov    $0x3,%r10d
  4064d7:	41 be 04 00 00 00    	mov    $0x4,%r14d
  4064dd:	e9 90 f9 ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4064e2:	49 8b 0f             	mov    (%r15),%rcx
  4064e5:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  4064ea:	e9 e9 fa ff ff       	jmpq   405fd8 <__mingw_pformat+0x328>
  4064ef:	49 8b 0f             	mov    (%r15),%rcx
  4064f2:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  4064f7:	e9 87 fa ff ff       	jmpq   405f83 <__mingw_pformat+0x2d3>
  4064fc:	81 4c 24 78 00 10 00 	orl    $0x1000,0x78(%rsp)
  406503:	00 
  406504:	44 89 54 24 3c       	mov    %r10d,0x3c(%rsp)
  406509:	4c 89 5c 24 30       	mov    %r11,0x30(%rsp)
  40650e:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
  406515:	00 
  406516:	e8 dd 2a 00 00       	callq  408ff8 <localeconv>
  40651b:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
  406520:	48 8d 4c 24 5e       	lea    0x5e(%rsp),%rcx
  406525:	41 b8 10 00 00 00    	mov    $0x10,%r8d
  40652b:	48 8b 50 08          	mov    0x8(%rax),%rdx
  40652f:	e8 9c 26 00 00       	callq  408bd0 <mbrtowc>
  406534:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
  406539:	85 c0                	test   %eax,%eax
  40653b:	44 8b 54 24 3c       	mov    0x3c(%rsp),%r10d
  406540:	7e 0d                	jle    40654f <__mingw_pformat+0x89f>
  406542:	0f b7 54 24 5e       	movzwl 0x5e(%rsp),%edx
  406547:	66 89 94 24 90 00 00 	mov    %dx,0x90(%rsp)
  40654e:	00 
  40654f:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  406556:	e9 35 fe ff ff       	jmpq   406390 <__mingw_pformat+0x6e0>
  40655b:	0f b7 c9             	movzwl %cx,%ecx
  40655e:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  406563:	e9 1b fa ff ff       	jmpq   405f83 <__mingw_pformat+0x2d3>
  406568:	48 0f bf c9          	movswq %cx,%rcx
  40656c:	48 89 4c 24 60       	mov    %rcx,0x60(%rsp)
  406571:	e9 62 fa ff ff       	jmpq   405fd8 <__mingw_pformat+0x328>
  406576:	45 85 f6             	test   %r14d,%r14d
  406579:	75 34                	jne    4065af <__mingw_pformat+0x8ff>
  40657b:	81 4c 24 78 00 04 00 	orl    $0x400,0x78(%rsp)
  406582:	00 
  406583:	49 89 d7             	mov    %rdx,%r15
  406586:	45 31 db             	xor    %r11d,%r11d
  406589:	f7 5c 24 7c          	negl   0x7c(%rsp)
  40658d:	0f b6 47 01          	movzbl 0x1(%rdi),%eax
  406591:	e9 dc f8 ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  406596:	48 8d 5f 03          	lea    0x3(%rdi),%rbx
  40659a:	0f b6 47 03          	movzbl 0x3(%rdi),%eax
  40659e:	41 ba 02 00 00 00    	mov    $0x2,%r10d
  4065a4:	41 be 04 00 00 00    	mov    $0x4,%r14d
  4065aa:	e9 c3 f8 ff ff       	jmpq   405e72 <__mingw_pformat+0x1c2>
  4065af:	c7 84 24 80 00 00 00 	movl   $0xffffffff,0x80(%rsp)
  4065b6:	ff ff ff ff 
  4065ba:	e9 95 fd ff ff       	jmpq   406354 <__mingw_pformat+0x6a4>
  4065bf:	90                   	nop

00000000004065c0 <__rv_alloc_D2A>:
  4065c0:	53                   	push   %rbx
  4065c1:	48 83 ec 20          	sub    $0x20,%rsp
  4065c5:	31 db                	xor    %ebx,%ebx
  4065c7:	83 f9 1b             	cmp    $0x1b,%ecx
  4065ca:	7e 11                	jle    4065dd <__rv_alloc_D2A+0x1d>
  4065cc:	b8 04 00 00 00       	mov    $0x4,%eax
  4065d1:	01 c0                	add    %eax,%eax
  4065d3:	83 c3 01             	add    $0x1,%ebx
  4065d6:	8d 50 17             	lea    0x17(%rax),%edx
  4065d9:	39 ca                	cmp    %ecx,%edx
  4065db:	7c f4                	jl     4065d1 <__rv_alloc_D2A+0x11>
  4065dd:	89 d9                	mov    %ebx,%ecx
  4065df:	e8 5c 1a 00 00       	callq  408040 <__Balloc_D2A>
  4065e4:	89 18                	mov    %ebx,(%rax)
  4065e6:	48 83 c0 04          	add    $0x4,%rax
  4065ea:	48 83 c4 20          	add    $0x20,%rsp
  4065ee:	5b                   	pop    %rbx
  4065ef:	c3                   	retq   

00000000004065f0 <__nrv_alloc_D2A>:
  4065f0:	57                   	push   %rdi
  4065f1:	56                   	push   %rsi
  4065f2:	53                   	push   %rbx
  4065f3:	48 83 ec 20          	sub    $0x20,%rsp
  4065f7:	41 83 f8 1b          	cmp    $0x1b,%r8d
  4065fb:	48 89 ce             	mov    %rcx,%rsi
  4065fe:	48 89 d7             	mov    %rdx,%rdi
  406601:	7e 6d                	jle    406670 <__nrv_alloc_D2A+0x80>
  406603:	b8 04 00 00 00       	mov    $0x4,%eax
  406608:	31 db                	xor    %ebx,%ebx
  40660a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406610:	01 c0                	add    %eax,%eax
  406612:	83 c3 01             	add    $0x1,%ebx
  406615:	8d 48 17             	lea    0x17(%rax),%ecx
  406618:	41 39 c8             	cmp    %ecx,%r8d
  40661b:	7f f3                	jg     406610 <__nrv_alloc_D2A+0x20>
  40661d:	89 d9                	mov    %ebx,%ecx
  40661f:	e8 1c 1a 00 00       	callq  408040 <__Balloc_D2A>
  406624:	4c 8d 46 01          	lea    0x1(%rsi),%r8
  406628:	89 18                	mov    %ebx,(%rax)
  40662a:	44 0f b6 0e          	movzbl (%rsi),%r9d
  40662e:	48 89 c1             	mov    %rax,%rcx
  406631:	48 8d 40 04          	lea    0x4(%rax),%rax
  406635:	45 84 c9             	test   %r9b,%r9b
  406638:	44 88 49 04          	mov    %r9b,0x4(%rcx)
  40663c:	48 89 c1             	mov    %rax,%rcx
  40663f:	74 15                	je     406656 <__nrv_alloc_D2A+0x66>
  406641:	49 83 c0 01          	add    $0x1,%r8
  406645:	45 0f b6 48 ff       	movzbl -0x1(%r8),%r9d
  40664a:	48 83 c1 01          	add    $0x1,%rcx
  40664e:	45 84 c9             	test   %r9b,%r9b
  406651:	44 88 09             	mov    %r9b,(%rcx)
  406654:	75 eb                	jne    406641 <__nrv_alloc_D2A+0x51>
  406656:	48 85 ff             	test   %rdi,%rdi
  406659:	74 03                	je     40665e <__nrv_alloc_D2A+0x6e>
  40665b:	48 89 0f             	mov    %rcx,(%rdi)
  40665e:	48 83 c4 20          	add    $0x20,%rsp
  406662:	5b                   	pop    %rbx
  406663:	5e                   	pop    %rsi
  406664:	5f                   	pop    %rdi
  406665:	c3                   	retq   
  406666:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40666d:	00 00 00 
  406670:	31 db                	xor    %ebx,%ebx
  406672:	eb a9                	jmp    40661d <__nrv_alloc_D2A+0x2d>
  406674:	66 90                	xchg   %ax,%ax
  406676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40667d:	00 00 00 

0000000000406680 <__freedtoa>:
  406680:	ba 01 00 00 00       	mov    $0x1,%edx
  406685:	48 89 c8             	mov    %rcx,%rax
  406688:	8b 49 fc             	mov    -0x4(%rcx),%ecx
  40668b:	d3 e2                	shl    %cl,%edx
  40668d:	89 48 04             	mov    %ecx,0x4(%rax)
  406690:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
  406694:	89 50 08             	mov    %edx,0x8(%rax)
  406697:	e9 a4 1a 00 00       	jmpq   408140 <__Bfree_D2A>
  40669c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004066a0 <__quorem_D2A>:
  4066a0:	41 57                	push   %r15
  4066a2:	41 56                	push   %r14
  4066a4:	41 55                	push   %r13
  4066a6:	41 54                	push   %r12
  4066a8:	55                   	push   %rbp
  4066a9:	57                   	push   %rdi
  4066aa:	56                   	push   %rsi
  4066ab:	53                   	push   %rbx
  4066ac:	48 83 ec 38          	sub    $0x38,%rsp
  4066b0:	31 c0                	xor    %eax,%eax
  4066b2:	8b 72 14             	mov    0x14(%rdx),%esi
  4066b5:	39 71 14             	cmp    %esi,0x14(%rcx)
  4066b8:	49 89 cc             	mov    %rcx,%r12
  4066bb:	49 89 d7             	mov    %rdx,%r15
  4066be:	0f 8c 67 01 00 00    	jl     40682b <__quorem_D2A+0x18b>
  4066c4:	48 8d 5a 18          	lea    0x18(%rdx),%rbx
  4066c8:	83 ee 01             	sub    $0x1,%esi
  4066cb:	31 d2                	xor    %edx,%edx
  4066cd:	4c 8d 69 18          	lea    0x18(%rcx),%r13
  4066d1:	48 63 ee             	movslq %esi,%rbp
  4066d4:	48 c1 e5 02          	shl    $0x2,%rbp
  4066d8:	48 8d 3c 2b          	lea    (%rbx,%rbp,1),%rdi
  4066dc:	4c 01 ed             	add    %r13,%rbp
  4066df:	8b 07                	mov    (%rdi),%eax
  4066e1:	8d 48 01             	lea    0x1(%rax),%ecx
  4066e4:	8b 45 00             	mov    0x0(%rbp),%eax
  4066e7:	f7 f1                	div    %ecx
  4066e9:	85 c0                	test   %eax,%eax
  4066eb:	41 89 c6             	mov    %eax,%r14d
  4066ee:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  4066f2:	0f 84 91 00 00 00    	je     406789 <__quorem_D2A+0xe9>
  4066f8:	89 c2                	mov    %eax,%edx
  4066fa:	49 89 db             	mov    %rbx,%r11
  4066fd:	4d 89 ea             	mov    %r13,%r10
  406700:	31 c0                	xor    %eax,%eax
  406702:	45 31 c9             	xor    %r9d,%r9d
  406705:	49 83 c3 04          	add    $0x4,%r11
  406709:	41 8b 4b fc          	mov    -0x4(%r11),%ecx
  40670d:	49 83 c2 04          	add    $0x4,%r10
  406711:	45 8b 42 fc          	mov    -0x4(%r10),%r8d
  406715:	48 0f af ca          	imul   %rdx,%rcx
  406719:	48 01 c1             	add    %rax,%rcx
  40671c:	48 89 c8             	mov    %rcx,%rax
  40671f:	89 c9                	mov    %ecx,%ecx
  406721:	49 29 c8             	sub    %rcx,%r8
  406724:	48 c1 e8 20          	shr    $0x20,%rax
  406728:	4d 29 c8             	sub    %r9,%r8
  40672b:	4d 89 c1             	mov    %r8,%r9
  40672e:	45 89 42 fc          	mov    %r8d,-0x4(%r10)
  406732:	49 c1 e9 20          	shr    $0x20,%r9
  406736:	41 83 e1 01          	and    $0x1,%r9d
  40673a:	4c 39 df             	cmp    %r11,%rdi
  40673d:	73 c6                	jae    406705 <__quorem_D2A+0x65>
  40673f:	8b 45 00             	mov    0x0(%rbp),%eax
  406742:	85 c0                	test   %eax,%eax
  406744:	75 43                	jne    406789 <__quorem_D2A+0xe9>
  406746:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
  40674a:	49 39 c5             	cmp    %rax,%r13
  40674d:	73 35                	jae    406784 <__quorem_D2A+0xe4>
  40674f:	44 8b 5d fc          	mov    -0x4(%rbp),%r11d
  406753:	45 85 db             	test   %r11d,%r11d
  406756:	75 2c                	jne    406784 <__quorem_D2A+0xe4>
  406758:	48 89 ea             	mov    %rbp,%rdx
  40675b:	4c 29 ea             	sub    %r13,%rdx
  40675e:	48 83 ea 05          	sub    $0x5,%rdx
  406762:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
  406766:	48 f7 da             	neg    %rdx
  406769:	48 8d 54 15 f8       	lea    -0x8(%rbp,%rdx,1),%rdx
  40676e:	eb 08                	jmp    406778 <__quorem_D2A+0xd8>
  406770:	44 8b 10             	mov    (%rax),%r10d
  406773:	45 85 d2             	test   %r10d,%r10d
  406776:	75 0c                	jne    406784 <__quorem_D2A+0xe4>
  406778:	48 83 e8 04          	sub    $0x4,%rax
  40677c:	83 ee 01             	sub    $0x1,%esi
  40677f:	48 39 d0             	cmp    %rdx,%rax
  406782:	75 ec                	jne    406770 <__quorem_D2A+0xd0>
  406784:	41 89 74 24 14       	mov    %esi,0x14(%r12)
  406789:	4c 89 fa             	mov    %r15,%rdx
  40678c:	4c 89 e1             	mov    %r12,%rcx
  40678f:	e8 ac 1e 00 00       	callq  408640 <__cmp_D2A>
  406794:	85 c0                	test   %eax,%eax
  406796:	0f 88 8b 00 00 00    	js     406827 <__quorem_D2A+0x187>
  40679c:	41 8d 46 01          	lea    0x1(%r14),%eax
  4067a0:	4c 89 e9             	mov    %r13,%rcx
  4067a3:	31 d2                	xor    %edx,%edx
  4067a5:	89 44 24 2c          	mov    %eax,0x2c(%rsp)
  4067a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4067b0:	48 83 c3 04          	add    $0x4,%rbx
  4067b4:	8b 01                	mov    (%rcx),%eax
  4067b6:	48 83 c1 04          	add    $0x4,%rcx
  4067ba:	44 8b 43 fc          	mov    -0x4(%rbx),%r8d
  4067be:	4c 29 c0             	sub    %r8,%rax
  4067c1:	48 29 d0             	sub    %rdx,%rax
  4067c4:	48 89 c2             	mov    %rax,%rdx
  4067c7:	89 41 fc             	mov    %eax,-0x4(%rcx)
  4067ca:	48 c1 ea 20          	shr    $0x20,%rdx
  4067ce:	83 e2 01             	and    $0x1,%edx
  4067d1:	48 39 df             	cmp    %rbx,%rdi
  4067d4:	73 da                	jae    4067b0 <__quorem_D2A+0x110>
  4067d6:	48 63 c6             	movslq %esi,%rax
  4067d9:	49 8d 54 85 00       	lea    0x0(%r13,%rax,4),%rdx
  4067de:	44 8b 0a             	mov    (%rdx),%r9d
  4067e1:	45 85 c9             	test   %r9d,%r9d
  4067e4:	75 41                	jne    406827 <__quorem_D2A+0x187>
  4067e6:	48 8d 42 fc          	lea    -0x4(%rdx),%rax
  4067ea:	49 39 c5             	cmp    %rax,%r13
  4067ed:	73 33                	jae    406822 <__quorem_D2A+0x182>
  4067ef:	44 8b 42 fc          	mov    -0x4(%rdx),%r8d
  4067f3:	45 85 c0             	test   %r8d,%r8d
  4067f6:	75 2a                	jne    406822 <__quorem_D2A+0x182>
  4067f8:	48 89 d1             	mov    %rdx,%rcx
  4067fb:	4c 29 e9             	sub    %r13,%rcx
  4067fe:	48 83 e9 05          	sub    $0x5,%rcx
  406802:	48 83 e1 fc          	and    $0xfffffffffffffffc,%rcx
  406806:	48 f7 d9             	neg    %rcx
  406809:	48 8d 54 0a f8       	lea    -0x8(%rdx,%rcx,1),%rdx
  40680e:	eb 06                	jmp    406816 <__quorem_D2A+0x176>
  406810:	8b 08                	mov    (%rax),%ecx
  406812:	85 c9                	test   %ecx,%ecx
  406814:	75 0c                	jne    406822 <__quorem_D2A+0x182>
  406816:	48 83 e8 04          	sub    $0x4,%rax
  40681a:	83 ee 01             	sub    $0x1,%esi
  40681d:	48 39 d0             	cmp    %rdx,%rax
  406820:	75 ee                	jne    406810 <__quorem_D2A+0x170>
  406822:	41 89 74 24 14       	mov    %esi,0x14(%r12)
  406827:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  40682b:	48 83 c4 38          	add    $0x38,%rsp
  40682f:	5b                   	pop    %rbx
  406830:	5e                   	pop    %rsi
  406831:	5f                   	pop    %rdi
  406832:	5d                   	pop    %rbp
  406833:	41 5c                	pop    %r12
  406835:	41 5d                	pop    %r13
  406837:	41 5e                	pop    %r14
  406839:	41 5f                	pop    %r15
  40683b:	c3                   	retq   
  40683c:	90                   	nop
  40683d:	90                   	nop
  40683e:	90                   	nop
  40683f:	90                   	nop

0000000000406840 <__gdtoa>:
  406840:	41 57                	push   %r15
  406842:	41 56                	push   %r14
  406844:	41 55                	push   %r13
  406846:	41 54                	push   %r12
  406848:	55                   	push   %rbp
  406849:	57                   	push   %rdi
  40684a:	56                   	push   %rsi
  40684b:	53                   	push   %rbx
  40684c:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  406853:	0f 29 b4 24 90 00 00 	movaps %xmm6,0x90(%rsp)
  40685a:	00 
  40685b:	41 8b 39             	mov    (%r9),%edi
  40685e:	89 f8                	mov    %edi,%eax
  406860:	48 89 cd             	mov    %rcx,%rbp
  406863:	89 94 24 f8 00 00 00 	mov    %edx,0xf8(%rsp)
  40686a:	4c 89 c3             	mov    %r8,%rbx
  40686d:	83 e0 cf             	and    $0xffffffcf,%eax
  406870:	4d 89 cc             	mov    %r9,%r12
  406873:	41 89 01             	mov    %eax,(%r9)
  406876:	89 f8                	mov    %edi,%eax
  406878:	83 e0 07             	and    $0x7,%eax
  40687b:	83 f8 04             	cmp    $0x4,%eax
  40687e:	0f 87 34 15 00 00    	ja     407db8 <__gdtoa+0x1578>
  406884:	48 8d 15 15 4d 00 00 	lea    0x4d15(%rip),%rdx        # 40b5a0 <.rdata+0x10>
  40688b:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40688f:	48 01 d0             	add    %rdx,%rax
  406892:	ff e0                	jmpq   *%rax
  406894:	8b 31                	mov    (%rcx),%esi
  406896:	31 c9                	xor    %ecx,%ecx
  406898:	83 fe 20             	cmp    $0x20,%esi
  40689b:	7e 0e                	jle    4068ab <__gdtoa+0x6b>
  40689d:	b8 20 00 00 00       	mov    $0x20,%eax
  4068a2:	01 c0                	add    %eax,%eax
  4068a4:	83 c1 01             	add    $0x1,%ecx
  4068a7:	39 c6                	cmp    %eax,%esi
  4068a9:	7f f7                	jg     4068a2 <__gdtoa+0x62>
  4068ab:	e8 90 17 00 00       	callq  408040 <__Balloc_D2A>
  4068b0:	48 89 da             	mov    %rbx,%rdx
  4068b3:	49 89 c6             	mov    %rax,%r14
  4068b6:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4068b9:	4d 8d 46 18          	lea    0x18(%r14),%r8
  4068bd:	c1 f8 05             	sar    $0x5,%eax
  4068c0:	48 98                	cltq   
  4068c2:	4c 8d 14 83          	lea    (%rbx,%rax,4),%r10
  4068c6:	4c 89 c0             	mov    %r8,%rax
  4068c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4068d0:	8b 0a                	mov    (%rdx),%ecx
  4068d2:	48 83 c2 04          	add    $0x4,%rdx
  4068d6:	48 83 c0 04          	add    $0x4,%rax
  4068da:	49 39 d2             	cmp    %rdx,%r10
  4068dd:	89 48 fc             	mov    %ecx,-0x4(%rax)
  4068e0:	73 ee                	jae    4068d0 <__gdtoa+0x90>
  4068e2:	4c 29 c0             	sub    %r8,%rax
  4068e5:	48 c1 f8 02          	sar    $0x2,%rax
  4068e9:	89 c2                	mov    %eax,%edx
  4068eb:	48 98                	cltq   
  4068ed:	49 8d 44 80 fc       	lea    -0x4(%r8,%rax,4),%rax
  4068f2:	eb 10                	jmp    406904 <__gdtoa+0xc4>
  4068f4:	48 83 e8 04          	sub    $0x4,%rax
  4068f8:	45 85 ed             	test   %r13d,%r13d
  4068fb:	44 89 ea             	mov    %r13d,%edx
  4068fe:	0f 84 e0 04 00 00    	je     406de4 <__gdtoa+0x5a4>
  406904:	8b 08                	mov    (%rax),%ecx
  406906:	44 8d 6a ff          	lea    -0x1(%rdx),%r13d
  40690a:	85 c9                	test   %ecx,%ecx
  40690c:	74 e6                	je     4068f4 <__gdtoa+0xb4>
  40690e:	4d 63 ed             	movslq %r13d,%r13
  406911:	41 89 56 14          	mov    %edx,0x14(%r14)
  406915:	c1 e2 05             	shl    $0x5,%edx
  406918:	43 0f bd 44 ae 18    	bsr    0x18(%r14,%r13,4),%eax
  40691e:	41 89 d5             	mov    %edx,%r13d
  406921:	83 f0 1f             	xor    $0x1f,%eax
  406924:	41 29 c5             	sub    %eax,%r13d
  406927:	4c 89 f1             	mov    %r14,%rcx
  40692a:	e8 a1 15 00 00       	callq  407ed0 <__trailz_D2A>
  40692f:	44 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9d
  406936:	00 
  406937:	85 c0                	test   %eax,%eax
  406939:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  406940:	0f 85 ab 04 00 00    	jne    406df1 <__gdtoa+0x5b1>
  406946:	45 8b 7e 14          	mov    0x14(%r14),%r15d
  40694a:	45 85 ff             	test   %r15d,%r15d
  40694d:	0f 85 ad 00 00 00    	jne    406a00 <__gdtoa+0x1c0>
  406953:	4c 89 f1             	mov    %r14,%rcx
  406956:	e8 e5 17 00 00       	callq  408140 <__Bfree_D2A>
  40695b:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  406962:	00 
  406963:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  406969:	48 8b 94 24 28 01 00 	mov    0x128(%rsp),%rdx
  406970:	00 
  406971:	48 8d 0d 25 4c 00 00 	lea    0x4c25(%rip),%rcx        # 40b59d <.rdata+0xd>
  406978:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
  40697e:	e8 6d fc ff ff       	callq  4065f0 <__nrv_alloc_D2A>
  406983:	49 89 c7             	mov    %rax,%r15
  406986:	0f 28 b4 24 90 00 00 	movaps 0x90(%rsp),%xmm6
  40698d:	00 
  40698e:	4c 89 f8             	mov    %r15,%rax
  406991:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  406998:	5b                   	pop    %rbx
  406999:	5e                   	pop    %rsi
  40699a:	5f                   	pop    %rdi
  40699b:	5d                   	pop    %rbp
  40699c:	41 5c                	pop    %r12
  40699e:	41 5d                	pop    %r13
  4069a0:	41 5e                	pop    %r14
  4069a2:	41 5f                	pop    %r15
  4069a4:	c3                   	retq   
  4069a5:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  4069ac:	00 
  4069ad:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  4069b3:	48 8b 94 24 28 01 00 	mov    0x128(%rsp),%rdx
  4069ba:	00 
  4069bb:	48 8d 0d d7 4b 00 00 	lea    0x4bd7(%rip),%rcx        # 40b599 <.rdata+0x9>
  4069c2:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
  4069c8:	e8 23 fc ff ff       	callq  4065f0 <__nrv_alloc_D2A>
  4069cd:	49 89 c7             	mov    %rax,%r15
  4069d0:	eb b4                	jmp    406986 <__gdtoa+0x146>
  4069d2:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  4069d9:	00 
  4069da:	41 b8 08 00 00 00    	mov    $0x8,%r8d
  4069e0:	48 8b 94 24 28 01 00 	mov    0x128(%rsp),%rdx
  4069e7:	00 
  4069e8:	48 8d 0d a1 4b 00 00 	lea    0x4ba1(%rip),%rcx        # 40b590 <.rdata>
  4069ef:	c7 00 00 80 ff ff    	movl   $0xffff8000,(%rax)
  4069f5:	e8 f6 fb ff ff       	callq  4065f0 <__nrv_alloc_D2A>
  4069fa:	49 89 c7             	mov    %rax,%r15
  4069fd:	eb 87                	jmp    406986 <__gdtoa+0x146>
  4069ff:	90                   	nop
  406a00:	48 8d 94 24 8c 00 00 	lea    0x8c(%rsp),%rdx
  406a07:	00 
  406a08:	4c 89 f1             	mov    %r14,%rcx
  406a0b:	44 89 4c 24 2c       	mov    %r9d,0x2c(%rsp)
  406a10:	e8 db 1d 00 00       	callq  4087f0 <__b2d_D2A>
  406a15:	44 8b 4c 24 2c       	mov    0x2c(%rsp),%r9d
  406a1a:	66 49 0f 7e c7       	movq   %xmm0,%r15
  406a1f:	f2 0f 10 05 a1 4b 00 	movsd  0x4ba1(%rip),%xmm0        # 40b5c8 <.rdata+0x38>
  406a26:	00 
  406a27:	4c 89 f9             	mov    %r15,%rcx
  406a2a:	45 89 ff             	mov    %r15d,%r15d
  406a2d:	48 c1 e9 20          	shr    $0x20,%rcx
  406a31:	47 8d 04 29          	lea    (%r9,%r13,1),%r8d
  406a35:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
  406a3b:	41 8d 40 ff          	lea    -0x1(%r8),%eax
  406a3f:	81 c9 00 00 f0 3f    	or     $0x3ff00000,%ecx
  406a45:	48 89 ca             	mov    %rcx,%rdx
  406a48:	48 c1 e2 20          	shl    $0x20,%rdx
  406a4c:	49 09 d7             	or     %rdx,%r15
  406a4f:	ba 01 00 00 00       	mov    $0x1,%edx
  406a54:	66 49 0f 6e cf       	movq   %r15,%xmm1
  406a59:	f2 0f 5c 0d 57 4b 00 	subsd  0x4b57(%rip),%xmm1        # 40b5b8 <.rdata+0x28>
  406a60:	00 
  406a61:	44 29 c2             	sub    %r8d,%edx
  406a64:	f2 0f 59 0d 54 4b 00 	mulsd  0x4b54(%rip),%xmm1        # 40b5c0 <.rdata+0x30>
  406a6b:	00 
  406a6c:	85 c0                	test   %eax,%eax
  406a6e:	0f 49 d0             	cmovns %eax,%edx
  406a71:	81 ea 35 04 00 00    	sub    $0x435,%edx
  406a77:	85 d2                	test   %edx,%edx
  406a79:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  406a7d:	66 0f ef c9          	pxor   %xmm1,%xmm1
  406a81:	f2 0f 2a c8          	cvtsi2sd %eax,%xmm1
  406a85:	f2 0f 59 0d 43 4b 00 	mulsd  0x4b43(%rip),%xmm1        # 40b5d0 <.rdata+0x40>
  406a8c:	00 
  406a8d:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  406a91:	7e 14                	jle    406aa7 <__gdtoa+0x267>
  406a93:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406a97:	f2 0f 2a c2          	cvtsi2sd %edx,%xmm0
  406a9b:	f2 0f 59 05 35 4b 00 	mulsd  0x4b35(%rip),%xmm0        # 40b5d8 <.rdata+0x48>
  406aa2:	00 
  406aa3:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  406aa7:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
  406aab:	66 0f ef f6          	pxor   %xmm6,%xmm6
  406aaf:	66 0f 2e f1          	ucomisd %xmm1,%xmm6
  406ab3:	89 54 24 2c          	mov    %edx,0x2c(%rsp)
  406ab7:	0f 87 c3 06 00 00    	ja     407180 <__gdtoa+0x940>
  406abd:	89 c2                	mov    %eax,%edx
  406abf:	45 89 ff             	mov    %r15d,%r15d
  406ac2:	c7 44 24 5c 01 00 00 	movl   $0x1,0x5c(%rsp)
  406ac9:	00 
  406aca:	c1 e2 14             	shl    $0x14,%edx
  406acd:	01 ca                	add    %ecx,%edx
  406acf:	48 c1 e2 20          	shl    $0x20,%rdx
  406ad3:	49 09 d7             	or     %rdx,%r15
  406ad6:	4d 89 fb             	mov    %r15,%r11
  406ad9:	4c 89 7c 24 70       	mov    %r15,0x70(%rsp)
  406ade:	4d 89 fa             	mov    %r15,%r10
  406ae1:	44 8b 7c 24 2c       	mov    0x2c(%rsp),%r15d
  406ae6:	41 83 ff 16          	cmp    $0x16,%r15d
  406aea:	77 2f                	ja     406b1b <__gdtoa+0x2db>
  406aec:	48 8b 0d bd 4d 00 00 	mov    0x4dbd(%rip),%rcx        # 40b8b0 <.refptr.__tens_D2A>
  406af3:	49 63 d7             	movslq %r15d,%rdx
  406af6:	66 49 0f 6e eb       	movq   %r11,%xmm5
  406afb:	f2 0f 10 04 d1       	movsd  (%rcx,%rdx,8),%xmm0
  406b00:	66 0f 2e c5          	ucomisd %xmm5,%xmm0
  406b04:	0f 86 56 04 00 00    	jbe    406f60 <__gdtoa+0x720>
  406b0a:	41 83 ef 01          	sub    $0x1,%r15d
  406b0e:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
  406b15:	00 
  406b16:	44 89 7c 24 2c       	mov    %r15d,0x2c(%rsp)
  406b1b:	44 89 e9             	mov    %r13d,%ecx
  406b1e:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%rsp)
  406b25:	00 
  406b26:	29 c1                	sub    %eax,%ecx
  406b28:	89 ca                	mov    %ecx,%edx
  406b2a:	83 ea 01             	sub    $0x1,%edx
  406b2d:	89 54 24 40          	mov    %edx,0x40(%rsp)
  406b31:	79 13                	jns    406b46 <__gdtoa+0x306>
  406b33:	ba 01 00 00 00       	mov    $0x1,%edx
  406b38:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%rsp)
  406b3f:	00 
  406b40:	29 ca                	sub    %ecx,%edx
  406b42:	89 54 24 48          	mov    %edx,0x48(%rsp)
  406b46:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
  406b4a:	85 c9                	test   %ecx,%ecx
  406b4c:	0f 88 4e 06 00 00    	js     4071a0 <__gdtoa+0x960>
  406b52:	01 4c 24 40          	add    %ecx,0x40(%rsp)
  406b56:	89 4c 24 64          	mov    %ecx,0x64(%rsp)
  406b5a:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%rsp)
  406b61:	00 
  406b62:	83 bc 24 10 01 00 00 	cmpl   $0x9,0x110(%rsp)
  406b69:	09 
  406b6a:	0f 87 a5 02 00 00    	ja     406e15 <__gdtoa+0x5d5>
  406b70:	83 bc 24 10 01 00 00 	cmpl   $0x5,0x110(%rsp)
  406b77:	05 
  406b78:	0f 8f f2 03 00 00    	jg     406f70 <__gdtoa+0x730>
  406b7e:	05 fe 03 00 00       	add    $0x3fe,%eax
  406b83:	3d f7 07 00 00       	cmp    $0x7f7,%eax
  406b88:	41 0f 96 c0          	setbe  %r8b
  406b8c:	83 bc 24 10 01 00 00 	cmpl   $0x3,0x110(%rsp)
  406b93:	03 
  406b94:	0f 84 19 0a 00 00    	je     4075b3 <__gdtoa+0xd73>
  406b9a:	0f 8e 20 06 00 00    	jle    4071c0 <__gdtoa+0x980>
  406ba0:	83 bc 24 10 01 00 00 	cmpl   $0x4,0x110(%rsp)
  406ba7:	04 
  406ba8:	c7 44 24 60 01 00 00 	movl   $0x1,0x60(%rsp)
  406baf:	00 
  406bb0:	0f 84 20 06 00 00    	je     4071d6 <__gdtoa+0x996>
  406bb6:	83 bc 24 10 01 00 00 	cmpl   $0x5,0x110(%rsp)
  406bbd:	05 
  406bbe:	0f 85 5c 02 00 00    	jne    406e20 <__gdtoa+0x5e0>
  406bc4:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  406bc8:	03 84 24 18 01 00 00 	add    0x118(%rsp),%eax
  406bcf:	8d 48 01             	lea    0x1(%rax),%ecx
  406bd2:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
  406bd6:	83 f9 0e             	cmp    $0xe,%ecx
  406bd9:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
  406bdd:	0f 96 c0             	setbe  %al
  406be0:	41 21 c0             	and    %eax,%r8d
  406be3:	85 c9                	test   %ecx,%ecx
  406be5:	0f 8e e4 0a 00 00    	jle    4076cf <__gdtoa+0xe8f>
  406beb:	89 8c 24 8c 00 00 00 	mov    %ecx,0x8c(%rsp)
  406bf2:	4c 89 54 24 68       	mov    %r10,0x68(%rsp)
  406bf7:	44 88 44 24 78       	mov    %r8b,0x78(%rsp)
  406bfc:	44 89 4c 24 50       	mov    %r9d,0x50(%rsp)
  406c01:	e8 ba f9 ff ff       	callq  4065c0 <__rv_alloc_D2A>
  406c06:	44 8b 4c 24 50       	mov    0x50(%rsp),%r9d
  406c0b:	49 89 c7             	mov    %rax,%r15
  406c0e:	8b 45 0c             	mov    0xc(%rbp),%eax
  406c11:	44 0f b6 44 24 78    	movzbl 0x78(%rsp),%r8d
  406c17:	4c 8b 54 24 68       	mov    0x68(%rsp),%r10
  406c1c:	83 e8 01             	sub    $0x1,%eax
  406c1f:	89 44 24 58          	mov    %eax,0x58(%rsp)
  406c23:	74 21                	je     406c46 <__gdtoa+0x406>
  406c25:	8b 4c 24 58          	mov    0x58(%rsp),%ecx
  406c29:	b8 02 00 00 00       	mov    $0x2,%eax
  406c2e:	85 c9                	test   %ecx,%ecx
  406c30:	0f 49 c1             	cmovns %ecx,%eax
  406c33:	89 c1                	mov    %eax,%ecx
  406c35:	b8 03 00 00 00       	mov    $0x3,%eax
  406c3a:	29 c8                	sub    %ecx,%eax
  406c3c:	83 e7 08             	and    $0x8,%edi
  406c3f:	0f 44 c1             	cmove  %ecx,%eax
  406c42:	89 44 24 58          	mov    %eax,0x58(%rsp)
  406c46:	45 84 c0             	test   %r8b,%r8b
  406c49:	0f 84 41 02 00 00    	je     406e90 <__gdtoa+0x650>
  406c4f:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  406c53:	0b 44 24 58          	or     0x58(%rsp),%eax
  406c57:	89 44 24 50          	mov    %eax,0x50(%rsp)
  406c5b:	0f 85 2f 02 00 00    	jne    406e90 <__gdtoa+0x650>
  406c61:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
  406c68:	00 00 00 00 
  406c6c:	44 8b 54 24 5c       	mov    0x5c(%rsp),%r10d
  406c71:	f2 0f 10 54 24 70    	movsd  0x70(%rsp),%xmm2
  406c77:	45 85 d2             	test   %r10d,%r10d
  406c7a:	74 12                	je     406c8e <__gdtoa+0x44e>
  406c7c:	f2 0f 10 05 64 49 00 	movsd  0x4964(%rip),%xmm0        # 40b5e8 <.rdata+0x58>
  406c83:	00 
  406c84:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
  406c88:	0f 87 40 0e 00 00    	ja     407ace <__gdtoa+0x128e>
  406c8e:	66 0f 28 c2          	movapd %xmm2,%xmm0
  406c92:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  406c96:	f2 0f 58 05 62 49 00 	addsd  0x4962(%rip),%xmm0        # 40b600 <.rdata+0x70>
  406c9d:	00 
  406c9e:	66 48 0f 7e c2       	movq   %xmm0,%rdx
  406ca3:	66 48 0f 7e c0       	movq   %xmm0,%rax
  406ca8:	48 c1 ea 20          	shr    $0x20,%rdx
  406cac:	89 c0                	mov    %eax,%eax
  406cae:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
  406cb4:	48 c1 e2 20          	shl    $0x20,%rdx
  406cb8:	48 09 d0             	or     %rdx,%rax
  406cbb:	8b 54 24 38          	mov    0x38(%rsp),%edx
  406cbf:	85 d2                	test   %edx,%edx
  406cc1:	0f 84 4a 0a 00 00    	je     407711 <__gdtoa+0xed1>
  406cc7:	44 8b 5c 24 38       	mov    0x38(%rsp),%r11d
  406ccc:	66 0f 28 c2          	movapd %xmm2,%xmm0
  406cd0:	45 31 d2             	xor    %r10d,%r10d
  406cd3:	8b 7c 24 60          	mov    0x60(%rsp),%edi
  406cd7:	66 48 0f 6e d8       	movq   %rax,%xmm3
  406cdc:	48 8b 15 cd 4b 00 00 	mov    0x4bcd(%rip),%rdx        # 40b8b0 <.refptr.__tens_D2A>
  406ce3:	41 8d 43 ff          	lea    -0x1(%r11),%eax
  406ce7:	48 98                	cltq   
  406ce9:	85 ff                	test   %edi,%edi
  406ceb:	f2 0f 10 2c c2       	movsd  (%rdx,%rax,8),%xmm5
  406cf0:	0f 84 22 0b 00 00    	je     407818 <__gdtoa+0xfd8>
  406cf6:	f2 0f 10 0d 22 49 00 	movsd  0x4922(%rip),%xmm1        # 40b620 <.rdata+0x90>
  406cfd:	00 
  406cfe:	49 8d 7f 01          	lea    0x1(%r15),%rdi
  406d02:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
  406d09:	00 00 00 00 
  406d0d:	f2 0f 2c d0          	cvttsd2si %xmm0,%edx
  406d11:	f2 0f 5e cd          	divsd  %xmm5,%xmm1
  406d15:	8d 42 30             	lea    0x30(%rdx),%eax
  406d18:	41 88 07             	mov    %al,(%r15)
  406d1b:	f2 0f 5c cb          	subsd  %xmm3,%xmm1
  406d1f:	66 0f ef db          	pxor   %xmm3,%xmm3
  406d23:	f2 0f 2a da          	cvtsi2sd %edx,%xmm3
  406d27:	f2 0f 5c c3          	subsd  %xmm3,%xmm0
  406d2b:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
  406d2f:	0f 87 92 00 00 00    	ja     406dc7 <__gdtoa+0x587>
  406d35:	f2 0f 10 2d ab 48 00 	movsd  0x48ab(%rip),%xmm5        # 40b5e8 <.rdata+0x58>
  406d3c:	00 
  406d3d:	66 0f 28 dd          	movapd %xmm5,%xmm3
  406d41:	f2 0f 5c d8          	subsd  %xmm0,%xmm3
  406d45:	66 0f 2e cb          	ucomisd %xmm3,%xmm1
  406d49:	0f 87 05 0d 00 00    	ja     407a54 <__gdtoa+0x1214>
  406d4f:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  406d56:	83 c0 01             	add    $0x1,%eax
  406d59:	44 39 d8             	cmp    %r11d,%eax
  406d5c:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  406d63:	0f 8d d1 09 00 00    	jge    40773a <__gdtoa+0xefa>
  406d69:	f2 0f 10 1d 7f 48 00 	movsd  0x487f(%rip),%xmm3        # 40b5f0 <.rdata+0x60>
  406d70:	00 
  406d71:	eb 2c                	jmp    406d9f <__gdtoa+0x55f>
  406d73:	66 0f 28 e5          	movapd %xmm5,%xmm4
  406d77:	f2 0f 5c e0          	subsd  %xmm0,%xmm4
  406d7b:	66 0f 2e cc          	ucomisd %xmm4,%xmm1
  406d7f:	0f 87 cf 0c 00 00    	ja     407a54 <__gdtoa+0x1214>
  406d85:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  406d8c:	83 c0 01             	add    $0x1,%eax
  406d8f:	44 39 d8             	cmp    %r11d,%eax
  406d92:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  406d99:	0f 8d 9b 09 00 00    	jge    40773a <__gdtoa+0xefa>
  406d9f:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  406da3:	66 0f ef e4          	pxor   %xmm4,%xmm4
  406da7:	48 83 c7 01          	add    $0x1,%rdi
  406dab:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
  406daf:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
  406db3:	f2 0f 2a e0          	cvtsi2sd %eax,%xmm4
  406db7:	83 c0 30             	add    $0x30,%eax
  406dba:	88 47 ff             	mov    %al,-0x1(%rdi)
  406dbd:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
  406dc1:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
  406dc5:	76 ac                	jbe    406d73 <__gdtoa+0x533>
  406dc7:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
  406dcb:	41 8d 5a 01          	lea    0x1(%r10),%ebx
  406dcf:	7a 06                	jp     406dd7 <__gdtoa+0x597>
  406dd1:	0f 84 51 01 00 00    	je     406f28 <__gdtoa+0x6e8>
  406dd7:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  406dde:	00 
  406ddf:	e9 44 01 00 00       	jmpq   406f28 <__gdtoa+0x6e8>
  406de4:	41 c7 46 14 00 00 00 	movl   $0x0,0x14(%r14)
  406deb:	00 
  406dec:	e9 36 fb ff ff       	jmpq   406927 <__gdtoa+0xe7>
  406df1:	89 c2                	mov    %eax,%edx
  406df3:	4c 89 f1             	mov    %r14,%rcx
  406df6:	e8 d5 0f 00 00       	callq  407dd0 <__rshift_D2A>
  406dfb:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  406e02:	44 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%r9d
  406e09:	00 
  406e0a:	41 29 c5             	sub    %eax,%r13d
  406e0d:	41 01 c1             	add    %eax,%r9d
  406e10:	e9 31 fb ff ff       	jmpq   406946 <__gdtoa+0x106>
  406e15:	c7 84 24 10 01 00 00 	movl   $0x0,0x110(%rsp)
  406e1c:	00 00 00 00 
  406e20:	66 0f ef c0          	pxor   %xmm0,%xmm0
  406e24:	f2 0f 2a c6          	cvtsi2sd %esi,%xmm0
  406e28:	4c 89 54 24 50       	mov    %r10,0x50(%rsp)
  406e2d:	f2 0f 59 05 ab 47 00 	mulsd  0x47ab(%rip),%xmm0        # 40b5e0 <.rdata+0x50>
  406e34:	00 
  406e35:	44 89 4c 24 38       	mov    %r9d,0x38(%rsp)
  406e3a:	f2 0f 2c c8          	cvttsd2si %xmm0,%ecx
  406e3e:	83 c1 03             	add    $0x3,%ecx
  406e41:	89 8c 24 8c 00 00 00 	mov    %ecx,0x8c(%rsp)
  406e48:	e8 73 f7 ff ff       	callq  4065c0 <__rv_alloc_D2A>
  406e4d:	44 8b 4c 24 38       	mov    0x38(%rsp),%r9d
  406e52:	49 89 c7             	mov    %rax,%r15
  406e55:	8b 45 0c             	mov    0xc(%rbp),%eax
  406e58:	4c 8b 54 24 50       	mov    0x50(%rsp),%r10
  406e5d:	83 e8 01             	sub    $0x1,%eax
  406e60:	89 44 24 58          	mov    %eax,0x58(%rsp)
  406e64:	0f 85 16 01 00 00    	jne    406f80 <__gdtoa+0x740>
  406e6a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  406e6f:	c7 44 24 60 01 00 00 	movl   $0x1,0x60(%rsp)
  406e76:	00 
  406e77:	c7 84 24 18 01 00 00 	movl   $0x0,0x118(%rsp)
  406e7e:	00 00 00 00 
  406e82:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
  406e86:	89 44 24 38          	mov    %eax,0x38(%rsp)
  406e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  406e90:	45 85 c9             	test   %r9d,%r9d
  406e93:	0f 88 17 01 00 00    	js     406fb0 <__gdtoa+0x770>
  406e99:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
  406e9d:	39 45 14             	cmp    %eax,0x14(%rbp)
  406ea0:	0f 8c 0a 01 00 00    	jl     406fb0 <__gdtoa+0x770>
  406ea6:	44 8b 84 24 18 01 00 	mov    0x118(%rsp),%r8d
  406ead:	00 
  406eae:	48 98                	cltq   
  406eb0:	48 8b 15 f9 49 00 00 	mov    0x49f9(%rip),%rdx        # 40b8b0 <.refptr.__tens_D2A>
  406eb7:	48 89 c3             	mov    %rax,%rbx
  406eba:	45 85 c0             	test   %r8d,%r8d
  406ebd:	f2 0f 10 14 c2       	movsd  (%rdx,%rax,8),%xmm2
  406ec2:	0f 89 f8 06 00 00    	jns    4075c0 <__gdtoa+0xd80>
  406ec8:	8b 44 24 38          	mov    0x38(%rsp),%eax
  406ecc:	85 c0                	test   %eax,%eax
  406ece:	0f 8f ec 06 00 00    	jg     4075c0 <__gdtoa+0xd80>
  406ed4:	85 c0                	test   %eax,%eax
  406ed6:	0f 85 e3 07 00 00    	jne    4076bf <__gdtoa+0xe7f>
  406edc:	f2 0f 59 15 24 47 00 	mulsd  0x4724(%rip),%xmm2        # 40b608 <.rdata+0x78>
  406ee3:	00 
  406ee4:	66 49 0f 6e ea       	movq   %r10,%xmm5
  406ee9:	66 0f 2e d5          	ucomisd %xmm5,%xmm2
  406eed:	0f 83 cc 07 00 00    	jae    4076bf <__gdtoa+0xe7f>
  406ef3:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  406efa:	00 00 
  406efc:	83 c3 02             	add    $0x2,%ebx
  406eff:	31 f6                	xor    %esi,%esi
  406f01:	49 8d 7f 01          	lea    0x1(%r15),%rdi
  406f05:	41 c6 07 31          	movb   $0x31,(%r15)
  406f09:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  406f10:	00 
  406f11:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  406f16:	e8 25 12 00 00       	callq  408140 <__Bfree_D2A>
  406f1b:	48 85 f6             	test   %rsi,%rsi
  406f1e:	74 08                	je     406f28 <__gdtoa+0x6e8>
  406f20:	48 89 f1             	mov    %rsi,%rcx
  406f23:	e8 18 12 00 00       	callq  408140 <__Bfree_D2A>
  406f28:	4c 89 f1             	mov    %r14,%rcx
  406f2b:	e8 10 12 00 00       	callq  408140 <__Bfree_D2A>
  406f30:	48 8b 84 24 20 01 00 	mov    0x120(%rsp),%rax
  406f37:	00 
  406f38:	c6 07 00             	movb   $0x0,(%rdi)
  406f3b:	48 83 bc 24 28 01 00 	cmpq   $0x0,0x128(%rsp)
  406f42:	00 00 
  406f44:	89 18                	mov    %ebx,(%rax)
  406f46:	74 0b                	je     406f53 <__gdtoa+0x713>
  406f48:	48 8b 84 24 28 01 00 	mov    0x128(%rsp),%rax
  406f4f:	00 
  406f50:	48 89 38             	mov    %rdi,(%rax)
  406f53:	8b 44 24 50          	mov    0x50(%rsp),%eax
  406f57:	41 09 04 24          	or     %eax,(%r12)
  406f5b:	e9 26 fa ff ff       	jmpq   406986 <__gdtoa+0x146>
  406f60:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
  406f67:	00 
  406f68:	e9 ae fb ff ff       	jmpq   406b1b <__gdtoa+0x2db>
  406f6d:	0f 1f 00             	nopl   (%rax)
  406f70:	83 ac 24 10 01 00 00 	subl   $0x4,0x110(%rsp)
  406f77:	04 
  406f78:	45 31 c0             	xor    %r8d,%r8d
  406f7b:	e9 0c fc ff ff       	jmpq   406b8c <__gdtoa+0x34c>
  406f80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  406f85:	45 31 c0             	xor    %r8d,%r8d
  406f88:	c7 44 24 60 01 00 00 	movl   $0x1,0x60(%rsp)
  406f8f:	00 
  406f90:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
  406f94:	89 44 24 38          	mov    %eax,0x38(%rsp)
  406f98:	c7 84 24 18 01 00 00 	movl   $0x0,0x118(%rsp)
  406f9f:	00 00 00 00 
  406fa3:	e9 7d fc ff ff       	jmpq   406c25 <__gdtoa+0x3e5>
  406fa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  406faf:	00 
  406fb0:	8b 4c 24 60          	mov    0x60(%rsp),%ecx
  406fb4:	85 c9                	test   %ecx,%ecx
  406fb6:	0f 84 64 02 00 00    	je     407220 <__gdtoa+0x9e0>
  406fbc:	8b 55 04             	mov    0x4(%rbp),%edx
  406fbf:	44 29 ee             	sub    %r13d,%esi
  406fc2:	44 89 c9             	mov    %r9d,%ecx
  406fc5:	8d 46 01             	lea    0x1(%rsi),%eax
  406fc8:	29 f1                	sub    %esi,%ecx
  406fca:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  406fd1:	39 d1                	cmp    %edx,%ecx
  406fd3:	0f 8d 37 04 00 00    	jge    407410 <__gdtoa+0xbd0>
  406fd9:	8b b4 24 10 01 00 00 	mov    0x110(%rsp),%esi
  406fe0:	8d 4e fd             	lea    -0x3(%rsi),%ecx
  406fe3:	83 e1 fd             	and    $0xfffffffd,%ecx
  406fe6:	0f 84 24 04 00 00    	je     407410 <__gdtoa+0xbd0>
  406fec:	44 89 c8             	mov    %r9d,%eax
  406fef:	29 d0                	sub    %edx,%eax
  406ff1:	83 c0 01             	add    $0x1,%eax
  406ff4:	83 fe 01             	cmp    $0x1,%esi
  406ff7:	8b 74 24 38          	mov    0x38(%rsp),%esi
  406ffb:	0f 9f c1             	setg   %cl
  406ffe:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  407005:	85 f6                	test   %esi,%esi
  407007:	0f 9f c2             	setg   %dl
  40700a:	84 d1                	test   %dl,%cl
  40700c:	74 08                	je     407016 <__gdtoa+0x7d6>
  40700e:	39 f0                	cmp    %esi,%eax
  407010:	0f 8f 08 04 00 00    	jg     40741e <__gdtoa+0xbde>
  407016:	8b 74 24 48          	mov    0x48(%rsp),%esi
  40701a:	8b 7c 24 30          	mov    0x30(%rsp),%edi
  40701e:	01 44 24 40          	add    %eax,0x40(%rsp)
  407022:	01 f0                	add    %esi,%eax
  407024:	89 74 24 50          	mov    %esi,0x50(%rsp)
  407028:	89 44 24 48          	mov    %eax,0x48(%rsp)
  40702c:	b9 01 00 00 00       	mov    $0x1,%ecx
  407031:	e8 2a 12 00 00       	callq  408260 <__i2b_D2A>
  407036:	48 89 c6             	mov    %rax,%rsi
  407039:	8b 4c 24 50          	mov    0x50(%rsp),%ecx
  40703d:	85 c9                	test   %ecx,%ecx
  40703f:	7e 26                	jle    407067 <__gdtoa+0x827>
  407041:	8b 54 24 40          	mov    0x40(%rsp),%edx
  407045:	85 d2                	test   %edx,%edx
  407047:	7e 1e                	jle    407067 <__gdtoa+0x827>
  407049:	39 d1                	cmp    %edx,%ecx
  40704b:	89 d0                	mov    %edx,%eax
  40704d:	0f 4e c1             	cmovle %ecx,%eax
  407050:	29 44 24 48          	sub    %eax,0x48(%rsp)
  407054:	29 c1                	sub    %eax,%ecx
  407056:	29 c2                	sub    %eax,%edx
  407058:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  40705f:	89 4c 24 50          	mov    %ecx,0x50(%rsp)
  407063:	89 54 24 40          	mov    %edx,0x40(%rsp)
  407067:	8b 44 24 30          	mov    0x30(%rsp),%eax
  40706b:	85 c0                	test   %eax,%eax
  40706d:	74 31                	je     4070a0 <__gdtoa+0x860>
  40706f:	8b 54 24 60          	mov    0x60(%rsp),%edx
  407073:	85 d2                	test   %edx,%edx
  407075:	0f 84 d1 06 00 00    	je     40774c <__gdtoa+0xf0c>
  40707b:	29 f8                	sub    %edi,%eax
  40707d:	85 ff                	test   %edi,%edi
  40707f:	41 89 c0             	mov    %eax,%r8d
  407082:	0f 85 d8 06 00 00    	jne    407760 <__gdtoa+0xf20>
  407088:	4c 89 f1             	mov    %r14,%rcx
  40708b:	44 89 c2             	mov    %r8d,%edx
  40708e:	e8 2d 13 00 00       	callq  4083c0 <__pow5mult_D2A>
  407093:	49 89 c6             	mov    %rax,%r14
  407096:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40709d:	00 00 00 
  4070a0:	b9 01 00 00 00       	mov    $0x1,%ecx
  4070a5:	e8 b6 11 00 00       	callq  408260 <__i2b_D2A>
  4070aa:	41 83 fd 01          	cmp    $0x1,%r13d
  4070ae:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4070b2:	48 89 c1             	mov    %rax,%rcx
  4070b5:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4070ba:	0f 94 c0             	sete   %al
  4070bd:	83 bc 24 10 01 00 00 	cmpl   $0x1,0x110(%rsp)
  4070c4:	01 
  4070c5:	41 0f 9e c5          	setle  %r13b
  4070c9:	41 21 c5             	and    %eax,%r13d
  4070cc:	85 d2                	test   %edx,%edx
  4070ce:	0f 85 5f 01 00 00    	jne    407233 <__gdtoa+0x9f3>
  4070d4:	45 84 ed             	test   %r13b,%r13b
  4070d7:	0f 85 68 0b 00 00    	jne    407c45 <__gdtoa+0x1405>
  4070dd:	bd 1f 00 00 00       	mov    $0x1f,%ebp
  4070e2:	2b 6c 24 40          	sub    0x40(%rsp),%ebp
  4070e6:	8b 54 24 48          	mov    0x48(%rsp),%edx
  4070ea:	83 ed 04             	sub    $0x4,%ebp
  4070ed:	83 e5 1f             	and    $0x1f,%ebp
  4070f0:	01 ea                	add    %ebp,%edx
  4070f2:	89 ac 24 8c 00 00 00 	mov    %ebp,0x8c(%rsp)
  4070f9:	89 e8                	mov    %ebp,%eax
  4070fb:	85 d2                	test   %edx,%edx
  4070fd:	7e 12                	jle    407111 <__gdtoa+0x8d1>
  4070ff:	4c 89 f1             	mov    %r14,%rcx
  407102:	e8 39 14 00 00       	callq  408540 <__lshift_D2A>
  407107:	49 89 c6             	mov    %rax,%r14
  40710a:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  407111:	8b 54 24 40          	mov    0x40(%rsp),%edx
  407115:	01 c2                	add    %eax,%edx
  407117:	85 d2                	test   %edx,%edx
  407119:	7e 0f                	jle    40712a <__gdtoa+0x8ea>
  40711b:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  407120:	e8 1b 14 00 00       	callq  408540 <__lshift_D2A>
  407125:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40712a:	83 bc 24 10 01 00 00 	cmpl   $0x2,0x110(%rsp)
  407131:	02 
  407132:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
  407136:	40 0f 9f c7          	setg   %dil
  40713a:	85 c0                	test   %eax,%eax
  40713c:	0f 85 2e 03 00 00    	jne    407470 <__gdtoa+0xc30>
  407142:	44 8b 5c 24 38       	mov    0x38(%rsp),%r11d
  407147:	45 85 db             	test   %r11d,%r11d
  40714a:	0f 8f 20 01 00 00    	jg     407270 <__gdtoa+0xa30>
  407150:	40 84 ff             	test   %dil,%dil
  407153:	0f 84 17 01 00 00    	je     407270 <__gdtoa+0xa30>
  407159:	44 8b 54 24 38       	mov    0x38(%rsp),%r10d
  40715e:	45 85 d2             	test   %r10d,%r10d
  407161:	0f 84 22 05 00 00    	je     407689 <__gdtoa+0xe49>
  407167:	8b 9c 24 18 01 00 00 	mov    0x118(%rsp),%ebx
  40716e:	4c 89 ff             	mov    %r15,%rdi
  407171:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407178:	00 
  407179:	f7 db                	neg    %ebx
  40717b:	e9 91 fd ff ff       	jmpq   406f11 <__gdtoa+0x6d1>
  407180:	66 0f ef c0          	pxor   %xmm0,%xmm0
  407184:	f2 0f 2a c2          	cvtsi2sd %edx,%xmm0
  407188:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  40718c:	7a 06                	jp     407194 <__gdtoa+0x954>
  40718e:	0f 84 29 f9 ff ff    	je     406abd <__gdtoa+0x27d>
  407194:	83 6c 24 2c 01       	subl   $0x1,0x2c(%rsp)
  407199:	e9 1f f9 ff ff       	jmpq   406abd <__gdtoa+0x27d>
  40719e:	66 90                	xchg   %ax,%ax
  4071a0:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
  4071a4:	c7 44 24 64 00 00 00 	movl   $0x0,0x64(%rsp)
  4071ab:	00 
  4071ac:	29 4c 24 48          	sub    %ecx,0x48(%rsp)
  4071b0:	f7 d9                	neg    %ecx
  4071b2:	89 4c 24 30          	mov    %ecx,0x30(%rsp)
  4071b6:	e9 a7 f9 ff ff       	jmpq   406b62 <__gdtoa+0x322>
  4071bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4071c0:	83 bc 24 10 01 00 00 	cmpl   $0x2,0x110(%rsp)
  4071c7:	02 
  4071c8:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
  4071cf:	00 
  4071d0:	0f 85 4a fc ff ff    	jne    406e20 <__gdtoa+0x5e0>
  4071d6:	44 8b 9c 24 18 01 00 	mov    0x118(%rsp),%r11d
  4071dd:	00 
  4071de:	b8 01 00 00 00       	mov    $0x1,%eax
  4071e3:	45 85 db             	test   %r11d,%r11d
  4071e6:	0f 4f 84 24 18 01 00 	cmovg  0x118(%rsp),%eax
  4071ed:	00 
  4071ee:	89 84 24 18 01 00 00 	mov    %eax,0x118(%rsp)
  4071f5:	8b 8c 24 18 01 00 00 	mov    0x118(%rsp),%ecx
  4071fc:	83 f8 0e             	cmp    $0xe,%eax
  4071ff:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  407206:	0f 96 c0             	setbe  %al
  407209:	41 21 c0             	and    %eax,%r8d
  40720c:	89 4c 24 7c          	mov    %ecx,0x7c(%rsp)
  407210:	89 4c 24 38          	mov    %ecx,0x38(%rsp)
  407214:	e9 d9 f9 ff ff       	jmpq   406bf2 <__gdtoa+0x3b2>
  407219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407220:	8b 44 24 48          	mov    0x48(%rsp),%eax
  407224:	31 f6                	xor    %esi,%esi
  407226:	8b 7c 24 30          	mov    0x30(%rsp),%edi
  40722a:	89 44 24 50          	mov    %eax,0x50(%rsp)
  40722e:	e9 06 fe ff ff       	jmpq   407039 <__gdtoa+0x7f9>
  407233:	e8 88 11 00 00       	callq  4083c0 <__pow5mult_D2A>
  407238:	45 84 ed             	test   %r13b,%r13b
  40723b:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  407240:	0f 85 17 08 00 00    	jne    407a5d <__gdtoa+0x121d>
  407246:	c7 44 24 64 00 00 00 	movl   $0x0,0x64(%rsp)
  40724d:	00 
  40724e:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  407253:	8b 47 14             	mov    0x14(%rdi),%eax
  407256:	89 44 24 78          	mov    %eax,0x78(%rsp)
  40725a:	83 e8 01             	sub    $0x1,%eax
  40725d:	48 98                	cltq   
  40725f:	0f bd 6c 87 18       	bsr    0x18(%rdi,%rax,4),%ebp
  407264:	83 f5 1f             	xor    $0x1f,%ebp
  407267:	e9 76 fe ff ff       	jmpq   4070e2 <__gdtoa+0x8a2>
  40726c:	0f 1f 40 00          	nopl   0x0(%rax)
  407270:	44 8b 4c 24 60       	mov    0x60(%rsp),%r9d
  407275:	45 85 c9             	test   %r9d,%r9d
  407278:	0f 84 52 02 00 00    	je     4074d0 <__gdtoa+0xc90>
  40727e:	8b 54 24 50          	mov    0x50(%rsp),%edx
  407282:	01 ea                	add    %ebp,%edx
  407284:	85 d2                	test   %edx,%edx
  407286:	7e 0b                	jle    407293 <__gdtoa+0xa53>
  407288:	48 89 f1             	mov    %rsi,%rcx
  40728b:	e8 b0 12 00 00       	callq  408540 <__lshift_D2A>
  407290:	48 89 c6             	mov    %rax,%rsi
  407293:	44 8b 44 24 64       	mov    0x64(%rsp),%r8d
  407298:	48 89 74 24 40       	mov    %rsi,0x40(%rsp)
  40729d:	45 85 c0             	test   %r8d,%r8d
  4072a0:	0f 85 ed 07 00 00    	jne    407a93 <__gdtoa+0x1253>
  4072a6:	4c 89 a4 24 08 01 00 	mov    %r12,0x108(%rsp)
  4072ad:	00 
  4072ae:	4c 8b 64 24 40       	mov    0x40(%rsp),%r12
  4072b3:	c7 84 24 8c 00 00 00 	movl   $0x1,0x8c(%rsp)
  4072ba:	01 00 00 00 
  4072be:	4c 89 7c 24 48       	mov    %r15,0x48(%rsp)
  4072c3:	48 89 9c 24 00 01 00 	mov    %rbx,0x100(%rsp)
  4072ca:	00 
  4072cb:	e9 c9 00 00 00       	jmpq   407399 <__gdtoa+0xb59>
  4072d0:	4c 89 c1             	mov    %r8,%rcx
  4072d3:	e8 68 0e 00 00       	callq  408140 <__Bfree_D2A>
  4072d8:	89 d8                	mov    %ebx,%eax
  4072da:	0b 84 24 10 01 00 00 	or     0x110(%rsp),%eax
  4072e1:	75 1d                	jne    407300 <__gdtoa+0xac0>
  4072e3:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  4072ea:	00 
  4072eb:	8b 00                	mov    (%rax),%eax
  4072ed:	89 c2                	mov    %eax,%edx
  4072ef:	89 44 24 40          	mov    %eax,0x40(%rsp)
  4072f3:	83 e2 01             	and    $0x1,%edx
  4072f6:	0b 54 24 58          	or     0x58(%rsp),%edx
  4072fa:	0f 84 dd 09 00 00    	je     407cdd <__gdtoa+0x149d>
  407300:	45 85 ed             	test   %r13d,%r13d
  407303:	0f 88 3c 06 00 00    	js     407945 <__gdtoa+0x1105>
  407309:	44 0b ac 24 10 01 00 	or     0x110(%rsp),%r13d
  407310:	00 
  407311:	75 11                	jne    407324 <__gdtoa+0xae4>
  407313:	48 8b 84 24 00 01 00 	mov    0x100(%rsp),%rax
  40731a:	00 
  40731b:	f6 00 01             	testb  $0x1,(%rax)
  40731e:	0f 84 21 06 00 00    	je     407945 <__gdtoa+0x1105>
  407324:	49 8d 7f 01          	lea    0x1(%r15),%rdi
  407328:	85 db                	test   %ebx,%ebx
  40732a:	7e 0b                	jle    407337 <__gdtoa+0xaf7>
  40732c:	83 7c 24 58 02       	cmpl   $0x2,0x58(%rsp)
  407331:	0f 85 10 08 00 00    	jne    407b47 <__gdtoa+0x1307>
  407337:	40 88 6f ff          	mov    %bpl,-0x1(%rdi)
  40733b:	8b 44 24 38          	mov    0x38(%rsp),%eax
  40733f:	39 84 24 8c 00 00 00 	cmp    %eax,0x8c(%rsp)
  407346:	0f 84 3b 08 00 00    	je     407b87 <__gdtoa+0x1347>
  40734c:	45 31 c0             	xor    %r8d,%r8d
  40734f:	4c 89 f1             	mov    %r14,%rcx
  407352:	ba 0a 00 00 00       	mov    $0xa,%edx
  407357:	e8 54 0e 00 00       	callq  4081b0 <__multadd_D2A>
  40735c:	45 31 c0             	xor    %r8d,%r8d
  40735f:	4c 39 e6             	cmp    %r12,%rsi
  407362:	ba 0a 00 00 00       	mov    $0xa,%edx
  407367:	49 89 c6             	mov    %rax,%r14
  40736a:	48 89 f1             	mov    %rsi,%rcx
  40736d:	0f 84 8d 00 00 00    	je     407400 <__gdtoa+0xbc0>
  407373:	e8 38 0e 00 00       	callq  4081b0 <__multadd_D2A>
  407378:	4c 89 e1             	mov    %r12,%rcx
  40737b:	45 31 c0             	xor    %r8d,%r8d
  40737e:	ba 0a 00 00 00       	mov    $0xa,%edx
  407383:	48 89 c6             	mov    %rax,%rsi
  407386:	e8 25 0e 00 00       	callq  4081b0 <__multadd_D2A>
  40738b:	49 89 c4             	mov    %rax,%r12
  40738e:	83 84 24 8c 00 00 00 	addl   $0x1,0x8c(%rsp)
  407395:	01 
  407396:	49 89 ff             	mov    %rdi,%r15
  407399:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
  40739e:	4c 89 f1             	mov    %r14,%rcx
  4073a1:	48 89 da             	mov    %rbx,%rdx
  4073a4:	e8 f7 f2 ff ff       	callq  4066a0 <__quorem_D2A>
  4073a9:	48 89 f2             	mov    %rsi,%rdx
  4073ac:	4c 89 f1             	mov    %r14,%rcx
  4073af:	8d 68 30             	lea    0x30(%rax),%ebp
  4073b2:	89 c7                	mov    %eax,%edi
  4073b4:	e8 87 12 00 00       	callq  408640 <__cmp_D2A>
  4073b9:	48 89 d9             	mov    %rbx,%rcx
  4073bc:	4c 89 e2             	mov    %r12,%rdx
  4073bf:	bb 01 00 00 00       	mov    $0x1,%ebx
  4073c4:	41 89 c5             	mov    %eax,%r13d
  4073c7:	e8 b4 12 00 00       	callq  408680 <__diff_D2A>
  4073cc:	8b 48 10             	mov    0x10(%rax),%ecx
  4073cf:	49 89 c0             	mov    %rax,%r8
  4073d2:	85 c9                	test   %ecx,%ecx
  4073d4:	0f 85 f6 fe ff ff    	jne    4072d0 <__gdtoa+0xa90>
  4073da:	48 89 c2             	mov    %rax,%rdx
  4073dd:	4c 89 f1             	mov    %r14,%rcx
  4073e0:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  4073e5:	e8 56 12 00 00       	callq  408640 <__cmp_D2A>
  4073ea:	4c 8b 44 24 40       	mov    0x40(%rsp),%r8
  4073ef:	89 c3                	mov    %eax,%ebx
  4073f1:	e9 da fe ff ff       	jmpq   4072d0 <__gdtoa+0xa90>
  4073f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4073fd:	00 00 00 
  407400:	e8 ab 0d 00 00       	callq  4081b0 <__multadd_D2A>
  407405:	48 89 c6             	mov    %rax,%rsi
  407408:	49 89 c4             	mov    %rax,%r12
  40740b:	eb 81                	jmp    40738e <__gdtoa+0xb4e>
  40740d:	0f 1f 00             	nopl   (%rax)
  407410:	83 bc 24 10 01 00 00 	cmpl   $0x1,0x110(%rsp)
  407417:	01 
  407418:	0f 8e f8 fb ff ff    	jle    407016 <__gdtoa+0x7d6>
  40741e:	8b 74 24 30          	mov    0x30(%rsp),%esi
  407422:	8b 44 24 38          	mov    0x38(%rsp),%eax
  407426:	89 f7                	mov    %esi,%edi
  407428:	83 e8 01             	sub    $0x1,%eax
  40742b:	29 c7                	sub    %eax,%edi
  40742d:	39 c6                	cmp    %eax,%esi
  40742f:	7d 10                	jge    407441 <__gdtoa+0xc01>
  407431:	89 c2                	mov    %eax,%edx
  407433:	2b 54 24 30          	sub    0x30(%rsp),%edx
  407437:	31 ff                	xor    %edi,%edi
  407439:	89 44 24 30          	mov    %eax,0x30(%rsp)
  40743d:	01 54 24 64          	add    %edx,0x64(%rsp)
  407441:	8b 44 24 38          	mov    0x38(%rsp),%eax
  407445:	85 c0                	test   %eax,%eax
  407447:	0f 88 eb 05 00 00    	js     407a38 <__gdtoa+0x11f8>
  40744d:	8b 74 24 48          	mov    0x48(%rsp),%esi
  407451:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  407458:	01 44 24 40          	add    %eax,0x40(%rsp)
  40745c:	01 f0                	add    %esi,%eax
  40745e:	89 74 24 50          	mov    %esi,0x50(%rsp)
  407462:	89 44 24 48          	mov    %eax,0x48(%rsp)
  407466:	e9 c1 fb ff ff       	jmpq   40702c <__gdtoa+0x7ec>
  40746b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  407470:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  407475:	4c 89 f1             	mov    %r14,%rcx
  407478:	e8 c3 11 00 00       	callq  408640 <__cmp_D2A>
  40747d:	85 c0                	test   %eax,%eax
  40747f:	0f 89 bd fc ff ff    	jns    407142 <__gdtoa+0x902>
  407485:	83 6c 24 2c 01       	subl   $0x1,0x2c(%rsp)
  40748a:	45 31 c0             	xor    %r8d,%r8d
  40748d:	4c 89 f1             	mov    %r14,%rcx
  407490:	ba 0a 00 00 00       	mov    $0xa,%edx
  407495:	e8 16 0d 00 00       	callq  4081b0 <__multadd_D2A>
  40749a:	44 8b 6c 24 7c       	mov    0x7c(%rsp),%r13d
  40749f:	49 89 c6             	mov    %rax,%r14
  4074a2:	45 85 ed             	test   %r13d,%r13d
  4074a5:	0f 9e c0             	setle  %al
  4074a8:	21 c7                	and    %eax,%edi
  4074aa:	8b 44 24 60          	mov    0x60(%rsp),%eax
  4074ae:	85 c0                	test   %eax,%eax
  4074b0:	0f 85 e9 07 00 00    	jne    407c9f <__gdtoa+0x145f>
  4074b6:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  4074ba:	40 84 ff             	test   %dil,%dil
  4074bd:	89 44 24 38          	mov    %eax,0x38(%rsp)
  4074c1:	0f 85 92 fc ff ff    	jne    407159 <__gdtoa+0x919>
  4074c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4074ce:	00 00 
  4074d0:	c7 84 24 8c 00 00 00 	movl   $0x1,0x8c(%rsp)
  4074d7:	01 00 00 00 
  4074db:	4c 89 ff             	mov    %r15,%rdi
  4074de:	8b 5c 24 38          	mov    0x38(%rsp),%ebx
  4074e2:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  4074e7:	eb 22                	jmp    40750b <__gdtoa+0xccb>
  4074e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4074f0:	4c 89 f1             	mov    %r14,%rcx
  4074f3:	45 31 c0             	xor    %r8d,%r8d
  4074f6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4074fb:	e8 b0 0c 00 00       	callq  4081b0 <__multadd_D2A>
  407500:	83 84 24 8c 00 00 00 	addl   $0x1,0x8c(%rsp)
  407507:	01 
  407508:	49 89 c6             	mov    %rax,%r14
  40750b:	4c 89 ea             	mov    %r13,%rdx
  40750e:	4c 89 f1             	mov    %r14,%rcx
  407511:	e8 8a f1 ff ff       	callq  4066a0 <__quorem_D2A>
  407516:	48 83 c7 01          	add    $0x1,%rdi
  40751a:	8d 68 30             	lea    0x30(%rax),%ebp
  40751d:	40 88 6f ff          	mov    %bpl,-0x1(%rdi)
  407521:	39 9c 24 8c 00 00 00 	cmp    %ebx,0x8c(%rsp)
  407528:	7c c6                	jl     4074f0 <__gdtoa+0xcb0>
  40752a:	45 31 ed             	xor    %r13d,%r13d
  40752d:	8b 5c 24 58          	mov    0x58(%rsp),%ebx
  407531:	85 db                	test   %ebx,%ebx
  407533:	0f 84 ab 03 00 00    	je     4078e4 <__gdtoa+0x10a4>
  407539:	83 fb 02             	cmp    $0x2,%ebx
  40753c:	41 8b 46 14          	mov    0x14(%r14),%eax
  407540:	0f b6 57 ff          	movzbl -0x1(%rdi),%edx
  407544:	0f 84 d3 03 00 00    	je     40791d <__gdtoa+0x10dd>
  40754a:	83 f8 01             	cmp    $0x1,%eax
  40754d:	7f 15                	jg     407564 <__gdtoa+0xd24>
  40754f:	e9 b5 06 00 00       	jmpq   407c09 <__gdtoa+0x13c9>
  407554:	4c 39 f8             	cmp    %r15,%rax
  407557:	0f 84 90 02 00 00    	je     4077ed <__gdtoa+0xfad>
  40755d:	0f b6 50 ff          	movzbl -0x1(%rax),%edx
  407561:	48 89 c7             	mov    %rax,%rdi
  407564:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
  407568:	80 fa 39             	cmp    $0x39,%dl
  40756b:	74 e7                	je     407554 <__gdtoa+0xd14>
  40756d:	83 c2 01             	add    $0x1,%edx
  407570:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  407577:	00 
  407578:	88 10                	mov    %dl,(%rax)
  40757a:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40757f:	e8 bc 0b 00 00       	callq  408140 <__Bfree_D2A>
  407584:	8b 5c 24 2c          	mov    0x2c(%rsp),%ebx
  407588:	83 c3 01             	add    $0x1,%ebx
  40758b:	48 85 f6             	test   %rsi,%rsi
  40758e:	0f 84 94 f9 ff ff    	je     406f28 <__gdtoa+0x6e8>
  407594:	4d 85 ed             	test   %r13,%r13
  407597:	0f 84 83 f9 ff ff    	je     406f20 <__gdtoa+0x6e0>
  40759d:	49 39 f5             	cmp    %rsi,%r13
  4075a0:	0f 84 7a f9 ff ff    	je     406f20 <__gdtoa+0x6e0>
  4075a6:	4c 89 e9             	mov    %r13,%rcx
  4075a9:	e8 92 0b 00 00       	callq  408140 <__Bfree_D2A>
  4075ae:	e9 6d f9 ff ff       	jmpq   406f20 <__gdtoa+0x6e0>
  4075b3:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
  4075ba:	00 
  4075bb:	e9 04 f6 ff ff       	jmpq   406bc4 <__gdtoa+0x384>
  4075c0:	66 49 0f 6e ca       	movq   %r10,%xmm1
  4075c5:	66 49 0f 6e c2       	movq   %r10,%xmm0
  4075ca:	8b 4c 24 2c          	mov    0x2c(%rsp),%ecx
  4075ce:	c7 84 24 8c 00 00 00 	movl   $0x1,0x8c(%rsp)
  4075d5:	01 00 00 00 
  4075d9:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
  4075dd:	49 8d 7f 01          	lea    0x1(%r15),%rdi
  4075e1:	83 c1 01             	add    $0x1,%ecx
  4075e4:	89 cb                	mov    %ecx,%ebx
  4075e6:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
  4075ea:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4075ee:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
  4075f2:	8d 42 30             	lea    0x30(%rdx),%eax
  4075f5:	41 88 07             	mov    %al,(%r15)
  4075f8:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  4075fc:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  407600:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
  407604:	7a 02                	jp     407608 <__gdtoa+0xdc8>
  407606:	74 74                	je     40767c <__gdtoa+0xe3c>
  407608:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  40760f:	44 8b 44 24 38       	mov    0x38(%rsp),%r8d
  407614:	44 39 c0             	cmp    %r8d,%eax
  407617:	0f 84 83 01 00 00    	je     4077a0 <__gdtoa+0xf60>
  40761d:	f2 0f 10 1d cb 3f 00 	movsd  0x3fcb(%rip),%xmm3        # 40b5f0 <.rdata+0x60>
  407624:	00 
  407625:	eb 19                	jmp    407640 <__gdtoa+0xe00>
  407627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40762e:	00 00 
  407630:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  407637:	44 39 c0             	cmp    %r8d,%eax
  40763a:	0f 84 60 01 00 00    	je     4077a0 <__gdtoa+0xf60>
  407640:	f2 0f 59 c3          	mulsd  %xmm3,%xmm0
  407644:	83 c0 01             	add    $0x1,%eax
  407647:	48 83 c7 01          	add    $0x1,%rdi
  40764b:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  407652:	66 0f 28 c8          	movapd %xmm0,%xmm1
  407656:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
  40765a:	f2 0f 2c d1          	cvttsd2si %xmm1,%edx
  40765e:	66 0f ef c9          	pxor   %xmm1,%xmm1
  407662:	f2 0f 2a ca          	cvtsi2sd %edx,%xmm1
  407666:	8d 42 30             	lea    0x30(%rdx),%eax
  407669:	88 47 ff             	mov    %al,-0x1(%rdi)
  40766c:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  407670:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  407674:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
  407678:	7a b6                	jp     407630 <__gdtoa+0xdf0>
  40767a:	75 b4                	jne    407630 <__gdtoa+0xdf0>
  40767c:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
  407683:	00 
  407684:	e9 9f f8 ff ff       	jmpq   406f28 <__gdtoa+0x6e8>
  407689:	48 8b 4c 24 30       	mov    0x30(%rsp),%rcx
  40768e:	45 31 c0             	xor    %r8d,%r8d
  407691:	ba 05 00 00 00       	mov    $0x5,%edx
  407696:	e8 15 0b 00 00       	callq  4081b0 <__multadd_D2A>
  40769b:	4c 89 f1             	mov    %r14,%rcx
  40769e:	48 89 c2             	mov    %rax,%rdx
  4076a1:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  4076a6:	e8 95 0f 00 00       	callq  408640 <__cmp_D2A>
  4076ab:	85 c0                	test   %eax,%eax
  4076ad:	0f 8e b4 fa ff ff    	jle    407167 <__gdtoa+0x927>
  4076b3:	8b 5c 24 2c          	mov    0x2c(%rsp),%ebx
  4076b7:	83 c3 02             	add    $0x2,%ebx
  4076ba:	e9 42 f8 ff ff       	jmpq   406f01 <__gdtoa+0x6c1>
  4076bf:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4076c6:	00 00 
  4076c8:	31 f6                	xor    %esi,%esi
  4076ca:	e9 98 fa ff ff       	jmpq   407167 <__gdtoa+0x927>
  4076cf:	c7 84 24 8c 00 00 00 	movl   $0x1,0x8c(%rsp)
  4076d6:	01 00 00 00 
  4076da:	b9 01 00 00 00       	mov    $0x1,%ecx
  4076df:	e9 0e f5 ff ff       	jmpq   406bf2 <__gdtoa+0x3b2>
  4076e4:	66 0f 28 c2          	movapd %xmm2,%xmm0
  4076e8:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  4076ec:	f2 0f 58 05 0c 3f 00 	addsd  0x3f0c(%rip),%xmm0        # 40b600 <.rdata+0x70>
  4076f3:	00 
  4076f4:	66 48 0f 7e c2       	movq   %xmm0,%rdx
  4076f9:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4076fe:	48 c1 ea 20          	shr    $0x20,%rdx
  407702:	89 c0                	mov    %eax,%eax
  407704:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
  40770a:	48 c1 e2 20          	shl    $0x20,%rdx
  40770e:	48 09 d0             	or     %rdx,%rax
  407711:	66 0f 28 ca          	movapd %xmm2,%xmm1
  407715:	f2 0f 5c 0d eb 3e 00 	subsd  0x3eeb(%rip),%xmm1        # 40b608 <.rdata+0x78>
  40771c:	00 
  40771d:	66 48 0f 6e c0       	movq   %rax,%xmm0
  407722:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
  407726:	0f 87 d7 00 00 00    	ja     407803 <__gdtoa+0xfc3>
  40772c:	66 0f 57 05 dc 3e 00 	xorpd  0x3edc(%rip),%xmm0        # 40b610 <.rdata+0x80>
  407733:	00 
  407734:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  407738:	77 85                	ja     4076bf <__gdtoa+0xe7f>
  40773a:	66 49 0f 7e d2       	movq   %xmm2,%r10
  40773f:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
  407746:	00 
  407747:	e9 44 f7 ff ff       	jmpq   406e90 <__gdtoa+0x650>
  40774c:	8b 54 24 30          	mov    0x30(%rsp),%edx
  407750:	4c 89 f1             	mov    %r14,%rcx
  407753:	e8 68 0c 00 00       	callq  4083c0 <__pow5mult_D2A>
  407758:	49 89 c6             	mov    %rax,%r14
  40775b:	e9 40 f9 ff ff       	jmpq   4070a0 <__gdtoa+0x860>
  407760:	89 fa                	mov    %edi,%edx
  407762:	48 89 f1             	mov    %rsi,%rcx
  407765:	89 44 24 30          	mov    %eax,0x30(%rsp)
  407769:	e8 52 0c 00 00       	callq  4083c0 <__pow5mult_D2A>
  40776e:	4c 89 f2             	mov    %r14,%rdx
  407771:	48 89 c1             	mov    %rax,%rcx
  407774:	48 89 c6             	mov    %rax,%rsi
  407777:	e8 14 0b 00 00       	callq  408290 <__mult_D2A>
  40777c:	4c 89 f1             	mov    %r14,%rcx
  40777f:	48 89 c7             	mov    %rax,%rdi
  407782:	e8 b9 09 00 00       	callq  408140 <__Bfree_D2A>
  407787:	44 8b 44 24 30       	mov    0x30(%rsp),%r8d
  40778c:	49 89 fe             	mov    %rdi,%r14
  40778f:	45 85 c0             	test   %r8d,%r8d
  407792:	0f 84 08 f9 ff ff    	je     4070a0 <__gdtoa+0x860>
  407798:	e9 eb f8 ff ff       	jmpq   407088 <__gdtoa+0x848>
  40779d:	0f 1f 00             	nopl   (%rax)
  4077a0:	8b 44 24 58          	mov    0x58(%rsp),%eax
  4077a4:	85 c0                	test   %eax,%eax
  4077a6:	0f 84 f6 03 00 00    	je     407ba2 <__gdtoa+0x1362>
  4077ac:	83 f8 01             	cmp    $0x1,%eax
  4077af:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  4077b6:	00 
  4077b7:	0f 85 6b f7 ff ff    	jne    406f28 <__gdtoa+0x6e8>
  4077bd:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
  4077c1:	eb 10                	jmp    4077d3 <__gdtoa+0xf93>
  4077c3:	4c 39 fa             	cmp    %r15,%rdx
  4077c6:	0f 84 68 03 00 00    	je     407b34 <__gdtoa+0x12f4>
  4077cc:	0f b6 42 ff          	movzbl -0x1(%rdx),%eax
  4077d0:	48 89 d7             	mov    %rdx,%rdi
  4077d3:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
  4077d7:	3c 39                	cmp    $0x39,%al
  4077d9:	74 e8                	je     4077c3 <__gdtoa+0xf83>
  4077db:	83 c0 01             	add    $0x1,%eax
  4077de:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  4077e5:	00 
  4077e6:	88 02                	mov    %al,(%rdx)
  4077e8:	e9 3b f7 ff ff       	jmpq   406f28 <__gdtoa+0x6e8>
  4077ed:	83 44 24 2c 01       	addl   $0x1,0x2c(%rsp)
  4077f2:	41 c6 07 31          	movb   $0x31,(%r15)
  4077f6:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  4077fd:	00 
  4077fe:	e9 77 fd ff ff       	jmpq   40757a <__gdtoa+0xd3a>
  407803:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  40780a:	00 00 
  40780c:	bb 02 00 00 00       	mov    $0x2,%ebx
  407811:	31 f6                	xor    %esi,%esi
  407813:	e9 e9 f6 ff ff       	jmpq   406f01 <__gdtoa+0x6c1>
  407818:	f2 0f 59 eb          	mulsd  %xmm3,%xmm5
  40781c:	4c 89 ff             	mov    %r15,%rdi
  40781f:	31 c9                	xor    %ecx,%ecx
  407821:	f2 0f 10 1d c7 3d 00 	movsd  0x3dc7(%rip),%xmm3        # 40b5f0 <.rdata+0x60>
  407828:	00 
  407829:	c7 84 24 8c 00 00 00 	movl   $0x1,0x8c(%rsp)
  407830:	01 00 00 00 
  407834:	66 0f 28 c8          	movapd %xmm0,%xmm1
  407838:	eb 17                	jmp    407851 <__gdtoa+0x1011>
  40783a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407840:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
  407844:	83 c2 01             	add    $0x1,%edx
  407847:	44 89 c1             	mov    %r8d,%ecx
  40784a:	89 94 24 8c 00 00 00 	mov    %edx,0x8c(%rsp)
  407851:	f2 0f 2c c1          	cvttsd2si %xmm1,%eax
  407855:	85 c0                	test   %eax,%eax
  407857:	74 0f                	je     407868 <__gdtoa+0x1028>
  407859:	66 0f ef e4          	pxor   %xmm4,%xmm4
  40785d:	f2 0f 2a e0          	cvtsi2sd %eax,%xmm4
  407861:	44 89 c1             	mov    %r8d,%ecx
  407864:	f2 0f 5c cc          	subsd  %xmm4,%xmm1
  407868:	48 83 c7 01          	add    $0x1,%rdi
  40786c:	83 c0 30             	add    $0x30,%eax
  40786f:	88 47 ff             	mov    %al,-0x1(%rdi)
  407872:	8b 94 24 8c 00 00 00 	mov    0x8c(%rsp),%edx
  407879:	44 39 da             	cmp    %r11d,%edx
  40787c:	75 c2                	jne    407840 <__gdtoa+0x1000>
  40787e:	84 c9                	test   %cl,%cl
  407880:	0f 85 3a 05 00 00    	jne    407dc0 <__gdtoa+0x1580>
  407886:	f2 0f 10 0d 92 3d 00 	movsd  0x3d92(%rip),%xmm1        # 40b620 <.rdata+0x90>
  40788d:	00 
  40788e:	66 0f 28 dd          	movapd %xmm5,%xmm3
  407892:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
  407896:	66 0f 2e c3          	ucomisd %xmm3,%xmm0
  40789a:	0f 87 b4 01 00 00    	ja     407a54 <__gdtoa+0x1214>
  4078a0:	f2 0f 5c cd          	subsd  %xmm5,%xmm1
  4078a4:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
  4078a8:	0f 86 8c fe ff ff    	jbe    40773a <__gdtoa+0xefa>
  4078ae:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
  4078b2:	7a 06                	jp     4078ba <__gdtoa+0x107a>
  4078b4:	0f 84 94 04 00 00    	je     407d4e <__gdtoa+0x150e>
  4078ba:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  4078c1:	00 
  4078c2:	41 8d 4a 01          	lea    0x1(%r10),%ecx
  4078c6:	eb 0b                	jmp    4078d3 <__gdtoa+0x1093>
  4078c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4078cf:	00 
  4078d0:	48 89 c7             	mov    %rax,%rdi
  4078d3:	80 7f ff 30          	cmpb   $0x30,-0x1(%rdi)
  4078d7:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
  4078db:	74 f3                	je     4078d0 <__gdtoa+0x1090>
  4078dd:	89 cb                	mov    %ecx,%ebx
  4078df:	e9 44 f6 ff ff       	jmpq   406f28 <__gdtoa+0x6e8>
  4078e4:	4c 89 f1             	mov    %r14,%rcx
  4078e7:	ba 01 00 00 00       	mov    $0x1,%edx
  4078ec:	e8 4f 0c 00 00       	callq  408540 <__lshift_D2A>
  4078f1:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  4078f6:	48 89 c1             	mov    %rax,%rcx
  4078f9:	49 89 c6             	mov    %rax,%r14
  4078fc:	e8 3f 0d 00 00       	callq  408640 <__cmp_D2A>
  407901:	0f b6 57 ff          	movzbl -0x1(%rdi),%edx
  407905:	83 f8 00             	cmp    $0x0,%eax
  407908:	0f 8f 56 fc ff ff    	jg     407564 <__gdtoa+0xd24>
  40790e:	75 09                	jne    407919 <__gdtoa+0x10d9>
  407910:	83 e5 01             	and    $0x1,%ebp
  407913:	0f 85 4b fc ff ff    	jne    407564 <__gdtoa+0xd24>
  407919:	41 8b 46 14          	mov    0x14(%r14),%eax
  40791d:	83 f8 01             	cmp    $0x1,%eax
  407920:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407927:	00 
  407928:	7f 0d                	jg     407937 <__gdtoa+0x10f7>
  40792a:	e9 99 03 00 00       	jmpq   407cc8 <__gdtoa+0x1488>
  40792f:	90                   	nop
  407930:	0f b6 57 fe          	movzbl -0x2(%rdi),%edx
  407934:	48 89 c7             	mov    %rax,%rdi
  407937:	48 8d 47 ff          	lea    -0x1(%rdi),%rax
  40793b:	80 fa 30             	cmp    $0x30,%dl
  40793e:	74 f0                	je     407930 <__gdtoa+0x10f0>
  407940:	e9 35 fc ff ff       	jmpq   40757a <__gdtoa+0xd3a>
  407945:	8b 54 24 58          	mov    0x58(%rsp),%edx
  407949:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  40794e:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  407953:	4c 8b a4 24 08 01 00 	mov    0x108(%rsp),%r12
  40795a:	00 
  40795b:	89 7c 24 5c          	mov    %edi,0x5c(%rsp)
  40795f:	4c 8b 7c 24 48       	mov    0x48(%rsp),%r15
  407964:	85 d2                	test   %edx,%edx
  407966:	0f 84 62 02 00 00    	je     407bce <__gdtoa+0x138e>
  40796c:	41 83 7e 14 01       	cmpl   $0x1,0x14(%r14)
  407971:	0f 8e ae 03 00 00    	jle    407d25 <__gdtoa+0x14e5>
  407977:	83 7c 24 58 02       	cmpl   $0x2,0x58(%rsp)
  40797c:	0f 84 dd 03 00 00    	je     407d5f <__gdtoa+0x151f>
  407982:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
  407987:	4c 89 a4 24 08 01 00 	mov    %r12,0x108(%rsp)
  40798e:	00 
  40798f:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
  407994:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  407999:	eb 46                	jmp    4079e1 <__gdtoa+0x11a1>
  40799b:	45 31 c0             	xor    %r8d,%r8d
  40799e:	4c 89 e9             	mov    %r13,%rcx
  4079a1:	41 88 6c 24 ff       	mov    %bpl,-0x1(%r12)
  4079a6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4079ab:	e8 00 08 00 00       	callq  4081b0 <__multadd_D2A>
  4079b0:	4c 39 ee             	cmp    %r13,%rsi
  4079b3:	4c 89 f1             	mov    %r14,%rcx
  4079b6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4079bb:	48 0f 44 f0          	cmove  %rax,%rsi
  4079bf:	45 31 c0             	xor    %r8d,%r8d
  4079c2:	48 89 c7             	mov    %rax,%rdi
  4079c5:	e8 e6 07 00 00       	callq  4081b0 <__multadd_D2A>
  4079ca:	48 89 da             	mov    %rbx,%rdx
  4079cd:	49 89 fd             	mov    %rdi,%r13
  4079d0:	48 89 c1             	mov    %rax,%rcx
  4079d3:	49 89 c6             	mov    %rax,%r14
  4079d6:	4c 89 e7             	mov    %r12,%rdi
  4079d9:	e8 c2 ec ff ff       	callq  4066a0 <__quorem_D2A>
  4079de:	8d 68 30             	lea    0x30(%rax),%ebp
  4079e1:	4c 8d 67 01          	lea    0x1(%rdi),%r12
  4079e5:	4c 89 ea             	mov    %r13,%rdx
  4079e8:	48 89 d9             	mov    %rbx,%rcx
  4079eb:	e8 50 0c 00 00       	callq  408640 <__cmp_D2A>
  4079f0:	85 c0                	test   %eax,%eax
  4079f2:	7f a7                	jg     40799b <__gdtoa+0x115b>
  4079f4:	83 fd 39             	cmp    $0x39,%ebp
  4079f7:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
  4079fc:	4c 89 e3             	mov    %r12,%rbx
  4079ff:	4c 89 e7             	mov    %r12,%rdi
  407a02:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
  407a07:	4c 8b a4 24 08 01 00 	mov    0x108(%rsp),%r12
  407a0e:	00 
  407a0f:	0f 84 16 02 00 00    	je     407c2b <__gdtoa+0x13eb>
  407a15:	83 c5 01             	add    $0x1,%ebp
  407a18:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  407a1f:	00 
  407a20:	48 89 df             	mov    %rbx,%rdi
  407a23:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407a28:	49 89 f5             	mov    %rsi,%r13
  407a2b:	40 88 28             	mov    %bpl,(%rax)
  407a2e:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  407a33:	e9 42 fb ff ff       	jmpq   40757a <__gdtoa+0xd3a>
  407a38:	c7 84 24 8c 00 00 00 	movl   $0x0,0x8c(%rsp)
  407a3f:	00 00 00 00 
  407a43:	8b 44 24 48          	mov    0x48(%rsp),%eax
  407a47:	2b 44 24 38          	sub    0x38(%rsp),%eax
  407a4b:	89 44 24 50          	mov    %eax,0x50(%rsp)
  407a4f:	e9 d8 f5 ff ff       	jmpq   40702c <__gdtoa+0x7ec>
  407a54:	41 8d 5a 01          	lea    0x1(%r10),%ebx
  407a58:	e9 76 fd ff ff       	jmpq   4077d3 <__gdtoa+0xf93>
  407a5d:	8b 45 04             	mov    0x4(%rbp),%eax
  407a60:	83 c0 01             	add    $0x1,%eax
  407a63:	39 84 24 f8 00 00 00 	cmp    %eax,0xf8(%rsp)
  407a6a:	0f 8e d6 f7 ff ff    	jle    407246 <__gdtoa+0xa06>
  407a70:	8b 44 24 64          	mov    0x64(%rsp),%eax
  407a74:	c7 44 24 64 01 00 00 	movl   $0x1,0x64(%rsp)
  407a7b:	00 
  407a7c:	83 44 24 48 01       	addl   $0x1,0x48(%rsp)
  407a81:	83 44 24 40 01       	addl   $0x1,0x40(%rsp)
  407a86:	85 c0                	test   %eax,%eax
  407a88:	0f 85 c0 f7 ff ff    	jne    40724e <__gdtoa+0xa0e>
  407a8e:	e9 4a f6 ff ff       	jmpq   4070dd <__gdtoa+0x89d>
  407a93:	8b 4e 08             	mov    0x8(%rsi),%ecx
  407a96:	e8 a5 05 00 00       	callq  408040 <__Balloc_D2A>
  407a9b:	48 8d 56 10          	lea    0x10(%rsi),%rdx
  407a9f:	48 8d 48 10          	lea    0x10(%rax),%rcx
  407aa3:	48 89 c5             	mov    %rax,%rbp
  407aa6:	48 63 46 14          	movslq 0x14(%rsi),%rax
  407aaa:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
  407ab1:	00 
  407ab2:	e8 31 15 00 00       	callq  408fe8 <memcpy>
  407ab7:	ba 01 00 00 00       	mov    $0x1,%edx
  407abc:	48 89 e9             	mov    %rbp,%rcx
  407abf:	e8 7c 0a 00 00       	callq  408540 <__lshift_D2A>
  407ac4:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  407ac9:	e9 d8 f7 ff ff       	jmpq   4072a6 <__gdtoa+0xa66>
  407ace:	8b 4c 24 38          	mov    0x38(%rsp),%ecx
  407ad2:	85 c9                	test   %ecx,%ecx
  407ad4:	0f 84 0a fc ff ff    	je     4076e4 <__gdtoa+0xea4>
  407ada:	44 8b 5c 24 7c       	mov    0x7c(%rsp),%r11d
  407adf:	45 85 db             	test   %r11d,%r11d
  407ae2:	0f 8e 52 fc ff ff    	jle    40773a <__gdtoa+0xefa>
  407ae8:	f2 0f 10 1d 00 3b 00 	movsd  0x3b00(%rip),%xmm3        # 40b5f0 <.rdata+0x60>
  407aef:	00 
  407af0:	41 ba ff ff ff ff    	mov    $0xffffffff,%r10d
  407af6:	f2 0f 10 0d fa 3a 00 	movsd  0x3afa(%rip),%xmm1        # 40b5f8 <.rdata+0x68>
  407afd:	00 
  407afe:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
  407b02:	f2 0f 59 cb          	mulsd  %xmm3,%xmm1
  407b06:	66 0f 28 c3          	movapd %xmm3,%xmm0
  407b0a:	f2 0f 58 0d ee 3a 00 	addsd  0x3aee(%rip),%xmm1        # 40b600 <.rdata+0x70>
  407b11:	00 
  407b12:	66 48 0f 7e ca       	movq   %xmm1,%rdx
  407b17:	66 48 0f 7e c8       	movq   %xmm1,%rax
  407b1c:	48 c1 ea 20          	shr    $0x20,%rdx
  407b20:	89 c0                	mov    %eax,%eax
  407b22:	81 ea 00 00 40 03    	sub    $0x3400000,%edx
  407b28:	48 c1 e2 20          	shl    $0x20,%rdx
  407b2c:	48 09 d0             	or     %rdx,%rax
  407b2f:	e9 9f f1 ff ff       	jmpq   406cd3 <__gdtoa+0x493>
  407b34:	41 c6 07 30          	movb   $0x30,(%r15)
  407b38:	83 c3 01             	add    $0x1,%ebx
  407b3b:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
  407b3f:	4c 89 fa             	mov    %r15,%rdx
  407b42:	e9 94 fc ff ff       	jmpq   4077db <__gdtoa+0xf9b>
  407b47:	83 fd 39             	cmp    $0x39,%ebp
  407b4a:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  407b4f:	4c 8b a4 24 08 01 00 	mov    0x108(%rsp),%r12
  407b56:	00 
  407b57:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  407b5c:	4c 8b 7c 24 48       	mov    0x48(%rsp),%r15
  407b61:	0f 84 c4 00 00 00    	je     407c2b <__gdtoa+0x13eb>
  407b67:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407b6c:	83 c5 01             	add    $0x1,%ebp
  407b6f:	49 89 f5             	mov    %rsi,%r13
  407b72:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  407b79:	00 
  407b7a:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  407b7f:	40 88 28             	mov    %bpl,(%rax)
  407b82:	e9 f3 f9 ff ff       	jmpq   40757a <__gdtoa+0xd3a>
  407b87:	4c 89 e0             	mov    %r12,%rax
  407b8a:	49 89 f5             	mov    %rsi,%r13
  407b8d:	4c 8b 7c 24 48       	mov    0x48(%rsp),%r15
  407b92:	4c 8b a4 24 08 01 00 	mov    0x108(%rsp),%r12
  407b99:	00 
  407b9a:	48 89 c6             	mov    %rax,%rsi
  407b9d:	e9 8b f9 ff ff       	jmpq   40752d <__gdtoa+0xced>
  407ba2:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
  407ba6:	0f b6 47 ff          	movzbl -0x1(%rdi),%eax
  407baa:	66 0f 2e c2          	ucomisd %xmm2,%xmm0
  407bae:	0f 87 1f fc ff ff    	ja     4077d3 <__gdtoa+0xf93>
  407bb4:	7a 0b                	jp     407bc1 <__gdtoa+0x1381>
  407bb6:	75 09                	jne    407bc1 <__gdtoa+0x1381>
  407bb8:	80 e2 01             	and    $0x1,%dl
  407bbb:	0f 85 12 fc ff ff    	jne    4077d3 <__gdtoa+0xf93>
  407bc1:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407bc8:	00 
  407bc9:	e9 05 fd ff ff       	jmpq   4078d3 <__gdtoa+0x1093>
  407bce:	85 db                	test   %ebx,%ebx
  407bd0:	0f 8f 8a 00 00 00    	jg     407c60 <__gdtoa+0x1420>
  407bd6:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407bdb:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407be2:	00 
  407be3:	41 83 7e 14 01       	cmpl   $0x1,0x14(%r14)
  407be8:	48 8d 58 01          	lea    0x1(%rax),%rbx
  407bec:	0f 8f 2e fe ff ff    	jg     407a20 <__gdtoa+0x11e0>
  407bf2:	41 83 7e 18 00       	cmpl   $0x0,0x18(%r14)
  407bf7:	8b 44 24 58          	mov    0x58(%rsp),%eax
  407bfb:	0f 45 44 24 50       	cmovne 0x50(%rsp),%eax
  407c00:	89 44 24 50          	mov    %eax,0x50(%rsp)
  407c04:	e9 17 fe ff ff       	jmpq   407a20 <__gdtoa+0x11e0>
  407c09:	41 8b 46 18          	mov    0x18(%r14),%eax
  407c0d:	85 c0                	test   %eax,%eax
  407c0f:	0f 85 4f f9 ff ff    	jne    407564 <__gdtoa+0xd24>
  407c15:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
  407c1c:	00 
  407c1d:	e9 15 fd ff ff       	jmpq   407937 <__gdtoa+0x10f7>
  407c22:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407c27:	48 8d 78 01          	lea    0x1(%rax),%rdi
  407c2b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407c30:	49 89 f5             	mov    %rsi,%r13
  407c33:	ba 39 00 00 00       	mov    $0x39,%edx
  407c38:	48 8b 74 24 40       	mov    0x40(%rsp),%rsi
  407c3d:	c6 00 39             	movb   $0x39,(%rax)
  407c40:	e9 1f f9 ff ff       	jmpq   407564 <__gdtoa+0xd24>
  407c45:	8b 45 04             	mov    0x4(%rbp),%eax
  407c48:	83 c0 01             	add    $0x1,%eax
  407c4b:	39 84 24 f8 00 00 00 	cmp    %eax,0xf8(%rsp)
  407c52:	0f 8f 18 fe ff ff    	jg     407a70 <__gdtoa+0x1230>
  407c58:	e9 80 f4 ff ff       	jmpq   4070dd <__gdtoa+0x89d>
  407c5d:	0f 1f 00             	nopl   (%rax)
  407c60:	4c 89 f1             	mov    %r14,%rcx
  407c63:	ba 01 00 00 00       	mov    $0x1,%edx
  407c68:	e8 d3 08 00 00       	callq  408540 <__lshift_D2A>
  407c6d:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  407c72:	48 89 c1             	mov    %rax,%rcx
  407c75:	49 89 c6             	mov    %rax,%r14
  407c78:	e8 c3 09 00 00       	callq  408640 <__cmp_D2A>
  407c7d:	83 f8 00             	cmp    $0x0,%eax
  407c80:	0f 8e ef 00 00 00    	jle    407d75 <__gdtoa+0x1535>
  407c86:	83 fd 39             	cmp    $0x39,%ebp
  407c89:	74 97                	je     407c22 <__gdtoa+0x13e2>
  407c8b:	8b 6c 24 5c          	mov    0x5c(%rsp),%ebp
  407c8f:	c7 44 24 58 20 00 00 	movl   $0x20,0x58(%rsp)
  407c96:	00 
  407c97:	83 c5 31             	add    $0x31,%ebp
  407c9a:	e9 37 ff ff ff       	jmpq   407bd6 <__gdtoa+0x1396>
  407c9f:	45 31 c0             	xor    %r8d,%r8d
  407ca2:	48 89 f1             	mov    %rsi,%rcx
  407ca5:	ba 0a 00 00 00       	mov    $0xa,%edx
  407caa:	e8 01 05 00 00       	callq  4081b0 <__multadd_D2A>
  407caf:	40 84 ff             	test   %dil,%dil
  407cb2:	48 89 c6             	mov    %rax,%rsi
  407cb5:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  407cb9:	89 44 24 38          	mov    %eax,0x38(%rsp)
  407cbd:	0f 85 96 f4 ff ff    	jne    407159 <__gdtoa+0x919>
  407cc3:	e9 b6 f5 ff ff       	jmpq   40727e <__gdtoa+0xa3e>
  407cc8:	41 83 7e 18 01       	cmpl   $0x1,0x18(%r14)
  407ccd:	19 c0                	sbb    %eax,%eax
  407ccf:	f7 d0                	not    %eax
  407cd1:	83 e0 10             	and    $0x10,%eax
  407cd4:	89 44 24 50          	mov    %eax,0x50(%rsp)
  407cd8:	e9 5a fc ff ff       	jmpq   407937 <__gdtoa+0x10f7>
  407cdd:	4c 89 f8             	mov    %r15,%rax
  407ce0:	83 fd 39             	cmp    $0x39,%ebp
  407ce3:	89 7c 24 5c          	mov    %edi,0x5c(%rsp)
  407ce7:	4c 89 64 24 40       	mov    %r12,0x40(%rsp)
  407cec:	48 8d 78 01          	lea    0x1(%rax),%rdi
  407cf0:	4c 8b a4 24 08 01 00 	mov    0x108(%rsp),%r12
  407cf7:	00 
  407cf8:	4c 89 7c 24 38       	mov    %r15,0x38(%rsp)
  407cfd:	4c 8b 7c 24 48       	mov    0x48(%rsp),%r15
  407d02:	89 54 24 50          	mov    %edx,0x50(%rsp)
  407d06:	0f 84 1f ff ff ff    	je     407c2b <__gdtoa+0x13eb>
  407d0c:	45 85 ed             	test   %r13d,%r13d
  407d0f:	7e 7d                	jle    407d8e <__gdtoa+0x154e>
  407d11:	8b 6c 24 5c          	mov    0x5c(%rsp),%ebp
  407d15:	c7 44 24 50 20 00 00 	movl   $0x20,0x50(%rsp)
  407d1c:	00 
  407d1d:	83 c5 31             	add    $0x31,%ebp
  407d20:	e9 fe fc ff ff       	jmpq   407a23 <__gdtoa+0x11e3>
  407d25:	41 83 7e 18 00       	cmpl   $0x0,0x18(%r14)
  407d2a:	0f 85 47 fc ff ff    	jne    407977 <__gdtoa+0x1137>
  407d30:	85 db                	test   %ebx,%ebx
  407d32:	0f 8f 28 ff ff ff    	jg     407c60 <__gdtoa+0x1420>
  407d38:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407d3d:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
  407d44:	00 
  407d45:	48 8d 58 01          	lea    0x1(%rax),%rbx
  407d49:	e9 d2 fc ff ff       	jmpq   407a20 <__gdtoa+0x11e0>
  407d4e:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%rsp)
  407d55:	00 
  407d56:	41 8d 4a 01          	lea    0x1(%r10),%ecx
  407d5a:	e9 74 fb ff ff       	jmpq   4078d3 <__gdtoa+0x1093>
  407d5f:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  407d64:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407d6b:	00 
  407d6c:	48 8d 58 01          	lea    0x1(%rax),%rbx
  407d70:	e9 ab fc ff ff       	jmpq   407a20 <__gdtoa+0x11e0>
  407d75:	75 0a                	jne    407d81 <__gdtoa+0x1541>
  407d77:	40 f6 c5 01          	test   $0x1,%bpl
  407d7b:	0f 85 05 ff ff ff    	jne    407c86 <__gdtoa+0x1446>
  407d81:	c7 44 24 58 20 00 00 	movl   $0x20,0x58(%rsp)
  407d88:	00 
  407d89:	e9 48 fe ff ff       	jmpq   407bd6 <__gdtoa+0x1396>
  407d8e:	41 83 7e 14 01       	cmpl   $0x1,0x14(%r14)
  407d93:	7e 0d                	jle    407da2 <__gdtoa+0x1562>
  407d95:	c7 44 24 50 10 00 00 	movl   $0x10,0x50(%rsp)
  407d9c:	00 
  407d9d:	e9 81 fc ff ff       	jmpq   407a23 <__gdtoa+0x11e3>
  407da2:	41 83 7e 18 00       	cmpl   $0x0,0x18(%r14)
  407da7:	b8 10 00 00 00       	mov    $0x10,%eax
  407dac:	0f 44 c2             	cmove  %edx,%eax
  407daf:	89 44 24 50          	mov    %eax,0x50(%rsp)
  407db3:	e9 6b fc ff ff       	jmpq   407a23 <__gdtoa+0x11e3>
  407db8:	45 31 ff             	xor    %r15d,%r15d
  407dbb:	e9 c6 eb ff ff       	jmpq   406986 <__gdtoa+0x146>
  407dc0:	66 0f 28 c1          	movapd %xmm1,%xmm0
  407dc4:	e9 bd fa ff ff       	jmpq   407886 <__gdtoa+0x1046>
  407dc9:	90                   	nop
  407dca:	90                   	nop
  407dcb:	90                   	nop
  407dcc:	90                   	nop
  407dcd:	90                   	nop
  407dce:	90                   	nop
  407dcf:	90                   	nop

0000000000407dd0 <__rshift_D2A>:
  407dd0:	41 54                	push   %r12
  407dd2:	55                   	push   %rbp
  407dd3:	57                   	push   %rdi
  407dd4:	56                   	push   %rsi
  407dd5:	53                   	push   %rbx
  407dd6:	48 8d 79 18          	lea    0x18(%rcx),%rdi
  407dda:	49 89 c9             	mov    %rcx,%r9
  407ddd:	48 63 49 14          	movslq 0x14(%rcx),%rcx
  407de1:	89 d0                	mov    %edx,%eax
  407de3:	c1 f8 05             	sar    $0x5,%eax
  407de6:	39 c1                	cmp    %eax,%ecx
  407de8:	0f 8e 82 00 00 00    	jle    407e70 <__rshift_D2A+0xa0>
  407dee:	48 98                	cltq   
  407df0:	83 e2 1f             	and    $0x1f,%edx
  407df3:	48 89 fd             	mov    %rdi,%rbp
  407df6:	4c 8d 1c 8f          	lea    (%rdi,%rcx,4),%r11
  407dfa:	48 8d 1c 87          	lea    (%rdi,%rax,4),%rbx
  407dfe:	0f 84 8c 00 00 00    	je     407e90 <__rshift_D2A+0xc0>
  407e04:	44 8b 13             	mov    (%rbx),%r10d
  407e07:	4c 8d 43 04          	lea    0x4(%rbx),%r8
  407e0b:	41 bc 20 00 00 00    	mov    $0x20,%r12d
  407e11:	89 d1                	mov    %edx,%ecx
  407e13:	41 29 d4             	sub    %edx,%r12d
  407e16:	41 d3 ea             	shr    %cl,%r10d
  407e19:	4d 39 c3             	cmp    %r8,%r11
  407e1c:	76 37                	jbe    407e55 <__rshift_D2A+0x85>
  407e1e:	48 89 fe             	mov    %rdi,%rsi
  407e21:	41 8b 00             	mov    (%r8),%eax
  407e24:	44 89 e1             	mov    %r12d,%ecx
  407e27:	48 83 c6 04          	add    $0x4,%rsi
  407e2b:	49 83 c0 04          	add    $0x4,%r8
  407e2f:	d3 e0                	shl    %cl,%eax
  407e31:	89 d1                	mov    %edx,%ecx
  407e33:	44 09 d0             	or     %r10d,%eax
  407e36:	89 46 fc             	mov    %eax,-0x4(%rsi)
  407e39:	45 8b 50 fc          	mov    -0x4(%r8),%r10d
  407e3d:	41 d3 ea             	shr    %cl,%r10d
  407e40:	4d 39 c3             	cmp    %r8,%r11
  407e43:	77 dc                	ja     407e21 <__rshift_D2A+0x51>
  407e45:	49 29 db             	sub    %rbx,%r11
  407e48:	49 8d 43 fb          	lea    -0x5(%r11),%rax
  407e4c:	48 c1 e8 02          	shr    $0x2,%rax
  407e50:	48 8d 7c 87 04       	lea    0x4(%rdi,%rax,4),%rdi
  407e55:	45 85 d2             	test   %r10d,%r10d
  407e58:	44 89 17             	mov    %r10d,(%rdi)
  407e5b:	74 04                	je     407e61 <__rshift_D2A+0x91>
  407e5d:	48 83 c7 04          	add    $0x4,%rdi
  407e61:	48 29 ef             	sub    %rbp,%rdi
  407e64:	48 c1 ff 02          	sar    $0x2,%rdi
  407e68:	eb 4a                	jmp    407eb4 <__rshift_D2A+0xe4>
  407e6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  407e70:	41 c7 41 14 00 00 00 	movl   $0x0,0x14(%r9)
  407e77:	00 
  407e78:	41 c7 41 18 00 00 00 	movl   $0x0,0x18(%r9)
  407e7f:	00 
  407e80:	5b                   	pop    %rbx
  407e81:	5e                   	pop    %rsi
  407e82:	5f                   	pop    %rdi
  407e83:	5d                   	pop    %rbp
  407e84:	41 5c                	pop    %r12
  407e86:	c3                   	retq   
  407e87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  407e8e:	00 00 
  407e90:	49 39 db             	cmp    %rbx,%r11
  407e93:	48 89 de             	mov    %rbx,%rsi
  407e96:	76 d8                	jbe    407e70 <__rshift_D2A+0xa0>
  407e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407e9f:	00 
  407ea0:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  407ea1:	49 39 f3             	cmp    %rsi,%r11
  407ea4:	77 fa                	ja     407ea0 <__rshift_D2A+0xd0>
  407ea6:	48 f7 d3             	not    %rbx
  407ea9:	4a 8d 04 1b          	lea    (%rbx,%r11,1),%rax
  407ead:	48 c1 e8 02          	shr    $0x2,%rax
  407eb1:	8d 78 01             	lea    0x1(%rax),%edi
  407eb4:	85 ff                	test   %edi,%edi
  407eb6:	41 89 79 14          	mov    %edi,0x14(%r9)
  407eba:	74 bc                	je     407e78 <__rshift_D2A+0xa8>
  407ebc:	5b                   	pop    %rbx
  407ebd:	5e                   	pop    %rsi
  407ebe:	5f                   	pop    %rdi
  407ebf:	5d                   	pop    %rbp
  407ec0:	41 5c                	pop    %r12
  407ec2:	c3                   	retq   
  407ec3:	0f 1f 00             	nopl   (%rax)
  407ec6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407ecd:	00 00 00 

0000000000407ed0 <__trailz_D2A>:
  407ed0:	48 63 41 14          	movslq 0x14(%rcx),%rax
  407ed4:	48 8d 51 18          	lea    0x18(%rcx),%rdx
  407ed8:	4c 8d 04 82          	lea    (%rdx,%rax,4),%r8
  407edc:	4c 39 c2             	cmp    %r8,%rdx
  407edf:	73 2f                	jae    407f10 <__trailz_D2A+0x40>
  407ee1:	8b 49 18             	mov    0x18(%rcx),%ecx
  407ee4:	31 c0                	xor    %eax,%eax
  407ee6:	85 c9                	test   %ecx,%ecx
  407ee8:	74 0c                	je     407ef6 <__trailz_D2A+0x26>
  407eea:	eb 17                	jmp    407f03 <__trailz_D2A+0x33>
  407eec:	0f 1f 40 00          	nopl   0x0(%rax)
  407ef0:	8b 0a                	mov    (%rdx),%ecx
  407ef2:	85 c9                	test   %ecx,%ecx
  407ef4:	75 0d                	jne    407f03 <__trailz_D2A+0x33>
  407ef6:	48 83 c2 04          	add    $0x4,%rdx
  407efa:	83 c0 20             	add    $0x20,%eax
  407efd:	49 39 d0             	cmp    %rdx,%r8
  407f00:	77 ee                	ja     407ef0 <__trailz_D2A+0x20>
  407f02:	c3                   	retq   
  407f03:	0f bc c9             	bsf    %ecx,%ecx
  407f06:	01 c8                	add    %ecx,%eax
  407f08:	c3                   	retq   
  407f09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  407f10:	31 c0                	xor    %eax,%eax
  407f12:	c3                   	retq   
  407f13:	90                   	nop
  407f14:	90                   	nop
  407f15:	90                   	nop
  407f16:	90                   	nop
  407f17:	90                   	nop
  407f18:	90                   	nop
  407f19:	90                   	nop
  407f1a:	90                   	nop
  407f1b:	90                   	nop
  407f1c:	90                   	nop
  407f1d:	90                   	nop
  407f1e:	90                   	nop
  407f1f:	90                   	nop

0000000000407f20 <dtoa_lock>:
  407f20:	56                   	push   %rsi
  407f21:	53                   	push   %rbx
  407f22:	48 83 ec 28          	sub    $0x28,%rsp
  407f26:	8b 05 a4 73 00 00    	mov    0x73a4(%rip),%eax        # 40f2d0 <dtoa_CS_init>
  407f2c:	83 f8 02             	cmp    $0x2,%eax
  407f2f:	48 63 f1             	movslq %ecx,%rsi
  407f32:	74 38                	je     407f6c <dtoa_lock+0x4c>
  407f34:	85 c0                	test   %eax,%eax
  407f36:	74 58                	je     407f90 <dtoa_lock+0x70>
  407f38:	83 f8 01             	cmp    $0x1,%eax
  407f3b:	75 1e                	jne    407f5b <dtoa_lock+0x3b>
  407f3d:	48 8b 1d 60 85 00 00 	mov    0x8560(%rip),%rbx        # 4104a4 <__imp_Sleep>
  407f44:	b9 01 00 00 00       	mov    $0x1,%ecx
  407f49:	ff d3                	callq  *%rbx
  407f4b:	8b 05 7f 73 00 00    	mov    0x737f(%rip),%eax        # 40f2d0 <dtoa_CS_init>
  407f51:	83 f8 01             	cmp    $0x1,%eax
  407f54:	74 ee                	je     407f44 <dtoa_lock+0x24>
  407f56:	83 f8 02             	cmp    $0x2,%eax
  407f59:	74 11                	je     407f6c <dtoa_lock+0x4c>
  407f5b:	48 83 c4 28          	add    $0x28,%rsp
  407f5f:	5b                   	pop    %rbx
  407f60:	5e                   	pop    %rsi
  407f61:	c3                   	retq   
  407f62:	c7 05 64 73 00 00 02 	movl   $0x2,0x7364(%rip)        # 40f2d0 <dtoa_CS_init>
  407f69:	00 00 00 
  407f6c:	48 8d 14 b6          	lea    (%rsi,%rsi,4),%rdx
  407f70:	48 8d 05 69 73 00 00 	lea    0x7369(%rip),%rax        # 40f2e0 <dtoa_CritSec>
  407f77:	48 8d 0c d0          	lea    (%rax,%rdx,8),%rcx
  407f7b:	48 83 c4 28          	add    $0x28,%rsp
  407f7f:	5b                   	pop    %rbx
  407f80:	5e                   	pop    %rsi
  407f81:	48 ff 25 8c 84 00 00 	rex.W jmpq *0x848c(%rip)        # 410414 <__imp_EnterCriticalSection>
  407f88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  407f8f:	00 
  407f90:	b8 01 00 00 00       	mov    $0x1,%eax
  407f95:	87 05 35 73 00 00    	xchg   %eax,0x7335(%rip)        # 40f2d0 <dtoa_CS_init>
  407f9b:	85 c0                	test   %eax,%eax
  407f9d:	74 12                	je     407fb1 <dtoa_lock+0x91>
  407f9f:	83 f8 02             	cmp    $0x2,%eax
  407fa2:	74 be                	je     407f62 <dtoa_lock+0x42>
  407fa4:	8b 05 26 73 00 00    	mov    0x7326(%rip),%eax        # 40f2d0 <dtoa_CS_init>
  407faa:	83 f8 01             	cmp    $0x1,%eax
  407fad:	74 8e                	je     407f3d <dtoa_lock+0x1d>
  407faf:	eb a5                	jmp    407f56 <dtoa_lock+0x36>
  407fb1:	48 8d 0d 28 73 00 00 	lea    0x7328(%rip),%rcx        # 40f2e0 <dtoa_CritSec>
  407fb8:	48 8b 1d 95 84 00 00 	mov    0x8495(%rip),%rbx        # 410454 <__imp_InitializeCriticalSection>
  407fbf:	ff d3                	callq  *%rbx
  407fc1:	48 8d 0d 40 73 00 00 	lea    0x7340(%rip),%rcx        # 40f308 <dtoa_CritSec+0x28>
  407fc8:	ff d3                	callq  *%rbx
  407fca:	48 8d 0d 1f 00 00 00 	lea    0x1f(%rip),%rcx        # 407ff0 <dtoa_lock_cleanup>
  407fd1:	e8 3a 95 ff ff       	callq  401510 <atexit>
  407fd6:	c7 05 f0 72 00 00 02 	movl   $0x2,0x72f0(%rip)        # 40f2d0 <dtoa_CS_init>
  407fdd:	00 00 00 
  407fe0:	eb 8a                	jmp    407f6c <dtoa_lock+0x4c>
  407fe2:	0f 1f 40 00          	nopl   0x0(%rax)
  407fe6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  407fed:	00 00 00 

0000000000407ff0 <dtoa_lock_cleanup>:
  407ff0:	53                   	push   %rbx
  407ff1:	48 83 ec 20          	sub    $0x20,%rsp
  407ff5:	b8 03 00 00 00       	mov    $0x3,%eax
  407ffa:	87 05 d0 72 00 00    	xchg   %eax,0x72d0(%rip)        # 40f2d0 <dtoa_CS_init>
  408000:	83 f8 02             	cmp    $0x2,%eax
  408003:	74 0b                	je     408010 <dtoa_lock_cleanup+0x20>
  408005:	48 83 c4 20          	add    $0x20,%rsp
  408009:	5b                   	pop    %rbx
  40800a:	c3                   	retq   
  40800b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408010:	48 8b 1d f5 83 00 00 	mov    0x83f5(%rip),%rbx        # 41040c <__imp_DeleteCriticalSection>
  408017:	48 8d 0d c2 72 00 00 	lea    0x72c2(%rip),%rcx        # 40f2e0 <dtoa_CritSec>
  40801e:	ff d3                	callq  *%rbx
  408020:	48 8d 0d e1 72 00 00 	lea    0x72e1(%rip),%rcx        # 40f308 <dtoa_CritSec+0x28>
  408027:	48 89 d8             	mov    %rbx,%rax
  40802a:	48 83 c4 20          	add    $0x20,%rsp
  40802e:	5b                   	pop    %rbx
  40802f:	48 ff e0             	rex.W jmpq *%rax
  408032:	0f 1f 40 00          	nopl   0x0(%rax)
  408036:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40803d:	00 00 00 

0000000000408040 <__Balloc_D2A>:
  408040:	56                   	push   %rsi
  408041:	53                   	push   %rbx
  408042:	48 83 ec 38          	sub    $0x38,%rsp
  408046:	89 ce                	mov    %ecx,%esi
  408048:	31 c9                	xor    %ecx,%ecx
  40804a:	e8 d1 fe ff ff       	callq  407f20 <dtoa_lock>
  40804f:	83 fe 09             	cmp    $0x9,%esi
  408052:	7f 3c                	jg     408090 <__Balloc_D2A+0x50>
  408054:	48 8d 15 25 72 00 00 	lea    0x7225(%rip),%rdx        # 40f280 <freelist>
  40805b:	48 63 ce             	movslq %esi,%rcx
  40805e:	48 8b 04 ca          	mov    (%rdx,%rcx,8),%rax
  408062:	48 85 c0             	test   %rax,%rax
  408065:	74 79                	je     4080e0 <__Balloc_D2A+0xa0>
  408067:	4c 8b 00             	mov    (%rax),%r8
  40806a:	83 3d 5f 72 00 00 02 	cmpl   $0x2,0x725f(%rip)        # 40f2d0 <dtoa_CS_init>
  408071:	4c 89 04 ca          	mov    %r8,(%rdx,%rcx,8)
  408075:	75 55                	jne    4080cc <__Balloc_D2A+0x8c>
  408077:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  40807c:	48 8d 0d 5d 72 00 00 	lea    0x725d(%rip),%rcx        # 40f2e0 <dtoa_CritSec>
  408083:	ff 15 db 83 00 00    	callq  *0x83db(%rip)        # 410464 <__imp_LeaveCriticalSection>
  408089:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
  40808e:	eb 3c                	jmp    4080cc <__Balloc_D2A+0x8c>
  408090:	89 f1                	mov    %esi,%ecx
  408092:	bb 01 00 00 00       	mov    $0x1,%ebx
  408097:	d3 e3                	shl    %cl,%ebx
  408099:	8d 43 ff             	lea    -0x1(%rbx),%eax
  40809c:	48 98                	cltq   
  40809e:	48 8d 0c 85 27 00 00 	lea    0x27(,%rax,4),%rcx
  4080a5:	00 
  4080a6:	48 b8 f8 ff ff ff 07 	movabs $0x7fffffff8,%rax
  4080ad:	00 00 00 
  4080b0:	48 21 c1             	and    %rax,%rcx
  4080b3:	e8 38 0f 00 00       	callq  408ff0 <malloc>
  4080b8:	48 85 c0             	test   %rax,%rax
  4080bb:	74 17                	je     4080d4 <__Balloc_D2A+0x94>
  4080bd:	83 3d 0c 72 00 00 02 	cmpl   $0x2,0x720c(%rip)        # 40f2d0 <dtoa_CS_init>
  4080c4:	89 70 08             	mov    %esi,0x8(%rax)
  4080c7:	89 58 0c             	mov    %ebx,0xc(%rax)
  4080ca:	74 ab                	je     408077 <__Balloc_D2A+0x37>
  4080cc:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  4080d3:	00 
  4080d4:	48 83 c4 38          	add    $0x38,%rsp
  4080d8:	5b                   	pop    %rbx
  4080d9:	5e                   	pop    %rsi
  4080da:	c3                   	retq   
  4080db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4080e0:	48 8b 05 a9 1f 00 00 	mov    0x1fa9(%rip),%rax        # 40a090 <pmem_next>
  4080e7:	89 f1                	mov    %esi,%ecx
  4080e9:	bb 01 00 00 00       	mov    $0x1,%ebx
  4080ee:	d3 e3                	shl    %cl,%ebx
  4080f0:	8d 53 ff             	lea    -0x1(%rbx),%edx
  4080f3:	48 8d 0d 86 68 00 00 	lea    0x6886(%rip),%rcx        # 40e980 <private_mem>
  4080fa:	48 63 d2             	movslq %edx,%rdx
  4080fd:	48 8d 14 95 27 00 00 	lea    0x27(,%rdx,4),%rdx
  408104:	00 
  408105:	49 89 c1             	mov    %rax,%r9
  408108:	49 29 c9             	sub    %rcx,%r9
  40810b:	48 c1 ea 03          	shr    $0x3,%rdx
  40810f:	4c 89 c9             	mov    %r9,%rcx
  408112:	89 d2                	mov    %edx,%edx
  408114:	48 c1 f9 03          	sar    $0x3,%rcx
  408118:	48 01 d1             	add    %rdx,%rcx
  40811b:	48 81 f9 20 01 00 00 	cmp    $0x120,%rcx
  408122:	0f 87 68 ff ff ff    	ja     408090 <__Balloc_D2A+0x50>
  408128:	48 8d 14 d0          	lea    (%rax,%rdx,8),%rdx
  40812c:	48 89 15 5d 1f 00 00 	mov    %rdx,0x1f5d(%rip)        # 40a090 <pmem_next>
  408133:	eb 88                	jmp    4080bd <__Balloc_D2A+0x7d>
  408135:	90                   	nop
  408136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40813d:	00 00 00 

0000000000408140 <__Bfree_D2A>:
  408140:	53                   	push   %rbx
  408141:	48 83 ec 20          	sub    $0x20,%rsp
  408145:	48 85 c9             	test   %rcx,%rcx
  408148:	48 89 cb             	mov    %rcx,%rbx
  40814b:	74 2c                	je     408179 <__Bfree_D2A+0x39>
  40814d:	83 79 08 09          	cmpl   $0x9,0x8(%rcx)
  408151:	7f 2d                	jg     408180 <__Bfree_D2A+0x40>
  408153:	31 c9                	xor    %ecx,%ecx
  408155:	e8 c6 fd ff ff       	callq  407f20 <dtoa_lock>
  40815a:	48 63 53 08          	movslq 0x8(%rbx),%rdx
  40815e:	48 8d 05 1b 71 00 00 	lea    0x711b(%rip),%rax        # 40f280 <freelist>
  408165:	83 3d 64 71 00 00 02 	cmpl   $0x2,0x7164(%rip)        # 40f2d0 <dtoa_CS_init>
  40816c:	48 8b 0c d0          	mov    (%rax,%rdx,8),%rcx
  408170:	48 89 1c d0          	mov    %rbx,(%rax,%rdx,8)
  408174:	48 89 0b             	mov    %rcx,(%rbx)
  408177:	74 17                	je     408190 <__Bfree_D2A+0x50>
  408179:	48 83 c4 20          	add    $0x20,%rsp
  40817d:	5b                   	pop    %rbx
  40817e:	c3                   	retq   
  40817f:	90                   	nop
  408180:	48 83 c4 20          	add    $0x20,%rsp
  408184:	5b                   	pop    %rbx
  408185:	e9 7e 0e 00 00       	jmpq   409008 <free>
  40818a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408190:	48 8d 0d 49 71 00 00 	lea    0x7149(%rip),%rcx        # 40f2e0 <dtoa_CritSec>
  408197:	48 83 c4 20          	add    $0x20,%rsp
  40819b:	5b                   	pop    %rbx
  40819c:	48 ff 25 c1 82 00 00 	rex.W jmpq *0x82c1(%rip)        # 410464 <__imp_LeaveCriticalSection>
  4081a3:	0f 1f 00             	nopl   (%rax)
  4081a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4081ad:	00 00 00 

00000000004081b0 <__multadd_D2A>:
  4081b0:	55                   	push   %rbp
  4081b1:	57                   	push   %rdi
  4081b2:	56                   	push   %rsi
  4081b3:	53                   	push   %rbx
  4081b4:	48 83 ec 28          	sub    $0x28,%rsp
  4081b8:	8b 71 14             	mov    0x14(%rcx),%esi
  4081bb:	48 89 cf             	mov    %rcx,%rdi
  4081be:	49 63 d8             	movslq %r8d,%rbx
  4081c1:	48 63 d2             	movslq %edx,%rdx
  4081c4:	4c 8d 49 18          	lea    0x18(%rcx),%r9
  4081c8:	31 c9                	xor    %ecx,%ecx
  4081ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4081d0:	41 8b 04 89          	mov    (%r9,%rcx,4),%eax
  4081d4:	48 0f af c2          	imul   %rdx,%rax
  4081d8:	48 01 d8             	add    %rbx,%rax
  4081db:	48 89 c3             	mov    %rax,%rbx
  4081de:	41 89 04 89          	mov    %eax,(%r9,%rcx,4)
  4081e2:	48 83 c1 01          	add    $0x1,%rcx
  4081e6:	48 c1 eb 20          	shr    $0x20,%rbx
  4081ea:	39 ce                	cmp    %ecx,%esi
  4081ec:	7f e2                	jg     4081d0 <__multadd_D2A+0x20>
  4081ee:	48 85 db             	test   %rbx,%rbx
  4081f1:	48 89 fd             	mov    %rdi,%rbp
  4081f4:	74 15                	je     40820b <__multadd_D2A+0x5b>
  4081f6:	39 77 0c             	cmp    %esi,0xc(%rdi)
  4081f9:	7e 25                	jle    408220 <__multadd_D2A+0x70>
  4081fb:	48 63 c6             	movslq %esi,%rax
  4081fe:	83 c6 01             	add    $0x1,%esi
  408201:	48 89 fd             	mov    %rdi,%rbp
  408204:	89 5c 87 18          	mov    %ebx,0x18(%rdi,%rax,4)
  408208:	89 77 14             	mov    %esi,0x14(%rdi)
  40820b:	48 89 e8             	mov    %rbp,%rax
  40820e:	48 83 c4 28          	add    $0x28,%rsp
  408212:	5b                   	pop    %rbx
  408213:	5e                   	pop    %rsi
  408214:	5f                   	pop    %rdi
  408215:	5d                   	pop    %rbp
  408216:	c3                   	retq   
  408217:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40821e:	00 00 
  408220:	8b 47 08             	mov    0x8(%rdi),%eax
  408223:	8d 48 01             	lea    0x1(%rax),%ecx
  408226:	e8 15 fe ff ff       	callq  408040 <__Balloc_D2A>
  40822b:	48 85 c0             	test   %rax,%rax
  40822e:	48 89 c5             	mov    %rax,%rbp
  408231:	74 d8                	je     40820b <__multadd_D2A+0x5b>
  408233:	48 8d 48 10          	lea    0x10(%rax),%rcx
  408237:	48 63 47 14          	movslq 0x14(%rdi),%rax
  40823b:	48 8d 57 10          	lea    0x10(%rdi),%rdx
  40823f:	4c 8d 04 85 08 00 00 	lea    0x8(,%rax,4),%r8
  408246:	00 
  408247:	e8 9c 0d 00 00       	callq  408fe8 <memcpy>
  40824c:	48 89 f9             	mov    %rdi,%rcx
  40824f:	48 89 ef             	mov    %rbp,%rdi
  408252:	e8 e9 fe ff ff       	callq  408140 <__Bfree_D2A>
  408257:	eb a2                	jmp    4081fb <__multadd_D2A+0x4b>
  408259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000408260 <__i2b_D2A>:
  408260:	53                   	push   %rbx
  408261:	48 83 ec 20          	sub    $0x20,%rsp
  408265:	89 cb                	mov    %ecx,%ebx
  408267:	b9 01 00 00 00       	mov    $0x1,%ecx
  40826c:	e8 cf fd ff ff       	callq  408040 <__Balloc_D2A>
  408271:	48 85 c0             	test   %rax,%rax
  408274:	74 0a                	je     408280 <__i2b_D2A+0x20>
  408276:	89 58 18             	mov    %ebx,0x18(%rax)
  408279:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
  408280:	48 83 c4 20          	add    $0x20,%rsp
  408284:	5b                   	pop    %rbx
  408285:	c3                   	retq   
  408286:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40828d:	00 00 00 

0000000000408290 <__mult_D2A>:
  408290:	41 56                	push   %r14
  408292:	41 55                	push   %r13
  408294:	41 54                	push   %r12
  408296:	55                   	push   %rbp
  408297:	57                   	push   %rdi
  408298:	56                   	push   %rsi
  408299:	53                   	push   %rbx
  40829a:	48 83 ec 20          	sub    $0x20,%rsp
  40829e:	48 63 79 14          	movslq 0x14(%rcx),%rdi
  4082a2:	4c 63 6a 14          	movslq 0x14(%rdx),%r13
  4082a6:	48 89 cd             	mov    %rcx,%rbp
  4082a9:	49 89 d6             	mov    %rdx,%r14
  4082ac:	44 39 ef             	cmp    %r13d,%edi
  4082af:	7d 0e                	jge    4082bf <__mult_D2A+0x2f>
  4082b1:	89 f8                	mov    %edi,%eax
  4082b3:	48 89 d5             	mov    %rdx,%rbp
  4082b6:	49 63 fd             	movslq %r13d,%rdi
  4082b9:	49 89 ce             	mov    %rcx,%r14
  4082bc:	4c 63 e8             	movslq %eax,%r13
  4082bf:	42 8d 1c 2f          	lea    (%rdi,%r13,1),%ebx
  4082c3:	31 c9                	xor    %ecx,%ecx
  4082c5:	39 5d 0c             	cmp    %ebx,0xc(%rbp)
  4082c8:	0f 9c c1             	setl   %cl
  4082cb:	03 4d 08             	add    0x8(%rbp),%ecx
  4082ce:	e8 6d fd ff ff       	callq  408040 <__Balloc_D2A>
  4082d3:	48 85 c0             	test   %rax,%rax
  4082d6:	0f 84 c6 00 00 00    	je     4083a2 <__mult_D2A+0x112>
  4082dc:	48 8d 70 18          	lea    0x18(%rax),%rsi
  4082e0:	48 63 d3             	movslq %ebx,%rdx
  4082e3:	4c 8d 24 96          	lea    (%rsi,%rdx,4),%r12
  4082e7:	4c 39 e6             	cmp    %r12,%rsi
  4082ea:	73 13                	jae    4082ff <__mult_D2A+0x6f>
  4082ec:	48 89 f1             	mov    %rsi,%rcx
  4082ef:	90                   	nop
  4082f0:	c7 01 00 00 00 00    	movl   $0x0,(%rcx)
  4082f6:	48 83 c1 04          	add    $0x4,%rcx
  4082fa:	49 39 cc             	cmp    %rcx,%r12
  4082fd:	77 f1                	ja     4082f0 <__mult_D2A+0x60>
  4082ff:	49 8d 56 18          	lea    0x18(%r14),%rdx
  408303:	48 83 c5 18          	add    $0x18,%rbp
  408307:	4e 8d 2c aa          	lea    (%rdx,%r13,4),%r13
  40830b:	48 8d 7c bd 00       	lea    0x0(%rbp,%rdi,4),%rdi
  408310:	4c 39 ea             	cmp    %r13,%rdx
  408313:	72 14                	jb     408329 <__mult_D2A+0x99>
  408315:	eb 62                	jmp    408379 <__mult_D2A+0xe9>
  408317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40831e:	00 00 
  408320:	48 83 c6 04          	add    $0x4,%rsi
  408324:	49 39 d5             	cmp    %rdx,%r13
  408327:	76 50                	jbe    408379 <__mult_D2A+0xe9>
  408329:	48 83 c2 04          	add    $0x4,%rdx
  40832d:	8b 4a fc             	mov    -0x4(%rdx),%ecx
  408330:	85 c9                	test   %ecx,%ecx
  408332:	74 ec                	je     408320 <__mult_D2A+0x90>
  408334:	49 89 f2             	mov    %rsi,%r10
  408337:	49 89 e9             	mov    %rbp,%r9
  40833a:	45 31 db             	xor    %r11d,%r11d
  40833d:	eb 04                	jmp    408343 <__mult_D2A+0xb3>
  40833f:	90                   	nop
  408340:	4d 89 f2             	mov    %r14,%r10
  408343:	49 83 c1 04          	add    $0x4,%r9
  408347:	45 8b 41 fc          	mov    -0x4(%r9),%r8d
  40834b:	45 8b 32             	mov    (%r10),%r14d
  40834e:	4c 0f af c1          	imul   %rcx,%r8
  408352:	4d 01 f0             	add    %r14,%r8
  408355:	4d 8d 72 04          	lea    0x4(%r10),%r14
  408359:	4d 01 d8             	add    %r11,%r8
  40835c:	4d 89 c3             	mov    %r8,%r11
  40835f:	45 89 46 fc          	mov    %r8d,-0x4(%r14)
  408363:	49 c1 eb 20          	shr    $0x20,%r11
  408367:	4c 39 cf             	cmp    %r9,%rdi
  40836a:	77 d4                	ja     408340 <__mult_D2A+0xb0>
  40836c:	48 83 c6 04          	add    $0x4,%rsi
  408370:	49 39 d5             	cmp    %rdx,%r13
  408373:	45 89 5a 04          	mov    %r11d,0x4(%r10)
  408377:	77 b0                	ja     408329 <__mult_D2A+0x99>
  408379:	85 db                	test   %ebx,%ebx
  40837b:	7e 22                	jle    40839f <__mult_D2A+0x10f>
  40837d:	45 8b 44 24 fc       	mov    -0x4(%r12),%r8d
  408382:	49 8d 54 24 fc       	lea    -0x4(%r12),%rdx
  408387:	45 85 c0             	test   %r8d,%r8d
  40838a:	74 0e                	je     40839a <__mult_D2A+0x10a>
  40838c:	eb 11                	jmp    40839f <__mult_D2A+0x10f>
  40838e:	66 90                	xchg   %ax,%ax
  408390:	48 83 ea 04          	sub    $0x4,%rdx
  408394:	8b 0a                	mov    (%rdx),%ecx
  408396:	85 c9                	test   %ecx,%ecx
  408398:	75 05                	jne    40839f <__mult_D2A+0x10f>
  40839a:	83 eb 01             	sub    $0x1,%ebx
  40839d:	75 f1                	jne    408390 <__mult_D2A+0x100>
  40839f:	89 58 14             	mov    %ebx,0x14(%rax)
  4083a2:	48 83 c4 20          	add    $0x20,%rsp
  4083a6:	5b                   	pop    %rbx
  4083a7:	5e                   	pop    %rsi
  4083a8:	5f                   	pop    %rdi
  4083a9:	5d                   	pop    %rbp
  4083aa:	41 5c                	pop    %r12
  4083ac:	41 5d                	pop    %r13
  4083ae:	41 5e                	pop    %r14
  4083b0:	c3                   	retq   
  4083b1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4083b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4083bd:	00 00 00 

00000000004083c0 <__pow5mult_D2A>:
  4083c0:	41 54                	push   %r12
  4083c2:	55                   	push   %rbp
  4083c3:	57                   	push   %rdi
  4083c4:	56                   	push   %rsi
  4083c5:	53                   	push   %rbx
  4083c6:	48 83 ec 20          	sub    $0x20,%rsp
  4083ca:	89 d0                	mov    %edx,%eax
  4083cc:	48 89 ce             	mov    %rcx,%rsi
  4083cf:	89 d3                	mov    %edx,%ebx
  4083d1:	83 e0 03             	and    $0x3,%eax
  4083d4:	0f 85 96 00 00 00    	jne    408470 <__pow5mult_D2A+0xb0>
  4083da:	c1 fb 02             	sar    $0x2,%ebx
  4083dd:	48 89 f5             	mov    %rsi,%rbp
  4083e0:	85 db                	test   %ebx,%ebx
  4083e2:	74 52                	je     408436 <__pow5mult_D2A+0x76>
  4083e4:	48 8b 3d 75 65 00 00 	mov    0x6575(%rip),%rdi        # 40e960 <p5s>
  4083eb:	48 85 ff             	test   %rdi,%rdi
  4083ee:	0f 84 ce 00 00 00    	je     4084c2 <__pow5mult_D2A+0x102>
  4083f4:	4c 8d 25 0d 6f 00 00 	lea    0x6f0d(%rip),%r12        # 40f308 <dtoa_CritSec+0x28>
  4083fb:	48 89 f5             	mov    %rsi,%rbp
  4083fe:	eb 0f                	jmp    40840f <__pow5mult_D2A+0x4f>
  408400:	d1 fb                	sar    %ebx
  408402:	74 32                	je     408436 <__pow5mult_D2A+0x76>
  408404:	48 8b 37             	mov    (%rdi),%rsi
  408407:	48 85 f6             	test   %rsi,%rsi
  40840a:	74 38                	je     408444 <__pow5mult_D2A+0x84>
  40840c:	48 89 f7             	mov    %rsi,%rdi
  40840f:	f6 c3 01             	test   $0x1,%bl
  408412:	74 ec                	je     408400 <__pow5mult_D2A+0x40>
  408414:	48 89 fa             	mov    %rdi,%rdx
  408417:	48 89 e9             	mov    %rbp,%rcx
  40841a:	e8 71 fe ff ff       	callq  408290 <__mult_D2A>
  40841f:	48 85 c0             	test   %rax,%rax
  408422:	48 89 c6             	mov    %rax,%rsi
  408425:	74 6c                	je     408493 <__pow5mult_D2A+0xd3>
  408427:	48 89 e9             	mov    %rbp,%rcx
  40842a:	48 89 f5             	mov    %rsi,%rbp
  40842d:	e8 0e fd ff ff       	callq  408140 <__Bfree_D2A>
  408432:	d1 fb                	sar    %ebx
  408434:	75 ce                	jne    408404 <__pow5mult_D2A+0x44>
  408436:	48 89 e8             	mov    %rbp,%rax
  408439:	48 83 c4 20          	add    $0x20,%rsp
  40843d:	5b                   	pop    %rbx
  40843e:	5e                   	pop    %rsi
  40843f:	5f                   	pop    %rdi
  408440:	5d                   	pop    %rbp
  408441:	41 5c                	pop    %r12
  408443:	c3                   	retq   
  408444:	b9 01 00 00 00       	mov    $0x1,%ecx
  408449:	e8 d2 fa ff ff       	callq  407f20 <dtoa_lock>
  40844e:	48 8b 37             	mov    (%rdi),%rsi
  408451:	48 85 f6             	test   %rsi,%rsi
  408454:	74 4d                	je     4084a3 <__pow5mult_D2A+0xe3>
  408456:	83 3d 73 6e 00 00 02 	cmpl   $0x2,0x6e73(%rip)        # 40f2d0 <dtoa_CS_init>
  40845d:	75 ad                	jne    40840c <__pow5mult_D2A+0x4c>
  40845f:	4c 89 e1             	mov    %r12,%rcx
  408462:	ff 15 fc 7f 00 00    	callq  *0x7ffc(%rip)        # 410464 <__imp_LeaveCriticalSection>
  408468:	eb a2                	jmp    40840c <__pow5mult_D2A+0x4c>
  40846a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408470:	48 8d 15 c9 31 00 00 	lea    0x31c9(%rip),%rdx        # 40b640 <p05.53702>
  408477:	83 e8 01             	sub    $0x1,%eax
  40847a:	45 31 c0             	xor    %r8d,%r8d
  40847d:	48 98                	cltq   
  40847f:	8b 14 82             	mov    (%rdx,%rax,4),%edx
  408482:	e8 29 fd ff ff       	callq  4081b0 <__multadd_D2A>
  408487:	48 85 c0             	test   %rax,%rax
  40848a:	48 89 c6             	mov    %rax,%rsi
  40848d:	0f 85 47 ff ff ff    	jne    4083da <__pow5mult_D2A+0x1a>
  408493:	31 ed                	xor    %ebp,%ebp
  408495:	48 89 e8             	mov    %rbp,%rax
  408498:	48 83 c4 20          	add    $0x20,%rsp
  40849c:	5b                   	pop    %rbx
  40849d:	5e                   	pop    %rsi
  40849e:	5f                   	pop    %rdi
  40849f:	5d                   	pop    %rbp
  4084a0:	41 5c                	pop    %r12
  4084a2:	c3                   	retq   
  4084a3:	48 89 fa             	mov    %rdi,%rdx
  4084a6:	48 89 f9             	mov    %rdi,%rcx
  4084a9:	e8 e2 fd ff ff       	callq  408290 <__mult_D2A>
  4084ae:	48 85 c0             	test   %rax,%rax
  4084b1:	48 89 c6             	mov    %rax,%rsi
  4084b4:	48 89 07             	mov    %rax,(%rdi)
  4084b7:	74 da                	je     408493 <__pow5mult_D2A+0xd3>
  4084b9:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4084c0:	eb 94                	jmp    408456 <__pow5mult_D2A+0x96>
  4084c2:	b9 01 00 00 00       	mov    $0x1,%ecx
  4084c7:	e8 54 fa ff ff       	callq  407f20 <dtoa_lock>
  4084cc:	48 8b 3d 8d 64 00 00 	mov    0x648d(%rip),%rdi        # 40e960 <p5s>
  4084d3:	48 85 ff             	test   %rdi,%rdi
  4084d6:	74 1f                	je     4084f7 <__pow5mult_D2A+0x137>
  4084d8:	83 3d f1 6d 00 00 02 	cmpl   $0x2,0x6df1(%rip)        # 40f2d0 <dtoa_CS_init>
  4084df:	0f 85 0f ff ff ff    	jne    4083f4 <__pow5mult_D2A+0x34>
  4084e5:	48 8d 0d 1c 6e 00 00 	lea    0x6e1c(%rip),%rcx        # 40f308 <dtoa_CritSec+0x28>
  4084ec:	ff 15 72 7f 00 00    	callq  *0x7f72(%rip)        # 410464 <__imp_LeaveCriticalSection>
  4084f2:	e9 fd fe ff ff       	jmpq   4083f4 <__pow5mult_D2A+0x34>
  4084f7:	b9 01 00 00 00       	mov    $0x1,%ecx
  4084fc:	e8 3f fb ff ff       	callq  408040 <__Balloc_D2A>
  408501:	48 85 c0             	test   %rax,%rax
  408504:	48 89 c7             	mov    %rax,%rdi
  408507:	74 1e                	je     408527 <__pow5mult_D2A+0x167>
  408509:	48 b8 01 00 00 00 71 	movabs $0x27100000001,%rax
  408510:	02 00 00 
  408513:	48 89 3d 46 64 00 00 	mov    %rdi,0x6446(%rip)        # 40e960 <p5s>
  40851a:	48 89 47 14          	mov    %rax,0x14(%rdi)
  40851e:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
  408525:	eb b1                	jmp    4084d8 <__pow5mult_D2A+0x118>
  408527:	48 c7 05 2e 64 00 00 	movq   $0x0,0x642e(%rip)        # 40e960 <p5s>
  40852e:	00 00 00 00 
  408532:	31 ed                	xor    %ebp,%ebp
  408534:	e9 fd fe ff ff       	jmpq   408436 <__pow5mult_D2A+0x76>
  408539:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000408540 <__lshift_D2A>:
  408540:	41 56                	push   %r14
  408542:	41 55                	push   %r13
  408544:	41 54                	push   %r12
  408546:	55                   	push   %rbp
  408547:	57                   	push   %rdi
  408548:	56                   	push   %rsi
  408549:	53                   	push   %rbx
  40854a:	48 83 ec 20          	sub    $0x20,%rsp
  40854e:	48 89 cd             	mov    %rcx,%rbp
  408551:	89 d6                	mov    %edx,%esi
  408553:	41 89 d6             	mov    %edx,%r14d
  408556:	8b 49 08             	mov    0x8(%rcx),%ecx
  408559:	44 8b 6d 14          	mov    0x14(%rbp),%r13d
  40855d:	c1 fe 05             	sar    $0x5,%esi
  408560:	8b 45 0c             	mov    0xc(%rbp),%eax
  408563:	41 01 f5             	add    %esi,%r13d
  408566:	41 8d 5d 01          	lea    0x1(%r13),%ebx
  40856a:	39 c3                	cmp    %eax,%ebx
  40856c:	7e 0b                	jle    408579 <__lshift_D2A+0x39>
  40856e:	66 90                	xchg   %ax,%ax
  408570:	01 c0                	add    %eax,%eax
  408572:	83 c1 01             	add    $0x1,%ecx
  408575:	39 c3                	cmp    %eax,%ebx
  408577:	7f f7                	jg     408570 <__lshift_D2A+0x30>
  408579:	e8 c2 fa ff ff       	callq  408040 <__Balloc_D2A>
  40857e:	48 85 c0             	test   %rax,%rax
  408581:	49 89 c4             	mov    %rax,%r12
  408584:	0f 84 94 00 00 00    	je     40861e <__lshift_D2A+0xde>
  40858a:	48 8d 78 18          	lea    0x18(%rax),%rdi
  40858e:	85 f6                	test   %esi,%esi
  408590:	7e 23                	jle    4085b5 <__lshift_D2A+0x75>
  408592:	8d 56 ff             	lea    -0x1(%rsi),%edx
  408595:	49 89 f8             	mov    %rdi,%r8
  408598:	48 8d 44 97 04       	lea    0x4(%rdi,%rdx,4),%rax
  40859d:	0f 1f 00             	nopl   (%rax)
  4085a0:	41 c7 00 00 00 00 00 	movl   $0x0,(%r8)
  4085a7:	49 83 c0 04          	add    $0x4,%r8
  4085ab:	49 39 c0             	cmp    %rax,%r8
  4085ae:	75 f0                	jne    4085a0 <__lshift_D2A+0x60>
  4085b0:	48 8d 7c 97 04       	lea    0x4(%rdi,%rdx,4),%rdi
  4085b5:	48 63 45 14          	movslq 0x14(%rbp),%rax
  4085b9:	48 8d 75 18          	lea    0x18(%rbp),%rsi
  4085bd:	41 83 e6 1f          	and    $0x1f,%r14d
  4085c1:	48 8d 04 86          	lea    (%rsi,%rax,4),%rax
  4085c5:	74 69                	je     408630 <__lshift_D2A+0xf0>
  4085c7:	41 ba 20 00 00 00    	mov    $0x20,%r10d
  4085cd:	45 31 c0             	xor    %r8d,%r8d
  4085d0:	45 29 f2             	sub    %r14d,%r10d
  4085d3:	eb 03                	jmp    4085d8 <__lshift_D2A+0x98>
  4085d5:	4c 89 cf             	mov    %r9,%rdi
  4085d8:	8b 16                	mov    (%rsi),%edx
  4085da:	4c 8d 4f 04          	lea    0x4(%rdi),%r9
  4085de:	44 89 f1             	mov    %r14d,%ecx
  4085e1:	48 83 c6 04          	add    $0x4,%rsi
  4085e5:	d3 e2                	shl    %cl,%edx
  4085e7:	89 d1                	mov    %edx,%ecx
  4085e9:	44 09 c1             	or     %r8d,%ecx
  4085ec:	41 89 49 fc          	mov    %ecx,-0x4(%r9)
  4085f0:	44 8b 46 fc          	mov    -0x4(%rsi),%r8d
  4085f4:	44 89 d1             	mov    %r10d,%ecx
  4085f7:	41 d3 e8             	shr    %cl,%r8d
  4085fa:	48 39 f0             	cmp    %rsi,%rax
  4085fd:	77 d6                	ja     4085d5 <__lshift_D2A+0x95>
  4085ff:	41 83 c5 02          	add    $0x2,%r13d
  408603:	45 85 c0             	test   %r8d,%r8d
  408606:	44 89 47 04          	mov    %r8d,0x4(%rdi)
  40860a:	41 0f 45 dd          	cmovne %r13d,%ebx
  40860e:	83 eb 01             	sub    $0x1,%ebx
  408611:	48 89 e9             	mov    %rbp,%rcx
  408614:	41 89 5c 24 14       	mov    %ebx,0x14(%r12)
  408619:	e8 22 fb ff ff       	callq  408140 <__Bfree_D2A>
  40861e:	4c 89 e0             	mov    %r12,%rax
  408621:	48 83 c4 20          	add    $0x20,%rsp
  408625:	5b                   	pop    %rbx
  408626:	5e                   	pop    %rsi
  408627:	5f                   	pop    %rdi
  408628:	5d                   	pop    %rbp
  408629:	41 5c                	pop    %r12
  40862b:	41 5d                	pop    %r13
  40862d:	41 5e                	pop    %r14
  40862f:	c3                   	retq   
  408630:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  408631:	48 39 f0             	cmp    %rsi,%rax
  408634:	76 d8                	jbe    40860e <__lshift_D2A+0xce>
  408636:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
  408637:	48 39 f0             	cmp    %rsi,%rax
  40863a:	77 f4                	ja     408630 <__lshift_D2A+0xf0>
  40863c:	eb d0                	jmp    40860e <__lshift_D2A+0xce>
  40863e:	66 90                	xchg   %ax,%ax

0000000000408640 <__cmp_D2A>:
  408640:	4c 63 42 14          	movslq 0x14(%rdx),%r8
  408644:	8b 41 14             	mov    0x14(%rcx),%eax
  408647:	44 29 c0             	sub    %r8d,%eax
  40864a:	75 31                	jne    40867d <__cmp_D2A+0x3d>
  40864c:	4e 8d 0c 85 00 00 00 	lea    0x0(,%r8,4),%r9
  408653:	00 
  408654:	48 83 c1 18          	add    $0x18,%rcx
  408658:	4e 8d 04 09          	lea    (%rcx,%r9,1),%r8
  40865c:	4a 8d 54 0a 18       	lea    0x18(%rdx,%r9,1),%rdx
  408661:	eb 05                	jmp    408668 <__cmp_D2A+0x28>
  408663:	4c 39 c1             	cmp    %r8,%rcx
  408666:	73 15                	jae    40867d <__cmp_D2A+0x3d>
  408668:	48 83 ea 04          	sub    $0x4,%rdx
  40866c:	49 83 e8 04          	sub    $0x4,%r8
  408670:	44 8b 12             	mov    (%rdx),%r10d
  408673:	45 39 10             	cmp    %r10d,(%r8)
  408676:	74 eb                	je     408663 <__cmp_D2A+0x23>
  408678:	19 c0                	sbb    %eax,%eax
  40867a:	83 c8 01             	or     $0x1,%eax
  40867d:	c3                   	retq   
  40867e:	66 90                	xchg   %ax,%ax

0000000000408680 <__diff_D2A>:
  408680:	55                   	push   %rbp
  408681:	57                   	push   %rdi
  408682:	56                   	push   %rsi
  408683:	53                   	push   %rbx
  408684:	48 83 ec 28          	sub    $0x28,%rsp
  408688:	48 63 42 14          	movslq 0x14(%rdx),%rax
  40868c:	8b 59 14             	mov    0x14(%rcx),%ebx
  40868f:	48 89 ce             	mov    %rcx,%rsi
  408692:	48 89 d5             	mov    %rdx,%rbp
  408695:	29 c3                	sub    %eax,%ebx
  408697:	0f 85 13 01 00 00    	jne    4087b0 <__diff_D2A+0x130>
  40869d:	48 8d 51 18          	lea    0x18(%rcx),%rdx
  4086a1:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  4086a8:	00 
  4086a9:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  4086ad:	48 8d 4c 0d 18       	lea    0x18(%rbp,%rcx,1),%rcx
  4086b2:	eb 09                	jmp    4086bd <__diff_D2A+0x3d>
  4086b4:	48 39 c2             	cmp    %rax,%rdx
  4086b7:	0f 83 13 01 00 00    	jae    4087d0 <__diff_D2A+0x150>
  4086bd:	48 83 e9 04          	sub    $0x4,%rcx
  4086c1:	48 83 e8 04          	sub    $0x4,%rax
  4086c5:	8b 39                	mov    (%rcx),%edi
  4086c7:	39 38                	cmp    %edi,(%rax)
  4086c9:	74 e9                	je     4086b4 <__diff_D2A+0x34>
  4086cb:	0f 82 ea 00 00 00    	jb     4087bb <__diff_D2A+0x13b>
  4086d1:	8b 4e 08             	mov    0x8(%rsi),%ecx
  4086d4:	e8 67 f9 ff ff       	callq  408040 <__Balloc_D2A>
  4086d9:	48 85 c0             	test   %rax,%rax
  4086dc:	0f 84 bf 00 00 00    	je     4087a1 <__diff_D2A+0x121>
  4086e2:	48 63 56 14          	movslq 0x14(%rsi),%rdx
  4086e6:	48 8d 4e 18          	lea    0x18(%rsi),%rcx
  4086ea:	89 58 10             	mov    %ebx,0x10(%rax)
  4086ed:	45 31 c0             	xor    %r8d,%r8d
  4086f0:	4c 8d 5d 18          	lea    0x18(%rbp),%r11
  4086f4:	4c 8d 50 18          	lea    0x18(%rax),%r10
  4086f8:	48 8d 3c 91          	lea    (%rcx,%rdx,4),%rdi
  4086fc:	48 89 d3             	mov    %rdx,%rbx
  4086ff:	48 63 55 14          	movslq 0x14(%rbp),%rdx
  408703:	49 8d 2c 93          	lea    (%r11,%rdx,4),%rbp
  408707:	eb 0a                	jmp    408713 <__diff_D2A+0x93>
  408709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408710:	4c 89 c9             	mov    %r9,%rcx
  408713:	4c 8d 49 04          	lea    0x4(%rcx),%r9
  408717:	49 83 c3 04          	add    $0x4,%r11
  40871b:	41 8b 73 fc          	mov    -0x4(%r11),%esi
  40871f:	49 83 c2 04          	add    $0x4,%r10
  408723:	41 8b 51 fc          	mov    -0x4(%r9),%edx
  408727:	48 29 f2             	sub    %rsi,%rdx
  40872a:	4c 29 c2             	sub    %r8,%rdx
  40872d:	49 89 d0             	mov    %rdx,%r8
  408730:	89 d6                	mov    %edx,%esi
  408732:	41 89 52 fc          	mov    %edx,-0x4(%r10)
  408736:	49 c1 e8 20          	shr    $0x20,%r8
  40873a:	41 83 e0 01          	and    $0x1,%r8d
  40873e:	4c 39 dd             	cmp    %r11,%rbp
  408741:	77 cd                	ja     408710 <__diff_D2A+0x90>
  408743:	4c 39 cf             	cmp    %r9,%rdi
  408746:	76 3d                	jbe    408785 <__diff_D2A+0x105>
  408748:	4d 89 d3             	mov    %r10,%r11
  40874b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408750:	49 83 c1 04          	add    $0x4,%r9
  408754:	41 8b 51 fc          	mov    -0x4(%r9),%edx
  408758:	49 83 c3 04          	add    $0x4,%r11
  40875c:	4c 29 c2             	sub    %r8,%rdx
  40875f:	49 89 d0             	mov    %rdx,%r8
  408762:	89 d6                	mov    %edx,%esi
  408764:	41 89 53 fc          	mov    %edx,-0x4(%r11)
  408768:	49 c1 e8 20          	shr    $0x20,%r8
  40876c:	41 83 e0 01          	and    $0x1,%r8d
  408770:	4c 39 cf             	cmp    %r9,%rdi
  408773:	77 db                	ja     408750 <__diff_D2A+0xd0>
  408775:	48 29 cf             	sub    %rcx,%rdi
  408778:	48 8d 57 fb          	lea    -0x5(%rdi),%rdx
  40877c:	48 c1 ea 02          	shr    $0x2,%rdx
  408780:	4d 8d 54 92 04       	lea    0x4(%r10,%rdx,4),%r10
  408785:	49 83 ea 04          	sub    $0x4,%r10
  408789:	85 f6                	test   %esi,%esi
  40878b:	75 11                	jne    40879e <__diff_D2A+0x11e>
  40878d:	0f 1f 00             	nopl   (%rax)
  408790:	49 83 ea 04          	sub    $0x4,%r10
  408794:	41 8b 12             	mov    (%r10),%edx
  408797:	83 eb 01             	sub    $0x1,%ebx
  40879a:	85 d2                	test   %edx,%edx
  40879c:	74 f2                	je     408790 <__diff_D2A+0x110>
  40879e:	89 58 14             	mov    %ebx,0x14(%rax)
  4087a1:	48 83 c4 28          	add    $0x28,%rsp
  4087a5:	5b                   	pop    %rbx
  4087a6:	5e                   	pop    %rsi
  4087a7:	5f                   	pop    %rdi
  4087a8:	5d                   	pop    %rbp
  4087a9:	c3                   	retq   
  4087aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4087b0:	bb 00 00 00 00       	mov    $0x0,%ebx
  4087b5:	0f 89 16 ff ff ff    	jns    4086d1 <__diff_D2A+0x51>
  4087bb:	48 89 f0             	mov    %rsi,%rax
  4087be:	bb 01 00 00 00       	mov    $0x1,%ebx
  4087c3:	48 89 ee             	mov    %rbp,%rsi
  4087c6:	48 89 c5             	mov    %rax,%rbp
  4087c9:	e9 03 ff ff ff       	jmpq   4086d1 <__diff_D2A+0x51>
  4087ce:	66 90                	xchg   %ax,%ax
  4087d0:	31 c9                	xor    %ecx,%ecx
  4087d2:	e8 69 f8 ff ff       	callq  408040 <__Balloc_D2A>
  4087d7:	48 85 c0             	test   %rax,%rax
  4087da:	74 c5                	je     4087a1 <__diff_D2A+0x121>
  4087dc:	48 c7 40 14 01 00 00 	movq   $0x1,0x14(%rax)
  4087e3:	00 
  4087e4:	48 83 c4 28          	add    $0x28,%rsp
  4087e8:	5b                   	pop    %rbx
  4087e9:	5e                   	pop    %rsi
  4087ea:	5f                   	pop    %rdi
  4087eb:	5d                   	pop    %rbp
  4087ec:	c3                   	retq   
  4087ed:	0f 1f 00             	nopl   (%rax)

00000000004087f0 <__b2d_D2A>:
  4087f0:	53                   	push   %rbx
  4087f1:	48 63 41 14          	movslq 0x14(%rcx),%rax
  4087f5:	4c 8d 59 18          	lea    0x18(%rcx),%r11
  4087f9:	b9 20 00 00 00       	mov    $0x20,%ecx
  4087fe:	4d 8d 14 83          	lea    (%r11,%rax,4),%r10
  408802:	89 c8                	mov    %ecx,%eax
  408804:	45 8b 4a fc          	mov    -0x4(%r10),%r9d
  408808:	49 8d 5a fc          	lea    -0x4(%r10),%rbx
  40880c:	45 0f bd c1          	bsr    %r9d,%r8d
  408810:	41 83 f0 1f          	xor    $0x1f,%r8d
  408814:	44 29 c0             	sub    %r8d,%eax
  408817:	41 83 f8 0a          	cmp    $0xa,%r8d
  40881b:	89 02                	mov    %eax,(%rdx)
  40881d:	7f 41                	jg     408860 <__b2d_D2A+0x70>
  40881f:	b9 0b 00 00 00       	mov    $0xb,%ecx
  408824:	44 89 c8             	mov    %r9d,%eax
  408827:	31 d2                	xor    %edx,%edx
  408829:	44 29 c1             	sub    %r8d,%ecx
  40882c:	d3 e8                	shr    %cl,%eax
  40882e:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
  408833:	48 c1 e0 20          	shl    $0x20,%rax
  408837:	49 39 db             	cmp    %rbx,%r11
  40883a:	73 06                	jae    408842 <__b2d_D2A+0x52>
  40883c:	41 8b 52 f8          	mov    -0x8(%r10),%edx
  408840:	d3 ea                	shr    %cl,%edx
  408842:	41 8d 48 15          	lea    0x15(%r8),%ecx
  408846:	41 d3 e1             	shl    %cl,%r9d
  408849:	41 09 d1             	or     %edx,%r9d
  40884c:	4c 09 c8             	or     %r9,%rax
  40884f:	66 48 0f 6e c0       	movq   %rax,%xmm0
  408854:	5b                   	pop    %rbx
  408855:	c3                   	retq   
  408856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40885d:	00 00 00 
  408860:	41 83 e8 0b          	sub    $0xb,%r8d
  408864:	49 39 db             	cmp    %rbx,%r11
  408867:	73 5b                	jae    4088c4 <__b2d_D2A+0xd4>
  408869:	45 85 c0             	test   %r8d,%r8d
  40886c:	41 8b 52 f8          	mov    -0x8(%r10),%edx
  408870:	74 59                	je     4088cb <__b2d_D2A+0xdb>
  408872:	89 cb                	mov    %ecx,%ebx
  408874:	44 89 c8             	mov    %r9d,%eax
  408877:	44 89 c1             	mov    %r8d,%ecx
  40887a:	44 29 c3             	sub    %r8d,%ebx
  40887d:	d3 e0                	shl    %cl,%eax
  40887f:	41 89 d1             	mov    %edx,%r9d
  408882:	89 d9                	mov    %ebx,%ecx
  408884:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
  408889:	41 d3 e9             	shr    %cl,%r9d
  40888c:	44 89 c1             	mov    %r8d,%ecx
  40888f:	44 09 c8             	or     %r9d,%eax
  408892:	d3 e2                	shl    %cl,%edx
  408894:	49 8d 4a f8          	lea    -0x8(%r10),%rcx
  408898:	48 c1 e0 20          	shl    $0x20,%rax
  40889c:	49 39 cb             	cmp    %rcx,%r11
  40889f:	73 0c                	jae    4088ad <__b2d_D2A+0xbd>
  4088a1:	45 8b 42 f4          	mov    -0xc(%r10),%r8d
  4088a5:	89 d9                	mov    %ebx,%ecx
  4088a7:	41 d3 e8             	shr    %cl,%r8d
  4088aa:	44 09 c2             	or     %r8d,%edx
  4088ad:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
  4088b4:	ff ff ff 
  4088b7:	48 21 c8             	and    %rcx,%rax
  4088ba:	48 09 d0             	or     %rdx,%rax
  4088bd:	66 48 0f 6e c0       	movq   %rax,%xmm0
  4088c2:	5b                   	pop    %rbx
  4088c3:	c3                   	retq   
  4088c4:	31 d2                	xor    %edx,%edx
  4088c6:	45 85 c0             	test   %r8d,%r8d
  4088c9:	75 16                	jne    4088e1 <__b2d_D2A+0xf1>
  4088cb:	44 89 c8             	mov    %r9d,%eax
  4088ce:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
  4088d3:	48 c1 e0 20          	shl    $0x20,%rax
  4088d7:	48 09 d0             	or     %rdx,%rax
  4088da:	66 48 0f 6e c0       	movq   %rax,%xmm0
  4088df:	5b                   	pop    %rbx
  4088e0:	c3                   	retq   
  4088e1:	44 89 c8             	mov    %r9d,%eax
  4088e4:	44 89 c1             	mov    %r8d,%ecx
  4088e7:	31 d2                	xor    %edx,%edx
  4088e9:	d3 e0                	shl    %cl,%eax
  4088eb:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
  4088f0:	48 c1 e0 20          	shl    $0x20,%rax
  4088f4:	eb b7                	jmp    4088ad <__b2d_D2A+0xbd>
  4088f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4088fd:	00 00 00 

0000000000408900 <__d2b_D2A>:
  408900:	57                   	push   %rdi
  408901:	56                   	push   %rsi
  408902:	53                   	push   %rbx
  408903:	48 83 ec 20          	sub    $0x20,%rsp
  408907:	b9 01 00 00 00       	mov    $0x1,%ecx
  40890c:	66 48 0f 7e c3       	movq   %xmm0,%rbx
  408911:	48 89 d7             	mov    %rdx,%rdi
  408914:	4c 89 c6             	mov    %r8,%rsi
  408917:	e8 24 f7 ff ff       	callq  408040 <__Balloc_D2A>
  40891c:	48 85 c0             	test   %rax,%rax
  40891f:	0f 84 8a 00 00 00    	je     4089af <__d2b_D2A+0xaf>
  408925:	48 89 d9             	mov    %rbx,%rcx
  408928:	49 89 da             	mov    %rbx,%r10
  40892b:	48 c1 e9 20          	shr    $0x20,%rcx
  40892f:	41 89 c9             	mov    %ecx,%r9d
  408932:	c1 e9 14             	shr    $0x14,%ecx
  408935:	41 81 e1 ff ff 0f 00 	and    $0xfffff,%r9d
  40893c:	89 ca                	mov    %ecx,%edx
  40893e:	45 89 c8             	mov    %r9d,%r8d
  408941:	41 81 c8 00 00 10 00 	or     $0x100000,%r8d
  408948:	81 e2 ff 07 00 00    	and    $0x7ff,%edx
  40894e:	45 0f 45 c8          	cmovne %r8d,%r9d
  408952:	85 db                	test   %ebx,%ebx
  408954:	74 6a                	je     4089c0 <__d2b_D2A+0xc0>
  408956:	44 0f bc db          	bsf    %ebx,%r11d
  40895a:	45 85 db             	test   %r11d,%r11d
  40895d:	0f 84 ad 00 00 00    	je     408a10 <__d2b_D2A+0x110>
  408963:	b9 20 00 00 00       	mov    $0x20,%ecx
  408968:	45 89 c8             	mov    %r9d,%r8d
  40896b:	44 29 d9             	sub    %r11d,%ecx
  40896e:	41 d3 e0             	shl    %cl,%r8d
  408971:	44 89 d9             	mov    %r11d,%ecx
  408974:	41 d3 ea             	shr    %cl,%r10d
  408977:	41 d3 e9             	shr    %cl,%r9d
  40897a:	45 09 c2             	or     %r8d,%r10d
  40897d:	44 89 50 18          	mov    %r10d,0x18(%rax)
  408981:	45 31 c0             	xor    %r8d,%r8d
  408984:	45 85 c9             	test   %r9d,%r9d
  408987:	44 89 48 1c          	mov    %r9d,0x1c(%rax)
  40898b:	41 0f 95 c0          	setne  %r8b
  40898f:	41 83 c0 01          	add    $0x1,%r8d
  408993:	85 d2                	test   %edx,%edx
  408995:	44 89 40 14          	mov    %r8d,0x14(%rax)
  408999:	74 45                	je     4089e0 <__d2b_D2A+0xe0>
  40899b:	42 8d 94 1a cd fb ff 	lea    -0x433(%rdx,%r11,1),%edx
  4089a2:	ff 
  4089a3:	89 17                	mov    %edx,(%rdi)
  4089a5:	ba 35 00 00 00       	mov    $0x35,%edx
  4089aa:	44 29 da             	sub    %r11d,%edx
  4089ad:	89 16                	mov    %edx,(%rsi)
  4089af:	48 83 c4 20          	add    $0x20,%rsp
  4089b3:	5b                   	pop    %rbx
  4089b4:	5e                   	pop    %rsi
  4089b5:	5f                   	pop    %rdi
  4089b6:	c3                   	retq   
  4089b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4089be:	00 00 
  4089c0:	41 0f bc c9          	bsf    %r9d,%ecx
  4089c4:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
  4089cb:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4089d1:	44 8d 59 20          	lea    0x20(%rcx),%r11d
  4089d5:	41 d3 e9             	shr    %cl,%r9d
  4089d8:	85 d2                	test   %edx,%edx
  4089da:	44 89 48 18          	mov    %r9d,0x18(%rax)
  4089de:	75 bb                	jne    40899b <__d2b_D2A+0x9b>
  4089e0:	49 63 d0             	movslq %r8d,%rdx
  4089e3:	41 c1 e0 05          	shl    $0x5,%r8d
  4089e7:	41 81 eb 32 04 00 00 	sub    $0x432,%r11d
  4089ee:	0f bd 54 90 14       	bsr    0x14(%rax,%rdx,4),%edx
  4089f3:	44 89 1f             	mov    %r11d,(%rdi)
  4089f6:	83 f2 1f             	xor    $0x1f,%edx
  4089f9:	41 29 d0             	sub    %edx,%r8d
  4089fc:	44 89 06             	mov    %r8d,(%rsi)
  4089ff:	48 83 c4 20          	add    $0x20,%rsp
  408a03:	5b                   	pop    %rbx
  408a04:	5e                   	pop    %rsi
  408a05:	5f                   	pop    %rdi
  408a06:	c3                   	retq   
  408a07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  408a0e:	00 00 
  408a10:	89 58 18             	mov    %ebx,0x18(%rax)
  408a13:	e9 69 ff ff ff       	jmpq   408981 <__d2b_D2A+0x81>
  408a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  408a1f:	00 

0000000000408a20 <__strcp_D2A>:
  408a20:	48 89 c8             	mov    %rcx,%rax
  408a23:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  408a27:	0f b6 12             	movzbl (%rdx),%edx
  408a2a:	84 d2                	test   %dl,%dl
  408a2c:	88 10                	mov    %dl,(%rax)
  408a2e:	74 12                	je     408a42 <__strcp_D2A+0x22>
  408a30:	48 83 c1 01          	add    $0x1,%rcx
  408a34:	0f b6 51 ff          	movzbl -0x1(%rcx),%edx
  408a38:	48 83 c0 01          	add    $0x1,%rax
  408a3c:	84 d2                	test   %dl,%dl
  408a3e:	88 10                	mov    %dl,(%rax)
  408a40:	75 ee                	jne    408a30 <__strcp_D2A+0x10>
  408a42:	c3                   	retq   
  408a43:	90                   	nop
  408a44:	90                   	nop
  408a45:	90                   	nop
  408a46:	90                   	nop
  408a47:	90                   	nop
  408a48:	90                   	nop
  408a49:	90                   	nop
  408a4a:	90                   	nop
  408a4b:	90                   	nop
  408a4c:	90                   	nop
  408a4d:	90                   	nop
  408a4e:	90                   	nop
  408a4f:	90                   	nop

0000000000408a50 <__mbrtowc_cp>:
  408a50:	56                   	push   %rsi
  408a51:	53                   	push   %rbx
  408a52:	48 83 ec 58          	sub    $0x58,%rsp
  408a56:	31 c0                	xor    %eax,%eax
  408a58:	48 85 d2             	test   %rdx,%rdx
  408a5b:	48 89 ce             	mov    %rcx,%rsi
  408a5e:	48 89 d3             	mov    %rdx,%rbx
  408a61:	0f 84 9c 00 00 00    	je     408b03 <__mbrtowc_cp+0xb3>
  408a67:	4d 85 c0             	test   %r8,%r8
  408a6a:	0f 84 30 01 00 00    	je     408ba0 <__mbrtowc_cp+0x150>
  408a70:	0f b6 12             	movzbl (%rdx),%edx
  408a73:	41 8b 09             	mov    (%r9),%ecx
  408a76:	41 c7 01 00 00 00 00 	movl   $0x0,(%r9)
  408a7d:	84 d2                	test   %dl,%dl
  408a7f:	89 4c 24 4c          	mov    %ecx,0x4c(%rsp)
  408a83:	0f 84 87 00 00 00    	je     408b10 <__mbrtowc_cp+0xc0>
  408a89:	83 bc 24 98 00 00 00 	cmpl   $0x1,0x98(%rsp)
  408a90:	01 
  408a91:	0f 86 89 00 00 00    	jbe    408b20 <__mbrtowc_cp+0xd0>
  408a97:	84 c9                	test   %cl,%cl
  408a99:	0f 85 a1 00 00 00    	jne    408b40 <__mbrtowc_cp+0xf0>
  408a9f:	4c 89 4c 24 38       	mov    %r9,0x38(%rsp)
  408aa4:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
  408aab:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
  408ab0:	ff 15 a6 79 00 00    	callq  *0x79a6(%rip)        # 41045c <__imp_IsDBCSLeadByteEx>
  408ab6:	85 c0                	test   %eax,%eax
  408ab8:	74 66                	je     408b20 <__mbrtowc_cp+0xd0>
  408aba:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  408abf:	4c 8b 4c 24 38       	mov    0x38(%rsp),%r9
  408ac4:	49 83 f8 01          	cmp    $0x1,%r8
  408ac8:	0f 86 f1 00 00 00    	jbe    408bbf <__mbrtowc_cp+0x16f>
  408ace:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
  408ad3:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  408ad9:	49 89 d8             	mov    %rbx,%r8
  408adc:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  408ae3:	00 
  408ae4:	ba 08 00 00 00       	mov    $0x8,%edx
  408ae9:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
  408af0:	ff 15 76 79 00 00    	callq  *0x7976(%rip)        # 41046c <__imp_MultiByteToWideChar>
  408af6:	85 c0                	test   %eax,%eax
  408af8:	0f 84 ac 00 00 00    	je     408baa <__mbrtowc_cp+0x15a>
  408afe:	b8 02 00 00 00       	mov    $0x2,%eax
  408b03:	48 83 c4 58          	add    $0x58,%rsp
  408b07:	5b                   	pop    %rbx
  408b08:	5e                   	pop    %rsi
  408b09:	c3                   	retq   
  408b0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408b10:	31 d2                	xor    %edx,%edx
  408b12:	66 89 16             	mov    %dx,(%rsi)
  408b15:	48 83 c4 58          	add    $0x58,%rsp
  408b19:	5b                   	pop    %rbx
  408b1a:	5e                   	pop    %rsi
  408b1b:	c3                   	retq   
  408b1c:	0f 1f 40 00          	nopl   0x0(%rax)
  408b20:	8b 84 24 90 00 00 00 	mov    0x90(%rsp),%eax
  408b27:	85 c0                	test   %eax,%eax
  408b29:	75 35                	jne    408b60 <__mbrtowc_cp+0x110>
  408b2b:	0f b6 03             	movzbl (%rbx),%eax
  408b2e:	66 89 06             	mov    %ax,(%rsi)
  408b31:	b8 01 00 00 00       	mov    $0x1,%eax
  408b36:	48 83 c4 58          	add    $0x58,%rsp
  408b3a:	5b                   	pop    %rbx
  408b3b:	5e                   	pop    %rsi
  408b3c:	c3                   	retq   
  408b3d:	0f 1f 00             	nopl   (%rax)
  408b40:	88 54 24 4d          	mov    %dl,0x4d(%rsp)
  408b44:	41 b9 02 00 00 00    	mov    $0x2,%r9d
  408b4a:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  408b51:	00 
  408b52:	4c 8d 44 24 4c       	lea    0x4c(%rsp),%r8
  408b57:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
  408b5c:	eb 86                	jmp    408ae4 <__mbrtowc_cp+0x94>
  408b5e:	66 90                	xchg   %ax,%ax
  408b60:	c7 44 24 28 01 00 00 	movl   $0x1,0x28(%rsp)
  408b67:	00 
  408b68:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  408b6e:	49 89 d8             	mov    %rbx,%r8
  408b71:	ba 08 00 00 00       	mov    $0x8,%edx
  408b76:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
  408b7b:	8b 8c 24 90 00 00 00 	mov    0x90(%rsp),%ecx
  408b82:	ff 15 e4 78 00 00    	callq  *0x78e4(%rip)        # 41046c <__imp_MultiByteToWideChar>
  408b88:	85 c0                	test   %eax,%eax
  408b8a:	74 1e                	je     408baa <__mbrtowc_cp+0x15a>
  408b8c:	b8 01 00 00 00       	mov    $0x1,%eax
  408b91:	e9 6d ff ff ff       	jmpq   408b03 <__mbrtowc_cp+0xb3>
  408b96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408b9d:	00 00 00 
  408ba0:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  408ba5:	e9 59 ff ff ff       	jmpq   408b03 <__mbrtowc_cp+0xb3>
  408baa:	e8 99 04 00 00       	callq  409048 <_errno>
  408baf:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
  408bb5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  408bba:	e9 44 ff ff ff       	jmpq   408b03 <__mbrtowc_cp+0xb3>
  408bbf:	0f b6 03             	movzbl (%rbx),%eax
  408bc2:	41 88 01             	mov    %al,(%r9)
  408bc5:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
  408bca:	e9 34 ff ff ff       	jmpq   408b03 <__mbrtowc_cp+0xb3>
  408bcf:	90                   	nop

0000000000408bd0 <mbrtowc>:
  408bd0:	55                   	push   %rbp
  408bd1:	57                   	push   %rdi
  408bd2:	56                   	push   %rsi
  408bd3:	53                   	push   %rbx
  408bd4:	48 83 ec 58          	sub    $0x58,%rsp
  408bd8:	31 c0                	xor    %eax,%eax
  408bda:	48 89 cb             	mov    %rcx,%rbx
  408bdd:	48 85 c9             	test   %rcx,%rcx
  408be0:	66 89 44 24 4e       	mov    %ax,0x4e(%rsp)
  408be5:	4c 89 ce             	mov    %r9,%rsi
  408be8:	48 8d 44 24 4e       	lea    0x4e(%rsp),%rax
  408bed:	48 89 d7             	mov    %rdx,%rdi
  408bf0:	4c 89 44 24 38       	mov    %r8,0x38(%rsp)
  408bf5:	48 0f 44 d8          	cmove  %rax,%rbx
  408bf9:	e8 82 04 00 00       	callq  409080 <___mb_cur_max_func>
  408bfe:	89 c5                	mov    %eax,%ebp
  408c00:	e8 83 04 00 00       	callq  409088 <___lc_codepage_func>
  408c05:	4c 8b 44 24 38       	mov    0x38(%rsp),%r8
  408c0a:	48 85 f6             	test   %rsi,%rsi
  408c0d:	48 89 fa             	mov    %rdi,%rdx
  408c10:	4c 8d 0d 31 67 00 00 	lea    0x6731(%rip),%r9        # 40f348 <internal_mbstate.53756>
  408c17:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
  408c1b:	48 89 d9             	mov    %rbx,%rcx
  408c1e:	4c 0f 45 ce          	cmovne %rsi,%r9
  408c22:	89 44 24 20          	mov    %eax,0x20(%rsp)
  408c26:	e8 25 fe ff ff       	callq  408a50 <__mbrtowc_cp>
  408c2b:	48 98                	cltq   
  408c2d:	48 83 c4 58          	add    $0x58,%rsp
  408c31:	5b                   	pop    %rbx
  408c32:	5e                   	pop    %rsi
  408c33:	5f                   	pop    %rdi
  408c34:	5d                   	pop    %rbp
  408c35:	c3                   	retq   
  408c36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408c3d:	00 00 00 

0000000000408c40 <mbsrtowcs>:
  408c40:	41 56                	push   %r14
  408c42:	41 55                	push   %r13
  408c44:	41 54                	push   %r12
  408c46:	55                   	push   %rbp
  408c47:	57                   	push   %rdi
  408c48:	56                   	push   %rsi
  408c49:	53                   	push   %rbx
  408c4a:	48 83 ec 40          	sub    $0x40,%rsp
  408c4e:	48 8d 05 ef 66 00 00 	lea    0x66ef(%rip),%rax        # 40f344 <internal_mbstate.53767>
  408c55:	4d 85 c9             	test   %r9,%r9
  408c58:	4c 89 cf             	mov    %r9,%rdi
  408c5b:	49 89 d6             	mov    %rdx,%r14
  408c5e:	48 0f 44 f8          	cmove  %rax,%rdi
  408c62:	48 89 ce             	mov    %rcx,%rsi
  408c65:	4c 89 c5             	mov    %r8,%rbp
  408c68:	e8 1b 04 00 00       	callq  409088 <___lc_codepage_func>
  408c6d:	31 db                	xor    %ebx,%ebx
  408c6f:	41 89 c5             	mov    %eax,%r13d
  408c72:	e8 09 04 00 00       	callq  409080 <___mb_cur_max_func>
  408c77:	4d 85 f6             	test   %r14,%r14
  408c7a:	41 89 c4             	mov    %eax,%r12d
  408c7d:	74 5a                	je     408cd9 <mbsrtowcs+0x99>
  408c7f:	49 8b 16             	mov    (%r14),%rdx
  408c82:	48 85 d2             	test   %rdx,%rdx
  408c85:	74 52                	je     408cd9 <mbsrtowcs+0x99>
  408c87:	48 85 f6             	test   %rsi,%rsi
  408c8a:	74 64                	je     408cf0 <mbsrtowcs+0xb0>
  408c8c:	48 85 ed             	test   %rbp,%rbp
  408c8f:	75 19                	jne    408caa <mbsrtowcs+0x6a>
  408c91:	eb 46                	jmp    408cd9 <mbsrtowcs+0x99>
  408c93:	49 8b 16             	mov    (%r14),%rdx
  408c96:	48 98                	cltq   
  408c98:	48 83 c6 02          	add    $0x2,%rsi
  408c9c:	48 01 c3             	add    %rax,%rbx
  408c9f:	48 01 c2             	add    %rax,%rdx
  408ca2:	48 39 dd             	cmp    %rbx,%rbp
  408ca5:	49 89 16             	mov    %rdx,(%r14)
  408ca8:	76 2f                	jbe    408cd9 <mbsrtowcs+0x99>
  408caa:	49 89 e8             	mov    %rbp,%r8
  408cad:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
  408cb2:	49 89 f9             	mov    %rdi,%r9
  408cb5:	48 89 f1             	mov    %rsi,%rcx
  408cb8:	49 29 d8             	sub    %rbx,%r8
  408cbb:	44 89 6c 24 20       	mov    %r13d,0x20(%rsp)
  408cc0:	e8 8b fd ff ff       	callq  408a50 <__mbrtowc_cp>
  408cc5:	85 c0                	test   %eax,%eax
  408cc7:	7f ca                	jg     408c93 <mbsrtowcs+0x53>
  408cc9:	48 39 dd             	cmp    %rbx,%rbp
  408ccc:	76 0b                	jbe    408cd9 <mbsrtowcs+0x99>
  408cce:	85 c0                	test   %eax,%eax
  408cd0:	75 07                	jne    408cd9 <mbsrtowcs+0x99>
  408cd2:	49 c7 06 00 00 00 00 	movq   $0x0,(%r14)
  408cd9:	48 89 d8             	mov    %rbx,%rax
  408cdc:	48 83 c4 40          	add    $0x40,%rsp
  408ce0:	5b                   	pop    %rbx
  408ce1:	5e                   	pop    %rsi
  408ce2:	5f                   	pop    %rdi
  408ce3:	5d                   	pop    %rbp
  408ce4:	41 5c                	pop    %r12
  408ce6:	41 5d                	pop    %r13
  408ce8:	41 5e                	pop    %r14
  408cea:	c3                   	retq   
  408ceb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  408cf0:	48 8d 74 24 3e       	lea    0x3e(%rsp),%rsi
  408cf5:	31 c0                	xor    %eax,%eax
  408cf7:	44 89 e5             	mov    %r12d,%ebp
  408cfa:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
  408cff:	eb 0e                	jmp    408d0f <mbsrtowcs+0xcf>
  408d01:	49 8b 16             	mov    (%r14),%rdx
  408d04:	48 98                	cltq   
  408d06:	48 01 c3             	add    %rax,%rbx
  408d09:	48 01 c2             	add    %rax,%rdx
  408d0c:	49 89 16             	mov    %rdx,(%r14)
  408d0f:	44 89 64 24 28       	mov    %r12d,0x28(%rsp)
  408d14:	49 89 f9             	mov    %rdi,%r9
  408d17:	49 89 e8             	mov    %rbp,%r8
  408d1a:	48 89 f1             	mov    %rsi,%rcx
  408d1d:	44 89 6c 24 20       	mov    %r13d,0x20(%rsp)
  408d22:	e8 29 fd ff ff       	callq  408a50 <__mbrtowc_cp>
  408d27:	85 c0                	test   %eax,%eax
  408d29:	7f d6                	jg     408d01 <mbsrtowcs+0xc1>
  408d2b:	eb ac                	jmp    408cd9 <mbsrtowcs+0x99>
  408d2d:	0f 1f 00             	nopl   (%rax)

0000000000408d30 <mbrlen>:
  408d30:	55                   	push   %rbp
  408d31:	57                   	push   %rdi
  408d32:	56                   	push   %rsi
  408d33:	53                   	push   %rbx
  408d34:	48 83 ec 48          	sub    $0x48,%rsp
  408d38:	31 c0                	xor    %eax,%eax
  408d3a:	48 89 ce             	mov    %rcx,%rsi
  408d3d:	48 89 d7             	mov    %rdx,%rdi
  408d40:	4c 89 c3             	mov    %r8,%rbx
  408d43:	66 89 44 24 3e       	mov    %ax,0x3e(%rsp)
  408d48:	e8 33 03 00 00       	callq  409080 <___mb_cur_max_func>
  408d4d:	89 c5                	mov    %eax,%ebp
  408d4f:	e8 34 03 00 00       	callq  409088 <___lc_codepage_func>
  408d54:	48 85 db             	test   %rbx,%rbx
  408d57:	89 6c 24 28          	mov    %ebp,0x28(%rsp)
  408d5b:	49 89 f8             	mov    %rdi,%r8
  408d5e:	48 8d 15 db 65 00 00 	lea    0x65db(%rip),%rdx        # 40f340 <s_mbstate.53783>
  408d65:	89 44 24 20          	mov    %eax,0x20(%rsp)
  408d69:	48 0f 44 da          	cmove  %rdx,%rbx
  408d6d:	48 89 f2             	mov    %rsi,%rdx
  408d70:	48 8d 4c 24 3e       	lea    0x3e(%rsp),%rcx
  408d75:	49 89 d9             	mov    %rbx,%r9
  408d78:	e8 d3 fc ff ff       	callq  408a50 <__mbrtowc_cp>
  408d7d:	48 98                	cltq   
  408d7f:	48 83 c4 48          	add    $0x48,%rsp
  408d83:	5b                   	pop    %rbx
  408d84:	5e                   	pop    %rsi
  408d85:	5f                   	pop    %rdi
  408d86:	5d                   	pop    %rbp
  408d87:	c3                   	retq   
  408d88:	90                   	nop
  408d89:	90                   	nop
  408d8a:	90                   	nop
  408d8b:	90                   	nop
  408d8c:	90                   	nop
  408d8d:	90                   	nop
  408d8e:	90                   	nop
  408d8f:	90                   	nop

0000000000408d90 <strnlen>:
  408d90:	48 85 d2             	test   %rdx,%rdx
  408d93:	49 89 c8             	mov    %rcx,%r8
  408d96:	74 1d                	je     408db5 <strnlen+0x25>
  408d98:	80 39 00             	cmpb   $0x0,(%rcx)
  408d9b:	75 08                	jne    408da5 <strnlen+0x15>
  408d9d:	eb 16                	jmp    408db5 <strnlen+0x25>
  408d9f:	90                   	nop
  408da0:	80 39 00             	cmpb   $0x0,(%rcx)
  408da3:	74 0f                	je     408db4 <strnlen+0x24>
  408da5:	48 83 c1 01          	add    $0x1,%rcx
  408da9:	48 89 c8             	mov    %rcx,%rax
  408dac:	4c 29 c0             	sub    %r8,%rax
  408daf:	48 39 d0             	cmp    %rdx,%rax
  408db2:	72 ec                	jb     408da0 <strnlen+0x10>
  408db4:	c3                   	retq   
  408db5:	31 c0                	xor    %eax,%eax
  408db7:	c3                   	retq   
  408db8:	90                   	nop
  408db9:	90                   	nop
  408dba:	90                   	nop
  408dbb:	90                   	nop
  408dbc:	90                   	nop
  408dbd:	90                   	nop
  408dbe:	90                   	nop
  408dbf:	90                   	nop

0000000000408dc0 <__wcrtomb_cp>:
  408dc0:	48 83 ec 58          	sub    $0x58,%rsp
  408dc4:	45 85 c0             	test   %r8d,%r8d
  408dc7:	44 89 c0             	mov    %r8d,%eax
  408dca:	66 89 54 24 68       	mov    %dx,0x68(%rsp)
  408dcf:	75 13                	jne    408de4 <__wcrtomb_cp+0x24>
  408dd1:	66 81 fa ff 00       	cmp    $0xff,%dx
  408dd6:	77 52                	ja     408e2a <__wcrtomb_cp+0x6a>
  408dd8:	88 11                	mov    %dl,(%rcx)
  408dda:	b8 01 00 00 00       	mov    $0x1,%eax
  408ddf:	48 83 c4 58          	add    $0x58,%rsp
  408de3:	c3                   	retq   
  408de4:	48 8d 54 24 4c       	lea    0x4c(%rsp),%rdx
  408de9:	44 89 4c 24 28       	mov    %r9d,0x28(%rsp)
  408dee:	41 b9 01 00 00 00    	mov    $0x1,%r9d
  408df4:	48 89 54 24 38       	mov    %rdx,0x38(%rsp)
  408df9:	4c 8d 44 24 68       	lea    0x68(%rsp),%r8
  408dfe:	31 d2                	xor    %edx,%edx
  408e00:	48 89 4c 24 20       	mov    %rcx,0x20(%rsp)
  408e05:	89 c1                	mov    %eax,%ecx
  408e07:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%rsp)
  408e0e:	00 
  408e0f:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  408e16:	00 00 
  408e18:	ff 15 b6 76 00 00    	callq  *0x76b6(%rip)        # 4104d4 <__imp_WideCharToMultiByte>
  408e1e:	85 c0                	test   %eax,%eax
  408e20:	74 08                	je     408e2a <__wcrtomb_cp+0x6a>
  408e22:	8b 54 24 4c          	mov    0x4c(%rsp),%edx
  408e26:	85 d2                	test   %edx,%edx
  408e28:	74 b5                	je     408ddf <__wcrtomb_cp+0x1f>
  408e2a:	e8 19 02 00 00       	callq  409048 <_errno>
  408e2f:	c7 00 2a 00 00 00    	movl   $0x2a,(%rax)
  408e35:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  408e3a:	48 83 c4 58          	add    $0x58,%rsp
  408e3e:	c3                   	retq   
  408e3f:	90                   	nop

0000000000408e40 <wcrtomb>:
  408e40:	57                   	push   %rdi
  408e41:	56                   	push   %rsi
  408e42:	53                   	push   %rbx
  408e43:	48 83 ec 30          	sub    $0x30,%rsp
  408e47:	48 85 c9             	test   %rcx,%rcx
  408e4a:	48 89 cb             	mov    %rcx,%rbx
  408e4d:	89 d6                	mov    %edx,%esi
  408e4f:	48 8d 44 24 2b       	lea    0x2b(%rsp),%rax
  408e54:	48 0f 44 d8          	cmove  %rax,%rbx
  408e58:	e8 23 02 00 00       	callq  409080 <___mb_cur_max_func>
  408e5d:	89 c7                	mov    %eax,%edi
  408e5f:	e8 24 02 00 00       	callq  409088 <___lc_codepage_func>
  408e64:	0f b7 d6             	movzwl %si,%edx
  408e67:	41 89 f9             	mov    %edi,%r9d
  408e6a:	48 89 d9             	mov    %rbx,%rcx
  408e6d:	41 89 c0             	mov    %eax,%r8d
  408e70:	e8 4b ff ff ff       	callq  408dc0 <__wcrtomb_cp>
  408e75:	48 98                	cltq   
  408e77:	48 83 c4 30          	add    $0x30,%rsp
  408e7b:	5b                   	pop    %rbx
  408e7c:	5e                   	pop    %rsi
  408e7d:	5f                   	pop    %rdi
  408e7e:	c3                   	retq   
  408e7f:	90                   	nop

0000000000408e80 <wcsrtombs>:
  408e80:	41 56                	push   %r14
  408e82:	41 55                	push   %r13
  408e84:	41 54                	push   %r12
  408e86:	55                   	push   %rbp
  408e87:	57                   	push   %rdi
  408e88:	56                   	push   %rsi
  408e89:	53                   	push   %rbx
  408e8a:	48 83 ec 30          	sub    $0x30,%rsp
  408e8e:	31 f6                	xor    %esi,%esi
  408e90:	49 89 d5             	mov    %rdx,%r13
  408e93:	49 89 ce             	mov    %rcx,%r14
  408e96:	4d 89 c4             	mov    %r8,%r12
  408e99:	e8 ea 01 00 00       	callq  409088 <___lc_codepage_func>
  408e9e:	89 c5                	mov    %eax,%ebp
  408ea0:	e8 db 01 00 00       	callq  409080 <___mb_cur_max_func>
  408ea5:	49 8b 5d 00          	mov    0x0(%r13),%rbx
  408ea9:	89 c7                	mov    %eax,%edi
  408eab:	48 85 db             	test   %rbx,%rbx
  408eae:	74 14                	je     408ec4 <wcsrtombs+0x44>
  408eb0:	4d 85 f6             	test   %r14,%r14
  408eb3:	74 6b                	je     408f20 <wcsrtombs+0xa0>
  408eb5:	4d 85 e4             	test   %r12,%r12
  408eb8:	75 3e                	jne    408ef8 <wcsrtombs+0x78>
  408eba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  408ec0:	49 89 5d 00          	mov    %rbx,0x0(%r13)
  408ec4:	48 89 f0             	mov    %rsi,%rax
  408ec7:	48 83 c4 30          	add    $0x30,%rsp
  408ecb:	5b                   	pop    %rbx
  408ecc:	5e                   	pop    %rsi
  408ecd:	5f                   	pop    %rdi
  408ece:	5d                   	pop    %rbp
  408ecf:	41 5c                	pop    %r12
  408ed1:	41 5d                	pop    %r13
  408ed3:	41 5e                	pop    %r14
  408ed5:	c3                   	retq   
  408ed6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408edd:	00 00 00 
  408ee0:	48 98                	cltq   
  408ee2:	49 01 c6             	add    %rax,%r14
  408ee5:	48 01 c6             	add    %rax,%rsi
  408ee8:	41 80 7e ff 00       	cmpb   $0x0,-0x1(%r14)
  408eed:	74 71                	je     408f60 <wcsrtombs+0xe0>
  408eef:	48 83 c3 02          	add    $0x2,%rbx
  408ef3:	49 39 f4             	cmp    %rsi,%r12
  408ef6:	76 c8                	jbe    408ec0 <wcsrtombs+0x40>
  408ef8:	0f b7 13             	movzwl (%rbx),%edx
  408efb:	41 89 f9             	mov    %edi,%r9d
  408efe:	41 89 e8             	mov    %ebp,%r8d
  408f01:	4c 89 f1             	mov    %r14,%rcx
  408f04:	e8 b7 fe ff ff       	callq  408dc0 <__wcrtomb_cp>
  408f09:	85 c0                	test   %eax,%eax
  408f0b:	7f d3                	jg     408ee0 <wcsrtombs+0x60>
  408f0d:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  408f14:	eb ae                	jmp    408ec4 <wcsrtombs+0x44>
  408f16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  408f1d:	00 00 00 
  408f20:	4c 8d 64 24 2b       	lea    0x2b(%rsp),%r12
  408f25:	31 f6                	xor    %esi,%esi
  408f27:	eb 1d                	jmp    408f46 <wcsrtombs+0xc6>
  408f29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  408f30:	48 63 d0             	movslq %eax,%rdx
  408f33:	83 e8 01             	sub    $0x1,%eax
  408f36:	48 98                	cltq   
  408f38:	48 01 d6             	add    %rdx,%rsi
  408f3b:	80 7c 04 2b 00       	cmpb   $0x0,0x2b(%rsp,%rax,1)
  408f40:	74 2f                	je     408f71 <wcsrtombs+0xf1>
  408f42:	48 83 c3 02          	add    $0x2,%rbx
  408f46:	0f b7 13             	movzwl (%rbx),%edx
  408f49:	41 89 f9             	mov    %edi,%r9d
  408f4c:	41 89 e8             	mov    %ebp,%r8d
  408f4f:	4c 89 e1             	mov    %r12,%rcx
  408f52:	e8 69 fe ff ff       	callq  408dc0 <__wcrtomb_cp>
  408f57:	85 c0                	test   %eax,%eax
  408f59:	7f d5                	jg     408f30 <wcsrtombs+0xb0>
  408f5b:	eb b0                	jmp    408f0d <wcsrtombs+0x8d>
  408f5d:	0f 1f 00             	nopl   (%rax)
  408f60:	49 c7 45 00 00 00 00 	movq   $0x0,0x0(%r13)
  408f67:	00 
  408f68:	48 83 ee 01          	sub    $0x1,%rsi
  408f6c:	e9 53 ff ff ff       	jmpq   408ec4 <wcsrtombs+0x44>
  408f71:	48 83 ee 01          	sub    $0x1,%rsi
  408f75:	e9 4a ff ff ff       	jmpq   408ec4 <wcsrtombs+0x44>
  408f7a:	90                   	nop
  408f7b:	90                   	nop
  408f7c:	90                   	nop
  408f7d:	90                   	nop
  408f7e:	90                   	nop
  408f7f:	90                   	nop

0000000000408f80 <wcsnlen>:
  408f80:	31 c0                	xor    %eax,%eax
  408f82:	48 85 d2             	test   %rdx,%rdx
  408f85:	74 19                	je     408fa0 <wcsnlen+0x20>
  408f87:	66 83 39 00          	cmpw   $0x0,(%rcx)
  408f8b:	75 0a                	jne    408f97 <wcsnlen+0x17>
  408f8d:	eb 11                	jmp    408fa0 <wcsnlen+0x20>
  408f8f:	90                   	nop
  408f90:	66 83 3c 41 00       	cmpw   $0x0,(%rcx,%rax,2)
  408f95:	74 09                	je     408fa0 <wcsnlen+0x20>
  408f97:	48 83 c0 01          	add    $0x1,%rax
  408f9b:	48 39 c2             	cmp    %rax,%rdx
  408f9e:	75 f0                	jne    408f90 <wcsnlen+0x10>
  408fa0:	c3                   	retq   
  408fa1:	90                   	nop
  408fa2:	90                   	nop
  408fa3:	90                   	nop
  408fa4:	90                   	nop
  408fa5:	90                   	nop
  408fa6:	90                   	nop
  408fa7:	90                   	nop
  408fa8:	90                   	nop
  408fa9:	90                   	nop
  408faa:	90                   	nop
  408fab:	90                   	nop
  408fac:	90                   	nop
  408fad:	90                   	nop
  408fae:	90                   	nop
  408faf:	90                   	nop

0000000000408fb0 <wcslen>:
  408fb0:	ff 25 2e 76 00 00    	jmpq   *0x762e(%rip)        # 4105e4 <__imp_wcslen>
  408fb6:	90                   	nop
  408fb7:	90                   	nop

0000000000408fb8 <vfprintf>:
  408fb8:	ff 25 1e 76 00 00    	jmpq   *0x761e(%rip)        # 4105dc <__imp_vfprintf>
  408fbe:	90                   	nop
  408fbf:	90                   	nop

0000000000408fc0 <tolower>:
  408fc0:	ff 25 0e 76 00 00    	jmpq   *0x760e(%rip)        # 4105d4 <__imp_tolower>
  408fc6:	90                   	nop
  408fc7:	90                   	nop

0000000000408fc8 <strncmp>:
  408fc8:	ff 25 fe 75 00 00    	jmpq   *0x75fe(%rip)        # 4105cc <__imp_strncmp>
  408fce:	90                   	nop
  408fcf:	90                   	nop

0000000000408fd0 <strlen>:
  408fd0:	ff 25 ee 75 00 00    	jmpq   *0x75ee(%rip)        # 4105c4 <__imp_strlen>
  408fd6:	90                   	nop
  408fd7:	90                   	nop

0000000000408fd8 <strerror>:
  408fd8:	ff 25 de 75 00 00    	jmpq   *0x75de(%rip)        # 4105bc <__imp_strerror>
  408fde:	90                   	nop
  408fdf:	90                   	nop

0000000000408fe0 <signal>:
  408fe0:	ff 25 ce 75 00 00    	jmpq   *0x75ce(%rip)        # 4105b4 <__imp_signal>
  408fe6:	90                   	nop
  408fe7:	90                   	nop

0000000000408fe8 <memcpy>:
  408fe8:	ff 25 be 75 00 00    	jmpq   *0x75be(%rip)        # 4105ac <__imp_memcpy>
  408fee:	90                   	nop
  408fef:	90                   	nop

0000000000408ff0 <malloc>:
  408ff0:	ff 25 ae 75 00 00    	jmpq   *0x75ae(%rip)        # 4105a4 <__imp_malloc>
  408ff6:	90                   	nop
  408ff7:	90                   	nop

0000000000408ff8 <localeconv>:
  408ff8:	ff 25 9e 75 00 00    	jmpq   *0x759e(%rip)        # 41059c <__imp_localeconv>
  408ffe:	90                   	nop
  408fff:	90                   	nop

0000000000409000 <fwrite>:
  409000:	ff 25 8e 75 00 00    	jmpq   *0x758e(%rip)        # 410594 <__imp_fwrite>
  409006:	90                   	nop
  409007:	90                   	nop

0000000000409008 <free>:
  409008:	ff 25 7e 75 00 00    	jmpq   *0x757e(%rip)        # 41058c <__imp_free>
  40900e:	90                   	nop
  40900f:	90                   	nop

0000000000409010 <fputc>:
  409010:	ff 25 6e 75 00 00    	jmpq   *0x756e(%rip)        # 410584 <__imp_fputc>
  409016:	90                   	nop
  409017:	90                   	nop

0000000000409018 <fprintf>:
  409018:	ff 25 5e 75 00 00    	jmpq   *0x755e(%rip)        # 41057c <__imp_fprintf>
  40901e:	90                   	nop
  40901f:	90                   	nop

0000000000409020 <exit>:
  409020:	ff 25 4e 75 00 00    	jmpq   *0x754e(%rip)        # 410574 <__imp_exit>
  409026:	90                   	nop
  409027:	90                   	nop

0000000000409028 <calloc>:
  409028:	ff 25 3e 75 00 00    	jmpq   *0x753e(%rip)        # 41056c <__imp_calloc>
  40902e:	90                   	nop
  40902f:	90                   	nop

0000000000409030 <abort>:
  409030:	ff 25 2e 75 00 00    	jmpq   *0x752e(%rip)        # 410564 <__imp_abort>
  409036:	90                   	nop
  409037:	90                   	nop

0000000000409038 <_onexit>:
  409038:	ff 25 1e 75 00 00    	jmpq   *0x751e(%rip)        # 41055c <__imp__onexit>
  40903e:	90                   	nop
  40903f:	90                   	nop

0000000000409040 <_initterm>:
  409040:	ff 25 0e 75 00 00    	jmpq   *0x750e(%rip)        # 410554 <__imp__initterm>
  409046:	90                   	nop
  409047:	90                   	nop

0000000000409048 <_errno>:
  409048:	ff 25 f6 74 00 00    	jmpq   *0x74f6(%rip)        # 410544 <__imp__errno>
  40904e:	90                   	nop
  40904f:	90                   	nop

0000000000409050 <_cexit>:
  409050:	ff 25 e6 74 00 00    	jmpq   *0x74e6(%rip)        # 41053c <__imp__cexit>
  409056:	90                   	nop
  409057:	90                   	nop

0000000000409058 <_amsg_exit>:
  409058:	ff 25 d6 74 00 00    	jmpq   *0x74d6(%rip)        # 410534 <__imp__amsg_exit>
  40905e:	90                   	nop
  40905f:	90                   	nop

0000000000409060 <__setusermatherr>:
  409060:	ff 25 be 74 00 00    	jmpq   *0x74be(%rip)        # 410524 <__imp___setusermatherr>
  409066:	90                   	nop
  409067:	90                   	nop

0000000000409068 <__set_app_type>:
  409068:	ff 25 ae 74 00 00    	jmpq   *0x74ae(%rip)        # 41051c <__imp___set_app_type>
  40906e:	90                   	nop
  40906f:	90                   	nop

0000000000409070 <__lconv_init>:
  409070:	ff 25 9e 74 00 00    	jmpq   *0x749e(%rip)        # 410514 <__imp___lconv_init>
  409076:	90                   	nop
  409077:	90                   	nop

0000000000409078 <__getmainargs>:
  409078:	ff 25 7e 74 00 00    	jmpq   *0x747e(%rip)        # 4104fc <__imp___getmainargs>
  40907e:	90                   	nop
  40907f:	90                   	nop

0000000000409080 <___mb_cur_max_func>:
  409080:	ff 25 6e 74 00 00    	jmpq   *0x746e(%rip)        # 4104f4 <__imp____mb_cur_max_func>
  409086:	90                   	nop
  409087:	90                   	nop

0000000000409088 <___lc_codepage_func>:
  409088:	ff 25 5e 74 00 00    	jmpq   *0x745e(%rip)        # 4104ec <__imp____lc_codepage_func>
  40908e:	90                   	nop
  40908f:	90                   	nop

0000000000409090 <__C_specific_handler>:
  409090:	ff 25 4e 74 00 00    	jmpq   *0x744e(%rip)        # 4104e4 <__imp___C_specific_handler>
  409096:	90                   	nop
  409097:	90                   	nop
  409098:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40909f:	00 

00000000004090a0 <__acrt_iob_func>:
  4090a0:	53                   	push   %rbx
  4090a1:	48 83 ec 20          	sub    $0x20,%rsp
  4090a5:	89 cb                	mov    %ecx,%ebx
  4090a7:	e8 54 00 00 00       	callq  409100 <__iob_func>
  4090ac:	89 d9                	mov    %ebx,%ecx
  4090ae:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
  4090b2:	48 c1 e2 04          	shl    $0x4,%rdx
  4090b6:	48 01 d0             	add    %rdx,%rax
  4090b9:	48 83 c4 20          	add    $0x20,%rsp
  4090bd:	5b                   	pop    %rbx
  4090be:	c3                   	retq   
  4090bf:	90                   	nop

00000000004090c0 <_get_invalid_parameter_handler>:
  4090c0:	48 8b 05 89 62 00 00 	mov    0x6289(%rip),%rax        # 40f350 <handler>
  4090c7:	c3                   	retq   
  4090c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4090cf:	00 

00000000004090d0 <_set_invalid_parameter_handler>:
  4090d0:	48 89 c8             	mov    %rcx,%rax
  4090d3:	48 87 05 76 62 00 00 	xchg   %rax,0x6276(%rip)        # 40f350 <handler>
  4090da:	c3                   	retq   
  4090db:	90                   	nop
  4090dc:	90                   	nop
  4090dd:	90                   	nop
  4090de:	90                   	nop
  4090df:	90                   	nop

00000000004090e0 <__p__acmdln>:
  4090e0:	48 8b 05 79 27 00 00 	mov    0x2779(%rip),%rax        # 40b860 <.refptr.__imp__acmdln>
  4090e7:	48 8b 00             	mov    (%rax),%rax
  4090ea:	c3                   	retq   
  4090eb:	90                   	nop
  4090ec:	90                   	nop
  4090ed:	90                   	nop
  4090ee:	90                   	nop
  4090ef:	90                   	nop

00000000004090f0 <__p__fmode>:
  4090f0:	48 8b 05 79 27 00 00 	mov    0x2779(%rip),%rax        # 40b870 <.refptr.__imp__fmode>
  4090f7:	48 8b 00             	mov    (%rax),%rax
  4090fa:	c3                   	retq   
  4090fb:	90                   	nop
  4090fc:	90                   	nop
  4090fd:	90                   	nop
  4090fe:	90                   	nop
  4090ff:	90                   	nop

0000000000409100 <__iob_func>:
  409100:	ff 25 06 74 00 00    	jmpq   *0x7406(%rip)        # 41050c <__imp___iob_func>
  409106:	90                   	nop
  409107:	90                   	nop
  409108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40910f:	00 

0000000000409110 <WideCharToMultiByte>:
  409110:	ff 25 be 73 00 00    	jmpq   *0x73be(%rip)        # 4104d4 <__imp_WideCharToMultiByte>
  409116:	90                   	nop
  409117:	90                   	nop

0000000000409118 <VirtualQuery>:
  409118:	ff 25 ae 73 00 00    	jmpq   *0x73ae(%rip)        # 4104cc <__imp_VirtualQuery>
  40911e:	90                   	nop
  40911f:	90                   	nop

0000000000409120 <VirtualProtect>:
  409120:	ff 25 9e 73 00 00    	jmpq   *0x739e(%rip)        # 4104c4 <__imp_VirtualProtect>
  409126:	90                   	nop
  409127:	90                   	nop

0000000000409128 <UnhandledExceptionFilter>:
  409128:	ff 25 8e 73 00 00    	jmpq   *0x738e(%rip)        # 4104bc <__imp_UnhandledExceptionFilter>
  40912e:	90                   	nop
  40912f:	90                   	nop

0000000000409130 <TlsGetValue>:
  409130:	ff 25 7e 73 00 00    	jmpq   *0x737e(%rip)        # 4104b4 <__imp_TlsGetValue>
  409136:	90                   	nop
  409137:	90                   	nop

0000000000409138 <TerminateProcess>:
  409138:	ff 25 6e 73 00 00    	jmpq   *0x736e(%rip)        # 4104ac <__imp_TerminateProcess>
  40913e:	90                   	nop
  40913f:	90                   	nop

0000000000409140 <Sleep>:
  409140:	ff 25 5e 73 00 00    	jmpq   *0x735e(%rip)        # 4104a4 <__imp_Sleep>
  409146:	90                   	nop
  409147:	90                   	nop

0000000000409148 <SetUnhandledExceptionFilter>:
  409148:	ff 25 4e 73 00 00    	jmpq   *0x734e(%rip)        # 41049c <__imp_SetUnhandledExceptionFilter>
  40914e:	90                   	nop
  40914f:	90                   	nop

0000000000409150 <RtlVirtualUnwind>:
  409150:	ff 25 3e 73 00 00    	jmpq   *0x733e(%rip)        # 410494 <__imp_RtlVirtualUnwind>
  409156:	90                   	nop
  409157:	90                   	nop

0000000000409158 <RtlLookupFunctionEntry>:
  409158:	ff 25 2e 73 00 00    	jmpq   *0x732e(%rip)        # 41048c <__imp_RtlLookupFunctionEntry>
  40915e:	90                   	nop
  40915f:	90                   	nop

0000000000409160 <RtlCaptureContext>:
  409160:	ff 25 1e 73 00 00    	jmpq   *0x731e(%rip)        # 410484 <__imp_RtlCaptureContext>
  409166:	90                   	nop
  409167:	90                   	nop

0000000000409168 <RtlAddFunctionTable>:
  409168:	ff 25 0e 73 00 00    	jmpq   *0x730e(%rip)        # 41047c <__imp_RtlAddFunctionTable>
  40916e:	90                   	nop
  40916f:	90                   	nop

0000000000409170 <QueryPerformanceCounter>:
  409170:	ff 25 fe 72 00 00    	jmpq   *0x72fe(%rip)        # 410474 <__imp_QueryPerformanceCounter>
  409176:	90                   	nop
  409177:	90                   	nop

0000000000409178 <MultiByteToWideChar>:
  409178:	ff 25 ee 72 00 00    	jmpq   *0x72ee(%rip)        # 41046c <__imp_MultiByteToWideChar>
  40917e:	90                   	nop
  40917f:	90                   	nop

0000000000409180 <LeaveCriticalSection>:
  409180:	ff 25 de 72 00 00    	jmpq   *0x72de(%rip)        # 410464 <__imp_LeaveCriticalSection>
  409186:	90                   	nop
  409187:	90                   	nop

0000000000409188 <IsDBCSLeadByteEx>:
  409188:	ff 25 ce 72 00 00    	jmpq   *0x72ce(%rip)        # 41045c <__imp_IsDBCSLeadByteEx>
  40918e:	90                   	nop
  40918f:	90                   	nop

0000000000409190 <InitializeCriticalSection>:
  409190:	ff 25 be 72 00 00    	jmpq   *0x72be(%rip)        # 410454 <__imp_InitializeCriticalSection>
  409196:	90                   	nop
  409197:	90                   	nop

0000000000409198 <GetTickCount>:
  409198:	ff 25 ae 72 00 00    	jmpq   *0x72ae(%rip)        # 41044c <__imp_GetTickCount>
  40919e:	90                   	nop
  40919f:	90                   	nop

00000000004091a0 <GetSystemTimeAsFileTime>:
  4091a0:	ff 25 9e 72 00 00    	jmpq   *0x729e(%rip)        # 410444 <__imp_GetSystemTimeAsFileTime>
  4091a6:	90                   	nop
  4091a7:	90                   	nop

00000000004091a8 <GetStartupInfoA>:
  4091a8:	ff 25 8e 72 00 00    	jmpq   *0x728e(%rip)        # 41043c <__imp_GetStartupInfoA>
  4091ae:	90                   	nop
  4091af:	90                   	nop

00000000004091b0 <GetLastError>:
  4091b0:	ff 25 7e 72 00 00    	jmpq   *0x727e(%rip)        # 410434 <__imp_GetLastError>
  4091b6:	90                   	nop
  4091b7:	90                   	nop

00000000004091b8 <GetCurrentThreadId>:
  4091b8:	ff 25 6e 72 00 00    	jmpq   *0x726e(%rip)        # 41042c <__imp_GetCurrentThreadId>
  4091be:	90                   	nop
  4091bf:	90                   	nop

00000000004091c0 <GetCurrentProcessId>:
  4091c0:	ff 25 5e 72 00 00    	jmpq   *0x725e(%rip)        # 410424 <__imp_GetCurrentProcessId>
  4091c6:	90                   	nop
  4091c7:	90                   	nop

00000000004091c8 <GetCurrentProcess>:
  4091c8:	ff 25 4e 72 00 00    	jmpq   *0x724e(%rip)        # 41041c <__imp_GetCurrentProcess>
  4091ce:	90                   	nop
  4091cf:	90                   	nop

00000000004091d0 <EnterCriticalSection>:
  4091d0:	ff 25 3e 72 00 00    	jmpq   *0x723e(%rip)        # 410414 <__imp_EnterCriticalSection>
  4091d6:	90                   	nop
  4091d7:	90                   	nop

00000000004091d8 <DeleteCriticalSection>:
  4091d8:	ff 25 2e 72 00 00    	jmpq   *0x722e(%rip)        # 41040c <__imp_DeleteCriticalSection>
  4091de:	90                   	nop
    }

  // Helper for the to_string / to_wstring functions.
  template<typename _String, typename _CharT = typename _String::value_type>
    _String
    __to_xstring(int (*__convf) (_CharT*, std::size_t, const _CharT*,
  4091df:	90                   	nop

00000000004091e0 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z>:
  4091e0:	55                   	push   %rbp
  4091e1:	53                   	push   %rbx
  4091e2:	48 83 ec 48          	sub    $0x48,%rsp
  4091e6:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  4091ed:	00 
  4091ee:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4091f2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4091f6:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
  4091fa:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
				 __builtin_va_list), std::size_t __n,
		 const _CharT* __fmt, ...)
    {
      // XXX Eventually the result should be constructed in-place in
      // the __cxx11 string, likely with the help of internal hooks.
      _CharT* __s = static_cast<_CharT*>(__builtin_alloca(sizeof(_CharT)
  4091fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  409202:	48 83 c0 0f          	add    $0xf,%rax
  409206:	48 c1 e8 04          	shr    $0x4,%rax
  40920a:	48 c1 e0 04          	shl    $0x4,%rax
  40920e:	e8 fd b1 ff ff       	callq  404410 <___chkstk_ms>
  409213:	48 29 c4             	sub    %rax,%rsp
  409216:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  40921b:	48 83 c0 0f          	add    $0xf,%rax
  40921f:	48 c1 e8 04          	shr    $0x4,%rax
  409223:	48 c1 e0 04          	shl    $0x4,%rax
  409227:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
							  * __n));

      __builtin_va_list __args;
      __builtin_va_start(__args, __fmt);
  40922b:	48 89 e8             	mov    %rbp,%rax
  40922e:	48 89 45 a8          	mov    %rax,-0x58(%rbp)

      const int __len = __convf(__s, __n, __fmt, __args);
  409232:	4c 8b 4d a8          	mov    -0x58(%rbp),%r9
  409236:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  40923a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40923e:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  409242:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  409246:	ff d0                	callq  *%rax
  409248:	89 45 b4             	mov    %eax,-0x4c(%rbp)

      __builtin_va_end(__args);

      return _String(__s, __s + __len);
  40924b:	48 8d 45 b3          	lea    -0x4d(%rbp),%rax
  40924f:	48 89 c1             	mov    %rax,%rcx
  409252:	e8 d1 9c ff ff       	callq  402f28 <_ZNSaIcEC1Ev>
  409257:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  40925a:	48 98                	cltq   
  40925c:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  409260:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
  409264:	48 8d 55 b3          	lea    -0x4d(%rbp),%rdx
  409268:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40926c:	49 89 d1             	mov    %rdx,%r9
  40926f:	49 89 c8             	mov    %rcx,%r8
  409272:	48 89 c2             	mov    %rax,%rdx
  409275:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  409279:	e8 a2 02 00 00       	callq  409520 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>
  40927e:	48 8d 45 b3          	lea    -0x4d(%rbp),%rax
  409282:	48 89 c1             	mov    %rax,%rcx
  409285:	e8 96 9c ff ff       	callq  402f20 <_ZNSaIcED1Ev>
  40928a:	eb 1a                	jmp    4092a6 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z+0xc6>
  40928c:	48 89 c3             	mov    %rax,%rbx
  40928f:	48 8d 45 b3          	lea    -0x4d(%rbp),%rax
  409293:	48 89 c1             	mov    %rax,%rcx
  409296:	e8 85 9c ff ff       	callq  402f20 <_ZNSaIcED1Ev>
  40929b:	48 89 d8             	mov    %rbx,%rax
  40929e:	48 89 c1             	mov    %rax,%rcx
  4092a1:	e8 5a b1 ff ff       	callq  404400 <_Unwind_Resume>
    }
  4092a6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4092aa:	48 8d 65 c8          	lea    -0x38(%rbp),%rsp
  4092ae:	5b                   	pop    %rbx
  4092af:	5d                   	pop    %rbp
  4092b0:	c3                   	retq   
  4092b1:	90                   	nop
  4092b2:	90                   	nop
  4092b3:	90                   	nop
  4092b4:	90                   	nop
  4092b5:	90                   	nop
  4092b6:	90                   	nop
  4092b7:	90                   	nop
  4092b8:	90                   	nop
  4092b9:	90                   	nop
  4092ba:	90                   	nop
  4092bb:	90                   	nop
  4092bc:	90                   	nop
  4092bd:	90                   	nop
  4092be:	90                   	nop


  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
  4092bf:	90                   	nop

00000000004092c0 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>:
  4092c0:	55                   	push   %rbp
  4092c1:	48 89 e5             	mov    %rsp,%rbp
  4092c4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return __ptr == 0; }
  4092c8:	48 83 7d 10 00       	cmpq   $0x0,0x10(%rbp)
  4092cd:	0f 94 c0             	sete   %al
  4092d0:	5d                   	pop    %rbp
  4092d1:	c3                   	retq   
  4092d2:	90                   	nop
  4092d3:	90                   	nop
  4092d4:	90                   	nop
  4092d5:	90                   	nop
  4092d6:	90                   	nop
  4092d7:	90                   	nop
  4092d8:	90                   	nop
  4092d9:	90                   	nop
  4092da:	90                   	nop
  4092db:	90                   	nop
  4092dc:	90                   	nop
  4092dd:	90                   	nop
  4092de:	90                   	nop
      pointer
      operator->() const _GLIBCXX_NOEXCEPT
      { return _M_current; }

      __normal_iterator&
      operator++() _GLIBCXX_NOEXCEPT
  4092df:	90                   	nop

00000000004092e0 <_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv>:
  4092e0:	55                   	push   %rbp
  4092e1:	48 89 e5             	mov    %rsp,%rbp
  4092e4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
      {
	++_M_current;
  4092e8:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4092ec:	48 8b 00             	mov    (%rax),%rax
  4092ef:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4092f3:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4092f7:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  4092fa:	48 8b 45 10          	mov    0x10(%rbp),%rax
      }
  4092fe:	5d                   	pop    %rbp
  4092ff:	c3                   	retq   

0000000000409300 <_ZN9__gnu_cxxneIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_>:
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() != __rhs.base(); }

  template<typename _Iterator, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
  409300:	55                   	push   %rbp
  409301:	53                   	push   %rbx
  409302:	48 83 ec 28          	sub    $0x28,%rsp
  409306:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40930d:	00 
  40930e:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  409312:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
	       const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() != __rhs.base(); }
  409316:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40931a:	e8 21 00 00 00       	callq  409340 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv>
  40931f:	48 8b 18             	mov    (%rax),%rbx
  409322:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  409326:	48 89 c1             	mov    %rax,%rcx
  409329:	e8 12 00 00 00       	callq  409340 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv>
  40932e:	48 8b 00             	mov    (%rax),%rax
  409331:	48 39 c3             	cmp    %rax,%rbx
  409334:	0f 95 c0             	setne  %al
  409337:	48 83 c4 28          	add    $0x28,%rsp
  40933b:	5b                   	pop    %rbx
  40933c:	5d                   	pop    %rbp
  40933d:	c3                   	retq   
  40933e:	90                   	nop
      base() const _GLIBCXX_NOEXCEPT
  40933f:	90                   	nop

0000000000409340 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4baseEv>:
  409340:	55                   	push   %rbp
  409341:	48 89 e5             	mov    %rsp,%rbp
  409344:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
      { return _M_current; }
  409348:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40934c:	5d                   	pop    %rbp
  40934d:	c3                   	retq   
  40934e:	90                   	nop
      operator*() const _GLIBCXX_NOEXCEPT
  40934f:	90                   	nop

0000000000409350 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv>:
  409350:	55                   	push   %rbp
  409351:	48 89 e5             	mov    %rsp,%rbp
  409354:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
      { return *_M_current; }
  409358:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40935c:	48 8b 00             	mov    (%rax),%rax
  40935f:	5d                   	pop    %rbp
  409360:	c3                   	retq   
  409361:	90                   	nop
  409362:	90                   	nop
  409363:	90                   	nop
  409364:	90                   	nop
  409365:	90                   	nop
  409366:	90                   	nop
  409367:	90                   	nop
  409368:	90                   	nop
  409369:	90                   	nop
  40936a:	90                   	nop
  40936b:	90                   	nop
  40936c:	90                   	nop
  40936d:	90                   	nop
  40936e:	90                   	nop
	__sv_type _M_sv;
      };
#endif

      // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
      struct _Alloc_hider : allocator_type // TODO check __is_final
  40936f:	90                   	nop

0000000000409370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
  409370:	55                   	push   %rbp
  409371:	48 89 e5             	mov    %rsp,%rbp
  409374:	48 83 ec 20          	sub    $0x20,%rsp
  409378:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40937c:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  409380:	e8 93 9b ff ff       	callq  402f18 <_ZNSaIcED2Ev>
  409385:	90                   	nop
  409386:	48 83 c4 20          	add    $0x20,%rsp
  40938a:	5d                   	pop    %rbp
  40938b:	c3                   	retq   
  40938c:	90                   	nop
  40938d:	90                   	nop
  40938e:	90                   	nop
      _M_construct_aux_2(size_type __req, _CharT __c)
      { _M_construct(__req, __c); }

      template<typename _InIterator>
        void
        _M_construct(_InIterator __beg, _InIterator __end)
  40938f:	90                   	nop

0000000000409390 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>:
  409390:	55                   	push   %rbp
  409391:	48 89 e5             	mov    %rsp,%rbp
  409394:	48 83 ec 30          	sub    $0x30,%rsp
  409398:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40939c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4093a0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
	{
	  typedef typename std::__is_integer<_InIterator>::__type _Integral;
	  _M_construct_aux(__beg, __end, _Integral());
  4093a4:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  4093a8:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4093ac:	49 89 d0             	mov    %rdx,%r8
  4093af:	48 89 c2             	mov    %rax,%rdx
  4093b2:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4093b6:	e8 25 01 00 00       	callq  4094e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>
        }
  4093bb:	90                   	nop
  4093bc:	48 83 c4 30          	add    $0x30,%rsp
  4093c0:	5d                   	pop    %rbp
  4093c1:	c3                   	retq   
  4093c2:	90                   	nop
  4093c3:	90                   	nop
  4093c4:	90                   	nop
  4093c5:	90                   	nop
  4093c6:	90                   	nop
  4093c7:	90                   	nop
  4093c8:	90                   	nop
  4093c9:	90                   	nop
  4093ca:	90                   	nop
  4093cb:	90                   	nop
  4093cc:	90                   	nop
  4093cd:	90                   	nop
  4093ce:	90                   	nop
      }

  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      void
      basic_string<_CharT, _Traits, _Alloc>::
  4093cf:	90                   	nop

00000000004093d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>:
  4093d0:	55                   	push   %rbp
  4093d1:	53                   	push   %rbx
  4093d2:	48 83 ec 38          	sub    $0x38,%rsp
  4093d6:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  4093dd:	00 
  4093de:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4093e2:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4093e6:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
  4093ea:	44 88 4d e8          	mov    %r9b,-0x18(%rbp)
      _M_construct(_InIterator __beg, _InIterator __end,
		   std::forward_iterator_tag)
      {
	// NB: Not required, but considered best practice.
	if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
  4093ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4093f2:	48 89 c1             	mov    %rax,%rcx
  4093f5:	e8 c6 fe ff ff       	callq  4092c0 <_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_>
  4093fa:	84 c0                	test   %al,%al
  4093fc:	74 11                	je     40940f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x3f>
  4093fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409402:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  409406:	74 07                	je     40940f <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x3f>
  409408:	b8 01 00 00 00       	mov    $0x1,%eax
  40940d:	eb 05                	jmp    409414 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x44>
  40940f:	b8 00 00 00 00       	mov    $0x0,%eax
  409414:	84 c0                	test   %al,%al
  409416:	74 0c                	je     409424 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0x54>
	  std::__throw_logic_error(__N("basic_string::"
  409418:	48 8d 0d d1 1c 00 00 	lea    0x1cd1(%rip),%rcx        # 40b0f0 <_ZNSt8__detailL19_S_invalid_state_idE+0x4c>
  40941f:	e8 1c 9a ff ff       	callq  402e40 <_ZSt19__throw_logic_errorPKc>
				       "_M_construct null not valid"));

	size_type __dnew = static_cast<size_type>(std::distance(__beg, __end));
  409424:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  409428:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40942c:	48 89 c1             	mov    %rax,%rcx
  40942f:	e8 ec 01 00 00       	callq  409620 <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>
  409434:	48 89 45 a8          	mov    %rax,-0x58(%rbp)

	if (__dnew > size_type(_S_local_capacity))
  409438:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40943c:	48 83 f8 0f          	cmp    $0xf,%rax
  409440:	76 32                	jbe    409474 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0xa4>
	  {
	    _M_data(_M_create(__dnew, size_type(0)));
  409442:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  409446:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40944c:	48 89 c2             	mov    %rax,%rdx
  40944f:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  409453:	e8 40 9a ff ff       	callq  402e98 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
  409458:	48 89 c2             	mov    %rax,%rdx
  40945b:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40945f:	e8 3c 9a ff ff       	callq  402ea0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
	    _M_capacity(__dnew);
  409464:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  409468:	48 89 c2             	mov    %rax,%rdx
  40946b:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40946f:	e8 84 9a ff ff       	callq  402ef8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
	  }

	// Check for out_of_range and length_error exceptions.
	__try
	  { this->_S_copy_chars(_M_data(), __beg, __end); }
  409474:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  409478:	e8 cb 9a ff ff       	callq  402f48 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
  40947d:	48 89 c1             	mov    %rax,%rcx
  409480:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  409484:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409488:	49 89 d0             	mov    %rdx,%r8
  40948b:	48 89 c2             	mov    %rax,%rdx
  40948e:	e8 45 9a ff ff       	callq  402ed8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_>
	  {
	    _M_dispose();
	    __throw_exception_again;
	  }

	_M_set_length(__dnew);
  409493:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  409497:	48 89 c2             	mov    %rax,%rdx
  40949a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40949e:	e8 3d 9a ff ff       	callq  402ee0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
      }
  4094a3:	eb 2a                	jmp    4094cf <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag+0xff>
	__catch(...)
  4094a5:	48 89 c1             	mov    %rax,%rcx
  4094a8:	e8 63 99 ff ff       	callq  402e10 <__cxa_begin_catch>
	    _M_dispose();
  4094ad:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4094b1:	e8 4a 9a ff ff       	callq  402f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
	    __throw_exception_again;
  4094b6:	e8 45 99 ff ff       	callq  402e00 <__cxa_rethrow>
  4094bb:	48 89 c3             	mov    %rax,%rbx
	__catch(...)
  4094be:	e8 45 99 ff ff       	callq  402e08 <__cxa_end_catch>
  4094c3:	48 89 d8             	mov    %rbx,%rax
  4094c6:	48 89 c1             	mov    %rax,%rcx
  4094c9:	e8 32 af ff ff       	callq  404400 <_Unwind_Resume>
  4094ce:	90                   	nop
      }
  4094cf:	48 83 c4 38          	add    $0x38,%rsp
  4094d3:	5b                   	pop    %rbx
  4094d4:	5d                   	pop    %rbp
  4094d5:	c3                   	retq   
  4094d6:	90                   	nop
  4094d7:	90                   	nop
  4094d8:	90                   	nop
  4094d9:	90                   	nop
  4094da:	90                   	nop
  4094db:	90                   	nop
  4094dc:	90                   	nop
  4094dd:	90                   	nop
  4094de:	90                   	nop
        _M_construct_aux(_InIterator __beg, _InIterator __end,
  4094df:	90                   	nop

00000000004094e0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type>:
  4094e0:	55                   	push   %rbp
  4094e1:	48 89 e5             	mov    %rsp,%rbp
  4094e4:	48 83 ec 30          	sub    $0x30,%rsp
  4094e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4094ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4094f0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
  4094f4:	44 88 4d 28          	mov    %r9b,0x28(%rbp)
          _M_construct(__beg, __end, _Tag());
  4094f8:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  4094fc:	48 8b 45 18          	mov    0x18(%rbp),%rax
  409500:	45 89 d1             	mov    %r10d,%r9d
  409503:	49 89 d0             	mov    %rdx,%r8
  409506:	48 89 c2             	mov    %rax,%rdx
  409509:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40950d:	e8 be fe ff ff       	callq  4093d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag>
	}
  409512:	90                   	nop
  409513:	48 83 c4 30          	add    $0x30,%rsp
  409517:	5d                   	pop    %rbp
  409518:	c3                   	retq   
  409519:	90                   	nop
  40951a:	90                   	nop
  40951b:	90                   	nop
  40951c:	90                   	nop
  40951d:	90                   	nop
  40951e:	90                   	nop
      template<typename _InputIterator,
	       typename = std::_RequireInputIter<_InputIterator>>
#else
      template<typename _InputIterator>
#endif
        basic_string(_InputIterator __beg, _InputIterator __end,
  40951f:	90                   	nop

0000000000409520 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_>:
  409520:	55                   	push   %rbp
  409521:	53                   	push   %rbx
  409522:	48 83 ec 28          	sub    $0x28,%rsp
  409526:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40952d:	00 
  40952e:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  409532:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  409536:	4c 89 45 d0          	mov    %r8,-0x30(%rbp)
  40953a:	4c 89 4d d8          	mov    %r9,-0x28(%rbp)
		     const _Alloc& __a = _Alloc())
	: _M_dataplus(_M_local_data(), __a)
  40953e:	48 8b 5d c0          	mov    -0x40(%rbp),%rbx
  409542:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  409546:	e8 9d 99 ff ff       	callq  402ee8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
  40954b:	48 89 c2             	mov    %rax,%rdx
  40954e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  409552:	49 89 c0             	mov    %rax,%r8
  409555:	48 89 d9             	mov    %rbx,%rcx
  409558:	e8 93 99 ff ff       	callq  402ef0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_>
	{ _M_construct(__beg, __end); }
  40955d:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  409561:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  409565:	49 89 d0             	mov    %rdx,%r8
  409568:	48 89 c2             	mov    %rax,%rdx
  40956b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40956f:	e8 1c fe ff ff       	callq  409390 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_>
  409574:	eb 1b                	jmp    409591 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IPcvEET_S7_RKS3_+0x71>
  409576:	48 89 c3             	mov    %rax,%rbx
	: _M_dataplus(_M_local_data(), __a)
  409579:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40957d:	48 89 c1             	mov    %rax,%rcx
  409580:	e8 eb fd ff ff       	callq  409370 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
  409585:	48 89 d8             	mov    %rbx,%rax
  409588:	48 89 c1             	mov    %rax,%rcx
  40958b:	e8 70 ae ff ff       	callq  404400 <_Unwind_Resume>
  409590:	90                   	nop
	{ _M_construct(__beg, __end); }
  409591:	48 83 c4 28          	add    $0x28,%rsp
  409595:	5b                   	pop    %rbx
  409596:	5d                   	pop    %rbp
  409597:	c3                   	retq   
  409598:	90                   	nop
  409599:	90                   	nop
  40959a:	90                   	nop
  40959b:	90                   	nop
  40959c:	90                   	nop
  40959d:	90                   	nop
  40959e:	90                   	nop
  // NB: (v)snprintf vs sprintf.

  // DR 1261.
  inline string
  to_string(int __val)
  { return __gnu_cxx::__to_xstring<string>(&std::vsnprintf, 4 * sizeof(int),
  40959f:	90                   	nop

00000000004095a0 <_ZNSt7__cxx119to_stringEi>:
  4095a0:	55                   	push   %rbp
  4095a1:	48 89 e5             	mov    %rsp,%rbp
  4095a4:	48 83 ec 30          	sub    $0x30,%rsp
  4095a8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4095ac:	89 55 18             	mov    %edx,0x18(%rbp)
					   "%d", __val); }
  4095af:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4095b3:	8b 55 18             	mov    0x18(%rbp),%edx
  4095b6:	89 54 24 20          	mov    %edx,0x20(%rsp)
  4095ba:	4c 8d 0d 40 1a 00 00 	lea    0x1a40(%rip),%r9        # 40b001 <_ZStL19piecewise_construct+0x1>
  4095c1:	41 b8 10 00 00 00    	mov    $0x10,%r8d
  4095c7:	48 8d 15 82 7f ff ff 	lea    -0x807e(%rip),%rdx        # 401550 <_ZL9vsnprintfPcyPKcS_>
  4095ce:	48 89 c1             	mov    %rax,%rcx
  4095d1:	e8 0a fc ff ff       	callq  4091e0 <_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_yPKS8_PcEySB_z>
  4095d6:	48 8b 45 10          	mov    0x10(%rbp),%rax
  4095da:	48 83 c4 30          	add    $0x30,%rsp
  4095de:	5d                   	pop    %rbp
  4095df:	c3                   	retq   

00000000004095e0 <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>:
    }

  template<typename _RandomAccessIterator>
    inline _GLIBCXX14_CONSTEXPR
    typename iterator_traits<_RandomAccessIterator>::difference_type
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
  4095e0:	55                   	push   %rbp
  4095e1:	48 89 e5             	mov    %rsp,%rbp
  4095e4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4095e8:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4095ec:	44 88 45 20          	mov    %r8b,0x20(%rbp)
               random_access_iterator_tag)
    {
      // concept requirements
      __glibcxx_function_requires(_RandomAccessIteratorConcept<
				  _RandomAccessIterator>)
      return __last - __first;
  4095f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4095f4:	48 2b 45 10          	sub    0x10(%rbp),%rax
    }
  4095f8:	5d                   	pop    %rbp
  4095f9:	c3                   	retq   
  4095fa:	90                   	nop
  4095fb:	90                   	nop
  4095fc:	90                   	nop
  4095fd:	90                   	nop
  4095fe:	90                   	nop
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline _GLIBCXX_CONSTEXPR
    typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
  4095ff:	90                   	nop

0000000000409600 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>:
  409600:	55                   	push   %rbp
  409601:	48 89 e5             	mov    %rsp,%rbp
  409604:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return typename iterator_traits<_Iter>::iterator_category(); }
  409608:	5d                   	pop    %rbp
  409609:	c3                   	retq   
  40960a:	90                   	nop
  40960b:	90                   	nop
  40960c:	90                   	nop
  40960d:	90                   	nop
  40960e:	90                   	nop
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
  40960f:	90                   	nop

0000000000409610 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>:
  409610:	55                   	push   %rbp
  409611:	48 89 e5             	mov    %rsp,%rbp
  409614:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
  409618:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40961c:	5d                   	pop    %rbp
  40961d:	c3                   	retq   
  40961e:	90                   	nop
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline _GLIBCXX17_CONSTEXPR
    typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
  40961f:	90                   	nop

0000000000409620 <_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_>:
  409620:	55                   	push   %rbp
  409621:	53                   	push   %rbx
  409622:	48 83 ec 38          	sub    $0x38,%rsp
  409626:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40962d:	00 
  40962e:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  409632:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
			     std::__iterator_category(__first));
  409636:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
  40963a:	e8 c1 ff ff ff       	callq  409600 <_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_>
      return std::__distance(__first, __last,
  40963f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  409643:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  409647:	41 89 d8             	mov    %ebx,%r8d
  40964a:	48 89 c1             	mov    %rax,%rcx
  40964d:	e8 8e ff ff ff       	callq  4095e0 <_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag>
			     std::__iterator_category(__first));
  409652:	90                   	nop
    }
  409653:	48 83 c4 38          	add    $0x38,%rsp
  409657:	5b                   	pop    %rbx
  409658:	5d                   	pop    %rbp
  409659:	c3                   	retq   
  40965a:	90                   	nop
  40965b:	90                   	nop
  40965c:	90                   	nop
  40965d:	90                   	nop
  40965e:	90                   	nop
   *  @p unary_op must not alter its argument.
  */
  template<typename _InputIterator, typename _OutputIterator,
	   typename _UnaryOperation>
    _OutputIterator
    transform(_InputIterator __first, _InputIterator __last,
  40965f:	90                   	nop

0000000000409660 <_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFiiEET0_T_SD_SC_T1_>:
  409660:	55                   	push   %rbp
  409661:	53                   	push   %rbx
  409662:	48 83 ec 28          	sub    $0x28,%rsp
  409666:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40966d:	00 
  40966e:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  409672:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  409676:	4c 89 45 d0          	mov    %r8,-0x30(%rbp)
  40967a:	4c 89 4d d8          	mov    %r9,-0x28(%rbp)
      __glibcxx_function_requires(_OutputIteratorConcept<_OutputIterator,
	    // "the type returned by a _UnaryOperation"
	    __typeof__(__unary_op(*__first))>)
      __glibcxx_requires_valid_range(__first, __last);

      for (; __first != __last; ++__first, (void)++__result)
  40967e:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
  409682:	48 89 c2             	mov    %rax,%rdx
  409685:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  409689:	e8 72 fc ff ff       	callq  409300 <_ZN9__gnu_cxxneIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKNS_17__normal_iteratorIT_T0_EESD_>
  40968e:	84 c0                	test   %al,%al
  409690:	74 43                	je     4096d5 <_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFiiEET0_T_SD_SC_T1_+0x75>
	*__result = __unary_op(*__first);
  409692:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  409696:	e8 b5 fc ff ff       	callq  409350 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv>
  40969b:	0f b6 00             	movzbl (%rax),%eax
  40969e:	0f be c0             	movsbl %al,%eax
  4096a1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4096a5:	89 c1                	mov    %eax,%ecx
  4096a7:	ff d2                	callq  *%rdx
  4096a9:	89 c3                	mov    %eax,%ebx
  4096ab:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4096af:	48 89 c1             	mov    %rax,%rcx
  4096b2:	e8 99 fc ff ff       	callq  409350 <_ZNK9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEdeEv>
  4096b7:	48 89 c2             	mov    %rax,%rdx
  4096ba:	89 d8                	mov    %ebx,%eax
  4096bc:	88 02                	mov    %al,(%rdx)
      for (; __first != __last; ++__first, (void)++__result)
  4096be:	48 8d 4d c0          	lea    -0x40(%rbp),%rcx
  4096c2:	e8 19 fc ff ff       	callq  4092e0 <_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv>
  4096c7:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4096cb:	48 89 c1             	mov    %rax,%rcx
  4096ce:	e8 0d fc ff ff       	callq  4092e0 <_ZN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEppEv>
  4096d3:	eb a9                	jmp    40967e <_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PFiiEET0_T_SD_SC_T1_+0x1e>
      return __result;
  4096d5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    }
  4096d9:	48 83 c4 28          	add    $0x28,%rsp
  4096dd:	5b                   	pop    %rbx
  4096de:	5d                   	pop    %rbp
  4096df:	c3                   	retq   

00000000004096e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
  4096e0:	55                   	push   %rbp
  4096e1:	48 89 e5             	mov    %rsp,%rbp
  4096e4:	48 83 ec 20          	sub    $0x20,%rsp
  4096e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  4096ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    { return __lhs.compare(__rhs) == 0; }
  4096f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
  4096f4:	48 89 c2             	mov    %rax,%rdx
  4096f7:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  4096fb:	e8 40 98 ff ff       	callq  402f40 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
  409700:	85 c0                	test   %eax,%eax
  409702:	0f 94 c0             	sete   %al
  409705:	48 83 c4 20          	add    $0x20,%rsp
  409709:	5d                   	pop    %rbp
  40970a:	c3                   	retq   
  40970b:	90                   	nop
  40970c:	90                   	nop
  40970d:	90                   	nop
  40970e:	90                   	nop
  operator&(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) & static_cast<int>(__b)); }

  inline _GLIBCXX_CONSTEXPR _Ios_Openmode
  operator|(_Ios_Openmode __a, _Ios_Openmode __b)
  { return _Ios_Openmode(static_cast<int>(__a) | static_cast<int>(__b)); }
  40970f:	90                   	nop

0000000000409710 <_ZStorSt13_Ios_OpenmodeS_>:
  409710:	55                   	push   %rbp
  409711:	48 89 e5             	mov    %rsp,%rbp
  409714:	89 4d 10             	mov    %ecx,0x10(%rbp)
  409717:	89 55 18             	mov    %edx,0x18(%rbp)
  40971a:	8b 45 10             	mov    0x10(%rbp),%eax
  40971d:	0b 45 18             	or     0x18(%rbp),%eax
  409720:	5d                   	pop    %rbp
  409721:	c3                   	retq   
  409722:	90                   	nop
  409723:	90                   	nop
  409724:	90                   	nop
  409725:	90                   	nop
  409726:	90                   	nop
  409727:	90                   	nop
  409728:	90                   	nop
  409729:	90                   	nop
  40972a:	90                   	nop
  40972b:	90                   	nop
  40972c:	90                   	nop
  40972d:	90                   	nop
  40972e:	90                   	nop
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
  40972f:	90                   	nop

0000000000409730 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_>:
  409730:	55                   	push   %rbp
  409731:	48 89 e5             	mov    %rsp,%rbp
  409734:	48 83 ec 20          	sub    $0x20,%rsp
  409738:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40973c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  409740:	4c 89 45 20          	mov    %r8,0x20(%rbp)
    { return std::move(__lhs.append(__rhs)); }
  409744:	48 8b 55 20          	mov    0x20(%rbp),%rdx
  409748:	48 8b 45 18          	mov    0x18(%rbp),%rax
  40974c:	48 89 c1             	mov    %rax,%rcx
  40974f:	e8 6c 97 ff ff       	callq  402ec0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc>
  409754:	48 89 c1             	mov    %rax,%rcx
  409757:	e8 b4 fe ff ff       	callq  409610 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
  40975c:	48 89 c2             	mov    %rax,%rdx
  40975f:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  409763:	e8 28 97 ff ff       	callq  402e90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
  409768:	48 8b 45 10          	mov    0x10(%rbp),%rax
  40976c:	48 83 c4 20          	add    $0x20,%rsp
  409770:	5d                   	pop    %rbp
  409771:	c3                   	retq   
  409772:	90                   	nop
  409773:	90                   	nop
  409774:	90                   	nop
  409775:	90                   	nop
  409776:	90                   	nop
  409777:	90                   	nop
  409778:	90                   	nop
  409779:	90                   	nop
  40977a:	90                   	nop
  40977b:	90                   	nop
  40977c:	90                   	nop
  40977d:	90                   	nop
  40977e:	90                   	nop
    operator+(basic_string<_CharT, _Traits, _Alloc>&& __lhs,
  40977f:	90                   	nop

0000000000409780 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_>:
  409780:	55                   	push   %rbp
  409781:	53                   	push   %rbx
  409782:	48 83 ec 38          	sub    $0x38,%rsp
  409786:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
  40978d:	00 
  40978e:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  409792:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  409796:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
      const auto __size = __lhs.size() + __rhs.size();
  40979a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40979e:	48 89 c1             	mov    %rax,%rcx
  4097a1:	e8 b2 97 ff ff       	callq  402f58 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
  4097a6:	48 89 c3             	mov    %rax,%rbx
  4097a9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4097ad:	48 89 c1             	mov    %rax,%rcx
  4097b0:	e8 a3 97 ff ff       	callq  402f58 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
  4097b5:	48 01 d8             	add    %rbx,%rax
  4097b8:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
      const bool __cond = (__size > __lhs.capacity()
  4097bc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4097c0:	48 89 c1             	mov    %rax,%rcx
  4097c3:	e8 70 97 ff ff       	callq  402f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
			   && __size <= __rhs.capacity());
  4097c8:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
  4097cc:	76 19                	jbe    4097e7 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x67>
  4097ce:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4097d2:	48 89 c1             	mov    %rax,%rcx
  4097d5:	e8 5e 97 ff ff       	callq  402f38 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv>
  4097da:	48 39 45 a8          	cmp    %rax,-0x58(%rbp)
  4097de:	77 07                	ja     4097e7 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x67>
  4097e0:	b8 01 00 00 00       	mov    $0x1,%eax
  4097e5:	eb 05                	jmp    4097ec <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x6c>
  4097e7:	b8 00 00 00 00       	mov    $0x0,%eax
      const bool __cond = (__size > __lhs.capacity()
  4097ec:	88 45 a7             	mov    %al,-0x59(%rbp)
	            : std::move(__lhs.append(__rhs));
  4097ef:	80 7d a7 00          	cmpb   $0x0,-0x59(%rbp)
  4097f3:	74 22                	je     409817 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0x97>
      return __cond ? std::move(__rhs.insert(0, __lhs))
  4097f5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4097f9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4097fd:	49 89 d0             	mov    %rdx,%r8
  409800:	ba 00 00 00 00       	mov    $0x0,%edx
  409805:	48 89 c1             	mov    %rax,%rcx
  409808:	e8 9b 96 ff ff       	callq  402ea8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyRKS4_>
  40980d:	48 89 c1             	mov    %rax,%rcx
  409810:	e8 fb fd ff ff       	callq  409610 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
  409815:	eb 18                	jmp    40982f <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_+0xaf>
	            : std::move(__lhs.append(__rhs));
  409817:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40981b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40981f:	48 89 c1             	mov    %rax,%rcx
  409822:	e8 91 96 ff ff       	callq  402eb8 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_>
  409827:	48 89 c1             	mov    %rax,%rcx
  40982a:	e8 e1 fd ff ff       	callq  409610 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
  40982f:	48 89 c2             	mov    %rax,%rdx
  409832:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  409836:	e8 55 96 ff ff       	callq  402e90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
    }
  40983b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40983f:	48 83 c4 38          	add    $0x38,%rsp
  409843:	5b                   	pop    %rbx
  409844:	5d                   	pop    %rbp
  409845:	c3                   	retq   
  409846:	90                   	nop
  409847:	90                   	nop
  409848:	90                   	nop
  409849:	90                   	nop
  40984a:	90                   	nop
  40984b:	90                   	nop
  40984c:	90                   	nop
  40984d:	90                   	nop
  40984e:	90                   	nop
    operator+(const _CharT* __lhs,
  40984f:	90                   	nop

0000000000409850 <_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_>:
  409850:	55                   	push   %rbp
  409851:	48 89 e5             	mov    %rsp,%rbp
  409854:	48 83 ec 20          	sub    $0x20,%rsp
  409858:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
  40985c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  409860:	4c 89 45 20          	mov    %r8,0x20(%rbp)
    { return std::move(__rhs.insert(0, __lhs)); }
  409864:	48 8b 55 18          	mov    0x18(%rbp),%rdx
  409868:	48 8b 45 20          	mov    0x20(%rbp),%rax
  40986c:	49 89 d0             	mov    %rdx,%r8
  40986f:	ba 00 00 00 00       	mov    $0x0,%edx
  409874:	48 89 c1             	mov    %rax,%rcx
  409877:	e8 34 96 ff ff       	callq  402eb0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertEyPKc>
  40987c:	48 89 c1             	mov    %rax,%rcx
  40987f:	e8 8c fd ff ff       	callq  409610 <_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_>
  409884:	48 89 c2             	mov    %rax,%rdx
  409887:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
  40988b:	e8 00 96 ff ff       	callq  402e90 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_>
  409890:	48 8b 45 10          	mov    0x10(%rbp),%rax
  409894:	48 83 c4 20          	add    $0x20,%rsp
  409898:	5d                   	pop    %rbp
  409899:	c3                   	retq   
  40989a:	90                   	nop
  40989b:	90                   	nop
  40989c:	90                   	nop
  40989d:	90                   	nop
  40989e:	90                   	nop
  40989f:	90                   	nop

00000000004098a0 <__report_error>:
  4098a0:	56                   	push   %rsi
  4098a1:	53                   	push   %rbx
  4098a2:	48 83 ec 38          	sub    $0x38,%rsp
  4098a6:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
  4098ab:	48 89 cb             	mov    %rcx,%rbx
  4098ae:	b9 02 00 00 00       	mov    $0x2,%ecx
  4098b3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
  4098b8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
  4098bd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
  4098c2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4098c7:	e8 d4 f7 ff ff       	callq  4090a0 <__acrt_iob_func>
  4098cc:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
  4098d2:	ba 01 00 00 00       	mov    $0x1,%edx
  4098d7:	48 8d 0d 02 1a 00 00 	lea    0x1a02(%rip),%rcx        # 40b2e0 <.rdata>
  4098de:	49 89 c1             	mov    %rax,%r9
  4098e1:	e8 1a f7 ff ff       	callq  409000 <fwrite>
  4098e6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4098eb:	b9 02 00 00 00       	mov    $0x2,%ecx
  4098f0:	e8 ab f7 ff ff       	callq  4090a0 <__acrt_iob_func>
  4098f5:	48 89 da             	mov    %rbx,%rdx
  4098f8:	48 89 c1             	mov    %rax,%rcx
  4098fb:	49 89 f0             	mov    %rsi,%r8
  4098fe:	e8 b5 f6 ff ff       	callq  408fb8 <vfprintf>
  409903:	e8 28 f7 ff ff       	callq  409030 <abort>
  409908:	90                   	nop
  409909:	90                   	nop
  40990a:	90                   	nop
  40990b:	90                   	nop
  40990c:	90                   	nop
  40990d:	90                   	nop
  40990e:	90                   	nop
  40990f:	90                   	nop

0000000000409910 <register_frame_ctor>:
  409910:	e9 1b 7c ff ff       	jmpq   401530 <__gcc_register_frame>
  409915:	90                   	nop
  409916:	90                   	nop
  409917:	90                   	nop
  409918:	90                   	nop
  409919:	90                   	nop
  40991a:	90                   	nop
  40991b:	90                   	nop
  40991c:	90                   	nop
  40991d:	90                   	nop
  40991e:	90                   	nop
  40991f:	90                   	nop

0000000000409920 <__CTOR_LIST__>:
  409920:	ff                   	(bad)  
  409921:	ff                   	(bad)  
  409922:	ff                   	(bad)  
  409923:	ff                   	(bad)  
  409924:	ff                   	(bad)  
  409925:	ff                   	(bad)  
  409926:	ff                   	(bad)  
  409927:	ff                   	.byte 0xff

0000000000409928 <.ctors>:
  409928:	ce                   	(bad)  
  409929:	2d 40 00 00 00       	sub    $0x40,%eax
	...

0000000000409930 <.ctors.65535>:
  409930:	10 99 40 00 00 00    	adc    %bl,0x40(%rcx)
	...

0000000000409940 <__DTOR_LIST__>:
  409940:	ff                   	(bad)  
  409941:	ff                   	(bad)  
  409942:	ff                   	(bad)  
  409943:	ff                   	(bad)  
  409944:	ff                   	(bad)  
  409945:	ff                   	(bad)  
  409946:	ff                   	(bad)  
  409947:	ff 00                	incl   (%rax)
  409949:	00 00                	add    %al,(%rax)
  40994b:	00 00                	add    %al,(%rax)
  40994d:	00 00                	add    %al,(%rax)
	...
