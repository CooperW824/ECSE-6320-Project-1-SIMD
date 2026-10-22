
./build/experiments/serial:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 d1 4f 00 00 	mov    rax,QWORD PTR [rip+0x4fd1]        # 405fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__isoc23_strtoul@plt-0x10>:
  401020:	ff 35 ca 4f 00 00    	push   QWORD PTR [rip+0x4fca]        # 405ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 4f 00 00    	jmp    QWORD PTR [rip+0x4fcc]        # 405ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <__isoc23_strtoul@plt>:
  401030:	ff 25 ca 4f 00 00    	jmp    QWORD PTR [rip+0x4fca]        # 406000 <__isoc23_strtoul@GLIBC_2.38>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <free@plt>:
  401040:	ff 25 c2 4f 00 00    	jmp    QWORD PTR [rip+0x4fc2]        # 406008 <free@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <fread@plt>:
  401050:	ff 25 ba 4f 00 00    	jmp    QWORD PTR [rip+0x4fba]        # 406010 <fread@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strtod@plt>:
  401060:	ff 25 b2 4f 00 00    	jmp    QWORD PTR [rip+0x4fb2]        # 406018 <strtod@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <clock_gettime@plt>:
  401070:	ff 25 aa 4f 00 00    	jmp    QWORD PTR [rip+0x4faa]        # 406020 <clock_gettime@GLIBC_2.17>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <fclose@plt>:
  401080:	ff 25 a2 4f 00 00    	jmp    QWORD PTR [rip+0x4fa2]        # 406028 <fclose@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <printf@plt>:
  401090:	ff 25 9a 4f 00 00    	jmp    QWORD PTR [rip+0x4f9a]        # 406030 <printf@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <__assert_fail@plt>:
  4010a0:	ff 25 92 4f 00 00    	jmp    QWORD PTR [rip+0x4f92]        # 406038 <__assert_fail@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <strtof@plt>:
  4010b0:	ff 25 8a 4f 00 00    	jmp    QWORD PTR [rip+0x4f8a]        # 406040 <strtof@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 82 4f 00 00    	jmp    QWORD PTR [rip+0x4f82]        # 406048 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <strcmp@plt>:
  4010d0:	ff 25 7a 4f 00 00    	jmp    QWORD PTR [rip+0x4f7a]        # 406050 <strcmp@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <fprintf@plt>:
  4010e0:	ff 25 72 4f 00 00    	jmp    QWORD PTR [rip+0x4f72]        # 406058 <fprintf@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <memcpy@plt>:
  4010f0:	ff 25 6a 4f 00 00    	jmp    QWORD PTR [rip+0x4f6a]        # 406060 <memcpy@GLIBC_2.14>
  4010f6:	68 0c 00 00 00       	push   0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <__isoc23_strtol@plt>:
  401100:	ff 25 62 4f 00 00    	jmp    QWORD PTR [rip+0x4f62]        # 406068 <__isoc23_strtol@GLIBC_2.38>
  401106:	68 0d 00 00 00       	push   0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <malloc@plt>:
  401110:	ff 25 5a 4f 00 00    	jmp    QWORD PTR [rip+0x4f5a]        # 406070 <malloc@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <fopen@plt>:
  401120:	ff 25 52 4f 00 00    	jmp    QWORD PTR [rip+0x4f52]        # 406078 <fopen@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <perror@plt>:
  401130:	ff 25 4a 4f 00 00    	jmp    QWORD PTR [rip+0x4f4a]        # 406080 <perror@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <sprintf@plt>:
  401140:	ff 25 42 4f 00 00    	jmp    QWORD PTR [rip+0x4f42]        # 406088 <sprintf@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <fwrite@plt>:
  401150:	ff 25 3a 4f 00 00    	jmp    QWORD PTR [rip+0x4f3a]        # 406090 <fwrite@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401180 <run_experiments_as_floats.cold>:
  401180:	bf 60 41 40 00       	mov    edi,0x404160
  401185:	e8 a6 ff ff ff       	call   401130 <perror@plt>
  40118a:	b8 01 00 00 00       	mov    eax,0x1
  40118f:	e9 49 0d 00 00       	jmp    401edd <run_experiments_as_floats+0x46d>
  401194:	bf e0 41 40 00       	mov    edi,0x4041e0
  401199:	e8 92 ff ff ff       	call   401130 <perror@plt>
  40119e:	eb ea                	jmp    40118a <run_experiments_as_floats.cold+0xa>
  4011a0:	bf b0 41 40 00       	mov    edi,0x4041b0
  4011a5:	e8 86 ff ff ff       	call   401130 <perror@plt>
  4011aa:	eb de                	jmp    40118a <run_experiments_as_floats.cold+0xa>

00000000004011ac <main.cold>:
  4011ac:	bf 48 44 40 00       	mov    edi,0x404448
  4011b1:	e8 7a ff ff ff       	call   401130 <perror@plt>
  4011b6:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4011bd:	00 
  4011be:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4011c5:	00 
  4011c6:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4011cd:	00 
  4011ce:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  4011d5:	00 
  4011d6:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  4011dd:	00 
  4011de:	e9 fc 05 00 00       	jmp    4017df <main+0x3ff>
  4011e3:	bf 7f 40 40 00       	mov    edi,0x40407f
  4011e8:	e8 43 ff ff ff       	call   401130 <perror@plt>
  4011ed:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4011f4:	00 
  4011f5:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4011fc:	00 
  4011fd:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401204:	00 
  401205:	e9 d5 05 00 00       	jmp    4017df <main+0x3ff>
  40120a:	bf ab 40 40 00       	mov    edi,0x4040ab
  40120f:	e8 1c ff ff ff       	call   401130 <perror@plt>
  401214:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  40121b:	00 
  40121c:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401223:	00 
  401224:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40122b:	00 
  40122c:	e9 ae 05 00 00       	jmp    4017df <main+0x3ff>
  401231:	bf 80 44 40 00       	mov    edi,0x404480
  401236:	e8 f5 fe ff ff       	call   401130 <perror@plt>
  40123b:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401242:	00 
  401243:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  40124a:	00 
  40124b:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401252:	00 
  401253:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  40125a:	00 
  40125b:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  401262:	00 
  401263:	e9 77 05 00 00       	jmp    4017df <main+0x3ff>
  401268:	bf b8 44 40 00       	mov    edi,0x4044b8
  40126d:	e8 be fe ff ff       	call   401130 <perror@plt>
  401272:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401279:	00 
  40127a:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401281:	00 
  401282:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401289:	00 
  40128a:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  401291:	00 
  401292:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  401299:	00 
  40129a:	e9 40 05 00 00       	jmp    4017df <main+0x3ff>
  40129f:	bf 68 43 40 00       	mov    edi,0x404368
  4012a4:	e8 87 fe ff ff       	call   401130 <perror@plt>
  4012a9:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012b0:	00 
  4012b1:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012b8:	00 
  4012b9:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012c0:	00 
  4012c1:	e9 19 05 00 00       	jmp    4017df <main+0x3ff>
  4012c6:	bf 90 43 40 00       	mov    edi,0x404390
  4012cb:	e8 60 fe ff ff       	call   401130 <perror@plt>
  4012d0:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012d7:	00 
  4012d8:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012df:	00 
  4012e0:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012e7:	00 
  4012e8:	e9 f2 04 00 00       	jmp    4017df <main+0x3ff>
  4012ed:	bf 40 43 40 00       	mov    edi,0x404340
  4012f2:	e8 39 fe ff ff       	call   401130 <perror@plt>
  4012f7:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012fe:	00 
  4012ff:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401306:	00 
  401307:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40130e:	00 
  40130f:	e9 cb 04 00 00       	jmp    4017df <main+0x3ff>
  401314:	bf 95 40 40 00       	mov    edi,0x404095
  401319:	e8 12 fe ff ff       	call   401130 <perror@plt>
  40131e:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401325:	00 
  401326:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  40132d:	00 
  40132e:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401335:	00 
  401336:	e9 a4 04 00 00       	jmp    4017df <main+0x3ff>
  40133b:	bf b8 43 40 00       	mov    edi,0x4043b8
  401340:	e8 eb fd ff ff       	call   401130 <perror@plt>
  401345:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  40134c:	00 
  40134d:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401354:	00 
  401355:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40135c:	00 
  40135d:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  401364:	00 
  401365:	e9 75 04 00 00       	jmp    4017df <main+0x3ff>
  40136a:	bf e8 43 40 00       	mov    edi,0x4043e8
  40136f:	e8 bc fd ff ff       	call   401130 <perror@plt>
  401374:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  40137b:	00 
  40137c:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401383:	00 
  401384:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40138b:	00 
  40138c:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  401393:	00 
  401394:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  40139b:	00 
  40139c:	e9 3e 04 00 00       	jmp    4017df <main+0x3ff>
  4013a1:	bf 18 44 40 00       	mov    edi,0x404418
  4013a6:	e8 85 fd ff ff       	call   401130 <perror@plt>
  4013ab:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4013b2:	00 
  4013b3:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4013ba:	00 
  4013bb:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4013c2:	00 
  4013c3:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  4013ca:	00 
  4013cb:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  4013d2:	00 
  4013d3:	e9 07 04 00 00       	jmp    4017df <main+0x3ff>
  4013d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4013df:	00 

