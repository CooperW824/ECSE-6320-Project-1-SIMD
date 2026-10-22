
./build/experiments/autovectorized:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    rsp,0x8
  401008:	48 8b 05 d1 5f 00 00 	mov    rax,QWORD PTR [rip+0x5fd1]        # 406fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   rax,rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   rax
  401016:	48 83 c4 08          	add    rsp,0x8
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <__isoc23_strtoul@plt-0x10>:
  401020:	ff 35 ca 5f 00 00    	push   QWORD PTR [rip+0x5fca]        # 406ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 5f 00 00    	jmp    QWORD PTR [rip+0x5fcc]        # 406ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401030 <__isoc23_strtoul@plt>:
  401030:	ff 25 ca 5f 00 00    	jmp    QWORD PTR [rip+0x5fca]        # 407000 <__isoc23_strtoul@GLIBC_2.38>
  401036:	68 00 00 00 00       	push   0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <free@plt>:
  401040:	ff 25 c2 5f 00 00    	jmp    QWORD PTR [rip+0x5fc2]        # 407008 <free@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	push   0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <fread@plt>:
  401050:	ff 25 ba 5f 00 00    	jmp    QWORD PTR [rip+0x5fba]        # 407010 <fread@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	push   0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <strtod@plt>:
  401060:	ff 25 b2 5f 00 00    	jmp    QWORD PTR [rip+0x5fb2]        # 407018 <strtod@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <clock_gettime@plt>:
  401070:	ff 25 aa 5f 00 00    	jmp    QWORD PTR [rip+0x5faa]        # 407020 <clock_gettime@GLIBC_2.17>
  401076:	68 04 00 00 00       	push   0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <fclose@plt>:
  401080:	ff 25 a2 5f 00 00    	jmp    QWORD PTR [rip+0x5fa2]        # 407028 <fclose@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	push   0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <printf@plt>:
  401090:	ff 25 9a 5f 00 00    	jmp    QWORD PTR [rip+0x5f9a]        # 407030 <printf@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	push   0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <__assert_fail@plt>:
  4010a0:	ff 25 92 5f 00 00    	jmp    QWORD PTR [rip+0x5f92]        # 407038 <__assert_fail@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	push   0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <strtof@plt>:
  4010b0:	ff 25 8a 5f 00 00    	jmp    QWORD PTR [rip+0x5f8a]        # 407040 <strtof@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	push   0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 82 5f 00 00    	jmp    QWORD PTR [rip+0x5f82]        # 407048 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	push   0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <strcmp@plt>:
  4010d0:	ff 25 7a 5f 00 00    	jmp    QWORD PTR [rip+0x5f7a]        # 407050 <strcmp@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <fprintf@plt>:
  4010e0:	ff 25 72 5f 00 00    	jmp    QWORD PTR [rip+0x5f72]        # 407058 <fprintf@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	push   0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <memcpy@plt>:
  4010f0:	ff 25 6a 5f 00 00    	jmp    QWORD PTR [rip+0x5f6a]        # 407060 <memcpy@GLIBC_2.14>
  4010f6:	68 0c 00 00 00       	push   0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <__isoc23_strtol@plt>:
  401100:	ff 25 62 5f 00 00    	jmp    QWORD PTR [rip+0x5f62]        # 407068 <__isoc23_strtol@GLIBC_2.38>
  401106:	68 0d 00 00 00       	push   0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <malloc@plt>:
  401110:	ff 25 5a 5f 00 00    	jmp    QWORD PTR [rip+0x5f5a]        # 407070 <malloc@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	push   0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <fopen@plt>:
  401120:	ff 25 52 5f 00 00    	jmp    QWORD PTR [rip+0x5f52]        # 407078 <fopen@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	push   0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <perror@plt>:
  401130:	ff 25 4a 5f 00 00    	jmp    QWORD PTR [rip+0x5f4a]        # 407080 <perror@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	push   0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <sprintf@plt>:
  401140:	ff 25 42 5f 00 00    	jmp    QWORD PTR [rip+0x5f42]        # 407088 <sprintf@GLIBC_2.2.5>
  401146:	68 11 00 00 00       	push   0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <fwrite@plt>:
  401150:	ff 25 3a 5f 00 00    	jmp    QWORD PTR [rip+0x5f3a]        # 407090 <fwrite@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	push   0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401180 <run_experiments_as_floats.cold>:
  401180:	bf 60 51 40 00       	mov    edi,0x405160
  401185:	e8 a6 ff ff ff       	call   401130 <perror@plt>
  40118a:	b8 01 00 00 00       	mov    eax,0x1
  40118f:	e9 49 0d 00 00       	jmp    401edd <run_experiments_as_floats+0x46d>
  401194:	bf e0 51 40 00       	mov    edi,0x4051e0
  401199:	e8 92 ff ff ff       	call   401130 <perror@plt>
  40119e:	eb ea                	jmp    40118a <run_experiments_as_floats.cold+0xa>
  4011a0:	bf b0 51 40 00       	mov    edi,0x4051b0
  4011a5:	e8 86 ff ff ff       	call   401130 <perror@plt>
  4011aa:	eb de                	jmp    40118a <run_experiments_as_floats.cold+0xa>

