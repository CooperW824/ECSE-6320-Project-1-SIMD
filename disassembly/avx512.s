
./build/experiments/avx512:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 d1 3f 00 00 	mov    rax,QWORD PTR [rip+0x3fd1]        # 404fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__isoc23_strtoul@plt-0x10>:
  401020:	ff 35 ca 3f 00 00    	push   QWORD PTR [rip+0x3fca]        # 404ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 3f 00 00    	jmp    QWORD PTR [rip+0x3fcc]        # 404ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <__isoc23_strtoul@plt>:
  401030:	ff 25 ca 3f 00 00    	jmp    QWORD PTR [rip+0x3fca]        # 405000 <__isoc23_strtoul@GLIBC_2.38>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <free@plt>:
  401040:	ff 25 c2 3f 00 00    	jmp    QWORD PTR [rip+0x3fc2]        # 405008 <free@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <fread@plt>:
  401050:	ff 25 ba 3f 00 00    	jmp    QWORD PTR [rip+0x3fba]        # 405010 <fread@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strtod@plt>:
  401060:	ff 25 b2 3f 00 00    	jmp    QWORD PTR [rip+0x3fb2]        # 405018 <strtod@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <clock_gettime@plt>:
  401070:	ff 25 aa 3f 00 00    	jmp    QWORD PTR [rip+0x3faa]        # 405020 <clock_gettime@GLIBC_2.17>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <fclose@plt>:
  401080:	ff 25 a2 3f 00 00    	jmp    QWORD PTR [rip+0x3fa2]        # 405028 <fclose@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <printf@plt>:
  401090:	ff 25 9a 3f 00 00    	jmp    QWORD PTR [rip+0x3f9a]        # 405030 <printf@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <__assert_fail@plt>:
  4010a0:	ff 25 92 3f 00 00    	jmp    QWORD PTR [rip+0x3f92]        # 405038 <__assert_fail@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <strtof@plt>:
  4010b0:	ff 25 8a 3f 00 00    	jmp    QWORD PTR [rip+0x3f8a]        # 405040 <strtof@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 82 3f 00 00    	jmp    QWORD PTR [rip+0x3f82]        # 405048 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <strcmp@plt>:
  4010d0:	ff 25 7a 3f 00 00    	jmp    QWORD PTR [rip+0x3f7a]        # 405050 <strcmp@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <fprintf@plt>:
  4010e0:	ff 25 72 3f 00 00    	jmp    QWORD PTR [rip+0x3f72]        # 405058 <fprintf@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <memcpy@plt>:
  4010f0:	ff 25 6a 3f 00 00    	jmp    QWORD PTR [rip+0x3f6a]        # 405060 <memcpy@GLIBC_2.14>
  4010f6:	68 0c 00 00 00       	push   0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <__isoc23_strtol@plt>:
  401100:	ff 25 62 3f 00 00    	jmp    QWORD PTR [rip+0x3f62]        # 405068 <__isoc23_strtol@GLIBC_2.38>
  401106:	68 0d 00 00 00       	push   0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <malloc@plt>:
  401110:	ff 25 5a 3f 00 00    	jmp    QWORD PTR [rip+0x3f5a]        # 405070 <malloc@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <fopen@plt>:
  401120:	ff 25 52 3f 00 00    	jmp    QWORD PTR [rip+0x3f52]        # 405078 <fopen@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <perror@plt>:
  401130:	ff 25 4a 3f 00 00    	jmp    QWORD PTR [rip+0x3f4a]        # 405080 <perror@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <sprintf@plt>:
  401140:	ff 25 42 3f 00 00    	jmp    QWORD PTR [rip+0x3f42]        # 405088 <sprintf@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <fwrite@plt>:
  401150:	ff 25 3a 3f 00 00    	jmp    QWORD PTR [rip+0x3f3a]        # 405090 <fwrite@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401180 <run_experiments_as_floats.cold>:
  401180:	bf 78 31 40 00       	mov    edi,0x403178
  401185:	e8 a6 ff ff ff       	call   401130 <perror@plt>
  40118a:	b8 01 00 00 00       	mov    eax,0x1
  40118f:	e9 49 0d 00 00       	jmp    401edd <run_experiments_as_floats+0x46d>
  401194:	bf f8 31 40 00       	mov    edi,0x4031f8
  401199:	e8 92 ff ff ff       	call   401130 <perror@plt>
  40119e:	eb ea                	jmp    40118a <run_experiments_as_floats.cold+0xa>
  4011a0:	bf c8 31 40 00       	mov    edi,0x4031c8
  4011a5:	e8 86 ff ff ff       	call   401130 <perror@plt>
  4011aa:	eb de                	jmp    40118a <run_experiments_as_floats.cold+0xa>