00000000004013e0 <main>:
  4013e0:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
  4013e7:	8d 47 f6             	lea    eax,[rdi-0xa]
  4013ea:	48 89 9c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbx
  4013f1:	00 
  4013f2:	48 89 f3             	mov    rbx,rsi
  4013f5:	83 f8 02             	cmp    eax,0x2
  4013f8:	0f 87 b0 03 00 00    	ja     4017ae <main+0x3ce>
  4013fe:	48 8b 46 20          	mov    rax,QWORD PTR [rsi+0x20]
  401402:	4c 89 ac 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],r13
  401409:	00 
  40140a:	41 89 fd             	mov    r13d,edi
  40140d:	48 8b 7e 08          	mov    rdi,QWORD PTR [rsi+0x8]
  401411:	48 89 ac 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rbp
  401418:	00 
  401419:	4c 89 a4 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r12
  401420:	00 
  401421:	48 8b 6e 18          	mov    rbp,QWORD PTR [rsi+0x18]
  401425:	4c 8b 66 10          	mov    r12,QWORD PTR [rsi+0x10]
  401429:	be 7d 40 40 00       	mov    esi,0x40407d
  40142e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401433:	e8 e8 fc ff ff       	call   401120 <fopen@plt>
  401438:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40143d:	48 85 c0             	test   rax,rax
  401440:	0f 84 9d fd ff ff    	je     4011e3 <main.cold+0x37>
  401446:	be 7d 40 40 00       	mov    esi,0x40407d
  40144b:	4c 89 e7             	mov    rdi,r12
  40144e:	e8 cd fc ff ff       	call   401120 <fopen@plt>
  401453:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  401458:	48 85 c0             	test   rax,rax
  40145b:	0f 84 b3 fe ff ff    	je     401314 <main.cold+0x168>
  401461:	be 7d 40 40 00       	mov    esi,0x40407d
  401466:	48 89 ef             	mov    rdi,rbp
  401469:	e8 b2 fc ff ff       	call   401120 <fopen@plt>
  40146e:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401473:	48 85 c0             	test   rax,rax
  401476:	0f 84 8e fd ff ff    	je     40120a <main.cold+0x5e>
  40147c:	48 8b 6b 28          	mov    rbp,QWORD PTR [rbx+0x28]
  401480:	be c1 40 40 00       	mov    esi,0x4040c1
  401485:	48 89 ef             	mov    rdi,rbp
  401488:	e8 43 fc ff ff       	call   4010d0 <strcmp@plt>
  40148d:	85 c0                	test   eax,eax
  40148f:	0f 84 0f 03 00 00    	je     4017a4 <main+0x3c4>
  401495:	be c3 40 40 00       	mov    esi,0x4040c3
  40149a:	48 89 ef             	mov    rdi,rbp
  40149d:	e8 2e fc ff ff       	call   4010d0 <strcmp@plt>
  4014a2:	c6 44 24 72 08       	mov    BYTE PTR [rsp+0x72],0x8
  4014a7:	85 c0                	test   eax,eax
  4014a9:	0f 85 7f 03 00 00    	jne    40182e <main+0x44e>
  4014af:	48 8b 7b 30          	mov    rdi,QWORD PTR [rbx+0x30]
  4014b3:	ba 0a 00 00 00       	mov    edx,0xa
  4014b8:	31 f6                	xor    esi,esi
  4014ba:	e8 71 fb ff ff       	call   401030 <__isoc23_strtoul@plt>
  4014bf:	48 8b 7b 38          	mov    rdi,QWORD PTR [rbx+0x38]
  4014c3:	31 f6                	xor    esi,esi
  4014c5:	89 44 24 4c          	mov    DWORD PTR [rsp+0x4c],eax
  4014c9:	48 89 c5             	mov    rbp,rax
  4014cc:	e8 df fb ff ff       	call   4010b0 <strtof@plt>
  4014d1:	48 8b 7b 40          	mov    rdi,QWORD PTR [rbx+0x40]
  4014d5:	31 f6                	xor    esi,esi
  4014d7:	c5 fa 11 44 24 74    	vmovss DWORD PTR [rsp+0x74],xmm0
  4014dd:	e8 ce fb ff ff       	call   4010b0 <strtof@plt>
  4014e2:	48 8b 7b 48          	mov    rdi,QWORD PTR [rbx+0x48]
  4014e6:	31 f6                	xor    esi,esi
  4014e8:	c5 fa 11 44 24 78    	vmovss DWORD PTR [rsp+0x78],xmm0
  4014ee:	e8 bd fb ff ff       	call   4010b0 <strtof@plt>
  4014f3:	48 8b 7b 38          	mov    rdi,QWORD PTR [rbx+0x38]
  4014f7:	31 f6                	xor    esi,esi
  4014f9:	c5 fa 11 44 24 7c    	vmovss DWORD PTR [rsp+0x7c],xmm0
  4014ff:	e8 5c fb ff ff       	call   401060 <strtod@plt>
  401504:	48 8b 7b 40          	mov    rdi,QWORD PTR [rbx+0x40]
  401508:	31 f6                	xor    esi,esi
  40150a:	c5 fb 11 44 24 58    	vmovsd QWORD PTR [rsp+0x58],xmm0
  401510:	e8 4b fb ff ff       	call   401060 <strtod@plt>
  401515:	48 8b 7b 48          	mov    rdi,QWORD PTR [rbx+0x48]
  401519:	31 f6                	xor    esi,esi
  40151b:	c5 fb 11 44 24 60    	vmovsd QWORD PTR [rsp+0x60],xmm0
  401521:	e8 3a fb ff ff       	call   401060 <strtod@plt>
  401526:	c5 fb 11 44 24 68    	vmovsd QWORD PTR [rsp+0x68],xmm0
  40152c:	41 83 fd 0a          	cmp    r13d,0xa
  401530:	0f 84 b0 02 00 00    	je     4017e6 <main+0x406>
  401536:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
  40153a:	ba 0a 00 00 00       	mov    edx,0xa
  40153f:	31 f6                	xor    esi,esi
  401541:	41 bc 01 00 00 00    	mov    r12d,0x1
  401547:	e8 b4 fb ff ff       	call   401100 <__isoc23_strtol@plt>
  40154c:	88 44 24 73          	mov    BYTE PTR [rsp+0x73],al
  401550:	41 83 fd 0c          	cmp    r13d,0xc
  401554:	0f 84 0c 03 00 00    	je     401866 <main+0x486>
  40155a:	0f b6 44 24 72       	movzx  eax,BYTE PTR [rsp+0x72]
  40155f:	41 89 c5             	mov    r13d,eax
  401562:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  401566:	44 0f af ed          	imul   r13d,ebp
  40156a:	44 89 ef             	mov    edi,r13d
  40156d:	e8 9e fb ff ff       	call   401110 <malloc@plt>
  401572:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401577:	48 85 c0             	test   rax,rax
  40157a:	0f 84 6d fd ff ff    	je     4012ed <main.cold+0x141>
  401580:	44 89 ef             	mov    edi,r13d
  401583:	e8 88 fb ff ff       	call   401110 <malloc@plt>
  401588:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  40158d:	48 85 c0             	test   rax,rax
  401590:	0f 84 09 fd ff ff    	je     40129f <main.cold+0xf3>
  401596:	44 89 ef             	mov    edi,r13d
  401599:	e8 72 fb ff ff       	call   401110 <malloc@plt>
  40159e:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  4015a3:	48 85 c0             	test   rax,rax
  4015a6:	0f 84 1a fd ff ff    	je     4012c6 <main.cold+0x11a>
  4015ac:	44 89 e8             	mov    eax,r13d
  4015af:	44 0f b6 6c 24 73    	movzx  r13d,BYTE PTR [rsp+0x73]
  4015b5:	4c 89 b4 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r14
  4015bc:	00 
  4015bd:	41 0f af c4          	imul   eax,r12d
  4015c1:	46 8d 34 28          	lea    r14d,[rax+r13*1]
  4015c5:	4c 89 f7             	mov    rdi,r14
  4015c8:	e8 43 fb ff ff       	call   401110 <malloc@plt>
  4015cd:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  4015d2:	48 85 c0             	test   rax,rax
  4015d5:	0f 84 60 fd ff ff    	je     40133b <main.cold+0x18f>
  4015db:	4c 89 f7             	mov    rdi,r14
  4015de:	4c 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r15
  4015e5:	00 
  4015e6:	e8 25 fb ff ff       	call   401110 <malloc@plt>
  4015eb:	49 89 c7             	mov    r15,rax
  4015ee:	48 85 c0             	test   rax,rax
  4015f1:	0f 84 73 fd ff ff    	je     40136a <main.cold+0x1be>
  4015f7:	4c 89 f7             	mov    rdi,r14
  4015fa:	e8 11 fb ff ff       	call   401110 <malloc@plt>
  4015ff:	49 89 c6             	mov    r14,rax
  401602:	48 85 c0             	test   rax,rax
  401605:	0f 84 96 fd ff ff    	je     4013a1 <main.cold+0x1f5>
  40160b:	0f b6 44 24 72       	movzx  eax,BYTE PTR [rsp+0x72]
  401610:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  401615:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40161a:	89 ed                	mov    ebp,ebp
  40161c:	48 89 ea             	mov    rdx,rbp
  40161f:	48 89 c6             	mov    rsi,rax
  401622:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  401627:	e8 24 fa ff ff       	call   401050 <fread@plt>
  40162c:	48 39 c5             	cmp    rbp,rax
  40162f:	0f 85 77 fb ff ff    	jne    4011ac <main.cold>
  401635:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  40163a:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  40163f:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  401644:	48 89 ea             	mov    rdx,rbp
  401647:	e8 04 fa ff ff       	call   401050 <fread@plt>
  40164c:	48 39 c5             	cmp    rbp,rax
  40164f:	0f 85 dc fb ff ff    	jne    401231 <main.cold+0x85>
  401655:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  40165a:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  40165f:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  401664:	48 89 ea             	mov    rdx,rbp
  401667:	e8 e4 f9 ff ff       	call   401050 <fread@plt>
  40166c:	48 39 c5             	cmp    rbp,rax
  40166f:	0f 85 f3 fb ff ff    	jne    401268 <main.cold+0xbc>
  401675:	8b 6c 24 4c          	mov    ebp,DWORD PTR [rsp+0x4c]
  401679:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
  40167d:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
  401682:	45 89 e1             	mov    r9d,r12d
  401685:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40168a:	45 89 e8             	mov    r8d,r13d
  40168d:	89 ea                	mov    edx,ebp
  40168f:	e8 3c 03 00 00       	call   4019d0 <format_input_data>
  401694:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
  401698:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  40169d:	45 89 e1             	mov    r9d,r12d
  4016a0:	45 89 e8             	mov    r8d,r13d
  4016a3:	89 ea                	mov    edx,ebp
  4016a5:	4c 89 fe             	mov    rsi,r15
  4016a8:	e8 23 03 00 00       	call   4019d0 <format_input_data>
  4016ad:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  4016b2:	8b 4c 24 48          	mov    ecx,DWORD PTR [rsp+0x48]
  4016b6:	89 ea                	mov    edx,ebp
  4016b8:	4c 89 f6             	mov    rsi,r14
  4016bb:	45 89 e1             	mov    r9d,r12d
  4016be:	45 89 e8             	mov    r8d,r13d
  4016c1:	e8 0a 03 00 00       	call   4019d0 <format_input_data>
  4016c6:	0f b6 54 24 73       	movzx  edx,BYTE PTR [rsp+0x73]
  4016cb:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  4016d0:	49 8d 34 17          	lea    rsi,[r15+rdx*1]
  4016d4:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
  4016d8:	48 8b 03             	mov    rax,QWORD PTR [rbx]
  4016db:	4c 01 f2             	add    rdx,r14
  4016de:	80 7c 24 72 04       	cmp    BYTE PTR [rsp+0x72],0x4
  4016e3:	0f 84 0d 01 00 00    	je     4017f6 <main+0x416>
  4016e9:	ff 74 24 50          	push   QWORD PTR [rsp+0x50]
  4016ed:	50                   	push   rax
  4016ee:	c5 fb 10 54 24 78    	vmovsd xmm2,QWORD PTR [rsp+0x78]
  4016f4:	45 89 e9             	mov    r9d,r13d
  4016f7:	c5 fb 10 4c 24 70    	vmovsd xmm1,QWORD PTR [rsp+0x70]
  4016fd:	c5 fb 10 44 24 68    	vmovsd xmm0,QWORD PTR [rsp+0x68]
  401703:	45 89 e0             	mov    r8d,r12d
  401706:	31 db                	xor    ebx,ebx
  401708:	8b 4c 24 5c          	mov    ecx,DWORD PTR [rsp+0x5c]
  40170c:	e8 df 07 00 00       	call   401ef0 <run_experiments_as_doubles>
  401711:	58                   	pop    rax
  401712:	5a                   	pop    rdx
  401713:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401718:	e8 23 f9 ff ff       	call   401040 <free@plt>
  40171d:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  401722:	e8 19 f9 ff ff       	call   401040 <free@plt>
  401727:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
  40172c:	e8 0f f9 ff ff       	call   401040 <free@plt>
  401731:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
  401736:	e8 05 f9 ff ff       	call   401040 <free@plt>
  40173b:	4c 89 ff             	mov    rdi,r15
  40173e:	e8 fd f8 ff ff       	call   401040 <free@plt>
  401743:	4c 89 f7             	mov    rdi,r14
  401746:	e8 f5 f8 ff ff       	call   401040 <free@plt>
  40174b:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  401750:	e8 2b f9 ff ff       	call   401080 <fclose@plt>
  401755:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
  40175a:	e8 21 f9 ff ff       	call   401080 <fclose@plt>
  40175f:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
  401764:	e8 17 f9 ff ff       	call   401080 <fclose@plt>
  401769:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401770:	00 
  401771:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401778:	00 
  401779:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401780:	00 
  401781:	4c 8b b4 24 a8 00 00 	mov    r14,QWORD PTR [rsp+0xa8]
  401788:	00 
  401789:	4c 8b bc 24 b0 00 00 	mov    r15,QWORD PTR [rsp+0xb0]
  401790:	00 
  401791:	0f b6 c3             	movzx  eax,bl
  401794:	48 8b 9c 24 88 00 00 	mov    rbx,QWORD PTR [rsp+0x88]
  40179b:	00 
  40179c:	48 81 c4 b8 00 00 00 	add    rsp,0xb8
  4017a3:	c3                   	ret
  4017a4:	c6 44 24 72 04       	mov    BYTE PTR [rsp+0x72],0x4
  4017a9:	e9 01 fd ff ff       	jmp    4014af <main+0xcf>
  4017ae:	48 8b 0d 0b 49 00 00 	mov    rcx,QWORD PTR [rip+0x490b]        # 4060c0 <stderr@GLIBC_2.2.5>
  4017b5:	ba 1d 00 00 00       	mov    edx,0x1d
  4017ba:	be 01 00 00 00       	mov    esi,0x1
  4017bf:	bf 5f 40 40 00       	mov    edi,0x40405f
  4017c4:	e8 87 f9 ff ff       	call   401150 <fwrite@plt>
  4017c9:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  4017cc:	48 8b 3d ed 48 00 00 	mov    rdi,QWORD PTR [rip+0x48ed]        # 4060c0 <stderr@GLIBC_2.2.5>
  4017d3:	be 38 42 40 00       	mov    esi,0x404238
  4017d8:	31 c0                	xor    eax,eax
  4017da:	e8 01 f9 ff ff       	call   4010e0 <fprintf@plt>
  4017df:	b8 01 00 00 00       	mov    eax,0x1
  4017e4:	eb ae                	jmp    401794 <main+0x3b4>
  4017e6:	c6 44 24 73 00       	mov    BYTE PTR [rsp+0x73],0x0
  4017eb:	41 bc 01 00 00 00    	mov    r12d,0x1
  4017f1:	e9 64 fd ff ff       	jmp    40155a <main+0x17a>
  4017f6:	ff 74 24 50          	push   QWORD PTR [rsp+0x50]
  4017fa:	50                   	push   rax
  4017fb:	c5 fa 10 94 24 8c 00 	vmovss xmm2,DWORD PTR [rsp+0x8c]
  401802:	00 00 
  401804:	45 89 e9             	mov    r9d,r13d
  401807:	c5 fa 10 8c 24 88 00 	vmovss xmm1,DWORD PTR [rsp+0x88]
  40180e:	00 00 
  401810:	c5 fa 10 84 24 84 00 	vmovss xmm0,DWORD PTR [rsp+0x84]
  401817:	00 00 
  401819:	45 89 e0             	mov    r8d,r12d
  40181c:	8b 4c 24 5c          	mov    ecx,DWORD PTR [rsp+0x5c]
  401820:	e8 4b 02 00 00       	call   401a70 <run_experiments_as_floats>
  401825:	59                   	pop    rcx
  401826:	5e                   	pop    rsi
  401827:	89 c3                	mov    ebx,eax
  401829:	e9 e5 fe ff ff       	jmp    401713 <main+0x333>
  40182e:	48 8b 0d 8b 48 00 00 	mov    rcx,QWORD PTR [rip+0x488b]        # 4060c0 <stderr@GLIBC_2.2.5>
  401835:	ba 13 00 00 00       	mov    edx,0x13
  40183a:	be 01 00 00 00       	mov    esi,0x1
  40183f:	bf c5 40 40 00       	mov    edi,0x4040c5
  401844:	e8 07 f9 ff ff       	call   401150 <fwrite@plt>
  401849:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401850:	00 
  401851:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401858:	00 
  401859:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401860:	00 
  401861:	e9 79 ff ff ff       	jmp    4017df <main+0x3ff>
  401866:	48 8b 7b 58          	mov    rdi,QWORD PTR [rbx+0x58]
  40186a:	ba 0a 00 00 00       	mov    edx,0xa
  40186f:	31 f6                	xor    esi,esi
  401871:	e8 8a f8 ff ff       	call   401100 <__isoc23_strtol@plt>
  401876:	44 0f b6 e0          	movzx  r12d,al
  40187a:	e9 db fc ff ff       	jmp    40155a <main+0x17a>
  40187f:	90                   	nop

0000000000401880 <_start>:
  401880:	f3 0f 1e fa          	endbr64
  401884:	31 ed                	xor    ebp,ebp
  401886:	49 89 d1             	mov    r9,rdx
  401889:	5e                   	pop    rsi
  40188a:	48 89 e2             	mov    rdx,rsp
  40188d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401891:	50                   	push   rax
  401892:	54                   	push   rsp
  401893:	45 31 c0             	xor    r8d,r8d
  401896:	31 c9                	xor    ecx,ecx
  401898:	48 c7 c7 e0 13 40 00 	mov    rdi,0x4013e0
  40189f:	ff 15 33 47 00 00    	call   QWORD PTR [rip+0x4733]        # 405fd8 <__libc_start_main@GLIBC_2.34>
  4018a5:	f4                   	hlt
  4018a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4018ad:	00 00 00 

00000000004018b0 <_dl_relocate_static_pie>:
  4018b0:	f3 0f 1e fa          	endbr64
  4018b4:	c3                   	ret
  4018b5:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4018bc:	00 00 00 
  4018bf:	90                   	nop

