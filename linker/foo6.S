
foo6:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x153>
  400248:	78 38                	js     400282 <_init-0x146>
  40024a:	36                   	ss
  40024b:	2d 36 34 2e 73       	sub    $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 18                	add    %bl,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 9d 79 7d 44 6f    	add    %bl,0x6f447d79(%rbp)
  400289:	03 11                	add    (%rcx),%edx
  40028b:	b7 aa                	mov    $0xaa,%bh
  40028d:	18 80 40 3f c3 2b    	sbb    %al,0x2bc33f40(%rax)
  400293:	4c fd                	rex.WR std 
  400295:	ff                   	.byte 0xff
  400296:	84 30                	test   %dh,(%rax)

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	01 00                	add    %eax,(%rax)
  40029a:	00 00                	add    %al,(%rax)
  40029c:	01 00                	add    %eax,(%rax)
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	1a 00                	sbb    (%rax),%al
  4002d2:	00 00                	add    %al,(%rax)
  4002d4:	12 00                	adc    (%rax),%al
	...
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	21 00                	and    %eax,(%rax)
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	12 00                	adc    (%rax),%al
	...
  4002fe:	00 00                	add    %al,(%rax)
  400300:	01 00                	add    %eax,(%rax)
  400302:	00 00                	add    %al,(%rax)
  400304:	20 00                	and    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400318 <.dynstr>:
  400318:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40031b:	67 6d                	insl   (%dx),%es:(%edi)
  40031d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40031e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40031f:	5f                   	pop    %rdi
  400320:	73 74                	jae    400396 <_init-0x32>
  400322:	61                   	(bad)  
  400323:	72 74                	jb     400399 <_init-0x2f>
  400325:	5f                   	pop    %rdi
  400326:	5f                   	pop    %rdi
  400327:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40032b:	63 2e                	movslq (%rsi),%ebp
  40032d:	73 6f                	jae    40039e <_init-0x2a>
  40032f:	2e 36 00 70 72       	cs add %dh,%cs:%ss:0x72(%rax)
  400334:	69 6e 74 66 00 5f 5f 	imul   $0x5f5f0066,0x74(%rsi),%ebp
  40033b:	6c                   	insb   (%dx),%es:(%rdi)
  40033c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400343:	72 74                	jb     4003b9 <_init-0xf>
  400345:	5f                   	pop    %rdi
  400346:	6d                   	insl   (%dx),%es:(%rdi)
  400347:	61                   	(bad)  
  400348:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  40034f:	43 5f                	rex.XB pop %r15
  400351:	32 2e                	xor    (%rsi),%ch
  400353:	32 2e                	xor    (%rsi),%ch
  400355:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000400358 <.gnu.version>:
  400358:	00 00                	add    %al,(%rax)
  40035a:	02 00                	add    (%rax),%al
  40035c:	02 00                	add    (%rax),%al
	...

Disassembly of section .gnu.version_r:

0000000000400360 <.gnu.version_r>:
  400360:	01 00                	add    %eax,(%rax)
  400362:	01 00                	add    %eax,(%rax)
  400364:	10 00                	adc    %al,(%rax)
  400366:	00 00                	add    %al,(%rax)
  400368:	10 00                	adc    %al,(%rax)
  40036a:	00 00                	add    %al,(%rax)
  40036c:	00 00                	add    %al,(%rax)
  40036e:	00 00                	add    %al,(%rax)
  400370:	75 1a                	jne    40038c <_init-0x3c>
  400372:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  400378:	33 00                	xor    (%rax),%eax
  40037a:	00 00                	add    %al,(%rax)
  40037c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400380 <.rela.dyn>:
  400380:	e0 0f                	loopne 400391 <_init-0x37>
  400382:	60                   	(bad)  
  400383:	00 00                	add    %al,(%rax)
  400385:	00 00                	add    %al,(%rax)
  400387:	00 06                	add    %al,(%rsi)
  400389:	00 00                	add    %al,(%rax)
  40038b:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .rela.plt:

0000000000400398 <.rela.plt>:
  400398:	00 10                	add    %dl,(%rax)
  40039a:	60                   	(bad)  
  40039b:	00 00                	add    %al,(%rax)
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 07                	add    %al,(%rdi)
  4003a1:	00 00                	add    %al,(%rax)
  4003a3:	00 01                	add    %al,(%rcx)
	...
  4003ad:	00 00                	add    %al,(%rax)
  4003af:	00 08                	add    %cl,(%rax)
  4003b1:	10 60 00             	adc    %ah,0x0(%rax)
  4003b4:	00 00                	add    %al,(%rax)
  4003b6:	00 00                	add    %al,(%rax)
  4003b8:	07                   	(bad)  
  4003b9:	00 00                	add    %al,(%rax)
  4003bb:	00 02                	add    %al,(%rdx)
	...

Disassembly of section .init:

00000000004003c8 <_init>:
  4003c8:	48 83 ec 08          	sub    $0x8,%rsp
  4003cc:	e8 6b 00 00 00       	callq  40043c <call_gmon_start>
  4003d1:	e8 fa 00 00 00       	callq  4004d0 <frame_dummy>
  4003d6:	e8 f5 01 00 00       	callq  4005d0 <__do_global_ctors_aux>
  4003db:	48 83 c4 08          	add    $0x8,%rsp
  4003df:	c3                   	retq   

Disassembly of section .plt:

00000000004003e0 <printf@plt-0x10>:
  4003e0:	ff 35 0a 0c 20 00    	pushq  0x200c0a(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003e6:	ff 25 0c 0c 20 00    	jmpq   *0x200c0c(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003f0 <printf@plt>:
  4003f0:	ff 25 0a 0c 20 00    	jmpq   *0x200c0a(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003f6:	68 00 00 00 00       	pushq  $0x0
  4003fb:	e9 e0 ff ff ff       	jmpq   4003e0 <_init+0x18>

0000000000400400 <__libc_start_main@plt>:
  400400:	ff 25 02 0c 20 00    	jmpq   *0x200c02(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400406:	68 01 00 00 00       	pushq  $0x1
  40040b:	e9 d0 ff ff ff       	jmpq   4003e0 <_init+0x18>

Disassembly of section .text:

0000000000400410 <_start>:
  400410:	31 ed                	xor    %ebp,%ebp
  400412:	49 89 d1             	mov    %rdx,%r9
  400415:	5e                   	pop    %rsi
  400416:	48 89 e2             	mov    %rsp,%rdx
  400419:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40041d:	50                   	push   %rax
  40041e:	54                   	push   %rsp
  40041f:	49 c7 c0 c0 05 40 00 	mov    $0x4005c0,%r8
  400426:	48 c7 c1 30 05 40 00 	mov    $0x400530,%rcx
  40042d:	48 c7 c7 f4 04 40 00 	mov    $0x4004f4,%rdi
  400434:	e8 c7 ff ff ff       	callq  400400 <__libc_start_main@plt>
  400439:	f4                   	hlt    
  40043a:	90                   	nop
  40043b:	90                   	nop

000000000040043c <call_gmon_start>:
  40043c:	48 83 ec 08          	sub    $0x8,%rsp
  400440:	48 8b 05 99 0b 20 00 	mov    0x200b99(%rip),%rax        # 600fe0 <_DYNAMIC+0x190>
  400447:	48 85 c0             	test   %rax,%rax
  40044a:	74 02                	je     40044e <call_gmon_start+0x12>
  40044c:	ff d0                	callq  *%rax
  40044e:	48 83 c4 08          	add    $0x8,%rsp
  400452:	c3                   	retq   
  400453:	90                   	nop
  400454:	90                   	nop
  400455:	90                   	nop
  400456:	90                   	nop
  400457:	90                   	nop
  400458:	90                   	nop
  400459:	90                   	nop
  40045a:	90                   	nop
  40045b:	90                   	nop
  40045c:	90                   	nop
  40045d:	90                   	nop
  40045e:	90                   	nop
  40045f:	90                   	nop

0000000000400460 <__do_global_dtors_aux>:
  400460:	55                   	push   %rbp
  400461:	48 89 e5             	mov    %rsp,%rbp
  400464:	53                   	push   %rbx
  400465:	48 83 ec 08          	sub    $0x8,%rsp
  400469:	80 3d b0 0b 20 00 00 	cmpb   $0x0,0x200bb0(%rip)        # 601020 <__bss_start>
  400470:	75 4b                	jne    4004bd <__do_global_dtors_aux+0x5d>
  400472:	bb 40 0e 60 00       	mov    $0x600e40,%ebx
  400477:	48 8b 05 aa 0b 20 00 	mov    0x200baa(%rip),%rax        # 601028 <dtor_idx.6533>
  40047e:	48 81 eb 38 0e 60 00 	sub    $0x600e38,%rbx
  400485:	48 c1 fb 03          	sar    $0x3,%rbx
  400489:	48 83 eb 01          	sub    $0x1,%rbx
  40048d:	48 39 d8             	cmp    %rbx,%rax
  400490:	73 24                	jae    4004b6 <__do_global_dtors_aux+0x56>
  400492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400498:	48 83 c0 01          	add    $0x1,%rax
  40049c:	48 89 05 85 0b 20 00 	mov    %rax,0x200b85(%rip)        # 601028 <dtor_idx.6533>
  4004a3:	ff 14 c5 38 0e 60 00 	callq  *0x600e38(,%rax,8)
  4004aa:	48 8b 05 77 0b 20 00 	mov    0x200b77(%rip),%rax        # 601028 <dtor_idx.6533>
  4004b1:	48 39 d8             	cmp    %rbx,%rax
  4004b4:	72 e2                	jb     400498 <__do_global_dtors_aux+0x38>
  4004b6:	c6 05 63 0b 20 00 01 	movb   $0x1,0x200b63(%rip)        # 601020 <__bss_start>
  4004bd:	48 83 c4 08          	add    $0x8,%rsp
  4004c1:	5b                   	pop    %rbx
  4004c2:	5d                   	pop    %rbp
  4004c3:	c3                   	retq   
  4004c4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4004cb:	00 00 00 00 00 

00000000004004d0 <frame_dummy>:
  4004d0:	48 83 3d 70 09 20 00 	cmpq   $0x0,0x200970(%rip)        # 600e48 <__JCR_END__>
  4004d7:	00 
  4004d8:	55                   	push   %rbp
  4004d9:	48 89 e5             	mov    %rsp,%rbp
  4004dc:	74 12                	je     4004f0 <frame_dummy+0x20>
  4004de:	b8 00 00 00 00       	mov    $0x0,%eax
  4004e3:	48 85 c0             	test   %rax,%rax
  4004e6:	74 08                	je     4004f0 <frame_dummy+0x20>
  4004e8:	5d                   	pop    %rbp
  4004e9:	bf 48 0e 60 00       	mov    $0x600e48,%edi
  4004ee:	ff e0                	jmpq   *%rax
  4004f0:	5d                   	pop    %rbp
  4004f1:	c3                   	retq   
  4004f2:	90                   	nop
  4004f3:	90                   	nop

00000000004004f4 <main>:
  4004f4:	55                   	push   %rbp
  4004f5:	48 89 e5             	mov    %rsp,%rbp
  4004f8:	e8 07 00 00 00       	callq  400504 <p2>
  4004fd:	b8 00 00 00 00       	mov    $0x0,%eax
  400502:	5d                   	pop    %rbp
  400503:	c3                   	retq   

0000000000400504 <p2>:
  400504:	55                   	push   %rbp
  400505:	48 89 e5             	mov    %rsp,%rbp
  400508:	0f b6 05 e5 ff ff ff 	movzbl -0x1b(%rip),%eax        # 4004f4 <main>
  40050f:	0f be d0             	movsbl %al,%edx
  400512:	b8 1c 06 40 00       	mov    $0x40061c,%eax
  400517:	89 d6                	mov    %edx,%esi
  400519:	48 89 c7             	mov    %rax,%rdi
  40051c:	b8 00 00 00 00       	mov    $0x0,%eax
  400521:	e8 ca fe ff ff       	callq  4003f0 <printf@plt>
  400526:	5d                   	pop    %rbp
  400527:	c3                   	retq   
  400528:	90                   	nop
  400529:	90                   	nop
  40052a:	90                   	nop
  40052b:	90                   	nop
  40052c:	90                   	nop
  40052d:	90                   	nop
  40052e:	90                   	nop
  40052f:	90                   	nop

0000000000400530 <__libc_csu_init>:
  400530:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400535:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40053a:	48 8d 2d e3 08 20 00 	lea    0x2008e3(%rip),%rbp        # 600e24 <__init_array_end>
  400541:	4c 8d 25 dc 08 20 00 	lea    0x2008dc(%rip),%r12        # 600e24 <__init_array_end>
  400548:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40054d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400552:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400557:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40055c:	48 83 ec 38          	sub    $0x38,%rsp
  400560:	4c 29 e5             	sub    %r12,%rbp
  400563:	41 89 fd             	mov    %edi,%r13d
  400566:	49 89 f6             	mov    %rsi,%r14
  400569:	48 c1 fd 03          	sar    $0x3,%rbp
  40056d:	49 89 d7             	mov    %rdx,%r15
  400570:	e8 53 fe ff ff       	callq  4003c8 <_init>
  400575:	48 85 ed             	test   %rbp,%rbp
  400578:	74 1c                	je     400596 <__libc_csu_init+0x66>
  40057a:	31 db                	xor    %ebx,%ebx
  40057c:	0f 1f 40 00          	nopl   0x0(%rax)
  400580:	4c 89 fa             	mov    %r15,%rdx
  400583:	4c 89 f6             	mov    %r14,%rsi
  400586:	44 89 ef             	mov    %r13d,%edi
  400589:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40058d:	48 83 c3 01          	add    $0x1,%rbx
  400591:	48 39 eb             	cmp    %rbp,%rbx
  400594:	75 ea                	jne    400580 <__libc_csu_init+0x50>
  400596:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40059b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4005a0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4005a5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4005aa:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4005af:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4005b4:	48 83 c4 38          	add    $0x38,%rsp
  4005b8:	c3                   	retq   
  4005b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004005c0 <__libc_csu_fini>:
  4005c0:	f3 c3                	repz retq 
  4005c2:	90                   	nop
  4005c3:	90                   	nop
  4005c4:	90                   	nop
  4005c5:	90                   	nop
  4005c6:	90                   	nop
  4005c7:	90                   	nop
  4005c8:	90                   	nop
  4005c9:	90                   	nop
  4005ca:	90                   	nop
  4005cb:	90                   	nop
  4005cc:	90                   	nop
  4005cd:	90                   	nop
  4005ce:	90                   	nop
  4005cf:	90                   	nop

00000000004005d0 <__do_global_ctors_aux>:
  4005d0:	55                   	push   %rbp
  4005d1:	48 89 e5             	mov    %rsp,%rbp
  4005d4:	53                   	push   %rbx
  4005d5:	48 83 ec 08          	sub    $0x8,%rsp
  4005d9:	48 8b 05 48 08 20 00 	mov    0x200848(%rip),%rax        # 600e28 <__CTOR_LIST__>
  4005e0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4005e4:	74 19                	je     4005ff <__do_global_ctors_aux+0x2f>
  4005e6:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  4005eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005f0:	48 83 eb 08          	sub    $0x8,%rbx
  4005f4:	ff d0                	callq  *%rax
  4005f6:	48 8b 03             	mov    (%rbx),%rax
  4005f9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4005fd:	75 f1                	jne    4005f0 <__do_global_ctors_aux+0x20>
  4005ff:	48 83 c4 08          	add    $0x8,%rsp
  400603:	5b                   	pop    %rbx
  400604:	5d                   	pop    %rbp
  400605:	c3                   	retq   
  400606:	90                   	nop
  400607:	90                   	nop

Disassembly of section .fini:

0000000000400608 <_fini>:
  400608:	48 83 ec 08          	sub    $0x8,%rsp
  40060c:	e8 4f fe ff ff       	callq  400460 <__do_global_dtors_aux>
  400611:	48 83 c4 08          	add    $0x8,%rsp
  400615:	c3                   	retq   

Disassembly of section .rodata:

0000000000400618 <_IO_stdin_used>:
  400618:	01 00                	add    %eax,(%rax)
  40061a:	02 00                	add    (%rax),%al
  40061c:	30 78 25             	xor    %bh,0x25(%rax)
  40061f:	78 0a                	js     40062b <_IO_stdin_used+0x13>
	...

Disassembly of section .eh_frame_hdr:

0000000000400624 <.eh_frame_hdr>:
  400624:	01 1b                	add    %ebx,(%rbx)
  400626:	03 3b                	add    (%rbx),%edi
  400628:	30 00                	xor    %al,(%rax)
  40062a:	00 00                	add    %al,(%rax)
  40062c:	05 00 00 00 bc       	add    $0xbc000000,%eax
  400631:	fd                   	std    
  400632:	ff                   	(bad)  
  400633:	ff 4c 00 00          	decl   0x0(%rax,%rax,1)
  400637:	00 d0                	add    %dl,%al
  400639:	fe                   	(bad)  
  40063a:	ff                   	(bad)  
  40063b:	ff 74 00 00          	pushq  0x0(%rax,%rax,1)
  40063f:	00 e0                	add    %ah,%al
  400641:	fe                   	(bad)  
  400642:	ff                   	(bad)  
  400643:	ff 94 00 00 00 0c ff 	callq  *-0xf40000(%rax,%rax,1)
  40064a:	ff                   	(bad)  
  40064b:	ff b4 00 00 00 9c ff 	pushq  -0x640000(%rax,%rax,1)
  400652:	ff                   	(bad)  
  400653:	ff dc                	lcallq *<internal disassembler error>
  400655:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000400658 <__FRAME_END__-0xc0>:
  400658:	14 00                	adc    $0x0,%al
  40065a:	00 00                	add    %al,(%rax)
  40065c:	00 00                	add    %al,(%rax)
  40065e:	00 00                	add    %al,(%rax)
  400660:	01 7a 52             	add    %edi,0x52(%rdx)
  400663:	00 01                	add    %al,(%rcx)
  400665:	78 10                	js     400677 <_IO_stdin_used+0x5f>
  400667:	01 1b                	add    %ebx,(%rbx)
  400669:	0c 07                	or     $0x7,%al
  40066b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400671:	00 00                	add    %al,(%rax)
  400673:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400676:	00 00                	add    %al,(%rax)
  400678:	68 fd ff ff 30       	pushq  $0x30fffffd
  40067d:	00 00                	add    %al,(%rax)
  40067f:	00 00                	add    %al,(%rax)
  400681:	0e                   	(bad)  
  400682:	10 46 0e             	adc    %al,0xe(%rsi)
  400685:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400688:	0b 77 08             	or     0x8(%rdi),%esi
  40068b:	80 00 3f             	addb   $0x3f,(%rax)
  40068e:	1a 3b                	sbb    (%rbx),%bh
  400690:	2a 33                	sub    (%rbx),%dh
  400692:	24 22                	and    $0x22,%al
  400694:	00 00                	add    %al,(%rax)
  400696:	00 00                	add    %al,(%rax)
  400698:	1c 00                	sbb    $0x0,%al
  40069a:	00 00                	add    %al,(%rax)
  40069c:	44 00 00             	add    %r8b,(%rax)
  40069f:	00 54 fe ff          	add    %dl,-0x1(%rsi,%rdi,8)
  4006a3:	ff 10                	callq  *(%rax)
  4006a5:	00 00                	add    %al,(%rax)
  4006a7:	00 00                	add    %al,(%rax)
  4006a9:	41 0e                	rex.B (bad) 
  4006ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006b1:	4b 0c 07             	rex.WXB or $0x7,%al
  4006b4:	08 00                	or     %al,(%rax)
  4006b6:	00 00                	add    %al,(%rax)
  4006b8:	1c 00                	sbb    $0x0,%al
  4006ba:	00 00                	add    %al,(%rax)
  4006bc:	64 00 00             	add    %al,%fs:(%rax)
  4006bf:	00 44 fe ff          	add    %al,-0x1(%rsi,%rdi,8)
  4006c3:	ff 24 00             	jmpq   *(%rax,%rax,1)
  4006c6:	00 00                	add    %al,(%rax)
  4006c8:	00 41 0e             	add    %al,0xe(%rcx)
  4006cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4006d1:	5f                   	pop    %rdi
  4006d2:	0c 07                	or     $0x7,%al
  4006d4:	08 00                	or     %al,(%rax)
  4006d6:	00 00                	add    %al,(%rax)
  4006d8:	24 00                	and    $0x0,%al
  4006da:	00 00                	add    %al,(%rax)
  4006dc:	84 00                	test   %al,(%rax)
  4006de:	00 00                	add    %al,(%rax)
  4006e0:	50                   	push   %rax
  4006e1:	fe                   	(bad)  
  4006e2:	ff                   	(bad)  
  4006e3:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  4006e9:	51                   	push   %rcx
  4006ea:	8c 05 86 06 5f 0e    	mov    %es,0xe5f0686(%rip)        # e9f0d76 <_end+0xe3efd46>
  4006f0:	40 83 07 8f          	rex addl $0xffffff8f,(%rdi)
  4006f4:	02 8e 03 8d 04 02    	add    0x2048d03(%rsi),%cl
  4006fa:	58                   	pop    %rax
  4006fb:	0e                   	(bad)  
  4006fc:	08 00                	or     %al,(%rax)
  4006fe:	00 00                	add    %al,(%rax)
  400700:	14 00                	adc    $0x0,%al
  400702:	00 00                	add    %al,(%rax)
  400704:	ac                   	lods   %ds:(%rsi),%al
  400705:	00 00                	add    %al,(%rax)
  400707:	00 b8 fe ff ff 02    	add    %bh,0x2fffffe(%rax)
	...

0000000000400718 <__FRAME_END__>:
  400718:	00 00                	add    %al,(%rax)
	...

Disassembly of section .ctors:

0000000000600e28 <__CTOR_LIST__>:
  600e28:	ff                   	(bad)  
  600e29:	ff                   	(bad)  
  600e2a:	ff                   	(bad)  
  600e2b:	ff                   	(bad)  
  600e2c:	ff                   	(bad)  
  600e2d:	ff                   	(bad)  
  600e2e:	ff                   	(bad)  
  600e2f:	ff 00                	incl   (%rax)

0000000000600e30 <__CTOR_END__>:
	...

Disassembly of section .dtors:

0000000000600e38 <__DTOR_LIST__>:
  600e38:	ff                   	(bad)  
  600e39:	ff                   	(bad)  
  600e3a:	ff                   	(bad)  
  600e3b:	ff                   	(bad)  
  600e3c:	ff                   	(bad)  
  600e3d:	ff                   	(bad)  
  600e3e:	ff                   	(bad)  
  600e3f:	ff 00                	incl   (%rax)

0000000000600e40 <__DTOR_END__>:
	...

Disassembly of section .jcr:

0000000000600e48 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600e50 <_DYNAMIC>:
  600e50:	01 00                	add    %eax,(%rax)
  600e52:	00 00                	add    %al,(%rax)
  600e54:	00 00                	add    %al,(%rax)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	10 00                	adc    %al,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	0c 00                	or     $0x0,%al
  600e62:	00 00                	add    %al,(%rax)
  600e64:	00 00                	add    %al,(%rax)
  600e66:	00 00                	add    %al,(%rax)
  600e68:	c8 03 40 00          	enterq $0x4003,$0x0
  600e6c:	00 00                	add    %al,(%rax)
  600e6e:	00 00                	add    %al,(%rax)
  600e70:	0d 00 00 00 00       	or     $0x0,%eax
  600e75:	00 00                	add    %al,(%rax)
  600e77:	00 08                	add    %cl,(%rax)
  600e79:	06                   	(bad)  
  600e7a:	40 00 00             	add    %al,(%rax)
  600e7d:	00 00                	add    %al,(%rax)
  600e7f:	00 f5                	add    %dh,%ch
  600e81:	fe                   	(bad)  
  600e82:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600e8d:	00 00                	add    %al,(%rax)
  600e8f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600e95 <_DYNAMIC+0x45>
  600e95:	00 00                	add    %al,(%rax)
  600e97:	00 18                	add    %bl,(%rax)
  600e99:	03 40 00             	add    0x0(%rax),%eax
  600e9c:	00 00                	add    %al,(%rax)
  600e9e:	00 00                	add    %al,(%rax)
  600ea0:	06                   	(bad)  
  600ea1:	00 00                	add    %al,(%rax)
  600ea3:	00 00                	add    %al,(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 b8 02 40 00 00    	add    %bh,0x4002(%rax)
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 0a                	add    %cl,(%rdx)
  600eb1:	00 00                	add    %al,(%rax)
  600eb3:	00 00                	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 3f                	add    %bh,(%rdi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 0b                	add    %cl,(%rbx)
  600ec1:	00 00                	add    %al,(%rax)
  600ec3:	00 00                	add    %al,(%rax)
  600ec5:	00 00                	add    %al,(%rax)
  600ec7:	00 18                	add    %bl,(%rax)
  600ec9:	00 00                	add    %al,(%rax)
  600ecb:	00 00                	add    %al,(%rax)
  600ecd:	00 00                	add    %al,(%rax)
  600ecf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 600ed5 <_DYNAMIC+0x85>
	...
  600edd:	00 00                	add    %al,(%rax)
  600edf:	00 03                	add    %al,(%rbx)
  600ee1:	00 00                	add    %al,(%rax)
  600ee3:	00 00                	add    %al,(%rax)
  600ee5:	00 00                	add    %al,(%rax)
  600ee7:	00 e8                	add    %ch,%al
  600ee9:	0f 60 00             	punpcklbw (%rax),%mm0
  600eec:	00 00                	add    %al,(%rax)
  600eee:	00 00                	add    %al,(%rax)
  600ef0:	02 00                	add    (%rax),%al
  600ef2:	00 00                	add    %al,(%rax)
  600ef4:	00 00                	add    %al,(%rax)
  600ef6:	00 00                	add    %al,(%rax)
  600ef8:	30 00                	xor    %al,(%rax)
  600efa:	00 00                	add    %al,(%rax)
  600efc:	00 00                	add    %al,(%rax)
  600efe:	00 00                	add    %al,(%rax)
  600f00:	14 00                	adc    $0x0,%al
  600f02:	00 00                	add    %al,(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	07                   	(bad)  
  600f09:	00 00                	add    %al,(%rax)
  600f0b:	00 00                	add    %al,(%rax)
  600f0d:	00 00                	add    %al,(%rax)
  600f0f:	00 17                	add    %dl,(%rdi)
  600f11:	00 00                	add    %al,(%rax)
  600f13:	00 00                	add    %al,(%rax)
  600f15:	00 00                	add    %al,(%rax)
  600f17:	00 98 03 40 00 00    	add    %bl,0x4003(%rax)
  600f1d:	00 00                	add    %al,(%rax)
  600f1f:	00 07                	add    %al,(%rdi)
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 80 03 40 00 00    	add    %al,0x4003(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 08                	add    %cl,(%rax)
  600f31:	00 00                	add    %al,(%rax)
  600f33:	00 00                	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 18                	add    %bl,(%rax)
  600f39:	00 00                	add    %al,(%rax)
  600f3b:	00 00                	add    %al,(%rax)
  600f3d:	00 00                	add    %al,(%rax)
  600f3f:	00 09                	add    %cl,(%rcx)
  600f41:	00 00                	add    %al,(%rax)
  600f43:	00 00                	add    %al,(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 18                	add    %bl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 fe                	add    %bh,%dh
  600f51:	ff                   	(bad)  
  600f52:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f55:	00 00                	add    %al,(%rax)
  600f57:	00 60 03             	add    %ah,0x3(%rax)
  600f5a:	40 00 00             	add    %al,(%rax)
  600f5d:	00 00                	add    %al,(%rax)
  600f5f:	00 ff                	add    %bh,%bh
  600f61:	ff                   	(bad)  
  600f62:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 01                	add    %al,(%rcx)
  600f69:	00 00                	add    %al,(%rax)
  600f6b:	00 00                	add    %al,(%rax)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 f0                	add    %dh,%al
  600f71:	ff                   	(bad)  
  600f72:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f75:	00 00                	add    %al,(%rax)
  600f77:	00 58 03             	add    %bl,0x3(%rax)
  600f7a:	40 00 00             	add    %al,(%rax)
	...

Disassembly of section .got:

0000000000600fe0 <.got>:
	...

Disassembly of section .got.plt:

0000000000600fe8 <_GLOBAL_OFFSET_TABLE_>:
  600fe8:	50                   	push   %rax
  600fe9:	0e                   	(bad)  
  600fea:	60                   	(bad)  
	...
  600fff:	00 f6                	add    %dh,%dh
  601001:	03 40 00             	add    0x0(%rax),%eax
  601004:	00 00                	add    %al,(%rax)
  601006:	00 00                	add    %al,(%rax)
  601008:	06                   	(bad)  
  601009:	04 40                	add    $0x40,%al
  60100b:	00 00                	add    %al,(%rax)
  60100d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601010 <__data_start>:
	...

0000000000601018 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000601020 <completed.6531>:
	...

0000000000601028 <dtor_idx.6533>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <_init-0x400350>
   a:	74 75                	je     81 <_init-0x400347>
   c:	2f                   	(bad)  
   d:	4c 69 6e 61 72 6f 20 	imul   $0x34206f72,0x61(%rsi),%r13
  14:	34 
  15:	2e 36 2e 33 2d 31 75 	cs ss xor %cs:%ss:0x75627531(%rip),%ebp        # 7562754f <_end+0x7502651f>
  1c:	62 75 
  1e:	6e                   	outsb  %ds:(%rsi),(%dx)
  1f:	74 75                	je     96 <_init-0x400332>
  21:	35 29 20 34 2e       	xor    $0x2e342029,%eax
  26:	36 2e 33 00          	ss xor %cs:%ss:(%rax),%eax