00000000004011ac <main.cold>:
  4011ac:	bf 60 34 40 00       	mov    edi,0x403460
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
  4011e3:	bf 7f 30 40 00       	mov    edi,0x40307f
  4011e8:	e8 43 ff ff ff       	call   401130 <perror@plt>
  4011ed:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4011f4:	00 
  4011f5:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4011fc:	00 
  4011fd:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401204:	00 
  401205:	e9 d5 05 00 00       	jmp    4017df <main+0x3ff>
  40120a:	bf ab 30 40 00       	mov    edi,0x4030ab
  40120f:	e8 1c ff ff ff       	call   401130 <perror@plt>
  401214:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  40121b:	00 
  40121c:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401223:	00 
  401224:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40122b:	00 
  40122c:	e9 ae 05 00 00       	jmp    4017df <main+0x3ff>
  401231:	bf 98 34 40 00       	mov    edi,0x403498
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
  401268:	bf d0 34 40 00       	mov    edi,0x4034d0
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
  40129f:	bf 80 33 40 00       	mov    edi,0x403380
  4012a4:	e8 87 fe ff ff       	call   401130 <perror@plt>
  4012a9:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012b0:	00 
  4012b1:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012b8:	00 
  4012b9:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012c0:	00 
  4012c1:	e9 19 05 00 00       	jmp    4017df <main+0x3ff>
  4012c6:	bf a8 33 40 00       	mov    edi,0x4033a8
  4012cb:	e8 60 fe ff ff       	call   401130 <perror@plt>
  4012d0:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012d7:	00 
  4012d8:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012df:	00 
  4012e0:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012e7:	00 
  4012e8:	e9 f2 04 00 00       	jmp    4017df <main+0x3ff>
  4012ed:	bf 58 33 40 00       	mov    edi,0x403358
  4012f2:	e8 39 fe ff ff       	call   401130 <perror@plt>
  4012f7:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012fe:	00 
  4012ff:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401306:	00 
  401307:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40130e:	00 
  40130f:	e9 cb 04 00 00       	jmp    4017df <main+0x3ff>
  401314:	bf 95 30 40 00       	mov    edi,0x403095
  401319:	e8 12 fe ff ff       	call   401130 <perror@plt>
  40131e:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401325:	00 
  401326:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  40132d:	00 
  40132e:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401335:	00 
  401336:	e9 a4 04 00 00       	jmp    4017df <main+0x3ff>
  40133b:	bf d0 33 40 00       	mov    edi,0x4033d0
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
  40136a:	bf 00 34 40 00       	mov    edi,0x403400
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
  4013a1:	bf 30 34 40 00       	mov    edi,0x403430
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
  401429:	be 7d 30 40 00       	mov    esi,0x40307d
  40142e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401433:	e8 e8 fc ff ff       	call   401120 <fopen@plt>
  401438:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40143d:	48 85 c0             	test   rax,rax
  401440:	0f 84 9d fd ff ff    	je     4011e3 <main.cold+0x37>
  401446:	be 7d 30 40 00       	mov    esi,0x40307d
  40144b:	4c 89 e7             	mov    rdi,r12
  40144e:	e8 cd fc ff ff       	call   401120 <fopen@plt>
  401453:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  401458:	48 85 c0             	test   rax,rax
  40145b:	0f 84 b3 fe ff ff    	je     401314 <main.cold+0x168>
  401461:	be 7d 30 40 00       	mov    esi,0x40307d
  401466:	48 89 ef             	mov    rdi,rbp
  401469:	e8 b2 fc ff ff       	call   401120 <fopen@plt>
  40146e:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401473:	48 85 c0             	test   rax,rax
  401476:	0f 84 8e fd ff ff    	je     40120a <main.cold+0x5e>
  40147c:	48 8b 6b 28          	mov    rbp,QWORD PTR [rbx+0x28]
  401480:	be c1 30 40 00       	mov    esi,0x4030c1
  401485:	48 89 ef             	mov    rdi,rbp
  401488:	e8 43 fc ff ff       	call   4010d0 <strcmp@plt>
  40148d:	85 c0                	test   eax,eax
  40148f:	0f 84 0f 03 00 00    	je     4017a4 <main+0x3c4>
  401495:	be c3 30 40 00       	mov    esi,0x4030c3
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
  4017ae:	48 8b 0d 0b 39 00 00 	mov    rcx,QWORD PTR [rip+0x390b]        # 4050c0 <stderr@GLIBC_2.2.5>
  4017b5:	ba 1d 00 00 00       	mov    edx,0x1d
  4017ba:	be 01 00 00 00       	mov    esi,0x1
  4017bf:	bf 5f 30 40 00       	mov    edi,0x40305f
  4017c4:	e8 87 f9 ff ff       	call   401150 <fwrite@plt>
  4017c9:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  4017cc:	48 8b 3d ed 38 00 00 	mov    rdi,QWORD PTR [rip+0x38ed]        # 4050c0 <stderr@GLIBC_2.2.5>
  4017d3:	be 50 32 40 00       	mov    esi,0x403250
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
  40182e:	48 8b 0d 8b 38 00 00 	mov    rcx,QWORD PTR [rip+0x388b]        # 4050c0 <stderr@GLIBC_2.2.5>
  401835:	ba 13 00 00 00       	mov    edx,0x13
  40183a:	be 01 00 00 00       	mov    esi,0x1
  40183f:	bf c5 30 40 00       	mov    edi,0x4030c5
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
  40189f:	ff 15 33 37 00 00    	call   QWORD PTR [rip+0x3733]        # 404fd8 <__libc_start_main@GLIBC_2.34>
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
  4018c0:	b8 a8 50 40 00       	mov    eax,0x4050a8
  4018c5:	48 3d a8 50 40 00    	cmp    rax,0x4050a8
  4018cb:	74 13                	je     4018e0 <deregister_tm_clones+0x20>
  4018cd:	b8 00 00 00 00       	mov    eax,0x0
  4018d2:	48 85 c0             	test   rax,rax
  4018d5:	74 09                	je     4018e0 <deregister_tm_clones+0x20>
  4018d7:	bf a8 50 40 00       	mov    edi,0x4050a8
  4018dc:	ff e0                	jmp    rax
  4018de:	66 90                	xchg   ax,ax
  4018e0:	c3                   	ret
  4018e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4018e8:	00 00 00 00 
  4018ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004018f0 <register_tm_clones>:
  4018f0:	be a8 50 40 00       	mov    esi,0x4050a8
  4018f5:	48 81 ee a8 50 40 00 	sub    rsi,0x4050a8
  4018fc:	48 89 f0             	mov    rax,rsi
  4018ff:	48 c1 ee 3f          	shr    rsi,0x3f
  401903:	48 c1 f8 03          	sar    rax,0x3
  401907:	48 01 c6             	add    rsi,rax
  40190a:	48 d1 fe             	sar    rsi,1
  40190d:	74 11                	je     401920 <register_tm_clones+0x30>
  40190f:	b8 00 00 00 00       	mov    eax,0x0
  401914:	48 85 c0             	test   rax,rax
  401917:	74 07                	je     401920 <register_tm_clones+0x30>
  401919:	bf a8 50 40 00       	mov    edi,0x4050a8
  40191e:	ff e0                	jmp    rax
  401920:	c3                   	ret
  401921:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401928:	00 00 00 00 
  40192c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401930 <__do_global_dtors_aux>:
  401930:	f3 0f 1e fa          	endbr64
  401934:	80 3d 8d 37 00 00 00 	cmp    BYTE PTR [rip+0x378d],0x0        # 4050c8 <completed.0>
  40193b:	75 13                	jne    401950 <__do_global_dtors_aux+0x20>
  40193d:	55                   	push   rbp
  40193e:	48 89 e5             	mov    rbp,rsp
  401941:	e8 7a ff ff ff       	call   4018c0 <deregister_tm_clones>
  401946:	c6 05 7b 37 00 00 01 	mov    BYTE PTR [rip+0x377b],0x1        # 4050c8 <completed.0>
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
  401a56:	b9 60 35 40 00       	mov    ecx,0x403560
  401a5b:	ba 05 01 00 00       	mov    edx,0x105
  401a60:	be 04 30 40 00       	mov    esi,0x403004
  401a65:	bf 10 31 40 00       	mov    edi,0x403110
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
  401aba:	e8 61 14 00 00       	call   402f20 <perf_StartTimer>
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
  401aee:	e8 6d 14 00 00       	call   402f60 <perf_EndTimer>
  401af3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401afa:	00 
  401afb:	e8 a0 14 00 00       	call   402fa0 <perf_ComputeNSecDelta>
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
  401b27:	e8 f4 13 00 00       	call   402f20 <perf_StartTimer>
  401b2c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401b31:	4d 89 f0             	mov    r8,r14
  401b34:	4c 89 e9             	mov    rcx,r13
  401b37:	48 89 ea             	mov    rdx,rbp
  401b3a:	4c 89 e6             	mov    rsi,r12
  401b3d:	e8 3e 08 00 00       	call   402380 <kernels_SaxpyF32>
  401b42:	48 89 df             	mov    rdi,rbx
  401b45:	e8 16 14 00 00       	call   402f60 <perf_EndTimer>
  401b4a:	48 89 df             	mov    rdi,rbx
  401b4d:	e8 4e 14 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  401b52:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401b56:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
  401b5d:	00 
  401b5e:	49 39 c7             	cmp    r15,rax
  401b61:	75 bd                	jne    401b20 <run_experiments_as_floats+0xb0>
  401b63:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  401b68:	e8 13 fe ff ff       	call   401980 <sort_timings>
  401b6d:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401b74:	00 
  401b75:	e8 a6 13 00 00       	call   402f20 <perf_StartTimer>
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
  401ba1:	e8 6a 0b 00 00       	call   402710 <kernels_MultiplyF32>
  401ba6:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bad:	00 
  401bae:	e8 ad 13 00 00       	call   402f60 <perf_EndTimer>
  401bb3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bba:	00 
  401bbb:	e8 e0 13 00 00       	call   402fa0 <perf_ComputeNSecDelta>
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
  401be7:	e8 34 13 00 00       	call   402f20 <perf_StartTimer>
  401bec:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401bf1:	4d 89 f0             	mov    r8,r14
  401bf4:	4c 89 e9             	mov    rcx,r13
  401bf7:	48 89 ea             	mov    rdx,rbp
  401bfa:	4c 89 e6             	mov    rsi,r12
  401bfd:	e8 0e 0b 00 00       	call   402710 <kernels_MultiplyF32>
  401c02:	48 89 df             	mov    rdi,rbx
  401c05:	e8 56 13 00 00       	call   402f60 <perf_EndTimer>
  401c0a:	48 89 df             	mov    rdi,rbx
  401c0d:	e8 8e 13 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  401c12:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401c16:	48 8d 84 24 20 02 00 	lea    rax,[rsp+0x220]
  401c1d:	00 
  401c1e:	49 39 c7             	cmp    r15,rax
  401c21:	75 bd                	jne    401be0 <run_experiments_as_floats+0x170>
  401c23:	48 8d bc 24 30 01 00 	lea    rdi,[rsp+0x130]
  401c2a:	00 
  401c2b:	e8 50 fd ff ff       	call   401980 <sort_timings>
  401c30:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c35:	e8 e6 12 00 00       	call   402f20 <perf_StartTimer>
  401c3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401c40:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401c46:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401c4c:	4c 89 f1             	mov    rcx,r14
  401c4f:	4c 89 ea             	mov    rdx,r13
  401c52:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401c58:	48 89 ee             	mov    rsi,rbp
  401c5b:	4c 89 e7             	mov    rdi,r12
  401c5e:	e8 9d 0d 00 00       	call   402a00 <kernels_ThreeStencilF32>
  401c63:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c68:	e8 f3 12 00 00       	call   402f60 <perf_EndTimer>
  401c6d:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c72:	e8 29 13 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  401c77:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401c7d:	76 c1                	jbe    401c40 <run_experiments_as_floats+0x1d0>
  401c7f:	4c 8d bc 24 20 02 00 	lea    r15,[rsp+0x220]
  401c86:	00 
  401c87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401c8e:	00 00 
  401c90:	48 89 df             	mov    rdi,rbx
  401c93:	49 83 c7 08          	add    r15,0x8
  401c97:	e8 84 12 00 00       	call   402f20 <perf_StartTimer>
  401c9c:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401ca2:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401ca8:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401cae:	4c 89 f1             	mov    rcx,r14
  401cb1:	4c 89 ea             	mov    rdx,r13
  401cb4:	48 89 ee             	mov    rsi,rbp
  401cb7:	4c 89 e7             	mov    rdi,r12
  401cba:	e8 41 0d 00 00       	call   402a00 <kernels_ThreeStencilF32>
  401cbf:	48 89 df             	mov    rdi,rbx
  401cc2:	e8 99 12 00 00       	call   402f60 <perf_EndTimer>
  401cc7:	48 89 df             	mov    rdi,rbx
  401cca:	e8 d1 12 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  401ccf:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401cd3:	49 39 df             	cmp    r15,rbx
  401cd6:	75 b8                	jne    401c90 <run_experiments_as_floats+0x220>
  401cd8:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401cdf:	00 
  401ce0:	e8 9b fc ff ff       	call   401980 <sort_timings>
  401ce5:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401cec:	00 
  401ced:	be 1a 30 40 00       	mov    esi,0x40301a
  401cf2:	4c 89 ff             	mov    rdi,r15
  401cf5:	31 c0                	xor    eax,eax
  401cf7:	e8 44 f4 ff ff       	call   401140 <sprintf@plt>
  401cfc:	be 34 30 40 00       	mov    esi,0x403034
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
  401d63:	be a0 31 40 00       	mov    esi,0x4031a0
  401d68:	4c 89 ff             	mov    rdi,r15
  401d6b:	31 c0                	xor    eax,eax
  401d6d:	e8 ce f3 ff ff       	call   401140 <sprintf@plt>
  401d72:	be 34 30 40 00       	mov    esi,0x403034
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
  401d9c:	e8 6f 09 00 00       	call   402710 <kernels_MultiplyF32>
  401da1:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401da6:	48 89 d9             	mov    rcx,rbx
  401da9:	ba 04 00 00 00       	mov    edx,0x4
  401dae:	48 89 ef             	mov    rdi,rbp
  401db1:	e8 9a f3 ff ff       	call   401150 <fwrite@plt>
  401db6:	48 89 df             	mov    rdi,rbx
  401db9:	e8 c2 f2 ff ff       	call   401080 <fclose@plt>
  401dbe:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401dc5:	00 
  401dc6:	be 36 30 40 00       	mov    esi,0x403036
  401dcb:	4c 89 ff             	mov    rdi,r15
  401dce:	31 c0                	xor    eax,eax
  401dd0:	e8 6b f3 ff ff       	call   401140 <sprintf@plt>
  401dd5:	be 34 30 40 00       	mov    esi,0x403034
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
  401e0c:	e8 ef 0b 00 00       	call   402a00 <kernels_ThreeStencilF32>
  401e11:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401e16:	48 89 d9             	mov    rcx,rbx
  401e19:	ba 04 00 00 00       	mov    edx,0x4
  401e1e:	48 89 ef             	mov    rdi,rbp
  401e21:	e8 2a f3 ff ff       	call   401150 <fwrite@plt>
  401e26:	48 89 df             	mov    rdi,rbx
  401e29:	e8 52 f2 ff ff       	call   401080 <fclose@plt>
  401e2e:	c5 7b 10 05 42 17 00 	vmovsd xmm8,QWORD PTR [rip+0x1742]        # 403578 <__PRETTY_FUNCTION__.0+0x18>
  401e35:	00 
  401e36:	c5 fb 10 3d 42 17 00 	vmovsd xmm7,QWORD PTR [rip+0x1742]        # 403580 <__PRETTY_FUNCTION__.0+0x20>
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
  401ea7:	41 b8 52 30 40 00    	mov    r8d,0x403052
  401ead:	8b 74 24 24          	mov    esi,DWORD PTR [rsp+0x24]
  401eb1:	bf 20 32 40 00       	mov    edi,0x403220
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
  401f3a:	e8 e1 0f 00 00       	call   402f20 <perf_StartTimer>
  401f3f:	44 0f b6 c3          	movzx  r8d,bl
  401f43:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  401f48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401f4f:	00 
  401f50:	4c 89 e9             	mov    rcx,r13
  401f53:	48 89 ea             	mov    rdx,rbp
  401f56:	4c 89 e6             	mov    rsi,r12
  401f59:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  401f5e:	48 89 df             	mov    rdi,rbx
  401f61:	e8 ea 05 00 00       	call   402550 <kernels_SaxpyF64>
  401f66:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f6d:	00 
  401f6e:	e8 ed 0f 00 00       	call   402f60 <perf_EndTimer>
  401f73:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f7a:	00 
  401f7b:	e8 20 10 00 00       	call   402fa0 <perf_ComputeNSecDelta>
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
  401fa7:	e8 74 0f 00 00       	call   402f20 <perf_StartTimer>
  401fac:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401fb1:	4d 89 f0             	mov    r8,r14
  401fb4:	4c 89 e9             	mov    rcx,r13
  401fb7:	48 89 ea             	mov    rdx,rbp
  401fba:	4c 89 e6             	mov    rsi,r12
  401fbd:	e8 8e 05 00 00       	call   402550 <kernels_SaxpyF64>
  401fc2:	48 89 df             	mov    rdi,rbx
  401fc5:	e8 96 0f 00 00       	call   402f60 <perf_EndTimer>
  401fca:	48 89 df             	mov    rdi,rbx
  401fcd:	e8 ce 0f 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  401fd2:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401fd6:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  401fdd:	00 
  401fde:	49 39 c7             	cmp    r15,rax
  401fe1:	75 bd                	jne    401fa0 <run_experiments_as_doubles+0xb0>
  401fe3:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
  401fe8:	e8 93 f9 ff ff       	call   401980 <sort_timings>
  401fed:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401ff4:	00 
  401ff5:	e8 26 0f 00 00       	call   402f20 <perf_StartTimer>
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
  402021:	e8 5a 08 00 00       	call   402880 <kernels_MultiplyF64>
  402026:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40202d:	00 
  40202e:	e8 2d 0f 00 00       	call   402f60 <perf_EndTimer>
  402033:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40203a:	00 
  40203b:	e8 60 0f 00 00       	call   402fa0 <perf_ComputeNSecDelta>
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
  402067:	e8 b4 0e 00 00       	call   402f20 <perf_StartTimer>
  40206c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402071:	4d 89 f0             	mov    r8,r14
  402074:	4c 89 e9             	mov    rcx,r13
  402077:	48 89 ea             	mov    rdx,rbp
  40207a:	4c 89 e6             	mov    rsi,r12
  40207d:	e8 fe 07 00 00       	call   402880 <kernels_MultiplyF64>
  402082:	48 89 df             	mov    rdi,rbx
  402085:	e8 d6 0e 00 00       	call   402f60 <perf_EndTimer>
  40208a:	48 89 df             	mov    rdi,rbx
  40208d:	e8 0e 0f 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  402092:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402096:	48 8d 84 24 30 02 00 	lea    rax,[rsp+0x230]
  40209d:	00 
  40209e:	49 39 c7             	cmp    r15,rax
  4020a1:	75 bd                	jne    402060 <run_experiments_as_doubles+0x170>
  4020a3:	48 8d bc 24 40 01 00 	lea    rdi,[rsp+0x140]
  4020aa:	00 
  4020ab:	e8 d0 f8 ff ff       	call   401980 <sort_timings>
  4020b0:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020b5:	e8 66 0e 00 00       	call   402f20 <perf_StartTimer>
  4020ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4020c0:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  4020c6:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  4020cc:	4c 89 f1             	mov    rcx,r14
  4020cf:	4c 89 ea             	mov    rdx,r13
  4020d2:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  4020d8:	48 89 ee             	mov    rsi,rbp
  4020db:	4c 89 e7             	mov    rdi,r12
  4020de:	e8 9d 0b 00 00       	call   402c80 <kernels_ThreeStencilF64>
  4020e3:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020e8:	e8 73 0e 00 00       	call   402f60 <perf_EndTimer>
  4020ed:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020f2:	e8 a9 0e 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  4020f7:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  4020fd:	76 c1                	jbe    4020c0 <run_experiments_as_doubles+0x1d0>
  4020ff:	4c 8d bc 24 30 02 00 	lea    r15,[rsp+0x230]
  402106:	00 
  402107:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40210e:	00 00 
  402110:	48 89 df             	mov    rdi,rbx
  402113:	49 83 c7 08          	add    r15,0x8
  402117:	e8 04 0e 00 00       	call   402f20 <perf_StartTimer>
  40211c:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  402122:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402128:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40212e:	4c 89 f1             	mov    rcx,r14
  402131:	4c 89 ea             	mov    rdx,r13
  402134:	48 89 ee             	mov    rsi,rbp
  402137:	4c 89 e7             	mov    rdi,r12
  40213a:	e8 41 0b 00 00       	call   402c80 <kernels_ThreeStencilF64>
  40213f:	48 89 df             	mov    rdi,rbx
  402142:	e8 19 0e 00 00       	call   402f60 <perf_EndTimer>
  402147:	48 89 df             	mov    rdi,rbx
  40214a:	e8 51 0e 00 00       	call   402fa0 <perf_ComputeNSecDelta>
  40214f:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402153:	49 39 df             	cmp    r15,rbx
  402156:	75 b8                	jne    402110 <run_experiments_as_doubles+0x220>
  402158:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40215f:	00 
  402160:	e8 1b f8 ff ff       	call   401980 <sort_timings>
  402165:	48 8b 94 24 68 13 00 	mov    rdx,QWORD PTR [rsp+0x1368]
  40216c:	00 
  40216d:	4c 89 ff             	mov    rdi,r15
  402170:	be 1a 30 40 00       	mov    esi,0x40301a
  402175:	31 c0                	xor    eax,eax
  402177:	e8 c4 ef ff ff       	call   401140 <sprintf@plt>
  40217c:	4c 89 ff             	mov    rdi,r15
  40217f:	be 34 30 40 00       	mov    esi,0x403034
  402184:	e8 97 ef ff ff       	call   401120 <fopen@plt>
  402189:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40218e:	4d 89 f0             	mov    r8,r14
  402191:	4c 89 e9             	mov    rcx,r13
  402194:	48 89 ea             	mov    rdx,rbp
  402197:	4c 89 e6             	mov    rsi,r12
  40219a:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40219f:	e8 ac 03 00 00       	call   402550 <kernels_SaxpyF64>
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
  4021e1:	be a0 31 40 00       	mov    esi,0x4031a0
  4021e6:	31 c0                	xor    eax,eax
  4021e8:	e8 53 ef ff ff       	call   401140 <sprintf@plt>
  4021ed:	4c 89 ff             	mov    rdi,r15
  4021f0:	be 34 30 40 00       	mov    esi,0x403034
  4021f5:	e8 26 ef ff ff       	call   401120 <fopen@plt>
  4021fa:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4021ff:	4d 89 f0             	mov    r8,r14
  402202:	4c 89 e9             	mov    rcx,r13
  402205:	48 89 ea             	mov    rdx,rbp
  402208:	4c 89 e6             	mov    rsi,r12
  40220b:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402210:	e8 6b 06 00 00       	call   402880 <kernels_MultiplyF64>
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
  40223f:	be 36 30 40 00       	mov    esi,0x403036
  402244:	31 c0                	xor    eax,eax
  402246:	e8 f5 ee ff ff       	call   401140 <sprintf@plt>
  40224b:	4c 89 ff             	mov    rdi,r15
  40224e:	be 34 30 40 00       	mov    esi,0x403034
  402253:	e8 c8 ee ff ff       	call   401120 <fopen@plt>
  402258:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  40225e:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402264:	4c 89 f1             	mov    rcx,r14
  402267:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40226d:	49 89 c7             	mov    r15,rax
  402270:	4c 89 ea             	mov    rdx,r13
  402273:	48 89 ee             	mov    rsi,rbp
  402276:	4c 89 e7             	mov    rdi,r12
  402279:	e8 02 0a 00 00       	call   402c80 <kernels_ThreeStencilF64>
  40227e:	4c 89 f9             	mov    rcx,r15
  402281:	48 89 de             	mov    rsi,rbx
  402284:	ba 08 00 00 00       	mov    edx,0x8
  402289:	48 89 ef             	mov    rdi,rbp
  40228c:	e8 bf ee ff ff       	call   401150 <fwrite@plt>
  402291:	4c 89 ff             	mov    rdi,r15
  402294:	e8 e7 ed ff ff       	call   401080 <fclose@plt>
  402299:	c5 7b 10 05 d7 12 00 	vmovsd xmm8,QWORD PTR [rip+0x12d7]        # 403578 <__PRETTY_FUNCTION__.0+0x18>
  4022a0:	00 
  4022a1:	c5 fb 10 3d d7 12 00 	vmovsd xmm7,QWORD PTR [rip+0x12d7]        # 403580 <__PRETTY_FUNCTION__.0+0x20>
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
  402312:	41 b8 58 30 40 00    	mov    r8d,0x403058
  402318:	8b 74 24 34          	mov    esi,DWORD PTR [rsp+0x34]
  40231c:	bf 20 32 40 00       	mov    edi,0x403220
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
  402380:	62 d2 7d 48 7c c0    	vpbroadcastd zmm0,r8d
  402386:	49 89 f9             	mov    r9,rdi
  402389:	49 89 f2             	mov    r10,rsi
  40238c:	62 f2 7d 48 40 05 6a 	vpmulld zmm0,zmm0,ZMMWORD PTR [rip+0x126a]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402393:	12 00 00 
  402396:	48 89 d7             	mov    rdi,rdx
  402399:	48 89 ce             	mov    rsi,rcx
  40239c:	48 83 f9 0f          	cmp    rcx,0xf
  4023a0:	0f 86 9a 01 00 00    	jbe    402540 <kernels_SaxpyF32+0x1c0>
  4023a6:	49 83 f8 01          	cmp    r8,0x1
  4023aa:	0f 84 10 01 00 00    	je     4024c0 <kernels_SaxpyF32+0x140>
  4023b0:	4d 89 c3             	mov    r11,r8
  4023b3:	31 c0                	xor    eax,eax
  4023b5:	ba 10 00 00 00       	mov    edx,0x10
  4023ba:	c5 f4 46 c9          	kxnorw k1,k1,k1
  4023be:	49 c1 e3 06          	shl    r11,0x6
  4023c2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4023c9:	00 00 00 00 
  4023cd:	0f 1f 00             	nop    DWORD PTR [rax]
  4023d0:	c5 f8 90 d1          	kmovw  k2,k1
  4023d4:	c5 f8 90 d9          	kmovw  k3,k1
  4023d8:	49 8d 0c 01          	lea    rcx,[r9+rax*1]
  4023dc:	c5 f8 90 e1          	kmovw  k4,k1
  4023e0:	c5 f8 90 e9          	kmovw  k5,k1
  4023e4:	62 f2 7d 4a 92 0c 81 	vgatherdps zmm1{k2},DWORD PTR [rcx+zmm0*4]
  4023eb:	49 8d 0c 02          	lea    rcx,[r10+rax*1]
  4023ef:	62 f2 7d 4b 92 1c 81 	vgatherdps zmm3{k3},DWORD PTR [rcx+zmm0*4]
  4023f6:	48 8d 0c 07          	lea    rcx,[rdi+rax*1]
  4023fa:	4c 01 d8             	add    rax,r11
  4023fd:	62 f2 7d 4c 92 14 81 	vgatherdps zmm2{k4},DWORD PTR [rcx+zmm0*4]
  402404:	62 f2 6d 48 98 cb    	vfmadd132ps zmm1,zmm2,zmm3
  40240a:	62 f2 7d 4d a2 0c 81 	vscatterdps DWORD PTR [rcx+zmm0*4]{k5},zmm1
  402411:	48 89 d1             	mov    rcx,rdx
  402414:	48 83 c2 10          	add    rdx,0x10
  402418:	48 39 d6             	cmp    rsi,rdx
  40241b:	73 b3                	jae    4023d0 <kernels_SaxpyF32+0x50>
  40241d:	48 29 ce             	sub    rsi,rcx
  402420:	48 85 f6             	test   rsi,rsi
  402423:	74 65                	je     40248a <kernels_SaxpyF32+0x10a>
  402425:	b8 01 00 00 00       	mov    eax,0x1
  40242a:	c4 e2 49 f7 c0       	shlx   eax,eax,esi
  40242f:	ff c8                	dec    eax
  402431:	c5 f8 92 c8          	kmovw  k1,eax
  402435:	49 83 f8 01          	cmp    r8,0x1
  402439:	74 55                	je     402490 <kernels_SaxpyF32+0x110>
  40243b:	4c 0f af c1          	imul   r8,rcx
  40243f:	c5 f8 90 f1          	kmovw  k6,k1
  402443:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  402447:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  40244d:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  402453:	c5 f8 90 f9          	kmovw  k7,k1
  402457:	49 c1 e0 02          	shl    r8,0x2
  40245b:	4c 01 c7             	add    rdi,r8
  40245e:	4d 01 c1             	add    r9,r8
  402461:	4d 01 c2             	add    r10,r8
  402464:	62 f2 7d 4e 92 1c 87 	vgatherdps zmm3{k6},DWORD PTR [rdi+zmm0*4]
  40246b:	c5 f8 90 f1          	kmovw  k6,k1
  40246f:	62 d2 7d 4f 92 14 81 	vgatherdps zmm2{k7},DWORD PTR [r9+zmm0*4]
  402476:	62 d2 7d 4e 92 0c 82 	vgatherdps zmm1{k6},DWORD PTR [r10+zmm0*4]
  40247d:	62 f2 65 48 98 ca    	vfmadd132ps zmm1,zmm3,zmm2
  402483:	62 f2 7d 49 a2 0c 87 	vscatterdps DWORD PTR [rdi+zmm0*4]{k1},zmm1
  40248a:	c5 f8 77             	vzeroupper
  40248d:	c3                   	ret
  40248e:	66 90                	xchg   ax,ax
  402490:	62 f1 7c c9 10 0c 8f 	vmovups zmm1{k1}{z},ZMMWORD PTR [rdi+rcx*4]
  402497:	62 d1 7c c9 10 04 89 	vmovups zmm0{k1}{z},ZMMWORD PTR [r9+rcx*4]
  40249e:	62 d1 7c c9 10 14 8a 	vmovups zmm2{k1}{z},ZMMWORD PTR [r10+rcx*4]
  4024a5:	62 f2 75 48 98 c2    	vfmadd132ps zmm0,zmm1,zmm2
  4024ab:	62 f1 7c 49 11 04 8f 	vmovups ZMMWORD PTR [rdi+rcx*4]{k1},zmm0
  4024b2:	c5 f8 77             	vzeroupper
  4024b5:	c3                   	ret
  4024b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4024bd:	00 00 00 
  4024c0:	b8 10 00 00 00       	mov    eax,0x10
  4024c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024cc:	00 00 00 00 
  4024d0:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024d7:	00 00 00 00 
  4024db:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024e2:	00 00 00 00 
  4024e6:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024ed:	00 00 00 00 
  4024f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4024f8:	00 00 00 00 
  4024fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402500:	62 f1 7c 48 10 64 87 	vmovups zmm4,ZMMWORD PTR [rdi+rax*4-0x40]
  402507:	ff 
  402508:	62 d1 7c 48 10 4c 81 	vmovups zmm1,ZMMWORD PTR [r9+rax*4-0x40]
  40250f:	ff 
  402510:	48 89 c1             	mov    rcx,rax
  402513:	62 d2 5d 48 98 4c 82 	vfmadd132ps zmm1,zmm4,ZMMWORD PTR [r10+rax*4-0x40]
  40251a:	ff 
  40251b:	62 f1 7c 48 11 4c 87 	vmovups ZMMWORD PTR [rdi+rax*4-0x40],zmm1
  402522:	ff 
  402523:	48 83 c0 10          	add    rax,0x10
  402527:	48 39 c6             	cmp    rsi,rax
  40252a:	73 d4                	jae    402500 <kernels_SaxpyF32+0x180>
  40252c:	e9 ec fe ff ff       	jmp    40241d <kernels_SaxpyF32+0x9d>
  402531:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402538:	00 00 00 00 
  40253c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402540:	31 c9                	xor    ecx,ecx
  402542:	e9 d9 fe ff ff       	jmp    402420 <kernels_SaxpyF32+0xa0>
  402547:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40254e:	00 00 