00000000004011ac <main.cold>:
  4011ac:	bf 48 54 40 00       	mov    edi,0x405448
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
  4011e3:	bf 7f 50 40 00       	mov    edi,0x40507f
  4011e8:	e8 43 ff ff ff       	call   401130 <perror@plt>
  4011ed:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4011f4:	00 
  4011f5:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4011fc:	00 
  4011fd:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401204:	00 
  401205:	e9 d5 05 00 00       	jmp    4017df <main+0x3ff>
  40120a:	bf ab 50 40 00       	mov    edi,0x4050ab
  40120f:	e8 1c ff ff ff       	call   401130 <perror@plt>
  401214:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  40121b:	00 
  40121c:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401223:	00 
  401224:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40122b:	00 
  40122c:	e9 ae 05 00 00       	jmp    4017df <main+0x3ff>
  401231:	bf 80 54 40 00       	mov    edi,0x405480
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
  401268:	bf b8 54 40 00       	mov    edi,0x4054b8
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
  40129f:	bf 68 53 40 00       	mov    edi,0x405368
  4012a4:	e8 87 fe ff ff       	call   401130 <perror@plt>
  4012a9:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012b0:	00 
  4012b1:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012b8:	00 
  4012b9:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012c0:	00 
  4012c1:	e9 19 05 00 00       	jmp    4017df <main+0x3ff>
  4012c6:	bf 90 53 40 00       	mov    edi,0x405390
  4012cb:	e8 60 fe ff ff       	call   401130 <perror@plt>
  4012d0:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012d7:	00 
  4012d8:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  4012df:	00 
  4012e0:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  4012e7:	00 
  4012e8:	e9 f2 04 00 00       	jmp    4017df <main+0x3ff>
  4012ed:	bf 40 53 40 00       	mov    edi,0x405340
  4012f2:	e8 39 fe ff ff       	call   401130 <perror@plt>
  4012f7:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  4012fe:	00 
  4012ff:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  401306:	00 
  401307:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  40130e:	00 
  40130f:	e9 cb 04 00 00       	jmp    4017df <main+0x3ff>
  401314:	bf 95 50 40 00       	mov    edi,0x405095
  401319:	e8 12 fe ff ff       	call   401130 <perror@plt>
  40131e:	48 8b ac 24 90 00 00 	mov    rbp,QWORD PTR [rsp+0x90]
  401325:	00 
  401326:	4c 8b a4 24 98 00 00 	mov    r12,QWORD PTR [rsp+0x98]
  40132d:	00 
  40132e:	4c 8b ac 24 a0 00 00 	mov    r13,QWORD PTR [rsp+0xa0]
  401335:	00 
  401336:	e9 a4 04 00 00       	jmp    4017df <main+0x3ff>
  40133b:	bf b8 53 40 00       	mov    edi,0x4053b8
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
  40136a:	bf e8 53 40 00       	mov    edi,0x4053e8
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
  4013a1:	bf 18 54 40 00       	mov    edi,0x405418
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
  401429:	be 7d 50 40 00       	mov    esi,0x40507d
  40142e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  401433:	e8 e8 fc ff ff       	call   401120 <fopen@plt>
  401438:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40143d:	48 85 c0             	test   rax,rax
  401440:	0f 84 9d fd ff ff    	je     4011e3 <main.cold+0x37>
  401446:	be 7d 50 40 00       	mov    esi,0x40507d
  40144b:	4c 89 e7             	mov    rdi,r12
  40144e:	e8 cd fc ff ff       	call   401120 <fopen@plt>
  401453:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  401458:	48 85 c0             	test   rax,rax
  40145b:	0f 84 b3 fe ff ff    	je     401314 <main.cold+0x168>
  401461:	be 7d 50 40 00       	mov    esi,0x40507d
  401466:	48 89 ef             	mov    rdi,rbp
  401469:	e8 b2 fc ff ff       	call   401120 <fopen@plt>
  40146e:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  401473:	48 85 c0             	test   rax,rax
  401476:	0f 84 8e fd ff ff    	je     40120a <main.cold+0x5e>
  40147c:	48 8b 6b 28          	mov    rbp,QWORD PTR [rbx+0x28]
  401480:	be c1 50 40 00       	mov    esi,0x4050c1
  401485:	48 89 ef             	mov    rdi,rbp
  401488:	e8 43 fc ff ff       	call   4010d0 <strcmp@plt>
  40148d:	85 c0                	test   eax,eax
  40148f:	0f 84 0f 03 00 00    	je     4017a4 <main+0x3c4>
  401495:	be c3 50 40 00       	mov    esi,0x4050c3
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
  4017ae:	48 8b 0d 0b 59 00 00 	mov    rcx,QWORD PTR [rip+0x590b]        # 4070c0 <stderr@GLIBC_2.2.5>
  4017b5:	ba 1d 00 00 00       	mov    edx,0x1d
  4017ba:	be 01 00 00 00       	mov    esi,0x1
  4017bf:	bf 5f 50 40 00       	mov    edi,0x40505f
  4017c4:	e8 87 f9 ff ff       	call   401150 <fwrite@plt>
  4017c9:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  4017cc:	48 8b 3d ed 58 00 00 	mov    rdi,QWORD PTR [rip+0x58ed]        # 4070c0 <stderr@GLIBC_2.2.5>
  4017d3:	be 38 52 40 00       	mov    esi,0x405238
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
  40182e:	48 8b 0d 8b 58 00 00 	mov    rcx,QWORD PTR [rip+0x588b]        # 4070c0 <stderr@GLIBC_2.2.5>
  401835:	ba 13 00 00 00       	mov    edx,0x13
  40183a:	be 01 00 00 00       	mov    esi,0x1
  40183f:	bf c5 50 40 00       	mov    edi,0x4050c5
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
  40189f:	ff 15 33 57 00 00    	call   QWORD PTR [rip+0x5733]        # 406fd8 <__libc_start_main@GLIBC_2.34>
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
  4018c0:	b8 a8 70 40 00       	mov    eax,0x4070a8
  4018c5:	48 3d a8 70 40 00    	cmp    rax,0x4070a8
  4018cb:	74 13                	je     4018e0 <deregister_tm_clones+0x20>
  4018cd:	b8 00 00 00 00       	mov    eax,0x0
  4018d2:	48 85 c0             	test   rax,rax
  4018d5:	74 09                	je     4018e0 <deregister_tm_clones+0x20>
  4018d7:	bf a8 70 40 00       	mov    edi,0x4070a8
  4018dc:	ff e0                	jmp    rax
  4018de:	66 90                	xchg   ax,ax
  4018e0:	c3                   	ret
  4018e1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4018e8:	00 00 00 00 
  4018ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004018f0 <register_tm_clones>:
  4018f0:	be a8 70 40 00       	mov    esi,0x4070a8
  4018f5:	48 81 ee a8 70 40 00 	sub    rsi,0x4070a8
  4018fc:	48 89 f0             	mov    rax,rsi
  4018ff:	48 c1 ee 3f          	shr    rsi,0x3f
  401903:	48 c1 f8 03          	sar    rax,0x3
  401907:	48 01 c6             	add    rsi,rax
  40190a:	48 d1 fe             	sar    rsi,1
  40190d:	74 11                	je     401920 <register_tm_clones+0x30>
  40190f:	b8 00 00 00 00       	mov    eax,0x0
  401914:	48 85 c0             	test   rax,rax
  401917:	74 07                	je     401920 <register_tm_clones+0x30>
  401919:	bf a8 70 40 00       	mov    edi,0x4070a8
  40191e:	ff e0                	jmp    rax
  401920:	c3                   	ret
  401921:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  401928:	00 00 00 00 
  40192c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401930 <__do_global_dtors_aux>:
  401930:	f3 0f 1e fa          	endbr64
  401934:	80 3d 8d 57 00 00 00 	cmp    BYTE PTR [rip+0x578d],0x0        # 4070c8 <completed.0>
  40193b:	75 13                	jne    401950 <__do_global_dtors_aux+0x20>
  40193d:	55                   	push   rbp
  40193e:	48 89 e5             	mov    rbp,rsp
  401941:	e8 7a ff ff ff       	call   4018c0 <deregister_tm_clones>
  401946:	c6 05 7b 57 00 00 01 	mov    BYTE PTR [rip+0x577b],0x1        # 4070c8 <completed.0>
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
  401a56:	b9 f0 54 40 00       	mov    ecx,0x4054f0
  401a5b:	ba 05 01 00 00       	mov    edx,0x105
  401a60:	be 04 50 40 00       	mov    esi,0x405004
  401a65:	bf f8 50 40 00       	mov    edi,0x4050f8
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
  401aba:	e8 71 33 00 00       	call   404e30 <perf_StartTimer>
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
  401aee:	e8 7d 33 00 00       	call   404e70 <perf_EndTimer>
  401af3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401afa:	00 
  401afb:	e8 b0 33 00 00       	call   404eb0 <perf_ComputeNSecDelta>
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
  401b27:	e8 04 33 00 00       	call   404e30 <perf_StartTimer>
  401b2c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401b31:	4d 89 f0             	mov    r8,r14
  401b34:	4c 89 e9             	mov    rcx,r13
  401b37:	48 89 ea             	mov    rdx,rbp
  401b3a:	4c 89 e6             	mov    rsi,r12
  401b3d:	e8 3e 08 00 00       	call   402380 <kernels_SaxpyF32>
  401b42:	48 89 df             	mov    rdi,rbx
  401b45:	e8 26 33 00 00       	call   404e70 <perf_EndTimer>
  401b4a:	48 89 df             	mov    rdi,rbx
  401b4d:	e8 5e 33 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  401b52:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401b56:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
  401b5d:	00 
  401b5e:	49 39 c7             	cmp    r15,rax
  401b61:	75 bd                	jne    401b20 <run_experiments_as_floats+0xb0>
  401b63:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  401b68:	e8 13 fe ff ff       	call   401980 <sort_timings>
  401b6d:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401b74:	00 
  401b75:	e8 b6 32 00 00       	call   404e30 <perf_StartTimer>
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
  401ba1:	e8 aa 16 00 00       	call   403250 <kernels_MultiplyF32>
  401ba6:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bad:	00 
  401bae:	e8 bd 32 00 00       	call   404e70 <perf_EndTimer>
  401bb3:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401bba:	00 
  401bbb:	e8 f0 32 00 00       	call   404eb0 <perf_ComputeNSecDelta>
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
  401be7:	e8 44 32 00 00       	call   404e30 <perf_StartTimer>
  401bec:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401bf1:	4d 89 f0             	mov    r8,r14
  401bf4:	4c 89 e9             	mov    rcx,r13
  401bf7:	48 89 ea             	mov    rdx,rbp
  401bfa:	4c 89 e6             	mov    rsi,r12
  401bfd:	e8 4e 16 00 00       	call   403250 <kernels_MultiplyF32>
  401c02:	48 89 df             	mov    rdi,rbx
  401c05:	e8 66 32 00 00       	call   404e70 <perf_EndTimer>
  401c0a:	48 89 df             	mov    rdi,rbx
  401c0d:	e8 9e 32 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  401c12:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401c16:	48 8d 84 24 20 02 00 	lea    rax,[rsp+0x220]
  401c1d:	00 
  401c1e:	49 39 c7             	cmp    r15,rax
  401c21:	75 bd                	jne    401be0 <run_experiments_as_floats+0x170>
  401c23:	48 8d bc 24 30 01 00 	lea    rdi,[rsp+0x130]
  401c2a:	00 
  401c2b:	e8 50 fd ff ff       	call   401980 <sort_timings>
  401c30:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c35:	e8 f6 31 00 00       	call   404e30 <perf_StartTimer>
  401c3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401c40:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401c46:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401c4c:	4c 89 f1             	mov    rcx,r14
  401c4f:	4c 89 ea             	mov    rdx,r13
  401c52:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401c58:	48 89 ee             	mov    rsi,rbp
  401c5b:	4c 89 e7             	mov    rdi,r12
  401c5e:	e8 ad 1e 00 00       	call   403b10 <kernels_ThreeStencilF32>
  401c63:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c68:	e8 03 32 00 00       	call   404e70 <perf_EndTimer>
  401c6d:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
  401c72:	e8 39 32 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  401c77:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  401c7d:	76 c1                	jbe    401c40 <run_experiments_as_floats+0x1d0>
  401c7f:	4c 8d bc 24 20 02 00 	lea    r15,[rsp+0x220]
  401c86:	00 
  401c87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401c8e:	00 00 
  401c90:	48 89 df             	mov    rdi,rbx
  401c93:	49 83 c7 08          	add    r15,0x8
  401c97:	e8 94 31 00 00       	call   404e30 <perf_StartTimer>
  401c9c:	c5 fa 10 54 24 20    	vmovss xmm2,DWORD PTR [rsp+0x20]
  401ca2:	c5 fa 10 4c 24 14    	vmovss xmm1,DWORD PTR [rsp+0x14]
  401ca8:	c5 fa 10 44 24 10    	vmovss xmm0,DWORD PTR [rsp+0x10]
  401cae:	4c 89 f1             	mov    rcx,r14
  401cb1:	4c 89 ea             	mov    rdx,r13
  401cb4:	48 89 ee             	mov    rsi,rbp
  401cb7:	4c 89 e7             	mov    rdi,r12
  401cba:	e8 51 1e 00 00       	call   403b10 <kernels_ThreeStencilF32>
  401cbf:	48 89 df             	mov    rdi,rbx
  401cc2:	e8 a9 31 00 00       	call   404e70 <perf_EndTimer>
  401cc7:	48 89 df             	mov    rdi,rbx
  401cca:	e8 e1 31 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  401ccf:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401cd3:	49 39 df             	cmp    r15,rbx
  401cd6:	75 b8                	jne    401c90 <run_experiments_as_floats+0x220>
  401cd8:	48 8d bc 24 20 02 00 	lea    rdi,[rsp+0x220]
  401cdf:	00 
  401ce0:	e8 9b fc ff ff       	call   401980 <sort_timings>
  401ce5:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401cec:	00 
  401ced:	be 1a 50 40 00       	mov    esi,0x40501a
  401cf2:	4c 89 ff             	mov    rdi,r15
  401cf5:	31 c0                	xor    eax,eax
  401cf7:	e8 44 f4 ff ff       	call   401140 <sprintf@plt>
  401cfc:	be 34 50 40 00       	mov    esi,0x405034
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
  401d63:	be 88 51 40 00       	mov    esi,0x405188
  401d68:	4c 89 ff             	mov    rdi,r15
  401d6b:	31 c0                	xor    eax,eax
  401d6d:	e8 ce f3 ff ff       	call   401140 <sprintf@plt>
  401d72:	be 34 50 40 00       	mov    esi,0x405034
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
  401d9c:	e8 af 14 00 00       	call   403250 <kernels_MultiplyF32>
  401da1:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401da6:	48 89 d9             	mov    rcx,rbx
  401da9:	ba 04 00 00 00       	mov    edx,0x4
  401dae:	48 89 ef             	mov    rdi,rbp
  401db1:	e8 9a f3 ff ff       	call   401150 <fwrite@plt>
  401db6:	48 89 df             	mov    rdi,rbx
  401db9:	e8 c2 f2 ff ff       	call   401080 <fclose@plt>
  401dbe:	48 8b 94 24 58 13 00 	mov    rdx,QWORD PTR [rsp+0x1358]
  401dc5:	00 
  401dc6:	be 36 50 40 00       	mov    esi,0x405036
  401dcb:	4c 89 ff             	mov    rdi,r15
  401dce:	31 c0                	xor    eax,eax
  401dd0:	e8 6b f3 ff ff       	call   401140 <sprintf@plt>
  401dd5:	be 34 50 40 00       	mov    esi,0x405034
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
  401e0c:	e8 ff 1c 00 00       	call   403b10 <kernels_ThreeStencilF32>
  401e11:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401e16:	48 89 d9             	mov    rcx,rbx
  401e19:	ba 04 00 00 00       	mov    edx,0x4
  401e1e:	48 89 ef             	mov    rdi,rbp
  401e21:	e8 2a f3 ff ff       	call   401150 <fwrite@plt>
  401e26:	48 89 df             	mov    rdi,rbx
  401e29:	e8 52 f2 ff ff       	call   401080 <fclose@plt>
  401e2e:	c5 7b 10 05 d2 36 00 	vmovsd xmm8,QWORD PTR [rip+0x36d2]        # 405508 <__PRETTY_FUNCTION__.0+0x18>
  401e35:	00 
  401e36:	c5 fb 10 3d d2 36 00 	vmovsd xmm7,QWORD PTR [rip+0x36d2]        # 405510 <__PRETTY_FUNCTION__.0+0x20>
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
  401ea7:	41 b8 52 50 40 00    	mov    r8d,0x405052
  401ead:	8b 74 24 24          	mov    esi,DWORD PTR [rsp+0x24]
  401eb1:	bf 08 52 40 00       	mov    edi,0x405208
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
  401f3a:	e8 f1 2e 00 00       	call   404e30 <perf_StartTimer>
  401f3f:	44 0f b6 c3          	movzx  r8d,bl
  401f43:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
  401f48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401f4f:	00 
  401f50:	4c 89 e9             	mov    rcx,r13
  401f53:	48 89 ea             	mov    rdx,rbp
  401f56:	4c 89 e6             	mov    rsi,r12
  401f59:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  401f5e:	48 89 df             	mov    rdi,rbx
  401f61:	e8 8a 0d 00 00       	call   402cf0 <kernels_SaxpyF64>
  401f66:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f6d:	00 
  401f6e:	e8 fd 2e 00 00       	call   404e70 <perf_EndTimer>
  401f73:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401f7a:	00 
  401f7b:	e8 30 2f 00 00       	call   404eb0 <perf_ComputeNSecDelta>
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
  401fa7:	e8 84 2e 00 00       	call   404e30 <perf_StartTimer>
  401fac:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  401fb1:	4d 89 f0             	mov    r8,r14
  401fb4:	4c 89 e9             	mov    rcx,r13
  401fb7:	48 89 ea             	mov    rdx,rbp
  401fba:	4c 89 e6             	mov    rsi,r12
  401fbd:	e8 2e 0d 00 00       	call   402cf0 <kernels_SaxpyF64>
  401fc2:	48 89 df             	mov    rdi,rbx
  401fc5:	e8 a6 2e 00 00       	call   404e70 <perf_EndTimer>
  401fca:	48 89 df             	mov    rdi,rbx
  401fcd:	e8 de 2e 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  401fd2:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  401fd6:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  401fdd:	00 
  401fde:	49 39 c7             	cmp    r15,rax
  401fe1:	75 bd                	jne    401fa0 <run_experiments_as_doubles+0xb0>
  401fe3:	48 8d 7c 24 50       	lea    rdi,[rsp+0x50]
  401fe8:	e8 93 f9 ff ff       	call   401980 <sort_timings>
  401fed:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  401ff4:	00 
  401ff5:	e8 36 2e 00 00       	call   404e30 <perf_StartTimer>
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
  402021:	e8 0a 18 00 00       	call   403830 <kernels_MultiplyF64>
  402026:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40202d:	00 
  40202e:	e8 3d 2e 00 00       	call   404e70 <perf_EndTimer>
  402033:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40203a:	00 
  40203b:	e8 70 2e 00 00       	call   404eb0 <perf_ComputeNSecDelta>
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
  402067:	e8 c4 2d 00 00       	call   404e30 <perf_StartTimer>
  40206c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402071:	4d 89 f0             	mov    r8,r14
  402074:	4c 89 e9             	mov    rcx,r13
  402077:	48 89 ea             	mov    rdx,rbp
  40207a:	4c 89 e6             	mov    rsi,r12
  40207d:	e8 ae 17 00 00       	call   403830 <kernels_MultiplyF64>
  402082:	48 89 df             	mov    rdi,rbx
  402085:	e8 e6 2d 00 00       	call   404e70 <perf_EndTimer>
  40208a:	48 89 df             	mov    rdi,rbx
  40208d:	e8 1e 2e 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  402092:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402096:	48 8d 84 24 30 02 00 	lea    rax,[rsp+0x230]
  40209d:	00 
  40209e:	49 39 c7             	cmp    r15,rax
  4020a1:	75 bd                	jne    402060 <run_experiments_as_doubles+0x170>
  4020a3:	48 8d bc 24 40 01 00 	lea    rdi,[rsp+0x140]
  4020aa:	00 
  4020ab:	e8 d0 f8 ff ff       	call   401980 <sort_timings>
  4020b0:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020b5:	e8 76 2d 00 00       	call   404e30 <perf_StartTimer>
  4020ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4020c0:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  4020c6:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  4020cc:	4c 89 f1             	mov    rcx,r14
  4020cf:	4c 89 ea             	mov    rdx,r13
  4020d2:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  4020d8:	48 89 ee             	mov    rsi,rbp
  4020db:	4c 89 e7             	mov    rdi,r12
  4020de:	e8 2d 27 00 00       	call   404810 <kernels_ThreeStencilF64>
  4020e3:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020e8:	e8 83 2d 00 00       	call   404e70 <perf_EndTimer>
  4020ed:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  4020f2:	e8 b9 2d 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  4020f7:	48 3d ff e0 f5 05    	cmp    rax,0x5f5e0ff
  4020fd:	76 c1                	jbe    4020c0 <run_experiments_as_doubles+0x1d0>
  4020ff:	4c 8d bc 24 30 02 00 	lea    r15,[rsp+0x230]
  402106:	00 
  402107:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40210e:	00 00 
  402110:	48 89 df             	mov    rdi,rbx
  402113:	49 83 c7 08          	add    r15,0x8
  402117:	e8 14 2d 00 00       	call   404e30 <perf_StartTimer>
  40211c:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  402122:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402128:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40212e:	4c 89 f1             	mov    rcx,r14
  402131:	4c 89 ea             	mov    rdx,r13
  402134:	48 89 ee             	mov    rsi,rbp
  402137:	4c 89 e7             	mov    rdi,r12
  40213a:	e8 d1 26 00 00       	call   404810 <kernels_ThreeStencilF64>
  40213f:	48 89 df             	mov    rdi,rbx
  402142:	e8 29 2d 00 00       	call   404e70 <perf_EndTimer>
  402147:	48 89 df             	mov    rdi,rbx
  40214a:	e8 61 2d 00 00       	call   404eb0 <perf_ComputeNSecDelta>
  40214f:	49 89 47 f8          	mov    QWORD PTR [r15-0x8],rax
  402153:	49 39 df             	cmp    r15,rbx
  402156:	75 b8                	jne    402110 <run_experiments_as_doubles+0x220>
  402158:	48 8d bc 24 30 02 00 	lea    rdi,[rsp+0x230]
  40215f:	00 
  402160:	e8 1b f8 ff ff       	call   401980 <sort_timings>
  402165:	48 8b 94 24 68 13 00 	mov    rdx,QWORD PTR [rsp+0x1368]
  40216c:	00 
  40216d:	4c 89 ff             	mov    rdi,r15
  402170:	be 1a 50 40 00       	mov    esi,0x40501a
  402175:	31 c0                	xor    eax,eax
  402177:	e8 c4 ef ff ff       	call   401140 <sprintf@plt>
  40217c:	4c 89 ff             	mov    rdi,r15
  40217f:	be 34 50 40 00       	mov    esi,0x405034
  402184:	e8 97 ef ff ff       	call   401120 <fopen@plt>
  402189:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  40218e:	4d 89 f0             	mov    r8,r14
  402191:	4c 89 e9             	mov    rcx,r13
  402194:	48 89 ea             	mov    rdx,rbp
  402197:	4c 89 e6             	mov    rsi,r12
  40219a:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40219f:	e8 4c 0b 00 00       	call   402cf0 <kernels_SaxpyF64>
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
  4021e1:	be 88 51 40 00       	mov    esi,0x405188
  4021e6:	31 c0                	xor    eax,eax
  4021e8:	e8 53 ef ff ff       	call   401140 <sprintf@plt>
  4021ed:	4c 89 ff             	mov    rdi,r15
  4021f0:	be 34 50 40 00       	mov    esi,0x405034
  4021f5:	e8 26 ef ff ff       	call   401120 <fopen@plt>
  4021fa:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4021ff:	4d 89 f0             	mov    r8,r14
  402202:	4c 89 e9             	mov    rcx,r13
  402205:	48 89 ea             	mov    rdx,rbp
  402208:	4c 89 e6             	mov    rsi,r12
  40220b:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402210:	e8 1b 16 00 00       	call   403830 <kernels_MultiplyF64>
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
  40223f:	be 36 50 40 00       	mov    esi,0x405036
  402244:	31 c0                	xor    eax,eax
  402246:	e8 f5 ee ff ff       	call   401140 <sprintf@plt>
  40224b:	4c 89 ff             	mov    rdi,r15
  40224e:	be 34 50 40 00       	mov    esi,0x405034
  402253:	e8 c8 ee ff ff       	call   401120 <fopen@plt>
  402258:	c5 fb 10 54 24 20    	vmovsd xmm2,QWORD PTR [rsp+0x20]
  40225e:	c5 fb 10 4c 24 18    	vmovsd xmm1,QWORD PTR [rsp+0x18]
  402264:	4c 89 f1             	mov    rcx,r14
  402267:	c5 fb 10 44 24 10    	vmovsd xmm0,QWORD PTR [rsp+0x10]
  40226d:	49 89 c7             	mov    r15,rax
  402270:	4c 89 ea             	mov    rdx,r13
  402273:	48 89 ee             	mov    rsi,rbp
  402276:	4c 89 e7             	mov    rdi,r12
  402279:	e8 92 25 00 00       	call   404810 <kernels_ThreeStencilF64>
  40227e:	4c 89 f9             	mov    rcx,r15
  402281:	48 89 de             	mov    rsi,rbx
  402284:	ba 08 00 00 00       	mov    edx,0x8
  402289:	48 89 ef             	mov    rdi,rbp
  40228c:	e8 bf ee ff ff       	call   401150 <fwrite@plt>
  402291:	4c 89 ff             	mov    rdi,r15
  402294:	e8 e7 ed ff ff       	call   401080 <fclose@plt>
  402299:	c5 7b 10 05 67 32 00 	vmovsd xmm8,QWORD PTR [rip+0x3267]        # 405508 <__PRETTY_FUNCTION__.0+0x18>
  4022a0:	00 
  4022a1:	c5 fb 10 3d 67 32 00 	vmovsd xmm7,QWORD PTR [rip+0x3267]        # 405510 <__PRETTY_FUNCTION__.0+0x20>
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
  402312:	41 b8 58 50 40 00    	mov    r8d,0x405058
  402318:	8b 74 24 34          	mov    esi,DWORD PTR [rsp+0x34]
  40231c:	bf 08 52 40 00       	mov    edi,0x405208
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
  402380:	49 89 f1             	mov    r9,rsi
  402383:	49 89 ca             	mov    r10,rcx
  402386:	49 83 f8 04          	cmp    r8,0x4
  40238a:	0f 84 e0 04 00 00    	je     402870 <kernels_SaxpyF32+0x4f0>
  402390:	0f 87 6a 02 00 00    	ja     402600 <kernels_SaxpyF32+0x280>
  402396:	49 83 f8 01          	cmp    r8,0x1
  40239a:	0f 84 10 08 00 00    	je     402bb0 <kernels_SaxpyF32+0x830>
  4023a0:	49 83 f8 02          	cmp    r8,0x2
  4023a4:	0f 85 86 07 00 00    	jne    402b30 <kernels_SaxpyF32+0x7b0>
  4023aa:	48 85 c9             	test   rcx,rcx
  4023ad:	0f 84 dd 08 00 00    	je     402c90 <kernels_SaxpyF32+0x910>
  4023b3:	4c 8d 41 ff          	lea    r8,[rcx-0x1]
  4023b7:	49 83 f8 0f          	cmp    r8,0xf
  4023bb:	0f 86 0a 09 00 00    	jbe    402ccb <kernels_SaxpyF32+0x94b>
  4023c1:	62 f1 7d 48 6f 05 75 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x3175]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  4023c8:	31 00 00 
  4023cb:	48 89 d0             	mov    rax,rdx
  4023ce:	48 89 fe             	mov    rsi,rdi
  4023d1:	4c 89 c9             	mov    rcx,r9
  4023d4:	49 c1 e8 04          	shr    r8,0x4
  4023d8:	4d 89 c3             	mov    r11,r8
  4023db:	49 c1 e3 07          	shl    r11,0x7
  4023df:	49 01 d3             	add    r11,rdx
  4023e2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4023e9:	00 00 00 00 
  4023ed:	0f 1f 00             	nop    DWORD PTR [rax]
  4023f0:	62 f1 7c 48 10 10    	vmovups zmm2,ZMMWORD PTR [rax]
  4023f6:	62 f1 7c 48 10 0e    	vmovups zmm1,ZMMWORD PTR [rsi]
  4023fc:	62 f1 7c 48 10 19    	vmovups zmm3,ZMMWORD PTR [rcx]
  402402:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  402406:	48 83 ee 80          	sub    rsi,0xffffffffffffff80
  40240a:	48 83 e9 80          	sub    rcx,0xffffffffffffff80
  40240e:	62 f2 7d 48 7f 50 ff 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rax-0x40]
  402415:	62 f2 7d 48 7f 59 ff 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rcx-0x40]
  40241c:	62 f2 7d 48 7f 4e ff 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsi-0x40]
  402423:	62 f2 6d 48 98 cb    	vfmadd132ps zmm1,zmm2,zmm3
  402429:	62 f3 7d 28 19 cb 01 	vextractf32x4 xmm3,ymm1,0x1
  402430:	c4 e3 79 17 48 88 01 	vextractps DWORD PTR [rax-0x78],xmm1,0x1
  402437:	c4 e3 79 17 48 90 02 	vextractps DWORD PTR [rax-0x70],xmm1,0x2
  40243e:	c4 e3 79 17 48 98 03 	vextractps DWORD PTR [rax-0x68],xmm1,0x3
  402445:	c5 fa 11 48 80       	vmovss DWORD PTR [rax-0x80],xmm1
  40244a:	c5 fa 11 58 a0       	vmovss DWORD PTR [rax-0x60],xmm3
  40244f:	62 f3 75 28 03 d9 05 	valignd ymm3,ymm1,ymm1,0x5
  402456:	62 f3 75 28 03 d1 07 	valignd ymm2,ymm1,ymm1,0x7
  40245d:	c5 fa 11 58 a8       	vmovss DWORD PTR [rax-0x58],xmm3
  402462:	62 f3 75 28 03 d9 06 	valignd ymm3,ymm1,ymm1,0x6
  402469:	62 f3 7d 48 1b c9 01 	vextractf32x8 ymm1,zmm1,0x1
  402470:	c5 fa 11 50 b8       	vmovss DWORD PTR [rax-0x48],xmm2
  402475:	c5 fa 11 48 c0       	vmovss DWORD PTR [rax-0x40],xmm1
  40247a:	c4 e3 79 17 48 c8 01 	vextractps DWORD PTR [rax-0x38],xmm1,0x1
  402481:	c4 e3 79 17 48 d0 02 	vextractps DWORD PTR [rax-0x30],xmm1,0x2
  402488:	c4 e3 79 17 48 d8 03 	vextractps DWORD PTR [rax-0x28],xmm1,0x3
  40248f:	62 f3 7d 28 19 ca 01 	vextractf32x4 xmm2,ymm1,0x1
  402496:	c5 fa 11 58 b0       	vmovss DWORD PTR [rax-0x50],xmm3
  40249b:	c5 fa 11 50 e0       	vmovss DWORD PTR [rax-0x20],xmm2
  4024a0:	62 f3 75 28 03 d1 05 	valignd ymm2,ymm1,ymm1,0x5
  4024a7:	c5 fa 11 50 e8       	vmovss DWORD PTR [rax-0x18],xmm2
  4024ac:	62 f3 75 28 03 d1 06 	valignd ymm2,ymm1,ymm1,0x6
  4024b3:	62 f3 75 28 03 c9 07 	valignd ymm1,ymm1,ymm1,0x7
  4024ba:	c5 fa 11 50 f0       	vmovss DWORD PTR [rax-0x10],xmm2
  4024bf:	c5 fa 11 48 f8       	vmovss DWORD PTR [rax-0x8],xmm1
  4024c4:	4c 39 d8             	cmp    rax,r11
  4024c7:	0f 85 23 ff ff ff    	jne    4023f0 <kernels_SaxpyF32+0x70>
  4024cd:	49 c1 e0 04          	shl    r8,0x4
  4024d1:	4c 89 d1             	mov    rcx,r10
  4024d4:	4c 29 c1             	sub    rcx,r8
  4024d7:	48 ff c9             	dec    rcx
  4024da:	48 83 f9 07          	cmp    rcx,0x7
  4024de:	0f 86 dd 07 00 00    	jbe    402cc1 <kernels_SaxpyF32+0x941>
  4024e4:	4a 8d 34 c5 00 00 00 	lea    rsi,[r8*8+0x0]
  4024eb:	00 
  4024ec:	c5 fd 6f 0d 4c 30 00 	vmovdqa ymm1,YMMWORD PTR [rip+0x304c]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  4024f3:	00 
  4024f4:	48 8d 04 32          	lea    rax,[rdx+rsi*1]
  4024f8:	4c 8d 1c 37          	lea    r11,[rdi+rsi*1]
  4024fc:	4c 01 ce             	add    rsi,r9
  4024ff:	c5 fc 10 18          	vmovups ymm3,YMMWORD PTR [rax]
  402503:	c5 fc 10 16          	vmovups ymm2,YMMWORD PTR [rsi]
  402507:	c4 c1 7c 10 03       	vmovups ymm0,YMMWORD PTR [r11]
  40250c:	62 f2 75 28 7f 56 01 	vpermt2ps ymm2,ymm1,YMMWORD PTR [rsi+0x20]
  402513:	62 d2 75 28 7f 43 01 	vpermt2ps ymm0,ymm1,YMMWORD PTR [r11+0x20]
  40251a:	62 f2 65 28 77 48 01 	vpermi2ps ymm1,ymm3,YMMWORD PTR [rax+0x20]
  402521:	48 89 ce             	mov    rsi,rcx
  402524:	c4 e2 75 98 c2       	vfmadd132ps ymm0,ymm1,ymm2
  402529:	48 83 e6 f8          	and    rsi,0xfffffffffffffff8
  40252d:	62 f3 7d 28 19 c1 01 	vextractf32x4 xmm1,ymm0,0x1
  402534:	c4 e3 79 17 40 08 01 	vextractps DWORD PTR [rax+0x8],xmm0,0x1
  40253b:	c4 e3 79 17 40 10 02 	vextractps DWORD PTR [rax+0x10],xmm0,0x2
  402542:	c4 e3 79 17 40 18 03 	vextractps DWORD PTR [rax+0x18],xmm0,0x3
  402549:	c5 fa 11 00          	vmovss DWORD PTR [rax],xmm0
  40254d:	c5 fa 11 48 20       	vmovss DWORD PTR [rax+0x20],xmm1
  402552:	62 f3 7d 28 03 c8 05 	valignd ymm1,ymm0,ymm0,0x5
  402559:	c5 fa 11 48 28       	vmovss DWORD PTR [rax+0x28],xmm1
  40255e:	62 f3 7d 28 03 c8 06 	valignd ymm1,ymm0,ymm0,0x6
  402565:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  40256c:	c5 fa 11 48 30       	vmovss DWORD PTR [rax+0x30],xmm1
  402571:	c5 fa 11 40 38       	vmovss DWORD PTR [rax+0x38],xmm0
  402576:	49 8d 04 30          	lea    rax,[r8+rsi*1]
  40257a:	48 29 f1             	sub    rcx,rsi
  40257d:	48 83 f9 03          	cmp    rcx,0x3
  402581:	76 58                	jbe    4025db <kernels_SaxpyF32+0x25b>
  402583:	49 01 f0             	add    r8,rsi
  402586:	48 83 e1 fc          	and    rcx,0xfffffffffffffffc
  40258a:	49 c1 e0 03          	shl    r8,0x3
  40258e:	4a 8d 34 02          	lea    rsi,[rdx+r8*1]
  402592:	4e 8d 1c 07          	lea    r11,[rdi+r8*1]
  402596:	c4 81 78 10 14 01    	vmovups xmm2,XMMWORD PTR [r9+r8*1]
  40259c:	c4 81 68 c6 54 01 10 	vshufps xmm2,xmm2,XMMWORD PTR [r9+r8*1+0x10],0x88
  4025a3:	88 
  4025a4:	c5 f8 10 0e          	vmovups xmm1,XMMWORD PTR [rsi]
  4025a8:	c4 c1 78 10 03       	vmovups xmm0,XMMWORD PTR [r11]
  4025ad:	c5 f0 c6 4e 10 88    	vshufps xmm1,xmm1,XMMWORD PTR [rsi+0x10],0x88
  4025b3:	48 01 c8             	add    rax,rcx
  4025b6:	c4 c1 78 c6 43 10 88 	vshufps xmm0,xmm0,XMMWORD PTR [r11+0x10],0x88
  4025bd:	c4 e2 71 98 c2       	vfmadd132ps xmm0,xmm1,xmm2
  4025c2:	c5 fa 11 06          	vmovss DWORD PTR [rsi],xmm0
  4025c6:	c4 e3 79 17 46 08 01 	vextractps DWORD PTR [rsi+0x8],xmm0,0x1
  4025cd:	c4 e3 79 17 46 10 02 	vextractps DWORD PTR [rsi+0x10],xmm0,0x2
  4025d4:	c4 e3 79 17 46 18 03 	vextractps DWORD PTR [rsi+0x18],xmm0,0x3
  4025db:	c5 fa 10 2c c2       	vmovss xmm5,DWORD PTR [rdx+rax*8]
  4025e0:	c5 fa 10 04 c7       	vmovss xmm0,DWORD PTR [rdi+rax*8]
  4025e5:	c4 c2 51 99 04 c1    	vfmadd132ss xmm0,xmm5,DWORD PTR [r9+rax*8]
  4025eb:	c5 fa 11 04 c2       	vmovss DWORD PTR [rdx+rax*8],xmm0
  4025f0:	48 ff c0             	inc    rax
  4025f3:	4c 39 d0             	cmp    rax,r10
  4025f6:	72 e3                	jb     4025db <kernels_SaxpyF32+0x25b>
  4025f8:	c5 f8 77             	vzeroupper
  4025fb:	c3                   	ret
  4025fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402600:	49 83 f8 08          	cmp    r8,0x8
  402604:	0f 85 26 05 00 00    	jne    402b30 <kernels_SaxpyF32+0x7b0>
  40260a:	48 85 c9             	test   rcx,rcx
  40260d:	0f 84 8d 06 00 00    	je     402ca0 <kernels_SaxpyF32+0x920>
  402613:	48 8d 49 ff          	lea    rcx,[rcx-0x1]
  402617:	48 83 f9 0f          	cmp    rcx,0xf
  40261b:	0f 86 b2 06 00 00    	jbe    402cd3 <kernels_SaxpyF32+0x953>
  402621:	62 f1 7d 48 6f 05 15 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x2f15]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  402628:	2f 00 00 
  40262b:	48 89 d0             	mov    rax,rdx
  40262e:	48 89 fe             	mov    rsi,rdi
  402631:	48 c1 e9 04          	shr    rcx,0x4
  402635:	49 89 c8             	mov    r8,rcx
  402638:	4c 89 c9             	mov    rcx,r9
  40263b:	4d 89 c3             	mov    r11,r8
  40263e:	49 c1 e3 09          	shl    r11,0x9
  402642:	49 01 d3             	add    r11,rdx
  402645:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40264c:	00 00 00 00 
  402650:	62 f1 7c 48 10 0e    	vmovups zmm1,ZMMWORD PTR [rsi]
  402656:	62 f1 7c 48 10 56 02 	vmovups zmm2,ZMMWORD PTR [rsi+0x80]
  40265d:	62 f1 7c 48 10 5e 06 	vmovups zmm3,ZMMWORD PTR [rsi+0x180]
  402664:	48 05 00 02 00 00    	add    rax,0x200
  40266a:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  402671:	62 f1 7c 48 10 68 fe 	vmovups zmm5,ZMMWORD PTR [rax-0x80]
  402678:	48 81 c6 00 02 00 00 	add    rsi,0x200
  40267f:	48 81 c1 00 02 00 00 	add    rcx,0x200
  402686:	62 f2 7d 48 7f 56 fb 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsi-0x140]
  40268d:	62 f2 7d 48 7f 4e f9 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsi-0x1c0]
  402694:	62 f2 7d 48 7f 5e ff 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsi-0x40]
  40269b:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  4026a1:	62 f1 7c 48 10 56 fc 	vmovups zmm2,ZMMWORD PTR [rsi-0x100]
  4026a8:	62 f2 7d 48 7f 61 ff 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rcx-0x40]
  4026af:	62 f2 7d 48 7f 68 ff 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rax-0x40]
  4026b6:	62 f2 7d 48 7f 56 fd 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsi-0xc0]
  4026bd:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  4026c3:	62 f1 7c 48 10 59 f8 	vmovups zmm3,ZMMWORD PTR [rcx-0x200]
  4026ca:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  4026d0:	62 f1 7c 48 10 51 fa 	vmovups zmm2,ZMMWORD PTR [rcx-0x180]
  4026d7:	62 f2 7d 48 7f 59 f9 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rcx-0x1c0]
  4026de:	62 f2 7d 48 7f 51 fb 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rcx-0x140]
  4026e5:	62 f2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm2
  4026eb:	62 f1 7c 48 10 51 fc 	vmovups zmm2,ZMMWORD PTR [rcx-0x100]
  4026f2:	62 f2 7d 48 7f 51 fd 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rcx-0xc0]
  4026f9:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  4026ff:	62 f1 7c 48 10 60 fa 	vmovups zmm4,ZMMWORD PTR [rax-0x180]
  402706:	62 f2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm2
  40270c:	62 f1 7c 48 10 50 f8 	vmovups zmm2,ZMMWORD PTR [rax-0x200]
  402713:	62 f2 7d 48 7f 60 fb 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rax-0x140]
  40271a:	62 f2 7d 48 7f 50 f9 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rax-0x1c0]
  402721:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  402727:	62 f1 7c 48 10 60 fc 	vmovups zmm4,ZMMWORD PTR [rax-0x100]
  40272e:	62 f2 7d 48 7f 60 fd 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rax-0xc0]
  402735:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  40273b:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  402741:	62 f2 6d 48 98 cb    	vfmadd132ps zmm1,zmm2,zmm3
  402747:	62 f3 7d 28 19 cb 01 	vextractf32x4 xmm3,ymm1,0x1
  40274e:	c4 e3 79 17 88 20 fe 	vextractps DWORD PTR [rax-0x1e0],xmm1,0x1
  402755:	ff ff 01 
  402758:	c4 e3 79 17 88 40 fe 	vextractps DWORD PTR [rax-0x1c0],xmm1,0x2
  40275f:	ff ff 02 
  402762:	c4 e3 79 17 88 60 fe 	vextractps DWORD PTR [rax-0x1a0],xmm1,0x3
  402769:	ff ff 03 
  40276c:	c5 fa 11 88 00 fe ff 	vmovss DWORD PTR [rax-0x200],xmm1
  402773:	ff 
  402774:	c5 fa 11 98 80 fe ff 	vmovss DWORD PTR [rax-0x180],xmm3
  40277b:	ff 
  40277c:	62 f3 75 28 03 d9 05 	valignd ymm3,ymm1,ymm1,0x5
  402783:	62 f3 75 28 03 d1 07 	valignd ymm2,ymm1,ymm1,0x7
  40278a:	c5 fa 11 98 a0 fe ff 	vmovss DWORD PTR [rax-0x160],xmm3
  402791:	ff 
  402792:	62 f3 75 28 03 d9 06 	valignd ymm3,ymm1,ymm1,0x6
  402799:	62 f3 7d 48 1b c9 01 	vextractf32x8 ymm1,zmm1,0x1
  4027a0:	c5 fa 11 90 e0 fe ff 	vmovss DWORD PTR [rax-0x120],xmm2
  4027a7:	ff 
  4027a8:	62 f3 7d 28 19 ca 01 	vextractf32x4 xmm2,ymm1,0x1
  4027af:	c5 fa 11 98 c0 fe ff 	vmovss DWORD PTR [rax-0x140],xmm3
  4027b6:	ff 
  4027b7:	c5 fa 11 88 00 ff ff 	vmovss DWORD PTR [rax-0x100],xmm1
  4027be:	ff 
  4027bf:	c4 e3 79 17 88 20 ff 	vextractps DWORD PTR [rax-0xe0],xmm1,0x1
  4027c6:	ff ff 01 
  4027c9:	c4 e3 79 17 88 40 ff 	vextractps DWORD PTR [rax-0xc0],xmm1,0x2
  4027d0:	ff ff 02 
  4027d3:	c4 e3 79 17 88 60 ff 	vextractps DWORD PTR [rax-0xa0],xmm1,0x3
  4027da:	ff ff 03 
  4027dd:	c5 fa 11 50 80       	vmovss DWORD PTR [rax-0x80],xmm2
  4027e2:	62 f3 75 28 03 d1 05 	valignd ymm2,ymm1,ymm1,0x5
  4027e9:	c5 fa 11 50 a0       	vmovss DWORD PTR [rax-0x60],xmm2
  4027ee:	62 f3 75 28 03 d1 06 	valignd ymm2,ymm1,ymm1,0x6
  4027f5:	62 f3 75 28 03 c9 07 	valignd ymm1,ymm1,ymm1,0x7
  4027fc:	c5 fa 11 50 c0       	vmovss DWORD PTR [rax-0x40],xmm2
  402801:	c5 fa 11 48 e0       	vmovss DWORD PTR [rax-0x20],xmm1
  402806:	4c 39 d8             	cmp    rax,r11
  402809:	0f 85 41 fe ff ff    	jne    402650 <kernels_SaxpyF32+0x2d0>
  40280f:	4c 89 c1             	mov    rcx,r8
  402812:	48 c1 e1 04          	shl    rcx,0x4
  402816:	c5 f8 77             	vzeroupper
  402819:	48 89 c8             	mov    rax,rcx
  40281c:	48 c1 e0 05          	shl    rax,0x5
  402820:	48 01 c2             	add    rdx,rax
  402823:	48 01 c7             	add    rdi,rax
  402826:	49 01 c1             	add    r9,rax
  402829:	31 c0                	xor    eax,eax
  40282b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402832:	00 00 00 00 
  402836:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40283d:	00 00 00 
  402840:	c5 fa 10 34 02       	vmovss xmm6,DWORD PTR [rdx+rax*1]
  402845:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  40284a:	48 ff c1             	inc    rcx
  40284d:	c4 c2 49 99 04 01    	vfmadd132ss xmm0,xmm6,DWORD PTR [r9+rax*1]
  402853:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402858:	48 83 c0 20          	add    rax,0x20
  40285c:	4c 39 d1             	cmp    rcx,r10
  40285f:	72 df                	jb     402840 <kernels_SaxpyF32+0x4c0>
  402861:	c3                   	ret
  402862:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402869:	00 00 00 00 
  40286d:	0f 1f 00             	nop    DWORD PTR [rax]
  402870:	48 85 c9             	test   rcx,rcx
  402873:	0f 84 37 04 00 00    	je     402cb0 <kernels_SaxpyF32+0x930>
  402879:	55                   	push   rbp
  40287a:	4c 8d 59 ff          	lea    r11,[rcx-0x1]
  40287e:	48 89 e5             	mov    rbp,rsp
  402881:	53                   	push   rbx
  402882:	49 83 fb 0f          	cmp    r11,0xf
  402886:	0f 86 4e 04 00 00    	jbe    402cda <kernels_SaxpyF32+0x95a>
  40288c:	62 f1 7d 48 6f 05 aa 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x2caa]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  402893:	2c 00 00 
  402896:	4c 89 d8             	mov    rax,r11
  402899:	48 89 fe             	mov    rsi,rdi
  40289c:	4c 89 c9             	mov    rcx,r9
  40289f:	48 c1 e8 04          	shr    rax,0x4
  4028a3:	49 89 c0             	mov    r8,rax
  4028a6:	48 89 c3             	mov    rbx,rax
  4028a9:	48 89 d0             	mov    rax,rdx
  4028ac:	49 c1 e0 08          	shl    r8,0x8
  4028b0:	49 01 d0             	add    r8,rdx
  4028b3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4028ba:	00 00 00 00 
  4028be:	66 90                	xchg   ax,ax
  4028c0:	62 f1 7c 48 10 0e    	vmovups zmm1,ZMMWORD PTR [rsi]
  4028c6:	62 f1 7c 48 10 56 02 	vmovups zmm2,ZMMWORD PTR [rsi+0x80]
  4028cd:	62 f1 7c 48 10 19    	vmovups zmm3,ZMMWORD PTR [rcx]
  4028d3:	48 05 00 01 00 00    	add    rax,0x100
  4028d9:	62 f1 7c 48 10 60 fe 	vmovups zmm4,ZMMWORD PTR [rax-0x80]
  4028e0:	48 81 c6 00 01 00 00 	add    rsi,0x100
  4028e7:	48 81 c1 00 01 00 00 	add    rcx,0x100
  4028ee:	62 f2 7d 48 7f 56 ff 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsi-0x40]
  4028f5:	62 f2 7d 48 7f 4e fd 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsi-0xc0]
  4028fc:	62 f2 7d 48 7f 59 fd 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rcx-0xc0]
  402903:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  402909:	62 f1 7c 48 10 51 fe 	vmovups zmm2,ZMMWORD PTR [rcx-0x80]
  402910:	62 f2 7d 48 7f 60 ff 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rax-0x40]
  402917:	62 f2 7d 48 7f 51 ff 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rcx-0x40]
  40291e:	62 f2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm2
  402924:	62 f1 7c 48 10 50 fc 	vmovups zmm2,ZMMWORD PTR [rax-0x100]
  40292b:	62 f2 7d 48 7f 50 fd 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rax-0xc0]
  402932:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  402938:	62 f2 6d 48 98 cb    	vfmadd132ps zmm1,zmm2,zmm3
  40293e:	62 f3 7d 28 19 cb 01 	vextractf32x4 xmm3,ymm1,0x1
  402945:	c4 e3 79 17 88 10 ff 	vextractps DWORD PTR [rax-0xf0],xmm1,0x1
  40294c:	ff ff 01 
  40294f:	c4 e3 79 17 88 20 ff 	vextractps DWORD PTR [rax-0xe0],xmm1,0x2
  402956:	ff ff 02 
  402959:	c4 e3 79 17 88 30 ff 	vextractps DWORD PTR [rax-0xd0],xmm1,0x3
  402960:	ff ff 03 
  402963:	c5 fa 11 88 00 ff ff 	vmovss DWORD PTR [rax-0x100],xmm1
  40296a:	ff 
  40296b:	c5 fa 11 98 40 ff ff 	vmovss DWORD PTR [rax-0xc0],xmm3
  402972:	ff 
  402973:	62 f3 75 28 03 d9 05 	valignd ymm3,ymm1,ymm1,0x5
  40297a:	62 f3 75 28 03 d1 07 	valignd ymm2,ymm1,ymm1,0x7
  402981:	c5 fa 11 98 50 ff ff 	vmovss DWORD PTR [rax-0xb0],xmm3
  402988:	ff 
  402989:	62 f3 75 28 03 d9 06 	valignd ymm3,ymm1,ymm1,0x6
  402990:	62 f3 7d 48 1b c9 01 	vextractf32x8 ymm1,zmm1,0x1
  402997:	c5 fa 11 90 70 ff ff 	vmovss DWORD PTR [rax-0x90],xmm2
  40299e:	ff 
  40299f:	c5 fa 11 48 80       	vmovss DWORD PTR [rax-0x80],xmm1
  4029a4:	c4 e3 79 17 48 90 01 	vextractps DWORD PTR [rax-0x70],xmm1,0x1
  4029ab:	c4 e3 79 17 48 a0 02 	vextractps DWORD PTR [rax-0x60],xmm1,0x2
  4029b2:	c4 e3 79 17 48 b0 03 	vextractps DWORD PTR [rax-0x50],xmm1,0x3
  4029b9:	62 f3 7d 28 19 ca 01 	vextractf32x4 xmm2,ymm1,0x1
  4029c0:	c5 fa 11 98 60 ff ff 	vmovss DWORD PTR [rax-0xa0],xmm3
  4029c7:	ff 
  4029c8:	c5 fa 11 50 c0       	vmovss DWORD PTR [rax-0x40],xmm2
  4029cd:	62 f3 75 28 03 d1 05 	valignd ymm2,ymm1,ymm1,0x5
  4029d4:	c5 fa 11 50 d0       	vmovss DWORD PTR [rax-0x30],xmm2
  4029d9:	62 f3 75 28 03 d1 06 	valignd ymm2,ymm1,ymm1,0x6
  4029e0:	62 f3 75 28 03 c9 07 	valignd ymm1,ymm1,ymm1,0x7
  4029e7:	c5 fa 11 50 e0       	vmovss DWORD PTR [rax-0x20],xmm2
  4029ec:	c5 fa 11 48 f0       	vmovss DWORD PTR [rax-0x10],xmm1
  4029f1:	49 39 c0             	cmp    r8,rax
  4029f4:	0f 85 c6 fe ff ff    	jne    4028c0 <kernels_SaxpyF32+0x540>
  4029fa:	48 89 d9             	mov    rcx,rbx
  4029fd:	48 c1 e1 04          	shl    rcx,0x4
  402a01:	49 29 cb             	sub    r11,rcx
  402a04:	49 83 fb 07          	cmp    r11,0x7
  402a08:	0f 86 c8 00 00 00    	jbe    402ad6 <kernels_SaxpyF32+0x756>
  402a0e:	48 89 ce             	mov    rsi,rcx
  402a11:	c5 fd 6f 0d 27 2b 00 	vmovdqa ymm1,YMMWORD PTR [rip+0x2b27]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  402a18:	00 
  402a19:	49 83 e3 f8          	and    r11,0xfffffffffffffff8
  402a1d:	48 c1 e6 04          	shl    rsi,0x4
  402a21:	4c 8d 04 37          	lea    r8,[rdi+rsi*1]
  402a25:	48 8d 04 32          	lea    rax,[rdx+rsi*1]
  402a29:	4c 01 ce             	add    rsi,r9
  402a2c:	4c 01 d9             	add    rcx,r11
  402a2f:	c4 c1 7c 10 00       	vmovups ymm0,YMMWORD PTR [r8]
  402a34:	c4 c1 7c 10 50 40    	vmovups ymm2,YMMWORD PTR [r8+0x40]
  402a3a:	c5 fc 10 5e 40       	vmovups ymm3,YMMWORD PTR [rsi+0x40]
  402a3f:	c5 fc 10 60 40       	vmovups ymm4,YMMWORD PTR [rax+0x40]
  402a44:	62 d2 75 28 7f 50 03 	vpermt2ps ymm2,ymm1,YMMWORD PTR [r8+0x60]
  402a4b:	62 d2 75 28 7f 40 01 	vpermt2ps ymm0,ymm1,YMMWORD PTR [r8+0x20]
  402a52:	62 f2 75 28 7f 5e 03 	vpermt2ps ymm3,ymm1,YMMWORD PTR [rsi+0x60]
  402a59:	62 f2 75 28 7f c2    	vpermt2ps ymm0,ymm1,ymm2
  402a5f:	c5 fc 10 16          	vmovups ymm2,YMMWORD PTR [rsi]
  402a63:	62 f2 75 28 7f 60 03 	vpermt2ps ymm4,ymm1,YMMWORD PTR [rax+0x60]
  402a6a:	62 f2 75 28 7f 56 01 	vpermt2ps ymm2,ymm1,YMMWORD PTR [rsi+0x20]
  402a71:	62 f2 75 28 7f d3    	vpermt2ps ymm2,ymm1,ymm3
  402a77:	c5 fc 10 18          	vmovups ymm3,YMMWORD PTR [rax]
  402a7b:	62 f2 75 28 7f 58 01 	vpermt2ps ymm3,ymm1,YMMWORD PTR [rax+0x20]
  402a82:	62 f2 65 28 77 cc    	vpermi2ps ymm1,ymm3,ymm4
  402a88:	c4 e2 75 98 c2       	vfmadd132ps ymm0,ymm1,ymm2
  402a8d:	62 f3 7d 28 19 c1 01 	vextractf32x4 xmm1,ymm0,0x1
  402a94:	c4 e3 79 17 40 10 01 	vextractps DWORD PTR [rax+0x10],xmm0,0x1
  402a9b:	c4 e3 79 17 40 20 02 	vextractps DWORD PTR [rax+0x20],xmm0,0x2
  402aa2:	c4 e3 79 17 40 30 03 	vextractps DWORD PTR [rax+0x30],xmm0,0x3
  402aa9:	c5 fa 11 00          	vmovss DWORD PTR [rax],xmm0
  402aad:	c5 fa 11 48 40       	vmovss DWORD PTR [rax+0x40],xmm1
  402ab2:	62 f3 7d 28 03 c8 05 	valignd ymm1,ymm0,ymm0,0x5
  402ab9:	c5 fa 11 48 50       	vmovss DWORD PTR [rax+0x50],xmm1
  402abe:	62 f3 7d 28 03 c8 06 	valignd ymm1,ymm0,ymm0,0x6
  402ac5:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  402acc:	c5 fa 11 48 60       	vmovss DWORD PTR [rax+0x60],xmm1
  402ad1:	c5 fa 11 40 70       	vmovss DWORD PTR [rax+0x70],xmm0
  402ad6:	48 89 ce             	mov    rsi,rcx
  402ad9:	31 c0                	xor    eax,eax
  402adb:	48 c1 e6 04          	shl    rsi,0x4
  402adf:	48 01 f2             	add    rdx,rsi
  402ae2:	48 01 f7             	add    rdi,rsi
  402ae5:	4c 01 ce             	add    rsi,r9
  402ae8:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402aef:	00 00 00 00 
  402af3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402afa:	00 00 00 00 
  402afe:	66 90                	xchg   ax,ax
  402b00:	c5 fa 10 3c 02       	vmovss xmm7,DWORD PTR [rdx+rax*1]
  402b05:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402b0a:	48 ff c1             	inc    rcx
  402b0d:	c4 e2 41 99 04 06    	vfmadd132ss xmm0,xmm7,DWORD PTR [rsi+rax*1]
  402b13:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402b18:	48 83 c0 10          	add    rax,0x10
  402b1c:	4c 39 d1             	cmp    rcx,r10
  402b1f:	72 df                	jb     402b00 <kernels_SaxpyF32+0x780>
  402b21:	c5 f8 77             	vzeroupper
  402b24:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  402b28:	c9                   	leave
  402b29:	c3                   	ret
  402b2a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402b30:	49 c1 e0 02          	shl    r8,0x2
  402b34:	31 c0                	xor    eax,eax
  402b36:	31 c9                	xor    ecx,ecx
  402b38:	4d 85 d2             	test   r10,r10
  402b3b:	0f 84 7f 01 00 00    	je     402cc0 <kernels_SaxpyF32+0x940>
  402b41:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b48:	00 00 00 00 
  402b4c:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b53:	00 00 00 00 
  402b57:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b5e:	00 00 00 00 
  402b62:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b69:	00 00 00 00 
  402b6d:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402b74:	00 00 00 00 
  402b78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402b7f:	00 
  402b80:	c5 fa 10 3c 02       	vmovss xmm7,DWORD PTR [rdx+rax*1]
  402b85:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  402b8a:	48 ff c1             	inc    rcx
  402b8d:	c4 c2 41 99 04 01    	vfmadd132ss xmm0,xmm7,DWORD PTR [r9+rax*1]
  402b93:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  402b98:	4c 01 c0             	add    rax,r8
  402b9b:	49 39 ca             	cmp    r10,rcx
  402b9e:	75 e0                	jne    402b80 <kernels_SaxpyF32+0x800>
  402ba0:	c3                   	ret
  402ba1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ba8:	00 00 00 00 
  402bac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402bb0:	48 85 c9             	test   rcx,rcx
  402bb3:	0f 84 c7 00 00 00    	je     402c80 <kernels_SaxpyF32+0x900>
  402bb9:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  402bbd:	48 83 f8 0e          	cmp    rax,0xe
  402bc1:	0f 86 1a 01 00 00    	jbe    402ce1 <kernels_SaxpyF32+0x961>
  402bc7:	48 89 ce             	mov    rsi,rcx
  402bca:	31 c0                	xor    eax,eax
  402bcc:	48 c1 ee 04          	shr    rsi,0x4
  402bd0:	48 89 f1             	mov    rcx,rsi
  402bd3:	48 c1 e1 06          	shl    rcx,0x6
  402bd7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bde:	00 00 00 00 
  402be2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402be9:	00 00 00 00 
  402bed:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402bf4:	00 00 00 00 
  402bf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402bff:	00 
  402c00:	62 f1 7c 48 10 34 02 	vmovups zmm6,ZMMWORD PTR [rdx+rax*1]
  402c07:	62 d1 7c 48 10 04 01 	vmovups zmm0,ZMMWORD PTR [r9+rax*1]
  402c0e:	62 f2 4d 48 98 04 07 	vfmadd132ps zmm0,zmm6,ZMMWORD PTR [rdi+rax*1]
  402c15:	62 f1 7c 48 11 04 02 	vmovups ZMMWORD PTR [rdx+rax*1],zmm0
  402c1c:	48 83 c0 40          	add    rax,0x40
  402c20:	48 39 c8             	cmp    rax,rcx
  402c23:	75 db                	jne    402c00 <kernels_SaxpyF32+0x880>
  402c25:	48 89 f0             	mov    rax,rsi
  402c28:	48 c1 e0 04          	shl    rax,0x4
  402c2c:	49 39 c2             	cmp    r10,rax
  402c2f:	0f 84 c3 f9 ff ff    	je     4025f8 <kernels_SaxpyF32+0x278>
  402c35:	49 29 c2             	sub    r10,rax
  402c38:	b9 10 00 00 00       	mov    ecx,0x10
  402c3d:	49 39 ca             	cmp    r10,rcx
  402c40:	4c 0f 47 d1          	cmova  r10,rcx
  402c44:	62 d2 7d 08 7a c2    	vpbroadcastb xmm0,r10d
  402c4a:	62 f3 7d 08 3e 0d cb 	vpcmpnleub k1,xmm0,XMMWORD PTR [rip+0x28cb]        # 405520 <__PRETTY_FUNCTION__.0+0x30>
  402c51:	28 00 00 06 
  402c55:	62 f1 7c c9 10 0c 82 	vmovups zmm1{k1}{z},ZMMWORD PTR [rdx+rax*4]
  402c5c:	62 f1 7c c9 10 04 87 	vmovups zmm0{k1}{z},ZMMWORD PTR [rdi+rax*4]
  402c63:	62 d1 7c c9 10 14 81 	vmovups zmm2{k1}{z},ZMMWORD PTR [r9+rax*4]
  402c6a:	62 f2 75 c9 98 c2    	vfmadd132ps zmm0{k1}{z},zmm1,zmm2
  402c70:	62 f1 7c 49 11 04 82 	vmovups ZMMWORD PTR [rdx+rax*4]{k1},zmm0
  402c77:	c5 f8 77             	vzeroupper
  402c7a:	c3                   	ret
  402c7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402c80:	c3                   	ret
  402c81:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c88:	00 00 00 00 
  402c8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402c90:	c3                   	ret
  402c91:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402c98:	00 00 00 00 
  402c9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402ca0:	c3                   	ret
  402ca1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ca8:	00 00 00 00 
  402cac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402cb0:	c3                   	ret
  402cb1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402cb8:	00 00 00 00 
  402cbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402cc0:	c3                   	ret
  402cc1:	4c 89 c0             	mov    rax,r8
  402cc4:	31 f6                	xor    esi,esi
  402cc6:	e9 af f8 ff ff       	jmp    40257a <kernels_SaxpyF32+0x1fa>
  402ccb:	45 31 c0             	xor    r8d,r8d
  402cce:	e9 fe f7 ff ff       	jmp    4024d1 <kernels_SaxpyF32+0x151>
  402cd3:	31 c9                	xor    ecx,ecx
  402cd5:	e9 3f fb ff ff       	jmp    402819 <kernels_SaxpyF32+0x499>
  402cda:	31 c9                	xor    ecx,ecx
  402cdc:	e9 20 fd ff ff       	jmp    402a01 <kernels_SaxpyF32+0x681>
  402ce1:	31 c0                	xor    eax,eax
  402ce3:	e9 4d ff ff ff       	jmp    402c35 <kernels_SaxpyF32+0x8b5>
  402ce8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402cef:	00 