00000000004018c0 <deregister_tm_clones>:
  4018c0:	b8 a8 60 40 00       	mov    eax,0x4060a8
  4018c5:	48 3d a8 60 40 00    	cmp    rax,0x4060a8
  4018cb:	74 13                	je     4018e0 <deregister_tm_clones+0x20>
  4018cd:	b8 00 00 00 00       	mov    eax,0x0
  4018d2:	48 85 c0             	test   rax,rax
  4018d5:	74 09                	je     4018e0 <deregister_tm_clones+0x20>
  4018d7:	bf a8 60 40 00       	mov    edi,0x4060a8
  4018dc:	ff e0                	jmp    rax
  4018de:	66 90                	xchg   ax,ax
  4018e0:	c3                   	ret
  4018e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4018e8:	00 00 00 00 
  4018ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004018f0 <register_tm_clones>:
  4018f0:	be a8 60 40 00       	mov    esi,0x4060a8
  4018f5:	48 81 ee a8 60 40 00 	sub    rsi,0x4060a8
  4018fc:	48 89 f0             	mov    rax,rsi
  4018ff:	48 c1 ee 3f          	shr    rsi,0x3f
  401903:	48 c1 f8 03          	sar    rax,0x3
  401907:	48 01 c6             	add    rsi,rax
  40190a:	48 d1 fe             	sar    rsi,1
  40190d:	74 11                	je     401920 <register_tm_clones+0x30>
  40190f:	b8 00 00 00 00       	mov    eax,0x0
  401914:	48 85 c0             	test   rax,rax
  401917:	74 07                	je     401920 <register_tm_clones+0x30>
  401919:	bf a8 60 40 00       	mov    edi,0x4060a8
  40191e:	ff e0                	jmp    rax
  401920:	c3                   	ret
  401921:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401928:	00 00 00 00 
  40192c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401930 <__do_global_dtors_aux>:
  401930:	f3 0f 1e fa          	endbr64
  401934:	80 3d 8d 47 00 00 00 	cmp    BYTE PTR [rip+0x478d],0x0        # 4060c8 <completed.0>
  40193b:	75 13                	jne    401950 <__do_global_dtors_aux+0x20>
  40193d:	55                   	push   rbp
  40193e:	48 89 e5             	mov    rbp,rsp
  401941:	e8 7a ff ff ff       	call   4018c0 <deregister_tm_clones>
  401946:	c6 05 7b 47 00 00 01 	mov    BYTE PTR [rip+0x477b],0x1        # 4060c8 <completed.0>
  40194d:	5d                   	pop    rbp
  40194e:	c3                   	ret
  40194f:	90                   	nop
  401950:	c3                   	ret
  401951:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401958:	00 00 00 00 
  40195c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401960 <frame_dummy>:
  401960:	f3 0f 1e fa          	endbr64
  401964:	eb 8a                	jmp    4018f0 <register_tm_clones>
  401966:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40196d:	00 00 00 
  401970:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  401977:	00 00 00 
  40197a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000401980 <sort_timings>:
  401980:	49 89 fa             	mov    r10,rdi
  401983:	4c 8d 4f 08          	lea    r9,[rdi+0x8]
  401987:	41 b8 01 00 00 00    	mov    r8d,0x1
  40198d:	0f 1f 00             	nop    DWORD PTR [rax]
  401990:	49 8b 39             	mov    rdi,QWORD PTR [r9]
  401993:	4c 89 c8             	mov    rax,r9
  401996:	4c 89 c2             	mov    rdx,r8
  401999:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4019a0:	48 8b 48 f8          	mov    rcx,QWORD PTR [rax-0x8]
  4019a4:	48 89 c6             	mov    rsi,rax
  4019a7:	48 39 cf             	cmp    rdi,rcx
  4019aa:	73 0f                	jae    4019bb <sort_timings+0x3b>
  4019ac:	48 89 08             	mov    QWORD PTR [rax],rcx
  4019af:	48 8d 46 f8          	lea    rax,[rsi-0x8]
  4019b3:	48 ff ca             	dec    rdx
  4019b6:	75 e8                	jne    4019a0 <sort_timings+0x20>
  4019b8:	4c 89 d6             	mov    rsi,r10
  4019bb:	49 ff c0             	inc    r8
  4019be:	48 89 3e             	mov    QWORD PTR [rsi],rdi
  4019c1:	49 83 c1 08          	add    r9,0x8
  4019c5:	49 83 f8 1e          	cmp    r8,0x1e
  4019c9:	75 c5                	jne    401990 <sort_timings+0x10>
  4019cb:	c3                   	ret
  4019cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004019d0 <format_input_data>:
  4019d0:	41 56                	push   r14
  4019d2:	41 55                	push   r13
  4019d4:	41 54                	push   r12
  4019d6:	45 0f b6 e1          	movzx  r12d,r9b
  4019da:	55                   	push   rbp
  4019db:	53                   	push   rbx
  4019dc:	41 80 fc 08          	cmp    r12b,0x8
  4019e0:	77 74                	ja     401a56 <format_input_data+0x86>
  4019e2:	b8 16 01 00 00       	mov    eax,0x116
  4019e7:	41 89 d5             	mov    r13d,edx
  4019ea:	41 0f b6 d4          	movzx  edx,r12b
  4019ee:	4c 0f a3 e0          	bt     rax,r12
  4019f2:	73 62                	jae    401a56 <format_input_data+0x86>
  4019f4:	0f b6 e9             	movzx  ebp,cl
  4019f7:	45 0f b6 f0          	movzx  r14d,r8b
  4019fb:	48 89 fb             	mov    rbx,rdi
  4019fe:	48 89 f7             	mov    rdi,rsi
  401a01:	40 0f b6 c5          	movzx  eax,bpl
  401a05:	31 f6                	xor    esi,esi
  401a07:	41 0f af c5          	imul   eax,r13d
  401a0b:	0f af c2             	imul   eax,edx
  401a0e:	41 0f b6 d6          	movzx  edx,r14b
  401a12:	01 c2                	add    edx,eax
  401a14:	89 d2                	mov    edx,edx
  401a16:	e8 a5 f6 ff ff       	call   4010c0 <memset@plt>
  401a1b:	45 85 ed             	test   r13d,r13d
  401a1e:	74 2d                	je     401a4d <format_input_data+0x7d>
  401a20:	4c 0f af e5          	imul   r12,rbp
  401a24:	4e 8d 04 30          	lea    r8,[rax+r14*1]
  401a28:	45 31 f6             	xor    r14d,r14d
  401a2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401a30:	48 89 de             	mov    rsi,rbx
  401a33:	4c 89 c7             	mov    rdi,r8
  401a36:	48 89 ea             	mov    rdx,rbp
  401a39:	41 ff c6             	inc    r14d
  401a3c:	e8 af f6 ff ff       	call   4010f0 <memcpy@plt>
  401a41:	48 01 eb             	add    rbx,rbp
  401a44:	4e 8d 04 20          	lea    r8,[rax+r12*1]
  401a48:	45 39 f5             	cmp    r13d,r14d
  401a4b:	75 e3                	jne    401a30 <format_input_data+0x60>
  401a4d:	5b                   	pop    rbx
  401a4e:	5d                   	pop    rbp
  401a4f:	41 5c                	pop    r12
  401a51:	41 5d                	pop    r13
  401a53:	41 5e                	pop    r14
  401a55:	c3                   	ret
  401a56:	b9 f0 44 40 00       	mov    ecx,0x4044f0
  401a5b:	ba 05 01 00 00       	mov    edx,0x105
  401a60:	be 04 40 40 00       	mov    esi,0x404004
  401a65:	bf f8 40 40 00       	mov    edi,0x4040f8
  401a6a:	e8 31 f6 ff ff       	call   4010a0 <__assert_fail@plt>
  401a6f:	90                   	nop