0000000000402550 <kernels_SaxpyF64>:
  402550:	49 89 f9             	mov    r9,rdi
  402553:	49 89 f2             	mov    r10,rsi
  402556:	62 d2 7d 28 7c c0    	vpbroadcastd ymm0,r8d
  40255c:	48 89 d7             	mov    rdi,rdx
  40255f:	c4 e2 7d 40 05 98 10 	vpmulld ymm0,ymm0,YMMWORD PTR [rip+0x1098]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402566:	00 00 
  402568:	48 89 ce             	mov    rsi,rcx
  40256b:	48 83 f9 07          	cmp    rcx,0x7
  40256f:	0f 86 8b 01 00 00    	jbe    402700 <kernels_SaxpyF64+0x1b0>
  402575:	49 83 f8 01          	cmp    r8,0x1
  402579:	0f 84 01 01 00 00    	je     402680 <kernels_SaxpyF64+0x130>
  40257f:	4d 89 c3             	mov    r11,r8
  402582:	31 c0                	xor    eax,eax
  402584:	ba 08 00 00 00       	mov    edx,0x8
  402589:	49 c1 e3 06          	shl    r11,0x6
  40258d:	0f 1f 00             	nop    DWORD PTR [rax]
  402590:	c5 ed 46 d2          	kxnorb k2,k2,k2
  402594:	c5 e5 46 db          	kxnorb k3,k3,k3
  402598:	49 8d 0c 01          	lea    rcx,[r9+rax*1]
  40259c:	62 f2 fd 4a 92 0c c1 	vgatherdpd zmm1{k2},QWORD PTR [rcx+ymm0*8]
  4025a3:	49 8d 0c 02          	lea    rcx,[r10+rax*1]
  4025a7:	c5 dd 46 e4          	kxnorb k4,k4,k4
  4025ab:	c5 d5 46 ed          	kxnorb k5,k5,k5
  4025af:	62 f2 fd 4b 92 1c c1 	vgatherdpd zmm3{k3},QWORD PTR [rcx+ymm0*8]
  4025b6:	48 8d 0c 07          	lea    rcx,[rdi+rax*1]
  4025ba:	4c 01 d8             	add    rax,r11
  4025bd:	62 f2 fd 4c 92 14 c1 	vgatherdpd zmm2{k4},QWORD PTR [rcx+ymm0*8]
  4025c4:	62 f2 ed 48 98 cb    	vfmadd132pd zmm1,zmm2,zmm3
  4025ca:	62 f2 fd 4d a2 0c c1 	vscatterdpd QWORD PTR [rcx+ymm0*8]{k5},zmm1
  4025d1:	48 89 d1             	mov    rcx,rdx
  4025d4:	48 83 c2 08          	add    rdx,0x8
  4025d8:	48 39 d6             	cmp    rsi,rdx
  4025db:	73 b3                	jae    402590 <kernels_SaxpyF64+0x40>
  4025dd:	48 29 ce             	sub    rsi,rcx
  4025e0:	48 85 f6             	test   rsi,rsi
  4025e3:	74 65                	je     40264a <kernels_SaxpyF64+0xfa>
  4025e5:	b8 01 00 00 00       	mov    eax,0x1
  4025ea:	c4 e2 49 f7 c0       	shlx   eax,eax,esi
  4025ef:	ff c8                	dec    eax
  4025f1:	c5 f9 92 c8          	kmovb  k1,eax
  4025f5:	49 83 f8 01          	cmp    r8,0x1
  4025f9:	74 55                	je     402650 <kernels_SaxpyF64+0x100>
  4025fb:	4c 0f af c1          	imul   r8,rcx
  4025ff:	c5 f9 90 f1          	kmovb  k6,k1
  402603:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  402607:	62 f1 fd 48 28 d9    	vmovapd zmm3,zmm1
  40260d:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  402613:	c5 f9 90 f9          	kmovb  k7,k1
  402617:	49 c1 e0 03          	shl    r8,0x3
  40261b:	4c 01 c7             	add    rdi,r8
  40261e:	4d 01 c1             	add    r9,r8
  402621:	4d 01 c2             	add    r10,r8
  402624:	62 f2 fd 4e 92 1c c7 	vgatherdpd zmm3{k6},QWORD PTR [rdi+ymm0*8]
  40262b:	c5 f9 90 f1          	kmovb  k6,k1
  40262f:	62 d2 fd 4f 92 14 c1 	vgatherdpd zmm2{k7},QWORD PTR [r9+ymm0*8]
  402636:	62 d2 fd 4e 92 0c c2 	vgatherdpd zmm1{k6},QWORD PTR [r10+ymm0*8]
  40263d:	62 f2 e5 48 98 ca    	vfmadd132pd zmm1,zmm3,zmm2
  402643:	62 f2 fd 49 a2 0c c7 	vscatterdpd QWORD PTR [rdi+ymm0*8]{k1},zmm1
  40264a:	c5 f8 77             	vzeroupper
  40264d:	c3                   	ret
  40264e:	66 90                	xchg   ax,ax
  402650:	62 f1 fd c9 10 0c cf 	vmovupd zmm1{k1}{z},ZMMWORD PTR [rdi+rcx*8]
  402657:	62 d1 fd c9 10 04 c9 	vmovupd zmm0{k1}{z},ZMMWORD PTR [r9+rcx*8]
  40265e:	62 d1 fd c9 10 14 ca 	vmovupd zmm2{k1}{z},ZMMWORD PTR [r10+rcx*8]
  402665:	62 f2 f5 48 98 c2    	vfmadd132pd zmm0,zmm1,zmm2
  40266b:	62 f1 fd 49 11 04 cf 	vmovupd ZMMWORD PTR [rdi+rcx*8]{k1},zmm0
  402672:	c5 f8 77             	vzeroupper
  402675:	c3                   	ret
  402676:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40267d:	00 00 00 
  402680:	b8 08 00 00 00       	mov    eax,0x8
  402685:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40268c:	00 00 00 00 
  402690:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402697:	00 00 00 00 
  40269b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026a2:	00 00 00 00 
  4026a6:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026ad:	00 00 00 00 
  4026b1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026b8:	00 00 00 00 
  4026bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4026c0:	62 f1 fd 48 10 64 c7 	vmovupd zmm4,ZMMWORD PTR [rdi+rax*8-0x40]
  4026c7:	ff 
  4026c8:	62 d1 fd 48 10 4c c1 	vmovupd zmm1,ZMMWORD PTR [r9+rax*8-0x40]
  4026cf:	ff 
  4026d0:	48 89 c1             	mov    rcx,rax
  4026d3:	62 d2 dd 48 98 4c c2 	vfmadd132pd zmm1,zmm4,ZMMWORD PTR [r10+rax*8-0x40]
  4026da:	ff 
  4026db:	62 f1 fd 48 11 4c c7 	vmovupd ZMMWORD PTR [rdi+rax*8-0x40],zmm1
  4026e2:	ff 
  4026e3:	48 83 c0 08          	add    rax,0x8
  4026e7:	48 39 c6             	cmp    rsi,rax
  4026ea:	73 d4                	jae    4026c0 <kernels_SaxpyF64+0x170>
  4026ec:	e9 ec fe ff ff       	jmp    4025dd <kernels_SaxpyF64+0x8d>
  4026f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4026f8:	00 00 00 00 
  4026fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402700:	31 c9                	xor    ecx,ecx
  402702:	e9 d9 fe ff ff       	jmp    4025e0 <kernels_SaxpyF64+0x90>
  402707:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40270e:	00 00 