0000000000402cf0 <kernels_SaxpyF64>:
  402cf0:	49 89 c9             	mov    r9,rcx
  402cf3:	49 83 f8 04          	cmp    r8,0x4
  402cf7:	0f 84 23 02 00 00    	je     402f20 <kernels_SaxpyF64+0x230>
  402cfd:	0f 87 ad 01 00 00    	ja     402eb0 <kernels_SaxpyF64+0x1c0>
  402d03:	49 83 f8 01          	cmp    r8,0x1
  402d07:	0f 84 23 04 00 00    	je     403130 <kernels_SaxpyF64+0x440>
  402d0d:	49 83 f8 02          	cmp    r8,0x2
  402d11:	0f 85 99 03 00 00    	jne    4030b0 <kernels_SaxpyF64+0x3c0>
  402d17:	48 85 c9             	test   rcx,rcx
  402d1a:	0f 84 00 05 00 00    	je     403220 <kernels_SaxpyF64+0x530>
  402d20:	55                   	push   rbp
  402d21:	4c 8d 59 ff          	lea    r11,[rcx-0x1]
  402d25:	48 89 e5             	mov    rbp,rsp
  402d28:	53                   	push   rbx
  402d29:	49 83 fb 07          	cmp    r11,0x7
  402d2d:	0f 86 fe 04 00 00    	jbe    403231 <kernels_SaxpyF64+0x541>
  402d33:	62 f1 fd 48 6f 0d 83 	vmovdqa64 zmm1,ZMMWORD PTR [rip+0x2883]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  402d3a:	28 00 00 
  402d3d:	4c 89 d8             	mov    rax,r11
  402d40:	49 89 f8             	mov    r8,rdi
  402d43:	48 89 f1             	mov    rcx,rsi
  402d46:	48 c1 e8 03          	shr    rax,0x3
  402d4a:	49 89 c2             	mov    r10,rax
  402d4d:	48 89 c3             	mov    rbx,rax
  402d50:	48 89 d0             	mov    rax,rdx
  402d53:	49 c1 e2 07          	shl    r10,0x7
  402d57:	49 01 d2             	add    r10,rdx
  402d5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402d60:	62 f1 fd 48 10 10    	vmovupd zmm2,ZMMWORD PTR [rax]
  402d66:	62 d1 fd 48 10 00    	vmovupd zmm0,ZMMWORD PTR [r8]
  402d6c:	62 f1 fd 48 10 19    	vmovupd zmm3,ZMMWORD PTR [rcx]
  402d72:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  402d76:	49 83 e8 80          	sub    r8,0xffffffffffffff80
  402d7a:	48 83 e9 80          	sub    rcx,0xffffffffffffff80
  402d7e:	62 f2 f5 48 7f 50 ff 	vpermt2pd zmm2,zmm1,ZMMWORD PTR [rax-0x40]
  402d85:	62 f2 f5 48 7f 59 ff 	vpermt2pd zmm3,zmm1,ZMMWORD PTR [rcx-0x40]
  402d8c:	62 d2 f5 48 7f 40 ff 	vpermt2pd zmm0,zmm1,ZMMWORD PTR [r8-0x40]
  402d93:	62 f2 ed 48 98 c3    	vfmadd132pd zmm0,zmm2,zmm3
  402d99:	62 f3 fd 28 03 d0 03 	valignq ymm2,ymm0,ymm0,0x3
  402da0:	c5 f9 13 40 80       	vmovlpd QWORD PTR [rax-0x80],xmm0
  402da5:	c5 f9 17 40 90       	vmovhpd QWORD PTR [rax-0x70],xmm0
  402daa:	62 f3 fd 28 19 c3 01 	vextractf64x2 xmm3,ymm0,0x1
  402db1:	62 f3 fd 48 1b c0 01 	vextractf64x4 ymm0,zmm0,0x1
  402db8:	c5 fb 11 50 b0       	vmovsd QWORD PTR [rax-0x50],xmm2
  402dbd:	c5 f9 13 40 c0       	vmovlpd QWORD PTR [rax-0x40],xmm0
  402dc2:	c5 f9 17 40 d0       	vmovhpd QWORD PTR [rax-0x30],xmm0
  402dc7:	62 f3 fd 28 19 c2 01 	vextractf64x2 xmm2,ymm0,0x1
  402dce:	c5 fb 11 58 a0       	vmovsd QWORD PTR [rax-0x60],xmm3
  402dd3:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  402dda:	c5 fb 11 50 e0       	vmovsd QWORD PTR [rax-0x20],xmm2
  402ddf:	c5 fb 11 40 f0       	vmovsd QWORD PTR [rax-0x10],xmm0
  402de4:	49 39 c2             	cmp    r10,rax
  402de7:	0f 85 73 ff ff ff    	jne    402d60 <kernels_SaxpyF64+0x70>
  402ded:	48 8d 04 dd 00 00 00 	lea    rax,[rbx*8+0x0]
  402df4:	00 
  402df5:	49 29 c3             	sub    r11,rax
  402df8:	49 83 fb 03          	cmp    r11,0x3
  402dfc:	76 6a                	jbe    402e68 <kernels_SaxpyF64+0x178>
  402dfe:	49 89 c0             	mov    r8,rax
  402e01:	c5 fd 6f 0d b7 27 00 	vmovdqa ymm1,YMMWORD PTR [rip+0x27b7]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  402e08:	00 
  402e09:	49 83 e3 fc          	and    r11,0xfffffffffffffffc
  402e0d:	49 c1 e0 04          	shl    r8,0x4
  402e11:	4a 8d 0c 02          	lea    rcx,[rdx+r8*1]
  402e15:	4e 8d 14 07          	lea    r10,[rdi+r8*1]
  402e19:	49 01 f0             	add    r8,rsi
  402e1c:	4c 01 d8             	add    rax,r11
  402e1f:	c5 fd 10 19          	vmovupd ymm3,YMMWORD PTR [rcx]
  402e23:	c4 c1 7d 10 02       	vmovupd ymm0,YMMWORD PTR [r10]
  402e28:	c4 c1 7d 10 10       	vmovupd ymm2,YMMWORD PTR [r8]
  402e2d:	62 d2 f5 28 7f 42 01 	vpermt2pd ymm0,ymm1,YMMWORD PTR [r10+0x20]
  402e34:	62 d2 f5 28 7f 50 01 	vpermt2pd ymm2,ymm1,YMMWORD PTR [r8+0x20]
  402e3b:	62 f2 e5 28 77 49 01 	vpermi2pd ymm1,ymm3,YMMWORD PTR [rcx+0x20]
  402e42:	c4 e2 f5 98 c2       	vfmadd132pd ymm0,ymm1,ymm2
  402e47:	62 f3 fd 28 19 c1 01 	vextractf64x2 xmm1,ymm0,0x1
  402e4e:	c5 f9 13 01          	vmovlpd QWORD PTR [rcx],xmm0
  402e52:	c5 f9 17 41 10       	vmovhpd QWORD PTR [rcx+0x10],xmm0
  402e57:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  402e5e:	c5 fb 11 49 20       	vmovsd QWORD PTR [rcx+0x20],xmm1
  402e63:	c5 fb 11 41 30       	vmovsd QWORD PTR [rcx+0x30],xmm0
  402e68:	48 89 c1             	mov    rcx,rax
  402e6b:	48 c1 e1 04          	shl    rcx,0x4
  402e6f:	48 01 ca             	add    rdx,rcx
  402e72:	48 89 c1             	mov    rcx,rax
  402e75:	c5 fb 10 2a          	vmovsd xmm5,QWORD PTR [rdx]
  402e79:	48 ff c0             	inc    rax
  402e7c:	48 83 c2 10          	add    rdx,0x10
  402e80:	48 c1 e1 04          	shl    rcx,0x4
  402e84:	c5 fb 10 04 0f       	vmovsd xmm0,QWORD PTR [rdi+rcx*1]
  402e89:	c4 e2 d1 99 04 0e    	vfmadd132sd xmm0,xmm5,QWORD PTR [rsi+rcx*1]
  402e8f:	c5 fb 11 42 f0       	vmovsd QWORD PTR [rdx-0x10],xmm0
  402e94:	4c 39 c8             	cmp    rax,r9
  402e97:	72 d9                	jb     402e72 <kernels_SaxpyF64+0x182>
  402e99:	c5 f8 77             	vzeroupper
  402e9c:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  402ea0:	c9                   	leave
  402ea1:	c3                   	ret
  402ea2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ea9:	00 00 00 00 
  402ead:	0f 1f 00             	nop    DWORD PTR [rax]
  402eb0:	49 83 f8 08          	cmp    r8,0x8
  402eb4:	0f 85 f6 01 00 00    	jne    4030b0 <kernels_SaxpyF64+0x3c0>
  402eba:	48 c1 e1 06          	shl    rcx,0x6
  402ebe:	31 c0                	xor    eax,eax
  402ec0:	4d 85 c9             	test   r9,r9
  402ec3:	0f 84 67 03 00 00    	je     403230 <kernels_SaxpyF64+0x540>
  402ec9:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ed0:	00 00 00 00 
  402ed4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402edb:	00 00 00 00 
  402edf:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ee6:	00 00 00 00 
  402eea:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402ef1:	00 00 00 00 
  402ef5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  402efc:	00 00 00 00 
  402f00:	c5 fb 10 2c 02       	vmovsd xmm5,QWORD PTR [rdx+rax*1]
  402f05:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  402f0a:	c4 e2 d1 99 04 06    	vfmadd132sd xmm0,xmm5,QWORD PTR [rsi+rax*1]
  402f10:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  402f15:	48 83 c0 40          	add    rax,0x40
  402f19:	48 39 c8             	cmp    rax,rcx
  402f1c:	75 e2                	jne    402f00 <kernels_SaxpyF64+0x210>
  402f1e:	c3                   	ret
  402f1f:	90                   	nop
  402f20:	48 85 c9             	test   rcx,rcx
  402f23:	0f 84 d7 02 00 00    	je     403200 <kernels_SaxpyF64+0x510>
  402f29:	48 8d 49 ff          	lea    rcx,[rcx-0x1]
  402f2d:	48 83 f9 07          	cmp    rcx,0x7
  402f31:	0f 86 01 03 00 00    	jbe    403238 <kernels_SaxpyF64+0x548>
  402f37:	62 f1 fd 48 6f 0d 7f 	vmovdqa64 zmm1,ZMMWORD PTR [rip+0x267f]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  402f3e:	26 00 00 
  402f41:	48 89 d0             	mov    rax,rdx
  402f44:	49 89 f8             	mov    r8,rdi
  402f47:	48 c1 e9 03          	shr    rcx,0x3
  402f4b:	49 89 ca             	mov    r10,rcx
  402f4e:	48 89 f1             	mov    rcx,rsi
  402f51:	4d 89 d3             	mov    r11,r10
  402f54:	49 c1 e3 08          	shl    r11,0x8
  402f58:	49 01 d3             	add    r11,rdx
  402f5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402f60:	62 d1 fd 48 10 00    	vmovupd zmm0,ZMMWORD PTR [r8]
  402f66:	62 d1 fd 48 10 50 02 	vmovupd zmm2,ZMMWORD PTR [r8+0x80]
  402f6d:	62 f1 fd 48 10 19    	vmovupd zmm3,ZMMWORD PTR [rcx]
  402f73:	48 05 00 01 00 00    	add    rax,0x100
  402f79:	62 f1 fd 48 10 60 fe 	vmovupd zmm4,ZMMWORD PTR [rax-0x80]
  402f80:	49 81 c0 00 01 00 00 	add    r8,0x100
  402f87:	48 81 c1 00 01 00 00 	add    rcx,0x100
  402f8e:	62 d2 f5 48 7f 50 ff 	vpermt2pd zmm2,zmm1,ZMMWORD PTR [r8-0x40]
  402f95:	62 d2 f5 48 7f 40 fd 	vpermt2pd zmm0,zmm1,ZMMWORD PTR [r8-0xc0]
  402f9c:	62 f2 f5 48 7f 59 fd 	vpermt2pd zmm3,zmm1,ZMMWORD PTR [rcx-0xc0]
  402fa3:	62 f2 f5 48 7f c2    	vpermt2pd zmm0,zmm1,zmm2
  402fa9:	62 f1 fd 48 10 51 fe 	vmovupd zmm2,ZMMWORD PTR [rcx-0x80]
  402fb0:	62 f2 f5 48 7f 60 ff 	vpermt2pd zmm4,zmm1,ZMMWORD PTR [rax-0x40]
  402fb7:	62 f2 f5 48 7f 51 ff 	vpermt2pd zmm2,zmm1,ZMMWORD PTR [rcx-0x40]
  402fbe:	62 f2 f5 48 7f da    	vpermt2pd zmm3,zmm1,zmm2
  402fc4:	62 f1 fd 48 10 50 fc 	vmovupd zmm2,ZMMWORD PTR [rax-0x100]
  402fcb:	62 f2 f5 48 7f 50 fd 	vpermt2pd zmm2,zmm1,ZMMWORD PTR [rax-0xc0]
  402fd2:	62 f2 f5 48 7f d4    	vpermt2pd zmm2,zmm1,zmm4
  402fd8:	62 f2 ed 48 98 c3    	vfmadd132pd zmm0,zmm2,zmm3
  402fde:	62 f3 fd 28 03 d0 03 	valignq ymm2,ymm0,ymm0,0x3
  402fe5:	c5 f9 13 80 00 ff ff 	vmovlpd QWORD PTR [rax-0x100],xmm0
  402fec:	ff 
  402fed:	c5 f9 17 80 20 ff ff 	vmovhpd QWORD PTR [rax-0xe0],xmm0
  402ff4:	ff 
  402ff5:	62 f3 fd 28 19 c3 01 	vextractf64x2 xmm3,ymm0,0x1
  402ffc:	62 f3 fd 48 1b c0 01 	vextractf64x4 ymm0,zmm0,0x1
  403003:	c5 fb 11 90 60 ff ff 	vmovsd QWORD PTR [rax-0xa0],xmm2
  40300a:	ff 
  40300b:	c5 f9 13 40 80       	vmovlpd QWORD PTR [rax-0x80],xmm0
  403010:	c5 f9 17 40 a0       	vmovhpd QWORD PTR [rax-0x60],xmm0
  403015:	62 f3 fd 28 19 c2 01 	vextractf64x2 xmm2,ymm0,0x1
  40301c:	c5 fb 11 98 40 ff ff 	vmovsd QWORD PTR [rax-0xc0],xmm3
  403023:	ff 
  403024:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  40302b:	c5 fb 11 50 c0       	vmovsd QWORD PTR [rax-0x40],xmm2
  403030:	c5 fb 11 40 e0       	vmovsd QWORD PTR [rax-0x20],xmm0
  403035:	4c 39 d8             	cmp    rax,r11
  403038:	0f 85 22 ff ff ff    	jne    402f60 <kernels_SaxpyF64+0x270>
  40303e:	4a 8d 0c d5 00 00 00 	lea    rcx,[r10*8+0x0]
  403045:	00 
  403046:	c5 f8 77             	vzeroupper
  403049:	48 89 c8             	mov    rax,rcx
  40304c:	48 c1 e0 05          	shl    rax,0x5
  403050:	48 01 c2             	add    rdx,rax
  403053:	48 01 c7             	add    rdi,rax
  403056:	48 01 c6             	add    rsi,rax
  403059:	31 c0                	xor    eax,eax
  40305b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403062:	00 00 00 00 
  403066:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40306d:	00 00 00 00 
  403071:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403078:	00 00 00 00 
  40307c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403080:	c5 fb 10 3c 02       	vmovsd xmm7,QWORD PTR [rdx+rax*1]
  403085:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  40308a:	48 ff c1             	inc    rcx
  40308d:	c4 e2 c1 99 04 06    	vfmadd132sd xmm0,xmm7,QWORD PTR [rsi+rax*1]
  403093:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  403098:	48 83 c0 20          	add    rax,0x20
  40309c:	4c 39 c9             	cmp    rcx,r9
  40309f:	72 df                	jb     403080 <kernels_SaxpyF64+0x390>
  4030a1:	c3                   	ret
  4030a2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030a9:	00 00 00 00 
  4030ad:	0f 1f 00             	nop    DWORD PTR [rax]
  4030b0:	49 c1 e0 03          	shl    r8,0x3
  4030b4:	31 c0                	xor    eax,eax
  4030b6:	31 c9                	xor    ecx,ecx
  4030b8:	4d 85 c9             	test   r9,r9
  4030bb:	0f 84 4f 01 00 00    	je     403210 <kernels_SaxpyF64+0x520>
  4030c1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030c8:	00 00 00 00 
  4030cc:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030d3:	00 00 00 00 
  4030d7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030de:	00 00 00 00 
  4030e2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030e9:	00 00 00 00 
  4030ed:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4030f4:	00 00 00 00 
  4030f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4030ff:	00 
  403100:	c5 fb 10 34 02       	vmovsd xmm6,QWORD PTR [rdx+rax*1]
  403105:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  40310a:	48 ff c1             	inc    rcx
  40310d:	c4 e2 c9 99 04 06    	vfmadd132sd xmm0,xmm6,QWORD PTR [rsi+rax*1]
  403113:	c5 fb 11 04 02       	vmovsd QWORD PTR [rdx+rax*1],xmm0
  403118:	4c 01 c0             	add    rax,r8
  40311b:	49 39 c9             	cmp    r9,rcx
  40311e:	75 e0                	jne    403100 <kernels_SaxpyF64+0x410>
  403120:	c3                   	ret
  403121:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403128:	00 00 00 00 
  40312c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403130:	48 85 c9             	test   rcx,rcx
  403133:	0f 84 b7 00 00 00    	je     4031f0 <kernels_SaxpyF64+0x500>
  403139:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  40313d:	48 83 f8 06          	cmp    rax,0x6
  403141:	0f 86 f8 00 00 00    	jbe    40323f <kernels_SaxpyF64+0x54f>
  403147:	49 89 c8             	mov    r8,rcx
  40314a:	31 c0                	xor    eax,eax
  40314c:	49 c1 e8 03          	shr    r8,0x3
  403150:	4c 89 c1             	mov    rcx,r8
  403153:	48 c1 e1 06          	shl    rcx,0x6
  403157:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40315e:	00 00 00 00 
  403162:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403169:	00 00 00 00 
  40316d:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403174:	00 00 00 00 
  403178:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40317f:	00 
  403180:	62 f1 fd 48 10 3c 02 	vmovupd zmm7,ZMMWORD PTR [rdx+rax*1]
  403187:	62 f1 fd 48 10 04 06 	vmovupd zmm0,ZMMWORD PTR [rsi+rax*1]
  40318e:	62 f2 c5 48 98 04 07 	vfmadd132pd zmm0,zmm7,ZMMWORD PTR [rdi+rax*1]
  403195:	62 f1 fd 48 11 04 02 	vmovupd ZMMWORD PTR [rdx+rax*1],zmm0
  40319c:	48 83 c0 40          	add    rax,0x40
  4031a0:	48 39 c8             	cmp    rax,rcx
  4031a3:	75 db                	jne    403180 <kernels_SaxpyF64+0x490>
  4031a5:	4a 8d 04 c5 00 00 00 	lea    rax,[r8*8+0x0]
  4031ac:	00 
  4031ad:	49 39 c1             	cmp    r9,rax
  4031b0:	74 36                	je     4031e8 <kernels_SaxpyF64+0x4f8>
  4031b2:	49 29 c1             	sub    r9,rax
  4031b5:	62 d2 fd 48 7c c1    	vpbroadcastq zmm0,r9
  4031bb:	62 f3 fd 48 1e 0d ba 	vpcmpnleuq k1,zmm0,ZMMWORD PTR [rip+0x23ba]        # 405580 <__PRETTY_FUNCTION__.0+0x90>
  4031c2:	23 00 00 06 
  4031c6:	62 f1 fd c9 10 0c c2 	vmovupd zmm1{k1}{z},ZMMWORD PTR [rdx+rax*8]
  4031cd:	62 f1 fd c9 10 04 c7 	vmovupd zmm0{k1}{z},ZMMWORD PTR [rdi+rax*8]
  4031d4:	62 f1 fd c9 10 14 c6 	vmovupd zmm2{k1}{z},ZMMWORD PTR [rsi+rax*8]
  4031db:	62 f2 f5 c9 98 c2    	vfmadd132pd zmm0{k1}{z},zmm1,zmm2
  4031e1:	62 f1 fd 49 11 04 c2 	vmovupd ZMMWORD PTR [rdx+rax*8]{k1},zmm0
  4031e8:	c5 f8 77             	vzeroupper
  4031eb:	c3                   	ret
  4031ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4031f0:	c3                   	ret
  4031f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4031f8:	00 00 00 00 
  4031fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403200:	c3                   	ret
  403201:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403208:	00 00 00 00 
  40320c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403210:	c3                   	ret
  403211:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403218:	00 00 00 00 
  40321c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403220:	c3                   	ret
  403221:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403228:	00 00 00 00 
  40322c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403230:	c3                   	ret
  403231:	31 c0                	xor    eax,eax
  403233:	e9 bd fb ff ff       	jmp    402df5 <kernels_SaxpyF64+0x105>
  403238:	31 c9                	xor    ecx,ecx
  40323a:	e9 0a fe ff ff       	jmp    403049 <kernels_SaxpyF64+0x359>
  40323f:	31 c0                	xor    eax,eax
  403241:	e9 6c ff ff ff       	jmp    4031b2 <kernels_SaxpyF64+0x4c2>
  403246:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40324d:	00 00 00 

