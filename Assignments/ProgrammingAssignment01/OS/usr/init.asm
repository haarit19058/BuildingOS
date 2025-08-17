
_init:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e3a01002 	mov	r1, #2
      10:	e59f00c4 	ldr	r0, [pc, #196]	@ dc <main+0xdc>
      14:	eb0001be 	bl	714 <open>
      18:	e1a03000 	mov	r3, r0
      1c:	e3530000 	cmp	r3, #0
      20:	aa000006 	bge	40 <main+0x40>
      24:	e3a02001 	mov	r2, #1
      28:	e3a01001 	mov	r1, #1
      2c:	e59f00a8 	ldr	r0, [pc, #168]	@ dc <main+0xdc>
      30:	eb0001c0 	bl	738 <mknod>
      34:	e3a01002 	mov	r1, #2
      38:	e59f009c 	ldr	r0, [pc, #156]	@ dc <main+0xdc>
      3c:	eb0001b4 	bl	714 <open>
      40:	e3a00000 	mov	r0, #0
      44:	eb0001f1 	bl	810 <dup>
      48:	e3a00000 	mov	r0, #0
      4c:	eb0001ef 	bl	810 <dup>
      50:	e59f1088 	ldr	r1, [pc, #136]	@ e0 <main+0xe0>
      54:	e3a00001 	mov	r0, #1
      58:	eb000275 	bl	a34 <printf>
      5c:	eb00015b 	bl	5d0 <fork>
      60:	e50b0008 	str	r0, [fp, #-8]
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e3530000 	cmp	r3, #0
      6c:	aa000003 	bge	80 <main+0x80>
      70:	e59f106c 	ldr	r1, [pc, #108]	@ e4 <main+0xe4>
      74:	e3a00001 	mov	r0, #1
      78:	eb00026d 	bl	a34 <printf>
      7c:	eb00015c 	bl	5f4 <exit>
      80:	e51b3008 	ldr	r3, [fp, #-8]
      84:	e3530000 	cmp	r3, #0
      88:	1a000009 	bne	b4 <main+0xb4>
      8c:	e59f1054 	ldr	r1, [pc, #84]	@ e8 <main+0xe8>
      90:	e59f0054 	ldr	r0, [pc, #84]	@ ec <main+0xec>
      94:	eb000195 	bl	6f0 <exec>
      98:	e59f1050 	ldr	r1, [pc, #80]	@ f0 <main+0xf0>
      9c:	e3a00001 	mov	r0, #1
      a0:	eb000263 	bl	a34 <printf>
      a4:	eb000152 	bl	5f4 <exit>
      a8:	e59f1044 	ldr	r1, [pc, #68]	@ f4 <main+0xf4>
      ac:	e3a00001 	mov	r0, #1
      b0:	eb00025f 	bl	a34 <printf>
      b4:	eb000157 	bl	618 <wait>
      b8:	e50b000c 	str	r0, [fp, #-12]
      bc:	e51b300c 	ldr	r3, [fp, #-12]
      c0:	e3530000 	cmp	r3, #0
      c4:	baffffe1 	blt	50 <main+0x50>
      c8:	e51b200c 	ldr	r2, [fp, #-12]
      cc:	e51b3008 	ldr	r3, [fp, #-8]
      d0:	e1520003 	cmp	r2, r3
      d4:	1afffff3 	bne	a8 <main+0xa8>
      d8:	eaffffdc 	b	50 <main+0x50>
      dc:	000010f4 	.word	0x000010f4
      e0:	000010fc 	.word	0x000010fc
      e4:	00001110 	.word	0x00001110
      e8:	00001150 	.word	0x00001150
      ec:	000010f0 	.word	0x000010f0
      f0:	00001124 	.word	0x00001124
      f4:	0000113c 	.word	0x0000113c

000000f8 <strcpy>:
      f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      fc:	e28db000 	add	fp, sp, #0
     100:	e24dd014 	sub	sp, sp, #20
     104:	e50b0010 	str	r0, [fp, #-16]
     108:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     10c:	e51b3010 	ldr	r3, [fp, #-16]
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e1a00000 	nop			@ (mov r0, r0)
     118:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     11c:	e2823001 	add	r3, r2, #1
     120:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e2831001 	add	r1, r3, #1
     12c:	e50b1010 	str	r1, [fp, #-16]
     130:	e5d22000 	ldrb	r2, [r2]
     134:	e5c32000 	strb	r2, [r3]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff4 	bne	118 <strcpy+0x20>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <strcmp>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd00c 	sub	sp, sp, #12
     164:	e50b0008 	str	r0, [fp, #-8]
     168:	e50b100c 	str	r1, [fp, #-12]
     16c:	ea000005 	b	188 <strcmp+0x30>
     170:	e51b3008 	ldr	r3, [fp, #-8]
     174:	e2833001 	add	r3, r3, #1
     178:	e50b3008 	str	r3, [fp, #-8]
     17c:	e51b300c 	ldr	r3, [fp, #-12]
     180:	e2833001 	add	r3, r3, #1
     184:	e50b300c 	str	r3, [fp, #-12]
     188:	e51b3008 	ldr	r3, [fp, #-8]
     18c:	e5d33000 	ldrb	r3, [r3]
     190:	e3530000 	cmp	r3, #0
     194:	0a000005 	beq	1b0 <strcmp+0x58>
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e5d32000 	ldrb	r2, [r3]
     1a0:	e51b300c 	ldr	r3, [fp, #-12]
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e1520003 	cmp	r2, r3
     1ac:	0affffef 	beq	170 <strcmp+0x18>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e5d33000 	ldrb	r3, [r3]
     1b8:	e1a02003 	mov	r2, r3
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e5d33000 	ldrb	r3, [r3]
     1c4:	e0423003 	sub	r3, r2, r3
     1c8:	e1a00003 	mov	r0, r3
     1cc:	e28bd000 	add	sp, fp, #0
     1d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d4:	e12fff1e 	bx	lr

000001d8 <strlen>:
     1d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1dc:	e28db000 	add	fp, sp, #0
     1e0:	e24dd014 	sub	sp, sp, #20
     1e4:	e50b0010 	str	r0, [fp, #-16]
     1e8:	e3a03000 	mov	r3, #0
     1ec:	e50b3008 	str	r3, [fp, #-8]
     1f0:	ea000002 	b	200 <strlen+0x28>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b3008 	ldr	r3, [fp, #-8]
     204:	e51b2010 	ldr	r2, [fp, #-16]
     208:	e0823003 	add	r3, r2, r3
     20c:	e5d33000 	ldrb	r3, [r3]
     210:	e3530000 	cmp	r3, #0
     214:	1afffff6 	bne	1f4 <strlen+0x1c>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e1a00003 	mov	r0, r3
     220:	e28bd000 	add	sp, fp, #0
     224:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     228:	e12fff1e 	bx	lr

0000022c <memset>:
     22c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     230:	e28db000 	add	fp, sp, #0
     234:	e24dd024 	sub	sp, sp, #36	@ 0x24
     238:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     23c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     240:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     248:	e50b3008 	str	r3, [fp, #-8]
     24c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     250:	e54b300d 	strb	r3, [fp, #-13]
     254:	e55b200d 	ldrb	r2, [fp, #-13]
     258:	e1a03002 	mov	r3, r2
     25c:	e1a03403 	lsl	r3, r3, #8
     260:	e0833002 	add	r3, r3, r2
     264:	e1a03803 	lsl	r3, r3, #16
     268:	e1a02003 	mov	r2, r3
     26c:	e55b300d 	ldrb	r3, [fp, #-13]
     270:	e1a03403 	lsl	r3, r3, #8
     274:	e1822003 	orr	r2, r2, r3
     278:	e55b300d 	ldrb	r3, [fp, #-13]
     27c:	e1823003 	orr	r3, r2, r3
     280:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     284:	ea000008 	b	2ac <memset+0x80>
     288:	e51b3008 	ldr	r3, [fp, #-8]
     28c:	e55b200d 	ldrb	r2, [fp, #-13]
     290:	e5c32000 	strb	r2, [r3]
     294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     298:	e2433001 	sub	r3, r3, #1
     29c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e2833001 	add	r3, r3, #1
     2a8:	e50b3008 	str	r3, [fp, #-8]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e3530000 	cmp	r3, #0
     2b4:	0a000003 	beq	2c8 <memset+0x9c>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2033003 	and	r3, r3, #3
     2c0:	e3530000 	cmp	r3, #0
     2c4:	1affffef 	bne	288 <memset+0x5c>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e50b300c 	str	r3, [fp, #-12]
     2d0:	ea000008 	b	2f8 <memset+0xcc>
     2d4:	e51b300c 	ldr	r3, [fp, #-12]
     2d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2dc:	e5832000 	str	r2, [r3]
     2e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e2433004 	sub	r3, r3, #4
     2e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e2833004 	add	r3, r3, #4
     2f4:	e50b300c 	str	r3, [fp, #-12]
     2f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2fc:	e3530003 	cmp	r3, #3
     300:	8afffff3 	bhi	2d4 <memset+0xa8>
     304:	e51b300c 	ldr	r3, [fp, #-12]
     308:	e50b3008 	str	r3, [fp, #-8]
     30c:	ea000008 	b	334 <memset+0x108>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e55b200d 	ldrb	r2, [fp, #-13]
     318:	e5c32000 	strb	r2, [r3]
     31c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     320:	e2433001 	sub	r3, r3, #1
     324:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e2833001 	add	r3, r3, #1
     330:	e50b3008 	str	r3, [fp, #-8]
     334:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff3 	bne	310 <memset+0xe4>
     340:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <strchr>:
     354:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     358:	e28db000 	add	fp, sp, #0
     35c:	e24dd00c 	sub	sp, sp, #12
     360:	e50b0008 	str	r0, [fp, #-8]
     364:	e1a03001 	mov	r3, r1
     368:	e54b3009 	strb	r3, [fp, #-9]
     36c:	ea000009 	b	398 <strchr+0x44>
     370:	e51b3008 	ldr	r3, [fp, #-8]
     374:	e5d33000 	ldrb	r3, [r3]
     378:	e55b2009 	ldrb	r2, [fp, #-9]
     37c:	e1520003 	cmp	r2, r3
     380:	1a000001 	bne	38c <strchr+0x38>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	ea000007 	b	3ac <strchr+0x58>
     38c:	e51b3008 	ldr	r3, [fp, #-8]
     390:	e2833001 	add	r3, r3, #1
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e5d33000 	ldrb	r3, [r3]
     3a0:	e3530000 	cmp	r3, #0
     3a4:	1afffff1 	bne	370 <strchr+0x1c>
     3a8:	e3a03000 	mov	r3, #0
     3ac:	e1a00003 	mov	r0, r3
     3b0:	e28bd000 	add	sp, fp, #0
     3b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3b8:	e12fff1e 	bx	lr

000003bc <gets>:
     3bc:	e92d4800 	push	{fp, lr}
     3c0:	e28db004 	add	fp, sp, #4
     3c4:	e24dd018 	sub	sp, sp, #24
     3c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3d0:	e3a03000 	mov	r3, #0
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	ea000016 	b	438 <gets+0x7c>
     3dc:	e24b300d 	sub	r3, fp, #13
     3e0:	e3a02001 	mov	r2, #1
     3e4:	e1a01003 	mov	r1, r3
     3e8:	e3a00000 	mov	r0, #0
     3ec:	eb00009b 	bl	660 <read>
     3f0:	e50b000c 	str	r0, [fp, #-12]
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e3530000 	cmp	r3, #0
     3fc:	da000013 	ble	450 <gets+0x94>
     400:	e51b3008 	ldr	r3, [fp, #-8]
     404:	e2832001 	add	r2, r3, #1
     408:	e50b2008 	str	r2, [fp, #-8]
     40c:	e1a02003 	mov	r2, r3
     410:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     414:	e0833002 	add	r3, r3, r2
     418:	e55b200d 	ldrb	r2, [fp, #-13]
     41c:	e5c32000 	strb	r2, [r3]
     420:	e55b300d 	ldrb	r3, [fp, #-13]
     424:	e353000a 	cmp	r3, #10
     428:	0a000009 	beq	454 <gets+0x98>
     42c:	e55b300d 	ldrb	r3, [fp, #-13]
     430:	e353000d 	cmp	r3, #13
     434:	0a000006 	beq	454 <gets+0x98>
     438:	e51b3008 	ldr	r3, [fp, #-8]
     43c:	e2833001 	add	r3, r3, #1
     440:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     444:	e1520003 	cmp	r2, r3
     448:	caffffe3 	bgt	3dc <gets+0x20>
     44c:	ea000000 	b	454 <gets+0x98>
     450:	e1a00000 	nop			@ (mov r0, r0)
     454:	e51b3008 	ldr	r3, [fp, #-8]
     458:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     45c:	e0823003 	add	r3, r2, r3
     460:	e3a02000 	mov	r2, #0
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     46c:	e1a00003 	mov	r0, r3
     470:	e24bd004 	sub	sp, fp, #4
     474:	e8bd8800 	pop	{fp, pc}

00000478 <stat>:
     478:	e92d4800 	push	{fp, lr}
     47c:	e28db004 	add	fp, sp, #4
     480:	e24dd010 	sub	sp, sp, #16
     484:	e50b0010 	str	r0, [fp, #-16]
     488:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     48c:	e3a01000 	mov	r1, #0
     490:	e51b0010 	ldr	r0, [fp, #-16]
     494:	eb00009e 	bl	714 <open>
     498:	e50b0008 	str	r0, [fp, #-8]
     49c:	e51b3008 	ldr	r3, [fp, #-8]
     4a0:	e3530000 	cmp	r3, #0
     4a4:	aa000001 	bge	4b0 <stat+0x38>
     4a8:	e3e03000 	mvn	r3, #0
     4ac:	ea000006 	b	4cc <stat+0x54>
     4b0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e51b0008 	ldr	r0, [fp, #-8]
     4b8:	eb0000b0 	bl	780 <fstat>
     4bc:	e50b000c 	str	r0, [fp, #-12]
     4c0:	e51b0008 	ldr	r0, [fp, #-8]
     4c4:	eb000077 	bl	6a8 <close>
     4c8:	e51b300c 	ldr	r3, [fp, #-12]
     4cc:	e1a00003 	mov	r0, r3
     4d0:	e24bd004 	sub	sp, fp, #4
     4d4:	e8bd8800 	pop	{fp, pc}

000004d8 <atoi>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd014 	sub	sp, sp, #20
     4e4:	e50b0010 	str	r0, [fp, #-16]
     4e8:	e3a03000 	mov	r3, #0
     4ec:	e50b3008 	str	r3, [fp, #-8]
     4f0:	ea00000c 	b	528 <atoi+0x50>
     4f4:	e51b2008 	ldr	r2, [fp, #-8]
     4f8:	e1a03002 	mov	r3, r2
     4fc:	e1a03103 	lsl	r3, r3, #2
     500:	e0833002 	add	r3, r3, r2
     504:	e1a03083 	lsl	r3, r3, #1
     508:	e1a01003 	mov	r1, r3
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e2832001 	add	r2, r3, #1
     514:	e50b2010 	str	r2, [fp, #-16]
     518:	e5d33000 	ldrb	r3, [r3]
     51c:	e0813003 	add	r3, r1, r3
     520:	e2433030 	sub	r3, r3, #48	@ 0x30
     524:	e50b3008 	str	r3, [fp, #-8]
     528:	e51b3010 	ldr	r3, [fp, #-16]
     52c:	e5d33000 	ldrb	r3, [r3]
     530:	e353002f 	cmp	r3, #47	@ 0x2f
     534:	9a000003 	bls	548 <atoi+0x70>
     538:	e51b3010 	ldr	r3, [fp, #-16]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530039 	cmp	r3, #57	@ 0x39
     544:	9affffea 	bls	4f4 <atoi+0x1c>
     548:	e51b3008 	ldr	r3, [fp, #-8]
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <memmove>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd01c 	sub	sp, sp, #28
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     570:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     574:	e51b3010 	ldr	r3, [fp, #-16]
     578:	e50b3008 	str	r3, [fp, #-8]
     57c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     580:	e50b300c 	str	r3, [fp, #-12]
     584:	ea000007 	b	5a8 <memmove+0x4c>
     588:	e51b200c 	ldr	r2, [fp, #-12]
     58c:	e2823001 	add	r3, r2, #1
     590:	e50b300c 	str	r3, [fp, #-12]
     594:	e51b3008 	ldr	r3, [fp, #-8]
     598:	e2831001 	add	r1, r3, #1
     59c:	e50b1008 	str	r1, [fp, #-8]
     5a0:	e5d22000 	ldrb	r2, [r2]
     5a4:	e5c32000 	strb	r2, [r3]
     5a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ac:	e2432001 	sub	r2, r3, #1
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e3530000 	cmp	r3, #0
     5b8:	cafffff2 	bgt	588 <memmove+0x2c>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e1a00003 	mov	r0, r3
     5c4:	e28bd000 	add	sp, fp, #0
     5c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5cc:	e12fff1e 	bx	lr

000005d0 <fork>:
     5d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d4:	e1a04003 	mov	r4, r3
     5d8:	e1a03002 	mov	r3, r2
     5dc:	e1a02001 	mov	r2, r1
     5e0:	e1a01000 	mov	r1, r0
     5e4:	e3a00001 	mov	r0, #1
     5e8:	ef000000 	svc	0x00000000
     5ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f0:	e12fff1e 	bx	lr

000005f4 <exit>:
     5f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f8:	e1a04003 	mov	r4, r3
     5fc:	e1a03002 	mov	r3, r2
     600:	e1a02001 	mov	r2, r1
     604:	e1a01000 	mov	r1, r0
     608:	e3a00002 	mov	r0, #2
     60c:	ef000000 	svc	0x00000000
     610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     614:	e12fff1e 	bx	lr

00000618 <wait>:
     618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     61c:	e1a04003 	mov	r4, r3
     620:	e1a03002 	mov	r3, r2
     624:	e1a02001 	mov	r2, r1
     628:	e1a01000 	mov	r1, r0
     62c:	e3a00003 	mov	r0, #3
     630:	ef000000 	svc	0x00000000
     634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     638:	e12fff1e 	bx	lr

0000063c <pipe>:
     63c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     640:	e1a04003 	mov	r4, r3
     644:	e1a03002 	mov	r3, r2
     648:	e1a02001 	mov	r2, r1
     64c:	e1a01000 	mov	r1, r0
     650:	e3a00004 	mov	r0, #4
     654:	ef000000 	svc	0x00000000
     658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     65c:	e12fff1e 	bx	lr

00000660 <read>:
     660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     664:	e1a04003 	mov	r4, r3
     668:	e1a03002 	mov	r3, r2
     66c:	e1a02001 	mov	r2, r1
     670:	e1a01000 	mov	r1, r0
     674:	e3a00005 	mov	r0, #5
     678:	ef000000 	svc	0x00000000
     67c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     680:	e12fff1e 	bx	lr

00000684 <write>:
     684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     688:	e1a04003 	mov	r4, r3
     68c:	e1a03002 	mov	r3, r2
     690:	e1a02001 	mov	r2, r1
     694:	e1a01000 	mov	r1, r0
     698:	e3a00010 	mov	r0, #16
     69c:	ef000000 	svc	0x00000000
     6a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <close>:
     6a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ac:	e1a04003 	mov	r4, r3
     6b0:	e1a03002 	mov	r3, r2
     6b4:	e1a02001 	mov	r2, r1
     6b8:	e1a01000 	mov	r1, r0
     6bc:	e3a00015 	mov	r0, #21
     6c0:	ef000000 	svc	0x00000000
     6c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c8:	e12fff1e 	bx	lr

000006cc <kill>:
     6cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d0:	e1a04003 	mov	r4, r3
     6d4:	e1a03002 	mov	r3, r2
     6d8:	e1a02001 	mov	r2, r1
     6dc:	e1a01000 	mov	r1, r0
     6e0:	e3a00006 	mov	r0, #6
     6e4:	ef000000 	svc	0x00000000
     6e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6ec:	e12fff1e 	bx	lr

000006f0 <exec>:
     6f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f4:	e1a04003 	mov	r4, r3
     6f8:	e1a03002 	mov	r3, r2
     6fc:	e1a02001 	mov	r2, r1
     700:	e1a01000 	mov	r1, r0
     704:	e3a00007 	mov	r0, #7
     708:	ef000000 	svc	0x00000000
     70c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     710:	e12fff1e 	bx	lr

00000714 <open>:
     714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     718:	e1a04003 	mov	r4, r3
     71c:	e1a03002 	mov	r3, r2
     720:	e1a02001 	mov	r2, r1
     724:	e1a01000 	mov	r1, r0
     728:	e3a0000f 	mov	r0, #15
     72c:	ef000000 	svc	0x00000000
     730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     734:	e12fff1e 	bx	lr

00000738 <mknod>:
     738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     73c:	e1a04003 	mov	r4, r3
     740:	e1a03002 	mov	r3, r2
     744:	e1a02001 	mov	r2, r1
     748:	e1a01000 	mov	r1, r0
     74c:	e3a00011 	mov	r0, #17
     750:	ef000000 	svc	0x00000000
     754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     758:	e12fff1e 	bx	lr

0000075c <unlink>:
     75c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     760:	e1a04003 	mov	r4, r3
     764:	e1a03002 	mov	r3, r2
     768:	e1a02001 	mov	r2, r1
     76c:	e1a01000 	mov	r1, r0
     770:	e3a00012 	mov	r0, #18
     774:	ef000000 	svc	0x00000000
     778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     77c:	e12fff1e 	bx	lr

00000780 <fstat>:
     780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     784:	e1a04003 	mov	r4, r3
     788:	e1a03002 	mov	r3, r2
     78c:	e1a02001 	mov	r2, r1
     790:	e1a01000 	mov	r1, r0
     794:	e3a00008 	mov	r0, #8
     798:	ef000000 	svc	0x00000000
     79c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a0:	e12fff1e 	bx	lr

000007a4 <link>:
     7a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a8:	e1a04003 	mov	r4, r3
     7ac:	e1a03002 	mov	r3, r2
     7b0:	e1a02001 	mov	r2, r1
     7b4:	e1a01000 	mov	r1, r0
     7b8:	e3a00013 	mov	r0, #19
     7bc:	ef000000 	svc	0x00000000
     7c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c4:	e12fff1e 	bx	lr

000007c8 <mkdir>:
     7c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7cc:	e1a04003 	mov	r4, r3
     7d0:	e1a03002 	mov	r3, r2
     7d4:	e1a02001 	mov	r2, r1
     7d8:	e1a01000 	mov	r1, r0
     7dc:	e3a00014 	mov	r0, #20
     7e0:	ef000000 	svc	0x00000000
     7e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e8:	e12fff1e 	bx	lr

000007ec <chdir>:
     7ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f0:	e1a04003 	mov	r4, r3
     7f4:	e1a03002 	mov	r3, r2
     7f8:	e1a02001 	mov	r2, r1
     7fc:	e1a01000 	mov	r1, r0
     800:	e3a00009 	mov	r0, #9
     804:	ef000000 	svc	0x00000000
     808:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     80c:	e12fff1e 	bx	lr

00000810 <dup>:
     810:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     814:	e1a04003 	mov	r4, r3
     818:	e1a03002 	mov	r3, r2
     81c:	e1a02001 	mov	r2, r1
     820:	e1a01000 	mov	r1, r0
     824:	e3a0000a 	mov	r0, #10
     828:	ef000000 	svc	0x00000000
     82c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     830:	e12fff1e 	bx	lr

00000834 <getpid>:
     834:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     838:	e1a04003 	mov	r4, r3
     83c:	e1a03002 	mov	r3, r2
     840:	e1a02001 	mov	r2, r1
     844:	e1a01000 	mov	r1, r0
     848:	e3a0000b 	mov	r0, #11
     84c:	ef000000 	svc	0x00000000
     850:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     854:	e12fff1e 	bx	lr

00000858 <sbrk>:
     858:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     85c:	e1a04003 	mov	r4, r3
     860:	e1a03002 	mov	r3, r2
     864:	e1a02001 	mov	r2, r1
     868:	e1a01000 	mov	r1, r0
     86c:	e3a0000c 	mov	r0, #12
     870:	ef000000 	svc	0x00000000
     874:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <sleep>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a0000d 	mov	r0, #13
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <uptime>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a0000e 	mov	r0, #14
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <putc>:
     8c4:	e92d4800 	push	{fp, lr}
     8c8:	e28db004 	add	fp, sp, #4
     8cc:	e24dd008 	sub	sp, sp, #8
     8d0:	e50b0008 	str	r0, [fp, #-8]
     8d4:	e1a03001 	mov	r3, r1
     8d8:	e54b3009 	strb	r3, [fp, #-9]
     8dc:	e24b3009 	sub	r3, fp, #9
     8e0:	e3a02001 	mov	r2, #1
     8e4:	e1a01003 	mov	r1, r3
     8e8:	e51b0008 	ldr	r0, [fp, #-8]
     8ec:	ebffff64 	bl	684 <write>
     8f0:	e1a00000 	nop			@ (mov r0, r0)
     8f4:	e24bd004 	sub	sp, fp, #4
     8f8:	e8bd8800 	pop	{fp, pc}

000008fc <printint>:
     8fc:	e92d4800 	push	{fp, lr}
     900:	e28db004 	add	fp, sp, #4
     904:	e24dd030 	sub	sp, sp, #48	@ 0x30
     908:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     90c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     910:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     914:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     918:	e3a03000 	mov	r3, #0
     91c:	e50b300c 	str	r3, [fp, #-12]
     920:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     924:	e3530000 	cmp	r3, #0
     928:	0a000008 	beq	950 <printint+0x54>
     92c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     930:	e3530000 	cmp	r3, #0
     934:	aa000005 	bge	950 <printint+0x54>
     938:	e3a03001 	mov	r3, #1
     93c:	e50b300c 	str	r3, [fp, #-12]
     940:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     944:	e2633000 	rsb	r3, r3, #0
     948:	e50b3010 	str	r3, [fp, #-16]
     94c:	ea000001 	b	958 <printint+0x5c>
     950:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     954:	e50b3010 	str	r3, [fp, #-16]
     958:	e3a03000 	mov	r3, #0
     95c:	e50b3008 	str	r3, [fp, #-8]
     960:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     964:	e51b3010 	ldr	r3, [fp, #-16]
     968:	e1a01002 	mov	r1, r2
     96c:	e1a00003 	mov	r0, r3
     970:	eb0001d5 	bl	10cc <__aeabi_uidivmod>
     974:	e1a03001 	mov	r3, r1
     978:	e1a01003 	mov	r1, r3
     97c:	e51b3008 	ldr	r3, [fp, #-8]
     980:	e2832001 	add	r2, r3, #1
     984:	e50b2008 	str	r2, [fp, #-8]
     988:	e59f20a0 	ldr	r2, [pc, #160]	@ a30 <printint+0x134>
     98c:	e7d22001 	ldrb	r2, [r2, r1]
     990:	e2433004 	sub	r3, r3, #4
     994:	e083300b 	add	r3, r3, fp
     998:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     99c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9a0:	e1a01003 	mov	r1, r3
     9a4:	e51b0010 	ldr	r0, [fp, #-16]
     9a8:	eb00018a 	bl	fd8 <__udivsi3>
     9ac:	e1a03000 	mov	r3, r0
     9b0:	e50b3010 	str	r3, [fp, #-16]
     9b4:	e51b3010 	ldr	r3, [fp, #-16]
     9b8:	e3530000 	cmp	r3, #0
     9bc:	1affffe7 	bne	960 <printint+0x64>
     9c0:	e51b300c 	ldr	r3, [fp, #-12]
     9c4:	e3530000 	cmp	r3, #0
     9c8:	0a00000e 	beq	a08 <printint+0x10c>
     9cc:	e51b3008 	ldr	r3, [fp, #-8]
     9d0:	e2832001 	add	r2, r3, #1
     9d4:	e50b2008 	str	r2, [fp, #-8]
     9d8:	e2433004 	sub	r3, r3, #4
     9dc:	e083300b 	add	r3, r3, fp
     9e0:	e3a0202d 	mov	r2, #45	@ 0x2d
     9e4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9e8:	ea000006 	b	a08 <printint+0x10c>
     9ec:	e24b2020 	sub	r2, fp, #32
     9f0:	e51b3008 	ldr	r3, [fp, #-8]
     9f4:	e0823003 	add	r3, r2, r3
     9f8:	e5d33000 	ldrb	r3, [r3]
     9fc:	e1a01003 	mov	r1, r3
     a00:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a04:	ebffffae 	bl	8c4 <putc>
     a08:	e51b3008 	ldr	r3, [fp, #-8]
     a0c:	e2433001 	sub	r3, r3, #1
     a10:	e50b3008 	str	r3, [fp, #-8]
     a14:	e51b3008 	ldr	r3, [fp, #-8]
     a18:	e3530000 	cmp	r3, #0
     a1c:	aafffff2 	bge	9ec <printint+0xf0>
     a20:	e1a00000 	nop			@ (mov r0, r0)
     a24:	e1a00000 	nop			@ (mov r0, r0)
     a28:	e24bd004 	sub	sp, fp, #4
     a2c:	e8bd8800 	pop	{fp, pc}
     a30:	00001158 	.word	0x00001158

00000a34 <printf>:
     a34:	e92d000e 	push	{r1, r2, r3}
     a38:	e92d4800 	push	{fp, lr}
     a3c:	e28db004 	add	fp, sp, #4
     a40:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a44:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a48:	e3a03000 	mov	r3, #0
     a4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a50:	e28b3008 	add	r3, fp, #8
     a54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a58:	e3a03000 	mov	r3, #0
     a5c:	e50b3010 	str	r3, [fp, #-16]
     a60:	ea000074 	b	c38 <printf+0x204>
     a64:	e59b2004 	ldr	r2, [fp, #4]
     a68:	e51b3010 	ldr	r3, [fp, #-16]
     a6c:	e0823003 	add	r3, r2, r3
     a70:	e5d33000 	ldrb	r3, [r3]
     a74:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a78:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a7c:	e3530000 	cmp	r3, #0
     a80:	1a00000b 	bne	ab4 <printf+0x80>
     a84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a88:	e3530025 	cmp	r3, #37	@ 0x25
     a8c:	1a000002 	bne	a9c <printf+0x68>
     a90:	e3a03025 	mov	r3, #37	@ 0x25
     a94:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a98:	ea000063 	b	c2c <printf+0x1f8>
     a9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa0:	e6ef3073 	uxtb	r3, r3
     aa4:	e1a01003 	mov	r1, r3
     aa8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aac:	ebffff84 	bl	8c4 <putc>
     ab0:	ea00005d 	b	c2c <printf+0x1f8>
     ab4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ab8:	e3530025 	cmp	r3, #37	@ 0x25
     abc:	1a00005a 	bne	c2c <printf+0x1f8>
     ac0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac4:	e3530064 	cmp	r3, #100	@ 0x64
     ac8:	1a00000a 	bne	af8 <printf+0xc4>
     acc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e1a01003 	mov	r1, r3
     ad8:	e3a03001 	mov	r3, #1
     adc:	e3a0200a 	mov	r2, #10
     ae0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae4:	ebffff84 	bl	8fc <printint>
     ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aec:	e2833004 	add	r3, r3, #4
     af0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af4:	ea00004a 	b	c24 <printf+0x1f0>
     af8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     afc:	e3530078 	cmp	r3, #120	@ 0x78
     b00:	0a000002 	beq	b10 <printf+0xdc>
     b04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b08:	e3530070 	cmp	r3, #112	@ 0x70
     b0c:	1a00000a 	bne	b3c <printf+0x108>
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e5933000 	ldr	r3, [r3]
     b18:	e1a01003 	mov	r1, r3
     b1c:	e3a03000 	mov	r3, #0
     b20:	e3a02010 	mov	r2, #16
     b24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b28:	ebffff73 	bl	8fc <printint>
     b2c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b30:	e2833004 	add	r3, r3, #4
     b34:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b38:	ea000039 	b	c24 <printf+0x1f0>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e3530073 	cmp	r3, #115	@ 0x73
     b44:	1a000018 	bne	bac <printf+0x178>
     b48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b4c:	e5933000 	ldr	r3, [r3]
     b50:	e50b300c 	str	r3, [fp, #-12]
     b54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b58:	e2833004 	add	r3, r3, #4
     b5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b60:	e51b300c 	ldr	r3, [fp, #-12]
     b64:	e3530000 	cmp	r3, #0
     b68:	1a00000a 	bne	b98 <printf+0x164>
     b6c:	e59f30f4 	ldr	r3, [pc, #244]	@ c68 <printf+0x234>
     b70:	e50b300c 	str	r3, [fp, #-12]
     b74:	ea000007 	b	b98 <printf+0x164>
     b78:	e51b300c 	ldr	r3, [fp, #-12]
     b7c:	e5d33000 	ldrb	r3, [r3]
     b80:	e1a01003 	mov	r1, r3
     b84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b88:	ebffff4d 	bl	8c4 <putc>
     b8c:	e51b300c 	ldr	r3, [fp, #-12]
     b90:	e2833001 	add	r3, r3, #1
     b94:	e50b300c 	str	r3, [fp, #-12]
     b98:	e51b300c 	ldr	r3, [fp, #-12]
     b9c:	e5d33000 	ldrb	r3, [r3]
     ba0:	e3530000 	cmp	r3, #0
     ba4:	1afffff3 	bne	b78 <printf+0x144>
     ba8:	ea00001d 	b	c24 <printf+0x1f0>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530063 	cmp	r3, #99	@ 0x63
     bb4:	1a000009 	bne	be0 <printf+0x1ac>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e6ef3073 	uxtb	r3, r3
     bc4:	e1a01003 	mov	r1, r3
     bc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bcc:	ebffff3c 	bl	8c4 <putc>
     bd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd4:	e2833004 	add	r3, r3, #4
     bd8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	ea000010 	b	c24 <printf+0x1f0>
     be0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be4:	e3530025 	cmp	r3, #37	@ 0x25
     be8:	1a000005 	bne	c04 <printf+0x1d0>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e6ef3073 	uxtb	r3, r3
     bf4:	e1a01003 	mov	r1, r3
     bf8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bfc:	ebffff30 	bl	8c4 <putc>
     c00:	ea000007 	b	c24 <printf+0x1f0>
     c04:	e3a01025 	mov	r1, #37	@ 0x25
     c08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c0c:	ebffff2c 	bl	8c4 <putc>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e6ef3073 	uxtb	r3, r3
     c18:	e1a01003 	mov	r1, r3
     c1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c20:	ebffff27 	bl	8c4 <putc>
     c24:	e3a03000 	mov	r3, #0
     c28:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c2c:	e51b3010 	ldr	r3, [fp, #-16]
     c30:	e2833001 	add	r3, r3, #1
     c34:	e50b3010 	str	r3, [fp, #-16]
     c38:	e59b2004 	ldr	r2, [fp, #4]
     c3c:	e51b3010 	ldr	r3, [fp, #-16]
     c40:	e0823003 	add	r3, r2, r3
     c44:	e5d33000 	ldrb	r3, [r3]
     c48:	e3530000 	cmp	r3, #0
     c4c:	1affff84 	bne	a64 <printf+0x30>
     c50:	e1a00000 	nop			@ (mov r0, r0)
     c54:	e1a00000 	nop			@ (mov r0, r0)
     c58:	e24bd004 	sub	sp, fp, #4
     c5c:	e8bd4800 	pop	{fp, lr}
     c60:	e28dd00c 	add	sp, sp, #12
     c64:	e12fff1e 	bx	lr
     c68:	00001148 	.word	0x00001148

00000c6c <free>:
     c6c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c70:	e28db000 	add	fp, sp, #0
     c74:	e24dd014 	sub	sp, sp, #20
     c78:	e50b0010 	str	r0, [fp, #-16]
     c7c:	e51b3010 	ldr	r3, [fp, #-16]
     c80:	e2433008 	sub	r3, r3, #8
     c84:	e50b300c 	str	r3, [fp, #-12]
     c88:	e59f3154 	ldr	r3, [pc, #340]	@ de4 <free+0x178>
     c8c:	e5933000 	ldr	r3, [r3]
     c90:	e50b3008 	str	r3, [fp, #-8]
     c94:	ea000010 	b	cdc <free+0x70>
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5933000 	ldr	r3, [r3]
     ca0:	e51b2008 	ldr	r2, [fp, #-8]
     ca4:	e1520003 	cmp	r2, r3
     ca8:	3a000008 	bcc	cd0 <free+0x64>
     cac:	e51b200c 	ldr	r2, [fp, #-12]
     cb0:	e51b3008 	ldr	r3, [fp, #-8]
     cb4:	e1520003 	cmp	r2, r3
     cb8:	8a000010 	bhi	d00 <free+0x94>
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5933000 	ldr	r3, [r3]
     cc4:	e51b200c 	ldr	r2, [fp, #-12]
     cc8:	e1520003 	cmp	r2, r3
     ccc:	3a00000b 	bcc	d00 <free+0x94>
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e50b3008 	str	r3, [fp, #-8]
     cdc:	e51b200c 	ldr	r2, [fp, #-12]
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e1520003 	cmp	r2, r3
     ce8:	9affffea 	bls	c98 <free+0x2c>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e51b200c 	ldr	r2, [fp, #-12]
     cf8:	e1520003 	cmp	r2, r3
     cfc:	2affffe5 	bcs	c98 <free+0x2c>
     d00:	e51b300c 	ldr	r3, [fp, #-12]
     d04:	e5933004 	ldr	r3, [r3, #4]
     d08:	e1a03183 	lsl	r3, r3, #3
     d0c:	e51b200c 	ldr	r2, [fp, #-12]
     d10:	e0822003 	add	r2, r2, r3
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933000 	ldr	r3, [r3]
     d1c:	e1520003 	cmp	r2, r3
     d20:	1a00000d 	bne	d5c <free+0xf0>
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5932004 	ldr	r2, [r3, #4]
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e5933004 	ldr	r3, [r3, #4]
     d38:	e0822003 	add	r2, r2, r3
     d3c:	e51b300c 	ldr	r3, [fp, #-12]
     d40:	e5832004 	str	r2, [r3, #4]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e5933000 	ldr	r3, [r3]
     d4c:	e5932000 	ldr	r2, [r3]
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5832000 	str	r2, [r3]
     d58:	ea000003 	b	d6c <free+0x100>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5932000 	ldr	r2, [r3]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5832000 	str	r2, [r3]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5933004 	ldr	r3, [r3, #4]
     d74:	e1a03183 	lsl	r3, r3, #3
     d78:	e51b2008 	ldr	r2, [fp, #-8]
     d7c:	e0823003 	add	r3, r2, r3
     d80:	e51b200c 	ldr	r2, [fp, #-12]
     d84:	e1520003 	cmp	r2, r3
     d88:	1a00000b 	bne	dbc <free+0x150>
     d8c:	e51b3008 	ldr	r3, [fp, #-8]
     d90:	e5932004 	ldr	r2, [r3, #4]
     d94:	e51b300c 	ldr	r3, [fp, #-12]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b3008 	ldr	r3, [fp, #-8]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5932000 	ldr	r2, [r3]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5832000 	str	r2, [r3]
     db8:	ea000002 	b	dc8 <free+0x15c>
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e5832000 	str	r2, [r3]
     dc8:	e59f2014 	ldr	r2, [pc, #20]	@ de4 <free+0x178>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5823000 	str	r3, [r2]
     dd4:	e1a00000 	nop			@ (mov r0, r0)
     dd8:	e28bd000 	add	sp, fp, #0
     ddc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     de0:	e12fff1e 	bx	lr
     de4:	00001174 	.word	0x00001174

00000de8 <morecore>:
     de8:	e92d4800 	push	{fp, lr}
     dec:	e28db004 	add	fp, sp, #4
     df0:	e24dd010 	sub	sp, sp, #16
     df4:	e50b0010 	str	r0, [fp, #-16]
     df8:	e51b3010 	ldr	r3, [fp, #-16]
     dfc:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e00:	2a000001 	bcs	e0c <morecore+0x24>
     e04:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e08:	e50b3010 	str	r3, [fp, #-16]
     e0c:	e51b3010 	ldr	r3, [fp, #-16]
     e10:	e1a03183 	lsl	r3, r3, #3
     e14:	e1a00003 	mov	r0, r3
     e18:	ebfffe8e 	bl	858 <sbrk>
     e1c:	e50b0008 	str	r0, [fp, #-8]
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e3730001 	cmn	r3, #1
     e28:	1a000001 	bne	e34 <morecore+0x4c>
     e2c:	e3a03000 	mov	r3, #0
     e30:	ea00000a 	b	e60 <morecore+0x78>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e50b300c 	str	r3, [fp, #-12]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e51b2010 	ldr	r2, [fp, #-16]
     e44:	e5832004 	str	r2, [r3, #4]
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e2833008 	add	r3, r3, #8
     e50:	e1a00003 	mov	r0, r3
     e54:	ebffff84 	bl	c6c <free>
     e58:	e59f300c 	ldr	r3, [pc, #12]	@ e6c <morecore+0x84>
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e1a00003 	mov	r0, r3
     e64:	e24bd004 	sub	sp, fp, #4
     e68:	e8bd8800 	pop	{fp, pc}
     e6c:	00001174 	.word	0x00001174

00000e70 <malloc>:
     e70:	e92d4800 	push	{fp, lr}
     e74:	e28db004 	add	fp, sp, #4
     e78:	e24dd018 	sub	sp, sp, #24
     e7c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e84:	e2833007 	add	r3, r3, #7
     e88:	e1a031a3 	lsr	r3, r3, #3
     e8c:	e2833001 	add	r3, r3, #1
     e90:	e50b3010 	str	r3, [fp, #-16]
     e94:	e59f3134 	ldr	r3, [pc, #308]	@ fd0 <malloc+0x160>
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e3530000 	cmp	r3, #0
     ea8:	1a00000b 	bne	edc <malloc+0x6c>
     eac:	e59f3120 	ldr	r3, [pc, #288]	@ fd4 <malloc+0x164>
     eb0:	e50b300c 	str	r3, [fp, #-12]
     eb4:	e59f2114 	ldr	r2, [pc, #276]	@ fd0 <malloc+0x160>
     eb8:	e51b300c 	ldr	r3, [fp, #-12]
     ebc:	e5823000 	str	r3, [r2]
     ec0:	e59f3108 	ldr	r3, [pc, #264]	@ fd0 <malloc+0x160>
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e59f2104 	ldr	r2, [pc, #260]	@ fd4 <malloc+0x164>
     ecc:	e5823000 	str	r3, [r2]
     ed0:	e59f30fc 	ldr	r3, [pc, #252]	@ fd4 <malloc+0x164>
     ed4:	e3a02000 	mov	r2, #0
     ed8:	e5832004 	str	r2, [r3, #4]
     edc:	e51b300c 	ldr	r3, [fp, #-12]
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5933004 	ldr	r3, [r3, #4]
     ef0:	e51b2010 	ldr	r2, [fp, #-16]
     ef4:	e1520003 	cmp	r2, r3
     ef8:	8a00001e 	bhi	f78 <malloc+0x108>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933004 	ldr	r3, [r3, #4]
     f04:	e51b2010 	ldr	r2, [fp, #-16]
     f08:	e1520003 	cmp	r2, r3
     f0c:	1a000004 	bne	f24 <malloc+0xb4>
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e5932000 	ldr	r2, [r3]
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5832000 	str	r2, [r3]
     f20:	ea00000e 	b	f60 <malloc+0xf0>
     f24:	e51b3008 	ldr	r3, [fp, #-8]
     f28:	e5932004 	ldr	r2, [r3, #4]
     f2c:	e51b3010 	ldr	r3, [fp, #-16]
     f30:	e0422003 	sub	r2, r2, r3
     f34:	e51b3008 	ldr	r3, [fp, #-8]
     f38:	e5832004 	str	r2, [r3, #4]
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e1a03183 	lsl	r3, r3, #3
     f48:	e51b2008 	ldr	r2, [fp, #-8]
     f4c:	e0823003 	add	r3, r2, r3
     f50:	e50b3008 	str	r3, [fp, #-8]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e51b2010 	ldr	r2, [fp, #-16]
     f5c:	e5832004 	str	r2, [r3, #4]
     f60:	e59f2068 	ldr	r2, [pc, #104]	@ fd0 <malloc+0x160>
     f64:	e51b300c 	ldr	r3, [fp, #-12]
     f68:	e5823000 	str	r3, [r2]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e2833008 	add	r3, r3, #8
     f74:	ea000012 	b	fc4 <malloc+0x154>
     f78:	e59f3050 	ldr	r3, [pc, #80]	@ fd0 <malloc+0x160>
     f7c:	e5933000 	ldr	r3, [r3]
     f80:	e51b2008 	ldr	r2, [fp, #-8]
     f84:	e1520003 	cmp	r2, r3
     f88:	1a000007 	bne	fac <malloc+0x13c>
     f8c:	e51b0010 	ldr	r0, [fp, #-16]
     f90:	ebffff94 	bl	de8 <morecore>
     f94:	e50b0008 	str	r0, [fp, #-8]
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e3530000 	cmp	r3, #0
     fa0:	1a000001 	bne	fac <malloc+0x13c>
     fa4:	e3a03000 	mov	r3, #0
     fa8:	ea000005 	b	fc4 <malloc+0x154>
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e50b300c 	str	r3, [fp, #-12]
     fb4:	e51b3008 	ldr	r3, [fp, #-8]
     fb8:	e5933000 	ldr	r3, [r3]
     fbc:	e50b3008 	str	r3, [fp, #-8]
     fc0:	eaffffc8 	b	ee8 <malloc+0x78>
     fc4:	e1a00003 	mov	r0, r3
     fc8:	e24bd004 	sub	sp, fp, #4
     fcc:	e8bd8800 	pop	{fp, pc}
     fd0:	00001174 	.word	0x00001174
     fd4:	0000116c 	.word	0x0000116c

00000fd8 <__udivsi3>:
     fd8:	e2512001 	subs	r2, r1, #1
     fdc:	012fff1e 	bxeq	lr
     fe0:	3a000036 	bcc	10c0 <__udivsi3+0xe8>
     fe4:	e1500001 	cmp	r0, r1
     fe8:	9a000022 	bls	1078 <__udivsi3+0xa0>
     fec:	e1110002 	tst	r1, r2
     ff0:	0a000023 	beq	1084 <__udivsi3+0xac>
     ff4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     ff8:	01a01181 	lsleq	r1, r1, #3
     ffc:	03a03008 	moveq	r3, #8
    1000:	13a03001 	movne	r3, #1
    1004:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1008:	31510000 	cmpcc	r1, r0
    100c:	31a01201 	lslcc	r1, r1, #4
    1010:	31a03203 	lslcc	r3, r3, #4
    1014:	3afffffa 	bcc	1004 <__udivsi3+0x2c>
    1018:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    101c:	31510000 	cmpcc	r1, r0
    1020:	31a01081 	lslcc	r1, r1, #1
    1024:	31a03083 	lslcc	r3, r3, #1
    1028:	3afffffa 	bcc	1018 <__udivsi3+0x40>
    102c:	e3a02000 	mov	r2, #0
    1030:	e1500001 	cmp	r0, r1
    1034:	20400001 	subcs	r0, r0, r1
    1038:	21822003 	orrcs	r2, r2, r3
    103c:	e15000a1 	cmp	r0, r1, lsr #1
    1040:	204000a1 	subcs	r0, r0, r1, lsr #1
    1044:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1048:	e1500121 	cmp	r0, r1, lsr #2
    104c:	20400121 	subcs	r0, r0, r1, lsr #2
    1050:	21822123 	orrcs	r2, r2, r3, lsr #2
    1054:	e15001a1 	cmp	r0, r1, lsr #3
    1058:	204001a1 	subcs	r0, r0, r1, lsr #3
    105c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1060:	e3500000 	cmp	r0, #0
    1064:	11b03223 	lsrsne	r3, r3, #4
    1068:	11a01221 	lsrne	r1, r1, #4
    106c:	1affffef 	bne	1030 <__udivsi3+0x58>
    1070:	e1a00002 	mov	r0, r2
    1074:	e12fff1e 	bx	lr
    1078:	03a00001 	moveq	r0, #1
    107c:	13a00000 	movne	r0, #0
    1080:	e12fff1e 	bx	lr
    1084:	e3510801 	cmp	r1, #65536	@ 0x10000
    1088:	21a01821 	lsrcs	r1, r1, #16
    108c:	23a02010 	movcs	r2, #16
    1090:	33a02000 	movcc	r2, #0
    1094:	e3510c01 	cmp	r1, #256	@ 0x100
    1098:	21a01421 	lsrcs	r1, r1, #8
    109c:	22822008 	addcs	r2, r2, #8
    10a0:	e3510010 	cmp	r1, #16
    10a4:	21a01221 	lsrcs	r1, r1, #4
    10a8:	22822004 	addcs	r2, r2, #4
    10ac:	e3510004 	cmp	r1, #4
    10b0:	82822003 	addhi	r2, r2, #3
    10b4:	908220a1 	addls	r2, r2, r1, lsr #1
    10b8:	e1a00230 	lsr	r0, r0, r2
    10bc:	e12fff1e 	bx	lr
    10c0:	e3500000 	cmp	r0, #0
    10c4:	13e00000 	mvnne	r0, #0
    10c8:	ea000007 	b	10ec <__aeabi_idiv0>

000010cc <__aeabi_uidivmod>:
    10cc:	e3510000 	cmp	r1, #0
    10d0:	0afffffa 	beq	10c0 <__udivsi3+0xe8>
    10d4:	e92d4003 	push	{r0, r1, lr}
    10d8:	ebffffbe 	bl	fd8 <__udivsi3>
    10dc:	e8bd4006 	pop	{r1, r2, lr}
    10e0:	e0030092 	mul	r3, r2, r0
    10e4:	e0411003 	sub	r1, r1, r3
    10e8:	e12fff1e 	bx	lr

000010ec <__aeabi_idiv0>:
    10ec:	e12fff1e 	bx	lr