0000000000402710 <kernels_MultiplyF32>:
  402710:	62 d2 7d 48 7c c8    	vpbroadcastd zmm1,r8d
  402716:	49 89 f2             	mov    r10,rsi
  402719:	62 f2 75 48 40 0d dd 	vpmulld zmm1,zmm1,ZMMWORD PTR [rip+0xedd]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402720:	0e 00 00 
  402723:	49 89 f9             	mov    r9,rdi
  402726:	48 89 d6             	mov    rsi,rdx
  402729:	48 83 f9 0f          	cmp    rcx,0xf
  40272d:	0f 86 3d 01 00 00    	jbe    402870 <kernels_MultiplyF32+0x160>
  402733:	49 83 f8 01          	cmp    r8,0x1
  402737:	0f 84 e3 00 00 00    	je     402820 <kernels_MultiplyF32+0x110>
  40273d:	4d 89 c3             	mov    r11,r8
  402740:	31 c0                	xor    eax,eax
  402742:	ba 10 00 00 00       	mov    edx,0x10
  402747:	c5 f4 46 c9          	kxnorw k1,k1,k1
  40274b:	49 c1 e3 06          	shl    r11,0x6
  40274f:	90                   	nop
  402750:	c5 f8 90 d1          	kmovw  k2,k1
  402754:	c5 f8 90 d9          	kmovw  k3,k1
  402758:	49 8d 3c 01          	lea    rdi,[r9+rax*1]
  40275c:	62 f2 7d 4a 92 14 8f 	vgatherdps zmm2{k2},DWORD PTR [rdi+zmm1*4]
  402763:	49 8d 3c 02          	lea    rdi,[r10+rax*1]
  402767:	c5 f8 90 e1          	kmovw  k4,k1
  40276b:	62 f2 7d 4b 92 04 8f 	vgatherdps zmm0{k3},DWORD PTR [rdi+zmm1*4]
  402772:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  402776:	4c 01 d8             	add    rax,r11
  402779:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  40277f:	62 f2 7d 4c a2 04 8f 	vscatterdps DWORD PTR [rdi+zmm1*4]{k4},zmm0
  402786:	48 89 d7             	mov    rdi,rdx
  402789:	48 83 c2 10          	add    rdx,0x10
  40278d:	48 39 d1             	cmp    rcx,rdx
  402790:	73 be                	jae    402750 <kernels_MultiplyF32+0x40>
  402792:	48 29 f9             	sub    rcx,rdi
  402795:	48 85 c9             	test   rcx,rcx
  402798:	74 54                	je     4027ee <kernels_MultiplyF32+0xde>
  40279a:	b8 01 00 00 00       	mov    eax,0x1
  40279f:	c4 e2 71 f7 c0       	shlx   eax,eax,ecx
  4027a4:	ff c8                	dec    eax
  4027a6:	c5 f8 92 c8          	kmovw  k1,eax
  4027aa:	49 83 f8 01          	cmp    r8,0x1
  4027ae:	74 50                	je     402800 <kernels_MultiplyF32+0xf0>
  4027b0:	4c 0f af c7          	imul   r8,rdi
  4027b4:	c5 f8 90 e9          	kmovw  k5,k1
  4027b8:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  4027bc:	c5 f8 90 f1          	kmovw  k6,k1
  4027c0:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  4027c6:	49 c1 e0 02          	shl    r8,0x2
  4027ca:	4d 01 c2             	add    r10,r8
  4027cd:	4d 01 c1             	add    r9,r8
  4027d0:	4c 01 c6             	add    rsi,r8
  4027d3:	62 d2 7d 4d 92 14 8a 	vgatherdps zmm2{k5},DWORD PTR [r10+zmm1*4]
  4027da:	62 d2 7d 4e 92 04 89 	vgatherdps zmm0{k6},DWORD PTR [r9+zmm1*4]
  4027e1:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  4027e7:	62 f2 7d 49 a2 04 8e 	vscatterdps DWORD PTR [rsi+zmm1*4]{k1},zmm0
  4027ee:	c5 f8 77             	vzeroupper
  4027f1:	c3                   	ret
  4027f2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4027f9:	00 00 00 00 
  4027fd:	0f 1f 00             	nop    DWORD PTR [rax]
  402800:	62 d1 7c c9 10 0c ba 	vmovups zmm1{k1}{z},ZMMWORD PTR [r10+rdi*4]
  402807:	62 d1 7c c9 10 04 b9 	vmovups zmm0{k1}{z},ZMMWORD PTR [r9+rdi*4]
  40280e:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  402814:	62 f1 7c 49 11 04 be 	vmovups ZMMWORD PTR [rsi+rdi*4]{k1},zmm0
  40281b:	c5 f8 77             	vzeroupper
  40281e:	c3                   	ret
  40281f:	90                   	nop
  402820:	b8 10 00 00 00       	mov    eax,0x10
  402825:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40282c:	00 00 00 00 
  402830:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402837:	00 00 00 00 
  40283b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402840:	62 d1 7c 48 10 44 82 	vmovups zmm0,ZMMWORD PTR [r10+rax*4-0x40]
  402847:	ff 
  402848:	62 d1 7c 48 59 44 81 	vmulps zmm0,zmm0,ZMMWORD PTR [r9+rax*4-0x40]
  40284f:	ff 
  402850:	48 89 c7             	mov    rdi,rax
  402853:	62 f1 7c 48 11 44 86 	vmovups ZMMWORD PTR [rsi+rax*4-0x40],zmm0
  40285a:	ff 
  40285b:	48 83 c0 10          	add    rax,0x10
  40285f:	48 39 c1             	cmp    rcx,rax
  402862:	73 dc                	jae    402840 <kernels_MultiplyF32+0x130>
  402864:	e9 29 ff ff ff       	jmp    402792 <kernels_MultiplyF32+0x82>
  402869:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402870:	31 ff                	xor    edi,edi
  402872:	e9 1e ff ff ff       	jmp    402795 <kernels_MultiplyF32+0x85>
  402877:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40287e:	00 00 