0000000000403250 <kernels_MultiplyF32>:
  403250:	55                   	push   rbp
  403251:	48 89 e5             	mov    rbp,rsp
  403254:	53                   	push   rbx
  403255:	49 83 f8 04          	cmp    r8,0x4
  403259:	0f 84 41 02 00 00    	je     4034a0 <kernels_MultiplyF32+0x250>
  40325f:	0f 87 fb 01 00 00    	ja     403460 <kernels_MultiplyF32+0x210>
  403265:	49 83 f8 01          	cmp    r8,0x1
  403269:	0f 84 f1 04 00 00    	je     403760 <kernels_MultiplyF32+0x510>
  40326f:	49 83 f8 02          	cmp    r8,0x2
  403273:	0f 85 97 04 00 00    	jne    403710 <kernels_MultiplyF32+0x4c0>
  403279:	48 85 c9             	test   rcx,rcx
  40327c:	0f 84 d8 01 00 00    	je     40345a <kernels_MultiplyF32+0x20a>
  403282:	4c 8d 51 ff          	lea    r10,[rcx-0x1]
  403286:	49 83 fa 0f          	cmp    r10,0xf
  40328a:	0f 86 86 05 00 00    	jbe    403816 <kernels_MultiplyF32+0x5c6>
  403290:	62 f1 7d 48 6f 0d a6 	vmovdqa32 zmm1,ZMMWORD PTR [rip+0x22a6]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  403297:	22 00 00 
  40329a:	4d 89 d1             	mov    r9,r10
  40329d:	48 89 d0             	mov    rax,rdx
  4032a0:	45 31 c0             	xor    r8d,r8d
  4032a3:	49 c1 e9 04          	shr    r9,0x4
  4032a7:	4d 89 cb             	mov    r11,r9
  4032aa:	49 c1 e3 07          	shl    r11,0x7
  4032ae:	66 90                	xchg   ax,ax
  4032b0:	62 b1 7c 48 10 04 07 	vmovups zmm0,ZMMWORD PTR [rdi+r8*1]
  4032b7:	62 b1 7c 48 10 14 06 	vmovups zmm2,ZMMWORD PTR [rsi+r8*1]
  4032be:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  4032c2:	62 b2 75 48 7f 54 06 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsi+r8*1+0x40]
  4032c9:	01 
  4032ca:	62 b2 75 48 7f 44 07 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rdi+r8*1+0x40]
  4032d1:	01 
  4032d2:	49 83 e8 80          	sub    r8,0xffffffffffffff80
  4032d6:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  4032dc:	62 f3 7d 28 19 c3 01 	vextractf32x4 xmm3,ymm0,0x1
  4032e3:	c4 e3 79 17 40 88 01 	vextractps DWORD PTR [rax-0x78],xmm0,0x1
  4032ea:	c4 e3 79 17 40 90 02 	vextractps DWORD PTR [rax-0x70],xmm0,0x2
  4032f1:	c4 e3 79 17 40 98 03 	vextractps DWORD PTR [rax-0x68],xmm0,0x3
  4032f8:	c5 fa 11 40 80       	vmovss DWORD PTR [rax-0x80],xmm0
  4032fd:	c5 fa 11 58 a0       	vmovss DWORD PTR [rax-0x60],xmm3
  403302:	62 f3 7d 28 03 d8 05 	valignd ymm3,ymm0,ymm0,0x5
  403309:	62 f3 7d 28 03 d0 07 	valignd ymm2,ymm0,ymm0,0x7
  403310:	c5 fa 11 58 a8       	vmovss DWORD PTR [rax-0x58],xmm3
  403315:	62 f3 7d 28 03 d8 06 	valignd ymm3,ymm0,ymm0,0x6
  40331c:	62 f3 7d 48 1b c0 01 	vextractf32x8 ymm0,zmm0,0x1
  403323:	c5 fa 11 50 b8       	vmovss DWORD PTR [rax-0x48],xmm2
  403328:	c5 fa 11 40 c0       	vmovss DWORD PTR [rax-0x40],xmm0
  40332d:	c4 e3 79 17 40 c8 01 	vextractps DWORD PTR [rax-0x38],xmm0,0x1
  403334:	c4 e3 79 17 40 d0 02 	vextractps DWORD PTR [rax-0x30],xmm0,0x2
  40333b:	c4 e3 79 17 40 d8 03 	vextractps DWORD PTR [rax-0x28],xmm0,0x3
  403342:	62 f3 7d 28 19 c2 01 	vextractf32x4 xmm2,ymm0,0x1
  403349:	c5 fa 11 58 b0       	vmovss DWORD PTR [rax-0x50],xmm3
  40334e:	c5 fa 11 50 e0       	vmovss DWORD PTR [rax-0x20],xmm2
  403353:	62 f3 7d 28 03 d0 05 	valignd ymm2,ymm0,ymm0,0x5
  40335a:	c5 fa 11 50 e8       	vmovss DWORD PTR [rax-0x18],xmm2
  40335f:	62 f3 7d 28 03 d0 06 	valignd ymm2,ymm0,ymm0,0x6
  403366:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  40336d:	c5 fa 11 50 f0       	vmovss DWORD PTR [rax-0x10],xmm2
  403372:	c5 fa 11 40 f8       	vmovss DWORD PTR [rax-0x8],xmm0
  403377:	4d 39 d8             	cmp    r8,r11
  40337a:	0f 85 30 ff ff ff    	jne    4032b0 <kernels_MultiplyF32+0x60>
  403380:	4c 89 c8             	mov    rax,r9
  403383:	48 c1 e0 04          	shl    rax,0x4
  403387:	49 29 c2             	sub    r10,rax
  40338a:	4c 89 d3             	mov    rbx,r10
  40338d:	49 83 fa 07          	cmp    r10,0x7
  403391:	0f 86 a9 00 00 00    	jbe    403440 <kernels_MultiplyF32+0x1f0>
  403397:	4c 8d 04 c5 00 00 00 	lea    r8,[rax*8+0x0]
  40339e:	00 
  40339f:	c5 fd 6f 0d 99 21 00 	vmovdqa ymm1,YMMWORD PTR [rip+0x2199]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  4033a6:	00 
  4033a7:	48 83 e3 f8          	and    rbx,0xfffffffffffffff8
  4033ab:	4e 8d 14 07          	lea    r10,[rdi+r8*1]
  4033af:	4e 8d 1c 06          	lea    r11,[rsi+r8*1]
  4033b3:	48 01 d8             	add    rax,rbx
  4033b6:	c4 c1 7c 10 02       	vmovups ymm0,YMMWORD PTR [r10]
  4033bb:	c4 c1 7c 10 13       	vmovups ymm2,YMMWORD PTR [r11]
  4033c0:	62 d2 75 28 7f 42 01 	vpermt2ps ymm0,ymm1,YMMWORD PTR [r10+0x20]
  4033c7:	62 d2 6d 28 77 4b 01 	vpermi2ps ymm1,ymm2,YMMWORD PTR [r11+0x20]
  4033ce:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  4033d2:	62 f3 7d 28 19 c1 01 	vextractf32x4 xmm1,ymm0,0x1
  4033d9:	c4 a3 79 17 44 02 08 	vextractps DWORD PTR [rdx+r8*1+0x8],xmm0,0x1
  4033e0:	01 
  4033e1:	c4 a3 79 17 44 02 10 	vextractps DWORD PTR [rdx+r8*1+0x10],xmm0,0x2
  4033e8:	02 
  4033e9:	c4 a3 79 17 44 02 18 	vextractps DWORD PTR [rdx+r8*1+0x18],xmm0,0x3
  4033f0:	03 
  4033f1:	c4 a1 7a 11 04 02    	vmovss DWORD PTR [rdx+r8*1],xmm0
  4033f7:	c4 a1 7a 11 4c 02 20 	vmovss DWORD PTR [rdx+r8*1+0x20],xmm1
  4033fe:	62 f3 7d 28 03 c8 05 	valignd ymm1,ymm0,ymm0,0x5
  403405:	c4 a1 7a 11 4c 02 28 	vmovss DWORD PTR [rdx+r8*1+0x28],xmm1
  40340c:	62 f3 7d 28 03 c8 06 	valignd ymm1,ymm0,ymm0,0x6
  403413:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  40341a:	c4 a1 7a 11 4c 02 30 	vmovss DWORD PTR [rdx+r8*1+0x30],xmm1
  403421:	c4 a1 7a 11 44 02 38 	vmovss DWORD PTR [rdx+r8*1+0x38],xmm0
  403428:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40342f:	00 00 00 00 
  403433:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40343a:	00 00 00 00 
  40343e:	66 90                	xchg   ax,ax
  403440:	c5 fa 10 04 c7       	vmovss xmm0,DWORD PTR [rdi+rax*8]
  403445:	c5 fa 59 04 c6       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*8]
  40344a:	c5 fa 11 04 c2       	vmovss DWORD PTR [rdx+rax*8],xmm0
  40344f:	48 ff c0             	inc    rax
  403452:	48 39 c8             	cmp    rax,rcx
  403455:	72 e9                	jb     403440 <kernels_MultiplyF32+0x1f0>
  403457:	c5 f8 77             	vzeroupper
  40345a:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  40345e:	c9                   	leave
  40345f:	c3                   	ret
  403460:	49 83 f8 08          	cmp    r8,0x8
  403464:	0f 85 a6 02 00 00    	jne    403710 <kernels_MultiplyF32+0x4c0>
  40346a:	49 89 c8             	mov    r8,rcx
  40346d:	31 c0                	xor    eax,eax
  40346f:	49 c1 e0 05          	shl    r8,0x5
  403473:	48 85 c9             	test   rcx,rcx
  403476:	74 e2                	je     40345a <kernels_MultiplyF32+0x20a>
  403478:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40347f:	00 
  403480:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  403485:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40348a:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  40348f:	48 83 c0 20          	add    rax,0x20
  403493:	4c 39 c0             	cmp    rax,r8
  403496:	75 e8                	jne    403480 <kernels_MultiplyF32+0x230>
  403498:	eb c0                	jmp    40345a <kernels_MultiplyF32+0x20a>
  40349a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4034a0:	48 85 c9             	test   rcx,rcx
  4034a3:	74 b5                	je     40345a <kernels_MultiplyF32+0x20a>
  4034a5:	4c 8d 59 ff          	lea    r11,[rcx-0x1]
  4034a9:	49 83 fb 0f          	cmp    r11,0xf
  4034ad:	0f 86 6a 03 00 00    	jbe    40381d <kernels_MultiplyF32+0x5cd>
  4034b3:	62 f1 7d 48 6f 0d 83 	vmovdqa32 zmm1,ZMMWORD PTR [rip+0x2083]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  4034ba:	20 00 00 
  4034bd:	4c 89 d8             	mov    rax,r11
  4034c0:	49 89 f8             	mov    r8,rdi
  4034c3:	49 89 f1             	mov    r9,rsi
  4034c6:	48 c1 e8 04          	shr    rax,0x4
  4034ca:	49 89 c2             	mov    r10,rax
  4034cd:	48 89 c3             	mov    rbx,rax
  4034d0:	48 89 d0             	mov    rax,rdx
  4034d3:	49 c1 e2 08          	shl    r10,0x8
  4034d7:	49 01 fa             	add    r10,rdi
  4034da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4034e0:	62 d1 7c 48 10 00    	vmovups zmm0,ZMMWORD PTR [r8]
  4034e6:	62 d1 7c 48 10 50 02 	vmovups zmm2,ZMMWORD PTR [r8+0x80]
  4034ed:	62 d1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [r9+0x80]
  4034f4:	49 81 c0 00 01 00 00 	add    r8,0x100
  4034fb:	49 81 c1 00 01 00 00 	add    r9,0x100
  403502:	48 05 00 01 00 00    	add    rax,0x100
  403508:	62 d2 75 48 7f 50 ff 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [r8-0x40]
  40350f:	62 d2 75 48 7f 40 fd 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [r8-0xc0]
  403516:	62 d2 75 48 7f 59 ff 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [r9-0x40]
  40351d:	62 f2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm2
  403523:	62 d1 7c 48 10 51 fc 	vmovups zmm2,ZMMWORD PTR [r9-0x100]
  40352a:	62 d2 75 48 7f 51 fd 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [r9-0xc0]
  403531:	62 f2 75 48 7f d3    	vpermt2ps zmm2,zmm1,zmm3
  403537:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  40353d:	62 f3 7d 28 19 c3 01 	vextractf32x4 xmm3,ymm0,0x1
  403544:	c4 e3 79 17 80 10 ff 	vextractps DWORD PTR [rax-0xf0],xmm0,0x1
  40354b:	ff ff 01 
  40354e:	c4 e3 79 17 80 20 ff 	vextractps DWORD PTR [rax-0xe0],xmm0,0x2
  403555:	ff ff 02 
  403558:	c4 e3 79 17 80 30 ff 	vextractps DWORD PTR [rax-0xd0],xmm0,0x3
  40355f:	ff ff 03 
  403562:	c5 fa 11 80 00 ff ff 	vmovss DWORD PTR [rax-0x100],xmm0
  403569:	ff 
  40356a:	c5 fa 11 98 40 ff ff 	vmovss DWORD PTR [rax-0xc0],xmm3
  403571:	ff 
  403572:	62 f3 7d 28 03 d8 05 	valignd ymm3,ymm0,ymm0,0x5
  403579:	62 f3 7d 28 03 d0 07 	valignd ymm2,ymm0,ymm0,0x7
  403580:	c5 fa 11 98 50 ff ff 	vmovss DWORD PTR [rax-0xb0],xmm3
  403587:	ff 
  403588:	62 f3 7d 28 03 d8 06 	valignd ymm3,ymm0,ymm0,0x6
  40358f:	62 f3 7d 48 1b c0 01 	vextractf32x8 ymm0,zmm0,0x1
  403596:	c5 fa 11 90 70 ff ff 	vmovss DWORD PTR [rax-0x90],xmm2
  40359d:	ff 
  40359e:	c5 fa 11 40 80       	vmovss DWORD PTR [rax-0x80],xmm0
  4035a3:	c4 e3 79 17 40 90 01 	vextractps DWORD PTR [rax-0x70],xmm0,0x1
  4035aa:	c4 e3 79 17 40 a0 02 	vextractps DWORD PTR [rax-0x60],xmm0,0x2
  4035b1:	c4 e3 79 17 40 b0 03 	vextractps DWORD PTR [rax-0x50],xmm0,0x3
  4035b8:	62 f3 7d 28 19 c2 01 	vextractf32x4 xmm2,ymm0,0x1
  4035bf:	c5 fa 11 98 60 ff ff 	vmovss DWORD PTR [rax-0xa0],xmm3
  4035c6:	ff 
  4035c7:	c5 fa 11 50 c0       	vmovss DWORD PTR [rax-0x40],xmm2
  4035cc:	62 f3 7d 28 03 d0 05 	valignd ymm2,ymm0,ymm0,0x5
  4035d3:	c5 fa 11 50 d0       	vmovss DWORD PTR [rax-0x30],xmm2
  4035d8:	62 f3 7d 28 03 d0 06 	valignd ymm2,ymm0,ymm0,0x6
  4035df:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  4035e6:	c5 fa 11 50 e0       	vmovss DWORD PTR [rax-0x20],xmm2
  4035eb:	c5 fa 11 40 f0       	vmovss DWORD PTR [rax-0x10],xmm0
  4035f0:	4d 39 c2             	cmp    r10,r8
  4035f3:	0f 85 e7 fe ff ff    	jne    4034e0 <kernels_MultiplyF32+0x290>
  4035f9:	49 89 d8             	mov    r8,rbx
  4035fc:	49 c1 e0 04          	shl    r8,0x4
  403600:	4d 29 c3             	sub    r11,r8
  403603:	4c 89 db             	mov    rbx,r11
  403606:	49 83 fb 07          	cmp    r11,0x7
  40360a:	0f 86 b1 00 00 00    	jbe    4036c1 <kernels_MultiplyF32+0x471>
  403610:	4c 89 c0             	mov    rax,r8
  403613:	c5 fd 6f 0d 25 1f 00 	vmovdqa ymm1,YMMWORD PTR [rip+0x1f25]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  40361a:	00 
  40361b:	48 83 e3 f8          	and    rbx,0xfffffffffffffff8
  40361f:	48 c1 e0 04          	shl    rax,0x4
  403623:	4c 8d 1c 07          	lea    r11,[rdi+rax*1]
  403627:	4c 8d 14 06          	lea    r10,[rsi+rax*1]
  40362b:	49 01 d8             	add    r8,rbx
  40362e:	c4 c1 7c 10 03       	vmovups ymm0,YMMWORD PTR [r11]
  403633:	c4 c1 7c 10 5b 40    	vmovups ymm3,YMMWORD PTR [r11+0x40]
  403639:	c4 c1 7c 10 12       	vmovups ymm2,YMMWORD PTR [r10]
  40363e:	62 d2 75 28 7f 5b 03 	vpermt2ps ymm3,ymm1,YMMWORD PTR [r11+0x60]
  403645:	62 d2 75 28 7f 43 01 	vpermt2ps ymm0,ymm1,YMMWORD PTR [r11+0x20]
  40364c:	62 d2 75 28 7f 52 01 	vpermt2ps ymm2,ymm1,YMMWORD PTR [r10+0x20]
  403653:	62 f2 75 28 7f c3    	vpermt2ps ymm0,ymm1,ymm3
  403659:	c4 c1 7c 10 5a 40    	vmovups ymm3,YMMWORD PTR [r10+0x40]
  40365f:	62 d2 75 28 7f 5a 03 	vpermt2ps ymm3,ymm1,YMMWORD PTR [r10+0x60]
  403666:	62 f2 6d 28 77 cb    	vpermi2ps ymm1,ymm2,ymm3
  40366c:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  403670:	62 f3 7d 28 19 c1 01 	vextractf32x4 xmm1,ymm0,0x1
  403677:	c4 e3 79 17 44 02 10 	vextractps DWORD PTR [rdx+rax*1+0x10],xmm0,0x1
  40367e:	01 
  40367f:	c4 e3 79 17 44 02 20 	vextractps DWORD PTR [rdx+rax*1+0x20],xmm0,0x2
  403686:	02 
  403687:	c4 e3 79 17 44 02 30 	vextractps DWORD PTR [rdx+rax*1+0x30],xmm0,0x3
  40368e:	03 
  40368f:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  403694:	c5 fa 11 4c 02 40    	vmovss DWORD PTR [rdx+rax*1+0x40],xmm1
  40369a:	62 f3 7d 28 03 c8 05 	valignd ymm1,ymm0,ymm0,0x5
  4036a1:	c5 fa 11 4c 02 50    	vmovss DWORD PTR [rdx+rax*1+0x50],xmm1
  4036a7:	62 f3 7d 28 03 c8 06 	valignd ymm1,ymm0,ymm0,0x6
  4036ae:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  4036b5:	c5 fa 11 4c 02 60    	vmovss DWORD PTR [rdx+rax*1+0x60],xmm1
  4036bb:	c5 fa 11 44 02 70    	vmovss DWORD PTR [rdx+rax*1+0x70],xmm0
  4036c1:	4c 89 c0             	mov    rax,r8
  4036c4:	48 c1 e0 04          	shl    rax,0x4
  4036c8:	48 01 c7             	add    rdi,rax
  4036cb:	48 01 c6             	add    rsi,rax
  4036ce:	48 01 c2             	add    rdx,rax
  4036d1:	31 c0                	xor    eax,eax
  4036d3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4036da:	00 00 00 00 
  4036de:	66 90                	xchg   ax,ax
  4036e0:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  4036e5:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  4036ea:	49 ff c0             	inc    r8
  4036ed:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  4036f2:	48 83 c0 10          	add    rax,0x10
  4036f6:	49 39 c8             	cmp    r8,rcx
  4036f9:	72 e5                	jb     4036e0 <kernels_MultiplyF32+0x490>
  4036fb:	c5 f8 77             	vzeroupper
  4036fe:	e9 57 fd ff ff       	jmp    40345a <kernels_MultiplyF32+0x20a>
  403703:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40370a:	00 00 00 00 
  40370e:	66 90                	xchg   ax,ax
  403710:	49 c1 e0 02          	shl    r8,0x2
  403714:	31 c0                	xor    eax,eax
  403716:	45 31 c9             	xor    r9d,r9d
  403719:	48 85 c9             	test   rcx,rcx
  40371c:	0f 84 38 fd ff ff    	je     40345a <kernels_MultiplyF32+0x20a>
  403722:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403729:	00 00 00 00 
  40372d:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403734:	00 00 00 00 
  403738:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40373f:	00 
  403740:	c5 fa 10 04 07       	vmovss xmm0,DWORD PTR [rdi+rax*1]
  403745:	c5 fa 59 04 06       	vmulss xmm0,xmm0,DWORD PTR [rsi+rax*1]
  40374a:	49 ff c1             	inc    r9
  40374d:	c5 fa 11 04 02       	vmovss DWORD PTR [rdx+rax*1],xmm0
  403752:	4c 01 c0             	add    rax,r8
  403755:	4c 39 c9             	cmp    rcx,r9
  403758:	75 e6                	jne    403740 <kernels_MultiplyF32+0x4f0>
  40375a:	e9 fb fc ff ff       	jmp    40345a <kernels_MultiplyF32+0x20a>
  40375f:	90                   	nop
  403760:	48 85 c9             	test   rcx,rcx
  403763:	0f 84 f1 fc ff ff    	je     40345a <kernels_MultiplyF32+0x20a>
  403769:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  40376d:	48 83 f8 0e          	cmp    rax,0xe
  403771:	0f 86 9b 00 00 00    	jbe    403812 <kernels_MultiplyF32+0x5c2>
  403777:	49 89 c8             	mov    r8,rcx
  40377a:	31 c0                	xor    eax,eax
  40377c:	49 c1 e8 04          	shr    r8,0x4
  403780:	4d 89 c1             	mov    r9,r8
  403783:	49 c1 e1 06          	shl    r9,0x6
  403787:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40378e:	00 00 00 00 
  403792:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403799:	00 00 00 00 
  40379d:	0f 1f 00             	nop    DWORD PTR [rax]
  4037a0:	62 f1 7c 48 10 04 06 	vmovups zmm0,ZMMWORD PTR [rsi+rax*1]
  4037a7:	62 f1 7c 48 59 04 07 	vmulps zmm0,zmm0,ZMMWORD PTR [rdi+rax*1]
  4037ae:	62 f1 7c 48 11 04 02 	vmovups ZMMWORD PTR [rdx+rax*1],zmm0
  4037b5:	48 83 c0 40          	add    rax,0x40
  4037b9:	4c 39 c8             	cmp    rax,r9
  4037bc:	75 e2                	jne    4037a0 <kernels_MultiplyF32+0x550>
  4037be:	4c 89 c0             	mov    rax,r8
  4037c1:	48 c1 e0 04          	shl    rax,0x4
  4037c5:	48 39 c1             	cmp    rcx,rax
  4037c8:	0f 84 89 fc ff ff    	je     403457 <kernels_MultiplyF32+0x207>
  4037ce:	48 29 c1             	sub    rcx,rax
  4037d1:	41 b8 10 00 00 00    	mov    r8d,0x10
  4037d7:	4c 39 c1             	cmp    rcx,r8
  4037da:	49 0f 47 c8          	cmova  rcx,r8
  4037de:	62 f2 7d 08 7a c1    	vpbroadcastb xmm0,ecx
  4037e4:	62 f3 7d 08 3e 0d 31 	vpcmpnleub k1,xmm0,XMMWORD PTR [rip+0x1d31]        # 405520 <__PRETTY_FUNCTION__.0+0x30>
  4037eb:	1d 00 00 06 
  4037ef:	62 f1 7c c9 10 14 87 	vmovups zmm2{k1}{z},ZMMWORD PTR [rdi+rax*4]
  4037f6:	62 f1 7c c9 10 0c 86 	vmovups zmm1{k1}{z},ZMMWORD PTR [rsi+rax*4]
  4037fd:	62 f1 6c c9 59 c1    	vmulps zmm0{k1}{z},zmm2,zmm1
  403803:	62 f1 7c 49 11 04 82 	vmovups ZMMWORD PTR [rdx+rax*4]{k1},zmm0
  40380a:	c5 f8 77             	vzeroupper
  40380d:	e9 48 fc ff ff       	jmp    40345a <kernels_MultiplyF32+0x20a>
  403812:	31 c0                	xor    eax,eax
  403814:	eb b8                	jmp    4037ce <kernels_MultiplyF32+0x57e>
  403816:	31 c0                	xor    eax,eax
  403818:	e9 6a fb ff ff       	jmp    403387 <kernels_MultiplyF32+0x137>
  40381d:	45 31 c0             	xor    r8d,r8d
  403820:	e9 db fd ff ff       	jmp    403600 <kernels_MultiplyF32+0x3b0>
  403825:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40382c:	00 00 00 00 