0000000000401a70 <run_experiments_as_floats>:
  401a70:	41 57                	push   r15
  401a72:	41 56                	push   r14
  401a74:	41 55                	push   r13
  401a76:	41 89 cd             	mov    r13d,ecx
  401a79:	41 54                	push   r12
  401a7b:	55                   	push   rbp
  401a7c:	53                   	push   rbx
  401a7d:	44 89 c3             	mov    ebx,r8d
  401a80:	48 81 ec 18 13 00 00 	sub    rsp,0x1318
  401a87:	49 89 f4             	mov    r12,rsi
  401a8a:	48 89 d5             	mov    rbp,rdx
  401a8d:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  401a92:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401a99:	00 
  401a9a:	44 88 44 24 28       	mov    BYTE PTR [rsp+0x28],r8b
  401a9f:	89 4c 24 24          	mov    DWORD PTR [rsp+0x24],ecx
  401aa3:	44 88 4c 24 2f       	mov    BYTE PTR [rsp+0x2f],r9b
  401aa8:	c5 fa 11 44 24 10    	vmovss DWORD PTR [rsp+0x10],xmm0
  401aae:	c5 fa 11 4c 24 14    	vmovss DWORD PTR [rsp+0x14],xmm1
  401ab4:	c5 fa 11 54 24 20    	vmovss DWORD PTR [rsp+0x20],xmm2
  401aba:	e8 21 15 00 00       	call   402fe0 <perf_StartTimer>
  401abf:	44 0f b6 c3          	movzx  r8d,bl
  401ac3:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  401ac8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401acf:	00 
  401ad0:	4c 89 e9             	mov    rcx,r13
  401ad3:	48 89 ea             	mov    rdx,rbp
  401ad6:	4c 89 e6             	mov    rsi,r12
  401ad9:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  401ade:	48 89 df             	mov    rdi,rbx
  401ae1:	e8 9a 08 00 00       	call   402380 <kernels_SaxpyF32>
  401ae6:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401aed:	00 
  401aee:	e8 2d 15 00 00       	call   403020 <perf_EndTimer>
  401af3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401afa:	00 
  401afb:	e8 60 15 00 00       	call   403060 <perf_ComputeNSecDelta>
  401b00:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
  401b05:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401b0b:	76 c3                	jbe    401ad0 <run_experiments_as_floats+0x60>
  401b0d:	4d 89 c6             	mov    r14,r8
  401b10:	4c 8d 7c 24 40       	lea    r15,[rsp+0x40]
  401b15:	48 8d 9c 24 10 03 00 	lea    rbx,[rsp+0x310]
  401b1c:	00 
  401b1d:	0f 1f 00             	nop    DWORD PTR [rax]
  401b20:	48 89 df             	mov    rdi,rbx
  401b23:	49 83 c7 08          	add    r15,0x8
  401b27:	e8 b4 14 00 00       	call   402fe0 <perf_StartTimer>
  401b2c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401b31:	4d 89 f0             	mov    r8,r14
  401b34:	4c 89 e9             	mov    rcx,r13
  401b37:	48 89 ea             	mov    rdx,rbp
  401b3a:	4c 89 e6             	mov    rsi,r12
  401b3d:	e8 3e 08 00 00       	call   402380 <kernels_SaxpyF32>
  401b42:	48 89 df             	mov    rdi,rbx
  401b45:	e8 d6 14 00 00       	call   403020 <perf_EndTimer>
  401b4a:	48 89 df             	mov    rdi,rbx
  401b4d:	e8 0e 15 00 00       	call   403060 <perf_ComputeNSecDelta>
  401b52:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401b56:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
  401b5d:	00 
  401b5e:	49 39 c7             	cmp    r15,rax
  401b61:	75 bd                	jne    401b20 <run_experiments_as_floats+0xb0>
  401b63:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  401b68:	e8 13 fe ff ff       	call   401980 <sort_timings>
  401b6d:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401b74:	00 
  401b75:	e8 66 14 00 00       	call   402fe0 <perf_StartTimer>
  401b7a:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  401b7f:	4d 89 f0             	mov    r8,r14
  401b82:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401b89:	00 00 00 00 
  401b8d:	0f 1f 00             	nop    DWORD PTR [rax]
  401b90:	4c 89 e9             	mov    rcx,r13
  401b93:	48 89 ea             	mov    rdx,rbp
  401b96:	4c 89 e6             	mov    rsi,r12
  401b99:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  401b9e:	4c 89 ff             	mov    rdi,r15
  401ba1:	e8 4a 0b 00 00       	call   4026f0 <kernels_MultiplyF32>
  401ba6:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bad:	00 
  401bae:	e8 6d 14 00 00       	call   403020 <perf_EndTimer>
  401bb3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bba:	00 
  401bbb:	e8 a0 14 00 00       	call   403060 <perf_ComputeNSecDelta>
  401bc0:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
  401bc5:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401bcb:	76 c3                	jbe    401b90 <run_experiments_as_floats+0x120>
  401bcd:	4d 89 c6             	mov    r14,r8
  401bd0:	4c 8d bc 24 30 01 00 	lea    r15,[rsp+0x130]
  401bd7:	00 
  401bd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401bdf:	00 
  401be0:	48 89 df             	mov    rdi,rbx
  401be3:	49 83 c7 08          	add    r15,0x8
  401be7:	e8 f4 13 00 00       	call   402fe0 <perf_StartTimer>
  401bec:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401bf1:	4d 89 f0             	mov    r8,r14
  401bf4:	4c 89 e9             	mov    rcx,r13
  401bf7:	48 89 ea             	mov    rdx,rbp
  401bfa:	4c 89 e6             	mov    rsi,r12
  401bfd:	e8 ee 0a 00 00       	call   4026f0 <kernels_MultiplyF32>
  401c02:	48 89 df             	mov    rdi,rbx
  401c05:	e8 16 14 00 00       	call   403020 <perf_EndTimer>
  401c0a:	48 89 df             	mov    rdi,rbx
  401c0d:	e8 4e 14 00 00       	call   403060 <perf_ComputeNSecDelta>
  401c12:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401c16:	48 8d 84 24 20 02 00 	lea    rax,[rsp+0x220]
  401c1d:	00 
  401c1e:	49 39 c7             	cmp    r15,rax
  401c21:	75 bd                	jne    401be0 <run_experiments_as_floats+0x170>
  401c23:	48 8d bc 24 30 01 00 	lea    rdi,[rsp+0x130]
  401c2a:	00 
  401c2b:	e8 50 fd ff ff       	call   401980 <sort_timings>
  401c30:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c35:	e8 a6 13 00 00       	call   402fe0 <perf_StartTimer>
  401c3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401c40:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401c46:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401c4c:	4c 89 f1             	mov    rcx,r14
  401c4f:	4c 89 ea             	mov    rdx,r13
  401c52:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401c58:	48 89 ee             	mov    rsi,rbp
  401c5b:	4c 89 e7             	mov    rdi,r12
  401c5e:	e8 ed 0d 00 00       	call   402a50 <kernels_ThreeStencilF32>
  401c63:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c68:	e8 b3 13 00 00       	call   403020 <perf_EndTimer>
  401c6d:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c72:	e8 e9 13 00 00       	call   403060 <perf_ComputeNSecDelta>
  401c77:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401c7d:	76 c1                	jbe    401c40 <run_experiments_as_floats+0x1d0>
  401c7f:	4c 8d bc 24 20 02 00 	lea    r15,[rsp+0x220]
  401c86:	00 
  401c87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401c8e:	00 00 
  401c90:	48 89 df             	mov    rdi,rbx
  401c93:	49 83 c7 08          	add    r15,0x8
  401c97:	e8 44 13 00 00       	call   402fe0 <perf_StartTimer>
  401c9c:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401ca2:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401ca8:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401cae:	4c 89 f1             	mov    rcx,r14
  401cb1:	4c 89 ea             	mov    rdx,r13
  401cb4:	48 89 ee             	mov    rsi,rbp
  401cb7:	4c 89 e7             	mov    rdi,r12
  401cba:	e8 91 0d 00 00       	call   402a50 <kernels_ThreeStencilF32>
  401cbf:	48 89 df             	mov    rdi,rbx
  401cc2:	e8 59 13 00 00       	call   403020 <perf_EndTimer>
  401cc7:	48 89 df             	mov    rdi,rbx
  401cca:	e8 91 13 00 00       	call   403060 <perf_ComputeNSecDelta>
  401ccf:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401cd3:	49 39 df             	cmp    r15,rbx
  401cd6:	75 b8                	jne    401c90 <run_experiments_as_floats+0x220>
  401cd8:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401cdf:	00 
  401ce0:	e8 9b fc ff ff       	call   401980 <sort_timings>
  401ce5:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401cec:	00 
  401ced:	be 1a 40 40 00       	mov    esi,0x40401a
  401cf2:	4c 89 ff             	mov    rdi,r15
  401cf5:	31 c0                	xor    eax,eax
  401cf7:	e8 44 f4 ff ff       	call   401140 <sprintf@plt>
  401cfc:	be 34 40 40 00       	mov    esi,0x404034
  401d01:	4c 89 ff             	mov    rdi,r15
  401d04:	e8 17 f4 ff ff       	call   401120 <fopen@plt>
  401d09:	48 89 c3             	mov    rbx,rax
  401d0c:	48 85 c0             	test   rax,rax
  401d0f:	0f 84 6b f4 ff ff    	je     401180 <run_experiments_as_floats.cold>
  401d15:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401d1a:	4d 89 f0             	mov    r8,r14
  401d1d:	4c 89 e9             	mov    rcx,r13
  401d20:	48 89 ea             	mov    rdx,rbp
  401d23:	4c 89 e6             	mov    rsi,r12
  401d26:	e8 55 06 00 00       	call   402380 <kernels_SaxpyF32>
  401d2b:	0f b6 4c 24 28       	movzx  ecx,BYTE PTR [rsp+0x28]
  401d30:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  401d34:	ba 04 00 00 00       	mov    edx,0x4
  401d39:	48 89 ef             	mov    rdi,rbp
  401d3c:	0f af c1             	imul   eax,ecx
  401d3f:	89 4c 24 28          	mov    DWORD PTR [rsp+0x28],ecx
  401d43:	48 89 d9             	mov    rcx,rbx
  401d46:	48 89 c6             	mov    rsi,rax
  401d49:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401d4e:	e8 fd f3 ff ff       	call   401150 <fwrite@plt>
  401d53:	48 89 df             	mov    rdi,rbx
  401d56:	e8 25 f3 ff ff       	call   401080 <fclose@plt>
  401d5b:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401d62:	00 
  401d63:	be 88 41 40 00       	mov    esi,0x404188
  401d68:	4c 89 ff             	mov    rdi,r15
  401d6b:	31 c0                	xor    eax,eax
  401d6d:	e8 ce f3 ff ff       	call   401140 <sprintf@plt>
  401d72:	be 34 40 40 00       	mov    esi,0x404034
  401d77:	4c 89 ff             	mov    rdi,r15
  401d7a:	e8 a1 f3 ff ff       	call   401120 <fopen@plt>
  401d7f:	48 89 c3             	mov    rbx,rax
  401d82:	48 85 c0             	test   rax,rax
  401d85:	0f 84 15 f4 ff ff    	je     4011a0 <run_experiments_as_floats.cold+0x20>
  401d8b:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401d90:	4d 89 f0             	mov    r8,r14
  401d93:	4c 89 e9             	mov    rcx,r13
  401d96:	48 89 ea             	mov    rdx,rbp
  401d99:	4c 89 e6             	mov    rsi,r12
  401d9c:	e8 4f 09 00 00       	call   4026f0 <kernels_MultiplyF32>
  401da1:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401da6:	48 89 d9             	mov    rcx,rbx
  401da9:	ba 04 00 00 00       	mov    edx,0x4
  401dae:	48 89 ef             	mov    rdi,rbp
  401db1:	e8 9a f3 ff ff       	call   401150 <fwrite@plt>
  401db6:	48 89 df             	mov    rdi,rbx
  401db9:	e8 c2 f2 ff ff       	call   401080 <fclose@plt>
  401dbe:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401dc5:	00 
  401dc6:	be 36 40 40 00       	mov    esi,0x404036
  401dcb:	4c 89 ff             	mov    rdi,r15
  401dce:	31 c0                	xor    eax,eax
  401dd0:	e8 6b f3 ff ff       	call   401140 <sprintf@plt>
  401dd5:	be 34 40 40 00       	mov    esi,0x404034
  401dda:	4c 89 ff             	mov    rdi,r15
  401ddd:	e8 3e f3 ff ff       	call   401120 <fopen@plt>
  401de2:	48 89 c3             	mov    rbx,rax
  401de5:	48 85 c0             	test   rax,rax
  401de8:	0f 84 a6 f3 ff ff    	je     401194 <run_experiments_as_floats.cold+0x14>
  401dee:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401df4:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401dfa:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401e00:	4c 89 f1             	mov    rcx,r14
  401e03:	4c 89 ea             	mov    rdx,r13
  401e06:	48 89 ee             	mov    rsi,rbp
  401e09:	4c 89 e7             	mov    rdi,r12
  401e0c:	e8 3f 0c 00 00       	call   402a50 <kernels_ThreeStencilF32>
  401e11:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401e16:	48 89 d9             	mov    rcx,rbx
  401e19:	ba 04 00 00 00       	mov    edx,0x4
  401e1e:	48 89 ef             	mov    rdi,rbp
  401e21:	e8 2a f3 ff ff       	call   401150 <fwrite@plt>
  401e26:	48 89 df             	mov    rdi,rbx
  401e29:	e8 52 f2 ff ff       	call   401080 <fclose@plt>
  401e2e:	c5 7b 10 05 d2 26 00 	vmovsd xmm8,QWORD PTR [rip+0x26d2]        # 404508 <__PRETTY_FUNCTION__.0+0x18>
  401e35:	00 
  401e36:	c5 fb 10 3d d2 26 00 	vmovsd xmm7,QWORD PTR [rip+0x26d2]        # 404510 <__PRETTY_FUNCTION__.0+0x20>
  401e3d:	00 
  401e3e:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  401e42:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0x298]
  401e49:	53 
  401e4a:	62 f1 cf 08 7b 6c 24 	vcvtusi2sd xmm5,xmm6,QWORD PTR [rsp+0x220]
  401e51:	44 
  401e52:	62 f1 cf 08 7b 64 24 	vcvtusi2sd xmm4,xmm6,QWORD PTR [rsp+0x130]
  401e59:	26 
  401e5a:	62 f1 cf 08 7b 5c 24 	vcvtusi2sd xmm3,xmm6,QWORD PTR [rsp+0x40]
  401e61:	08 
  401e62:	62 f1 cf 08 7b 54 24 	vcvtusi2sd xmm2,xmm6,QWORD PTR [rsp+0x290]
  401e69:	52 
  401e6a:	62 f1 cf 08 7b 4c 24 	vcvtusi2sd xmm1,xmm6,QWORD PTR [rsp+0x1a8]
  401e71:	35 
  401e72:	c5 eb 58 d0          	vaddsd xmm2,xmm2,xmm0
  401e76:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0x1a0]
  401e7d:	34 
  401e7e:	c5 fb 58 c9          	vaddsd xmm1,xmm0,xmm1
  401e82:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0xb0]
  401e89:	16 
  401e8a:	62 f1 cf 08 7b 74 24 	vcvtusi2sd xmm6,xmm6,QWORD PTR [rsp+0xb8]
  401e91:	17 
  401e92:	c5 fb 58 c6          	vaddsd xmm0,xmm0,xmm6
  401e96:	0f b6 4c 24 2f       	movzx  ecx,BYTE PTR [rsp+0x2f]
  401e9b:	4c 8b 8c 24 50 13 00 	mov    r9,QWORD PTR [rsp+0x1350]
  401ea2:	00 
  401ea3:	8b 54 24 28          	mov    edx,DWORD PTR [rsp+0x28]
  401ea7:	41 b8 52 40 40 00    	mov    r8d,0x404052
  401ead:	8b 74 24 24          	mov    esi,DWORD PTR [rsp+0x24]
  401eb1:	bf 08 42 40 00       	mov    edi,0x404208
  401eb6:	c5 fb 5e c7          	vdivsd xmm0,xmm0,xmm7
  401eba:	b8 06 00 00 00       	mov    eax,0x6
  401ebf:	c4 c1 53 5e e8       	vdivsd xmm5,xmm5,xmm8
  401ec4:	c4 c1 5b 5e e0       	vdivsd xmm4,xmm4,xmm8
  401ec9:	c4 c1 63 5e d8       	vdivsd xmm3,xmm3,xmm8
  401ece:	c5 eb 5e d7          	vdivsd xmm2,xmm2,xmm7
  401ed2:	c5 f3 5e cf          	vdivsd xmm1,xmm1,xmm7
  401ed6:	e8 b5 f1 ff ff       	call   401090 <printf@plt>
  401edb:	31 c0                	xor    eax,eax
  401edd:	48 81 c4 18 13 00 00 	add    rsp,0x1318
  401ee4:	5b                   	pop    rbx
  401ee5:	5d                   	pop    rbp
  401ee6:	41 5c                	pop    r12
  401ee8:	41 5d                	pop    r13
  401eea:	41 5e                	pop    r14
  401eec:	41 5f                	pop    r15
  401eee:	c3                   	ret
  401eef:	90                   	nop

