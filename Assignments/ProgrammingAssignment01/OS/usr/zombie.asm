
_zombie:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	eb00013b 	bl	4fc <fork>
       c:	e1a03000 	mov	r3, r0
      10:	e3530000 	cmp	r3, #0
      14:	da000001 	ble	20 <main+0x20>
      18:	e3a00005 	mov	r0, #5
      1c:	eb0001e1 	bl	7a8 <sleep>
      20:	eb00013e 	bl	520 <exit>

00000024 <strcpy>:
      24:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      28:	e28db000 	add	fp, sp, #0
      2c:	e24dd014 	sub	sp, sp, #20
      30:	e50b0010 	str	r0, [fp, #-16]
      34:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      38:	e51b3010 	ldr	r3, [fp, #-16]
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	e1a00000 	nop			@ (mov r0, r0)
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e2823001 	add	r3, r2, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e51b3010 	ldr	r3, [fp, #-16]
      54:	e2831001 	add	r1, r3, #1
      58:	e50b1010 	str	r1, [fp, #-16]
      5c:	e5d22000 	ldrb	r2, [r2]
      60:	e5c32000 	strb	r2, [r3]
      64:	e5d33000 	ldrb	r3, [r3]
      68:	e3530000 	cmp	r3, #0
      6c:	1afffff4 	bne	44 <strcpy+0x20>
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e1a00003 	mov	r0, r3
      78:	e28bd000 	add	sp, fp, #0
      7c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      80:	e12fff1e 	bx	lr

00000084 <strcmp>:
      84:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      88:	e28db000 	add	fp, sp, #0
      8c:	e24dd00c 	sub	sp, sp, #12
      90:	e50b0008 	str	r0, [fp, #-8]
      94:	e50b100c 	str	r1, [fp, #-12]
      98:	ea000005 	b	b4 <strcmp+0x30>
      9c:	e51b3008 	ldr	r3, [fp, #-8]
      a0:	e2833001 	add	r3, r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	e51b300c 	ldr	r3, [fp, #-12]
      ac:	e2833001 	add	r3, r3, #1
      b0:	e50b300c 	str	r3, [fp, #-12]
      b4:	e51b3008 	ldr	r3, [fp, #-8]
      b8:	e5d33000 	ldrb	r3, [r3]
      bc:	e3530000 	cmp	r3, #0
      c0:	0a000005 	beq	dc <strcmp+0x58>
      c4:	e51b3008 	ldr	r3, [fp, #-8]
      c8:	e5d32000 	ldrb	r2, [r3]
      cc:	e51b300c 	ldr	r3, [fp, #-12]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e1520003 	cmp	r2, r3
      d8:	0affffef 	beq	9c <strcmp+0x18>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e5d33000 	ldrb	r3, [r3]
      e4:	e1a02003 	mov	r2, r3
      e8:	e51b300c 	ldr	r3, [fp, #-12]
      ec:	e5d33000 	ldrb	r3, [r3]
      f0:	e0423003 	sub	r3, r2, r3
      f4:	e1a00003 	mov	r0, r3
      f8:	e28bd000 	add	sp, fp, #0
      fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     100:	e12fff1e 	bx	lr

00000104 <strlen>:
     104:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     108:	e28db000 	add	fp, sp, #0
     10c:	e24dd014 	sub	sp, sp, #20
     110:	e50b0010 	str	r0, [fp, #-16]
     114:	e3a03000 	mov	r3, #0
     118:	e50b3008 	str	r3, [fp, #-8]
     11c:	ea000002 	b	12c <strlen+0x28>
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e2833001 	add	r3, r3, #1
     128:	e50b3008 	str	r3, [fp, #-8]
     12c:	e51b3008 	ldr	r3, [fp, #-8]
     130:	e51b2010 	ldr	r2, [fp, #-16]
     134:	e0823003 	add	r3, r2, r3
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e3530000 	cmp	r3, #0
     140:	1afffff6 	bne	120 <strlen+0x1c>
     144:	e51b3008 	ldr	r3, [fp, #-8]
     148:	e1a00003 	mov	r0, r3
     14c:	e28bd000 	add	sp, fp, #0
     150:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     154:	e12fff1e 	bx	lr

00000158 <memset>:
     158:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     15c:	e28db000 	add	fp, sp, #0
     160:	e24dd024 	sub	sp, sp, #36	@ 0x24
     164:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     168:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     16c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     170:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     174:	e50b3008 	str	r3, [fp, #-8]
     178:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     17c:	e54b300d 	strb	r3, [fp, #-13]
     180:	e55b200d 	ldrb	r2, [fp, #-13]
     184:	e1a03002 	mov	r3, r2
     188:	e1a03403 	lsl	r3, r3, #8
     18c:	e0833002 	add	r3, r3, r2
     190:	e1a03803 	lsl	r3, r3, #16
     194:	e1a02003 	mov	r2, r3
     198:	e55b300d 	ldrb	r3, [fp, #-13]
     19c:	e1a03403 	lsl	r3, r3, #8
     1a0:	e1822003 	orr	r2, r2, r3
     1a4:	e55b300d 	ldrb	r3, [fp, #-13]
     1a8:	e1823003 	orr	r3, r2, r3
     1ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1b0:	ea000008 	b	1d8 <memset+0x80>
     1b4:	e51b3008 	ldr	r3, [fp, #-8]
     1b8:	e55b200d 	ldrb	r2, [fp, #-13]
     1bc:	e5c32000 	strb	r2, [r3]
     1c0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1c4:	e2433001 	sub	r3, r3, #1
     1c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e2833001 	add	r3, r3, #1
     1d4:	e50b3008 	str	r3, [fp, #-8]
     1d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1dc:	e3530000 	cmp	r3, #0
     1e0:	0a000003 	beq	1f4 <memset+0x9c>
     1e4:	e51b3008 	ldr	r3, [fp, #-8]
     1e8:	e2033003 	and	r3, r3, #3
     1ec:	e3530000 	cmp	r3, #0
     1f0:	1affffef 	bne	1b4 <memset+0x5c>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e50b300c 	str	r3, [fp, #-12]
     1fc:	ea000008 	b	224 <memset+0xcc>
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     208:	e5832000 	str	r2, [r3]
     20c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     210:	e2433004 	sub	r3, r3, #4
     214:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     218:	e51b300c 	ldr	r3, [fp, #-12]
     21c:	e2833004 	add	r3, r3, #4
     220:	e50b300c 	str	r3, [fp, #-12]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e3530003 	cmp	r3, #3
     22c:	8afffff3 	bhi	200 <memset+0xa8>
     230:	e51b300c 	ldr	r3, [fp, #-12]
     234:	e50b3008 	str	r3, [fp, #-8]
     238:	ea000008 	b	260 <memset+0x108>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e55b200d 	ldrb	r2, [fp, #-13]
     244:	e5c32000 	strb	r2, [r3]
     248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e2433001 	sub	r3, r3, #1
     250:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     254:	e51b3008 	ldr	r3, [fp, #-8]
     258:	e2833001 	add	r3, r3, #1
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     264:	e3530000 	cmp	r3, #0
     268:	1afffff3 	bne	23c <memset+0xe4>
     26c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     270:	e1a00003 	mov	r0, r3
     274:	e28bd000 	add	sp, fp, #0
     278:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     27c:	e12fff1e 	bx	lr

00000280 <strchr>:
     280:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     284:	e28db000 	add	fp, sp, #0
     288:	e24dd00c 	sub	sp, sp, #12
     28c:	e50b0008 	str	r0, [fp, #-8]
     290:	e1a03001 	mov	r3, r1
     294:	e54b3009 	strb	r3, [fp, #-9]
     298:	ea000009 	b	2c4 <strchr+0x44>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e5d33000 	ldrb	r3, [r3]
     2a4:	e55b2009 	ldrb	r2, [fp, #-9]
     2a8:	e1520003 	cmp	r2, r3
     2ac:	1a000001 	bne	2b8 <strchr+0x38>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	ea000007 	b	2d8 <strchr+0x58>
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3008 	ldr	r3, [fp, #-8]
     2c8:	e5d33000 	ldrb	r3, [r3]
     2cc:	e3530000 	cmp	r3, #0
     2d0:	1afffff1 	bne	29c <strchr+0x1c>
     2d4:	e3a03000 	mov	r3, #0
     2d8:	e1a00003 	mov	r0, r3
     2dc:	e28bd000 	add	sp, fp, #0
     2e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e4:	e12fff1e 	bx	lr

000002e8 <gets>:
     2e8:	e92d4800 	push	{fp, lr}
     2ec:	e28db004 	add	fp, sp, #4
     2f0:	e24dd018 	sub	sp, sp, #24
     2f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2fc:	e3a03000 	mov	r3, #0
     300:	e50b3008 	str	r3, [fp, #-8]
     304:	ea000016 	b	364 <gets+0x7c>
     308:	e24b300d 	sub	r3, fp, #13
     30c:	e3a02001 	mov	r2, #1
     310:	e1a01003 	mov	r1, r3
     314:	e3a00000 	mov	r0, #0
     318:	eb00009b 	bl	58c <read>
     31c:	e50b000c 	str	r0, [fp, #-12]
     320:	e51b300c 	ldr	r3, [fp, #-12]
     324:	e3530000 	cmp	r3, #0
     328:	da000013 	ble	37c <gets+0x94>
     32c:	e51b3008 	ldr	r3, [fp, #-8]
     330:	e2832001 	add	r2, r3, #1
     334:	e50b2008 	str	r2, [fp, #-8]
     338:	e1a02003 	mov	r2, r3
     33c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     340:	e0833002 	add	r3, r3, r2
     344:	e55b200d 	ldrb	r2, [fp, #-13]
     348:	e5c32000 	strb	r2, [r3]
     34c:	e55b300d 	ldrb	r3, [fp, #-13]
     350:	e353000a 	cmp	r3, #10
     354:	0a000009 	beq	380 <gets+0x98>
     358:	e55b300d 	ldrb	r3, [fp, #-13]
     35c:	e353000d 	cmp	r3, #13
     360:	0a000006 	beq	380 <gets+0x98>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e2833001 	add	r3, r3, #1
     36c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     370:	e1520003 	cmp	r2, r3
     374:	caffffe3 	bgt	308 <gets+0x20>
     378:	ea000000 	b	380 <gets+0x98>
     37c:	e1a00000 	nop			@ (mov r0, r0)
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     388:	e0823003 	add	r3, r2, r3
     38c:	e3a02000 	mov	r2, #0
     390:	e5c32000 	strb	r2, [r3]
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e1a00003 	mov	r0, r3
     39c:	e24bd004 	sub	sp, fp, #4
     3a0:	e8bd8800 	pop	{fp, pc}

000003a4 <stat>:
     3a4:	e92d4800 	push	{fp, lr}
     3a8:	e28db004 	add	fp, sp, #4
     3ac:	e24dd010 	sub	sp, sp, #16
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e3a01000 	mov	r1, #0
     3bc:	e51b0010 	ldr	r0, [fp, #-16]
     3c0:	eb00009e 	bl	640 <open>
     3c4:	e50b0008 	str	r0, [fp, #-8]
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e3530000 	cmp	r3, #0
     3d0:	aa000001 	bge	3dc <stat+0x38>
     3d4:	e3e03000 	mvn	r3, #0
     3d8:	ea000006 	b	3f8 <stat+0x54>
     3dc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3e0:	e51b0008 	ldr	r0, [fp, #-8]
     3e4:	eb0000b0 	bl	6ac <fstat>
     3e8:	e50b000c 	str	r0, [fp, #-12]
     3ec:	e51b0008 	ldr	r0, [fp, #-8]
     3f0:	eb000077 	bl	5d4 <close>
     3f4:	e51b300c 	ldr	r3, [fp, #-12]
     3f8:	e1a00003 	mov	r0, r3
     3fc:	e24bd004 	sub	sp, fp, #4
     400:	e8bd8800 	pop	{fp, pc}

00000404 <atoi>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd014 	sub	sp, sp, #20
     410:	e50b0010 	str	r0, [fp, #-16]
     414:	e3a03000 	mov	r3, #0
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	ea00000c 	b	454 <atoi+0x50>
     420:	e51b2008 	ldr	r2, [fp, #-8]
     424:	e1a03002 	mov	r3, r2
     428:	e1a03103 	lsl	r3, r3, #2
     42c:	e0833002 	add	r3, r3, r2
     430:	e1a03083 	lsl	r3, r3, #1
     434:	e1a01003 	mov	r1, r3
     438:	e51b3010 	ldr	r3, [fp, #-16]
     43c:	e2832001 	add	r2, r3, #1
     440:	e50b2010 	str	r2, [fp, #-16]
     444:	e5d33000 	ldrb	r3, [r3]
     448:	e0813003 	add	r3, r1, r3
     44c:	e2433030 	sub	r3, r3, #48	@ 0x30
     450:	e50b3008 	str	r3, [fp, #-8]
     454:	e51b3010 	ldr	r3, [fp, #-16]
     458:	e5d33000 	ldrb	r3, [r3]
     45c:	e353002f 	cmp	r3, #47	@ 0x2f
     460:	9a000003 	bls	474 <atoi+0x70>
     464:	e51b3010 	ldr	r3, [fp, #-16]
     468:	e5d33000 	ldrb	r3, [r3]
     46c:	e3530039 	cmp	r3, #57	@ 0x39
     470:	9affffea 	bls	420 <atoi+0x1c>
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e1a00003 	mov	r0, r3
     47c:	e28bd000 	add	sp, fp, #0
     480:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     484:	e12fff1e 	bx	lr

00000488 <memmove>:
     488:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     48c:	e28db000 	add	fp, sp, #0
     490:	e24dd01c 	sub	sp, sp, #28
     494:	e50b0010 	str	r0, [fp, #-16]
     498:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     49c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4a0:	e51b3010 	ldr	r3, [fp, #-16]
     4a4:	e50b3008 	str	r3, [fp, #-8]
     4a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4ac:	e50b300c 	str	r3, [fp, #-12]
     4b0:	ea000007 	b	4d4 <memmove+0x4c>
     4b4:	e51b200c 	ldr	r2, [fp, #-12]
     4b8:	e2823001 	add	r3, r2, #1
     4bc:	e50b300c 	str	r3, [fp, #-12]
     4c0:	e51b3008 	ldr	r3, [fp, #-8]
     4c4:	e2831001 	add	r1, r3, #1
     4c8:	e50b1008 	str	r1, [fp, #-8]
     4cc:	e5d22000 	ldrb	r2, [r2]
     4d0:	e5c32000 	strb	r2, [r3]
     4d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d8:	e2432001 	sub	r2, r3, #1
     4dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e3530000 	cmp	r3, #0
     4e4:	cafffff2 	bgt	4b4 <memmove+0x2c>
     4e8:	e51b3010 	ldr	r3, [fp, #-16]
     4ec:	e1a00003 	mov	r0, r3
     4f0:	e28bd000 	add	sp, fp, #0
     4f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f8:	e12fff1e 	bx	lr

000004fc <fork>:
     4fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     500:	e1a04003 	mov	r4, r3
     504:	e1a03002 	mov	r3, r2
     508:	e1a02001 	mov	r2, r1
     50c:	e1a01000 	mov	r1, r0
     510:	e3a00001 	mov	r0, #1
     514:	ef000000 	svc	0x00000000
     518:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     51c:	e12fff1e 	bx	lr

00000520 <exit>:
     520:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     524:	e1a04003 	mov	r4, r3
     528:	e1a03002 	mov	r3, r2
     52c:	e1a02001 	mov	r2, r1
     530:	e1a01000 	mov	r1, r0
     534:	e3a00002 	mov	r0, #2
     538:	ef000000 	svc	0x00000000
     53c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     540:	e12fff1e 	bx	lr

00000544 <wait>:
     544:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     548:	e1a04003 	mov	r4, r3
     54c:	e1a03002 	mov	r3, r2
     550:	e1a02001 	mov	r2, r1
     554:	e1a01000 	mov	r1, r0
     558:	e3a00003 	mov	r0, #3
     55c:	ef000000 	svc	0x00000000
     560:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <pipe>:
     568:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     56c:	e1a04003 	mov	r4, r3
     570:	e1a03002 	mov	r3, r2
     574:	e1a02001 	mov	r2, r1
     578:	e1a01000 	mov	r1, r0
     57c:	e3a00004 	mov	r0, #4
     580:	ef000000 	svc	0x00000000
     584:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <read>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00005 	mov	r0, #5
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <write>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00010 	mov	r0, #16
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <close>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00015 	mov	r0, #21
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <kill>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00006 	mov	r0, #6
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <exec>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00007 	mov	r0, #7
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <open>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a0000f 	mov	r0, #15
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <mknod>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00011 	mov	r0, #17
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <unlink>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00012 	mov	r0, #18
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <fstat>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a00008 	mov	r0, #8
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <link>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00013 	mov	r0, #19
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <mkdir>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00014 	mov	r0, #20
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <chdir>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00009 	mov	r0, #9
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <dup>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a0000a 	mov	r0, #10
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <getpid>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a0000b 	mov	r0, #11
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <sbrk>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a0000c 	mov	r0, #12
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <sleep>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a0000d 	mov	r0, #13
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <uptime>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000e 	mov	r0, #14
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <putc>:
     7f0:	e92d4800 	push	{fp, lr}
     7f4:	e28db004 	add	fp, sp, #4
     7f8:	e24dd008 	sub	sp, sp, #8
     7fc:	e50b0008 	str	r0, [fp, #-8]
     800:	e1a03001 	mov	r3, r1
     804:	e54b3009 	strb	r3, [fp, #-9]
     808:	e24b3009 	sub	r3, fp, #9
     80c:	e3a02001 	mov	r2, #1
     810:	e1a01003 	mov	r1, r3
     814:	e51b0008 	ldr	r0, [fp, #-8]
     818:	ebffff64 	bl	5b0 <write>
     81c:	e1a00000 	nop			@ (mov r0, r0)
     820:	e24bd004 	sub	sp, fp, #4
     824:	e8bd8800 	pop	{fp, pc}

00000828 <printint>:
     828:	e92d4800 	push	{fp, lr}
     82c:	e28db004 	add	fp, sp, #4
     830:	e24dd030 	sub	sp, sp, #48	@ 0x30
     834:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     838:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     83c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     840:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     844:	e3a03000 	mov	r3, #0
     848:	e50b300c 	str	r3, [fp, #-12]
     84c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     850:	e3530000 	cmp	r3, #0
     854:	0a000008 	beq	87c <printint+0x54>
     858:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     85c:	e3530000 	cmp	r3, #0
     860:	aa000005 	bge	87c <printint+0x54>
     864:	e3a03001 	mov	r3, #1
     868:	e50b300c 	str	r3, [fp, #-12]
     86c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     870:	e2633000 	rsb	r3, r3, #0
     874:	e50b3010 	str	r3, [fp, #-16]
     878:	ea000001 	b	884 <printint+0x5c>
     87c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     880:	e50b3010 	str	r3, [fp, #-16]
     884:	e3a03000 	mov	r3, #0
     888:	e50b3008 	str	r3, [fp, #-8]
     88c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     890:	e51b3010 	ldr	r3, [fp, #-16]
     894:	e1a01002 	mov	r1, r2
     898:	e1a00003 	mov	r0, r3
     89c:	eb0001d5 	bl	ff8 <__aeabi_uidivmod>
     8a0:	e1a03001 	mov	r3, r1
     8a4:	e1a01003 	mov	r1, r3
     8a8:	e51b3008 	ldr	r3, [fp, #-8]
     8ac:	e2832001 	add	r2, r3, #1
     8b0:	e50b2008 	str	r2, [fp, #-8]
     8b4:	e59f20a0 	ldr	r2, [pc, #160]	@ 95c <printint+0x134>
     8b8:	e7d22001 	ldrb	r2, [r2, r1]
     8bc:	e2433004 	sub	r3, r3, #4
     8c0:	e083300b 	add	r3, r3, fp
     8c4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     8c8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     8cc:	e1a01003 	mov	r1, r3
     8d0:	e51b0010 	ldr	r0, [fp, #-16]
     8d4:	eb00018a 	bl	f04 <__udivsi3>
     8d8:	e1a03000 	mov	r3, r0
     8dc:	e50b3010 	str	r3, [fp, #-16]
     8e0:	e51b3010 	ldr	r3, [fp, #-16]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	1affffe7 	bne	88c <printint+0x64>
     8ec:	e51b300c 	ldr	r3, [fp, #-12]
     8f0:	e3530000 	cmp	r3, #0
     8f4:	0a00000e 	beq	934 <printint+0x10c>
     8f8:	e51b3008 	ldr	r3, [fp, #-8]
     8fc:	e2832001 	add	r2, r3, #1
     900:	e50b2008 	str	r2, [fp, #-8]
     904:	e2433004 	sub	r3, r3, #4
     908:	e083300b 	add	r3, r3, fp
     90c:	e3a0202d 	mov	r2, #45	@ 0x2d
     910:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     914:	ea000006 	b	934 <printint+0x10c>
     918:	e24b2020 	sub	r2, fp, #32
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e0823003 	add	r3, r2, r3
     924:	e5d33000 	ldrb	r3, [r3]
     928:	e1a01003 	mov	r1, r3
     92c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     930:	ebffffae 	bl	7f0 <putc>
     934:	e51b3008 	ldr	r3, [fp, #-8]
     938:	e2433001 	sub	r3, r3, #1
     93c:	e50b3008 	str	r3, [fp, #-8]
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e3530000 	cmp	r3, #0
     948:	aafffff2 	bge	918 <printint+0xf0>
     94c:	e1a00000 	nop			@ (mov r0, r0)
     950:	e1a00000 	nop			@ (mov r0, r0)
     954:	e24bd004 	sub	sp, fp, #4
     958:	e8bd8800 	pop	{fp, pc}
     95c:	00001024 	.word	0x00001024

00000960 <printf>:
     960:	e92d000e 	push	{r1, r2, r3}
     964:	e92d4800 	push	{fp, lr}
     968:	e28db004 	add	fp, sp, #4
     96c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     970:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     974:	e3a03000 	mov	r3, #0
     978:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     97c:	e28b3008 	add	r3, fp, #8
     980:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     984:	e3a03000 	mov	r3, #0
     988:	e50b3010 	str	r3, [fp, #-16]
     98c:	ea000074 	b	b64 <printf+0x204>
     990:	e59b2004 	ldr	r2, [fp, #4]
     994:	e51b3010 	ldr	r3, [fp, #-16]
     998:	e0823003 	add	r3, r2, r3
     99c:	e5d33000 	ldrb	r3, [r3]
     9a0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9a8:	e3530000 	cmp	r3, #0
     9ac:	1a00000b 	bne	9e0 <printf+0x80>
     9b0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9b4:	e3530025 	cmp	r3, #37	@ 0x25
     9b8:	1a000002 	bne	9c8 <printf+0x68>
     9bc:	e3a03025 	mov	r3, #37	@ 0x25
     9c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9c4:	ea000063 	b	b58 <printf+0x1f8>
     9c8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9cc:	e6ef3073 	uxtb	r3, r3
     9d0:	e1a01003 	mov	r1, r3
     9d4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     9d8:	ebffff84 	bl	7f0 <putc>
     9dc:	ea00005d 	b	b58 <printf+0x1f8>
     9e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9e4:	e3530025 	cmp	r3, #37	@ 0x25
     9e8:	1a00005a 	bne	b58 <printf+0x1f8>
     9ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9f0:	e3530064 	cmp	r3, #100	@ 0x64
     9f4:	1a00000a 	bne	a24 <printf+0xc4>
     9f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9fc:	e5933000 	ldr	r3, [r3]
     a00:	e1a01003 	mov	r1, r3
     a04:	e3a03001 	mov	r3, #1
     a08:	e3a0200a 	mov	r2, #10
     a0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a10:	ebffff84 	bl	828 <printint>
     a14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a18:	e2833004 	add	r3, r3, #4
     a1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a20:	ea00004a 	b	b50 <printf+0x1f0>
     a24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a28:	e3530078 	cmp	r3, #120	@ 0x78
     a2c:	0a000002 	beq	a3c <printf+0xdc>
     a30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a34:	e3530070 	cmp	r3, #112	@ 0x70
     a38:	1a00000a 	bne	a68 <printf+0x108>
     a3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a40:	e5933000 	ldr	r3, [r3]
     a44:	e1a01003 	mov	r1, r3
     a48:	e3a03000 	mov	r3, #0
     a4c:	e3a02010 	mov	r2, #16
     a50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a54:	ebffff73 	bl	828 <printint>
     a58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a5c:	e2833004 	add	r3, r3, #4
     a60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a64:	ea000039 	b	b50 <printf+0x1f0>
     a68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a6c:	e3530073 	cmp	r3, #115	@ 0x73
     a70:	1a000018 	bne	ad8 <printf+0x178>
     a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a78:	e5933000 	ldr	r3, [r3]
     a7c:	e50b300c 	str	r3, [fp, #-12]
     a80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a84:	e2833004 	add	r3, r3, #4
     a88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a8c:	e51b300c 	ldr	r3, [fp, #-12]
     a90:	e3530000 	cmp	r3, #0
     a94:	1a00000a 	bne	ac4 <printf+0x164>
     a98:	e59f30f4 	ldr	r3, [pc, #244]	@ b94 <printf+0x234>
     a9c:	e50b300c 	str	r3, [fp, #-12]
     aa0:	ea000007 	b	ac4 <printf+0x164>
     aa4:	e51b300c 	ldr	r3, [fp, #-12]
     aa8:	e5d33000 	ldrb	r3, [r3]
     aac:	e1a01003 	mov	r1, r3
     ab0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab4:	ebffff4d 	bl	7f0 <putc>
     ab8:	e51b300c 	ldr	r3, [fp, #-12]
     abc:	e2833001 	add	r3, r3, #1
     ac0:	e50b300c 	str	r3, [fp, #-12]
     ac4:	e51b300c 	ldr	r3, [fp, #-12]
     ac8:	e5d33000 	ldrb	r3, [r3]
     acc:	e3530000 	cmp	r3, #0
     ad0:	1afffff3 	bne	aa4 <printf+0x144>
     ad4:	ea00001d 	b	b50 <printf+0x1f0>
     ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e3530063 	cmp	r3, #99	@ 0x63
     ae0:	1a000009 	bne	b0c <printf+0x1ac>
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e5933000 	ldr	r3, [r3]
     aec:	e6ef3073 	uxtb	r3, r3
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     af8:	ebffff3c 	bl	7f0 <putc>
     afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e2833004 	add	r3, r3, #4
     b04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b08:	ea000010 	b	b50 <printf+0x1f0>
     b0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b10:	e3530025 	cmp	r3, #37	@ 0x25
     b14:	1a000005 	bne	b30 <printf+0x1d0>
     b18:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b1c:	e6ef3073 	uxtb	r3, r3
     b20:	e1a01003 	mov	r1, r3
     b24:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b28:	ebffff30 	bl	7f0 <putc>
     b2c:	ea000007 	b	b50 <printf+0x1f0>
     b30:	e3a01025 	mov	r1, #37	@ 0x25
     b34:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b38:	ebffff2c 	bl	7f0 <putc>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e6ef3073 	uxtb	r3, r3
     b44:	e1a01003 	mov	r1, r3
     b48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b4c:	ebffff27 	bl	7f0 <putc>
     b50:	e3a03000 	mov	r3, #0
     b54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b58:	e51b3010 	ldr	r3, [fp, #-16]
     b5c:	e2833001 	add	r3, r3, #1
     b60:	e50b3010 	str	r3, [fp, #-16]
     b64:	e59b2004 	ldr	r2, [fp, #4]
     b68:	e51b3010 	ldr	r3, [fp, #-16]
     b6c:	e0823003 	add	r3, r2, r3
     b70:	e5d33000 	ldrb	r3, [r3]
     b74:	e3530000 	cmp	r3, #0
     b78:	1affff84 	bne	990 <printf+0x30>
     b7c:	e1a00000 	nop			@ (mov r0, r0)
     b80:	e1a00000 	nop			@ (mov r0, r0)
     b84:	e24bd004 	sub	sp, fp, #4
     b88:	e8bd4800 	pop	{fp, lr}
     b8c:	e28dd00c 	add	sp, sp, #12
     b90:	e12fff1e 	bx	lr
     b94:	0000101c 	.word	0x0000101c

00000b98 <free>:
     b98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     b9c:	e28db000 	add	fp, sp, #0
     ba0:	e24dd014 	sub	sp, sp, #20
     ba4:	e50b0010 	str	r0, [fp, #-16]
     ba8:	e51b3010 	ldr	r3, [fp, #-16]
     bac:	e2433008 	sub	r3, r3, #8
     bb0:	e50b300c 	str	r3, [fp, #-12]
     bb4:	e59f3154 	ldr	r3, [pc, #340]	@ d10 <free+0x178>
     bb8:	e5933000 	ldr	r3, [r3]
     bbc:	e50b3008 	str	r3, [fp, #-8]
     bc0:	ea000010 	b	c08 <free+0x70>
     bc4:	e51b3008 	ldr	r3, [fp, #-8]
     bc8:	e5933000 	ldr	r3, [r3]
     bcc:	e51b2008 	ldr	r2, [fp, #-8]
     bd0:	e1520003 	cmp	r2, r3
     bd4:	3a000008 	bcc	bfc <free+0x64>
     bd8:	e51b200c 	ldr	r2, [fp, #-12]
     bdc:	e51b3008 	ldr	r3, [fp, #-8]
     be0:	e1520003 	cmp	r2, r3
     be4:	8a000010 	bhi	c2c <free+0x94>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e51b200c 	ldr	r2, [fp, #-12]
     bf4:	e1520003 	cmp	r2, r3
     bf8:	3a00000b 	bcc	c2c <free+0x94>
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e5933000 	ldr	r3, [r3]
     c04:	e50b3008 	str	r3, [fp, #-8]
     c08:	e51b200c 	ldr	r2, [fp, #-12]
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e1520003 	cmp	r2, r3
     c14:	9affffea 	bls	bc4 <free+0x2c>
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e5933000 	ldr	r3, [r3]
     c20:	e51b200c 	ldr	r2, [fp, #-12]
     c24:	e1520003 	cmp	r2, r3
     c28:	2affffe5 	bcs	bc4 <free+0x2c>
     c2c:	e51b300c 	ldr	r3, [fp, #-12]
     c30:	e5933004 	ldr	r3, [r3, #4]
     c34:	e1a03183 	lsl	r3, r3, #3
     c38:	e51b200c 	ldr	r2, [fp, #-12]
     c3c:	e0822003 	add	r2, r2, r3
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e1520003 	cmp	r2, r3
     c4c:	1a00000d 	bne	c88 <free+0xf0>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e5932004 	ldr	r2, [r3, #4]
     c58:	e51b3008 	ldr	r3, [fp, #-8]
     c5c:	e5933000 	ldr	r3, [r3]
     c60:	e5933004 	ldr	r3, [r3, #4]
     c64:	e0822003 	add	r2, r2, r3
     c68:	e51b300c 	ldr	r3, [fp, #-12]
     c6c:	e5832004 	str	r2, [r3, #4]
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e5932000 	ldr	r2, [r3]
     c7c:	e51b300c 	ldr	r3, [fp, #-12]
     c80:	e5832000 	str	r2, [r3]
     c84:	ea000003 	b	c98 <free+0x100>
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e5932000 	ldr	r2, [r3]
     c90:	e51b300c 	ldr	r3, [fp, #-12]
     c94:	e5832000 	str	r2, [r3]
     c98:	e51b3008 	ldr	r3, [fp, #-8]
     c9c:	e5933004 	ldr	r3, [r3, #4]
     ca0:	e1a03183 	lsl	r3, r3, #3
     ca4:	e51b2008 	ldr	r2, [fp, #-8]
     ca8:	e0823003 	add	r3, r2, r3
     cac:	e51b200c 	ldr	r2, [fp, #-12]
     cb0:	e1520003 	cmp	r2, r3
     cb4:	1a00000b 	bne	ce8 <free+0x150>
     cb8:	e51b3008 	ldr	r3, [fp, #-8]
     cbc:	e5932004 	ldr	r2, [r3, #4]
     cc0:	e51b300c 	ldr	r3, [fp, #-12]
     cc4:	e5933004 	ldr	r3, [r3, #4]
     cc8:	e0822003 	add	r2, r2, r3
     ccc:	e51b3008 	ldr	r3, [fp, #-8]
     cd0:	e5832004 	str	r2, [r3, #4]
     cd4:	e51b300c 	ldr	r3, [fp, #-12]
     cd8:	e5932000 	ldr	r2, [r3]
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e5832000 	str	r2, [r3]
     ce4:	ea000002 	b	cf4 <free+0x15c>
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e51b200c 	ldr	r2, [fp, #-12]
     cf0:	e5832000 	str	r2, [r3]
     cf4:	e59f2014 	ldr	r2, [pc, #20]	@ d10 <free+0x178>
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5823000 	str	r3, [r2]
     d00:	e1a00000 	nop			@ (mov r0, r0)
     d04:	e28bd000 	add	sp, fp, #0
     d08:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d0c:	e12fff1e 	bx	lr
     d10:	00001040 	.word	0x00001040

00000d14 <morecore>:
     d14:	e92d4800 	push	{fp, lr}
     d18:	e28db004 	add	fp, sp, #4
     d1c:	e24dd010 	sub	sp, sp, #16
     d20:	e50b0010 	str	r0, [fp, #-16]
     d24:	e51b3010 	ldr	r3, [fp, #-16]
     d28:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d2c:	2a000001 	bcs	d38 <morecore+0x24>
     d30:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d34:	e50b3010 	str	r3, [fp, #-16]
     d38:	e51b3010 	ldr	r3, [fp, #-16]
     d3c:	e1a03183 	lsl	r3, r3, #3
     d40:	e1a00003 	mov	r0, r3
     d44:	ebfffe8e 	bl	784 <sbrk>
     d48:	e50b0008 	str	r0, [fp, #-8]
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e3730001 	cmn	r3, #1
     d54:	1a000001 	bne	d60 <morecore+0x4c>
     d58:	e3a03000 	mov	r3, #0
     d5c:	ea00000a 	b	d8c <morecore+0x78>
     d60:	e51b3008 	ldr	r3, [fp, #-8]
     d64:	e50b300c 	str	r3, [fp, #-12]
     d68:	e51b300c 	ldr	r3, [fp, #-12]
     d6c:	e51b2010 	ldr	r2, [fp, #-16]
     d70:	e5832004 	str	r2, [r3, #4]
     d74:	e51b300c 	ldr	r3, [fp, #-12]
     d78:	e2833008 	add	r3, r3, #8
     d7c:	e1a00003 	mov	r0, r3
     d80:	ebffff84 	bl	b98 <free>
     d84:	e59f300c 	ldr	r3, [pc, #12]	@ d98 <morecore+0x84>
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e1a00003 	mov	r0, r3
     d90:	e24bd004 	sub	sp, fp, #4
     d94:	e8bd8800 	pop	{fp, pc}
     d98:	00001040 	.word	0x00001040

00000d9c <malloc>:
     d9c:	e92d4800 	push	{fp, lr}
     da0:	e28db004 	add	fp, sp, #4
     da4:	e24dd018 	sub	sp, sp, #24
     da8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     db0:	e2833007 	add	r3, r3, #7
     db4:	e1a031a3 	lsr	r3, r3, #3
     db8:	e2833001 	add	r3, r3, #1
     dbc:	e50b3010 	str	r3, [fp, #-16]
     dc0:	e59f3134 	ldr	r3, [pc, #308]	@ efc <malloc+0x160>
     dc4:	e5933000 	ldr	r3, [r3]
     dc8:	e50b300c 	str	r3, [fp, #-12]
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e3530000 	cmp	r3, #0
     dd4:	1a00000b 	bne	e08 <malloc+0x6c>
     dd8:	e59f3120 	ldr	r3, [pc, #288]	@ f00 <malloc+0x164>
     ddc:	e50b300c 	str	r3, [fp, #-12]
     de0:	e59f2114 	ldr	r2, [pc, #276]	@ efc <malloc+0x160>
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e5823000 	str	r3, [r2]
     dec:	e59f3108 	ldr	r3, [pc, #264]	@ efc <malloc+0x160>
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e59f2104 	ldr	r2, [pc, #260]	@ f00 <malloc+0x164>
     df8:	e5823000 	str	r3, [r2]
     dfc:	e59f30fc 	ldr	r3, [pc, #252]	@ f00 <malloc+0x164>
     e00:	e3a02000 	mov	r2, #0
     e04:	e5832004 	str	r2, [r3, #4]
     e08:	e51b300c 	ldr	r3, [fp, #-12]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e50b3008 	str	r3, [fp, #-8]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933004 	ldr	r3, [r3, #4]
     e1c:	e51b2010 	ldr	r2, [fp, #-16]
     e20:	e1520003 	cmp	r2, r3
     e24:	8a00001e 	bhi	ea4 <malloc+0x108>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e5933004 	ldr	r3, [r3, #4]
     e30:	e51b2010 	ldr	r2, [fp, #-16]
     e34:	e1520003 	cmp	r2, r3
     e38:	1a000004 	bne	e50 <malloc+0xb4>
     e3c:	e51b3008 	ldr	r3, [fp, #-8]
     e40:	e5932000 	ldr	r2, [r3]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5832000 	str	r2, [r3]
     e4c:	ea00000e 	b	e8c <malloc+0xf0>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5932004 	ldr	r2, [r3, #4]
     e58:	e51b3010 	ldr	r3, [fp, #-16]
     e5c:	e0422003 	sub	r2, r2, r3
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b3008 	ldr	r3, [fp, #-8]
     e6c:	e5933004 	ldr	r3, [r3, #4]
     e70:	e1a03183 	lsl	r3, r3, #3
     e74:	e51b2008 	ldr	r2, [fp, #-8]
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e50b3008 	str	r3, [fp, #-8]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e51b2010 	ldr	r2, [fp, #-16]
     e88:	e5832004 	str	r2, [r3, #4]
     e8c:	e59f2068 	ldr	r2, [pc, #104]	@ efc <malloc+0x160>
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5823000 	str	r3, [r2]
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e2833008 	add	r3, r3, #8
     ea0:	ea000012 	b	ef0 <malloc+0x154>
     ea4:	e59f3050 	ldr	r3, [pc, #80]	@ efc <malloc+0x160>
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e51b2008 	ldr	r2, [fp, #-8]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a000007 	bne	ed8 <malloc+0x13c>
     eb8:	e51b0010 	ldr	r0, [fp, #-16]
     ebc:	ebffff94 	bl	d14 <morecore>
     ec0:	e50b0008 	str	r0, [fp, #-8]
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e3530000 	cmp	r3, #0
     ecc:	1a000001 	bne	ed8 <malloc+0x13c>
     ed0:	e3a03000 	mov	r3, #0
     ed4:	ea000005 	b	ef0 <malloc+0x154>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e5933000 	ldr	r3, [r3]
     ee8:	e50b3008 	str	r3, [fp, #-8]
     eec:	eaffffc8 	b	e14 <malloc+0x78>
     ef0:	e1a00003 	mov	r0, r3
     ef4:	e24bd004 	sub	sp, fp, #4
     ef8:	e8bd8800 	pop	{fp, pc}
     efc:	00001040 	.word	0x00001040
     f00:	00001038 	.word	0x00001038

00000f04 <__udivsi3>:
     f04:	e2512001 	subs	r2, r1, #1
     f08:	012fff1e 	bxeq	lr
     f0c:	3a000036 	bcc	fec <__udivsi3+0xe8>
     f10:	e1500001 	cmp	r0, r1
     f14:	9a000022 	bls	fa4 <__udivsi3+0xa0>
     f18:	e1110002 	tst	r1, r2
     f1c:	0a000023 	beq	fb0 <__udivsi3+0xac>
     f20:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f24:	01a01181 	lsleq	r1, r1, #3
     f28:	03a03008 	moveq	r3, #8
     f2c:	13a03001 	movne	r3, #1
     f30:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f34:	31510000 	cmpcc	r1, r0
     f38:	31a01201 	lslcc	r1, r1, #4
     f3c:	31a03203 	lslcc	r3, r3, #4
     f40:	3afffffa 	bcc	f30 <__udivsi3+0x2c>
     f44:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f48:	31510000 	cmpcc	r1, r0
     f4c:	31a01081 	lslcc	r1, r1, #1
     f50:	31a03083 	lslcc	r3, r3, #1
     f54:	3afffffa 	bcc	f44 <__udivsi3+0x40>
     f58:	e3a02000 	mov	r2, #0
     f5c:	e1500001 	cmp	r0, r1
     f60:	20400001 	subcs	r0, r0, r1
     f64:	21822003 	orrcs	r2, r2, r3
     f68:	e15000a1 	cmp	r0, r1, lsr #1
     f6c:	204000a1 	subcs	r0, r0, r1, lsr #1
     f70:	218220a3 	orrcs	r2, r2, r3, lsr #1
     f74:	e1500121 	cmp	r0, r1, lsr #2
     f78:	20400121 	subcs	r0, r0, r1, lsr #2
     f7c:	21822123 	orrcs	r2, r2, r3, lsr #2
     f80:	e15001a1 	cmp	r0, r1, lsr #3
     f84:	204001a1 	subcs	r0, r0, r1, lsr #3
     f88:	218221a3 	orrcs	r2, r2, r3, lsr #3
     f8c:	e3500000 	cmp	r0, #0
     f90:	11b03223 	lsrsne	r3, r3, #4
     f94:	11a01221 	lsrne	r1, r1, #4
     f98:	1affffef 	bne	f5c <__udivsi3+0x58>
     f9c:	e1a00002 	mov	r0, r2
     fa0:	e12fff1e 	bx	lr
     fa4:	03a00001 	moveq	r0, #1
     fa8:	13a00000 	movne	r0, #0
     fac:	e12fff1e 	bx	lr
     fb0:	e3510801 	cmp	r1, #65536	@ 0x10000
     fb4:	21a01821 	lsrcs	r1, r1, #16
     fb8:	23a02010 	movcs	r2, #16
     fbc:	33a02000 	movcc	r2, #0
     fc0:	e3510c01 	cmp	r1, #256	@ 0x100
     fc4:	21a01421 	lsrcs	r1, r1, #8
     fc8:	22822008 	addcs	r2, r2, #8
     fcc:	e3510010 	cmp	r1, #16
     fd0:	21a01221 	lsrcs	r1, r1, #4
     fd4:	22822004 	addcs	r2, r2, #4
     fd8:	e3510004 	cmp	r1, #4
     fdc:	82822003 	addhi	r2, r2, #3
     fe0:	908220a1 	addls	r2, r2, r1, lsr #1
     fe4:	e1a00230 	lsr	r0, r0, r2
     fe8:	e12fff1e 	bx	lr
     fec:	e3500000 	cmp	r0, #0
     ff0:	13e00000 	mvnne	r0, #0
     ff4:	ea000007 	b	1018 <__aeabi_idiv0>

00000ff8 <__aeabi_uidivmod>:
     ff8:	e3510000 	cmp	r1, #0
     ffc:	0afffffa 	beq	fec <__udivsi3+0xe8>
    1000:	e92d4003 	push	{r0, r1, lr}
    1004:	ebffffbe 	bl	f04 <__udivsi3>
    1008:	e8bd4006 	pop	{r1, r2, lr}
    100c:	e0030092 	mul	r3, r2, r0
    1010:	e0411003 	sub	r1, r1, r3
    1014:	e12fff1e 	bx	lr

00001018 <__aeabi_idiv0>:
    1018:	e12fff1e 	bx	lr