0000000000403830 <kernels_MultiplyF64>:
  403830:	49 89 d1             	mov    r9,rdx
  403833:	49 83 f8 04          	cmp    r8,0x4
  403837:	0f 84 63 01 00 00    	je     4039a0 <kernels_MultiplyF64+0x170>
  40383d:	0f 87 1d 01 00 00    	ja     403960 <kernels_MultiplyF64+0x130>
  403843:	49 83 f8 01          	cmp    r8,0x1
  403847:	0f 84 d3 01 00 00    	je     403a20 <kernels_MultiplyF64+0x1f0>
  40384d:	49 83 f8 02          	cmp    r8,0x2
  403851:	0f 85 89 01 00 00    	jne    4039e0 <kernels_MultiplyF64+0x1b0>
  403857:	48 85 c9             	test   rcx,rcx
  40385a:	0f 84 90 02 00 00    	je     403af0 <kernels_MultiplyF64+0x2c0>
  403860:	48 8d 51 ff          	lea    rdx,[rcx-0x1]
  403864:	48 83 fa 07          	cmp    rdx,0x7
  403868:	0f 86 93 02 00 00    	jbe    403b01 <kernels_MultiplyF64+0x2d1>
  40386e:	62 f1 fd 48 6f 1d 48 	vmovdqa64 zmm3,ZMMWORD PTR [rip+0x1d48]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  403875:	1d 00 00 
  403878:	4c 89 c8             	mov    rax,r9
  40387b:	48 c1 ea 03          	shr    rdx,0x3
  40387f:	49 89 d2             	mov    r10,rdx
  403882:	49 89 d0             	mov    r8,rdx
  403885:	31 d2                	xor    edx,edx
  403887:	49 c1 e2 07          	shl    r10,0x7
  40388b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  403890:	62 f1 fd 48 10 04 17 	vmovupd zmm0,ZMMWORD PTR [rdi+rdx*1]
  403897:	62 f1 fd 48 10 0c 16 	vmovupd zmm1,ZMMWORD PTR [rsi+rdx*1]
  40389e:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  4038a2:	62 f2 e5 48 7f 4c 16 	vpermt2pd zmm1,zmm3,ZMMWORD PTR [rsi+rdx*1+0x40]
  4038a9:	01 
  4038aa:	62 f2 e5 48 7f 44 17 	vpermt2pd zmm0,zmm3,ZMMWORD PTR [rdi+rdx*1+0x40]
  4038b1:	01 
  4038b2:	48 83 ea 80          	sub    rdx,0xffffffffffffff80
  4038b6:	62 f1 fd 48 59 c1    	vmulpd zmm0,zmm0,zmm1
  4038bc:	62 f3 fd 28 03 c8 03 	valignq ymm1,ymm0,ymm0,0x3
  4038c3:	c5 f9 13 40 80       	vmovlpd QWORD PTR [rax-0x80],xmm0
  4038c8:	c5 f9 17 40 90       	vmovhpd QWORD PTR [rax-0x70],xmm0
  4038cd:	62 f3 fd 28 19 c2 01 	vextractf64x2 xmm2,ymm0,0x1
  4038d4:	62 f3 fd 48 1b c0 01 	vextractf64x4 ymm0,zmm0,0x1
  4038db:	c5 fb 11 48 b0       	vmovsd QWORD PTR [rax-0x50],xmm1
  4038e0:	c5 f9 13 40 c0       	vmovlpd QWORD PTR [rax-0x40],xmm0
  4038e5:	c5 f9 17 40 d0       	vmovhpd QWORD PTR [rax-0x30],xmm0
  4038ea:	62 f3 fd 28 19 c1 01 	vextractf64x2 xmm1,ymm0,0x1
  4038f1:	c5 fb 11 50 a0       	vmovsd QWORD PTR [rax-0x60],xmm2
  4038f6:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  4038fd:	c5 fb 11 48 e0       	vmovsd QWORD PTR [rax-0x20],xmm1
  403902:	c5 fb 11 40 f0       	vmovsd QWORD PTR [rax-0x10],xmm0
  403907:	49 39 d2             	cmp    r10,rdx
  40390a:	75 84                	jne    403890 <kernels_MultiplyF64+0x60>
  40390c:	4a 8d 14 c5 00 00 00 	lea    rdx,[r8*8+0x0]
  403913:	00 
  403914:	c5 f8 77             	vzeroupper
  403917:	48 89 d0             	mov    rax,rdx
  40391a:	48 c1 e0 04          	shl    rax,0x4
  40391e:	48 01 c7             	add    rdi,rax
  403921:	48 01 c6             	add    rsi,rax
  403924:	49 01 c1             	add    r9,rax
  403927:	31 c0                	xor    eax,eax
  403929:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403930:	00 00 00 00 
  403934:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40393b:	00 00 00 00 
  40393f:	90                   	nop
  403940:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  403945:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40394a:	48 ff c2             	inc    rdx
  40394d:	c4 c1 7b 11 04 01    	vmovsd QWORD PTR [r9+rax*1],xmm0
  403953:	48 83 c0 10          	add    rax,0x10
  403957:	48 39 ca             	cmp    rdx,rcx
  40395a:	72 e4                	jb     403940 <kernels_MultiplyF64+0x110>
  40395c:	c3                   	ret
  40395d:	0f 1f 00             	nop    DWORD PTR [rax]
  403960:	49 83 f8 08          	cmp    r8,0x8
  403964:	75 7a                	jne    4039e0 <kernels_MultiplyF64+0x1b0>
  403966:	48 89 ca             	mov    rdx,rcx
  403969:	31 c0                	xor    eax,eax
  40396b:	48 c1 e2 06          	shl    rdx,0x6
  40396f:	48 85 c9             	test   rcx,rcx
  403972:	0f 84 88 01 00 00    	je     403b00 <kernels_MultiplyF64+0x2d0>
  403978:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40397f:	00 
  403980:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  403985:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  40398a:	c4 c1 7b 11 04 01    	vmovsd QWORD PTR [r9+rax*1],xmm0
  403990:	48 83 c0 40          	add    rax,0x40
  403994:	48 39 d0             	cmp    rax,rdx
  403997:	75 e7                	jne    403980 <kernels_MultiplyF64+0x150>
  403999:	c3                   	ret
  40399a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4039a0:	48 89 ca             	mov    rdx,rcx
  4039a3:	31 c0                	xor    eax,eax
  4039a5:	48 c1 e2 05          	shl    rdx,0x5
  4039a9:	48 85 c9             	test   rcx,rcx
  4039ac:	0f 84 0e 01 00 00    	je     403ac0 <kernels_MultiplyF64+0x290>
  4039b2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4039b9:	00 00 00 00 
  4039bd:	0f 1f 00             	nop    DWORD PTR [rax]
  4039c0:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  4039c5:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  4039ca:	c4 c1 7b 11 04 01    	vmovsd QWORD PTR [r9+rax*1],xmm0
  4039d0:	48 83 c0 20          	add    rax,0x20
  4039d4:	48 39 d0             	cmp    rax,rdx
  4039d7:	75 e7                	jne    4039c0 <kernels_MultiplyF64+0x190>
  4039d9:	c3                   	ret
  4039da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4039e0:	49 c1 e0 03          	shl    r8,0x3
  4039e4:	31 c0                	xor    eax,eax
  4039e6:	31 d2                	xor    edx,edx
  4039e8:	48 85 c9             	test   rcx,rcx
  4039eb:	0f 84 df 00 00 00    	je     403ad0 <kernels_MultiplyF64+0x2a0>
  4039f1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4039f8:	00 00 00 00 
  4039fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403a00:	c5 fb 10 04 07       	vmovsd xmm0,QWORD PTR [rdi+rax*1]
  403a05:	c5 fb 59 04 06       	vmulsd xmm0,xmm0,QWORD PTR [rsi+rax*1]
  403a0a:	48 ff c2             	inc    rdx
  403a0d:	c4 c1 7b 11 04 01    	vmovsd QWORD PTR [r9+rax*1],xmm0
  403a13:	4c 01 c0             	add    rax,r8
  403a16:	48 39 d1             	cmp    rcx,rdx
  403a19:	75 e5                	jne    403a00 <kernels_MultiplyF64+0x1d0>
  403a1b:	c3                   	ret
  403a1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403a20:	48 85 c9             	test   rcx,rcx
  403a23:	0f 84 b7 00 00 00    	je     403ae0 <kernels_MultiplyF64+0x2b0>
  403a29:	48 8d 41 ff          	lea    rax,[rcx-0x1]
  403a2d:	48 83 f8 06          	cmp    rax,0x6
  403a31:	0f 86 d1 00 00 00    	jbe    403b08 <kernels_MultiplyF64+0x2d8>
  403a37:	49 89 c8             	mov    r8,rcx
  403a3a:	31 c0                	xor    eax,eax
  403a3c:	49 c1 e8 03          	shr    r8,0x3
  403a40:	4c 89 c2             	mov    rdx,r8
  403a43:	48 c1 e2 06          	shl    rdx,0x6
  403a47:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403a4e:	00 00 00 00 
  403a52:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403a59:	00 00 00 00 
  403a5d:	0f 1f 00             	nop    DWORD PTR [rax]
  403a60:	62 f1 fd 48 10 04 06 	vmovupd zmm0,ZMMWORD PTR [rsi+rax*1]
  403a67:	62 f1 fd 48 59 04 07 	vmulpd zmm0,zmm0,ZMMWORD PTR [rdi+rax*1]
  403a6e:	62 d1 fd 48 11 04 01 	vmovupd ZMMWORD PTR [r9+rax*1],zmm0
  403a75:	48 83 c0 40          	add    rax,0x40
  403a79:	48 39 d0             	cmp    rax,rdx
  403a7c:	75 e2                	jne    403a60 <kernels_MultiplyF64+0x230>
  403a7e:	4a 8d 04 c5 00 00 00 	lea    rax,[r8*8+0x0]
  403a85:	00 
  403a86:	48 39 c1             	cmp    rcx,rax
  403a89:	74 2f                	je     403aba <kernels_MultiplyF64+0x28a>
  403a8b:	48 29 c1             	sub    rcx,rax
  403a8e:	62 f2 fd 48 7c c1    	vpbroadcastq zmm0,rcx
  403a94:	62 f3 fd 48 1e 0d e1 	vpcmpnleuq k1,zmm0,ZMMWORD PTR [rip+0x1ae1]        # 405580 <__PRETTY_FUNCTION__.0+0x90>
  403a9b:	1a 00 00 06 
  403a9f:	62 f1 fd c9 10 14 c7 	vmovupd zmm2{k1}{z},ZMMWORD PTR [rdi+rax*8]
  403aa6:	62 f1 fd c9 10 0c c6 	vmovupd zmm1{k1}{z},ZMMWORD PTR [rsi+rax*8]
  403aad:	62 f1 ed c9 59 c1    	vmulpd zmm0{k1}{z},zmm2,zmm1
  403ab3:	62 d1 fd 49 11 04 c1 	vmovupd ZMMWORD PTR [r9+rax*8]{k1},zmm0
  403aba:	c5 f8 77             	vzeroupper
  403abd:	c3                   	ret
  403abe:	66 90                	xchg   ax,ax
  403ac0:	c3                   	ret
  403ac1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403ac8:	00 00 00 00 
  403acc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403ad0:	c3                   	ret
  403ad1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403ad8:	00 00 00 00 
  403adc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403ae0:	c3                   	ret
  403ae1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403ae8:	00 00 00 00 
  403aec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403af0:	c3                   	ret
  403af1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403af8:	00 00 00 00 
  403afc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403b00:	c3                   	ret
  403b01:	31 d2                	xor    edx,edx
  403b03:	e9 0f fe ff ff       	jmp    403917 <kernels_MultiplyF64+0xe7>
  403b08:	31 c0                	xor    eax,eax
  403b0a:	e9 7c ff ff ff       	jmp    403a8b <kernels_MultiplyF64+0x25b>
  403b0f:	90                   	nop