0000000000402880 <kernels_MultiplyF64>:
  402880:	49 89 f2             	mov    r10,rsi
  402883:	62 d2 7d 28 7c c8    	vpbroadcastd ymm1,r8d
  402889:	49 89 f9             	mov    r9,rdi
  40288c:	c4 e2 75 40 0d 6b 0d 	vpmulld ymm1,ymm1,YMMWORD PTR [rip+0xd6b]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402893:	00 00 
  402895:	48 89 d6             	mov    rsi,rdx
  402898:	48 83 f9 07          	cmp    rcx,0x7
  40289c:	0f 86 4e 01 00 00    	jbe    4029f0 <kernels_MultiplyF64+0x170>
  4028a2:	49 83 f8 01          	cmp    r8,0x1
  4028a6:	0f 84 e4 00 00 00    	je     402990 <kernels_MultiplyF64+0x110>
  4028ac:	4d 89 c3             	mov    r11,r8
  4028af:	31 c0                	xor    eax,eax
  4028b1:	ba 08 00 00 00       	mov    edx,0x8
  4028b6:	49 c1 e3 06          	shl    r11,0x6
  4028ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4028c0:	c5 ed 46 d2          	kxnorb k2,k2,k2
  4028c4:	c5 e5 46 db          	kxnorb k3,k3,k3
  4028c8:	49 8d 3c 01          	lea    rdi,[r9+rax*1]
  4028cc:	62 f2 fd 4a 92 14 cf 	vgatherdpd zmm2{k2},QWORD PTR [rdi+ymm1*8]
  4028d3:	49 8d 3c 02          	lea    rdi,[r10+rax*1]
  4028d7:	c5 dd 46 e4          	kxnorb k4,k4,k4
  4028db:	62 f2 fd 4b 92 04 cf 	vgatherdpd zmm0{k3},QWORD PTR [rdi+ymm1*8]
  4028e2:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
  4028e6:	4c 01 d8             	add    rax,r11
  4028e9:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  4028ef:	62 f2 fd 4c a2 04 cf 	vscatterdpd QWORD PTR [rdi+ymm1*8]{k4},zmm0
  4028f6:	48 89 d7             	mov    rdi,rdx
  4028f9:	48 83 c2 08          	add    rdx,0x8
  4028fd:	48 39 d1             	cmp    rcx,rdx
  402900:	73 be                	jae    4028c0 <kernels_MultiplyF64+0x40>
  402902:	48 29 f9             	sub    rcx,rdi
  402905:	48 85 c9             	test   rcx,rcx
  402908:	74 54                	je     40295e <kernels_MultiplyF64+0xde>
  40290a:	b8 01 00 00 00       	mov    eax,0x1
  40290f:	c4 e2 71 f7 c0       	shlx   eax,eax,ecx
  402914:	ff c8                	dec    eax
  402916:	c5 f9 92 c8          	kmovb  k1,eax
  40291a:	49 83 f8 01          	cmp    r8,0x1
  40291e:	74 50                	je     402970 <kernels_MultiplyF64+0xf0>
  402920:	4c 0f af c7          	imul   r8,rdi
  402924:	c5 f9 90 e9          	kmovb  k5,k1
  402928:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  40292c:	c5 f9 90 f1          	kmovb  k6,k1
  402930:	62 f1 fd 48 28 d0    	vmovapd zmm2,zmm0
  402936:	49 c1 e0 03          	shl    r8,0x3
  40293a:	4d 01 c2             	add    r10,r8
  40293d:	4d 01 c1             	add    r9,r8
  402940:	4c 01 c6             	add    rsi,r8
  402943:	62 d2 fd 4d 92 14 ca 	vgatherdpd zmm2{k5},QWORD PTR [r10+ymm1*8]
  40294a:	62 d2 fd 4e 92 04 c9 	vgatherdpd zmm0{k6},QWORD PTR [r9+ymm1*8]
  402951:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  402957:	62 f2 fd 49 a2 04 ce 	vscatterdpd QWORD PTR [rsi+ymm1*8]{k1},zmm0
  40295e:	c5 f8 77             	vzeroupper
  402961:	c3                   	ret
  402962:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402969:	00 00 00 00 
  40296d:	0f 1f 00             	nop    DWORD PTR [rax]
  402970:	62 d1 fd c9 10 0c fa 	vmovupd zmm1{k1}{z},ZMMWORD PTR [r10+rdi*8]
  402977:	62 d1 fd c9 10 04 f9 	vmovupd zmm0{k1}{z},ZMMWORD PTR [r9+rdi*8]
  40297e:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  402984:	62 f1 fd 49 11 04 fe 	vmovupd ZMMWORD PTR [rsi+rdi*8]{k1},zmm0
  40298b:	c5 f8 77             	vzeroupper
  40298e:	c3                   	ret
  40298f:	90                   	nop
  402990:	b8 08 00 00 00       	mov    eax,0x8
  402995:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40299c:	00 00 00 00 
  4029a0:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4029a7:	00 00 00 00 
  4029ab:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4029b2:	00 00 00 00 
  4029b6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  4029bd:	00 00 00 
  4029c0:	62 d1 fd 48 10 44 c2 	vmovupd zmm0,ZMMWORD PTR [r10+rax*8-0x40]
  4029c7:	ff 
  4029c8:	62 d1 fd 48 59 44 c1 	vmulpd zmm0,zmm0,ZMMWORD PTR [r9+rax*8-0x40]
  4029cf:	ff 
  4029d0:	48 89 c7             	mov    rdi,rax
  4029d3:	62 f1 fd 48 11 44 c6 	vmovupd ZMMWORD PTR [rsi+rax*8-0x40],zmm0
  4029da:	ff 
  4029db:	48 83 c0 08          	add    rax,0x8
  4029df:	48 39 c1             	cmp    rcx,rax
  4029e2:	73 dc                	jae    4029c0 <kernels_MultiplyF64+0x140>
  4029e4:	e9 19 ff ff ff       	jmp    402902 <kernels_MultiplyF64+0x82>
  4029e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4029f0:	31 ff                	xor    edi,edi
  4029f2:	e9 0e ff ff ff       	jmp    402905 <kernels_MultiplyF64+0x85>
  4029f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4029fe:	00 00 