0000000000401ef0 <run_experiments_as_doubles>:
  401ef0:	41 57                	push   r15
  401ef2:	41 56                	push   r14
  401ef4:	41 55                	push   r13
  401ef6:	41 89 cd             	mov    r13d,ecx
  401ef9:	41 54                	push   r12
  401efb:	55                   	push   rbp
  401efc:	53                   	push   rbx
  401efd:	44 89 c3             	mov    ebx,r8d
  401f00:	48 81 ec 28 13 00 00 	sub    rsp,0x1328
  401f07:	49 89 f4             	mov    r12,rsi
  401f0a:	48 89 d5             	mov    rbp,rdx
  401f0d:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
  401f12:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f19:	00 
  401f1a:	44 88 44 24 38       	mov    BYTE PTR [rsp+0x38],r8b
  401f1f:	89 4c 24 34          	mov    DWORD PTR [rsp+0x34],ecx
  401f23:	44 88 4c 24 3f       	mov    BYTE PTR [rsp+0x3f],r9b
  401f28:	c5 fb 11 44 24 10    	vmovsd QWORD PTR [rsp+0x10],xmm0
  401f2e:	c5 fb 11 4c 24 18    	vmovsd QWORD PTR [rsp+0x18],xmm1
  401f34:	c5 fb 11 54 24 20    	vmovsd QWORD PTR [rsp+0x20],xmm2
  401f3a:	e8 a1 10 00 00       	call   402fe0 <perf_StartTimer>
  401f3f:	44 0f b6 c3          	movzx  r8d,bl
  401f43:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  401f48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401f4f:	00 
  401f50:	4c 89 e9             	mov    rcx,r13
  401f53:	48 89 ea             	mov    rdx,rbp
  401f56:	4c 89 e6             	mov    rsi,r12
  401f59:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  401f5e:	48 89 df             	mov    rdi,rbx
  401f61:	e8 ca 05 00 00       	call   402530 <kernels_SaxpyF64>
  401f66:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f6d:	00 
  401f6e:	e8 ad 10 00 00       	call   403020 <perf_EndTimer>
  401f73:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f7a:	00 
  401f7b:	e8 e0 10 00 00       	call   403060 <perf_ComputeNSecDelta>
  401f80:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  401f85:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401f8b:	76 c3                	jbe    401f50 <run_experiments_as_doubles+0x60>
  401f8d:	4d 89 c6             	mov    r14,r8
  401f90:	4c 8d 7c 24 50       	lea    r15,[rsp+0x50]
  401f95:	48 8d 9c 24 20 03 00 	lea    rbx,[rsp+0x320]
  401f9c:	00 
  401f9d:	0f 1f 00             	nop    DWORD PTR [rax]
  401fa0:	48 89 df             	mov    rdi,rbx
  401fa3:	49 83 c7 08          	add    r15,0x8
  401fa7:	e8 34 10 00 00       	call   402fe0 <perf_StartTimer>
  401fac:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401fb1:	4d 89 f0             	mov    r8,r14
  401fb4:	4c 89 e9             	mov    rcx,r13
  401fb7:	48 89 ea             	mov    rdx,rbp
  401fba:	4c 89 e6             	mov    rsi,r12
  401fbd:	e8 6e 05 00 00       	call   402530 <kernels_SaxpyF64>
  401fc2:	48 89 df             	mov    rdi,rbx
  401fc5:	e8 56 10 00 00       	call   403020 <perf_EndTimer>
  401fca:	48 89 df             	mov    rdi,rbx
  401fcd:	e8 8e 10 00 00       	call   403060 <perf_ComputeNSecDelta>
  401fd2:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401fd6:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  401fdd:	00 
  401fde:	49 39 c7             	cmp    r15,rax
  401fe1:	75 bd                	jne    401fa0 <run_experiments_as_doubles+0xb0>
  401fe3:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
  401fe8:	e8 93 f9 ff ff       	call   401980 <sort_timings>
  401fed:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401ff4:	00 
  401ff5:	e8 e6 0f 00 00       	call   402fe0 <perf_StartTimer>
  401ffa:	4c 8b 7c 24 08       	mov    r15,QWORD PTR [rsp+0x8]
  401fff:	4d 89 f0             	mov    r8,r14
  402002:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402009:	00 00 00 00 
  40200d:	0f 1f 00             	nop    DWORD PTR [rax]
  402010:	4c 89 e9             	mov    rcx,r13
  402013:	48 89 ea             	mov    rdx,rbp
  402016:	4c 89 e6             	mov    rsi,r12
  402019:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  40201e:	4c 89 ff             	mov    rdi,r15
  402021:	e8 6a 08 00 00       	call   402890 <kernels_MultiplyF64>
  402026:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40202d:	00 
  40202e:	e8 ed 0f 00 00       	call   403020 <perf_EndTimer>
  402033:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40203a:	00 
  40203b:	e8 20 10 00 00       	call   403060 <perf_ComputeNSecDelta>
  402040:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  402045:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  40204b:	76 c3                	jbe    402010 <run_experiments_as_doubles+0x120>
  40204d:	4d 89 c6             	mov    r14,r8
  402050:	4c 8d bc 24 40 01 00 	lea    r15,[rsp+0x140]
  402057:	00 
  402058:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40205f:	00 
  402060:	48 89 df             	mov    rdi,rbx
  402063:	49 83 c7 08          	add    r15,0x8
  402067:	e8 74 0f 00 00       	call   402fe0 <perf_StartTimer>
  40206c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402071:	4d 89 f0             	mov    r8,r14
  402074:	4c 89 e9             	mov    rcx,r13
  402077:	48 89 ea             	mov    rdx,rbp
  40207a:	4c 89 e6             	mov    rsi,r12
  40207d:	e8 0e 08 00 00       	call   402890 <kernels_MultiplyF64>
  402082:	48 89 df             	mov    rdi,rbx
  402085:	e8 96 0f 00 00       	call   403020 <perf_EndTimer>
  40208a:	48 89 df             	mov    rdi,rbx
  40208d:	e8 ce 0f 00 00       	call   403060 <perf_ComputeNSecDelta>
  402092:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402096:	48 8d 84 24 30 02 00 	lea    rax,[rsp+0x230]
  40209d:	00 
  40209e:	49 39 c7             	cmp    r15,rax
  4020a1:	75 bd                	jne    402060 <run_experiments_as_doubles+0x170>
  4020a3:	48 8d bc 24 40 01 00 	lea    rdi,[rsp+0x140]
  4020aa:	00 
  4020ab:	e8 d0 f8 ff ff       	call   401980 <sort_timings>
  4020b0:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020b5:	e8 26 0f 00 00       	call   402fe0 <perf_StartTimer>
  4020ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4020c0:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  4020c6:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  4020cc:	4c 89 f1             	mov    rcx,r14
  4020cf:	4c 89 ea             	mov    rdx,r13
  4020d2:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  4020d8:	48 89 ee             	mov    rsi,rbp
  4020db:	4c 89 e7             	mov    rdi,r12
  4020de:	e8 1d 0c 00 00       	call   402d00 <kernels_ThreeStencilF64>
  4020e3:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020e8:	e8 33 0f 00 00       	call   403020 <perf_EndTimer>
  4020ed:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020f2:	e8 69 0f 00 00       	call   403060 <perf_ComputeNSecDelta>
  4020f7:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  4020fd:	76 c1                	jbe    4020c0 <run_experiments_as_doubles+0x1d0>
  4020ff:	4c 8d bc 24 30 02 00 	lea    r15,[rsp+0x230]
  402106:	00 
  402107:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40210e:	00 00 
  402110:	48 89 df             	mov    rdi,rbx
  402113:	49 83 c7 08          	add    r15,0x8
  402117:	e8 c4 0e 00 00       	call   402fe0 <perf_StartTimer>
  40211c:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  402122:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402128:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40212e:	4c 89 f1             	mov    rcx,r14
  402131:	4c 89 ea             	mov    rdx,r13
  402134:	48 89 ee             	mov    rsi,rbp
  402137:	4c 89 e7             	mov    rdi,r12
  40213a:	e8 c1 0b 00 00       	call   402d00 <kernels_ThreeStencilF64>
  40213f:	48 89 df             	mov    rdi,rbx
  402142:	e8 d9 0e 00 00       	call   403020 <perf_EndTimer>
  402147:	48 89 df             	mov    rdi,rbx
  40214a:	e8 11 0f 00 00       	call   403060 <perf_ComputeNSecDelta>
  40214f:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402153:	49 39 df             	cmp    r15,rbx
  402156:	75 b8                	jne    402110 <run_experiments_as_doubles+0x220>
  402158:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40215f:	00 
  402160:	e8 1b f8 ff ff       	call   401980 <sort_timings>
  402165:	48 8b 94 24 68 13 00 	mov    rdx,QWORD PTR [rsp+0x1368]
  40216c:	00 
  40216d:	4c 89 ff             	mov    rdi,r15
  402170:	be 1a 40 40 00       	mov    esi,0x40401a
  402175:	31 c0                	xor    eax,eax
  402177:	e8 c4 ef ff ff       	call   401140 <sprintf@plt>
  40217c:	4c 89 ff             	mov    rdi,r15
  40217f:	be 34 40 40 00       	mov    esi,0x404034
  402184:	e8 97 ef ff ff       	call   401120 <fopen@plt>
  402189:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40218e:	4d 89 f0             	mov    r8,r14
  402191:	4c 89 e9             	mov    rcx,r13
  402194:	48 89 ea             	mov    rdx,rbp
  402197:	4c 89 e6             	mov    rsi,r12
  40219a:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40219f:	e8 8c 03 00 00       	call   402530 <kernels_SaxpyF64>
  4021a4:	44 0f b6 54 24 38    	movzx  r10d,BYTE PTR [rsp+0x38]
  4021aa:	8b 5c 24 34          	mov    ebx,DWORD PTR [rsp+0x34]
  4021ae:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  4021b3:	ba 08 00 00 00       	mov    edx,0x8
  4021b8:	48 89 ef             	mov    rdi,rbp
  4021bb:	41 0f af da          	imul   ebx,r10d
  4021bf:	44 89 54 24 38       	mov    DWORD PTR [rsp+0x38],r10d
  4021c4:	48 89 de             	mov    rsi,rbx
  4021c7:	e8 84 ef ff ff       	call   401150 <fwrite@plt>
  4021cc:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  4021d1:	e8 aa ee ff ff       	call   401080 <fclose@plt>
  4021d6:	48 8b 94 24 68 13 00 	mov    rdx,QWORD PTR [rsp+0x1368]
  4021dd:	00 
  4021de:	4c 89 ff             	mov    rdi,r15
  4021e1:	be 88 41 40 00       	mov    esi,0x404188
  4021e6:	31 c0                	xor    eax,eax
  4021e8:	e8 53 ef ff ff       	call   401140 <sprintf@plt>
  4021ed:	4c 89 ff             	mov    rdi,r15
  4021f0:	be 34 40 40 00       	mov    esi,0x404034
  4021f5:	e8 26 ef ff ff       	call   401120 <fopen@plt>
  4021fa:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4021ff:	4d 89 f0             	mov    r8,r14
  402202:	4c 89 e9             	mov    rcx,r13
  402205:	48 89 ea             	mov    rdx,rbp
  402208:	4c 89 e6             	mov    rsi,r12
  40220b:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402210:	e8 7b 06 00 00       	call   402890 <kernels_MultiplyF64>
  402215:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  40221a:	48 89 de             	mov    rsi,rbx
  40221d:	ba 08 00 00 00       	mov    edx,0x8
  402222:	48 89 ef             	mov    rdi,rbp
  402225:	e8 26 ef ff ff       	call   401150 <fwrite@plt>
  40222a:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  40222f:	e8 4c ee ff ff       	call   401080 <fclose@plt>
  402234:	48 8b 94 24 68 13 00 	mov    rdx,QWORD PTR [rsp+0x1368]
  40223b:	00 
  40223c:	4c 89 ff             	mov    rdi,r15
  40223f:	be 36 40 40 00       	mov    esi,0x404036
  402244:	31 c0                	xor    eax,eax
  402246:	e8 f5 ee ff ff       	call   401140 <sprintf@plt>
  40224b:	4c 89 ff             	mov    rdi,r15
  40224e:	be 34 40 40 00       	mov    esi,0x404034
  402253:	e8 c8 ee ff ff       	call   401120 <fopen@plt>
  402258:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  40225e:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402264:	4c 89 f1             	mov    rcx,r14
  402267:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40226d:	49 89 c7             	mov    r15,rax
  402270:	4c 89 ea             	mov    rdx,r13
  402273:	48 89 ee             	mov    rsi,rbp
  402276:	4c 89 e7             	mov    rdi,r12
  402279:	e8 82 0a 00 00       	call   402d00 <kernels_ThreeStencilF64>
  40227e:	4c 89 f9             	mov    rcx,r15
  402281:	48 89 de             	mov    rsi,rbx
  402284:	ba 08 00 00 00       	mov    edx,0x8
  402289:	48 89 ef             	mov    rdi,rbp
  40228c:	e8 bf ee ff ff       	call   401150 <fwrite@plt>
  402291:	4c 89 ff             	mov    rdi,r15
  402294:	e8 e7 ed ff ff       	call   401080 <fclose@plt>
  402299:	c5 7b 10 05 67 22 00 	vmovsd xmm8,QWORD PTR [rip+0x2267]        # 404508 <__PRETTY_FUNCTION__.0+0x18>
  4022a0:	00 
  4022a1:	c5 fb 10 3d 67 22 00 	vmovsd xmm7,QWORD PTR [rip+0x2267]        # 404510 <__PRETTY_FUNCTION__.0+0x20>
  4022a8:	00 
  4022a9:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  4022ad:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0x2a8]
  4022b4:	55 
  4022b5:	62 f1 cf 08 7b 6c 24 	vcvtusi2sd xmm5,xmm6,QWORD PTR [rsp+0x230]
  4022bc:	46 
  4022bd:	62 f1 cf 08 7b 64 24 	vcvtusi2sd xmm4,xmm6,QWORD PTR [rsp+0x140]
  4022c4:	28 
  4022c5:	62 f1 cf 08 7b 5c 24 	vcvtusi2sd xmm3,xmm6,QWORD PTR [rsp+0x50]
  4022cc:	0a 
  4022cd:	62 f1 cf 08 7b 54 24 	vcvtusi2sd xmm2,xmm6,QWORD PTR [rsp+0x2a0]
  4022d4:	54 
  4022d5:	62 f1 cf 08 7b 4c 24 	vcvtusi2sd xmm1,xmm6,QWORD PTR [rsp+0x1b8]
  4022dc:	37 
  4022dd:	c5 eb 58 d0          	vaddsd xmm2,xmm2,xmm0
  4022e1:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0x1b0]
  4022e8:	36 
  4022e9:	c5 fb 58 c9          	vaddsd xmm1,xmm0,xmm1
  4022ed:	62 f1 cf 08 7b 44 24 	vcvtusi2sd xmm0,xmm6,QWORD PTR [rsp+0xc0]
  4022f4:	18 
  4022f5:	62 f1 cf 08 7b 74 24 	vcvtusi2sd xmm6,xmm6,QWORD PTR [rsp+0xc8]
  4022fc:	19 
  4022fd:	c5 fb 58 c6          	vaddsd xmm0,xmm0,xmm6
  402301:	0f b6 4c 24 3f       	movzx  ecx,BYTE PTR [rsp+0x3f]
  402306:	4c 8b 8c 24 60 13 00 	mov    r9,QWORD PTR [rsp+0x1360]
  40230d:	00 
  40230e:	8b 54 24 38          	mov    edx,DWORD PTR [rsp+0x38]
  402312:	41 b8 58 40 40 00    	mov    r8d,0x404058
  402318:	8b 74 24 34          	mov    esi,DWORD PTR [rsp+0x34]
  40231c:	bf 08 42 40 00       	mov    edi,0x404208
  402321:	c5 fb 5e c7          	vdivsd xmm0,xmm0,xmm7
  402325:	b8 06 00 00 00       	mov    eax,0x6
  40232a:	c4 c1 53 5e e8       	vdivsd xmm5,xmm5,xmm8
  40232f:	c4 c1 5b 5e e0       	vdivsd xmm4,xmm4,xmm8
  402334:	c4 c1 63 5e d8       	vdivsd xmm3,xmm3,xmm8
  402339:	c5 eb 5e d7          	vdivsd xmm2,xmm2,xmm7
  40233d:	c5 f3 5e cf          	vdivsd xmm1,xmm1,xmm7
  402341:	e8 4a ed ff ff       	call   401090 <printf@plt>
  402346:	48 81 c4 28 13 00 00 	add    rsp,0x1328
  40234d:	31 c0                	xor    eax,eax
  40234f:	5b                   	pop    rbx
  402350:	5d                   	pop    rbp
  402351:	41 5c                	pop    r12
  402353:	41 5d                	pop    r13
  402355:	41 5e                	pop    r14
  402357:	41 5f                	pop    r15
  402359:	c3                   	ret
  40235a:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  402361:	00 00 00 
  402364:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40236b:	00 00 00 
  40236e:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  402375:	00 00 00 
  402378:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40237f:	00 