0000000000403b10 <kernels_ThreeStencilF32>:
  403b10:	48 85 d2             	test   rdx,rdx
  403b13:	0f 84 47 03 00 00    	je     403e60 <kernels_ThreeStencilF32+0x350>
  403b19:	c7 06 00 00 00 00    	mov    DWORD PTR [rsi],0x0
  403b1f:	49 89 d0             	mov    r8,rdx
  403b22:	48 83 fa 01          	cmp    rdx,0x1
  403b26:	0f 84 34 03 00 00    	je     403e60 <kernels_ThreeStencilF32+0x350>
  403b2c:	48 89 c8             	mov    rax,rcx
  403b2f:	48 8d 4a ff          	lea    rcx,[rdx-0x1]
  403b33:	55                   	push   rbp
  403b34:	c5 f8 28 f0          	vmovaps xmm6,xmm0
  403b38:	4c 8d 0c 85 00 00 00 	lea    r9,[rax*4+0x0]
  403b3f:	00 
  403b40:	48 89 ca             	mov    rdx,rcx
  403b43:	48 89 e5             	mov    rbp,rsp
  403b46:	62 f2 7d 48 18 f8    	vbroadcastss zmm7,xmm0
  403b4c:	49 0f af d1          	imul   rdx,r9
  403b50:	48 83 ec 18          	sub    rsp,0x18
  403b54:	62 72 7d 48 18 c1    	vbroadcastss zmm8,xmm1
  403b5a:	62 72 7d 48 18 ca    	vbroadcastss zmm9,xmm2
  403b60:	c7 04 16 00 00 00 00 	mov    DWORD PTR [rsi+rdx*1],0x0
  403b67:	48 83 f8 04          	cmp    rax,0x4
  403b6b:	0f 84 ff 02 00 00    	je     403e70 <kernels_ThreeStencilF32+0x360>
  403b71:	0f 87 e9 06 00 00    	ja     404260 <kernels_ThreeStencilF32+0x750>
  403b77:	48 83 f8 01          	cmp    rax,0x1
  403b7b:	0f 84 ff 05 00 00    	je     404180 <kernels_ThreeStencilF32+0x670>
  403b81:	48 83 f8 02          	cmp    rax,0x2
  403b85:	0f 85 b5 0b 00 00    	jne    404740 <kernels_ThreeStencilF32+0xc30>
  403b8b:	48 83 f9 01          	cmp    rcx,0x1
  403b8f:	0f 84 c2 06 00 00    	je     404257 <kernels_ThreeStencilF32+0x747>
  403b95:	4d 8d 48 fd          	lea    r9,[r8-0x3]
  403b99:	49 83 f9 0f          	cmp    r9,0xf
  403b9d:	0f 86 56 0c 00 00    	jbe    4047f9 <kernels_ThreeStencilF32+0xce9>
  403ba3:	62 f1 7d 48 6f 05 93 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x1993]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  403baa:	19 00 00 
  403bad:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  403bb3:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  403bb9:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  403bbf:	49 c1 e9 04          	shr    r9,0x4
  403bc3:	4d 89 ca             	mov    r10,r9
  403bc6:	48 89 fa             	mov    rdx,rdi
  403bc9:	48 8d 46 08          	lea    rax,[rsi+0x8]
  403bcd:	49 c1 e2 07          	shl    r10,0x7
  403bd1:	49 01 fa             	add    r10,rdi
  403bd4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403bdb:	00 00 00 00 
  403bdf:	90                   	nop
  403be0:	62 f1 7c 48 10 aa 08 	vmovups zmm5,ZMMWORD PTR [rdx+0x8]
  403be7:	00 00 00 
  403bea:	62 f1 7c 48 10 22    	vmovups zmm4,ZMMWORD PTR [rdx]
  403bf0:	62 f1 7c 48 10 9a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x10]
  403bf7:	00 00 00 
  403bfa:	48 83 ea 80          	sub    rdx,0xffffffffffffff80
  403bfe:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  403c02:	62 f2 7d 48 7f aa c8 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rdx-0x38]
  403c09:	ff ff ff 
  403c0c:	62 f2 7d 48 7f 62 ff 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rdx-0x40]
  403c13:	62 f2 7d 48 7f 9a d0 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rdx-0x30]
  403c1a:	ff ff ff 
  403c1d:	62 d1 54 48 59 eb    	vmulps zmm5,zmm5,zmm11
  403c23:	62 d2 55 48 98 e4    	vfmadd132ps zmm4,zmm5,zmm12
  403c29:	62 d2 5d 48 98 da    	vfmadd132ps zmm3,zmm4,zmm10
  403c2f:	62 f3 7d 28 19 dd 01 	vextractf32x4 xmm5,ymm3,0x1
  403c36:	c4 e3 79 17 58 88 01 	vextractps DWORD PTR [rax-0x78],xmm3,0x1
  403c3d:	c4 e3 79 17 58 90 02 	vextractps DWORD PTR [rax-0x70],xmm3,0x2
  403c44:	c4 e3 79 17 58 98 03 	vextractps DWORD PTR [rax-0x68],xmm3,0x3
  403c4b:	c5 fa 11 58 80       	vmovss DWORD PTR [rax-0x80],xmm3
  403c50:	c5 fa 11 68 a0       	vmovss DWORD PTR [rax-0x60],xmm5
  403c55:	62 f3 65 28 03 eb 05 	valignd ymm5,ymm3,ymm3,0x5
  403c5c:	62 f3 65 28 03 e3 07 	valignd ymm4,ymm3,ymm3,0x7
  403c63:	c5 fa 11 68 a8       	vmovss DWORD PTR [rax-0x58],xmm5
  403c68:	62 f3 65 28 03 eb 06 	valignd ymm5,ymm3,ymm3,0x6
  403c6f:	62 f3 7d 48 1b db 01 	vextractf32x8 ymm3,zmm3,0x1
  403c76:	c5 fa 11 60 b8       	vmovss DWORD PTR [rax-0x48],xmm4
  403c7b:	c5 fa 11 58 c0       	vmovss DWORD PTR [rax-0x40],xmm3
  403c80:	c4 e3 79 17 58 c8 01 	vextractps DWORD PTR [rax-0x38],xmm3,0x1
  403c87:	c4 e3 79 17 58 d0 02 	vextractps DWORD PTR [rax-0x30],xmm3,0x2
  403c8e:	c4 e3 79 17 58 d8 03 	vextractps DWORD PTR [rax-0x28],xmm3,0x3
  403c95:	62 f3 7d 28 19 dc 01 	vextractf32x4 xmm4,ymm3,0x1
  403c9c:	c5 fa 11 68 b0       	vmovss DWORD PTR [rax-0x50],xmm5
  403ca1:	c5 fa 11 60 e0       	vmovss DWORD PTR [rax-0x20],xmm4
  403ca6:	62 f3 65 28 03 e3 05 	valignd ymm4,ymm3,ymm3,0x5
  403cad:	c5 fa 11 60 e8       	vmovss DWORD PTR [rax-0x18],xmm4
  403cb2:	62 f3 65 28 03 e3 06 	valignd ymm4,ymm3,ymm3,0x6
  403cb9:	62 f3 65 28 03 db 07 	valignd ymm3,ymm3,ymm3,0x7
  403cc0:	c5 fa 11 60 f0       	vmovss DWORD PTR [rax-0x10],xmm4
  403cc5:	c5 fa 11 58 f8       	vmovss DWORD PTR [rax-0x8],xmm3
  403cca:	49 39 d2             	cmp    r10,rdx
  403ccd:	0f 85 0d ff ff ff    	jne    403be0 <kernels_ThreeStencilF32+0xd0>
  403cd3:	49 c1 e1 04          	shl    r9,0x4
  403cd7:	49 8d 41 01          	lea    rax,[r9+0x1]
  403cdb:	4d 29 c8             	sub    r8,r9
  403cde:	49 83 e8 03          	sub    r8,0x3
  403ce2:	49 83 f8 07          	cmp    r8,0x7
  403ce6:	0f 86 f2 0a 00 00    	jbe    4047de <kernels_ThreeStencilF32+0xcce>
  403cec:	4a 8d 14 cd 00 00 00 	lea    rdx,[r9*8+0x0]
  403cf3:	00 
  403cf4:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
  403cf8:	c5 fd 6f 1d 40 18 00 	vmovdqa ymm3,YMMWORD PTR [rip+0x1840]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  403cff:	00 
  403d00:	c5 7c 29 c8          	vmovaps ymm0,ymm9
  403d04:	48 8d 1c 17          	lea    rbx,[rdi+rdx*1]
  403d08:	4c 8d 5c 17 08       	lea    r11,[rdi+rdx*1+0x8]
  403d0d:	c4 61 f9 6e db       	vmovq  xmm11,rbx
  403d12:	48 8d 5c 17 10       	lea    rbx,[rdi+rdx*1+0x10]
  403d17:	c5 fc 10 2b          	vmovups ymm5,YMMWORD PTR [rbx]
  403d1b:	62 f2 65 28 7f 6b 01 	vpermt2ps ymm5,ymm3,YMMWORD PTR [rbx+0x20]
  403d22:	c4 61 f9 7e db       	vmovq  rbx,xmm11
  403d27:	c4 41 7c 10 1b       	vmovups ymm11,YMMWORD PTR [r11]
  403d2c:	c5 7c 10 13          	vmovups ymm10,YMMWORD PTR [rbx]
  403d30:	62 72 65 28 7f 53 01 	vpermt2ps ymm10,ymm3,YMMWORD PTR [rbx+0x20]
  403d37:	62 d2 25 28 77 5b 01 	vpermi2ps ymm3,ymm11,YMMWORD PTR [r11+0x20]
  403d3e:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  403d42:	c4 c1 64 59 d8       	vmulps ymm3,ymm3,ymm8
  403d47:	c4 c2 45 b8 da       	vfmadd231ps ymm3,ymm7,ymm10
  403d4c:	c4 e2 65 98 c5       	vfmadd132ps ymm0,ymm3,ymm5
  403d51:	62 f3 7d 28 19 c3 01 	vextractf32x4 xmm3,ymm0,0x1
  403d58:	c4 e3 79 17 44 16 10 	vextractps DWORD PTR [rsi+rdx*1+0x10],xmm0,0x1
  403d5f:	01 
  403d60:	c4 e3 79 17 44 16 18 	vextractps DWORD PTR [rsi+rdx*1+0x18],xmm0,0x2
  403d67:	02 
  403d68:	c4 e3 79 17 44 16 20 	vextractps DWORD PTR [rsi+rdx*1+0x20],xmm0,0x3
  403d6f:	03 
  403d70:	c5 fa 11 44 16 08    	vmovss DWORD PTR [rsi+rdx*1+0x8],xmm0
  403d76:	c5 fa 11 5c 16 28    	vmovss DWORD PTR [rsi+rdx*1+0x28],xmm3
  403d7c:	62 f3 7d 28 03 d8 05 	valignd ymm3,ymm0,ymm0,0x5
  403d83:	c5 fa 11 5c 16 30    	vmovss DWORD PTR [rsi+rdx*1+0x30],xmm3
  403d89:	62 f3 7d 28 03 d8 06 	valignd ymm3,ymm0,ymm0,0x6
  403d90:	62 f3 7d 28 03 c0 07 	valignd ymm0,ymm0,ymm0,0x7
  403d97:	c5 fa 11 5c 16 38    	vmovss DWORD PTR [rsi+rdx*1+0x38],xmm3
  403d9d:	c5 fa 11 44 16 40    	vmovss DWORD PTR [rsi+rdx*1+0x40],xmm0
  403da3:	4c 89 c2             	mov    rdx,r8
  403da6:	48 83 e2 f8          	and    rdx,0xfffffffffffffff8
  403daa:	48 01 d0             	add    rax,rdx
  403dad:	49 29 d0             	sub    r8,rdx
  403db0:	49 83 f8 03          	cmp    r8,0x3
  403db4:	76 68                	jbe    403e1e <kernels_ThreeStencilF32+0x30e>
  403db6:	49 01 d1             	add    r9,rdx
  403db9:	49 83 e0 fc          	and    r8,0xfffffffffffffffc
  403dbd:	49 c1 e1 03          	shl    r9,0x3
  403dc1:	c4 a1 78 10 44 0f 08 	vmovups xmm0,XMMWORD PTR [rdi+r9*1+0x8]
  403dc8:	c4 a1 78 c6 44 0f 18 	vshufps xmm0,xmm0,XMMWORD PTR [rdi+r9*1+0x18],0x88
  403dcf:	88 
  403dd0:	c4 a1 78 10 24 0f    	vmovups xmm4,XMMWORD PTR [rdi+r9*1]
  403dd6:	4c 01 c0             	add    rax,r8
  403dd9:	c4 a1 58 c6 64 0f 10 	vshufps xmm4,xmm4,XMMWORD PTR [rdi+r9*1+0x10],0x88
  403de0:	88 
  403de1:	c4 a1 78 10 5c 0f 10 	vmovups xmm3,XMMWORD PTR [rdi+r9*1+0x10]
  403de8:	c4 a1 60 c6 5c 0f 20 	vshufps xmm3,xmm3,XMMWORD PTR [rdi+r9*1+0x20],0x88
  403def:	88 
  403df0:	c4 41 78 59 c0       	vmulps xmm8,xmm0,xmm8
  403df5:	c4 e2 39 98 fc       	vfmadd132ps xmm7,xmm8,xmm4
  403dfa:	c4 62 41 98 cb       	vfmadd132ps xmm9,xmm7,xmm3
  403dff:	c4 21 7a 11 4c 0e 08 	vmovss DWORD PTR [rsi+r9*1+0x8],xmm9
  403e06:	c4 23 79 17 4c 0e 10 	vextractps DWORD PTR [rsi+r9*1+0x10],xmm9,0x1
  403e0d:	01 
  403e0e:	c4 23 79 17 4c 0e 18 	vextractps DWORD PTR [rsi+r9*1+0x18],xmm9,0x2
  403e15:	02 
  403e16:	c4 23 79 17 4c 0e 20 	vextractps DWORD PTR [rsi+r9*1+0x20],xmm9,0x3
  403e1d:	03 
  403e1e:	c5 fa 10 44 c7 f8    	vmovss xmm0,DWORD PTR [rdi+rax*8-0x8]
  403e24:	c5 fa 10 1c c7       	vmovss xmm3,DWORD PTR [rdi+rax*8]
  403e29:	48 ff c0             	inc    rax
  403e2c:	c5 f2 59 eb          	vmulss xmm5,xmm1,xmm3
  403e30:	c5 fa 10 24 c7       	vmovss xmm4,DWORD PTR [rdi+rax*8]
  403e35:	c4 e2 51 99 c6       	vfmadd132ss xmm0,xmm5,xmm6
  403e3a:	c4 e2 69 b9 c4       	vfmadd231ss xmm0,xmm2,xmm4
  403e3f:	c5 fa 11 44 c6 f8    	vmovss DWORD PTR [rsi+rax*8-0x8],xmm0
  403e45:	c5 f8 28 c3          	vmovaps xmm0,xmm3
  403e49:	48 39 c8             	cmp    rax,rcx
  403e4c:	0f 83 05 04 00 00    	jae    404257 <kernels_ThreeStencilF32+0x747>
  403e52:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  403e56:	eb d1                	jmp    403e29 <kernels_ThreeStencilF32+0x319>
  403e58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  403e5f:	00 
  403e60:	c5 f8 77             	vzeroupper
  403e63:	c3                   	ret
  403e64:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  403e6b:	00 00 00 00 
  403e6f:	90                   	nop
  403e70:	48 83 f9 01          	cmp    rcx,0x1
  403e74:	0f 84 dd 03 00 00    	je     404257 <kernels_ThreeStencilF32+0x747>
  403e7a:	49 83 e8 03          	sub    r8,0x3
  403e7e:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
  403e82:	49 83 f8 0f          	cmp    r8,0xf
  403e86:	0f 86 60 09 00 00    	jbe    4047ec <kernels_ThreeStencilF32+0xcdc>
  403e8c:	62 f1 7d 48 6f 05 aa 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x16aa]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  403e93:	16 00 00 
  403e96:	4d 89 c1             	mov    r9,r8
  403e99:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  403e9f:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  403ea5:	49 c1 e9 04          	shr    r9,0x4
  403ea9:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  403eaf:	4d 89 ca             	mov    r10,r9
  403eb2:	48 89 fa             	mov    rdx,rdi
  403eb5:	48 8d 46 10          	lea    rax,[rsi+0x10]
  403eb9:	49 c1 e2 08          	shl    r10,0x8
  403ebd:	49 01 fa             	add    r10,rdi
  403ec0:	62 f1 7c 48 10 9a 20 	vmovups zmm3,ZMMWORD PTR [rdx+0x20]
  403ec7:	00 00 00 
  403eca:	62 f1 7c 48 10 a2 a0 	vmovups zmm4,ZMMWORD PTR [rdx+0xa0]
  403ed1:	00 00 00 
  403ed4:	62 f1 7c 48 10 6a 02 	vmovups zmm5,ZMMWORD PTR [rdx+0x80]
  403edb:	48 81 c2 00 01 00 00 	add    rdx,0x100
  403ee2:	62 71 7c 48 10 92 90 	vmovups zmm10,ZMMWORD PTR [rdx-0x70]
  403ee9:	ff ff ff 
  403eec:	48 05 00 01 00 00    	add    rax,0x100
  403ef2:	62 f2 7d 48 7f a2 e0 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rdx-0x20]
  403ef9:	ff ff ff 
  403efc:	62 f2 7d 48 7f 9a 60 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rdx-0xa0]
  403f03:	ff ff ff 
  403f06:	62 f2 7d 48 7f 6a ff 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rdx-0x40]
  403f0d:	62 f2 7d 48 7f dc    	vpermt2ps zmm3,zmm0,zmm4
  403f13:	62 f1 7c 48 10 62 fc 	vmovups zmm4,ZMMWORD PTR [rdx-0x100]
  403f1a:	62 72 7d 48 7f 92 d0 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rdx-0x30]
  403f21:	ff ff ff 
  403f24:	62 f2 7d 48 7f 62 fd 	vpermt2ps zmm4,zmm0,ZMMWORD PTR [rdx-0xc0]
  403f2b:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  403f31:	62 f1 7c 48 10 aa 10 	vmovups zmm5,ZMMWORD PTR [rdx-0xf0]
  403f38:	ff ff ff 
  403f3b:	62 f2 7d 48 7f aa 50 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rdx-0xb0]
  403f42:	ff ff ff 
  403f45:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  403f4b:	62 d1 54 48 59 ec    	vmulps zmm5,zmm5,zmm12
  403f51:	62 d2 55 48 98 e5    	vfmadd132ps zmm4,zmm5,zmm13
  403f57:	62 d2 5d 48 98 db    	vfmadd132ps zmm3,zmm4,zmm11
  403f5d:	62 f3 7d 28 19 dd 01 	vextractf32x4 xmm5,ymm3,0x1
  403f64:	c4 e3 79 17 98 10 ff 	vextractps DWORD PTR [rax-0xf0],xmm3,0x1
  403f6b:	ff ff 01 
  403f6e:	c4 e3 79 17 98 20 ff 	vextractps DWORD PTR [rax-0xe0],xmm3,0x2
  403f75:	ff ff 02 
  403f78:	c4 e3 79 17 98 30 ff 	vextractps DWORD PTR [rax-0xd0],xmm3,0x3
  403f7f:	ff ff 03 
  403f82:	c5 fa 11 98 00 ff ff 	vmovss DWORD PTR [rax-0x100],xmm3
  403f89:	ff 
  403f8a:	c5 fa 11 a8 40 ff ff 	vmovss DWORD PTR [rax-0xc0],xmm5
  403f91:	ff 
  403f92:	62 f3 65 28 03 eb 05 	valignd ymm5,ymm3,ymm3,0x5
  403f99:	62 f3 65 28 03 e3 07 	valignd ymm4,ymm3,ymm3,0x7
  403fa0:	c5 fa 11 a8 50 ff ff 	vmovss DWORD PTR [rax-0xb0],xmm5
  403fa7:	ff 
  403fa8:	62 f3 65 28 03 eb 06 	valignd ymm5,ymm3,ymm3,0x6
  403faf:	62 f3 7d 48 1b db 01 	vextractf32x8 ymm3,zmm3,0x1
  403fb6:	c5 fa 11 a0 70 ff ff 	vmovss DWORD PTR [rax-0x90],xmm4
  403fbd:	ff 
  403fbe:	c5 fa 11 58 80       	vmovss DWORD PTR [rax-0x80],xmm3
  403fc3:	c4 e3 79 17 58 90 01 	vextractps DWORD PTR [rax-0x70],xmm3,0x1
  403fca:	c4 e3 79 17 58 a0 02 	vextractps DWORD PTR [rax-0x60],xmm3,0x2
  403fd1:	c4 e3 79 17 58 b0 03 	vextractps DWORD PTR [rax-0x50],xmm3,0x3
  403fd8:	62 f3 7d 28 19 dc 01 	vextractf32x4 xmm4,ymm3,0x1
  403fdf:	c5 fa 11 a8 60 ff ff 	vmovss DWORD PTR [rax-0xa0],xmm5
  403fe6:	ff 
  403fe7:	c5 fa 11 60 c0       	vmovss DWORD PTR [rax-0x40],xmm4
  403fec:	62 f3 65 28 03 e3 05 	valignd ymm4,ymm3,ymm3,0x5
  403ff3:	c5 fa 11 60 d0       	vmovss DWORD PTR [rax-0x30],xmm4
  403ff8:	62 f3 65 28 03 e3 06 	valignd ymm4,ymm3,ymm3,0x6
  403fff:	62 f3 65 28 03 db 07 	valignd ymm3,ymm3,ymm3,0x7
  404006:	c5 fa 11 60 e0       	vmovss DWORD PTR [rax-0x20],xmm4
  40400b:	c5 fa 11 58 f0       	vmovss DWORD PTR [rax-0x10],xmm3
  404010:	4c 39 d2             	cmp    rdx,r10
  404013:	0f 85 a7 fe ff ff    	jne    403ec0 <kernels_ThreeStencilF32+0x3b0>
  404019:	49 c1 e1 04          	shl    r9,0x4
  40401d:	49 8d 41 01          	lea    rax,[r9+0x1]
  404021:	4d 29 c8             	sub    r8,r9
  404024:	4c 89 c3             	mov    rbx,r8
  404027:	49 83 f8 07          	cmp    r8,0x7
  40402b:	0f 86 e7 00 00 00    	jbe    404118 <kernels_ThreeStencilF32+0x608>
  404031:	49 c1 e1 04          	shl    r9,0x4
  404035:	4e 8d 44 0f 20       	lea    r8,[rdi+r9*1+0x20]
  40403a:	c5 fd 6f 05 fe 14 00 	vmovdqa ymm0,YMMWORD PTR [rip+0x14fe]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  404041:	00 
  404042:	4e 8d 1c 0f          	lea    r11,[rdi+r9*1]
  404046:	4e 8d 54 0f 10       	lea    r10,[rdi+r9*1+0x10]
  40404b:	c4 c1 7c 10 18       	vmovups ymm3,YMMWORD PTR [r8]
  404050:	c4 c1 7c 10 60 40    	vmovups ymm4,YMMWORD PTR [r8+0x40]
  404056:	c4 c1 7c 10 6b 40    	vmovups ymm5,YMMWORD PTR [r11+0x40]
  40405c:	48 83 e3 f8          	and    rbx,0xfffffffffffffff8
  404060:	c4 41 7c 10 52 40    	vmovups ymm10,YMMWORD PTR [r10+0x40]
  404066:	48 01 d8             	add    rax,rbx
  404069:	62 d2 7d 28 7f 60 03 	vpermt2ps ymm4,ymm0,YMMWORD PTR [r8+0x60]
  404070:	62 d2 7d 28 7f 58 01 	vpermt2ps ymm3,ymm0,YMMWORD PTR [r8+0x20]
  404077:	62 d2 7d 28 7f 6b 03 	vpermt2ps ymm5,ymm0,YMMWORD PTR [r11+0x60]
  40407e:	62 f2 7d 28 7f dc    	vpermt2ps ymm3,ymm0,ymm4
  404084:	c4 c1 7c 10 23       	vmovups ymm4,YMMWORD PTR [r11]
  404089:	62 52 7d 28 7f 52 03 	vpermt2ps ymm10,ymm0,YMMWORD PTR [r10+0x60]
  404090:	62 d2 7d 28 7f 63 01 	vpermt2ps ymm4,ymm0,YMMWORD PTR [r11+0x20]
  404097:	62 f2 7d 28 7f e5    	vpermt2ps ymm4,ymm0,ymm5
  40409d:	c4 c1 7c 10 2a       	vmovups ymm5,YMMWORD PTR [r10]
  4040a2:	62 d2 7d 28 7f 6a 01 	vpermt2ps ymm5,ymm0,YMMWORD PTR [r10+0x20]
  4040a9:	62 d2 55 28 77 c2    	vpermi2ps ymm0,ymm5,ymm10
  4040af:	c4 c1 7c 59 c0       	vmulps ymm0,ymm0,ymm8
  4040b4:	c4 e2 7d 98 fc       	vfmadd132ps ymm7,ymm0,ymm4
  4040b9:	c4 62 45 98 cb       	vfmadd132ps ymm9,ymm7,ymm3
  4040be:	62 73 7d 28 19 c8 01 	vextractf32x4 xmm0,ymm9,0x1
  4040c5:	c4 23 79 17 4c 0e 20 	vextractps DWORD PTR [rsi+r9*1+0x20],xmm9,0x1
  4040cc:	01 
  4040cd:	c4 23 79 17 4c 0e 30 	vextractps DWORD PTR [rsi+r9*1+0x30],xmm9,0x2
  4040d4:	02 
  4040d5:	c4 23 79 17 4c 0e 40 	vextractps DWORD PTR [rsi+r9*1+0x40],xmm9,0x3
  4040dc:	03 
  4040dd:	c4 21 7a 11 4c 0e 10 	vmovss DWORD PTR [rsi+r9*1+0x10],xmm9
  4040e4:	c4 a1 7a 11 44 0e 50 	vmovss DWORD PTR [rsi+r9*1+0x50],xmm0
  4040eb:	62 d3 35 28 03 c1 05 	valignd ymm0,ymm9,ymm9,0x5
  4040f2:	c4 a1 7a 11 44 0e 60 	vmovss DWORD PTR [rsi+r9*1+0x60],xmm0
  4040f9:	62 d3 35 28 03 c1 06 	valignd ymm0,ymm9,ymm9,0x6
  404100:	62 53 35 28 03 c9 07 	valignd ymm9,ymm9,ymm9,0x7
  404107:	c4 a1 7a 11 44 0e 70 	vmovss DWORD PTR [rsi+r9*1+0x70],xmm0
  40410e:	c4 21 7a 11 8c 0e 80 	vmovss DWORD PTR [rsi+r9*1+0x80],xmm9
  404115:	00 00 00 
  404118:	48 89 c2             	mov    rdx,rax
  40411b:	48 c1 e2 04          	shl    rdx,0x4
  40411f:	c5 fa 10 44 17 f0    	vmovss xmm0,DWORD PTR [rdi+rdx*1-0x10]
  404125:	48 89 c2             	mov    rdx,rax
  404128:	48 c1 e2 04          	shl    rdx,0x4
  40412c:	c5 fa 10 1c 17       	vmovss xmm3,DWORD PTR [rdi+rdx*1]
  404131:	eb 11                	jmp    404144 <kernels_ThreeStencilF32+0x634>
  404133:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40413a:	00 00 00 00 
  40413e:	66 90                	xchg   ax,ax
  404140:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  404144:	48 ff c0             	inc    rax
  404147:	c5 f2 59 eb          	vmulss xmm5,xmm1,xmm3
  40414b:	48 89 c2             	mov    rdx,rax
  40414e:	48 c1 e2 04          	shl    rdx,0x4
  404152:	c4 e2 51 99 c6       	vfmadd132ss xmm0,xmm5,xmm6
  404157:	c5 fa 10 24 17       	vmovss xmm4,DWORD PTR [rdi+rdx*1]
  40415c:	c4 e2 69 b9 c4       	vfmadd231ss xmm0,xmm2,xmm4
  404161:	c5 fa 11 44 16 f0    	vmovss DWORD PTR [rsi+rdx*1-0x10],xmm0
  404167:	c5 f8 28 c3          	vmovaps xmm0,xmm3
  40416b:	48 39 c8             	cmp    rax,rcx
  40416e:	72 d0                	jb     404140 <kernels_ThreeStencilF32+0x630>
  404170:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  404174:	e9 de 00 00 00       	jmp    404257 <kernels_ThreeStencilF32+0x747>
  404179:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404180:	48 83 f9 01          	cmp    rcx,0x1
  404184:	0f 84 cd 00 00 00    	je     404257 <kernels_ThreeStencilF32+0x747>
  40418a:	49 8d 50 fe          	lea    rdx,[r8-0x2]
  40418e:	49 83 e8 03          	sub    r8,0x3
  404192:	49 83 f8 0e          	cmp    r8,0xe
  404196:	0f 86 49 06 00 00    	jbe    4047e5 <kernels_ThreeStencilF32+0xcd5>
  40419c:	48 89 d1             	mov    rcx,rdx
  40419f:	31 c0                	xor    eax,eax
  4041a1:	48 c1 e9 04          	shr    rcx,0x4
  4041a5:	49 89 c8             	mov    r8,rcx
  4041a8:	49 c1 e0 06          	shl    r8,0x6
  4041ac:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4041b3:	00 00 00 00 
  4041b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4041be:	00 00 
  4041c0:	62 f1 3c 48 59 84 07 	vmulps zmm0,zmm8,ZMMWORD PTR [rdi+rax*1+0x4]
  4041c7:	04 00 00 00 
  4041cb:	62 f2 45 48 b8 04 07 	vfmadd231ps zmm0,zmm7,ZMMWORD PTR [rdi+rax*1]
  4041d2:	62 f2 35 48 b8 84 07 	vfmadd231ps zmm0,zmm9,ZMMWORD PTR [rdi+rax*1+0x8]
  4041d9:	08 00 00 00 
  4041dd:	62 f1 7c 48 11 84 06 	vmovups ZMMWORD PTR [rsi+rax*1+0x4],zmm0
  4041e4:	04 00 00 00 
  4041e8:	48 83 c0 40          	add    rax,0x40
  4041ec:	4c 39 c0             	cmp    rax,r8
  4041ef:	75 cf                	jne    4041c0 <kernels_ThreeStencilF32+0x6b0>
  4041f1:	48 c1 e1 04          	shl    rcx,0x4
  4041f5:	48 39 d1             	cmp    rcx,rdx
  4041f8:	74 5d                	je     404257 <kernels_ThreeStencilF32+0x747>
  4041fa:	48 89 d0             	mov    rax,rdx
  4041fd:	ba 10 00 00 00       	mov    edx,0x10
  404202:	48 29 c8             	sub    rax,rcx
  404205:	48 39 d0             	cmp    rax,rdx
  404208:	48 0f 47 c2          	cmova  rax,rdx
  40420c:	62 f2 7d 08 7a c0    	vpbroadcastb xmm0,eax
  404212:	62 f3 7d 08 3e 0d 03 	vpcmpnleub k1,xmm0,XMMWORD PTR [rip+0x1303]        # 405520 <__PRETTY_FUNCTION__.0+0x30>
  404219:	13 00 00 06 
  40421d:	62 f1 7c c9 10 94 8f 	vmovups zmm2{k1}{z},ZMMWORD PTR [rdi+rcx*4+0x4]
  404224:	04 00 00 00 
  404228:	62 f1 7c c9 10 0c 8f 	vmovups zmm1{k1}{z},ZMMWORD PTR [rdi+rcx*4]
  40422f:	62 d1 6c c9 59 c0    	vmulps zmm0{k1}{z},zmm2,zmm8
  404235:	62 f2 7d c9 98 cf    	vfmadd132ps zmm1{k1}{z},zmm0,zmm7
  40423b:	62 f1 7c c9 10 84 8f 	vmovups zmm0{k1}{z},ZMMWORD PTR [rdi+rcx*4+0x8]
  404242:	08 00 00 00 
  404246:	62 d2 75 c9 98 c1    	vfmadd132ps zmm0{k1}{z},zmm1,zmm9
  40424c:	62 f1 7c 49 11 84 8e 	vmovups ZMMWORD PTR [rsi+rcx*4+0x4]{k1},zmm0
  404253:	04 00 00 00 
  404257:	c5 f8 77             	vzeroupper
  40425a:	c9                   	leave
  40425b:	c3                   	ret
  40425c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  404260:	48 83 f8 08          	cmp    rax,0x8
  404264:	0f 85 d6 04 00 00    	jne    404740 <kernels_ThreeStencilF32+0xc30>
  40426a:	48 83 f9 01          	cmp    rcx,0x1
  40426e:	74 e7                	je     404257 <kernels_ThreeStencilF32+0x747>
  404270:	4d 8d 48 fd          	lea    r9,[r8-0x3]
  404274:	49 83 f9 0f          	cmp    r9,0xf
  404278:	0f 86 53 05 00 00    	jbe    4047d1 <kernels_ThreeStencilF32+0xcc1>
  40427e:	49 c1 e9 04          	shr    r9,0x4
  404282:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  404288:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  40428e:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  404294:	4d 89 ca             	mov    r10,r9
  404297:	62 f1 7d 48 6f 05 9f 	vmovdqa32 zmm0,ZMMWORD PTR [rip+0x129f]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  40429e:	12 00 00 
  4042a1:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  4042a7:	48 8d 56 20          	lea    rdx,[rsi+0x20]
  4042ab:	49 c1 e2 09          	shl    r10,0x9
  4042af:	48 89 f8             	mov    rax,rdi
  4042b2:	49 01 fa             	add    r10,rdi
  4042b5:	eb 0f                	jmp    4042c6 <kernels_ThreeStencilF32+0x7b6>
  4042b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4042be:	00 00 
  4042c0:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  4042c6:	62 e1 7c 48 10 60 01 	vmovups zmm20,ZMMWORD PTR [rax+0x40]
  4042cd:	62 e1 7c 48 10 58 03 	vmovups zmm19,ZMMWORD PTR [rax+0xc0]
  4042d4:	62 71 7c 48 10 78 02 	vmovups zmm15,ZMMWORD PTR [rax+0x80]
  4042db:	48 05 00 02 00 00    	add    rax,0x200
  4042e1:	62 f1 7c 48 10 68 fc 	vmovups zmm5,ZMMWORD PTR [rax-0x100]
  4042e8:	62 e1 7c 48 10 50 fd 	vmovups zmm18,ZMMWORD PTR [rax-0xc0]
  4042ef:	62 71 7c 48 10 50 fe 	vmovups zmm10,ZMMWORD PTR [rax-0x80]
  4042f6:	48 81 c2 00 02 00 00 	add    rdx,0x200
  4042fd:	62 e1 7c 48 10 48 ff 	vmovups zmm17,ZMMWORD PTR [rax-0x40]
  404304:	62 71 7c 48 10 18    	vmovups zmm11,ZMMWORD PTR [rax]
  40430a:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  404310:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  404316:	62 b2 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm20
  40431c:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  404322:	62 d2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm15
  404328:	62 b2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm18
  40432e:	62 b2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm16
  404334:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  40433a:	62 32 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm19
  404340:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  404346:	62 c2 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm10
  40434c:	62 32 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm17
  404352:	62 d2 7d 48 7f e7    	vpermt2ps zmm4,zmm0,zmm15
  404358:	62 71 7c 48 10 b8 a0 	vmovups zmm15,ZMMWORD PTR [rax-0x60]
  40435f:	ff ff ff 
  404362:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  404368:	62 71 7c 48 10 90 a0 	vmovups zmm10,ZMMWORD PTR [rax-0x160]
  40436f:	fe ff ff 
  404372:	62 c2 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm11
  404378:	62 f2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm5
  40437e:	62 f1 7c 48 10 a8 20 	vmovups zmm5,ZMMWORD PTR [rax-0x1e0]
  404385:	fe ff ff 
  404388:	62 a2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm21
  40438e:	62 b2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm16
  404394:	62 72 7d 48 7f b8 e0 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rax-0x20]
  40439b:	ff ff ff 
  40439e:	62 72 7d 48 7f 90 e0 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rax-0x120]
  4043a5:	fe ff ff 
  4043a8:	62 f2 7d 48 7f a8 60 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rax-0x1a0]
  4043af:	fe ff ff 
  4043b2:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  4043b8:	62 71 7c 48 10 90 20 	vmovups zmm10,ZMMWORD PTR [rax-0xe0]
  4043bf:	ff ff ff 
  4043c2:	62 72 7d 48 7f 90 60 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rax-0xa0]
  4043c9:	ff ff ff 
  4043cc:	62 52 7d 48 7f d7    	vpermt2ps zmm10,zmm0,zmm15
  4043d2:	62 d2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm10
  4043d8:	62 d1 54 48 59 ed    	vmulps zmm5,zmm5,zmm13
  4043de:	62 d2 55 48 98 e6    	vfmadd132ps zmm4,zmm5,zmm14
  4043e4:	62 d2 5d 48 98 dc    	vfmadd132ps zmm3,zmm4,zmm12
  4043ea:	62 f3 7d 28 19 dd 01 	vextractf32x4 xmm5,ymm3,0x1
  4043f1:	c4 e3 79 17 9a 20 fe 	vextractps DWORD PTR [rdx-0x1e0],xmm3,0x1
  4043f8:	ff ff 01 
  4043fb:	c4 e3 79 17 9a 40 fe 	vextractps DWORD PTR [rdx-0x1c0],xmm3,0x2
  404402:	ff ff 02 
  404405:	c4 e3 79 17 9a 60 fe 	vextractps DWORD PTR [rdx-0x1a0],xmm3,0x3
  40440c:	ff ff 03 
  40440f:	c5 fa 11 9a 00 fe ff 	vmovss DWORD PTR [rdx-0x200],xmm3
  404416:	ff 
  404417:	c5 fa 11 aa 80 fe ff 	vmovss DWORD PTR [rdx-0x180],xmm5
  40441e:	ff 
  40441f:	62 f3 65 28 03 eb 05 	valignd ymm5,ymm3,ymm3,0x5
  404426:	62 f3 65 28 03 e3 07 	valignd ymm4,ymm3,ymm3,0x7
  40442d:	c5 fa 11 aa a0 fe ff 	vmovss DWORD PTR [rdx-0x160],xmm5
  404434:	ff 
  404435:	62 f3 65 28 03 eb 06 	valignd ymm5,ymm3,ymm3,0x6
  40443c:	62 f3 7d 48 1b db 01 	vextractf32x8 ymm3,zmm3,0x1
  404443:	c5 fa 11 a2 e0 fe ff 	vmovss DWORD PTR [rdx-0x120],xmm4
  40444a:	ff 
  40444b:	c5 fa 11 9a 00 ff ff 	vmovss DWORD PTR [rdx-0x100],xmm3
  404452:	ff 
  404453:	c4 e3 79 17 9a 20 ff 	vextractps DWORD PTR [rdx-0xe0],xmm3,0x1
  40445a:	ff ff 01 
  40445d:	c4 e3 79 17 9a 40 ff 	vextractps DWORD PTR [rdx-0xc0],xmm3,0x2
  404464:	ff ff 02 
  404467:	c4 e3 79 17 9a 60 ff 	vextractps DWORD PTR [rdx-0xa0],xmm3,0x3
  40446e:	ff ff 03 
  404471:	62 f3 7d 28 19 dc 01 	vextractf32x4 xmm4,ymm3,0x1
  404478:	c5 fa 11 aa c0 fe ff 	vmovss DWORD PTR [rdx-0x140],xmm5
  40447f:	ff 
  404480:	c5 fa 11 62 80       	vmovss DWORD PTR [rdx-0x80],xmm4
  404485:	62 f3 65 28 03 e3 05 	valignd ymm4,ymm3,ymm3,0x5
  40448c:	c5 fa 11 62 a0       	vmovss DWORD PTR [rdx-0x60],xmm4
  404491:	62 f3 65 28 03 e3 06 	valignd ymm4,ymm3,ymm3,0x6
  404498:	62 f3 65 28 03 db 07 	valignd ymm3,ymm3,ymm3,0x7
  40449f:	c5 fa 11 62 c0       	vmovss DWORD PTR [rdx-0x40],xmm4
  4044a4:	c5 fa 11 5a e0       	vmovss DWORD PTR [rdx-0x20],xmm3
  4044a9:	49 39 c2             	cmp    r10,rax
  4044ac:	0f 85 0e fe ff ff    	jne    4042c0 <kernels_ThreeStencilF32+0x7b0>
  4044b2:	49 c1 e1 04          	shl    r9,0x4
  4044b6:	49 8d 41 01          	lea    rax,[r9+0x1]
  4044ba:	4d 29 c8             	sub    r8,r9
  4044bd:	49 8d 50 fd          	lea    rdx,[r8-0x3]
  4044c1:	48 83 fa 06          	cmp    rdx,0x6
  4044c5:	0f 86 de 01 00 00    	jbe    4046a9 <kernels_ThreeStencilF32+0xb99>
  4044cb:	49 c1 e1 05          	shl    r9,0x5
  4044cf:	4e 8d 14 0f          	lea    r10,[rdi+r9*1]
  4044d3:	49 8d 50 fe          	lea    rdx,[r8-0x2]
  4044d7:	c5 fd 6f 05 61 10 00 	vmovdqa ymm0,YMMWORD PTR [rip+0x1061]        # 405540 <__PRETTY_FUNCTION__.0+0x50>
  4044de:	00 
  4044df:	4c 89 75 f0          	mov    QWORD PTR [rbp-0x10],r14
  4044e3:	c4 c1 7c 10 2a       	vmovups ymm5,YMMWORD PTR [r10]
  4044e8:	49 89 d6             	mov    r14,rdx
  4044eb:	4c 89 7d f8          	mov    QWORD PTR [rbp-0x8],r15
  4044ef:	48 89 5d e8          	mov    QWORD PTR [rbp-0x18],rbx
  4044f3:	4e 8d 5c 0f 20       	lea    r11,[rdi+r9*1+0x20]
  4044f8:	4e 8d 44 0f 40       	lea    r8,[rdi+r9*1+0x40]
  4044fd:	48 c1 ea 03          	shr    rdx,0x3
  404501:	49 89 d7             	mov    r15,rdx
  404504:	4e 8d 4c 0e 20       	lea    r9,[rsi+r9*1+0x20]
  404509:	48 c1 e2 08          	shl    rdx,0x8
  40450d:	48 89 d3             	mov    rbx,rdx
  404510:	31 d2                	xor    edx,edx
  404512:	62 c1 7c 28 10 54 12 	vmovups ymm18,YMMWORD PTR [r10+rdx*1+0x40]
  404519:	02 
  40451a:	c4 c1 7c 10 5c 12 20 	vmovups ymm3,YMMWORD PTR [r10+rdx*1+0x20]
  404521:	c4 41 7c 10 64 12 60 	vmovups ymm12,YMMWORD PTR [r10+rdx*1+0x60]
  404528:	62 c1 7e 08 10 7c 10 	vmovss xmm23,DWORD PTR [r8+rdx*1+0xe0]
  40452f:	38 
  404530:	62 c1 7c 28 10 4c 12 	vmovups ymm17,YMMWORD PTR [r10+rdx*1+0x80]
  404537:	04 
  404538:	c4 41 7c 10 bc 12 c0 	vmovups ymm15,YMMWORD PTR [r10+rdx*1+0xc0]
  40453f:	00 00 00 
  404542:	c4 41 7c 10 b4 10 c0 	vmovups ymm14,YMMWORD PTR [r8+rdx*1+0xc0]
  404549:	00 00 00 
  40454c:	49 81 c1 00 01 00 00 	add    r9,0x100
  404553:	c4 41 7c 10 94 12 a0 	vmovups ymm10,YMMWORD PTR [r10+rdx*1+0xa0]
  40455a:	00 00 00 
  40455d:	c4 41 7c 10 9c 13 c0 	vmovups ymm11,YMMWORD PTR [r11+rdx*1+0xc0]
  404564:	00 00 00 
  404567:	62 a1 7c 28 28 da    	vmovaps ymm19,ymm18
  40456d:	62 f2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm3
  404573:	62 b2 7d 28 7f da    	vpermt2ps ymm3,ymm0,ymm18
  404579:	62 c2 7d 28 7f dc    	vpermt2ps ymm19,ymm0,ymm12
  40457f:	62 32 7d 28 7f e1    	vpermt2ps ymm12,ymm0,ymm17
  404585:	62 31 7c 28 28 e9    	vmovaps ymm13,ymm17
  40458b:	62 c1 7c 28 28 c7    	vmovaps ymm16,ymm15
  404591:	62 d2 7d 28 7f dc    	vpermt2ps ymm3,ymm0,ymm12
  404597:	62 c1 7c 28 28 f6    	vmovaps ymm22,ymm14
  40459d:	c4 41 7a 10 a4 13 e0 	vmovss xmm12,DWORD PTR [r11+rdx*1+0xe0]
  4045a4:	00 00 00 
  4045a7:	62 52 7d 28 7f ea    	vpermt2ps ymm13,ymm0,ymm10
  4045ad:	62 b1 7c 28 28 e3    	vmovaps ymm4,ymm19
  4045b3:	62 c2 7d 28 7f c3    	vpermt2ps ymm16,ymm0,ymm11
  4045b9:	62 a2 7d 28 7f f7    	vpermt2ps ymm22,ymm0,ymm23
  4045bf:	62 52 7d 28 7f d7    	vpermt2ps ymm10,ymm0,ymm15
  4045c5:	62 52 7d 28 7f dc    	vpermt2ps ymm11,ymm0,ymm12
  4045cb:	62 d2 7d 28 7f e5    	vpermt2ps ymm4,ymm0,ymm13
  4045d1:	62 a2 7d 28 7f c6    	vpermt2ps ymm16,ymm0,ymm22
  4045d7:	62 b2 7d 28 7f eb    	vpermt2ps ymm5,ymm0,ymm19
  4045dd:	62 52 7d 28 7f d3    	vpermt2ps ymm10,ymm0,ymm11
  4045e3:	62 b2 7d 28 7f e0    	vpermt2ps ymm4,ymm0,ymm16
  4045e9:	62 c1 7e 08 10 5c 12 	vmovss xmm19,DWORD PTR [r10+rdx*1+0xe0]
  4045f0:	38 
  4045f1:	62 c1 7c 28 28 c7    	vmovaps ymm16,ymm15
  4045f7:	62 d2 7d 28 7f da    	vpermt2ps ymm3,ymm0,ymm10
  4045fd:	62 a2 7d 28 7f c3    	vpermt2ps ymm16,ymm0,ymm19
  404603:	48 81 c2 00 01 00 00 	add    rdx,0x100
  40460a:	c4 c1 64 59 d8       	vmulps ymm3,ymm3,ymm8
  40460f:	62 32 7d 28 7f e8    	vpermt2ps ymm13,ymm0,ymm16
  404615:	62 d2 7d 28 7f ed    	vpermt2ps ymm5,ymm0,ymm13
  40461b:	c4 e2 45 b8 dd       	vfmadd231ps ymm3,ymm7,ymm5
  404620:	c4 e2 35 b8 dc       	vfmadd231ps ymm3,ymm9,ymm4
  404625:	62 f3 7d 28 19 dc 01 	vextractf32x4 xmm4,ymm3,0x1
  40462c:	c4 c3 79 17 99 20 ff 	vextractps DWORD PTR [r9-0xe0],xmm3,0x1
  404633:	ff ff 01 
  404636:	c4 c3 79 17 99 40 ff 	vextractps DWORD PTR [r9-0xc0],xmm3,0x2
  40463d:	ff ff 02 
  404640:	c4 c3 79 17 99 60 ff 	vextractps DWORD PTR [r9-0xa0],xmm3,0x3
  404647:	ff ff 03 
  40464a:	c4 c1 7a 11 99 00 ff 	vmovss DWORD PTR [r9-0x100],xmm3
  404651:	ff ff 
  404653:	c4 c1 7a 11 61 80    	vmovss DWORD PTR [r9-0x80],xmm4
  404659:	62 f3 65 28 03 e3 05 	valignd ymm4,ymm3,ymm3,0x5
  404660:	c4 c1 7a 11 61 a0    	vmovss DWORD PTR [r9-0x60],xmm4
  404666:	62 f3 65 28 03 e3 06 	valignd ymm4,ymm3,ymm3,0x6
  40466d:	62 f3 65 28 03 db 07 	valignd ymm3,ymm3,ymm3,0x7
  404674:	c4 c1 7a 11 61 c0    	vmovss DWORD PTR [r9-0x40],xmm4
  40467a:	c4 c1 7a 11 59 e0    	vmovss DWORD PTR [r9-0x20],xmm3
  404680:	48 39 d3             	cmp    rbx,rdx
  404683:	0f 85 27 01 00 00    	jne    4047b0 <kernels_ThreeStencilF32+0xca0>
  404689:	4e 8d 1c fd 00 00 00 	lea    r11,[r15*8+0x0]
  404690:	00 
  404691:	4d 39 de             	cmp    r14,r11
  404694:	0f 84 26 01 00 00    	je     4047c0 <kernels_ThreeStencilF32+0xcb0>
  40469a:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  40469e:	4c 8b 75 f0          	mov    r14,QWORD PTR [rbp-0x10]
  4046a2:	4c 8b 7d f8          	mov    r15,QWORD PTR [rbp-0x8]
  4046a6:	4c 01 d8             	add    rax,r11
  4046a9:	48 89 c2             	mov    rdx,rax
  4046ac:	48 c1 e2 05          	shl    rdx,0x5
  4046b0:	c5 fa 10 44 17 e0    	vmovss xmm0,DWORD PTR [rdi+rdx*1-0x20]
  4046b6:	48 89 c2             	mov    rdx,rax
  4046b9:	48 c1 e2 05          	shl    rdx,0x5
  4046bd:	c5 fa 10 1c 17       	vmovss xmm3,DWORD PTR [rdi+rdx*1]
  4046c2:	eb 40                	jmp    404704 <kernels_ThreeStencilF32+0xbf4>
  4046c4:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4046cb:	00 00 00 00 
  4046cf:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4046d6:	00 00 00 00 
  4046da:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4046e1:	00 00 00 00 
  4046e5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4046ec:	00 00 00 00 
  4046f0:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  4046f7:	00 00 00 00 
  4046fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404700:	c5 f8 28 dc          	vmovaps xmm3,xmm4
  404704:	48 ff c0             	inc    rax
  404707:	c5 f2 59 eb          	vmulss xmm5,xmm1,xmm3
  40470b:	48 89 c2             	mov    rdx,rax
  40470e:	48 c1 e2 05          	shl    rdx,0x5
  404712:	c4 e2 51 99 c6       	vfmadd132ss xmm0,xmm5,xmm6
  404717:	c5 fa 10 24 17       	vmovss xmm4,DWORD PTR [rdi+rdx*1]
  40471c:	c4 e2 69 b9 c4       	vfmadd231ss xmm0,xmm2,xmm4
  404721:	c5 fa 11 44 16 e0    	vmovss DWORD PTR [rsi+rdx*1-0x20],xmm0
  404727:	c5 f8 28 c3          	vmovaps xmm0,xmm3
  40472b:	48 39 c8             	cmp    rax,rcx
  40472e:	72 d0                	jb     404700 <kernels_ThreeStencilF32+0xbf0>
  404730:	e9 22 fb ff ff       	jmp    404257 <kernels_ThreeStencilF32+0x747>
  404735:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40473c:	00 00 00 00 
  404740:	48 83 f9 01          	cmp    rcx,0x1
  404744:	0f 84 0d fb ff ff    	je     404257 <kernels_ThreeStencilF32+0x747>
  40474a:	4c 8d 04 c7          	lea    r8,[rdi+rax*8]
  40474e:	4e 8d 14 0f          	lea    r10,[rdi+r9*1]
  404752:	4c 01 ce             	add    rsi,r9
  404755:	31 c0                	xor    eax,eax
  404757:	ba 01 00 00 00       	mov    edx,0x1
  40475c:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404763:	00 00 00 00 
  404767:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  40476e:	00 00 00 00 
  404772:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404779:	00 00 00 00 
  40477d:	0f 1f 00             	nop    DWORD PTR [rax]
  404780:	c4 c1 72 59 04 02    	vmulss xmm0,xmm1,DWORD PTR [r10+rax*1]
  404786:	48 ff c2             	inc    rdx
  404789:	c4 e2 49 b9 04 07    	vfmadd231ss xmm0,xmm6,DWORD PTR [rdi+rax*1]
  40478f:	c4 c2 69 b9 04 00    	vfmadd231ss xmm0,xmm2,DWORD PTR [r8+rax*1]
  404795:	c5 fa 11 04 06       	vmovss DWORD PTR [rsi+rax*1],xmm0
  40479a:	4c 01 c8             	add    rax,r9
  40479d:	48 39 d1             	cmp    rcx,rdx
  4047a0:	75 de                	jne    404780 <kernels_ThreeStencilF32+0xc70>
  4047a2:	e9 b0 fa ff ff       	jmp    404257 <kernels_ThreeStencilF32+0x747>
  4047a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4047ae:	00 00 
  4047b0:	c5 7c 29 f5          	vmovaps ymm5,ymm14
  4047b4:	e9 59 fd ff ff       	jmp    404512 <kernels_ThreeStencilF32+0xa02>
  4047b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4047c0:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  4047c4:	4c 8b 75 f0          	mov    r14,QWORD PTR [rbp-0x10]
  4047c8:	4c 8b 7d f8          	mov    r15,QWORD PTR [rbp-0x8]
  4047cc:	e9 86 fa ff ff       	jmp    404257 <kernels_ThreeStencilF32+0x747>
  4047d1:	45 31 c9             	xor    r9d,r9d
  4047d4:	b8 01 00 00 00       	mov    eax,0x1
  4047d9:	e9 dc fc ff ff       	jmp    4044ba <kernels_ThreeStencilF32+0x9aa>
  4047de:	31 d2                	xor    edx,edx
  4047e0:	e9 c8 f5 ff ff       	jmp    403dad <kernels_ThreeStencilF32+0x29d>
  4047e5:	31 c9                	xor    ecx,ecx
  4047e7:	e9 0e fa ff ff       	jmp    4041fa <kernels_ThreeStencilF32+0x6ea>
  4047ec:	45 31 c9             	xor    r9d,r9d
  4047ef:	b8 01 00 00 00       	mov    eax,0x1
  4047f4:	e9 28 f8 ff ff       	jmp    404021 <kernels_ThreeStencilF32+0x511>
  4047f9:	45 31 c9             	xor    r9d,r9d
  4047fc:	b8 01 00 00 00       	mov    eax,0x1
  404801:	e9 d5 f4 ff ff       	jmp    403cdb <kernels_ThreeStencilF32+0x1cb>
  404806:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  40480d:	00 00 00 