0000000000402a00 <kernels_ThreeStencilF32>:
  402a00:	55                   	push   rbp
  402a01:	48 89 e5             	mov    rbp,rsp
  402a04:	41 55                	push   r13
  402a06:	41 54                	push   r12
  402a08:	53                   	push   rbx
  402a09:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  402a0d:	48 83 fa 10          	cmp    rdx,0x10
  402a11:	0f 86 44 02 00 00    	jbe    402c5b <kernels_ThreeStencilF32+0x25b>
  402a17:	48 8d 5a ff          	lea    rbx,[rdx-0x1]
  402a1b:	49 89 f8             	mov    r8,rdi
  402a1e:	48 8d 3c 8d 00 00 00 	lea    rdi,[rcx*4+0x0]
  402a25:	00 
  402a26:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  402a2c:	48 89 d8             	mov    rax,rbx
  402a2f:	62 f2 7d 48 7c d9    	vpbroadcastd zmm3,ecx
  402a35:	49 89 f2             	mov    r10,rsi
  402a38:	62 f2 65 48 40 1d be 	vpmulld zmm3,zmm3,ZMMWORD PTR [rip+0xbbe]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402a3f:	0b 00 00 
  402a42:	48 0f af c7          	imul   rax,rdi
  402a46:	49 89 d1             	mov    r9,rdx
  402a49:	49 89 cb             	mov    r11,rcx
  402a4c:	62 f2 7d 48 18 c0    	vbroadcastss zmm0,xmm0
  402a52:	62 f2 7d 48 18 c9    	vbroadcastss zmm1,xmm1
  402a58:	62 f2 7d 48 18 d2    	vbroadcastss zmm2,xmm2
  402a5e:	c7 04 06 00 00 00 00 	mov    DWORD PTR [rsi+rax*1],0x0
  402a65:	48 83 fa 11          	cmp    rdx,0x11
  402a69:	0f 84 d1 01 00 00    	je     402c40 <kernels_ThreeStencilF32+0x240>
  402a6f:	4c 8d 6a ef          	lea    r13,[rdx-0x11]
  402a73:	48 83 f9 01          	cmp    rcx,0x1
  402a77:	0f 84 63 01 00 00    	je     402be0 <kernels_ThreeStencilF32+0x1e0>
  402a7d:	49 89 cc             	mov    r12,rcx
  402a80:	4c 89 c2             	mov    rdx,r8
  402a83:	48 8d 34 3e          	lea    rsi,[rsi+rdi*1]
  402a87:	b9 01 00 00 00       	mov    ecx,0x1
  402a8c:	49 c1 e4 06          	shl    r12,0x6
  402a90:	c5 f4 46 c9          	kxnorw k1,k1,k1
  402a94:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402a9b:	00 00 00 00 
  402a9f:	90                   	nop
  402aa0:	c5 f8 90 d9          	kmovw  k3,k1
  402aa4:	48 8d 04 3a          	lea    rax,[rdx+rdi*1]
  402aa8:	c5 f8 90 d1          	kmovw  k2,k1
  402aac:	48 83 c1 10          	add    rcx,0x10
  402ab0:	c5 f8 90 e1          	kmovw  k4,k1
  402ab4:	c5 f8 90 e9          	kmovw  k5,k1
  402ab8:	62 f2 7d 4b 92 34 98 	vgatherdps zmm6{k3},DWORD PTR [rax+zmm3*4]
  402abf:	62 f2 7d 4a 92 2c 9a 	vgatherdps zmm5{k2},DWORD PTR [rdx+zmm3*4]
  402ac6:	48 01 f8             	add    rax,rdi
  402ac9:	4c 01 e2             	add    rdx,r12
  402acc:	62 f1 74 48 59 f6    	vmulps zmm6,zmm1,zmm6
  402ad2:	62 f2 7d 4c 92 24 98 	vgatherdps zmm4{k4},DWORD PTR [rax+zmm3*4]
  402ad9:	62 f2 4d 48 98 e8    	vfmadd132ps zmm5,zmm6,zmm0
  402adf:	62 f2 55 48 98 e2    	vfmadd132ps zmm4,zmm5,zmm2
  402ae5:	62 f2 7d 4d a2 24 9e 	vscatterdps DWORD PTR [rsi+zmm3*4]{k5},zmm4
  402aec:	4c 01 e6             	add    rsi,r12
  402aef:	49 39 cd             	cmp    r13,rcx
  402af2:	73 ac                	jae    402aa0 <kernels_ThreeStencilF32+0xa0>
  402af4:	49 83 e9 12          	sub    r9,0x12
  402af8:	49 83 e1 f0          	and    r9,0xfffffffffffffff0
  402afc:	49 8d 51 11          	lea    rdx,[r9+0x11]
  402b00:	48 29 d3             	sub    rbx,rdx
  402b03:	0f 84 82 00 00 00    	je     402b8b <kernels_ThreeStencilF32+0x18b>
  402b09:	b8 01 00 00 00       	mov    eax,0x1
  402b0e:	49 8d 49 10          	lea    rcx,[r9+0x10]
  402b12:	49 83 c1 12          	add    r9,0x12
  402b16:	c4 e2 61 f7 d8       	shlx   ebx,eax,ebx
  402b1b:	8d 43 ff             	lea    eax,[rbx-0x1]
  402b1e:	c5 f8 92 c8          	kmovw  k1,eax
  402b22:	49 83 fb 01          	cmp    r11,0x1
  402b26:	74 78                	je     402ba0 <kernels_ThreeStencilF32+0x1a0>
  402b28:	48 0f af d7          	imul   rdx,rdi
  402b2c:	c5 f8 90 f9          	kmovw  k7,k1
  402b30:	c5 f8 90 f1          	kmovw  k6,k1
  402b34:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  402b38:	48 0f af cf          	imul   rcx,rdi
  402b3c:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  402b42:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  402b48:	49 0f af f9          	imul   rdi,r9
  402b4c:	49 8d 04 10          	lea    rax,[r8+rdx*1]
  402b50:	49 01 d2             	add    r10,rdx
  402b53:	62 f2 7d 4f 92 34 98 	vgatherdps zmm6{k7},DWORD PTR [rax+zmm3*4]
  402b5a:	4c 01 c1             	add    rcx,r8
  402b5d:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  402b63:	62 f2 7d 4e 92 2c 99 	vgatherdps zmm5{k6},DWORD PTR [rcx+zmm3*4]
  402b6a:	49 01 f8             	add    r8,rdi
  402b6d:	c5 f8 90 f1          	kmovw  k6,k1
  402b71:	62 f2 75 48 98 c5    	vfmadd132ps zmm0,zmm1,zmm5
  402b77:	62 d2 7d 4e 92 24 98 	vgatherdps zmm4{k6},DWORD PTR [r8+zmm3*4]
  402b7e:	62 f2 7d 48 98 d4    	vfmadd132ps zmm2,zmm0,zmm4
  402b84:	62 d2 7d 49 a2 14 9a 	vscatterdps DWORD PTR [r10+zmm3*4]{k1},zmm2
  402b8b:	c5 f8 77             	vzeroupper
  402b8e:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
  402b92:	5b                   	pop    rbx
  402b93:	41 5c                	pop    r12
  402b95:	41 5d                	pop    r13
  402b97:	5d                   	pop    rbp
  402b98:	c3                   	ret
  402b99:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402ba0:	62 d1 7c c9 10 2c 90 	vmovups zmm5{k1}{z},ZMMWORD PTR [r8+rdx*4]
  402ba7:	62 d1 7c c9 10 24 88 	vmovups zmm4{k1}{z},ZMMWORD PTR [r8+rcx*4]
  402bae:	62 91 7c c9 10 1c 88 	vmovups zmm3{k1}{z},ZMMWORD PTR [r8+r9*4]
  402bb5:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  402bbb:	62 f2 75 48 98 c4    	vfmadd132ps zmm0,zmm1,zmm4
  402bc1:	62 f2 7d 48 98 d3    	vfmadd132ps zmm2,zmm0,zmm3
  402bc7:	62 d1 7c 49 11 14 92 	vmovups ZMMWORD PTR [r10+rdx*4]{k1},zmm2
  402bce:	c5 f8 77             	vzeroupper
  402bd1:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
  402bd5:	5b                   	pop    rbx
  402bd6:	41 5c                	pop    r12
  402bd8:	41 5d                	pop    r13
  402bda:	5d                   	pop    rbp
  402bdb:	c3                   	ret
  402bdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402be0:	b8 01 00 00 00       	mov    eax,0x1
  402be5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bec:	00 00 00 00 
  402bf0:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bf7:	00 00 00 00 
  402bfb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402c00:	62 d1 74 48 59 24 80 	vmulps zmm4,zmm1,ZMMWORD PTR [r8+rax*4]
  402c07:	62 d2 7d 48 b8 a4 80 	vfmadd231ps zmm4,zmm0,ZMMWORD PTR [r8+rax*4-0x4]
  402c0e:	fc ff ff ff 
  402c12:	62 d2 6d 48 b8 a4 80 	vfmadd231ps zmm4,zmm2,ZMMWORD PTR [r8+rax*4+0x4]
  402c19:	04 00 00 00 
  402c1d:	62 d1 7c 48 11 24 82 	vmovups ZMMWORD PTR [r10+rax*4],zmm4
  402c24:	48 83 c0 10          	add    rax,0x10
  402c28:	49 39 c5             	cmp    r13,rax
  402c2b:	73 d3                	jae    402c00 <kernels_ThreeStencilF32+0x200>
  402c2d:	e9 c2 fe ff ff       	jmp    402af4 <kernels_ThreeStencilF32+0xf4>
  402c32:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c39:	00 00 00 00 
  402c3d:	0f 1f 00             	nop    DWORD PTR [rax]
  402c40:	b8 ff 7f 00 00       	mov    eax,0x7fff
  402c45:	41 b9 02 00 00 00    	mov    r9d,0x2
  402c4b:	31 c9                	xor    ecx,ecx
  402c4d:	ba 01 00 00 00       	mov    edx,0x1
  402c52:	c5 f8 92 c8          	kmovw  k1,eax
  402c56:	e9 c7 fe ff ff       	jmp    402b22 <kernels_ThreeStencilF32+0x122>
  402c5b:	b9 e0 35 40 00       	mov    ecx,0x4035e0
  402c60:	ba e2 00 00 00       	mov    edx,0xe2
  402c65:	be d9 30 40 00       	mov    esi,0x4030d9
  402c6a:	bf 08 35 40 00       	mov    edi,0x403508
  402c6f:	e8 2c e4 ff ff       	call   4010a0 <__assert_fail@plt>
  402c74:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c7b:	00 00 00 00 
  402c7f:	90                   	nop