0000000000402380 <kernels_SaxpyF32>:
  402380:	49 83 f8 04          	cmp    r8,0x4
  402384:	0f 84 96 00 00 00    	je     402420 <kernels_SaxpyF32+0xa0>
  40238a:	77 54                	ja     4023e0 <kernels_SaxpyF32+0x60>
  40238c:	49 83 f8 01          	cmp    r8,0x1
  402390:	0f 84 0a 01 00 00    	je     4024a0 <kernels_SaxpyF32+0x120>
  402396:	49 83 f8 02          	cmp    r8,0x2
  40239a:	0f 85 c0 00 00 00    	jne    402460 <kernels_SaxpyF32+0xe0>
  4023a0:	31 c0                	xor    eax,eax
  4023a2:	48 85 c9             	test   rcx,rcx
  4023a5:	0f 84 35 01 00 00    	je     4024e0 <kernels_SaxpyF32+0x160>
  4023ab:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4023b2:	00 00 00 00 
  4023b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4023bd:	00 00 00 
  4023c0:	c5 fa 10 04 c7       	vmovss xmm0,DWORD PTR [rdi+rax*8]
  4023c5:	c5 fa 59 04 c6       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*8]
  4023ca:	c5 fa 58 04 c2       	vaddss xmm0,xmm0,DWORD PTR [rdx+rax*8]
  4023cf:	c5 fa 11 04 c2       	vmovss DWORD PTR [rdx+rax*8],xmm0
  4023d4:	48 ff c0             	inc    rax
  4023d7:	48 39 c1             	cmp    rcx,rax
  4023da:	75 e4                	jne    4023c0 <kernels_SaxpyF32+0x40>
  4023dc:	c3                   	ret
  4023dd:	0f 1f 00             	nop    DWORD PTR [rax]
  4023e0:	49 83 f8 08          	cmp    r8,0x8
  4023e4:	75 7a                	jne    402460 <kernels_SaxpyF32+0xe0>
  4023e6:	49 89 c8             	mov    r8,rcx
  4023e9:	31 c0                	xor    eax,eax
  4023eb:	49 c1 e0 05          	shl    r8,0x5
  4023ef:	48 85 c9             	test   rcx,rcx
  4023f2:	0f 84 f8 00 00 00    	je     4024f0 <kernels_SaxpyF32+0x170>
  4023f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4023ff:	00 
  402400:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402405:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40240a:	c5 fa 58 04 02       	vaddss xmm0,xmm0,DWORD PTR [rdx+rax*1]
  40240f:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402414:	48 83 c0 20          	add    rax,0x20
  402418:	49 39 c0             	cmp    r8,rax
  40241b:	75 e3                	jne    402400 <kernels_SaxpyF32+0x80>
  40241d:	c3                   	ret
  40241e:	66 90                	xchg   ax,ax
  402420:	49 89 c8             	mov    r8,rcx
  402423:	31 c0                	xor    eax,eax
  402425:	49 c1 e0 04          	shl    r8,0x4
  402429:	48 85 c9             	test   rcx,rcx
  40242c:	0f 84 ce 00 00 00    	je     402500 <kernels_SaxpyF32+0x180>
  402432:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402439:	00 00 00 00 
  40243d:	0f 1f 00             	nop    DWORD PTR [rax]
  402440:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402445:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40244a:	c5 fa 58 04 02       	vaddss xmm0,xmm0,DWORD PTR [rdx+rax*1]
  40244f:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402454:	48 83 c0 10          	add    rax,0x10
  402458:	49 39 c0             	cmp    r8,rax
  40245b:	75 e3                	jne    402440 <kernels_SaxpyF32+0xc0>
  40245d:	c3                   	ret
  40245e:	66 90                	xchg   ax,ax
  402460:	49 c1 e0 02          	shl    r8,0x2
  402464:	31 c0                	xor    eax,eax
  402466:	45 31 c9             	xor    r9d,r9d
  402469:	48 85 c9             	test   rcx,rcx
  40246c:	0f 84 9e 00 00 00    	je     402510 <kernels_SaxpyF32+0x190>
  402472:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402479:	00 00 00 00 
  40247d:	0f 1f 00             	nop    DWORD PTR [rax]
  402480:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402485:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40248a:	49 ff c1             	inc    r9
  40248d:	c5 fa 58 04 02       	vaddss xmm0,xmm0,DWORD PTR [rdx+rax*1]
  402492:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402497:	4c 01 c0             	add    rax,r8
  40249a:	4c 39 c9             	cmp    rcx,r9
  40249d:	75 e1                	jne    402480 <kernels_SaxpyF32+0x100>
  40249f:	c3                   	ret
  4024a0:	31 c0                	xor    eax,eax
  4024a2:	48 85 c9             	test   rcx,rcx
  4024a5:	74 79                	je     402520 <kernels_SaxpyF32+0x1a0>
  4024a7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024ae:	00 00 00 00 
  4024b2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024b9:	00 00 00 00 
  4024bd:	0f 1f 00             	nop    DWORD PTR [rax]
  4024c0:	c5 fa 10 04 87       	vmovss xmm0,DWORD PTR [rdi+rax*4]
  4024c5:	c5 fa 59 04 86       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*4]
  4024ca:	c5 fa 58 04 82       	vaddss xmm0,xmm0,DWORD PTR [rdx+rax*4]
  4024cf:	c5 fa 11 04 82       	vmovss DWORD PTR [rdx+rax*4],xmm0
  4024d4:	48 ff c0             	inc    rax
  4024d7:	48 39 c1             	cmp    rcx,rax
  4024da:	75 e4                	jne    4024c0 <kernels_SaxpyF32+0x140>
  4024dc:	c3                   	ret
  4024dd:	0f 1f 00             	nop    DWORD PTR [rax]
  4024e0:	c3                   	ret
  4024e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024e8:	00 00 00 00 
  4024ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4024f0:	c3                   	ret
  4024f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024f8:	00 00 00 00 
  4024fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402500:	c3                   	ret
  402501:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402508:	00 00 00 00 
  40250c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402510:	c3                   	ret
  402511:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402518:	00 00 00 00 
  40251c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402520:	c3                   	ret
  402521:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402528:	00 00 00 00 
  40252c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402530 <kernels_SaxpyF64>:
  402530:	49 83 f8 04          	cmp    r8,0x4
  402534:	0f 84 a6 00 00 00    	je     4025e0 <kernels_SaxpyF64+0xb0>
  40253a:	77 64                	ja     4025a0 <kernels_SaxpyF64+0x70>
  40253c:	49 83 f8 01          	cmp    r8,0x1
  402540:	0f 84 1a 01 00 00    	je     402660 <kernels_SaxpyF64+0x130>
  402546:	49 83 f8 02          	cmp    r8,0x2
  40254a:	0f 85 d0 00 00 00    	jne    402620 <kernels_SaxpyF64+0xf0>
  402550:	49 89 c8             	mov    r8,rcx
  402553:	31 c0                	xor    eax,eax
  402555:	49 c1 e0 04          	shl    r8,0x4
  402559:	48 85 c9             	test   rcx,rcx
  40255c:	0f 84 3e 01 00 00    	je     4026a0 <kernels_SaxpyF64+0x170>
  402562:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402569:	00 00 00 00 
  40256d:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402574:	00 00 00 00 
  402578:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40257f:	00 
  402580:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402585:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40258a:	c5 fb 58 04 02       	vaddsd xmm0,xmm0,QWORD PTR [rdx+rax*1]
  40258f:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  402594:	48 83 c0 10          	add    rax,0x10
  402598:	49 39 c0             	cmp    r8,rax
  40259b:	75 e3                	jne    402580 <kernels_SaxpyF64+0x50>
  40259d:	c3                   	ret
  40259e:	66 90                	xchg   ax,ax
  4025a0:	49 83 f8 08          	cmp    r8,0x8
  4025a4:	75 7a                	jne    402620 <kernels_SaxpyF64+0xf0>
  4025a6:	49 89 c8             	mov    r8,rcx
  4025a9:	31 c0                	xor    eax,eax
  4025ab:	49 c1 e0 06          	shl    r8,0x6
  4025af:	48 85 c9             	test   rcx,rcx
  4025b2:	0f 84 f8 00 00 00    	je     4026b0 <kernels_SaxpyF64+0x180>
  4025b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4025bf:	00 
  4025c0:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  4025c5:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  4025ca:	c5 fb 58 04 02       	vaddsd xmm0,xmm0,QWORD PTR [rdx+rax*1]
  4025cf:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  4025d4:	48 83 c0 40          	add    rax,0x40
  4025d8:	49 39 c0             	cmp    r8,rax
  4025db:	75 e3                	jne    4025c0 <kernels_SaxpyF64+0x90>
  4025dd:	c3                   	ret
  4025de:	66 90                	xchg   ax,ax
  4025e0:	49 89 c8             	mov    r8,rcx
  4025e3:	31 c0                	xor    eax,eax
  4025e5:	49 c1 e0 05          	shl    r8,0x5
  4025e9:	48 85 c9             	test   rcx,rcx
  4025ec:	0f 84 ce 00 00 00    	je     4026c0 <kernels_SaxpyF64+0x190>
  4025f2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4025f9:	00 00 00 00 
  4025fd:	0f 1f 00             	nop    DWORD PTR [rax]
  402600:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402605:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40260a:	c5 fb 58 04 02       	vaddsd xmm0,xmm0,QWORD PTR [rdx+rax*1]
  40260f:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  402614:	48 83 c0 20          	add    rax,0x20
  402618:	49 39 c0             	cmp    r8,rax
  40261b:	75 e3                	jne    402600 <kernels_SaxpyF64+0xd0>
  40261d:	c3                   	ret
  40261e:	66 90                	xchg   ax,ax
  402620:	49 c1 e0 03          	shl    r8,0x3
  402624:	31 c0                	xor    eax,eax
  402626:	45 31 c9             	xor    r9d,r9d
  402629:	48 85 c9             	test   rcx,rcx
  40262c:	0f 84 9e 00 00 00    	je     4026d0 <kernels_SaxpyF64+0x1a0>
  402632:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402639:	00 00 00 00 
  40263d:	0f 1f 00             	nop    DWORD PTR [rax]
  402640:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402645:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40264a:	49 ff c1             	inc    r9
  40264d:	c5 fb 58 04 02       	vaddsd xmm0,xmm0,QWORD PTR [rdx+rax*1]
  402652:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  402657:	4c 01 c0             	add    rax,r8
  40265a:	4c 39 c9             	cmp    rcx,r9
  40265d:	75 e1                	jne    402640 <kernels_SaxpyF64+0x110>
  40265f:	c3                   	ret
  402660:	31 c0                	xor    eax,eax
  402662:	48 85 c9             	test   rcx,rcx
  402665:	74 79                	je     4026e0 <kernels_SaxpyF64+0x1b0>
  402667:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40266e:	00 00 00 00 
  402672:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402679:	00 00 00 00 
  40267d:	0f 1f 00             	nop    DWORD PTR [rax]
  402680:	c5 fb 10 04 c7       	vmovsd xmm0,QWORD PTR [rdi+rax*8]
  402685:	c5 fb 59 04 c6       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*8]
  40268a:	c5 fb 58 04 c2       	vaddsd xmm0,xmm0,QWORD PTR [rdx+rax*8]
  40268f:	c5 fb 11 04 c2       	vmovsd QWORD PTR [rdx+rax*8],xmm0
  402694:	48 ff c0             	inc    rax
  402697:	48 39 c1             	cmp    rcx,rax
  40269a:	75 e4                	jne    402680 <kernels_SaxpyF64+0x150>
  40269c:	c3                   	ret
  40269d:	0f 1f 00             	nop    DWORD PTR [rax]
  4026a0:	c3                   	ret
  4026a1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026a8:	00 00 00 00 
  4026ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4026b0:	c3                   	ret
  4026b1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026b8:	00 00 00 00 
  4026bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4026c0:	c3                   	ret
  4026c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026c8:	00 00 00 00 
  4026cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4026d0:	c3                   	ret
  4026d1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026d8:	00 00 00 00 
  4026dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4026e0:	c3                   	ret
  4026e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026e8:	00 00 00 00 
  4026ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004026f0 <kernels_MultiplyF32>:
  4026f0:	49 83 f8 04          	cmp    r8,0x4
  4026f4:	0f 84 86 00 00 00    	je     402780 <kernels_MultiplyF32+0x90>
  4026fa:	77 44                	ja     402740 <kernels_MultiplyF32+0x50>
  4026fc:	49 83 f8 01          	cmp    r8,0x1
  402700:	0f 84 fa 00 00 00    	je     402800 <kernels_MultiplyF32+0x110>
  402706:	49 83 f8 02          	cmp    r8,0x2
  40270a:	0f 85 b0 00 00 00    	jne    4027c0 <kernels_MultiplyF32+0xd0>
  402710:	31 c0                	xor    eax,eax
  402712:	48 85 c9             	test   rcx,rcx
  402715:	0f 84 25 01 00 00    	je     402840 <kernels_MultiplyF32+0x150>
  40271b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402720:	c5 fa 10 04 c7       	vmovss xmm0,DWORD PTR [rdi+rax*8]
  402725:	c5 fa 59 04 c6       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*8]
  40272a:	c5 fa 11 04 c2       	vmovss DWORD PTR [rdx+rax*8],xmm0
  40272f:	48 ff c0             	inc    rax
  402732:	48 39 c1             	cmp    rcx,rax
  402735:	75 e9                	jne    402720 <kernels_MultiplyF32+0x30>
  402737:	c3                   	ret
  402738:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40273f:	00 
  402740:	49 83 f8 08          	cmp    r8,0x8
  402744:	75 7a                	jne    4027c0 <kernels_MultiplyF32+0xd0>
  402746:	49 89 c8             	mov    r8,rcx
  402749:	31 c0                	xor    eax,eax
  40274b:	49 c1 e0 05          	shl    r8,0x5
  40274f:	48 85 c9             	test   rcx,rcx
  402752:	0f 84 f8 00 00 00    	je     402850 <kernels_MultiplyF32+0x160>
  402758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40275f:	00 
  402760:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402765:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40276a:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  40276f:	48 83 c0 20          	add    rax,0x20
  402773:	49 39 c0             	cmp    r8,rax
  402776:	75 e8                	jne    402760 <kernels_MultiplyF32+0x70>
  402778:	c3                   	ret
  402779:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402780:	49 89 c8             	mov    r8,rcx
  402783:	31 c0                	xor    eax,eax
  402785:	49 c1 e0 04          	shl    r8,0x4
  402789:	48 85 c9             	test   rcx,rcx
  40278c:	0f 84 ce 00 00 00    	je     402860 <kernels_MultiplyF32+0x170>
  402792:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402799:	00 00 00 00 
  40279d:	0f 1f 00             	nop    DWORD PTR [rax]
  4027a0:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  4027a5:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  4027aa:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  4027af:	48 83 c0 10          	add    rax,0x10
  4027b3:	49 39 c0             	cmp    r8,rax
  4027b6:	75 e8                	jne    4027a0 <kernels_MultiplyF32+0xb0>
  4027b8:	c3                   	ret
  4027b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4027c0:	49 c1 e0 02          	shl    r8,0x2
  4027c4:	31 c0                	xor    eax,eax
  4027c6:	45 31 c9             	xor    r9d,r9d
  4027c9:	48 85 c9             	test   rcx,rcx
  4027cc:	0f 84 9e 00 00 00    	je     402870 <kernels_MultiplyF32+0x180>
  4027d2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4027d9:	00 00 00 00 
  4027dd:	0f 1f 00             	nop    DWORD PTR [rax]
  4027e0:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  4027e5:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  4027ea:	49 ff c1             	inc    r9
  4027ed:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  4027f2:	4c 01 c0             	add    rax,r8
  4027f5:	4c 39 c9             	cmp    rcx,r9
  4027f8:	75 e6                	jne    4027e0 <kernels_MultiplyF32+0xf0>
  4027fa:	c3                   	ret
  4027fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402800:	31 c0                	xor    eax,eax
  402802:	48 85 c9             	test   rcx,rcx
  402805:	74 79                	je     402880 <kernels_MultiplyF32+0x190>
  402807:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40280e:	00 00 00 00 
  402812:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402819:	00 00 00 00 
  40281d:	0f 1f 00             	nop    DWORD PTR [rax]
  402820:	c5 fa 10 04 87       	vmovss xmm0,DWORD PTR [rdi+rax*4]
  402825:	c5 fa 59 04 86       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*4]
  40282a:	c5 fa 11 04 82       	vmovss DWORD PTR [rdx+rax*4],xmm0
  40282f:	48 ff c0             	inc    rax
  402832:	48 39 c1             	cmp    rcx,rax
  402835:	75 e9                	jne    402820 <kernels_MultiplyF32+0x130>
  402837:	c3                   	ret
  402838:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40283f:	00 
  402840:	c3                   	ret
  402841:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402848:	00 00 00 00 
  40284c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402850:	c3                   	ret
  402851:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402858:	00 00 00 00 
  40285c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402860:	c3                   	ret
  402861:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402868:	00 00 00 00 
  40286c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402870:	c3                   	ret
  402871:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402878:	00 00 00 00 
  40287c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402880:	c3                   	ret
  402881:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402888:	00 00 00 00 
  40288c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402890 <kernels_MultiplyF64>:
  402890:	49 83 f8 04          	cmp    r8,0x4
  402894:	0f 84 a6 00 00 00    	je     402940 <kernels_MultiplyF64+0xb0>
  40289a:	77 64                	ja     402900 <kernels_MultiplyF64+0x70>
  40289c:	49 83 f8 01          	cmp    r8,0x1
  4028a0:	0f 84 1a 01 00 00    	je     4029c0 <kernels_MultiplyF64+0x130>
  4028a6:	49 83 f8 02          	cmp    r8,0x2
  4028aa:	0f 85 d0 00 00 00    	jne    402980 <kernels_MultiplyF64+0xf0>
  4028b0:	49 89 c8             	mov    r8,rcx
  4028b3:	31 c0                	xor    eax,eax
  4028b5:	49 c1 e0 04          	shl    r8,0x4
  4028b9:	48 85 c9             	test   rcx,rcx
  4028bc:	0f 84 3e 01 00 00    	je     402a00 <kernels_MultiplyF64+0x170>
  4028c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4028c9:	00 00 00 00 
  4028cd:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4028d4:	00 00 00 00 
  4028d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4028df:	00 
  4028e0:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  4028e5:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  4028ea:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  4028ef:	48 83 c0 10          	add    rax,0x10
  4028f3:	49 39 c0             	cmp    r8,rax
  4028f6:	75 e8                	jne    4028e0 <kernels_MultiplyF64+0x50>
  4028f8:	c3                   	ret
  4028f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402900:	49 83 f8 08          	cmp    r8,0x8
  402904:	75 7a                	jne    402980 <kernels_MultiplyF64+0xf0>
  402906:	49 89 c8             	mov    r8,rcx
  402909:	31 c0                	xor    eax,eax
  40290b:	49 c1 e0 06          	shl    r8,0x6
  40290f:	48 85 c9             	test   rcx,rcx
  402912:	0f 84 f8 00 00 00    	je     402a10 <kernels_MultiplyF64+0x180>
  402918:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40291f:	00 
  402920:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402925:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40292a:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  40292f:	48 83 c0 40          	add    rax,0x40
  402933:	49 39 c0             	cmp    r8,rax
  402936:	75 e8                	jne    402920 <kernels_MultiplyF64+0x90>
  402938:	c3                   	ret
  402939:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402940:	49 89 c8             	mov    r8,rcx
  402943:	31 c0                	xor    eax,eax
  402945:	49 c1 e0 05          	shl    r8,0x5
  402949:	48 85 c9             	test   rcx,rcx
  40294c:	0f 84 ce 00 00 00    	je     402a20 <kernels_MultiplyF64+0x190>
  402952:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402959:	00 00 00 00 
  40295d:	0f 1f 00             	nop    DWORD PTR [rax]
  402960:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402965:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40296a:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  40296f:	48 83 c0 20          	add    rax,0x20
  402973:	49 39 c0             	cmp    r8,rax
  402976:	75 e8                	jne    402960 <kernels_MultiplyF64+0xd0>
  402978:	c3                   	ret
  402979:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402980:	49 c1 e0 03          	shl    r8,0x3
  402984:	31 c0                	xor    eax,eax
  402986:	45 31 c9             	xor    r9d,r9d
  402989:	48 85 c9             	test   rcx,rcx
  40298c:	0f 84 9e 00 00 00    	je     402a30 <kernels_MultiplyF64+0x1a0>
  402992:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402999:	00 00 00 00 
  40299d:	0f 1f 00             	nop    DWORD PTR [rax]
  4029a0:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  4029a5:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  4029aa:	49 ff c1             	inc    r9
  4029ad:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  4029b2:	4c 01 c0             	add    rax,r8
  4029b5:	4c 39 c9             	cmp    rcx,r9
  4029b8:	75 e6                	jne    4029a0 <kernels_MultiplyF64+0x110>
  4029ba:	c3                   	ret
  4029bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4029c0:	31 c0                	xor    eax,eax
  4029c2:	48 85 c9             	test   rcx,rcx
  4029c5:	74 79                	je     402a40 <kernels_MultiplyF64+0x1b0>
  4029c7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4029ce:	00 00 00 00 
  4029d2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4029d9:	00 00 00 00 
  4029dd:	0f 1f 00             	nop    DWORD PTR [rax]
  4029e0:	c5 fb 10 04 c7       	vmovsd xmm0,QWORD PTR [rdi+rax*8]
  4029e5:	c5 fb 59 04 c6       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*8]
  4029ea:	c5 fb 11 04 c2       	vmovsd QWORD PTR [rdx+rax*8],xmm0
  4029ef:	48 ff c0             	inc    rax
  4029f2:	48 39 c1             	cmp    rcx,rax
  4029f5:	75 e9                	jne    4029e0 <kernels_MultiplyF64+0x150>
  4029f7:	c3                   	ret
  4029f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4029ff:	00 
  402a00:	c3                   	ret
  402a01:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a08:	00 00 00 00 
  402a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402a10:	c3                   	ret
  402a11:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a18:	00 00 00 00 
  402a1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402a20:	c3                   	ret
  402a21:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a28:	00 00 00 00 
  402a2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402a30:	c3                   	ret
  402a31:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a38:	00 00 00 00 
  402a3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402a40:	c3                   	ret
  402a41:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a48:	00 00 00 00 
  402a4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402a50 <kernels_ThreeStencilF32>:
  402a50:	48 85 d2             	test   rdx,rdx
  402a53:	0f 84 11 01 00 00    	je     402b6a <kernels_ThreeStencilF32+0x11a>
  402a59:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  402a5f:	48 83 fa 01          	cmp    rdx,0x1
  402a63:	0f 84 01 01 00 00    	je     402b6a <kernels_ThreeStencilF32+0x11a>
  402a69:	4c 8d 42 ff          	lea    r8,[rdx-0x1]
  402a6d:	4c 8d 0c 8d 00 00 00 	lea    r9,[rcx*4+0x0]
  402a74:	00 
  402a75:	4c 89 c0             	mov    rax,r8
  402a78:	49 0f af c1          	imul   rax,r9
  402a7c:	c7 04 06 00 00 00 00 	mov    DWORD PTR [rsi+rax*1],0x0
  402a83:	48 83 f9 04          	cmp    rcx,0x4
  402a87:	0f 84 e3 00 00 00    	je     402b70 <kernels_ThreeStencilF32+0x120>
  402a8d:	0f 87 9d 01 00 00    	ja     402c30 <kernels_ThreeStencilF32+0x1e0>
  402a93:	48 83 f9 01          	cmp    rcx,0x1
  402a97:	0f 84 53 01 00 00    	je     402bf0 <kernels_ThreeStencilF32+0x1a0>
  402a9d:	48 83 f9 02          	cmp    rcx,0x2
  402aa1:	75 4d                	jne    402af0 <kernels_ThreeStencilF32+0xa0>
  402aa3:	49 83 f8 01          	cmp    r8,0x1
  402aa7:	0f 84 03 02 00 00    	je     402cb0 <kernels_ThreeStencilF32+0x260>
  402aad:	c5 fa 10 5f 08       	vmovss xmm3,DWORD PTR [rdi+0x8]
  402ab2:	b8 01 00 00 00       	mov    eax,0x1
  402ab7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  402abe:	00 00 
  402ac0:	c5 fa 59 6c c7 f8    	vmulss xmm5,xmm0,DWORD PTR [rdi+rax*8-0x8]
  402ac6:	c5 f2 59 db          	vmulss xmm3,xmm1,xmm3
  402aca:	48 ff c0             	inc    rax
  402acd:	c5 d2 58 eb          	vaddss xmm5,xmm5,xmm3
  402ad1:	c5 fa 10 1c c7       	vmovss xmm3,DWORD PTR [rdi+rax*8]
  402ad6:	c5 ea 59 e3          	vmulss xmm4,xmm2,xmm3
  402ada:	c5 da 58 e5          	vaddss xmm4,xmm4,xmm5
  402ade:	c5 fa 11 64 c6 f8    	vmovss DWORD PTR [rsi+rax*8-0x8],xmm4
  402ae4:	49 39 c0             	cmp    r8,rax
  402ae7:	75 d7                	jne    402ac0 <kernels_ThreeStencilF32+0x70>
  402ae9:	c3                   	ret
  402aea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402af0:	49 83 f8 01          	cmp    r8,0x1
  402af4:	0f 84 c6 01 00 00    	je     402cc0 <kernels_ThreeStencilF32+0x270>
  402afa:	c4 a1 7a 10 1c 0f    	vmovss xmm3,DWORD PTR [rdi+r9*1]
  402b00:	48 8d 0c cf          	lea    rcx,[rdi+rcx*8]
  402b04:	4c 01 ce             	add    rsi,r9
  402b07:	31 c0                	xor    eax,eax
  402b09:	ba 01 00 00 00       	mov    edx,0x1
  402b0e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b15:	00 00 00 00 
  402b19:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b20:	00 00 00 00 
  402b24:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b2b:	00 00 00 00 
  402b2f:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b36:	00 00 00 00 
  402b3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402b40:	c5 fa 59 2c 07       	vmulss xmm5,xmm0,DWORD PTR [rdi+rax*1]
  402b45:	c5 f2 59 db          	vmulss xmm3,xmm1,xmm3
  402b49:	48 ff c2             	inc    rdx
  402b4c:	c5 d2 58 eb          	vaddss xmm5,xmm5,xmm3
  402b50:	c5 fa 10 1c 01       	vmovss xmm3,DWORD PTR [rcx+rax*1]
  402b55:	c5 ea 59 e3          	vmulss xmm4,xmm2,xmm3
  402b59:	c5 da 58 e5          	vaddss xmm4,xmm4,xmm5
  402b5d:	c5 fa 11 24 06       	vmovss DWORD PTR [rsi+rax*1],xmm4
  402b62:	4c 01 c8             	add    rax,r9
  402b65:	49 39 d0             	cmp    r8,rdx
  402b68:	75 d6                	jne    402b40 <kernels_ThreeStencilF32+0xf0>
  402b6a:	c3                   	ret
  402b6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402b70:	49 83 f8 01          	cmp    r8,0x1
  402b74:	0f 84 76 01 00 00    	je     402cf0 <kernels_ThreeStencilF32+0x2a0>
  402b7a:	c5 fa 10 5f 10       	vmovss xmm3,DWORD PTR [rdi+0x10]
  402b7f:	48 83 ea 02          	sub    rdx,0x2
  402b83:	31 c0                	xor    eax,eax
  402b85:	48 c1 e2 04          	shl    rdx,0x4
  402b89:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b90:	00 00 00 00 
  402b94:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b9b:	00 00 00 00 
  402b9f:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ba6:	00 00 00 00 
  402baa:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bb1:	00 00 00 00 
  402bb5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bbc:	00 00 00 00 
  402bc0:	c5 f2 59 db          	vmulss xmm3,xmm1,xmm3
  402bc4:	c5 fa 59 2c 07       	vmulss xmm5,xmm0,DWORD PTR [rdi+rax*1]
  402bc9:	c5 d2 58 eb          	vaddss xmm5,xmm5,xmm3
  402bcd:	c5 fa 10 5c 07 20    	vmovss xmm3,DWORD PTR [rdi+rax*1+0x20]
  402bd3:	c5 ea 59 e3          	vmulss xmm4,xmm2,xmm3
  402bd7:	c5 da 58 e5          	vaddss xmm4,xmm4,xmm5
  402bdb:	c5 fa 11 64 06 10    	vmovss DWORD PTR [rsi+rax*1+0x10],xmm4
  402be1:	48 83 c0 10          	add    rax,0x10
  402be5:	48 39 c2             	cmp    rdx,rax
  402be8:	75 d6                	jne    402bc0 <kernels_ThreeStencilF32+0x170>
  402bea:	c3                   	ret
  402beb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402bf0:	49 83 f8 01          	cmp    r8,0x1
  402bf4:	0f 84 e6 00 00 00    	je     402ce0 <kernels_ThreeStencilF32+0x290>
  402bfa:	c5 fa 10 5f 04       	vmovss xmm3,DWORD PTR [rdi+0x4]
  402bff:	90                   	nop
  402c00:	c5 fa 59 6c 8f fc    	vmulss xmm5,xmm0,DWORD PTR [rdi+rcx*4-0x4]
  402c06:	c5 f2 59 db          	vmulss xmm3,xmm1,xmm3
  402c0a:	48 ff c1             	inc    rcx
  402c0d:	c5 d2 58 eb          	vaddss xmm5,xmm5,xmm3
  402c11:	c5 fa 10 1c 8f       	vmovss xmm3,DWORD PTR [rdi+rcx*4]
  402c16:	c5 ea 59 e3          	vmulss xmm4,xmm2,xmm3
  402c1a:	c5 da 58 e5          	vaddss xmm4,xmm4,xmm5
  402c1e:	c5 fa 11 64 8e fc    	vmovss DWORD PTR [rsi+rcx*4-0x4],xmm4
  402c24:	49 39 c8             	cmp    r8,rcx
  402c27:	75 d7                	jne    402c00 <kernels_ThreeStencilF32+0x1b0>
  402c29:	c3                   	ret
  402c2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402c30:	48 83 f9 08          	cmp    rcx,0x8
  402c34:	0f 85 b6 fe ff ff    	jne    402af0 <kernels_ThreeStencilF32+0xa0>
  402c3a:	49 83 f8 01          	cmp    r8,0x1
  402c3e:	0f 84 8c 00 00 00    	je     402cd0 <kernels_ThreeStencilF32+0x280>
  402c44:	c5 fa 10 5f 20       	vmovss xmm3,DWORD PTR [rdi+0x20]
  402c49:	48 83 ea 02          	sub    rdx,0x2
  402c4d:	31 c0                	xor    eax,eax
  402c4f:	48 c1 e2 05          	shl    rdx,0x5
  402c53:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c5a:	00 00 00 00 
  402c5e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c65:	00 00 00 00 
  402c69:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c70:	00 00 00 00 
  402c74:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c7b:	00 00 00 00 
  402c7f:	90                   	nop
  402c80:	c5 f2 59 db          	vmulss xmm3,xmm1,xmm3
  402c84:	c5 fa 59 2c 07       	vmulss xmm5,xmm0,DWORD PTR [rdi+rax*1]
  402c89:	c5 d2 58 eb          	vaddss xmm5,xmm5,xmm3
  402c8d:	c5 fa 10 5c 07 40    	vmovss xmm3,DWORD PTR [rdi+rax*1+0x40]
  402c93:	c5 ea 59 e3          	vmulss xmm4,xmm2,xmm3
  402c97:	c5 da 58 e5          	vaddss xmm4,xmm4,xmm5
  402c9b:	c5 fa 11 64 06 20    	vmovss DWORD PTR [rsi+rax*1+0x20],xmm4
  402ca1:	48 83 c0 20          	add    rax,0x20
  402ca5:	48 39 c2             	cmp    rdx,rax
  402ca8:	75 d6                	jne    402c80 <kernels_ThreeStencilF32+0x230>
  402caa:	c3                   	ret
  402cab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402cb0:	c3                   	ret
  402cb1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402cb8:	00 00 00 00 
  402cbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402cc0:	c3                   	ret
  402cc1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402cc8:	00 00 00 00 
  402ccc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402cd0:	c3                   	ret
  402cd1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402cd8:	00 00 00 00 
  402cdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402ce0:	c3                   	ret
  402ce1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ce8:	00 00 00 00 
  402cec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402cf0:	c3                   	ret
  402cf1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402cf8:	00 00 00 00 
  402cfc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402d00 <kernels_ThreeStencilF64>:
  402d00:	48 85 d2             	test   rdx,rdx
  402d03:	0f 84 21 01 00 00    	je     402e2a <kernels_ThreeStencilF64+0x12a>
  402d09:	48 c7 06 00 00 00 00 	mov    QWORD PTR [rsi],0x0
  402d10:	48 83 fa 01          	cmp    rdx,0x1
  402d14:	0f 84 10 01 00 00    	je     402e2a <kernels_ThreeStencilF64+0x12a>
  402d1a:	4c 8d 42 ff          	lea    r8,[rdx-0x1]
  402d1e:	4c 8d 0c cd 00 00 00 	lea    r9,[rcx*8+0x0]
  402d25:	00 
  402d26:	4c 89 c0             	mov    rax,r8
  402d29:	49 0f af c1          	imul   rax,r9
  402d2d:	48 c7 04 06 00 00 00 	mov    QWORD PTR [rsi+rax*1],0x0
  402d34:	00 
  402d35:	48 83 f9 04          	cmp    rcx,0x4
  402d39:	0f 84 f1 00 00 00    	je     402e30 <kernels_ThreeStencilF64+0x130>
  402d3f:	0f 87 ab 01 00 00    	ja     402ef0 <kernels_ThreeStencilF64+0x1f0>
  402d45:	48 83 f9 01          	cmp    rcx,0x1
  402d49:	0f 84 61 01 00 00    	je     402eb0 <kernels_ThreeStencilF64+0x1b0>
  402d4f:	48 83 f9 02          	cmp    rcx,0x2
  402d53:	75 5b                	jne    402db0 <kernels_ThreeStencilF64+0xb0>
  402d55:	49 83 f8 01          	cmp    r8,0x1
  402d59:	0f 84 11 02 00 00    	je     402f70 <kernels_ThreeStencilF64+0x270>
  402d5f:	c5 fb 10 5f 10       	vmovsd xmm3,QWORD PTR [rdi+0x10]
  402d64:	48 83 ea 02          	sub    rdx,0x2
  402d68:	31 c0                	xor    eax,eax
  402d6a:	48 c1 e2 04          	shl    rdx,0x4
  402d6e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402d75:	00 00 00 00 
  402d79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402d80:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  402d84:	c5 fb 59 2c 07       	vmulsd xmm5,xmm0,QWORD PTR [rdi+rax*1]
  402d89:	c5 d3 58 eb          	vaddsd xmm5,xmm5,xmm3
  402d8d:	c5 fb 10 5c 07 20    	vmovsd xmm3,QWORD PTR [rdi+rax*1+0x20]
  402d93:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  402d97:	c5 db 58 e5          	vaddsd xmm4,xmm4,xmm5
  402d9b:	c5 fb 11 64 06 10    	vmovsd QWORD PTR [rsi+rax*1+0x10],xmm4
  402da1:	48 83 c0 10          	add    rax,0x10
  402da5:	48 39 c2             	cmp    rdx,rax
  402da8:	75 d6                	jne    402d80 <kernels_ThreeStencilF64+0x80>
  402daa:	c3                   	ret
  402dab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402db0:	49 83 f8 01          	cmp    r8,0x1
  402db4:	0f 84 c6 01 00 00    	je     402f80 <kernels_ThreeStencilF64+0x280>
  402dba:	c4 a1 7b 10 1c 0f    	vmovsd xmm3,QWORD PTR [rdi+r9*1]
  402dc0:	4c 01 ce             	add    rsi,r9
  402dc3:	31 c0                	xor    eax,eax
  402dc5:	ba 01 00 00 00       	mov    edx,0x1
  402dca:	48 c1 e1 04          	shl    rcx,0x4
  402dce:	48 01 f9             	add    rcx,rdi
  402dd1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402dd8:	00 00 00 00 
  402ddc:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402de3:	00 00 00 00 
  402de7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402dee:	00 00 00 00 
  402df2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402df9:	00 00 00 00 
  402dfd:	0f 1f 00             	nop    DWORD PTR [rax]
  402e00:	c5 fb 59 2c 07       	vmulsd xmm5,xmm0,QWORD PTR [rdi+rax*1]
  402e05:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  402e09:	48 ff c2             	inc    rdx
  402e0c:	c5 d3 58 eb          	vaddsd xmm5,xmm5,xmm3
  402e10:	c5 fb 10 1c 01       	vmovsd xmm3,QWORD PTR [rcx+rax*1]
  402e15:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  402e19:	c5 db 58 e5          	vaddsd xmm4,xmm4,xmm5
  402e1d:	c5 fb 11 24 06       	vmovsd QWORD PTR [rsi+rax*1],xmm4
  402e22:	4c 01 c8             	add    rax,r9
  402e25:	49 39 d0             	cmp    r8,rdx
  402e28:	75 d6                	jne    402e00 <kernels_ThreeStencilF64+0x100>
  402e2a:	c3                   	ret
  402e2b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402e30:	49 83 f8 01          	cmp    r8,0x1
  402e34:	0f 84 76 01 00 00    	je     402fb0 <kernels_ThreeStencilF64+0x2b0>
  402e3a:	c5 fb 10 5f 20       	vmovsd xmm3,QWORD PTR [rdi+0x20]
  402e3f:	48 83 ea 02          	sub    rdx,0x2
  402e43:	31 c0                	xor    eax,eax
  402e45:	48 c1 e2 05          	shl    rdx,0x5
  402e49:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e50:	00 00 00 00 
  402e54:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e5b:	00 00 00 00 
  402e5f:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e66:	00 00 00 00 
  402e6a:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e71:	00 00 00 00 
  402e75:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e7c:	00 00 00 00 
  402e80:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  402e84:	c5 fb 59 2c 07       	vmulsd xmm5,xmm0,QWORD PTR [rdi+rax*1]
  402e89:	c5 d3 58 eb          	vaddsd xmm5,xmm5,xmm3
  402e8d:	c5 fb 10 5c 07 40    	vmovsd xmm3,QWORD PTR [rdi+rax*1+0x40]
  402e93:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  402e97:	c5 db 58 e5          	vaddsd xmm4,xmm4,xmm5
  402e9b:	c5 fb 11 64 06 20    	vmovsd QWORD PTR [rsi+rax*1+0x20],xmm4
  402ea1:	48 83 c0 20          	add    rax,0x20
  402ea5:	48 39 c2             	cmp    rdx,rax
  402ea8:	75 d6                	jne    402e80 <kernels_ThreeStencilF64+0x180>
  402eaa:	c3                   	ret
  402eab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402eb0:	49 83 f8 01          	cmp    r8,0x1
  402eb4:	0f 84 e6 00 00 00    	je     402fa0 <kernels_ThreeStencilF64+0x2a0>
  402eba:	c5 fb 10 5f 08       	vmovsd xmm3,QWORD PTR [rdi+0x8]
  402ebf:	90                   	nop
  402ec0:	c5 fb 59 6c cf f8    	vmulsd xmm5,xmm0,QWORD PTR [rdi+rcx*8-0x8]
  402ec6:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  402eca:	48 ff c1             	inc    rcx
  402ecd:	c5 d3 58 eb          	vaddsd xmm5,xmm5,xmm3
  402ed1:	c5 fb 10 1c cf       	vmovsd xmm3,QWORD PTR [rdi+rcx*8]
  402ed6:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  402eda:	c5 db 58 e5          	vaddsd xmm4,xmm4,xmm5
  402ede:	c5 fb 11 64 ce f8    	vmovsd QWORD PTR [rsi+rcx*8-0x8],xmm4
  402ee4:	49 39 c8             	cmp    r8,rcx
  402ee7:	75 d7                	jne    402ec0 <kernels_ThreeStencilF64+0x1c0>
  402ee9:	c3                   	ret
  402eea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402ef0:	48 83 f9 08          	cmp    rcx,0x8
  402ef4:	0f 85 b6 fe ff ff    	jne    402db0 <kernels_ThreeStencilF64+0xb0>
  402efa:	49 83 f8 01          	cmp    r8,0x1
  402efe:	0f 84 8c 00 00 00    	je     402f90 <kernels_ThreeStencilF64+0x290>
  402f04:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  402f09:	48 83 ea 02          	sub    rdx,0x2
  402f0d:	31 c0                	xor    eax,eax
  402f0f:	48 c1 e2 06          	shl    rdx,0x6
  402f13:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f1a:	00 00 00 00 
  402f1e:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f25:	00 00 00 00 
  402f29:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f30:	00 00 00 00 
  402f34:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f3b:	00 00 00 00 
  402f3f:	90                   	nop
  402f40:	c5 f3 59 db          	vmulsd xmm3,xmm1,xmm3
  402f44:	c5 fb 59 2c 07       	vmulsd xmm5,xmm0,QWORD PTR [rdi+rax*1]
  402f49:	c5 d3 58 eb          	vaddsd xmm5,xmm5,xmm3
  402f4d:	c5 fb 10 9c 07 80 00 	vmovsd xmm3,QWORD PTR [rdi+rax*1+0x80]
  402f54:	00 00 
  402f56:	c5 eb 59 e3          	vmulsd xmm4,xmm2,xmm3
  402f5a:	c5 db 58 e5          	vaddsd xmm4,xmm4,xmm5
  402f5e:	c5 fb 11 64 06 40    	vmovsd QWORD PTR [rsi+rax*1+0x40],xmm4
  402f64:	48 83 c0 40          	add    rax,0x40
  402f68:	48 39 c2             	cmp    rdx,rax
  402f6b:	75 d3                	jne    402f40 <kernels_ThreeStencilF64+0x240>
  402f6d:	c3                   	ret
  402f6e:	66 90                	xchg   ax,ax
  402f70:	c3                   	ret
  402f71:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f78:	00 00 00 00 
  402f7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402f80:	c3                   	ret
  402f81:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f88:	00 00 00 00 
  402f8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402f90:	c3                   	ret
  402f91:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f98:	00 00 00 00 
  402f9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402fa0:	c3                   	ret
  402fa1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402fa8:	00 00 00 00 
  402fac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402fb0:	c3                   	ret
  402fb1:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  402fb8:	00 00 00 
  402fbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000402fc0 <perf_NowNSec.part.0>:
  402fc0:	48 83 ec 08          	sub    rsp,0x8
  402fc4:	b9 18 45 40 00       	mov    ecx,0x404518
  402fc9:	ba 0a 00 00 00       	mov    edx,0xa
  402fce:	be d9 40 40 00       	mov    esi,0x4040d9
  402fd3:	bf ef 40 40 00       	mov    edi,0x4040ef
  402fd8:	e8 c3 e0 ff ff       	call   4010a0 <__assert_fail@plt>
  402fdd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000402fe0 <perf_StartTimer>:
  402fe0:	53                   	push   rbx
  402fe1:	48 89 fb             	mov    rbx,rdi
  402fe4:	bf 01 00 00 00       	mov    edi,0x1
  402fe9:	48 83 ec 10          	sub    rsp,0x10
  402fed:	48 89 e6             	mov    rsi,rsp
  402ff0:	e8 7b e0 ff ff       	call   401070 <clock_gettime@plt>
  402ff5:	85 c0                	test   eax,eax
  402ff7:	75 16                	jne    40300f <perf_StartTimer+0x2f>
  402ff9:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  403000:	3b 
  403001:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  403006:	48 89 03             	mov    QWORD PTR [rbx],rax
  403009:	48 83 c4 10          	add    rsp,0x10
  40300d:	5b                   	pop    rbx
  40300e:	c3                   	ret
  40300f:	e8 ac ff ff ff       	call   402fc0 <perf_NowNSec.part.0>
  403014:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40301b:	00 00 00 00 
  40301f:	90                   	nop