0000000000404810 <kernels_ThreeStencilF64>:
  404810:	48 85 d2             	test   rdx,rdx
  404813:	0f 84 f3 04 00 00    	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404819:	48 c7 06 00 00 00 00 	mov    QWORD PTR [rsi],0x0
  404820:	48 83 fa 01          	cmp    rdx,0x1
  404824:	0f 84 e2 04 00 00    	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  40482a:	4c 8d 42 ff          	lea    r8,[rdx-0x1]
  40482e:	4c 8d 0c cd 00 00 00 	lea    r9,[rcx*8+0x0]
  404835:	00 
  404836:	c5 f9 28 f0          	vmovapd xmm6,xmm0
  40483a:	62 72 fd 48 19 c0    	vbroadcastsd zmm8,xmm0
  404840:	4c 89 c0             	mov    rax,r8
  404843:	62 72 fd 48 19 c9    	vbroadcastsd zmm9,xmm1
  404849:	62 f2 fd 48 19 fa    	vbroadcastsd zmm7,xmm2
  40484f:	49 0f af c1          	imul   rax,r9
  404853:	48 c7 04 06 00 00 00 	mov    QWORD PTR [rsi+rax*1],0x0
  40485a:	00 
  40485b:	48 83 f9 04          	cmp    rcx,0x4
  40485f:	0f 84 fb 01 00 00    	je     404a60 <kernels_ThreeStencilF64+0x250>
  404865:	0f 87 b5 04 00 00    	ja     404d20 <kernels_ThreeStencilF64+0x510>
  40486b:	48 83 f9 01          	cmp    rcx,0x1
  40486f:	0f 84 cb 03 00 00    	je     404c40 <kernels_ThreeStencilF64+0x430>
  404875:	48 83 f9 02          	cmp    rcx,0x2
  404879:	0f 85 f1 04 00 00    	jne    404d70 <kernels_ThreeStencilF64+0x560>
  40487f:	49 83 f8 01          	cmp    r8,0x1
  404883:	0f 84 83 04 00 00    	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404889:	55                   	push   rbp
  40488a:	48 83 ea 03          	sub    rdx,0x3
  40488e:	48 89 e5             	mov    rbp,rsp
  404891:	53                   	push   rbx
  404892:	48 83 fa 07          	cmp    rdx,0x7
  404896:	0f 86 4b 05 00 00    	jbe    404de7 <kernels_ThreeStencilF64+0x5d7>
  40489c:	62 f1 fd 48 6f 1d 1a 	vmovdqa64 zmm3,ZMMWORD PTR [rip+0xd1a]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  4048a3:	0d 00 00 
  4048a6:	49 89 d1             	mov    r9,rdx
  4048a9:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  4048af:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  4048b5:	49 c1 e9 03          	shr    r9,0x3
  4048b9:	62 71 fd 48 28 d7    	vmovapd zmm10,zmm7
  4048bf:	4d 89 ca             	mov    r10,r9
  4048c2:	48 89 f9             	mov    rcx,rdi
  4048c5:	48 8d 46 10          	lea    rax,[rsi+0x10]
  4048c9:	49 c1 e2 07          	shl    r10,0x7
  4048cd:	49 01 fa             	add    r10,rdi
  4048d0:	62 f1 fd 48 10 a9 10 	vmovupd zmm5,ZMMWORD PTR [rcx+0x10]
  4048d7:	00 00 00 
  4048da:	62 f1 fd 48 10 21    	vmovupd zmm4,ZMMWORD PTR [rcx]
  4048e0:	62 f1 fd 48 10 81 20 	vmovupd zmm0,ZMMWORD PTR [rcx+0x20]
  4048e7:	00 00 00 
  4048ea:	48 83 e9 80          	sub    rcx,0xffffffffffffff80
  4048ee:	48 83 e8 80          	sub    rax,0xffffffffffffff80
  4048f2:	62 f2 e5 48 7f a9 d0 	vpermt2pd zmm5,zmm3,ZMMWORD PTR [rcx-0x30]
  4048f9:	ff ff ff 
  4048fc:	62 f2 e5 48 7f 61 ff 	vpermt2pd zmm4,zmm3,ZMMWORD PTR [rcx-0x40]
  404903:	62 f2 e5 48 7f 81 e0 	vpermt2pd zmm0,zmm3,ZMMWORD PTR [rcx-0x20]
  40490a:	ff ff ff 
  40490d:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  404913:	62 d2 d5 48 98 e4    	vfmadd132pd zmm4,zmm5,zmm12
  404919:	62 d2 dd 48 98 c2    	vfmadd132pd zmm0,zmm4,zmm10
  40491f:	62 f3 fd 28 03 e0 03 	valignq ymm4,ymm0,ymm0,0x3
  404926:	c5 f9 13 40 80       	vmovlpd QWORD PTR [rax-0x80],xmm0
  40492b:	c5 f9 17 40 90       	vmovhpd QWORD PTR [rax-0x70],xmm0
  404930:	62 f3 fd 28 19 c5 01 	vextractf64x2 xmm5,ymm0,0x1
  404937:	62 f3 fd 48 1b c0 01 	vextractf64x4 ymm0,zmm0,0x1
  40493e:	c5 fb 11 60 b0       	vmovsd QWORD PTR [rax-0x50],xmm4
  404943:	c5 f9 13 40 c0       	vmovlpd QWORD PTR [rax-0x40],xmm0
  404948:	c5 f9 17 40 d0       	vmovhpd QWORD PTR [rax-0x30],xmm0
  40494d:	62 f3 fd 28 19 c4 01 	vextractf64x2 xmm4,ymm0,0x1
  404954:	c5 fb 11 68 a0       	vmovsd QWORD PTR [rax-0x60],xmm5
  404959:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  404960:	c5 fb 11 60 e0       	vmovsd QWORD PTR [rax-0x20],xmm4
  404965:	c5 fb 11 40 f0       	vmovsd QWORD PTR [rax-0x10],xmm0
  40496a:	4c 39 d1             	cmp    rcx,r10
  40496d:	0f 85 5d ff ff ff    	jne    4048d0 <kernels_ThreeStencilF64+0xc0>
  404973:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  40497a:	00 
  40497b:	48 8d 41 01          	lea    rax,[rcx+0x1]
  40497f:	48 29 ca             	sub    rdx,rcx
  404982:	48 83 fa 03          	cmp    rdx,0x3
  404986:	76 7d                	jbe    404a05 <kernels_ThreeStencilF64+0x1f5>
  404988:	48 c1 e1 04          	shl    rcx,0x4
  40498c:	4c 8d 1c 0f          	lea    r11,[rdi+rcx*1]
  404990:	4c 8d 54 0f 10       	lea    r10,[rdi+rcx*1+0x10]
  404995:	4c 8d 4c 0f 20       	lea    r9,[rdi+rcx*1+0x20]
  40499a:	c5 fd 6f 05 1e 0c 00 	vmovdqa ymm0,YMMWORD PTR [rip+0xc1e]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  4049a1:	00 
  4049a2:	c4 c1 7d 10 19       	vmovupd ymm3,YMMWORD PTR [r9]
  4049a7:	c4 c1 7d 10 23       	vmovupd ymm4,YMMWORD PTR [r11]
  4049ac:	c4 c1 7d 10 2a       	vmovupd ymm5,YMMWORD PTR [r10]
  4049b1:	48 8d 5c 0e 10       	lea    rbx,[rsi+rcx*1+0x10]
  4049b6:	48 83 e2 fc          	and    rdx,0xfffffffffffffffc
  4049ba:	48 01 d0             	add    rax,rdx
  4049bd:	62 d2 fd 28 7f 59 01 	vpermt2pd ymm3,ymm0,YMMWORD PTR [r9+0x20]
  4049c4:	62 d2 fd 28 7f 63 01 	vpermt2pd ymm4,ymm0,YMMWORD PTR [r11+0x20]
  4049cb:	62 d2 d5 28 77 42 01 	vpermi2pd ymm0,ymm5,YMMWORD PTR [r10+0x20]
  4049d2:	c4 c1 7d 59 c1       	vmulpd ymm0,ymm0,ymm9
  4049d7:	c4 62 fd 98 c4       	vfmadd132pd ymm8,ymm0,ymm4
  4049dc:	c4 e2 bd 98 fb       	vfmadd132pd ymm7,ymm8,ymm3
  4049e1:	c5 f9 13 7c 0e 10    	vmovlpd QWORD PTR [rsi+rcx*1+0x10],xmm7
  4049e7:	c5 f9 17 7c 0e 20    	vmovhpd QWORD PTR [rsi+rcx*1+0x20],xmm7
  4049ed:	62 f3 fd 28 19 f8 01 	vextractf64x2 xmm0,ymm7,0x1
  4049f4:	62 f3 c5 28 03 ff 03 	valignq ymm7,ymm7,ymm7,0x3
  4049fb:	c5 fb 11 43 20       	vmovsd QWORD PTR [rbx+0x20],xmm0
  404a00:	c5 fb 11 7b 30       	vmovsd QWORD PTR [rbx+0x30],xmm7
  404a05:	48 89 c2             	mov    rdx,rax
  404a08:	48 c1 e2 04          	shl    rdx,0x4
  404a0c:	c5 fb 10 44 17 f0    	vmovsd xmm0,QWORD PTR [rdi+rdx*1-0x10]
  404a12:	48 89 c2             	mov    rdx,rax
  404a15:	48 c1 e2 04          	shl    rdx,0x4
  404a19:	c5 fb 10 1c 17       	vmovsd xmm3,QWORD PTR [rdi+rdx*1]
  404a1e:	48 ff c0             	inc    rax
  404a21:	c5 f3 59 eb          	vmulsd xmm5,xmm1,xmm3
  404a25:	48 89 c2             	mov    rdx,rax
  404a28:	48 c1 e2 04          	shl    rdx,0x4
  404a2c:	c4 e2 d1 99 c6       	vfmadd132sd xmm0,xmm5,xmm6
  404a31:	c5 fb 10 24 17       	vmovsd xmm4,QWORD PTR [rdi+rdx*1]
  404a36:	c4 e2 e9 b9 c4       	vfmadd231sd xmm0,xmm2,xmm4
  404a3b:	c5 fb 11 44 16 f0    	vmovsd QWORD PTR [rsi+rdx*1-0x10],xmm0
  404a41:	c5 f9 28 c3          	vmovapd xmm0,xmm3
  404a45:	4c 39 c0             	cmp    rax,r8
  404a48:	0f 83 c2 02 00 00    	jae    404d10 <kernels_ThreeStencilF64+0x500>
  404a4e:	c5 f9 28 dc          	vmovapd xmm3,xmm4
  404a52:	eb ca                	jmp    404a1e <kernels_ThreeStencilF64+0x20e>
  404a54:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404a5b:	00 00 00 00 
  404a5f:	90                   	nop
  404a60:	49 83 f8 01          	cmp    r8,0x1
  404a64:	0f 84 a2 02 00 00    	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404a6a:	48 83 ea 03          	sub    rdx,0x3
  404a6e:	48 83 fa 07          	cmp    rdx,0x7
  404a72:	0f 86 82 03 00 00    	jbe    404dfa <kernels_ThreeStencilF64+0x5ea>
  404a78:	48 c1 ea 03          	shr    rdx,0x3
  404a7c:	62 51 fd 48 28 d0    	vmovapd zmm10,zmm8
  404a82:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  404a88:	49 89 d1             	mov    r9,rdx
  404a8b:	62 f1 fd 48 6f 1d 2b 	vmovdqa64 zmm3,ZMMWORD PTR [rip+0xb2b]        # 4055c0 <__PRETTY_FUNCTION__.0+0xd0>
  404a92:	0b 00 00 
  404a95:	62 f1 fd 48 10 27    	vmovupd zmm4,ZMMWORD PTR [rdi]
  404a9b:	48 8d 4e 20          	lea    rcx,[rsi+0x20]
  404a9f:	49 c1 e1 08          	shl    r9,0x8
  404aa3:	48 89 f8             	mov    rax,rdi
  404aa6:	49 01 f9             	add    r9,rdi
  404aa9:	eb 0b                	jmp    404ab6 <kernels_ThreeStencilF64+0x2a6>
  404aab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404ab0:	62 d1 fd 48 28 e4    	vmovapd zmm4,zmm12
  404ab6:	62 71 fd 48 10 58 01 	vmovupd zmm11,ZMMWORD PTR [rax+0x40]
  404abd:	62 f1 fd 48 10 78 03 	vmovupd zmm7,ZMMWORD PTR [rax+0xc0]
  404ac4:	62 f1 fd 48 10 68 02 	vmovupd zmm5,ZMMWORD PTR [rax+0x80]
  404acb:	48 05 00 01 00 00    	add    rax,0x100
  404ad1:	62 71 fd 48 10 20    	vmovupd zmm12,ZMMWORD PTR [rax]
  404ad7:	48 81 c1 00 01 00 00 	add    rcx,0x100
  404ade:	62 d1 fd 48 28 c3    	vmovapd zmm0,zmm11
  404ae4:	62 d2 e5 48 7f e3    	vpermt2pd zmm4,zmm3,zmm11
  404aea:	62 71 fd 48 28 ef    	vmovapd zmm13,zmm7
  404af0:	62 f2 e5 48 7f c5    	vpermt2pd zmm0,zmm3,zmm5
  404af6:	62 f2 e5 48 7f ef    	vpermt2pd zmm5,zmm3,zmm7
  404afc:	62 f1 fd 48 10 b8 a0 	vmovupd zmm7,ZMMWORD PTR [rax-0x60]
  404b03:	ff ff ff 
  404b06:	62 52 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm12
  404b0c:	62 f2 e5 48 7f e5    	vpermt2pd zmm4,zmm3,zmm5
  404b12:	62 f1 fd 48 10 a8 20 	vmovupd zmm5,ZMMWORD PTR [rax-0xe0]
  404b19:	ff ff ff 
  404b1c:	62 d2 e5 48 7f c5    	vpermt2pd zmm0,zmm3,zmm13
  404b22:	62 f2 e5 48 7f b8 e0 	vpermt2pd zmm7,zmm3,ZMMWORD PTR [rax-0x20]
  404b29:	ff ff ff 
  404b2c:	62 f2 e5 48 7f a8 60 	vpermt2pd zmm5,zmm3,ZMMWORD PTR [rax-0xa0]
  404b33:	ff ff ff 
  404b36:	62 f2 e5 48 7f ef    	vpermt2pd zmm5,zmm3,zmm7
  404b3c:	62 d1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm9
  404b42:	62 d2 d5 48 98 e2    	vfmadd132pd zmm4,zmm5,zmm10
  404b48:	62 d2 dd 48 98 c0    	vfmadd132pd zmm0,zmm4,zmm8
  404b4e:	62 f3 fd 28 03 e0 03 	valignq ymm4,ymm0,ymm0,0x3
  404b55:	c5 f9 13 81 00 ff ff 	vmovlpd QWORD PTR [rcx-0x100],xmm0
  404b5c:	ff 
  404b5d:	c5 f9 17 81 20 ff ff 	vmovhpd QWORD PTR [rcx-0xe0],xmm0
  404b64:	ff 
  404b65:	62 f3 fd 28 19 c5 01 	vextractf64x2 xmm5,ymm0,0x1
  404b6c:	62 f3 fd 48 1b c0 01 	vextractf64x4 ymm0,zmm0,0x1
  404b73:	c5 fb 11 a1 60 ff ff 	vmovsd QWORD PTR [rcx-0xa0],xmm4
  404b7a:	ff 
  404b7b:	c5 f9 13 41 80       	vmovlpd QWORD PTR [rcx-0x80],xmm0
  404b80:	c5 f9 17 41 a0       	vmovhpd QWORD PTR [rcx-0x60],xmm0
  404b85:	62 f3 fd 28 19 c4 01 	vextractf64x2 xmm4,ymm0,0x1
  404b8c:	c5 fb 11 a9 40 ff ff 	vmovsd QWORD PTR [rcx-0xc0],xmm5
  404b93:	ff 
  404b94:	62 f3 fd 28 03 c0 03 	valignq ymm0,ymm0,ymm0,0x3
  404b9b:	c5 fb 11 61 c0       	vmovsd QWORD PTR [rcx-0x40],xmm4
  404ba0:	c5 fb 11 41 e0       	vmovsd QWORD PTR [rcx-0x20],xmm0
  404ba5:	49 39 c1             	cmp    r9,rax
  404ba8:	0f 85 02 ff ff ff    	jne    404ab0 <kernels_ThreeStencilF64+0x2a0>
  404bae:	48 8d 04 d5 01 00 00 	lea    rax,[rdx*8+0x1]
  404bb5:	00 
  404bb6:	48 89 c2             	mov    rdx,rax
  404bb9:	48 c1 e2 05          	shl    rdx,0x5
  404bbd:	c5 fb 10 44 17 e0    	vmovsd xmm0,QWORD PTR [rdi+rdx*1-0x20]
  404bc3:	48 89 c2             	mov    rdx,rax
  404bc6:	48 c1 e2 05          	shl    rdx,0x5
  404bca:	c5 fb 10 1c 17       	vmovsd xmm3,QWORD PTR [rdi+rdx*1]
  404bcf:	eb 33                	jmp    404c04 <kernels_ThreeStencilF64+0x3f4>
  404bd1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404bd8:	00 00 00 00 
  404bdc:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404be3:	00 00 00 00 
  404be7:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404bee:	00 00 00 00 
  404bf2:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404bf9:	00 00 00 00 
  404bfd:	0f 1f 00             	nop    DWORD PTR [rax]
  404c00:	c5 f9 28 dc          	vmovapd xmm3,xmm4
  404c04:	48 ff c0             	inc    rax
  404c07:	c5 f3 59 eb          	vmulsd xmm5,xmm1,xmm3
  404c0b:	48 89 c2             	mov    rdx,rax
  404c0e:	48 c1 e2 05          	shl    rdx,0x5
  404c12:	c4 e2 d1 99 c6       	vfmadd132sd xmm0,xmm5,xmm6
  404c17:	c5 fb 10 24 17       	vmovsd xmm4,QWORD PTR [rdi+rdx*1]
  404c1c:	c4 e2 e9 b9 c4       	vfmadd231sd xmm0,xmm2,xmm4
  404c21:	c5 fb 11 44 16 e0    	vmovsd QWORD PTR [rsi+rdx*1-0x20],xmm0
  404c27:	c5 f9 28 c3          	vmovapd xmm0,xmm3
  404c2b:	4c 39 c0             	cmp    rax,r8
  404c2e:	72 d0                	jb     404c00 <kernels_ThreeStencilF64+0x3f0>
  404c30:	e9 d7 00 00 00       	jmp    404d0c <kernels_ThreeStencilF64+0x4fc>
  404c35:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404c3c:	00 00 00 00 
  404c40:	49 83 f8 01          	cmp    r8,0x1
  404c44:	0f 84 c2 00 00 00    	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404c4a:	4c 8d 42 fe          	lea    r8,[rdx-0x2]
  404c4e:	48 83 ea 03          	sub    rdx,0x3
  404c52:	48 83 fa 06          	cmp    rdx,0x6
  404c56:	0f 86 97 01 00 00    	jbe    404df3 <kernels_ThreeStencilF64+0x5e3>
  404c5c:	4c 89 c2             	mov    rdx,r8
  404c5f:	31 c0                	xor    eax,eax
  404c61:	48 c1 ea 03          	shr    rdx,0x3
  404c65:	48 89 d1             	mov    rcx,rdx
  404c68:	48 c1 e1 06          	shl    rcx,0x6
  404c6c:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404c73:	00 00 00 00 
  404c77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  404c7e:	00 00 
  404c80:	62 f1 b5 48 59 84 07 	vmulpd zmm0,zmm9,ZMMWORD PTR [rdi+rax*1+0x8]
  404c87:	08 00 00 00 
  404c8b:	62 f2 bd 48 b8 04 07 	vfmadd231pd zmm0,zmm8,ZMMWORD PTR [rdi+rax*1]
  404c92:	62 f2 c5 48 b8 84 07 	vfmadd231pd zmm0,zmm7,ZMMWORD PTR [rdi+rax*1+0x10]
  404c99:	10 00 00 00 
  404c9d:	62 f1 fd 48 11 84 06 	vmovupd ZMMWORD PTR [rsi+rax*1+0x8],zmm0
  404ca4:	08 00 00 00 
  404ca8:	48 83 c0 40          	add    rax,0x40
  404cac:	48 39 c8             	cmp    rax,rcx
  404caf:	75 cf                	jne    404c80 <kernels_ThreeStencilF64+0x470>
  404cb1:	48 8d 04 d5 00 00 00 	lea    rax,[rdx*8+0x0]
  404cb8:	00 
  404cb9:	4c 39 c0             	cmp    rax,r8
  404cbc:	74 4e                	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404cbe:	49 29 c0             	sub    r8,rax
  404cc1:	62 d2 fd 48 7c c0    	vpbroadcastq zmm0,r8
  404cc7:	62 f3 fd 48 1e 0d ae 	vpcmpnleuq k1,zmm0,ZMMWORD PTR [rip+0x8ae]        # 405580 <__PRETTY_FUNCTION__.0+0x90>
  404cce:	08 00 00 06 
  404cd2:	62 f1 fd c9 10 94 c7 	vmovupd zmm2{k1}{z},ZMMWORD PTR [rdi+rax*8+0x8]
  404cd9:	08 00 00 00 
  404cdd:	62 f1 fd c9 10 0c c7 	vmovupd zmm1{k1}{z},ZMMWORD PTR [rdi+rax*8]
  404ce4:	62 d1 ed c9 59 c1    	vmulpd zmm0{k1}{z},zmm2,zmm9
  404cea:	62 d2 fd c9 98 c8    	vfmadd132pd zmm1{k1}{z},zmm0,zmm8
  404cf0:	62 f1 fd c9 10 84 c7 	vmovupd zmm0{k1}{z},ZMMWORD PTR [rdi+rax*8+0x10]
  404cf7:	10 00 00 00 
  404cfb:	62 f2 f5 c9 98 c7    	vfmadd132pd zmm0{k1}{z},zmm1,zmm7
  404d01:	62 f1 fd 49 11 84 c6 	vmovupd ZMMWORD PTR [rsi+rax*8+0x8]{k1},zmm0
  404d08:	08 00 00 00 
  404d0c:	c5 f8 77             	vzeroupper
  404d0f:	c3                   	ret
  404d10:	c5 f8 77             	vzeroupper
  404d13:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  404d17:	c9                   	leave
  404d18:	c3                   	ret
  404d19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404d20:	48 83 f9 08          	cmp    rcx,0x8
  404d24:	75 4a                	jne    404d70 <kernels_ThreeStencilF64+0x560>
  404d26:	49 83 f8 01          	cmp    r8,0x1
  404d2a:	74 e0                	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404d2c:	c5 fb 10 27          	vmovsd xmm4,QWORD PTR [rdi]
  404d30:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  404d35:	48 83 ea 02          	sub    rdx,0x2
  404d39:	31 c0                	xor    eax,eax
  404d3b:	48 c1 e2 06          	shl    rdx,0x6
  404d3f:	90                   	nop
  404d40:	c5 f3 59 c3          	vmulsd xmm0,xmm1,xmm3
  404d44:	c4 e2 c9 b9 c4       	vfmadd231sd xmm0,xmm6,xmm4
  404d49:	c5 f9 28 e3          	vmovapd xmm4,xmm3
  404d4d:	c5 fb 10 9c 07 80 00 	vmovsd xmm3,QWORD PTR [rdi+rax*1+0x80]
  404d54:	00 00 
  404d56:	c4 e2 e9 b9 c3       	vfmadd231sd xmm0,xmm2,xmm3
  404d5b:	c5 fb 11 44 06 40    	vmovsd QWORD PTR [rsi+rax*1+0x40],xmm0
  404d61:	48 83 c0 40          	add    rax,0x40
  404d65:	48 39 c2             	cmp    rdx,rax
  404d68:	75 d6                	jne    404d40 <kernels_ThreeStencilF64+0x530>
  404d6a:	eb a0                	jmp    404d0c <kernels_ThreeStencilF64+0x4fc>
  404d6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  404d70:	49 83 f8 01          	cmp    r8,0x1
  404d74:	74 96                	je     404d0c <kernels_ThreeStencilF64+0x4fc>
  404d76:	48 c1 e1 04          	shl    rcx,0x4
  404d7a:	4e 8d 14 0f          	lea    r10,[rdi+r9*1]
  404d7e:	48 01 f9             	add    rcx,rdi
  404d81:	4c 01 ce             	add    rsi,r9
  404d84:	31 c0                	xor    eax,eax
  404d86:	ba 01 00 00 00       	mov    edx,0x1
  404d8b:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404d92:	00 00 00 00 
  404d96:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404d9d:	00 00 00 00 
  404da1:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404da8:	00 00 00 00 
  404dac:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404db3:	00 00 00 00 
  404db7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  404dbe:	00 00 
  404dc0:	c4 c1 73 59 04 02    	vmulsd xmm0,xmm1,QWORD PTR [r10+rax*1]
  404dc6:	48 ff c2             	inc    rdx
  404dc9:	c4 e2 c9 b9 04 07    	vfmadd231sd xmm0,xmm6,QWORD PTR [rdi+rax*1]
  404dcf:	c4 e2 e9 b9 04 01    	vfmadd231sd xmm0,xmm2,QWORD PTR [rcx+rax*1]
  404dd5:	c5 fb 11 04 06       	vmovsd QWORD PTR [rsi+rax*1],xmm0
  404dda:	4c 01 c8             	add    rax,r9
  404ddd:	49 39 d0             	cmp    r8,rdx
  404de0:	75 de                	jne    404dc0 <kernels_ThreeStencilF64+0x5b0>
  404de2:	e9 25 ff ff ff       	jmp    404d0c <kernels_ThreeStencilF64+0x4fc>
  404de7:	31 c9                	xor    ecx,ecx
  404de9:	b8 01 00 00 00       	mov    eax,0x1
  404dee:	e9 8c fb ff ff       	jmp    40497f <kernels_ThreeStencilF64+0x16f>
  404df3:	31 c0                	xor    eax,eax
  404df5:	e9 c4 fe ff ff       	jmp    404cbe <kernels_ThreeStencilF64+0x4ae>
  404dfa:	b8 01 00 00 00       	mov    eax,0x1
  404dff:	e9 b2 fd ff ff       	jmp    404bb6 <kernels_ThreeStencilF64+0x3a6>
  404e04:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  404e0b:	00 00 00 
  404e0e:	66 90                	xchg   ax,ax