0000000000402c80 <kernels_ThreeStencilF64>:
  402c80:	55                   	push   rbp
  402c81:	48 89 e5             	mov    rbp,rsp
  402c84:	41 55                	push   r13
  402c86:	41 54                	push   r12
  402c88:	53                   	push   rbx
  402c89:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  402c8d:	48 83 fa 08          	cmp    rdx,0x8
  402c91:	0f 86 44 02 00 00    	jbe    402edb <kernels_ThreeStencilF64+0x25b>
  402c97:	48 8d 5a ff          	lea    rbx,[rdx-0x1]
  402c9b:	49 89 f8             	mov    r8,rdi
  402c9e:	48 8d 3c cd 00 00 00 	lea    rdi,[rcx*8+0x0]
  402ca5:	00 
  402ca6:	48 c7 06 00 00 00 00 	mov    QWORD PTR [rsi],0x0
  402cad:	48 89 d8             	mov    rax,rbx
  402cb0:	62 f2 7d 28 7c d9    	vpbroadcastd ymm3,ecx
  402cb6:	49 89 f2             	mov    r10,rsi
  402cb9:	c4 e2 65 40 1d 3e 09 	vpmulld ymm3,ymm3,YMMWORD PTR [rip+0x93e]        # 403600 <__PRETTY_FUNCTION__.1+0x20>
  402cc0:	00 00 
  402cc2:	48 0f af c7          	imul   rax,rdi
  402cc6:	49 89 d1             	mov    r9,rdx
  402cc9:	49 89 cb             	mov    r11,rcx
  402ccc:	62 f2 fd 48 19 c0    	vbroadcastsd zmm0,xmm0
  402cd2:	62 f2 fd 48 19 c9    	vbroadcastsd zmm1,xmm1
  402cd8:	62 f2 fd 48 19 d2    	vbroadcastsd zmm2,xmm2
  402cde:	48 c7 04 06 00 00 00 	mov    QWORD PTR [rsi+rax*1],0x0
  402ce5:	00 
  402ce6:	48 83 fa 09          	cmp    rdx,0x9
  402cea:	0f 84 d0 01 00 00    	je     402ec0 <kernels_ThreeStencilF64+0x240>
  402cf0:	4c 8d 6a f7          	lea    r13,[rdx-0x9]
  402cf4:	48 83 f9 01          	cmp    rcx,0x1
  402cf8:	0f 84 62 01 00 00    	je     402e60 <kernels_ThreeStencilF64+0x1e0>
  402cfe:	49 89 cc             	mov    r12,rcx
  402d01:	4c 89 c2             	mov    rdx,r8
  402d04:	48 8d 34 3e          	lea    rsi,[rsi+rdi*1]
  402d08:	b9 01 00 00 00       	mov    ecx,0x1
  402d0d:	49 c1 e4 06          	shl    r12,0x6
  402d11:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402d18:	00 00 00 00 
  402d1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402d20:	c5 e5 46 db          	kxnorb k3,k3,k3
  402d24:	c5 ed 46 d2          	kxnorb k2,k2,k2
  402d28:	48 8d 04 3a          	lea    rax,[rdx+rdi*1]
  402d2c:	62 f2 fd 4a 92 2c da 	vgatherdpd zmm5{k2},QWORD PTR [rdx+ymm3*8]
  402d33:	48 83 c1 08          	add    rcx,0x8
  402d37:	4c 01 e2             	add    rdx,r12
  402d3a:	62 f2 fd 4b 92 34 d8 	vgatherdpd zmm6{k3},QWORD PTR [rax+ymm3*8]
  402d41:	c5 dd 46 e4          	kxnorb k4,k4,k4
  402d45:	48 01 f8             	add    rax,rdi
  402d48:	c5 d5 46 ed          	kxnorb k5,k5,k5
  402d4c:	62 f1 f5 48 59 f6    	vmulpd zmm6,zmm1,zmm6
  402d52:	62 f2 fd 4c 92 24 d8 	vgatherdpd zmm4{k4},QWORD PTR [rax+ymm3*8]
  402d59:	62 f2 cd 48 98 e8    	vfmadd132pd zmm5,zmm6,zmm0
  402d5f:	62 f2 d5 48 98 e2    	vfmadd132pd zmm4,zmm5,zmm2
  402d65:	62 f2 fd 4d a2 24 de 	vscatterdpd QWORD PTR [rsi+ymm3*8]{k5},zmm4
  402d6c:	4c 01 e6             	add    rsi,r12
  402d6f:	49 39 cd             	cmp    r13,rcx
  402d72:	73 ac                	jae    402d20 <kernels_ThreeStencilF64+0xa0>
  402d74:	49 83 e9 0a          	sub    r9,0xa
  402d78:	49 83 e1 f8          	and    r9,0xfffffffffffffff8
  402d7c:	49 8d 51 09          	lea    rdx,[r9+0x9]
  402d80:	48 29 d3             	sub    rbx,rdx
  402d83:	0f 84 82 00 00 00    	je     402e0b <kernels_ThreeStencilF64+0x18b>
  402d89:	b8 01 00 00 00       	mov    eax,0x1
  402d8e:	49 8d 49 08          	lea    rcx,[r9+0x8]
  402d92:	49 83 c1 0a          	add    r9,0xa
  402d96:	c4 e2 61 f7 d8       	shlx   ebx,eax,ebx
  402d9b:	8d 43 ff             	lea    eax,[rbx-0x1]
  402d9e:	c5 f9 92 c8          	kmovb  k1,eax
  402da2:	49 83 fb 01          	cmp    r11,0x1
  402da6:	74 78                	je     402e20 <kernels_ThreeStencilF64+0x1a0>
  402da8:	48 0f af d7          	imul   rdx,rdi
  402dac:	c5 f9 90 f9          	kmovb  k7,k1
  402db0:	c5 f9 90 f1          	kmovb  k6,k1
  402db4:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  402db8:	48 0f af cf          	imul   rcx,rdi
  402dbc:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  402dc2:	62 f1 fd 48 28 ec    	vmovapd zmm5,zmm4
  402dc8:	49 0f af f9          	imul   rdi,r9
  402dcc:	49 8d 04 10          	lea    rax,[r8+rdx*1]
  402dd0:	49 01 d2             	add    r10,rdx
  402dd3:	62 f2 fd 4f 92 34 d8 	vgatherdpd zmm6{k7},QWORD PTR [rax+ymm3*8]
  402dda:	4c 01 c1             	add    rcx,r8
  402ddd:	62 f1 f5 48 59 ce    	vmulpd zmm1,zmm1,zmm6
  402de3:	62 f2 fd 4e 92 2c d9 	vgatherdpd zmm5{k6},QWORD PTR [rcx+ymm3*8]
  402dea:	49 01 f8             	add    r8,rdi
  402ded:	c5 f9 90 f1          	kmovb  k6,k1
  402df1:	62 f2 f5 48 98 c5    	vfmadd132pd zmm0,zmm1,zmm5
  402df7:	62 d2 fd 4e 92 24 d8 	vgatherdpd zmm4{k6},QWORD PTR [r8+ymm3*8]
  402dfe:	62 f2 fd 48 98 d4    	vfmadd132pd zmm2,zmm0,zmm4
  402e04:	62 d2 fd 49 a2 14 da 	vscatterdpd QWORD PTR [r10+ymm3*8]{k1},zmm2
  402e0b:	c5 f8 77             	vzeroupper
  402e0e:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
  402e12:	5b                   	pop    rbx
  402e13:	41 5c                	pop    r12
  402e15:	41 5d                	pop    r13
  402e17:	5d                   	pop    rbp
  402e18:	c3                   	ret
  402e19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402e20:	62 d1 fd c9 10 2c d0 	vmovupd zmm5{k1}{z},ZMMWORD PTR [r8+rdx*8]
  402e27:	62 d1 fd c9 10 24 c8 	vmovupd zmm4{k1}{z},ZMMWORD PTR [r8+rcx*8]
  402e2e:	62 91 fd c9 10 1c c8 	vmovupd zmm3{k1}{z},ZMMWORD PTR [r8+r9*8]
  402e35:	62 f1 f5 48 59 cd    	vmulpd zmm1,zmm1,zmm5
  402e3b:	62 f2 f5 48 98 c4    	vfmadd132pd zmm0,zmm1,zmm4
  402e41:	62 f2 fd 48 98 d3    	vfmadd132pd zmm2,zmm0,zmm3
  402e47:	62 d1 fd 49 11 14 d2 	vmovupd ZMMWORD PTR [r10+rdx*8]{k1},zmm2
  402e4e:	c5 f8 77             	vzeroupper
  402e51:	48 8d 65 e8          	lea    rsp,[rbp-0x18]
  402e55:	5b                   	pop    rbx
  402e56:	41 5c                	pop    r12
  402e58:	41 5d                	pop    r13
  402e5a:	5d                   	pop    rbp
  402e5b:	c3                   	ret
  402e5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402e60:	b8 01 00 00 00       	mov    eax,0x1
  402e65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e6c:	00 00 00 00 
  402e70:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402e77:	00 00 00 00 
  402e7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402e80:	62 d1 f5 48 59 24 c0 	vmulpd zmm4,zmm1,ZMMWORD PTR [r8+rax*8]
  402e87:	62 d2 fd 48 b8 a4 c0 	vfmadd231pd zmm4,zmm0,ZMMWORD PTR [r8+rax*8-0x8]
  402e8e:	f8 ff ff ff 
  402e92:	62 d2 ed 48 b8 a4 c0 	vfmadd231pd zmm4,zmm2,ZMMWORD PTR [r8+rax*8+0x8]
  402e99:	08 00 00 00 
  402e9d:	62 d1 fd 48 11 24 c2 	vmovupd ZMMWORD PTR [r10+rax*8],zmm4
  402ea4:	48 83 c0 08          	add    rax,0x8
  402ea8:	49 39 c5             	cmp    r13,rax
  402eab:	73 d3                	jae    402e80 <kernels_ThreeStencilF64+0x200>
  402ead:	e9 c2 fe ff ff       	jmp    402d74 <kernels_ThreeStencilF64+0xf4>
  402eb2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402eb9:	00 00 00 00 
  402ebd:	0f 1f 00             	nop    DWORD PTR [rax]
  402ec0:	b8 7f 00 00 00       	mov    eax,0x7f
  402ec5:	41 b9 02 00 00 00    	mov    r9d,0x2
  402ecb:	31 c9                	xor    ecx,ecx
  402ecd:	ba 01 00 00 00       	mov    edx,0x1
  402ed2:	c5 f9 92 c8          	kmovb  k1,eax
  402ed6:	e9 c7 fe ff ff       	jmp    402da2 <kernels_ThreeStencilF64+0x122>
  402edb:	b9 c0 35 40 00       	mov    ecx,0x4035c0
  402ee0:	ba 35 01 00 00       	mov    edx,0x135
  402ee5:	be d9 30 40 00       	mov    esi,0x4030d9
  402eea:	bf 08 35 40 00       	mov    edi,0x403508
  402eef:	e8 ac e1 ff ff       	call   4010a0 <__assert_fail@plt>
  402ef4:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  402efb:	00 00 00 
  402efe:	66 90                	xchg   ax,ax

