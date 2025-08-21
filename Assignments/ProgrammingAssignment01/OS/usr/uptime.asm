
_uptime:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb0001f6 	bl	7f4 <uptime>
      18:	e1a03000 	mov	r3, r0
      1c:	e59f2020 	ldr	r2, [pc, #32]	@ 44 <main+0x44>
      20:	e0c21392 	smull	r1, r2, r2, r3
      24:	e1a02142 	asr	r2, r2, #2
      28:	e1a03fc3 	asr	r3, r3, #31
      2c:	e0423003 	sub	r3, r2, r3
      30:	e1a02003 	mov	r2, r3
      34:	e59f100c 	ldr	r1, [pc, #12]	@ 48 <main+0x48>
      38:	e3a00001 	mov	r0, #1
      3c:	eb00025a 	bl	9ac <printf>
      40:	eb000140 	bl	548 <exit>
      44:	66666667 	.word	0x66666667
      48:	00001068 	.word	0x00001068

0000004c <strcpy>:
      4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      50:	e28db000 	add	fp, sp, #0
      54:	e24dd014 	sub	sp, sp, #20
      58:	e50b0010 	str	r0, [fp, #-16]
      5c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      60:	e51b3010 	ldr	r3, [fp, #-16]
      64:	e50b3008 	str	r3, [fp, #-8]
      68:	e1a00000 	nop			@ (mov r0, r0)
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e2823001 	add	r3, r2, #1
      74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	e2831001 	add	r1, r3, #1
      80:	e50b1010 	str	r1, [fp, #-16]
      84:	e5d22000 	ldrb	r2, [r2]
      88:	e5c32000 	strb	r2, [r3]
      8c:	e5d33000 	ldrb	r3, [r3]
      90:	e3530000 	cmp	r3, #0
      94:	1afffff4 	bne	6c <strcpy+0x20>
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e1a00003 	mov	r0, r3
      a0:	e28bd000 	add	sp, fp, #0
      a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      a8:	e12fff1e 	bx	lr

000000ac <strcmp>:
      ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b0:	e28db000 	add	fp, sp, #0
      b4:	e24dd00c 	sub	sp, sp, #12
      b8:	e50b0008 	str	r0, [fp, #-8]
      bc:	e50b100c 	str	r1, [fp, #-12]
      c0:	ea000005 	b	dc <strcmp+0x30>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e2833001 	add	r3, r3, #1
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e2833001 	add	r3, r3, #1
      d8:	e50b300c 	str	r3, [fp, #-12]
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e3530000 	cmp	r3, #0
      e8:	0a000005 	beq	104 <strcmp+0x58>
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e5d32000 	ldrb	r2, [r3]
      f4:	e51b300c 	ldr	r3, [fp, #-12]
      f8:	e5d33000 	ldrb	r3, [r3]
      fc:	e1520003 	cmp	r2, r3
     100:	0affffef 	beq	c4 <strcmp+0x18>
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e5d33000 	ldrb	r3, [r3]
     10c:	e1a02003 	mov	r2, r3
     110:	e51b300c 	ldr	r3, [fp, #-12]
     114:	e5d33000 	ldrb	r3, [r3]
     118:	e0423003 	sub	r3, r2, r3
     11c:	e1a00003 	mov	r0, r3
     120:	e28bd000 	add	sp, fp, #0
     124:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     128:	e12fff1e 	bx	lr

0000012c <strlen>:
     12c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     130:	e28db000 	add	fp, sp, #0
     134:	e24dd014 	sub	sp, sp, #20
     138:	e50b0010 	str	r0, [fp, #-16]
     13c:	e3a03000 	mov	r3, #0
     140:	e50b3008 	str	r3, [fp, #-8]
     144:	ea000002 	b	154 <strlen+0x28>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e2833001 	add	r3, r3, #1
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e51b2010 	ldr	r2, [fp, #-16]
     15c:	e0823003 	add	r3, r2, r3
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e3530000 	cmp	r3, #0
     168:	1afffff6 	bne	148 <strlen+0x1c>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e1a00003 	mov	r0, r3
     174:	e28bd000 	add	sp, fp, #0
     178:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     17c:	e12fff1e 	bx	lr

00000180 <memset>:
     180:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     184:	e28db000 	add	fp, sp, #0
     188:	e24dd024 	sub	sp, sp, #36	@ 0x24
     18c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     190:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     194:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     198:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     19c:	e50b3008 	str	r3, [fp, #-8]
     1a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1a4:	e54b300d 	strb	r3, [fp, #-13]
     1a8:	e55b200d 	ldrb	r2, [fp, #-13]
     1ac:	e1a03002 	mov	r3, r2
     1b0:	e1a03403 	lsl	r3, r3, #8
     1b4:	e0833002 	add	r3, r3, r2
     1b8:	e1a03803 	lsl	r3, r3, #16
     1bc:	e1a02003 	mov	r2, r3
     1c0:	e55b300d 	ldrb	r3, [fp, #-13]
     1c4:	e1a03403 	lsl	r3, r3, #8
     1c8:	e1822003 	orr	r2, r2, r3
     1cc:	e55b300d 	ldrb	r3, [fp, #-13]
     1d0:	e1823003 	orr	r3, r2, r3
     1d4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1d8:	ea000008 	b	200 <memset+0x80>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e55b200d 	ldrb	r2, [fp, #-13]
     1e4:	e5c32000 	strb	r2, [r3]
     1e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1ec:	e2433001 	sub	r3, r3, #1
     1f0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     204:	e3530000 	cmp	r3, #0
     208:	0a000003 	beq	21c <memset+0x9c>
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e2033003 	and	r3, r3, #3
     214:	e3530000 	cmp	r3, #0
     218:	1affffef 	bne	1dc <memset+0x5c>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e50b300c 	str	r3, [fp, #-12]
     224:	ea000008 	b	24c <memset+0xcc>
     228:	e51b300c 	ldr	r3, [fp, #-12]
     22c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     230:	e5832000 	str	r2, [r3]
     234:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     238:	e2433004 	sub	r3, r3, #4
     23c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e2833004 	add	r3, r3, #4
     248:	e50b300c 	str	r3, [fp, #-12]
     24c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     250:	e3530003 	cmp	r3, #3
     254:	8afffff3 	bhi	228 <memset+0xa8>
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	ea000008 	b	288 <memset+0x108>
     264:	e51b3008 	ldr	r3, [fp, #-8]
     268:	e55b200d 	ldrb	r2, [fp, #-13]
     26c:	e5c32000 	strb	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433001 	sub	r3, r3, #1
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b3008 	ldr	r3, [fp, #-8]
     280:	e2833001 	add	r3, r3, #1
     284:	e50b3008 	str	r3, [fp, #-8]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530000 	cmp	r3, #0
     290:	1afffff3 	bne	264 <memset+0xe4>
     294:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     298:	e1a00003 	mov	r0, r3
     29c:	e28bd000 	add	sp, fp, #0
     2a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a4:	e12fff1e 	bx	lr

000002a8 <strchr>:
     2a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2ac:	e28db000 	add	fp, sp, #0
     2b0:	e24dd00c 	sub	sp, sp, #12
     2b4:	e50b0008 	str	r0, [fp, #-8]
     2b8:	e1a03001 	mov	r3, r1
     2bc:	e54b3009 	strb	r3, [fp, #-9]
     2c0:	ea000009 	b	2ec <strchr+0x44>
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e55b2009 	ldrb	r2, [fp, #-9]
     2d0:	e1520003 	cmp	r2, r3
     2d4:	1a000001 	bne	2e0 <strchr+0x38>
     2d8:	e51b3008 	ldr	r3, [fp, #-8]
     2dc:	ea000007 	b	300 <strchr+0x58>
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3008 	ldr	r3, [fp, #-8]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff1 	bne	2c4 <strchr+0x1c>
     2fc:	e3a03000 	mov	r3, #0
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <gets>:
     310:	e92d4800 	push	{fp, lr}
     314:	e28db004 	add	fp, sp, #4
     318:	e24dd018 	sub	sp, sp, #24
     31c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     320:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     324:	e3a03000 	mov	r3, #0
     328:	e50b3008 	str	r3, [fp, #-8]
     32c:	ea000016 	b	38c <gets+0x7c>
     330:	e24b300d 	sub	r3, fp, #13
     334:	e3a02001 	mov	r2, #1
     338:	e1a01003 	mov	r1, r3
     33c:	e3a00000 	mov	r0, #0
     340:	eb00009b 	bl	5b4 <read>
     344:	e50b000c 	str	r0, [fp, #-12]
     348:	e51b300c 	ldr	r3, [fp, #-12]
     34c:	e3530000 	cmp	r3, #0
     350:	da000013 	ble	3a4 <gets+0x94>
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e2832001 	add	r2, r3, #1
     35c:	e50b2008 	str	r2, [fp, #-8]
     360:	e1a02003 	mov	r2, r3
     364:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     368:	e0833002 	add	r3, r3, r2
     36c:	e55b200d 	ldrb	r2, [fp, #-13]
     370:	e5c32000 	strb	r2, [r3]
     374:	e55b300d 	ldrb	r3, [fp, #-13]
     378:	e353000a 	cmp	r3, #10
     37c:	0a000009 	beq	3a8 <gets+0x98>
     380:	e55b300d 	ldrb	r3, [fp, #-13]
     384:	e353000d 	cmp	r3, #13
     388:	0a000006 	beq	3a8 <gets+0x98>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     398:	e1520003 	cmp	r2, r3
     39c:	caffffe3 	bgt	330 <gets+0x20>
     3a0:	ea000000 	b	3a8 <gets+0x98>
     3a4:	e1a00000 	nop			@ (mov r0, r0)
     3a8:	e51b3008 	ldr	r3, [fp, #-8]
     3ac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3b0:	e0823003 	add	r3, r2, r3
     3b4:	e3a02000 	mov	r2, #0
     3b8:	e5c32000 	strb	r2, [r3]
     3bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c0:	e1a00003 	mov	r0, r3
     3c4:	e24bd004 	sub	sp, fp, #4
     3c8:	e8bd8800 	pop	{fp, pc}

000003cc <stat>:
     3cc:	e92d4800 	push	{fp, lr}
     3d0:	e28db004 	add	fp, sp, #4
     3d4:	e24dd010 	sub	sp, sp, #16
     3d8:	e50b0010 	str	r0, [fp, #-16]
     3dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e3a01000 	mov	r1, #0
     3e4:	e51b0010 	ldr	r0, [fp, #-16]
     3e8:	eb00009e 	bl	668 <open>
     3ec:	e50b0008 	str	r0, [fp, #-8]
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e3530000 	cmp	r3, #0
     3f8:	aa000001 	bge	404 <stat+0x38>
     3fc:	e3e03000 	mvn	r3, #0
     400:	ea000006 	b	420 <stat+0x54>
     404:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     408:	e51b0008 	ldr	r0, [fp, #-8]
     40c:	eb0000b0 	bl	6d4 <fstat>
     410:	e50b000c 	str	r0, [fp, #-12]
     414:	e51b0008 	ldr	r0, [fp, #-8]
     418:	eb000077 	bl	5fc <close>
     41c:	e51b300c 	ldr	r3, [fp, #-12]
     420:	e1a00003 	mov	r0, r3
     424:	e24bd004 	sub	sp, fp, #4
     428:	e8bd8800 	pop	{fp, pc}

0000042c <atoi>:
     42c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     430:	e28db000 	add	fp, sp, #0
     434:	e24dd014 	sub	sp, sp, #20
     438:	e50b0010 	str	r0, [fp, #-16]
     43c:	e3a03000 	mov	r3, #0
     440:	e50b3008 	str	r3, [fp, #-8]
     444:	ea00000c 	b	47c <atoi+0x50>
     448:	e51b2008 	ldr	r2, [fp, #-8]
     44c:	e1a03002 	mov	r3, r2
     450:	e1a03103 	lsl	r3, r3, #2
     454:	e0833002 	add	r3, r3, r2
     458:	e1a03083 	lsl	r3, r3, #1
     45c:	e1a01003 	mov	r1, r3
     460:	e51b3010 	ldr	r3, [fp, #-16]
     464:	e2832001 	add	r2, r3, #1
     468:	e50b2010 	str	r2, [fp, #-16]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0813003 	add	r3, r1, r3
     474:	e2433030 	sub	r3, r3, #48	@ 0x30
     478:	e50b3008 	str	r3, [fp, #-8]
     47c:	e51b3010 	ldr	r3, [fp, #-16]
     480:	e5d33000 	ldrb	r3, [r3]
     484:	e353002f 	cmp	r3, #47	@ 0x2f
     488:	9a000003 	bls	49c <atoi+0x70>
     48c:	e51b3010 	ldr	r3, [fp, #-16]
     490:	e5d33000 	ldrb	r3, [r3]
     494:	e3530039 	cmp	r3, #57	@ 0x39
     498:	9affffea 	bls	448 <atoi+0x1c>
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e1a00003 	mov	r0, r3
     4a4:	e28bd000 	add	sp, fp, #0
     4a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4ac:	e12fff1e 	bx	lr

000004b0 <memmove>:
     4b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4b4:	e28db000 	add	fp, sp, #0
     4b8:	e24dd01c 	sub	sp, sp, #28
     4bc:	e50b0010 	str	r0, [fp, #-16]
     4c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4c4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e50b3008 	str	r3, [fp, #-8]
     4d0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4d4:	e50b300c 	str	r3, [fp, #-12]
     4d8:	ea000007 	b	4fc <memmove+0x4c>
     4dc:	e51b200c 	ldr	r2, [fp, #-12]
     4e0:	e2823001 	add	r3, r2, #1
     4e4:	e50b300c 	str	r3, [fp, #-12]
     4e8:	e51b3008 	ldr	r3, [fp, #-8]
     4ec:	e2831001 	add	r1, r3, #1
     4f0:	e50b1008 	str	r1, [fp, #-8]
     4f4:	e5d22000 	ldrb	r2, [r2]
     4f8:	e5c32000 	strb	r2, [r3]
     4fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     500:	e2432001 	sub	r2, r3, #1
     504:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     508:	e3530000 	cmp	r3, #0
     50c:	cafffff2 	bgt	4dc <memmove+0x2c>
     510:	e51b3010 	ldr	r3, [fp, #-16]
     514:	e1a00003 	mov	r0, r3
     518:	e28bd000 	add	sp, fp, #0
     51c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     520:	e12fff1e 	bx	lr

00000524 <fork>:
     524:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     528:	e1a04003 	mov	r4, r3
     52c:	e1a03002 	mov	r3, r2
     530:	e1a02001 	mov	r2, r1
     534:	e1a01000 	mov	r1, r0
     538:	e3a00001 	mov	r0, #1
     53c:	ef000000 	svc	0x00000000
     540:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     544:	e12fff1e 	bx	lr

00000548 <exit>:
     548:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     54c:	e1a04003 	mov	r4, r3
     550:	e1a03002 	mov	r3, r2
     554:	e1a02001 	mov	r2, r1
     558:	e1a01000 	mov	r1, r0
     55c:	e3a00002 	mov	r0, #2
     560:	ef000000 	svc	0x00000000
     564:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     568:	e12fff1e 	bx	lr

0000056c <wait>:
     56c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     570:	e1a04003 	mov	r4, r3
     574:	e1a03002 	mov	r3, r2
     578:	e1a02001 	mov	r2, r1
     57c:	e1a01000 	mov	r1, r0
     580:	e3a00003 	mov	r0, #3
     584:	ef000000 	svc	0x00000000
     588:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     58c:	e12fff1e 	bx	lr

00000590 <pipe>:
     590:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     594:	e1a04003 	mov	r4, r3
     598:	e1a03002 	mov	r3, r2
     59c:	e1a02001 	mov	r2, r1
     5a0:	e1a01000 	mov	r1, r0
     5a4:	e3a00004 	mov	r0, #4
     5a8:	ef000000 	svc	0x00000000
     5ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5b0:	e12fff1e 	bx	lr

000005b4 <read>:
     5b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b8:	e1a04003 	mov	r4, r3
     5bc:	e1a03002 	mov	r3, r2
     5c0:	e1a02001 	mov	r2, r1
     5c4:	e1a01000 	mov	r1, r0
     5c8:	e3a00005 	mov	r0, #5
     5cc:	ef000000 	svc	0x00000000
     5d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d4:	e12fff1e 	bx	lr

000005d8 <write>:
     5d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5dc:	e1a04003 	mov	r4, r3
     5e0:	e1a03002 	mov	r3, r2
     5e4:	e1a02001 	mov	r2, r1
     5e8:	e1a01000 	mov	r1, r0
     5ec:	e3a00010 	mov	r0, #16
     5f0:	ef000000 	svc	0x00000000
     5f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f8:	e12fff1e 	bx	lr

000005fc <close>:
     5fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     600:	e1a04003 	mov	r4, r3
     604:	e1a03002 	mov	r3, r2
     608:	e1a02001 	mov	r2, r1
     60c:	e1a01000 	mov	r1, r0
     610:	e3a00015 	mov	r0, #21
     614:	ef000000 	svc	0x00000000
     618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     61c:	e12fff1e 	bx	lr

00000620 <kill>:
     620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     624:	e1a04003 	mov	r4, r3
     628:	e1a03002 	mov	r3, r2
     62c:	e1a02001 	mov	r2, r1
     630:	e1a01000 	mov	r1, r0
     634:	e3a00006 	mov	r0, #6
     638:	ef000000 	svc	0x00000000
     63c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     640:	e12fff1e 	bx	lr

00000644 <exec>:
     644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     648:	e1a04003 	mov	r4, r3
     64c:	e1a03002 	mov	r3, r2
     650:	e1a02001 	mov	r2, r1
     654:	e1a01000 	mov	r1, r0
     658:	e3a00007 	mov	r0, #7
     65c:	ef000000 	svc	0x00000000
     660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <open>:
     668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     66c:	e1a04003 	mov	r4, r3
     670:	e1a03002 	mov	r3, r2
     674:	e1a02001 	mov	r2, r1
     678:	e1a01000 	mov	r1, r0
     67c:	e3a0000f 	mov	r0, #15
     680:	ef000000 	svc	0x00000000
     684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     688:	e12fff1e 	bx	lr

0000068c <mknod>:
     68c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     690:	e1a04003 	mov	r4, r3
     694:	e1a03002 	mov	r3, r2
     698:	e1a02001 	mov	r2, r1
     69c:	e1a01000 	mov	r1, r0
     6a0:	e3a00011 	mov	r0, #17
     6a4:	ef000000 	svc	0x00000000
     6a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ac:	e12fff1e 	bx	lr

000006b0 <unlink>:
     6b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b4:	e1a04003 	mov	r4, r3
     6b8:	e1a03002 	mov	r3, r2
     6bc:	e1a02001 	mov	r2, r1
     6c0:	e1a01000 	mov	r1, r0
     6c4:	e3a00012 	mov	r0, #18
     6c8:	ef000000 	svc	0x00000000
     6cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6d0:	e12fff1e 	bx	lr

000006d4 <fstat>:
     6d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d8:	e1a04003 	mov	r4, r3
     6dc:	e1a03002 	mov	r3, r2
     6e0:	e1a02001 	mov	r2, r1
     6e4:	e1a01000 	mov	r1, r0
     6e8:	e3a00008 	mov	r0, #8
     6ec:	ef000000 	svc	0x00000000
     6f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f4:	e12fff1e 	bx	lr

000006f8 <link>:
     6f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6fc:	e1a04003 	mov	r4, r3
     700:	e1a03002 	mov	r3, r2
     704:	e1a02001 	mov	r2, r1
     708:	e1a01000 	mov	r1, r0
     70c:	e3a00013 	mov	r0, #19
     710:	ef000000 	svc	0x00000000
     714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <mkdir>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00014 	mov	r0, #20
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <chdir>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00009 	mov	r0, #9
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <dup>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a0000a 	mov	r0, #10
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <getpid>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a0000b 	mov	r0, #11
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <sbrk>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a0000c 	mov	r0, #12
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <sleep>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a0000d 	mov	r0, #13
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <uptime>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a0000e 	mov	r0, #14
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <ps>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00016 	mov	r0, #22
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <putc>:
     83c:	e92d4800 	push	{fp, lr}
     840:	e28db004 	add	fp, sp, #4
     844:	e24dd008 	sub	sp, sp, #8
     848:	e50b0008 	str	r0, [fp, #-8]
     84c:	e1a03001 	mov	r3, r1
     850:	e54b3009 	strb	r3, [fp, #-9]
     854:	e24b3009 	sub	r3, fp, #9
     858:	e3a02001 	mov	r2, #1
     85c:	e1a01003 	mov	r1, r3
     860:	e51b0008 	ldr	r0, [fp, #-8]
     864:	ebffff5b 	bl	5d8 <write>
     868:	e1a00000 	nop			@ (mov r0, r0)
     86c:	e24bd004 	sub	sp, fp, #4
     870:	e8bd8800 	pop	{fp, pc}

00000874 <printint>:
     874:	e92d4800 	push	{fp, lr}
     878:	e28db004 	add	fp, sp, #4
     87c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     880:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     884:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     888:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     88c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     890:	e3a03000 	mov	r3, #0
     894:	e50b300c 	str	r3, [fp, #-12]
     898:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     89c:	e3530000 	cmp	r3, #0
     8a0:	0a000008 	beq	8c8 <printint+0x54>
     8a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8a8:	e3530000 	cmp	r3, #0
     8ac:	aa000005 	bge	8c8 <printint+0x54>
     8b0:	e3a03001 	mov	r3, #1
     8b4:	e50b300c 	str	r3, [fp, #-12]
     8b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8bc:	e2633000 	rsb	r3, r3, #0
     8c0:	e50b3010 	str	r3, [fp, #-16]
     8c4:	ea000001 	b	8d0 <printint+0x5c>
     8c8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8cc:	e50b3010 	str	r3, [fp, #-16]
     8d0:	e3a03000 	mov	r3, #0
     8d4:	e50b3008 	str	r3, [fp, #-8]
     8d8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8dc:	e51b3010 	ldr	r3, [fp, #-16]
     8e0:	e1a01002 	mov	r1, r2
     8e4:	e1a00003 	mov	r0, r3
     8e8:	eb0001d5 	bl	1044 <__aeabi_uidivmod>
     8ec:	e1a03001 	mov	r3, r1
     8f0:	e1a01003 	mov	r1, r3
     8f4:	e51b3008 	ldr	r3, [fp, #-8]
     8f8:	e2832001 	add	r2, r3, #1
     8fc:	e50b2008 	str	r2, [fp, #-8]
     900:	e59f20a0 	ldr	r2, [pc, #160]	@ 9a8 <printint+0x134>
     904:	e7d22001 	ldrb	r2, [r2, r1]
     908:	e2433004 	sub	r3, r3, #4
     90c:	e083300b 	add	r3, r3, fp
     910:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     914:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     918:	e1a01003 	mov	r1, r3
     91c:	e51b0010 	ldr	r0, [fp, #-16]
     920:	eb00018a 	bl	f50 <__udivsi3>
     924:	e1a03000 	mov	r3, r0
     928:	e50b3010 	str	r3, [fp, #-16]
     92c:	e51b3010 	ldr	r3, [fp, #-16]
     930:	e3530000 	cmp	r3, #0
     934:	1affffe7 	bne	8d8 <printint+0x64>
     938:	e51b300c 	ldr	r3, [fp, #-12]
     93c:	e3530000 	cmp	r3, #0
     940:	0a00000e 	beq	980 <printint+0x10c>
     944:	e51b3008 	ldr	r3, [fp, #-8]
     948:	e2832001 	add	r2, r3, #1
     94c:	e50b2008 	str	r2, [fp, #-8]
     950:	e2433004 	sub	r3, r3, #4
     954:	e083300b 	add	r3, r3, fp
     958:	e3a0202d 	mov	r2, #45	@ 0x2d
     95c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     960:	ea000006 	b	980 <printint+0x10c>
     964:	e24b2020 	sub	r2, fp, #32
     968:	e51b3008 	ldr	r3, [fp, #-8]
     96c:	e0823003 	add	r3, r2, r3
     970:	e5d33000 	ldrb	r3, [r3]
     974:	e1a01003 	mov	r1, r3
     978:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     97c:	ebffffae 	bl	83c <putc>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2433001 	sub	r3, r3, #1
     988:	e50b3008 	str	r3, [fp, #-8]
     98c:	e51b3008 	ldr	r3, [fp, #-8]
     990:	e3530000 	cmp	r3, #0
     994:	aafffff2 	bge	964 <printint+0xf0>
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e1a00000 	nop			@ (mov r0, r0)
     9a0:	e24bd004 	sub	sp, fp, #4
     9a4:	e8bd8800 	pop	{fp, pc}
     9a8:	00001088 	.word	0x00001088

000009ac <printf>:
     9ac:	e92d000e 	push	{r1, r2, r3}
     9b0:	e92d4800 	push	{fp, lr}
     9b4:	e28db004 	add	fp, sp, #4
     9b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9bc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9c0:	e3a03000 	mov	r3, #0
     9c4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9c8:	e28b3008 	add	r3, fp, #8
     9cc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9d0:	e3a03000 	mov	r3, #0
     9d4:	e50b3010 	str	r3, [fp, #-16]
     9d8:	ea000074 	b	bb0 <printf+0x204>
     9dc:	e59b2004 	ldr	r2, [fp, #4]
     9e0:	e51b3010 	ldr	r3, [fp, #-16]
     9e4:	e0823003 	add	r3, r2, r3
     9e8:	e5d33000 	ldrb	r3, [r3]
     9ec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9f4:	e3530000 	cmp	r3, #0
     9f8:	1a00000b 	bne	a2c <printf+0x80>
     9fc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a00:	e3530025 	cmp	r3, #37	@ 0x25
     a04:	1a000002 	bne	a14 <printf+0x68>
     a08:	e3a03025 	mov	r3, #37	@ 0x25
     a0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a10:	ea000063 	b	ba4 <printf+0x1f8>
     a14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a18:	e6ef3073 	uxtb	r3, r3
     a1c:	e1a01003 	mov	r1, r3
     a20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a24:	ebffff84 	bl	83c <putc>
     a28:	ea00005d 	b	ba4 <printf+0x1f8>
     a2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a30:	e3530025 	cmp	r3, #37	@ 0x25
     a34:	1a00005a 	bne	ba4 <printf+0x1f8>
     a38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a3c:	e3530064 	cmp	r3, #100	@ 0x64
     a40:	1a00000a 	bne	a70 <printf+0xc4>
     a44:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a48:	e5933000 	ldr	r3, [r3]
     a4c:	e1a01003 	mov	r1, r3
     a50:	e3a03001 	mov	r3, #1
     a54:	e3a0200a 	mov	r2, #10
     a58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a5c:	ebffff84 	bl	874 <printint>
     a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a64:	e2833004 	add	r3, r3, #4
     a68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a6c:	ea00004a 	b	b9c <printf+0x1f0>
     a70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a74:	e3530078 	cmp	r3, #120	@ 0x78
     a78:	0a000002 	beq	a88 <printf+0xdc>
     a7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a80:	e3530070 	cmp	r3, #112	@ 0x70
     a84:	1a00000a 	bne	ab4 <printf+0x108>
     a88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a8c:	e5933000 	ldr	r3, [r3]
     a90:	e1a01003 	mov	r1, r3
     a94:	e3a03000 	mov	r3, #0
     a98:	e3a02010 	mov	r2, #16
     a9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aa0:	ebffff73 	bl	874 <printint>
     aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	e2833004 	add	r3, r3, #4
     aac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	ea000039 	b	b9c <printf+0x1f0>
     ab4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab8:	e3530073 	cmp	r3, #115	@ 0x73
     abc:	1a000018 	bne	b24 <printf+0x178>
     ac0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac4:	e5933000 	ldr	r3, [r3]
     ac8:	e50b300c 	str	r3, [fp, #-12]
     acc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	e2833004 	add	r3, r3, #4
     ad4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	e51b300c 	ldr	r3, [fp, #-12]
     adc:	e3530000 	cmp	r3, #0
     ae0:	1a00000a 	bne	b10 <printf+0x164>
     ae4:	e59f30f4 	ldr	r3, [pc, #244]	@ be0 <printf+0x234>
     ae8:	e50b300c 	str	r3, [fp, #-12]
     aec:	ea000007 	b	b10 <printf+0x164>
     af0:	e51b300c 	ldr	r3, [fp, #-12]
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e1a01003 	mov	r1, r3
     afc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b00:	ebffff4d 	bl	83c <putc>
     b04:	e51b300c 	ldr	r3, [fp, #-12]
     b08:	e2833001 	add	r3, r3, #1
     b0c:	e50b300c 	str	r3, [fp, #-12]
     b10:	e51b300c 	ldr	r3, [fp, #-12]
     b14:	e5d33000 	ldrb	r3, [r3]
     b18:	e3530000 	cmp	r3, #0
     b1c:	1afffff3 	bne	af0 <printf+0x144>
     b20:	ea00001d 	b	b9c <printf+0x1f0>
     b24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e3530063 	cmp	r3, #99	@ 0x63
     b2c:	1a000009 	bne	b58 <printf+0x1ac>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e6ef3073 	uxtb	r3, r3
     b3c:	e1a01003 	mov	r1, r3
     b40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b44:	ebffff3c 	bl	83c <putc>
     b48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b4c:	e2833004 	add	r3, r3, #4
     b50:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b54:	ea000010 	b	b9c <printf+0x1f0>
     b58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b5c:	e3530025 	cmp	r3, #37	@ 0x25
     b60:	1a000005 	bne	b7c <printf+0x1d0>
     b64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b68:	e6ef3073 	uxtb	r3, r3
     b6c:	e1a01003 	mov	r1, r3
     b70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b74:	ebffff30 	bl	83c <putc>
     b78:	ea000007 	b	b9c <printf+0x1f0>
     b7c:	e3a01025 	mov	r1, #37	@ 0x25
     b80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b84:	ebffff2c 	bl	83c <putc>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e6ef3073 	uxtb	r3, r3
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b98:	ebffff27 	bl	83c <putc>
     b9c:	e3a03000 	mov	r3, #0
     ba0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ba4:	e51b3010 	ldr	r3, [fp, #-16]
     ba8:	e2833001 	add	r3, r3, #1
     bac:	e50b3010 	str	r3, [fp, #-16]
     bb0:	e59b2004 	ldr	r2, [fp, #4]
     bb4:	e51b3010 	ldr	r3, [fp, #-16]
     bb8:	e0823003 	add	r3, r2, r3
     bbc:	e5d33000 	ldrb	r3, [r3]
     bc0:	e3530000 	cmp	r3, #0
     bc4:	1affff84 	bne	9dc <printf+0x30>
     bc8:	e1a00000 	nop			@ (mov r0, r0)
     bcc:	e1a00000 	nop			@ (mov r0, r0)
     bd0:	e24bd004 	sub	sp, fp, #4
     bd4:	e8bd4800 	pop	{fp, lr}
     bd8:	e28dd00c 	add	sp, sp, #12
     bdc:	e12fff1e 	bx	lr
     be0:	00001080 	.word	0x00001080

00000be4 <free>:
     be4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     be8:	e28db000 	add	fp, sp, #0
     bec:	e24dd014 	sub	sp, sp, #20
     bf0:	e50b0010 	str	r0, [fp, #-16]
     bf4:	e51b3010 	ldr	r3, [fp, #-16]
     bf8:	e2433008 	sub	r3, r3, #8
     bfc:	e50b300c 	str	r3, [fp, #-12]
     c00:	e59f3154 	ldr	r3, [pc, #340]	@ d5c <free+0x178>
     c04:	e5933000 	ldr	r3, [r3]
     c08:	e50b3008 	str	r3, [fp, #-8]
     c0c:	ea000010 	b	c54 <free+0x70>
     c10:	e51b3008 	ldr	r3, [fp, #-8]
     c14:	e5933000 	ldr	r3, [r3]
     c18:	e51b2008 	ldr	r2, [fp, #-8]
     c1c:	e1520003 	cmp	r2, r3
     c20:	3a000008 	bcc	c48 <free+0x64>
     c24:	e51b200c 	ldr	r2, [fp, #-12]
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e1520003 	cmp	r2, r3
     c30:	8a000010 	bhi	c78 <free+0x94>
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e51b200c 	ldr	r2, [fp, #-12]
     c40:	e1520003 	cmp	r2, r3
     c44:	3a00000b 	bcc	c78 <free+0x94>
     c48:	e51b3008 	ldr	r3, [fp, #-8]
     c4c:	e5933000 	ldr	r3, [r3]
     c50:	e50b3008 	str	r3, [fp, #-8]
     c54:	e51b200c 	ldr	r2, [fp, #-12]
     c58:	e51b3008 	ldr	r3, [fp, #-8]
     c5c:	e1520003 	cmp	r2, r3
     c60:	9affffea 	bls	c10 <free+0x2c>
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e51b200c 	ldr	r2, [fp, #-12]
     c70:	e1520003 	cmp	r2, r3
     c74:	2affffe5 	bcs	c10 <free+0x2c>
     c78:	e51b300c 	ldr	r3, [fp, #-12]
     c7c:	e5933004 	ldr	r3, [r3, #4]
     c80:	e1a03183 	lsl	r3, r3, #3
     c84:	e51b200c 	ldr	r2, [fp, #-12]
     c88:	e0822003 	add	r2, r2, r3
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e1520003 	cmp	r2, r3
     c98:	1a00000d 	bne	cd4 <free+0xf0>
     c9c:	e51b300c 	ldr	r3, [fp, #-12]
     ca0:	e5932004 	ldr	r2, [r3, #4]
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e5933004 	ldr	r3, [r3, #4]
     cb0:	e0822003 	add	r2, r2, r3
     cb4:	e51b300c 	ldr	r3, [fp, #-12]
     cb8:	e5832004 	str	r2, [r3, #4]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5933000 	ldr	r3, [r3]
     cc4:	e5932000 	ldr	r2, [r3]
     cc8:	e51b300c 	ldr	r3, [fp, #-12]
     ccc:	e5832000 	str	r2, [r3]
     cd0:	ea000003 	b	ce4 <free+0x100>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5932000 	ldr	r2, [r3]
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5832000 	str	r2, [r3]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e5933004 	ldr	r3, [r3, #4]
     cec:	e1a03183 	lsl	r3, r3, #3
     cf0:	e51b2008 	ldr	r2, [fp, #-8]
     cf4:	e0823003 	add	r3, r2, r3
     cf8:	e51b200c 	ldr	r2, [fp, #-12]
     cfc:	e1520003 	cmp	r2, r3
     d00:	1a00000b 	bne	d34 <free+0x150>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5932004 	ldr	r2, [r3, #4]
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5933004 	ldr	r3, [r3, #4]
     d14:	e0822003 	add	r2, r2, r3
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5832004 	str	r2, [r3, #4]
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5932000 	ldr	r2, [r3]
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5832000 	str	r2, [r3]
     d30:	ea000002 	b	d40 <free+0x15c>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e51b200c 	ldr	r2, [fp, #-12]
     d3c:	e5832000 	str	r2, [r3]
     d40:	e59f2014 	ldr	r2, [pc, #20]	@ d5c <free+0x178>
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5823000 	str	r3, [r2]
     d4c:	e1a00000 	nop			@ (mov r0, r0)
     d50:	e28bd000 	add	sp, fp, #0
     d54:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d58:	e12fff1e 	bx	lr
     d5c:	000010a4 	.word	0x000010a4

00000d60 <morecore>:
     d60:	e92d4800 	push	{fp, lr}
     d64:	e28db004 	add	fp, sp, #4
     d68:	e24dd010 	sub	sp, sp, #16
     d6c:	e50b0010 	str	r0, [fp, #-16]
     d70:	e51b3010 	ldr	r3, [fp, #-16]
     d74:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d78:	2a000001 	bcs	d84 <morecore+0x24>
     d7c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d80:	e50b3010 	str	r3, [fp, #-16]
     d84:	e51b3010 	ldr	r3, [fp, #-16]
     d88:	e1a03183 	lsl	r3, r3, #3
     d8c:	e1a00003 	mov	r0, r3
     d90:	ebfffe85 	bl	7ac <sbrk>
     d94:	e50b0008 	str	r0, [fp, #-8]
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e3730001 	cmn	r3, #1
     da0:	1a000001 	bne	dac <morecore+0x4c>
     da4:	e3a03000 	mov	r3, #0
     da8:	ea00000a 	b	dd8 <morecore+0x78>
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e50b300c 	str	r3, [fp, #-12]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e51b2010 	ldr	r2, [fp, #-16]
     dbc:	e5832004 	str	r2, [r3, #4]
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e2833008 	add	r3, r3, #8
     dc8:	e1a00003 	mov	r0, r3
     dcc:	ebffff84 	bl	be4 <free>
     dd0:	e59f300c 	ldr	r3, [pc, #12]	@ de4 <morecore+0x84>
     dd4:	e5933000 	ldr	r3, [r3]
     dd8:	e1a00003 	mov	r0, r3
     ddc:	e24bd004 	sub	sp, fp, #4
     de0:	e8bd8800 	pop	{fp, pc}
     de4:	000010a4 	.word	0x000010a4

00000de8 <malloc>:
     de8:	e92d4800 	push	{fp, lr}
     dec:	e28db004 	add	fp, sp, #4
     df0:	e24dd018 	sub	sp, sp, #24
     df4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     df8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dfc:	e2833007 	add	r3, r3, #7
     e00:	e1a031a3 	lsr	r3, r3, #3
     e04:	e2833001 	add	r3, r3, #1
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e59f3134 	ldr	r3, [pc, #308]	@ f48 <malloc+0x160>
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e50b300c 	str	r3, [fp, #-12]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e3530000 	cmp	r3, #0
     e20:	1a00000b 	bne	e54 <malloc+0x6c>
     e24:	e59f3120 	ldr	r3, [pc, #288]	@ f4c <malloc+0x164>
     e28:	e50b300c 	str	r3, [fp, #-12]
     e2c:	e59f2114 	ldr	r2, [pc, #276]	@ f48 <malloc+0x160>
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e5823000 	str	r3, [r2]
     e38:	e59f3108 	ldr	r3, [pc, #264]	@ f48 <malloc+0x160>
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e59f2104 	ldr	r2, [pc, #260]	@ f4c <malloc+0x164>
     e44:	e5823000 	str	r3, [r2]
     e48:	e59f30fc 	ldr	r3, [pc, #252]	@ f4c <malloc+0x164>
     e4c:	e3a02000 	mov	r2, #0
     e50:	e5832004 	str	r2, [r3, #4]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e5933000 	ldr	r3, [r3]
     e5c:	e50b3008 	str	r3, [fp, #-8]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5933004 	ldr	r3, [r3, #4]
     e68:	e51b2010 	ldr	r2, [fp, #-16]
     e6c:	e1520003 	cmp	r2, r3
     e70:	8a00001e 	bhi	ef0 <malloc+0x108>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5933004 	ldr	r3, [r3, #4]
     e7c:	e51b2010 	ldr	r2, [fp, #-16]
     e80:	e1520003 	cmp	r2, r3
     e84:	1a000004 	bne	e9c <malloc+0xb4>
     e88:	e51b3008 	ldr	r3, [fp, #-8]
     e8c:	e5932000 	ldr	r2, [r3]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5832000 	str	r2, [r3]
     e98:	ea00000e 	b	ed8 <malloc+0xf0>
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5932004 	ldr	r2, [r3, #4]
     ea4:	e51b3010 	ldr	r3, [fp, #-16]
     ea8:	e0422003 	sub	r2, r2, r3
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e5832004 	str	r2, [r3, #4]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5933004 	ldr	r3, [r3, #4]
     ebc:	e1a03183 	lsl	r3, r3, #3
     ec0:	e51b2008 	ldr	r2, [fp, #-8]
     ec4:	e0823003 	add	r3, r2, r3
     ec8:	e50b3008 	str	r3, [fp, #-8]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e51b2010 	ldr	r2, [fp, #-16]
     ed4:	e5832004 	str	r2, [r3, #4]
     ed8:	e59f2068 	ldr	r2, [pc, #104]	@ f48 <malloc+0x160>
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5823000 	str	r3, [r2]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e2833008 	add	r3, r3, #8
     eec:	ea000012 	b	f3c <malloc+0x154>
     ef0:	e59f3050 	ldr	r3, [pc, #80]	@ f48 <malloc+0x160>
     ef4:	e5933000 	ldr	r3, [r3]
     ef8:	e51b2008 	ldr	r2, [fp, #-8]
     efc:	e1520003 	cmp	r2, r3
     f00:	1a000007 	bne	f24 <malloc+0x13c>
     f04:	e51b0010 	ldr	r0, [fp, #-16]
     f08:	ebffff94 	bl	d60 <morecore>
     f0c:	e50b0008 	str	r0, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e3530000 	cmp	r3, #0
     f18:	1a000001 	bne	f24 <malloc+0x13c>
     f1c:	e3a03000 	mov	r3, #0
     f20:	ea000005 	b	f3c <malloc+0x154>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e50b300c 	str	r3, [fp, #-12]
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e50b3008 	str	r3, [fp, #-8]
     f38:	eaffffc8 	b	e60 <malloc+0x78>
     f3c:	e1a00003 	mov	r0, r3
     f40:	e24bd004 	sub	sp, fp, #4
     f44:	e8bd8800 	pop	{fp, pc}
     f48:	000010a4 	.word	0x000010a4
     f4c:	0000109c 	.word	0x0000109c

00000f50 <__udivsi3>:
     f50:	e2512001 	subs	r2, r1, #1
     f54:	012fff1e 	bxeq	lr
     f58:	3a000036 	bcc	1038 <__udivsi3+0xe8>
     f5c:	e1500001 	cmp	r0, r1
     f60:	9a000022 	bls	ff0 <__udivsi3+0xa0>
     f64:	e1110002 	tst	r1, r2
     f68:	0a000023 	beq	ffc <__udivsi3+0xac>
     f6c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f70:	01a01181 	lsleq	r1, r1, #3
     f74:	03a03008 	moveq	r3, #8
     f78:	13a03001 	movne	r3, #1
     f7c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f80:	31510000 	cmpcc	r1, r0
     f84:	31a01201 	lslcc	r1, r1, #4
     f88:	31a03203 	lslcc	r3, r3, #4
     f8c:	3afffffa 	bcc	f7c <__udivsi3+0x2c>
     f90:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f94:	31510000 	cmpcc	r1, r0
     f98:	31a01081 	lslcc	r1, r1, #1
     f9c:	31a03083 	lslcc	r3, r3, #1
     fa0:	3afffffa 	bcc	f90 <__udivsi3+0x40>
     fa4:	e3a02000 	mov	r2, #0
     fa8:	e1500001 	cmp	r0, r1
     fac:	20400001 	subcs	r0, r0, r1
     fb0:	21822003 	orrcs	r2, r2, r3
     fb4:	e15000a1 	cmp	r0, r1, lsr #1
     fb8:	204000a1 	subcs	r0, r0, r1, lsr #1
     fbc:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fc0:	e1500121 	cmp	r0, r1, lsr #2
     fc4:	20400121 	subcs	r0, r0, r1, lsr #2
     fc8:	21822123 	orrcs	r2, r2, r3, lsr #2
     fcc:	e15001a1 	cmp	r0, r1, lsr #3
     fd0:	204001a1 	subcs	r0, r0, r1, lsr #3
     fd4:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fd8:	e3500000 	cmp	r0, #0
     fdc:	11b03223 	lsrsne	r3, r3, #4
     fe0:	11a01221 	lsrne	r1, r1, #4
     fe4:	1affffef 	bne	fa8 <__udivsi3+0x58>
     fe8:	e1a00002 	mov	r0, r2
     fec:	e12fff1e 	bx	lr
     ff0:	03a00001 	moveq	r0, #1
     ff4:	13a00000 	movne	r0, #0
     ff8:	e12fff1e 	bx	lr
     ffc:	e3510801 	cmp	r1, #65536	@ 0x10000
    1000:	21a01821 	lsrcs	r1, r1, #16
    1004:	23a02010 	movcs	r2, #16
    1008:	33a02000 	movcc	r2, #0
    100c:	e3510c01 	cmp	r1, #256	@ 0x100
    1010:	21a01421 	lsrcs	r1, r1, #8
    1014:	22822008 	addcs	r2, r2, #8
    1018:	e3510010 	cmp	r1, #16
    101c:	21a01221 	lsrcs	r1, r1, #4
    1020:	22822004 	addcs	r2, r2, #4
    1024:	e3510004 	cmp	r1, #4
    1028:	82822003 	addhi	r2, r2, #3
    102c:	908220a1 	addls	r2, r2, r1, lsr #1
    1030:	e1a00230 	lsr	r0, r0, r2
    1034:	e12fff1e 	bx	lr
    1038:	e3500000 	cmp	r0, #0
    103c:	13e00000 	mvnne	r0, #0
    1040:	ea000007 	b	1064 <__aeabi_idiv0>

00001044 <__aeabi_uidivmod>:
    1044:	e3510000 	cmp	r1, #0
    1048:	0afffffa 	beq	1038 <__udivsi3+0xe8>
    104c:	e92d4003 	push	{r0, r1, lr}
    1050:	ebffffbe 	bl	f50 <__udivsi3>
    1054:	e8bd4006 	pop	{r1, r2, lr}
    1058:	e0030092 	mul	r3, r2, r0
    105c:	e0411003 	sub	r1, r1, r3
    1060:	e12fff1e 	bx	lr

00001064 <__aeabi_idiv0>:
    1064:	e12fff1e 	bx	lr