0000000000404e10 <perf_NowNSec.part.0>:
  404e10:	48 83 ec 08          	sub    rsp,0x8
  404e14:	b9 00 56 40 00       	mov    ecx,0x405600
  404e19:	ba 0a 00 00 00       	mov    edx,0xa
  404e1e:	be d9 50 40 00       	mov    esi,0x4050d9
  404e23:	bf ef 50 40 00       	mov    edi,0x4050ef
  404e28:	e8 73 c2 ff ff       	call   4010a0 <__assert_fail@plt>
  404e2d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000404e30 <perf_StartTimer>:
  404e30:	53                   	push   rbx
  404e31:	48 89 fb             	mov    rbx,rdi
  404e34:	bf 01 00 00 00       	mov    edi,0x1
  404e39:	48 83 ec 10          	sub    rsp,0x10
  404e3d:	48 89 e6             	mov    rsi,rsp
  404e40:	e8 2b c2 ff ff       	call   401070 <clock_gettime@plt>
  404e45:	85 c0                	test   eax,eax
  404e47:	75 16                	jne    404e5f <perf_StartTimer+0x2f>
  404e49:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  404e50:	3b 
  404e51:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  404e56:	48 89 03             	mov    QWORD PTR [rbx],rax
  404e59:	48 83 c4 10          	add    rsp,0x10
  404e5d:	5b                   	pop    rbx
  404e5e:	c3                   	ret
  404e5f:	e8 ac ff ff ff       	call   404e10 <perf_NowNSec.part.0>
  404e64:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404e6b:	00 00 00 00 
  404e6f:	90                   	nop

0000000000404e70 <perf_EndTimer>:
  404e70:	53                   	push   rbx
  404e71:	48 89 fb             	mov    rbx,rdi
  404e74:	bf 01 00 00 00       	mov    edi,0x1
  404e79:	48 83 ec 10          	sub    rsp,0x10
  404e7d:	48 89 e6             	mov    rsi,rsp
  404e80:	e8 eb c1 ff ff       	call   401070 <clock_gettime@plt>
  404e85:	85 c0                	test   eax,eax
  404e87:	75 17                	jne    404ea0 <perf_EndTimer+0x30>
  404e89:	48 69 04 24 00 ca 9a 	imul   rax,QWORD PTR [rsp],0x3b9aca00
  404e90:	3b 
  404e91:	48 03 44 24 08       	add    rax,QWORD PTR [rsp+0x8]
  404e96:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
  404e9a:	48 83 c4 10          	add    rsp,0x10
  404e9e:	5b                   	pop    rbx
  404e9f:	c3                   	ret
  404ea0:	e8 6b ff ff ff       	call   404e10 <perf_NowNSec.part.0>
  404ea5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  404eac:	00 00 00 00 

0000000000404eb0 <perf_ComputeNSecDelta>:
  404eb0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  404eb4:	48 2b 07             	sub    rax,QWORD PTR [rdi]
  404eb7:	c3                   	ret

Disassembly of section .fini:

0000000000404eb8 <_fini>:
  404eb8:	f3 0f 1e fa          	endbr64
  404ebc:	48 83 ec 08          	sub    rsp,0x8
  404ec0:	48 83 c4 08          	add    rsp,0x8
  404ec4:	c3                   	ret