0000000000403020 <perf_EndTimer>:
  403020:	53                   	push   rbx
  403021:	48 89 fb             	mov    rbx,rdi
  403024:	bf 01 00 00 00       	mov    edi,0x1
  403029:	48 83 ec 10          	sub    rsp,0x10
  40302d:	48 89 e6             	mov    rsi,rsp
  403030:	e8 3b e0 ff ff       	call   401070 <clock_gettime@plt>
  403035:	85 c0                	test   eax,eax
  403037:	75 17                	jne    403050 <perf_EndTimer+0x30>
  403039:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  403040:	3b 
  403041:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  403046:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  40304a:	48 83 c4 10          	add    rsp,0x10
  40304e:	5b                   	pop    rbx
  40304f:	c3                   	ret
  403050:	e8 6b ff ff ff       	call   402fc0 <perf_NowNSec.part.0>
  403055:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40305c:	00 00 00 00 

0000000000403060 <perf_ComputeNSecDelta>:
  403060:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  403064:	48 2b 07             	sub    rax,QWORD PTR [rdi]
  403067:	c3                   	ret

Disassembly of section .fini:

0000000000403068 <_fini>:
  403068:	f3 0f 1e fa          	endbr64
  40306c:	48 83 ec 08          	sub    rsp,0x8
  403070:	48 83 c4 08          	add    rsp,0x8
  403074:	c3                   	ret