0000000000402f00 <perf_NowNSec.part.0>:
  402f00:	48 83 ec 08          	sub    rsp,0x8
  402f04:	b9 40 36 40 00       	mov    ecx,0x403640
  402f09:	ba 0a 00 00 00       	mov    edx,0xa
  402f0e:	be f2 30 40 00       	mov    esi,0x4030f2
  402f13:	bf 08 31 40 00       	mov    edi,0x403108
  402f18:	e8 83 e1 ff ff       	call   4010a0 <__assert_fail@plt>
  402f1d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000402f20 <perf_StartTimer>:
  402f20:	53                   	push   rbx
  402f21:	48 89 fb             	mov    rbx,rdi
  402f24:	bf 01 00 00 00       	mov    edi,0x1
  402f29:	48 83 ec 10          	sub    rsp,0x10
  402f2d:	48 89 e6             	mov    rsi,rsp
  402f30:	e8 3b e1 ff ff       	call   401070 <clock_gettime@plt>
  402f35:	85 c0                	test   eax,eax
  402f37:	75 16                	jne    402f4f <perf_StartTimer+0x2f>
  402f39:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  402f40:	3b 
  402f41:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  402f46:	48 89 03             	mov    QWORD PTR [rbx],rax
  402f49:	48 83 c4 10          	add    rsp,0x10
  402f4d:	5b                   	pop    rbx
  402f4e:	c3                   	ret
  402f4f:	e8 ac ff ff ff       	call   402f00 <perf_NowNSec.part.0>
  402f54:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f5b:	00 00 00 00 
  402f5f:	90                   	nop

0000000000402f60 <perf_EndTimer>:
  402f60:	53                   	push   rbx
  402f61:	48 89 fb             	mov    rbx,rdi
  402f64:	bf 01 00 00 00       	mov    edi,0x1
  402f69:	48 83 ec 10          	sub    rsp,0x10
  402f6d:	48 89 e6             	mov    rsi,rsp
  402f70:	e8 fb e0 ff ff       	call   401070 <clock_gettime@plt>
  402f75:	85 c0                	test   eax,eax
  402f77:	75 17                	jne    402f90 <perf_EndTimer+0x30>
  402f79:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  402f80:	3b 
  402f81:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  402f86:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  402f8a:	48 83 c4 10          	add    rsp,0x10
  402f8e:	5b                   	pop    rbx
  402f8f:	c3                   	ret
  402f90:	e8 6b ff ff ff       	call   402f00 <perf_NowNSec.part.0>
  402f95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402f9c:	00 00 00 00 

0000000000402fa0 <perf_ComputeNSecDelta>:
  402fa0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  402fa4:	48 2b 07             	sub    rax,QWORD PTR [rdi]
  402fa7:	c3                   	ret

Disassembly of section .fini:

0000000000402fa8 <_fini>:
  402fa8:	f3 0f 1e fa          	endbr64
  402fac:	48 83 ec 08          	sub    rsp,0x8
  402fb0:	48 83 c4 08          	add    rsp,0x8
  402fb4:	c3                   	ret
