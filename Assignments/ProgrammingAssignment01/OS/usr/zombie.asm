
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

000007f0 <ps>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a00016 	mov	r0, #22
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <putc>:
     814:	e92d4800 	push	{fp, lr}
     818:	e28db004 	add	fp, sp, #4
     81c:	e24dd008 	sub	sp, sp, #8
     820:	e50b0008 	str	r0, [fp, #-8]
     824:	e1a03001 	mov	r3, r1
     828:	e54b3009 	strb	r3, [fp, #-9]
     82c:	e24b3009 	sub	r3, fp, #9
     830:	e3a02001 	mov	r2, #1
     834:	e1a01003 	mov	r1, r3
     838:	e51b0008 	ldr	r0, [fp, #-8]
     83c:	ebffff5b 	bl	5b0 <write>
     840:	e1a00000 	nop			@ (mov r0, r0)
     844:	e24bd004 	sub	sp, fp, #4
     848:	e8bd8800 	pop	{fp, pc}

0000084c <printint>:
     84c:	e92d4800 	push	{fp, lr}
     850:	e28db004 	add	fp, sp, #4
     854:	e24dd030 	sub	sp, sp, #48	@ 0x30
     858:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     85c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     860:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     864:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     868:	e3a03000 	mov	r3, #0
     86c:	e50b300c 	str	r3, [fp, #-12]
     870:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     874:	e3530000 	cmp	r3, #0
     878:	0a000008 	beq	8a0 <printint+0x54>
     87c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     880:	e3530000 	cmp	r3, #0
     884:	aa000005 	bge	8a0 <printint+0x54>
     888:	e3a03001 	mov	r3, #1
     88c:	e50b300c 	str	r3, [fp, #-12]
     890:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     894:	e2633000 	rsb	r3, r3, #0
     898:	e50b3010 	str	r3, [fp, #-16]
     89c:	ea000001 	b	8a8 <printint+0x5c>
     8a0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8a4:	e50b3010 	str	r3, [fp, #-16]
     8a8:	e3a03000 	mov	r3, #0
     8ac:	e50b3008 	str	r3, [fp, #-8]
     8b0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8b4:	e51b3010 	ldr	r3, [fp, #-16]
     8b8:	e1a01002 	mov	r1, r2
     8bc:	e1a00003 	mov	r0, r3
     8c0:	eb0001d5 	bl	101c <__aeabi_uidivmod>
     8c4:	e1a03001 	mov	r3, r1
     8c8:	e1a01003 	mov	r1, r3
     8cc:	e51b3008 	ldr	r3, [fp, #-8]
     8d0:	e2832001 	add	r2, r3, #1
     8d4:	e50b2008 	str	r2, [fp, #-8]
     8d8:	e59f20a0 	ldr	r2, [pc, #160]	@ 980 <printint+0x134>
     8dc:	e7d22001 	ldrb	r2, [r2, r1]
     8e0:	e2433004 	sub	r3, r3, #4
     8e4:	e083300b 	add	r3, r3, fp
     8e8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     8ec:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     8f0:	e1a01003 	mov	r1, r3
     8f4:	e51b0010 	ldr	r0, [fp, #-16]
     8f8:	eb00018a 	bl	f28 <__udivsi3>
     8fc:	e1a03000 	mov	r3, r0
     900:	e50b3010 	str	r3, [fp, #-16]
     904:	e51b3010 	ldr	r3, [fp, #-16]
     908:	e3530000 	cmp	r3, #0
     90c:	1affffe7 	bne	8b0 <printint+0x64>
     910:	e51b300c 	ldr	r3, [fp, #-12]
     914:	e3530000 	cmp	r3, #0
     918:	0a00000e 	beq	958 <printint+0x10c>
     91c:	e51b3008 	ldr	r3, [fp, #-8]
     920:	e2832001 	add	r2, r3, #1
     924:	e50b2008 	str	r2, [fp, #-8]
     928:	e2433004 	sub	r3, r3, #4
     92c:	e083300b 	add	r3, r3, fp
     930:	e3a0202d 	mov	r2, #45	@ 0x2d
     934:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     938:	ea000006 	b	958 <printint+0x10c>
     93c:	e24b2020 	sub	r2, fp, #32
     940:	e51b3008 	ldr	r3, [fp, #-8]
     944:	e0823003 	add	r3, r2, r3
     948:	e5d33000 	ldrb	r3, [r3]
     94c:	e1a01003 	mov	r1, r3
     950:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     954:	ebffffae 	bl	814 <putc>
     958:	e51b3008 	ldr	r3, [fp, #-8]
     95c:	e2433001 	sub	r3, r3, #1
     960:	e50b3008 	str	r3, [fp, #-8]
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e3530000 	cmp	r3, #0
     96c:	aafffff2 	bge	93c <printint+0xf0>
     970:	e1a00000 	nop			@ (mov r0, r0)
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}
     980:	00001048 	.word	0x00001048

00000984 <printf>:
     984:	e92d000e 	push	{r1, r2, r3}
     988:	e92d4800 	push	{fp, lr}
     98c:	e28db004 	add	fp, sp, #4
     990:	e24dd024 	sub	sp, sp, #36	@ 0x24
     994:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     998:	e3a03000 	mov	r3, #0
     99c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9a0:	e28b3008 	add	r3, fp, #8
     9a4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9a8:	e3a03000 	mov	r3, #0
     9ac:	e50b3010 	str	r3, [fp, #-16]
     9b0:	ea000074 	b	b88 <printf+0x204>
     9b4:	e59b2004 	ldr	r2, [fp, #4]
     9b8:	e51b3010 	ldr	r3, [fp, #-16]
     9bc:	e0823003 	add	r3, r2, r3
     9c0:	e5d33000 	ldrb	r3, [r3]
     9c4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9cc:	e3530000 	cmp	r3, #0
     9d0:	1a00000b 	bne	a04 <printf+0x80>
     9d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9d8:	e3530025 	cmp	r3, #37	@ 0x25
     9dc:	1a000002 	bne	9ec <printf+0x68>
     9e0:	e3a03025 	mov	r3, #37	@ 0x25
     9e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9e8:	ea000063 	b	b7c <printf+0x1f8>
     9ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9f0:	e6ef3073 	uxtb	r3, r3
     9f4:	e1a01003 	mov	r1, r3
     9f8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     9fc:	ebffff84 	bl	814 <putc>
     a00:	ea00005d 	b	b7c <printf+0x1f8>
     a04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a08:	e3530025 	cmp	r3, #37	@ 0x25
     a0c:	1a00005a 	bne	b7c <printf+0x1f8>
     a10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a14:	e3530064 	cmp	r3, #100	@ 0x64
     a18:	1a00000a 	bne	a48 <printf+0xc4>
     a1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a20:	e5933000 	ldr	r3, [r3]
     a24:	e1a01003 	mov	r1, r3
     a28:	e3a03001 	mov	r3, #1
     a2c:	e3a0200a 	mov	r2, #10
     a30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a34:	ebffff84 	bl	84c <printint>
     a38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a3c:	e2833004 	add	r3, r3, #4
     a40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a44:	ea00004a 	b	b74 <printf+0x1f0>
     a48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a4c:	e3530078 	cmp	r3, #120	@ 0x78
     a50:	0a000002 	beq	a60 <printf+0xdc>
     a54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a58:	e3530070 	cmp	r3, #112	@ 0x70
     a5c:	1a00000a 	bne	a8c <printf+0x108>
     a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a64:	e5933000 	ldr	r3, [r3]
     a68:	e1a01003 	mov	r1, r3
     a6c:	e3a03000 	mov	r3, #0
     a70:	e3a02010 	mov	r2, #16
     a74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a78:	ebffff73 	bl	84c <printint>
     a7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a80:	e2833004 	add	r3, r3, #4
     a84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a88:	ea000039 	b	b74 <printf+0x1f0>
     a8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a90:	e3530073 	cmp	r3, #115	@ 0x73
     a94:	1a000018 	bne	afc <printf+0x178>
     a98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a9c:	e5933000 	ldr	r3, [r3]
     aa0:	e50b300c 	str	r3, [fp, #-12]
     aa4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	e2833004 	add	r3, r3, #4
     aac:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ab0:	e51b300c 	ldr	r3, [fp, #-12]
     ab4:	e3530000 	cmp	r3, #0
     ab8:	1a00000a 	bne	ae8 <printf+0x164>
     abc:	e59f30f4 	ldr	r3, [pc, #244]	@ bb8 <printf+0x234>
     ac0:	e50b300c 	str	r3, [fp, #-12]
     ac4:	ea000007 	b	ae8 <printf+0x164>
     ac8:	e51b300c 	ldr	r3, [fp, #-12]
     acc:	e5d33000 	ldrb	r3, [r3]
     ad0:	e1a01003 	mov	r1, r3
     ad4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ad8:	ebffff4d 	bl	814 <putc>
     adc:	e51b300c 	ldr	r3, [fp, #-12]
     ae0:	e2833001 	add	r3, r3, #1
     ae4:	e50b300c 	str	r3, [fp, #-12]
     ae8:	e51b300c 	ldr	r3, [fp, #-12]
     aec:	e5d33000 	ldrb	r3, [r3]
     af0:	e3530000 	cmp	r3, #0
     af4:	1afffff3 	bne	ac8 <printf+0x144>
     af8:	ea00001d 	b	b74 <printf+0x1f0>
     afc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b00:	e3530063 	cmp	r3, #99	@ 0x63
     b04:	1a000009 	bne	b30 <printf+0x1ac>
     b08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	e5933000 	ldr	r3, [r3]
     b10:	e6ef3073 	uxtb	r3, r3
     b14:	e1a01003 	mov	r1, r3
     b18:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b1c:	ebffff3c 	bl	814 <putc>
     b20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b24:	e2833004 	add	r3, r3, #4
     b28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	ea000010 	b	b74 <printf+0x1f0>
     b30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b34:	e3530025 	cmp	r3, #37	@ 0x25
     b38:	1a000005 	bne	b54 <printf+0x1d0>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e6ef3073 	uxtb	r3, r3
     b44:	e1a01003 	mov	r1, r3
     b48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b4c:	ebffff30 	bl	814 <putc>
     b50:	ea000007 	b	b74 <printf+0x1f0>
     b54:	e3a01025 	mov	r1, #37	@ 0x25
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff2c 	bl	814 <putc>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b64:	e6ef3073 	uxtb	r3, r3
     b68:	e1a01003 	mov	r1, r3
     b6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b70:	ebffff27 	bl	814 <putc>
     b74:	e3a03000 	mov	r3, #0
     b78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b7c:	e51b3010 	ldr	r3, [fp, #-16]
     b80:	e2833001 	add	r3, r3, #1
     b84:	e50b3010 	str	r3, [fp, #-16]
     b88:	e59b2004 	ldr	r2, [fp, #4]
     b8c:	e51b3010 	ldr	r3, [fp, #-16]
     b90:	e0823003 	add	r3, r2, r3
     b94:	e5d33000 	ldrb	r3, [r3]
     b98:	e3530000 	cmp	r3, #0
     b9c:	1affff84 	bne	9b4 <printf+0x30>
     ba0:	e1a00000 	nop			@ (mov r0, r0)
     ba4:	e1a00000 	nop			@ (mov r0, r0)
     ba8:	e24bd004 	sub	sp, fp, #4
     bac:	e8bd4800 	pop	{fp, lr}
     bb0:	e28dd00c 	add	sp, sp, #12
     bb4:	e12fff1e 	bx	lr
     bb8:	00001040 	.word	0x00001040

00000bbc <free>:
     bbc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bc0:	e28db000 	add	fp, sp, #0
     bc4:	e24dd014 	sub	sp, sp, #20
     bc8:	e50b0010 	str	r0, [fp, #-16]
     bcc:	e51b3010 	ldr	r3, [fp, #-16]
     bd0:	e2433008 	sub	r3, r3, #8
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	e59f3154 	ldr	r3, [pc, #340]	@ d34 <free+0x178>
     bdc:	e5933000 	ldr	r3, [r3]
     be0:	e50b3008 	str	r3, [fp, #-8]
     be4:	ea000010 	b	c2c <free+0x70>
     be8:	e51b3008 	ldr	r3, [fp, #-8]
     bec:	e5933000 	ldr	r3, [r3]
     bf0:	e51b2008 	ldr	r2, [fp, #-8]
     bf4:	e1520003 	cmp	r2, r3
     bf8:	3a000008 	bcc	c20 <free+0x64>
     bfc:	e51b200c 	ldr	r2, [fp, #-12]
     c00:	e51b3008 	ldr	r3, [fp, #-8]
     c04:	e1520003 	cmp	r2, r3
     c08:	8a000010 	bhi	c50 <free+0x94>
     c0c:	e51b3008 	ldr	r3, [fp, #-8]
     c10:	e5933000 	ldr	r3, [r3]
     c14:	e51b200c 	ldr	r2, [fp, #-12]
     c18:	e1520003 	cmp	r2, r3
     c1c:	3a00000b 	bcc	c50 <free+0x94>
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e50b3008 	str	r3, [fp, #-8]
     c2c:	e51b200c 	ldr	r2, [fp, #-12]
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e1520003 	cmp	r2, r3
     c38:	9affffea 	bls	be8 <free+0x2c>
     c3c:	e51b3008 	ldr	r3, [fp, #-8]
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e51b200c 	ldr	r2, [fp, #-12]
     c48:	e1520003 	cmp	r2, r3
     c4c:	2affffe5 	bcs	be8 <free+0x2c>
     c50:	e51b300c 	ldr	r3, [fp, #-12]
     c54:	e5933004 	ldr	r3, [r3, #4]
     c58:	e1a03183 	lsl	r3, r3, #3
     c5c:	e51b200c 	ldr	r2, [fp, #-12]
     c60:	e0822003 	add	r2, r2, r3
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e1520003 	cmp	r2, r3
     c70:	1a00000d 	bne	cac <free+0xf0>
     c74:	e51b300c 	ldr	r3, [fp, #-12]
     c78:	e5932004 	ldr	r2, [r3, #4]
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e5933004 	ldr	r3, [r3, #4]
     c88:	e0822003 	add	r2, r2, r3
     c8c:	e51b300c 	ldr	r3, [fp, #-12]
     c90:	e5832004 	str	r2, [r3, #4]
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e5932000 	ldr	r2, [r3]
     ca0:	e51b300c 	ldr	r3, [fp, #-12]
     ca4:	e5832000 	str	r2, [r3]
     ca8:	ea000003 	b	cbc <free+0x100>
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5932000 	ldr	r2, [r3]
     cb4:	e51b300c 	ldr	r3, [fp, #-12]
     cb8:	e5832000 	str	r2, [r3]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5933004 	ldr	r3, [r3, #4]
     cc4:	e1a03183 	lsl	r3, r3, #3
     cc8:	e51b2008 	ldr	r2, [fp, #-8]
     ccc:	e0823003 	add	r3, r2, r3
     cd0:	e51b200c 	ldr	r2, [fp, #-12]
     cd4:	e1520003 	cmp	r2, r3
     cd8:	1a00000b 	bne	d0c <free+0x150>
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e5932004 	ldr	r2, [r3, #4]
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e5933004 	ldr	r3, [r3, #4]
     cec:	e0822003 	add	r2, r2, r3
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e5832004 	str	r2, [r3, #4]
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5932000 	ldr	r2, [r3]
     d00:	e51b3008 	ldr	r3, [fp, #-8]
     d04:	e5832000 	str	r2, [r3]
     d08:	ea000002 	b	d18 <free+0x15c>
     d0c:	e51b3008 	ldr	r3, [fp, #-8]
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e5832000 	str	r2, [r3]
     d18:	e59f2014 	ldr	r2, [pc, #20]	@ d34 <free+0x178>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5823000 	str	r3, [r2]
     d24:	e1a00000 	nop			@ (mov r0, r0)
     d28:	e28bd000 	add	sp, fp, #0
     d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d30:	e12fff1e 	bx	lr
     d34:	00001064 	.word	0x00001064

00000d38 <morecore>:
     d38:	e92d4800 	push	{fp, lr}
     d3c:	e28db004 	add	fp, sp, #4
     d40:	e24dd010 	sub	sp, sp, #16
     d44:	e50b0010 	str	r0, [fp, #-16]
     d48:	e51b3010 	ldr	r3, [fp, #-16]
     d4c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d50:	2a000001 	bcs	d5c <morecore+0x24>
     d54:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d58:	e50b3010 	str	r3, [fp, #-16]
     d5c:	e51b3010 	ldr	r3, [fp, #-16]
     d60:	e1a03183 	lsl	r3, r3, #3
     d64:	e1a00003 	mov	r0, r3
     d68:	ebfffe85 	bl	784 <sbrk>
     d6c:	e50b0008 	str	r0, [fp, #-8]
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e3730001 	cmn	r3, #1
     d78:	1a000001 	bne	d84 <morecore+0x4c>
     d7c:	e3a03000 	mov	r3, #0
     d80:	ea00000a 	b	db0 <morecore+0x78>
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e50b300c 	str	r3, [fp, #-12]
     d8c:	e51b300c 	ldr	r3, [fp, #-12]
     d90:	e51b2010 	ldr	r2, [fp, #-16]
     d94:	e5832004 	str	r2, [r3, #4]
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e2833008 	add	r3, r3, #8
     da0:	e1a00003 	mov	r0, r3
     da4:	ebffff84 	bl	bbc <free>
     da8:	e59f300c 	ldr	r3, [pc, #12]	@ dbc <morecore+0x84>
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e1a00003 	mov	r0, r3
     db4:	e24bd004 	sub	sp, fp, #4
     db8:	e8bd8800 	pop	{fp, pc}
     dbc:	00001064 	.word	0x00001064

00000dc0 <malloc>:
     dc0:	e92d4800 	push	{fp, lr}
     dc4:	e28db004 	add	fp, sp, #4
     dc8:	e24dd018 	sub	sp, sp, #24
     dcc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dd0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dd4:	e2833007 	add	r3, r3, #7
     dd8:	e1a031a3 	lsr	r3, r3, #3
     ddc:	e2833001 	add	r3, r3, #1
     de0:	e50b3010 	str	r3, [fp, #-16]
     de4:	e59f3134 	ldr	r3, [pc, #308]	@ f20 <malloc+0x160>
     de8:	e5933000 	ldr	r3, [r3]
     dec:	e50b300c 	str	r3, [fp, #-12]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e3530000 	cmp	r3, #0
     df8:	1a00000b 	bne	e2c <malloc+0x6c>
     dfc:	e59f3120 	ldr	r3, [pc, #288]	@ f24 <malloc+0x164>
     e00:	e50b300c 	str	r3, [fp, #-12]
     e04:	e59f2114 	ldr	r2, [pc, #276]	@ f20 <malloc+0x160>
     e08:	e51b300c 	ldr	r3, [fp, #-12]
     e0c:	e5823000 	str	r3, [r2]
     e10:	e59f3108 	ldr	r3, [pc, #264]	@ f20 <malloc+0x160>
     e14:	e5933000 	ldr	r3, [r3]
     e18:	e59f2104 	ldr	r2, [pc, #260]	@ f24 <malloc+0x164>
     e1c:	e5823000 	str	r3, [r2]
     e20:	e59f30fc 	ldr	r3, [pc, #252]	@ f24 <malloc+0x164>
     e24:	e3a02000 	mov	r2, #0
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e50b3008 	str	r3, [fp, #-8]
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5933004 	ldr	r3, [r3, #4]
     e40:	e51b2010 	ldr	r2, [fp, #-16]
     e44:	e1520003 	cmp	r2, r3
     e48:	8a00001e 	bhi	ec8 <malloc+0x108>
     e4c:	e51b3008 	ldr	r3, [fp, #-8]
     e50:	e5933004 	ldr	r3, [r3, #4]
     e54:	e51b2010 	ldr	r2, [fp, #-16]
     e58:	e1520003 	cmp	r2, r3
     e5c:	1a000004 	bne	e74 <malloc+0xb4>
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5932000 	ldr	r2, [r3]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5832000 	str	r2, [r3]
     e70:	ea00000e 	b	eb0 <malloc+0xf0>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5932004 	ldr	r2, [r3, #4]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e0422003 	sub	r2, r2, r3
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5832004 	str	r2, [r3, #4]
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933004 	ldr	r3, [r3, #4]
     e94:	e1a03183 	lsl	r3, r3, #3
     e98:	e51b2008 	ldr	r2, [fp, #-8]
     e9c:	e0823003 	add	r3, r2, r3
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e51b2010 	ldr	r2, [fp, #-16]
     eac:	e5832004 	str	r2, [r3, #4]
     eb0:	e59f2068 	ldr	r2, [pc, #104]	@ f20 <malloc+0x160>
     eb4:	e51b300c 	ldr	r3, [fp, #-12]
     eb8:	e5823000 	str	r3, [r2]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e2833008 	add	r3, r3, #8
     ec4:	ea000012 	b	f14 <malloc+0x154>
     ec8:	e59f3050 	ldr	r3, [pc, #80]	@ f20 <malloc+0x160>
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e51b2008 	ldr	r2, [fp, #-8]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	1a000007 	bne	efc <malloc+0x13c>
     edc:	e51b0010 	ldr	r0, [fp, #-16]
     ee0:	ebffff94 	bl	d38 <morecore>
     ee4:	e50b0008 	str	r0, [fp, #-8]
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e3530000 	cmp	r3, #0
     ef0:	1a000001 	bne	efc <malloc+0x13c>
     ef4:	e3a03000 	mov	r3, #0
     ef8:	ea000005 	b	f14 <malloc+0x154>
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e5933000 	ldr	r3, [r3]
     f0c:	e50b3008 	str	r3, [fp, #-8]
     f10:	eaffffc8 	b	e38 <malloc+0x78>
     f14:	e1a00003 	mov	r0, r3
     f18:	e24bd004 	sub	sp, fp, #4
     f1c:	e8bd8800 	pop	{fp, pc}
     f20:	00001064 	.word	0x00001064
     f24:	0000105c 	.word	0x0000105c

00000f28 <__udivsi3>:
     f28:	e2512001 	subs	r2, r1, #1
     f2c:	012fff1e 	bxeq	lr
     f30:	3a000036 	bcc	1010 <__udivsi3+0xe8>
     f34:	e1500001 	cmp	r0, r1
     f38:	9a000022 	bls	fc8 <__udivsi3+0xa0>
     f3c:	e1110002 	tst	r1, r2
     f40:	0a000023 	beq	fd4 <__udivsi3+0xac>
     f44:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f48:	01a01181 	lsleq	r1, r1, #3
     f4c:	03a03008 	moveq	r3, #8
     f50:	13a03001 	movne	r3, #1
     f54:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f58:	31510000 	cmpcc	r1, r0
     f5c:	31a01201 	lslcc	r1, r1, #4
     f60:	31a03203 	lslcc	r3, r3, #4
     f64:	3afffffa 	bcc	f54 <__udivsi3+0x2c>
     f68:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f6c:	31510000 	cmpcc	r1, r0
     f70:	31a01081 	lslcc	r1, r1, #1
     f74:	31a03083 	lslcc	r3, r3, #1
     f78:	3afffffa 	bcc	f68 <__udivsi3+0x40>
     f7c:	e3a02000 	mov	r2, #0
     f80:	e1500001 	cmp	r0, r1
     f84:	20400001 	subcs	r0, r0, r1
     f88:	21822003 	orrcs	r2, r2, r3
     f8c:	e15000a1 	cmp	r0, r1, lsr #1
     f90:	204000a1 	subcs	r0, r0, r1, lsr #1
     f94:	218220a3 	orrcs	r2, r2, r3, lsr #1
     f98:	e1500121 	cmp	r0, r1, lsr #2
     f9c:	20400121 	subcs	r0, r0, r1, lsr #2
     fa0:	21822123 	orrcs	r2, r2, r3, lsr #2
     fa4:	e15001a1 	cmp	r0, r1, lsr #3
     fa8:	204001a1 	subcs	r0, r0, r1, lsr #3
     fac:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fb0:	e3500000 	cmp	r0, #0
     fb4:	11b03223 	lsrsne	r3, r3, #4
     fb8:	11a01221 	lsrne	r1, r1, #4
     fbc:	1affffef 	bne	f80 <__udivsi3+0x58>
     fc0:	e1a00002 	mov	r0, r2
     fc4:	e12fff1e 	bx	lr
     fc8:	03a00001 	moveq	r0, #1
     fcc:	13a00000 	movne	r0, #0
     fd0:	e12fff1e 	bx	lr
     fd4:	e3510801 	cmp	r1, #65536	@ 0x10000
     fd8:	21a01821 	lsrcs	r1, r1, #16
     fdc:	23a02010 	movcs	r2, #16
     fe0:	33a02000 	movcc	r2, #0
     fe4:	e3510c01 	cmp	r1, #256	@ 0x100
     fe8:	21a01421 	lsrcs	r1, r1, #8
     fec:	22822008 	addcs	r2, r2, #8
     ff0:	e3510010 	cmp	r1, #16
     ff4:	21a01221 	lsrcs	r1, r1, #4
     ff8:	22822004 	addcs	r2, r2, #4
     ffc:	e3510004 	cmp	r1, #4
    1000:	82822003 	addhi	r2, r2, #3
    1004:	908220a1 	addls	r2, r2, r1, lsr #1
    1008:	e1a00230 	lsr	r0, r0, r2
    100c:	e12fff1e 	bx	lr
    1010:	e3500000 	cmp	r0, #0
    1014:	13e00000 	mvnne	r0, #0
    1018:	ea000007 	b	103c <__aeabi_idiv0>

0000101c <__aeabi_uidivmod>:
    101c:	e3510000 	cmp	r1, #0
    1020:	0afffffa 	beq	1010 <__udivsi3+0xe8>
    1024:	e92d4003 	push	{r0, r1, lr}
    1028:	ebffffbe 	bl	f28 <__udivsi3>
    102c:	e8bd4006 	pop	{r1, r2, lr}
    1030:	e0030092 	mul	r3, r2, r0
    1034:	e0411003 	sub	r1, r1, r3
    1038:	e12fff1e 	bx	lr

0000103c <__aeabi_idiv0>:
    103c:	e12fff1e 	bx	lr
