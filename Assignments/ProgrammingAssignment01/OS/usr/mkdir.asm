
_mkdir:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530001 	cmp	r3, #1
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f1084 	ldr	r1, [pc, #132]	@ ac <main+0xac>
      24:	e3a00002 	mov	r0, #2
      28:	eb000270 	bl	9f0 <printf>
      2c:	eb00015f 	bl	5b0 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea000016 	b	98 <main+0x98>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb0001ca 	bl	784 <mkdir>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	aa000009 	bge	8c <main+0x8c>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e1a03103 	lsl	r3, r3, #2
      6c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      70:	e0823003 	add	r3, r2, r3
      74:	e5933000 	ldr	r3, [r3]
      78:	e1a02003 	mov	r2, r3
      7c:	e59f102c 	ldr	r1, [pc, #44]	@ b0 <main+0xb0>
      80:	e3a00002 	mov	r0, #2
      84:	eb000259 	bl	9f0 <printf>
      88:	ea000006 	b	a8 <main+0xa8>
      8c:	e51b3008 	ldr	r3, [fp, #-8]
      90:	e2833001 	add	r3, r3, #1
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e51b2008 	ldr	r2, [fp, #-8]
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e1520003 	cmp	r2, r3
      a4:	baffffe4 	blt	3c <main+0x3c>
      a8:	eb000140 	bl	5b0 <exit>
      ac:	000010ac 	.word	0x000010ac
      b0:	000010c4 	.word	0x000010c4

000000b4 <strcpy>:
      b4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      b8:	e28db000 	add	fp, sp, #0
      bc:	e24dd014 	sub	sp, sp, #20
      c0:	e50b0010 	str	r0, [fp, #-16]
      c4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      c8:	e51b3010 	ldr	r3, [fp, #-16]
      cc:	e50b3008 	str	r3, [fp, #-8]
      d0:	e1a00000 	nop			@ (mov r0, r0)
      d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      d8:	e2823001 	add	r3, r2, #1
      dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      e0:	e51b3010 	ldr	r3, [fp, #-16]
      e4:	e2831001 	add	r1, r3, #1
      e8:	e50b1010 	str	r1, [fp, #-16]
      ec:	e5d22000 	ldrb	r2, [r2]
      f0:	e5c32000 	strb	r2, [r3]
      f4:	e5d33000 	ldrb	r3, [r3]
      f8:	e3530000 	cmp	r3, #0
      fc:	1afffff4 	bne	d4 <strcpy+0x20>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e1a00003 	mov	r0, r3
     108:	e28bd000 	add	sp, fp, #0
     10c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     110:	e12fff1e 	bx	lr

00000114 <strcmp>:
     114:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     118:	e28db000 	add	fp, sp, #0
     11c:	e24dd00c 	sub	sp, sp, #12
     120:	e50b0008 	str	r0, [fp, #-8]
     124:	e50b100c 	str	r1, [fp, #-12]
     128:	ea000005 	b	144 <strcmp+0x30>
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e2833001 	add	r3, r3, #1
     134:	e50b3008 	str	r3, [fp, #-8]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e2833001 	add	r3, r3, #1
     140:	e50b300c 	str	r3, [fp, #-12]
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e5d33000 	ldrb	r3, [r3]
     14c:	e3530000 	cmp	r3, #0
     150:	0a000005 	beq	16c <strcmp+0x58>
     154:	e51b3008 	ldr	r3, [fp, #-8]
     158:	e5d32000 	ldrb	r2, [r3]
     15c:	e51b300c 	ldr	r3, [fp, #-12]
     160:	e5d33000 	ldrb	r3, [r3]
     164:	e1520003 	cmp	r2, r3
     168:	0affffef 	beq	12c <strcmp+0x18>
     16c:	e51b3008 	ldr	r3, [fp, #-8]
     170:	e5d33000 	ldrb	r3, [r3]
     174:	e1a02003 	mov	r2, r3
     178:	e51b300c 	ldr	r3, [fp, #-12]
     17c:	e5d33000 	ldrb	r3, [r3]
     180:	e0423003 	sub	r3, r2, r3
     184:	e1a00003 	mov	r0, r3
     188:	e28bd000 	add	sp, fp, #0
     18c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     190:	e12fff1e 	bx	lr

00000194 <strlen>:
     194:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     198:	e28db000 	add	fp, sp, #0
     19c:	e24dd014 	sub	sp, sp, #20
     1a0:	e50b0010 	str	r0, [fp, #-16]
     1a4:	e3a03000 	mov	r3, #0
     1a8:	e50b3008 	str	r3, [fp, #-8]
     1ac:	ea000002 	b	1bc <strlen+0x28>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e51b2010 	ldr	r2, [fp, #-16]
     1c4:	e0823003 	add	r3, r2, r3
     1c8:	e5d33000 	ldrb	r3, [r3]
     1cc:	e3530000 	cmp	r3, #0
     1d0:	1afffff6 	bne	1b0 <strlen+0x1c>
     1d4:	e51b3008 	ldr	r3, [fp, #-8]
     1d8:	e1a00003 	mov	r0, r3
     1dc:	e28bd000 	add	sp, fp, #0
     1e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1e4:	e12fff1e 	bx	lr

000001e8 <memset>:
     1e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1ec:	e28db000 	add	fp, sp, #0
     1f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     200:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     204:	e50b3008 	str	r3, [fp, #-8]
     208:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     20c:	e54b300d 	strb	r3, [fp, #-13]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e1a03002 	mov	r3, r2
     218:	e1a03403 	lsl	r3, r3, #8
     21c:	e0833002 	add	r3, r3, r2
     220:	e1a03803 	lsl	r3, r3, #16
     224:	e1a02003 	mov	r2, r3
     228:	e55b300d 	ldrb	r3, [fp, #-13]
     22c:	e1a03403 	lsl	r3, r3, #8
     230:	e1822003 	orr	r2, r2, r3
     234:	e55b300d 	ldrb	r3, [fp, #-13]
     238:	e1823003 	orr	r3, r2, r3
     23c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     240:	ea000008 	b	268 <memset+0x80>
     244:	e51b3008 	ldr	r3, [fp, #-8]
     248:	e55b200d 	ldrb	r2, [fp, #-13]
     24c:	e5c32000 	strb	r2, [r3]
     250:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     254:	e2433001 	sub	r3, r3, #1
     258:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e51b3008 	ldr	r3, [fp, #-8]
     260:	e2833001 	add	r3, r3, #1
     264:	e50b3008 	str	r3, [fp, #-8]
     268:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     26c:	e3530000 	cmp	r3, #0
     270:	0a000003 	beq	284 <memset+0x9c>
     274:	e51b3008 	ldr	r3, [fp, #-8]
     278:	e2033003 	and	r3, r3, #3
     27c:	e3530000 	cmp	r3, #0
     280:	1affffef 	bne	244 <memset+0x5c>
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e50b300c 	str	r3, [fp, #-12]
     28c:	ea000008 	b	2b4 <memset+0xcc>
     290:	e51b300c 	ldr	r3, [fp, #-12]
     294:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     298:	e5832000 	str	r2, [r3]
     29c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a0:	e2433004 	sub	r3, r3, #4
     2a4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2a8:	e51b300c 	ldr	r3, [fp, #-12]
     2ac:	e2833004 	add	r3, r3, #4
     2b0:	e50b300c 	str	r3, [fp, #-12]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e3530003 	cmp	r3, #3
     2bc:	8afffff3 	bhi	290 <memset+0xa8>
     2c0:	e51b300c 	ldr	r3, [fp, #-12]
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	ea000008 	b	2f0 <memset+0x108>
     2cc:	e51b3008 	ldr	r3, [fp, #-8]
     2d0:	e55b200d 	ldrb	r2, [fp, #-13]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2dc:	e2433001 	sub	r3, r3, #1
     2e0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e2833001 	add	r3, r3, #1
     2ec:	e50b3008 	str	r3, [fp, #-8]
     2f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f4:	e3530000 	cmp	r3, #0
     2f8:	1afffff3 	bne	2cc <memset+0xe4>
     2fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     300:	e1a00003 	mov	r0, r3
     304:	e28bd000 	add	sp, fp, #0
     308:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     30c:	e12fff1e 	bx	lr

00000310 <strchr>:
     310:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     314:	e28db000 	add	fp, sp, #0
     318:	e24dd00c 	sub	sp, sp, #12
     31c:	e50b0008 	str	r0, [fp, #-8]
     320:	e1a03001 	mov	r3, r1
     324:	e54b3009 	strb	r3, [fp, #-9]
     328:	ea000009 	b	354 <strchr+0x44>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e5d33000 	ldrb	r3, [r3]
     334:	e55b2009 	ldrb	r2, [fp, #-9]
     338:	e1520003 	cmp	r2, r3
     33c:	1a000001 	bne	348 <strchr+0x38>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	ea000007 	b	368 <strchr+0x58>
     348:	e51b3008 	ldr	r3, [fp, #-8]
     34c:	e2833001 	add	r3, r3, #1
     350:	e50b3008 	str	r3, [fp, #-8]
     354:	e51b3008 	ldr	r3, [fp, #-8]
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff1 	bne	32c <strchr+0x1c>
     364:	e3a03000 	mov	r3, #0
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <gets>:
     378:	e92d4800 	push	{fp, lr}
     37c:	e28db004 	add	fp, sp, #4
     380:	e24dd018 	sub	sp, sp, #24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e3a03000 	mov	r3, #0
     390:	e50b3008 	str	r3, [fp, #-8]
     394:	ea000016 	b	3f4 <gets+0x7c>
     398:	e24b300d 	sub	r3, fp, #13
     39c:	e3a02001 	mov	r2, #1
     3a0:	e1a01003 	mov	r1, r3
     3a4:	e3a00000 	mov	r0, #0
     3a8:	eb00009b 	bl	61c <read>
     3ac:	e50b000c 	str	r0, [fp, #-12]
     3b0:	e51b300c 	ldr	r3, [fp, #-12]
     3b4:	e3530000 	cmp	r3, #0
     3b8:	da000013 	ble	40c <gets+0x94>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2832001 	add	r2, r3, #1
     3c4:	e50b2008 	str	r2, [fp, #-8]
     3c8:	e1a02003 	mov	r2, r3
     3cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3d0:	e0833002 	add	r3, r3, r2
     3d4:	e55b200d 	ldrb	r2, [fp, #-13]
     3d8:	e5c32000 	strb	r2, [r3]
     3dc:	e55b300d 	ldrb	r3, [fp, #-13]
     3e0:	e353000a 	cmp	r3, #10
     3e4:	0a000009 	beq	410 <gets+0x98>
     3e8:	e55b300d 	ldrb	r3, [fp, #-13]
     3ec:	e353000d 	cmp	r3, #13
     3f0:	0a000006 	beq	410 <gets+0x98>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e2833001 	add	r3, r3, #1
     3fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     400:	e1520003 	cmp	r2, r3
     404:	caffffe3 	bgt	398 <gets+0x20>
     408:	ea000000 	b	410 <gets+0x98>
     40c:	e1a00000 	nop			@ (mov r0, r0)
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     418:	e0823003 	add	r3, r2, r3
     41c:	e3a02000 	mov	r2, #0
     420:	e5c32000 	strb	r2, [r3]
     424:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     428:	e1a00003 	mov	r0, r3
     42c:	e24bd004 	sub	sp, fp, #4
     430:	e8bd8800 	pop	{fp, pc}

00000434 <stat>:
     434:	e92d4800 	push	{fp, lr}
     438:	e28db004 	add	fp, sp, #4
     43c:	e24dd010 	sub	sp, sp, #16
     440:	e50b0010 	str	r0, [fp, #-16]
     444:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     448:	e3a01000 	mov	r1, #0
     44c:	e51b0010 	ldr	r0, [fp, #-16]
     450:	eb00009e 	bl	6d0 <open>
     454:	e50b0008 	str	r0, [fp, #-8]
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e3530000 	cmp	r3, #0
     460:	aa000001 	bge	46c <stat+0x38>
     464:	e3e03000 	mvn	r3, #0
     468:	ea000006 	b	488 <stat+0x54>
     46c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     470:	e51b0008 	ldr	r0, [fp, #-8]
     474:	eb0000b0 	bl	73c <fstat>
     478:	e50b000c 	str	r0, [fp, #-12]
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb000077 	bl	664 <close>
     484:	e51b300c 	ldr	r3, [fp, #-12]
     488:	e1a00003 	mov	r0, r3
     48c:	e24bd004 	sub	sp, fp, #4
     490:	e8bd8800 	pop	{fp, pc}

00000494 <atoi>:
     494:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     498:	e28db000 	add	fp, sp, #0
     49c:	e24dd014 	sub	sp, sp, #20
     4a0:	e50b0010 	str	r0, [fp, #-16]
     4a4:	e3a03000 	mov	r3, #0
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea00000c 	b	4e4 <atoi+0x50>
     4b0:	e51b2008 	ldr	r2, [fp, #-8]
     4b4:	e1a03002 	mov	r3, r2
     4b8:	e1a03103 	lsl	r3, r3, #2
     4bc:	e0833002 	add	r3, r3, r2
     4c0:	e1a03083 	lsl	r3, r3, #1
     4c4:	e1a01003 	mov	r1, r3
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e2832001 	add	r2, r3, #1
     4d0:	e50b2010 	str	r2, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e0813003 	add	r3, r1, r3
     4dc:	e2433030 	sub	r3, r3, #48	@ 0x30
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3010 	ldr	r3, [fp, #-16]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e353002f 	cmp	r3, #47	@ 0x2f
     4f0:	9a000003 	bls	504 <atoi+0x70>
     4f4:	e51b3010 	ldr	r3, [fp, #-16]
     4f8:	e5d33000 	ldrb	r3, [r3]
     4fc:	e3530039 	cmp	r3, #57	@ 0x39
     500:	9affffea 	bls	4b0 <atoi+0x1c>
     504:	e51b3008 	ldr	r3, [fp, #-8]
     508:	e1a00003 	mov	r0, r3
     50c:	e28bd000 	add	sp, fp, #0
     510:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     514:	e12fff1e 	bx	lr

00000518 <memmove>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd01c 	sub	sp, sp, #28
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     52c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     530:	e51b3010 	ldr	r3, [fp, #-16]
     534:	e50b3008 	str	r3, [fp, #-8]
     538:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     53c:	e50b300c 	str	r3, [fp, #-12]
     540:	ea000007 	b	564 <memmove+0x4c>
     544:	e51b200c 	ldr	r2, [fp, #-12]
     548:	e2823001 	add	r3, r2, #1
     54c:	e50b300c 	str	r3, [fp, #-12]
     550:	e51b3008 	ldr	r3, [fp, #-8]
     554:	e2831001 	add	r1, r3, #1
     558:	e50b1008 	str	r1, [fp, #-8]
     55c:	e5d22000 	ldrb	r2, [r2]
     560:	e5c32000 	strb	r2, [r3]
     564:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     568:	e2432001 	sub	r2, r3, #1
     56c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     570:	e3530000 	cmp	r3, #0
     574:	cafffff2 	bgt	544 <memmove+0x2c>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e1a00003 	mov	r0, r3
     580:	e28bd000 	add	sp, fp, #0
     584:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <fork>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00001 	mov	r0, #1
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <exit>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00002 	mov	r0, #2
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <wait>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00003 	mov	r0, #3
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <pipe>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00004 	mov	r0, #4
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <read>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00005 	mov	r0, #5
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <write>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00010 	mov	r0, #16
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <close>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00015 	mov	r0, #21
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <kill>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00006 	mov	r0, #6
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <exec>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a00007 	mov	r0, #7
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <open>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a0000f 	mov	r0, #15
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <mknod>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00011 	mov	r0, #17
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <unlink>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00012 	mov	r0, #18
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <fstat>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00008 	mov	r0, #8
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <link>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00013 	mov	r0, #19
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <mkdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00014 	mov	r0, #20
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <chdir>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a00009 	mov	r0, #9
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <dup>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000a 	mov	r0, #10
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <getpid>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000b 	mov	r0, #11
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sbrk>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000c 	mov	r0, #12
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <sleep>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000d 	mov	r0, #13
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <uptime>:
     85c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     860:	e1a04003 	mov	r4, r3
     864:	e1a03002 	mov	r3, r2
     868:	e1a02001 	mov	r2, r1
     86c:	e1a01000 	mov	r1, r0
     870:	e3a0000e 	mov	r0, #14
     874:	ef000000 	svc	0x00000000
     878:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     87c:	e12fff1e 	bx	lr

00000880 <putc>:
     880:	e92d4800 	push	{fp, lr}
     884:	e28db004 	add	fp, sp, #4
     888:	e24dd008 	sub	sp, sp, #8
     88c:	e50b0008 	str	r0, [fp, #-8]
     890:	e1a03001 	mov	r3, r1
     894:	e54b3009 	strb	r3, [fp, #-9]
     898:	e24b3009 	sub	r3, fp, #9
     89c:	e3a02001 	mov	r2, #1
     8a0:	e1a01003 	mov	r1, r3
     8a4:	e51b0008 	ldr	r0, [fp, #-8]
     8a8:	ebffff64 	bl	640 <write>
     8ac:	e1a00000 	nop			@ (mov r0, r0)
     8b0:	e24bd004 	sub	sp, fp, #4
     8b4:	e8bd8800 	pop	{fp, pc}

000008b8 <printint>:
     8b8:	e92d4800 	push	{fp, lr}
     8bc:	e28db004 	add	fp, sp, #4
     8c0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8c4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8c8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8cc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8d0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8d4:	e3a03000 	mov	r3, #0
     8d8:	e50b300c 	str	r3, [fp, #-12]
     8dc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8e0:	e3530000 	cmp	r3, #0
     8e4:	0a000008 	beq	90c <printint+0x54>
     8e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8ec:	e3530000 	cmp	r3, #0
     8f0:	aa000005 	bge	90c <printint+0x54>
     8f4:	e3a03001 	mov	r3, #1
     8f8:	e50b300c 	str	r3, [fp, #-12]
     8fc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     900:	e2633000 	rsb	r3, r3, #0
     904:	e50b3010 	str	r3, [fp, #-16]
     908:	ea000001 	b	914 <printint+0x5c>
     90c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     910:	e50b3010 	str	r3, [fp, #-16]
     914:	e3a03000 	mov	r3, #0
     918:	e50b3008 	str	r3, [fp, #-8]
     91c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     920:	e51b3010 	ldr	r3, [fp, #-16]
     924:	e1a01002 	mov	r1, r2
     928:	e1a00003 	mov	r0, r3
     92c:	eb0001d5 	bl	1088 <__aeabi_uidivmod>
     930:	e1a03001 	mov	r3, r1
     934:	e1a01003 	mov	r1, r3
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e2832001 	add	r2, r3, #1
     940:	e50b2008 	str	r2, [fp, #-8]
     944:	e59f20a0 	ldr	r2, [pc, #160]	@ 9ec <printint+0x134>
     948:	e7d22001 	ldrb	r2, [r2, r1]
     94c:	e2433004 	sub	r3, r3, #4
     950:	e083300b 	add	r3, r3, fp
     954:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     958:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     95c:	e1a01003 	mov	r1, r3
     960:	e51b0010 	ldr	r0, [fp, #-16]
     964:	eb00018a 	bl	f94 <__udivsi3>
     968:	e1a03000 	mov	r3, r0
     96c:	e50b3010 	str	r3, [fp, #-16]
     970:	e51b3010 	ldr	r3, [fp, #-16]
     974:	e3530000 	cmp	r3, #0
     978:	1affffe7 	bne	91c <printint+0x64>
     97c:	e51b300c 	ldr	r3, [fp, #-12]
     980:	e3530000 	cmp	r3, #0
     984:	0a00000e 	beq	9c4 <printint+0x10c>
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e2832001 	add	r2, r3, #1
     990:	e50b2008 	str	r2, [fp, #-8]
     994:	e2433004 	sub	r3, r3, #4
     998:	e083300b 	add	r3, r3, fp
     99c:	e3a0202d 	mov	r2, #45	@ 0x2d
     9a0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9a4:	ea000006 	b	9c4 <printint+0x10c>
     9a8:	e24b2020 	sub	r2, fp, #32
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e0823003 	add	r3, r2, r3
     9b4:	e5d33000 	ldrb	r3, [r3]
     9b8:	e1a01003 	mov	r1, r3
     9bc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9c0:	ebffffae 	bl	880 <putc>
     9c4:	e51b3008 	ldr	r3, [fp, #-8]
     9c8:	e2433001 	sub	r3, r3, #1
     9cc:	e50b3008 	str	r3, [fp, #-8]
     9d0:	e51b3008 	ldr	r3, [fp, #-8]
     9d4:	e3530000 	cmp	r3, #0
     9d8:	aafffff2 	bge	9a8 <printint+0xf0>
     9dc:	e1a00000 	nop			@ (mov r0, r0)
     9e0:	e1a00000 	nop			@ (mov r0, r0)
     9e4:	e24bd004 	sub	sp, fp, #4
     9e8:	e8bd8800 	pop	{fp, pc}
     9ec:	000010e8 	.word	0x000010e8

000009f0 <printf>:
     9f0:	e92d000e 	push	{r1, r2, r3}
     9f4:	e92d4800 	push	{fp, lr}
     9f8:	e28db004 	add	fp, sp, #4
     9fc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a00:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a04:	e3a03000 	mov	r3, #0
     a08:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a0c:	e28b3008 	add	r3, fp, #8
     a10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a14:	e3a03000 	mov	r3, #0
     a18:	e50b3010 	str	r3, [fp, #-16]
     a1c:	ea000074 	b	bf4 <printf+0x204>
     a20:	e59b2004 	ldr	r2, [fp, #4]
     a24:	e51b3010 	ldr	r3, [fp, #-16]
     a28:	e0823003 	add	r3, r2, r3
     a2c:	e5d33000 	ldrb	r3, [r3]
     a30:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a38:	e3530000 	cmp	r3, #0
     a3c:	1a00000b 	bne	a70 <printf+0x80>
     a40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a44:	e3530025 	cmp	r3, #37	@ 0x25
     a48:	1a000002 	bne	a58 <printf+0x68>
     a4c:	e3a03025 	mov	r3, #37	@ 0x25
     a50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a54:	ea000063 	b	be8 <printf+0x1f8>
     a58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e6ef3073 	uxtb	r3, r3
     a60:	e1a01003 	mov	r1, r3
     a64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a68:	ebffff84 	bl	880 <putc>
     a6c:	ea00005d 	b	be8 <printf+0x1f8>
     a70:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a74:	e3530025 	cmp	r3, #37	@ 0x25
     a78:	1a00005a 	bne	be8 <printf+0x1f8>
     a7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a80:	e3530064 	cmp	r3, #100	@ 0x64
     a84:	1a00000a 	bne	ab4 <printf+0xc4>
     a88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a8c:	e5933000 	ldr	r3, [r3]
     a90:	e1a01003 	mov	r1, r3
     a94:	e3a03001 	mov	r3, #1
     a98:	e3a0200a 	mov	r2, #10
     a9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aa0:	ebffff84 	bl	8b8 <printint>
     aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	e2833004 	add	r3, r3, #4
     aac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	ea00004a 	b	be0 <printf+0x1f0>
     ab4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab8:	e3530078 	cmp	r3, #120	@ 0x78
     abc:	0a000002 	beq	acc <printf+0xdc>
     ac0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac4:	e3530070 	cmp	r3, #112	@ 0x70
     ac8:	1a00000a 	bne	af8 <printf+0x108>
     acc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	e5933000 	ldr	r3, [r3]
     ad4:	e1a01003 	mov	r1, r3
     ad8:	e3a03000 	mov	r3, #0
     adc:	e3a02010 	mov	r2, #16
     ae0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ae4:	ebffff73 	bl	8b8 <printint>
     ae8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aec:	e2833004 	add	r3, r3, #4
     af0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af4:	ea000039 	b	be0 <printf+0x1f0>
     af8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     afc:	e3530073 	cmp	r3, #115	@ 0x73
     b00:	1a000018 	bne	b68 <printf+0x178>
     b04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b08:	e5933000 	ldr	r3, [r3]
     b0c:	e50b300c 	str	r3, [fp, #-12]
     b10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e2833004 	add	r3, r3, #4
     b18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e51b300c 	ldr	r3, [fp, #-12]
     b20:	e3530000 	cmp	r3, #0
     b24:	1a00000a 	bne	b54 <printf+0x164>
     b28:	e59f30f4 	ldr	r3, [pc, #244]	@ c24 <printf+0x234>
     b2c:	e50b300c 	str	r3, [fp, #-12]
     b30:	ea000007 	b	b54 <printf+0x164>
     b34:	e51b300c 	ldr	r3, [fp, #-12]
     b38:	e5d33000 	ldrb	r3, [r3]
     b3c:	e1a01003 	mov	r1, r3
     b40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b44:	ebffff4d 	bl	880 <putc>
     b48:	e51b300c 	ldr	r3, [fp, #-12]
     b4c:	e2833001 	add	r3, r3, #1
     b50:	e50b300c 	str	r3, [fp, #-12]
     b54:	e51b300c 	ldr	r3, [fp, #-12]
     b58:	e5d33000 	ldrb	r3, [r3]
     b5c:	e3530000 	cmp	r3, #0
     b60:	1afffff3 	bne	b34 <printf+0x144>
     b64:	ea00001d 	b	be0 <printf+0x1f0>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530063 	cmp	r3, #99	@ 0x63
     b70:	1a000009 	bne	b9c <printf+0x1ac>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e6ef3073 	uxtb	r3, r3
     b80:	e1a01003 	mov	r1, r3
     b84:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b88:	ebffff3c 	bl	880 <putc>
     b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b90:	e2833004 	add	r3, r3, #4
     b94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b98:	ea000010 	b	be0 <printf+0x1f0>
     b9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba0:	e3530025 	cmp	r3, #37	@ 0x25
     ba4:	1a000005 	bne	bc0 <printf+0x1d0>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e6ef3073 	uxtb	r3, r3
     bb0:	e1a01003 	mov	r1, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	ebffff30 	bl	880 <putc>
     bbc:	ea000007 	b	be0 <printf+0x1f0>
     bc0:	e3a01025 	mov	r1, #37	@ 0x25
     bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc8:	ebffff2c 	bl	880 <putc>
     bcc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd0:	e6ef3073 	uxtb	r3, r3
     bd4:	e1a01003 	mov	r1, r3
     bd8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bdc:	ebffff27 	bl	880 <putc>
     be0:	e3a03000 	mov	r3, #0
     be4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be8:	e51b3010 	ldr	r3, [fp, #-16]
     bec:	e2833001 	add	r3, r3, #1
     bf0:	e50b3010 	str	r3, [fp, #-16]
     bf4:	e59b2004 	ldr	r2, [fp, #4]
     bf8:	e51b3010 	ldr	r3, [fp, #-16]
     bfc:	e0823003 	add	r3, r2, r3
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e3530000 	cmp	r3, #0
     c08:	1affff84 	bne	a20 <printf+0x30>
     c0c:	e1a00000 	nop			@ (mov r0, r0)
     c10:	e1a00000 	nop			@ (mov r0, r0)
     c14:	e24bd004 	sub	sp, fp, #4
     c18:	e8bd4800 	pop	{fp, lr}
     c1c:	e28dd00c 	add	sp, sp, #12
     c20:	e12fff1e 	bx	lr
     c24:	000010e0 	.word	0x000010e0

00000c28 <free>:
     c28:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c2c:	e28db000 	add	fp, sp, #0
     c30:	e24dd014 	sub	sp, sp, #20
     c34:	e50b0010 	str	r0, [fp, #-16]
     c38:	e51b3010 	ldr	r3, [fp, #-16]
     c3c:	e2433008 	sub	r3, r3, #8
     c40:	e50b300c 	str	r3, [fp, #-12]
     c44:	e59f3154 	ldr	r3, [pc, #340]	@ da0 <free+0x178>
     c48:	e5933000 	ldr	r3, [r3]
     c4c:	e50b3008 	str	r3, [fp, #-8]
     c50:	ea000010 	b	c98 <free+0x70>
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e51b2008 	ldr	r2, [fp, #-8]
     c60:	e1520003 	cmp	r2, r3
     c64:	3a000008 	bcc	c8c <free+0x64>
     c68:	e51b200c 	ldr	r2, [fp, #-12]
     c6c:	e51b3008 	ldr	r3, [fp, #-8]
     c70:	e1520003 	cmp	r2, r3
     c74:	8a000010 	bhi	cbc <free+0x94>
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e51b200c 	ldr	r2, [fp, #-12]
     c84:	e1520003 	cmp	r2, r3
     c88:	3a00000b 	bcc	cbc <free+0x94>
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e50b3008 	str	r3, [fp, #-8]
     c98:	e51b200c 	ldr	r2, [fp, #-12]
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e1520003 	cmp	r2, r3
     ca4:	9affffea 	bls	c54 <free+0x2c>
     ca8:	e51b3008 	ldr	r3, [fp, #-8]
     cac:	e5933000 	ldr	r3, [r3]
     cb0:	e51b200c 	ldr	r2, [fp, #-12]
     cb4:	e1520003 	cmp	r2, r3
     cb8:	2affffe5 	bcs	c54 <free+0x2c>
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5933004 	ldr	r3, [r3, #4]
     cc4:	e1a03183 	lsl	r3, r3, #3
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e0822003 	add	r2, r2, r3
     cd0:	e51b3008 	ldr	r3, [fp, #-8]
     cd4:	e5933000 	ldr	r3, [r3]
     cd8:	e1520003 	cmp	r2, r3
     cdc:	1a00000d 	bne	d18 <free+0xf0>
     ce0:	e51b300c 	ldr	r3, [fp, #-12]
     ce4:	e5932004 	ldr	r2, [r3, #4]
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5933000 	ldr	r3, [r3]
     cf0:	e5933004 	ldr	r3, [r3, #4]
     cf4:	e0822003 	add	r2, r2, r3
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5832004 	str	r2, [r3, #4]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5933000 	ldr	r3, [r3]
     d08:	e5932000 	ldr	r2, [r3]
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5832000 	str	r2, [r3]
     d14:	ea000003 	b	d28 <free+0x100>
     d18:	e51b3008 	ldr	r3, [fp, #-8]
     d1c:	e5932000 	ldr	r2, [r3]
     d20:	e51b300c 	ldr	r3, [fp, #-12]
     d24:	e5832000 	str	r2, [r3]
     d28:	e51b3008 	ldr	r3, [fp, #-8]
     d2c:	e5933004 	ldr	r3, [r3, #4]
     d30:	e1a03183 	lsl	r3, r3, #3
     d34:	e51b2008 	ldr	r2, [fp, #-8]
     d38:	e0823003 	add	r3, r2, r3
     d3c:	e51b200c 	ldr	r2, [fp, #-12]
     d40:	e1520003 	cmp	r2, r3
     d44:	1a00000b 	bne	d78 <free+0x150>
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5932004 	ldr	r2, [r3, #4]
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5933004 	ldr	r3, [r3, #4]
     d58:	e0822003 	add	r2, r2, r3
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5832004 	str	r2, [r3, #4]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5932000 	ldr	r2, [r3]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5832000 	str	r2, [r3]
     d74:	ea000002 	b	d84 <free+0x15c>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e51b200c 	ldr	r2, [fp, #-12]
     d80:	e5832000 	str	r2, [r3]
     d84:	e59f2014 	ldr	r2, [pc, #20]	@ da0 <free+0x178>
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e5823000 	str	r3, [r2]
     d90:	e1a00000 	nop			@ (mov r0, r0)
     d94:	e28bd000 	add	sp, fp, #0
     d98:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d9c:	e12fff1e 	bx	lr
     da0:	00001104 	.word	0x00001104

00000da4 <morecore>:
     da4:	e92d4800 	push	{fp, lr}
     da8:	e28db004 	add	fp, sp, #4
     dac:	e24dd010 	sub	sp, sp, #16
     db0:	e50b0010 	str	r0, [fp, #-16]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e3530a01 	cmp	r3, #4096	@ 0x1000
     dbc:	2a000001 	bcs	dc8 <morecore+0x24>
     dc0:	e3a03a01 	mov	r3, #4096	@ 0x1000
     dc4:	e50b3010 	str	r3, [fp, #-16]
     dc8:	e51b3010 	ldr	r3, [fp, #-16]
     dcc:	e1a03183 	lsl	r3, r3, #3
     dd0:	e1a00003 	mov	r0, r3
     dd4:	ebfffe8e 	bl	814 <sbrk>
     dd8:	e50b0008 	str	r0, [fp, #-8]
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e3730001 	cmn	r3, #1
     de4:	1a000001 	bne	df0 <morecore+0x4c>
     de8:	e3a03000 	mov	r3, #0
     dec:	ea00000a 	b	e1c <morecore+0x78>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e50b300c 	str	r3, [fp, #-12]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e51b2010 	ldr	r2, [fp, #-16]
     e00:	e5832004 	str	r2, [r3, #4]
     e04:	e51b300c 	ldr	r3, [fp, #-12]
     e08:	e2833008 	add	r3, r3, #8
     e0c:	e1a00003 	mov	r0, r3
     e10:	ebffff84 	bl	c28 <free>
     e14:	e59f300c 	ldr	r3, [pc, #12]	@ e28 <morecore+0x84>
     e18:	e5933000 	ldr	r3, [r3]
     e1c:	e1a00003 	mov	r0, r3
     e20:	e24bd004 	sub	sp, fp, #4
     e24:	e8bd8800 	pop	{fp, pc}
     e28:	00001104 	.word	0x00001104

00000e2c <malloc>:
     e2c:	e92d4800 	push	{fp, lr}
     e30:	e28db004 	add	fp, sp, #4
     e34:	e24dd018 	sub	sp, sp, #24
     e38:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e40:	e2833007 	add	r3, r3, #7
     e44:	e1a031a3 	lsr	r3, r3, #3
     e48:	e2833001 	add	r3, r3, #1
     e4c:	e50b3010 	str	r3, [fp, #-16]
     e50:	e59f3134 	ldr	r3, [pc, #308]	@ f8c <malloc+0x160>
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e3530000 	cmp	r3, #0
     e64:	1a00000b 	bne	e98 <malloc+0x6c>
     e68:	e59f3120 	ldr	r3, [pc, #288]	@ f90 <malloc+0x164>
     e6c:	e50b300c 	str	r3, [fp, #-12]
     e70:	e59f2114 	ldr	r2, [pc, #276]	@ f8c <malloc+0x160>
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5823000 	str	r3, [r2]
     e7c:	e59f3108 	ldr	r3, [pc, #264]	@ f8c <malloc+0x160>
     e80:	e5933000 	ldr	r3, [r3]
     e84:	e59f2104 	ldr	r2, [pc, #260]	@ f90 <malloc+0x164>
     e88:	e5823000 	str	r3, [r2]
     e8c:	e59f30fc 	ldr	r3, [pc, #252]	@ f90 <malloc+0x164>
     e90:	e3a02000 	mov	r2, #0
     e94:	e5832004 	str	r2, [r3, #4]
     e98:	e51b300c 	ldr	r3, [fp, #-12]
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933004 	ldr	r3, [r3, #4]
     eac:	e51b2010 	ldr	r2, [fp, #-16]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	8a00001e 	bhi	f34 <malloc+0x108>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5933004 	ldr	r3, [r3, #4]
     ec0:	e51b2010 	ldr	r2, [fp, #-16]
     ec4:	e1520003 	cmp	r2, r3
     ec8:	1a000004 	bne	ee0 <malloc+0xb4>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5932000 	ldr	r2, [r3]
     ed4:	e51b300c 	ldr	r3, [fp, #-12]
     ed8:	e5832000 	str	r2, [r3]
     edc:	ea00000e 	b	f1c <malloc+0xf0>
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5932004 	ldr	r2, [r3, #4]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e0422003 	sub	r2, r2, r3
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5933004 	ldr	r3, [r3, #4]
     f00:	e1a03183 	lsl	r3, r3, #3
     f04:	e51b2008 	ldr	r2, [fp, #-8]
     f08:	e0823003 	add	r3, r2, r3
     f0c:	e50b3008 	str	r3, [fp, #-8]
     f10:	e51b3008 	ldr	r3, [fp, #-8]
     f14:	e51b2010 	ldr	r2, [fp, #-16]
     f18:	e5832004 	str	r2, [r3, #4]
     f1c:	e59f2068 	ldr	r2, [pc, #104]	@ f8c <malloc+0x160>
     f20:	e51b300c 	ldr	r3, [fp, #-12]
     f24:	e5823000 	str	r3, [r2]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e2833008 	add	r3, r3, #8
     f30:	ea000012 	b	f80 <malloc+0x154>
     f34:	e59f3050 	ldr	r3, [pc, #80]	@ f8c <malloc+0x160>
     f38:	e5933000 	ldr	r3, [r3]
     f3c:	e51b2008 	ldr	r2, [fp, #-8]
     f40:	e1520003 	cmp	r2, r3
     f44:	1a000007 	bne	f68 <malloc+0x13c>
     f48:	e51b0010 	ldr	r0, [fp, #-16]
     f4c:	ebffff94 	bl	da4 <morecore>
     f50:	e50b0008 	str	r0, [fp, #-8]
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e3530000 	cmp	r3, #0
     f5c:	1a000001 	bne	f68 <malloc+0x13c>
     f60:	e3a03000 	mov	r3, #0
     f64:	ea000005 	b	f80 <malloc+0x154>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e50b300c 	str	r3, [fp, #-12]
     f70:	e51b3008 	ldr	r3, [fp, #-8]
     f74:	e5933000 	ldr	r3, [r3]
     f78:	e50b3008 	str	r3, [fp, #-8]
     f7c:	eaffffc8 	b	ea4 <malloc+0x78>
     f80:	e1a00003 	mov	r0, r3
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00001104 	.word	0x00001104
     f90:	000010fc 	.word	0x000010fc

00000f94 <__udivsi3>:
     f94:	e2512001 	subs	r2, r1, #1
     f98:	012fff1e 	bxeq	lr
     f9c:	3a000036 	bcc	107c <__udivsi3+0xe8>
     fa0:	e1500001 	cmp	r0, r1
     fa4:	9a000022 	bls	1034 <__udivsi3+0xa0>
     fa8:	e1110002 	tst	r1, r2
     fac:	0a000023 	beq	1040 <__udivsi3+0xac>
     fb0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fb4:	01a01181 	lsleq	r1, r1, #3
     fb8:	03a03008 	moveq	r3, #8
     fbc:	13a03001 	movne	r3, #1
     fc0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fc4:	31510000 	cmpcc	r1, r0
     fc8:	31a01201 	lslcc	r1, r1, #4
     fcc:	31a03203 	lslcc	r3, r3, #4
     fd0:	3afffffa 	bcc	fc0 <__udivsi3+0x2c>
     fd4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fd8:	31510000 	cmpcc	r1, r0
     fdc:	31a01081 	lslcc	r1, r1, #1
     fe0:	31a03083 	lslcc	r3, r3, #1
     fe4:	3afffffa 	bcc	fd4 <__udivsi3+0x40>
     fe8:	e3a02000 	mov	r2, #0
     fec:	e1500001 	cmp	r0, r1
     ff0:	20400001 	subcs	r0, r0, r1
     ff4:	21822003 	orrcs	r2, r2, r3
     ff8:	e15000a1 	cmp	r0, r1, lsr #1
     ffc:	204000a1 	subcs	r0, r0, r1, lsr #1
    1000:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1004:	e1500121 	cmp	r0, r1, lsr #2
    1008:	20400121 	subcs	r0, r0, r1, lsr #2
    100c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1010:	e15001a1 	cmp	r0, r1, lsr #3
    1014:	204001a1 	subcs	r0, r0, r1, lsr #3
    1018:	218221a3 	orrcs	r2, r2, r3, lsr #3
    101c:	e3500000 	cmp	r0, #0
    1020:	11b03223 	lsrsne	r3, r3, #4
    1024:	11a01221 	lsrne	r1, r1, #4
    1028:	1affffef 	bne	fec <__udivsi3+0x58>
    102c:	e1a00002 	mov	r0, r2
    1030:	e12fff1e 	bx	lr
    1034:	03a00001 	moveq	r0, #1
    1038:	13a00000 	movne	r0, #0
    103c:	e12fff1e 	bx	lr
    1040:	e3510801 	cmp	r1, #65536	@ 0x10000
    1044:	21a01821 	lsrcs	r1, r1, #16
    1048:	23a02010 	movcs	r2, #16
    104c:	33a02000 	movcc	r2, #0
    1050:	e3510c01 	cmp	r1, #256	@ 0x100
    1054:	21a01421 	lsrcs	r1, r1, #8
    1058:	22822008 	addcs	r2, r2, #8
    105c:	e3510010 	cmp	r1, #16
    1060:	21a01221 	lsrcs	r1, r1, #4
    1064:	22822004 	addcs	r2, r2, #4
    1068:	e3510004 	cmp	r1, #4
    106c:	82822003 	addhi	r2, r2, #3
    1070:	908220a1 	addls	r2, r2, r1, lsr #1
    1074:	e1a00230 	lsr	r0, r0, r2
    1078:	e12fff1e 	bx	lr
    107c:	e3500000 	cmp	r0, #0
    1080:	13e00000 	mvnne	r0, #0
    1084:	ea000007 	b	10a8 <__aeabi_idiv0>

00001088 <__aeabi_uidivmod>:
    1088:	e3510000 	cmp	r1, #0
    108c:	0afffffa 	beq	107c <__udivsi3+0xe8>
    1090:	e92d4003 	push	{r0, r1, lr}
    1094:	ebffffbe 	bl	f94 <__udivsi3>
    1098:	e8bd4006 	pop	{r1, r2, lr}
    109c:	e0030092 	mul	r3, r2, r0
    10a0:	e0411003 	sub	r1, r1, r3
    10a4:	e12fff1e 	bx	lr

000010a8 <__aeabi_idiv0>:
    10a8:	e12fff1e 	bx	lr
