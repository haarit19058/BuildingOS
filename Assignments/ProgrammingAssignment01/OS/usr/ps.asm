
_ps:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	eb0001f3 	bl	7e8 <ps>
      18:	eb00013e 	bl	518 <exit>

0000001c <strcpy>:
      1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      20:	e28db000 	add	fp, sp, #0
      24:	e24dd014 	sub	sp, sp, #20
      28:	e50b0010 	str	r0, [fp, #-16]
      2c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      30:	e51b3010 	ldr	r3, [fp, #-16]
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	e1a00000 	nop			@ (mov r0, r0)
      3c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      40:	e2823001 	add	r3, r2, #1
      44:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e2831001 	add	r1, r3, #1
      50:	e50b1010 	str	r1, [fp, #-16]
      54:	e5d22000 	ldrb	r2, [r2]
      58:	e5c32000 	strb	r2, [r3]
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e3530000 	cmp	r3, #0
      64:	1afffff4 	bne	3c <strcpy+0x20>
      68:	e51b3008 	ldr	r3, [fp, #-8]
      6c:	e1a00003 	mov	r0, r3
      70:	e28bd000 	add	sp, fp, #0
      74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      78:	e12fff1e 	bx	lr

0000007c <strcmp>:
      7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      80:	e28db000 	add	fp, sp, #0
      84:	e24dd00c 	sub	sp, sp, #12
      88:	e50b0008 	str	r0, [fp, #-8]
      8c:	e50b100c 	str	r1, [fp, #-12]
      90:	ea000005 	b	ac <strcmp+0x30>
      94:	e51b3008 	ldr	r3, [fp, #-8]
      98:	e2833001 	add	r3, r3, #1
      9c:	e50b3008 	str	r3, [fp, #-8]
      a0:	e51b300c 	ldr	r3, [fp, #-12]
      a4:	e2833001 	add	r3, r3, #1
      a8:	e50b300c 	str	r3, [fp, #-12]
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e5d33000 	ldrb	r3, [r3]
      b4:	e3530000 	cmp	r3, #0
      b8:	0a000005 	beq	d4 <strcmp+0x58>
      bc:	e51b3008 	ldr	r3, [fp, #-8]
      c0:	e5d32000 	ldrb	r2, [r3]
      c4:	e51b300c 	ldr	r3, [fp, #-12]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e1520003 	cmp	r2, r3
      d0:	0affffef 	beq	94 <strcmp+0x18>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e5d33000 	ldrb	r3, [r3]
      dc:	e1a02003 	mov	r2, r3
      e0:	e51b300c 	ldr	r3, [fp, #-12]
      e4:	e5d33000 	ldrb	r3, [r3]
      e8:	e0423003 	sub	r3, r2, r3
      ec:	e1a00003 	mov	r0, r3
      f0:	e28bd000 	add	sp, fp, #0
      f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      f8:	e12fff1e 	bx	lr

000000fc <strlen>:
      fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     100:	e28db000 	add	fp, sp, #0
     104:	e24dd014 	sub	sp, sp, #20
     108:	e50b0010 	str	r0, [fp, #-16]
     10c:	e3a03000 	mov	r3, #0
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	ea000002 	b	124 <strlen+0x28>
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e2833001 	add	r3, r3, #1
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	e51b3008 	ldr	r3, [fp, #-8]
     128:	e51b2010 	ldr	r2, [fp, #-16]
     12c:	e0823003 	add	r3, r2, r3
     130:	e5d33000 	ldrb	r3, [r3]
     134:	e3530000 	cmp	r3, #0
     138:	1afffff6 	bne	118 <strlen+0x1c>
     13c:	e51b3008 	ldr	r3, [fp, #-8]
     140:	e1a00003 	mov	r0, r3
     144:	e28bd000 	add	sp, fp, #0
     148:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     14c:	e12fff1e 	bx	lr

00000150 <memset>:
     150:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     154:	e28db000 	add	fp, sp, #0
     158:	e24dd024 	sub	sp, sp, #36	@ 0x24
     15c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     160:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     164:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     168:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     16c:	e50b3008 	str	r3, [fp, #-8]
     170:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     174:	e54b300d 	strb	r3, [fp, #-13]
     178:	e55b200d 	ldrb	r2, [fp, #-13]
     17c:	e1a03002 	mov	r3, r2
     180:	e1a03403 	lsl	r3, r3, #8
     184:	e0833002 	add	r3, r3, r2
     188:	e1a03803 	lsl	r3, r3, #16
     18c:	e1a02003 	mov	r2, r3
     190:	e55b300d 	ldrb	r3, [fp, #-13]
     194:	e1a03403 	lsl	r3, r3, #8
     198:	e1822003 	orr	r2, r2, r3
     19c:	e55b300d 	ldrb	r3, [fp, #-13]
     1a0:	e1823003 	orr	r3, r2, r3
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	ea000008 	b	1d0 <memset+0x80>
     1ac:	e51b3008 	ldr	r3, [fp, #-8]
     1b0:	e55b200d 	ldrb	r2, [fp, #-13]
     1b4:	e5c32000 	strb	r2, [r3]
     1b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1bc:	e2433001 	sub	r3, r3, #1
     1c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     1c4:	e51b3008 	ldr	r3, [fp, #-8]
     1c8:	e2833001 	add	r3, r3, #1
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e3530000 	cmp	r3, #0
     1d8:	0a000003 	beq	1ec <memset+0x9c>
     1dc:	e51b3008 	ldr	r3, [fp, #-8]
     1e0:	e2033003 	and	r3, r3, #3
     1e4:	e3530000 	cmp	r3, #0
     1e8:	1affffef 	bne	1ac <memset+0x5c>
     1ec:	e51b3008 	ldr	r3, [fp, #-8]
     1f0:	e50b300c 	str	r3, [fp, #-12]
     1f4:	ea000008 	b	21c <memset+0xcc>
     1f8:	e51b300c 	ldr	r3, [fp, #-12]
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e5832000 	str	r2, [r3]
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e2433004 	sub	r3, r3, #4
     20c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2833004 	add	r3, r3, #4
     218:	e50b300c 	str	r3, [fp, #-12]
     21c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     220:	e3530003 	cmp	r3, #3
     224:	8afffff3 	bhi	1f8 <memset+0xa8>
     228:	e51b300c 	ldr	r3, [fp, #-12]
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000008 	b	258 <memset+0x108>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e55b200d 	ldrb	r2, [fp, #-13]
     23c:	e5c32000 	strb	r2, [r3]
     240:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     244:	e2433001 	sub	r3, r3, #1
     248:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e2833001 	add	r3, r3, #1
     254:	e50b3008 	str	r3, [fp, #-8]
     258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     25c:	e3530000 	cmp	r3, #0
     260:	1afffff3 	bne	234 <memset+0xe4>
     264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     268:	e1a00003 	mov	r0, r3
     26c:	e28bd000 	add	sp, fp, #0
     270:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     274:	e12fff1e 	bx	lr

00000278 <strchr>:
     278:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     27c:	e28db000 	add	fp, sp, #0
     280:	e24dd00c 	sub	sp, sp, #12
     284:	e50b0008 	str	r0, [fp, #-8]
     288:	e1a03001 	mov	r3, r1
     28c:	e54b3009 	strb	r3, [fp, #-9]
     290:	ea000009 	b	2bc <strchr+0x44>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e5d33000 	ldrb	r3, [r3]
     29c:	e55b2009 	ldrb	r2, [fp, #-9]
     2a0:	e1520003 	cmp	r2, r3
     2a4:	1a000001 	bne	2b0 <strchr+0x38>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	ea000007 	b	2d0 <strchr+0x58>
     2b0:	e51b3008 	ldr	r3, [fp, #-8]
     2b4:	e2833001 	add	r3, r3, #1
     2b8:	e50b3008 	str	r3, [fp, #-8]
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e5d33000 	ldrb	r3, [r3]
     2c4:	e3530000 	cmp	r3, #0
     2c8:	1afffff1 	bne	294 <strchr+0x1c>
     2cc:	e3a03000 	mov	r3, #0
     2d0:	e1a00003 	mov	r0, r3
     2d4:	e28bd000 	add	sp, fp, #0
     2d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2dc:	e12fff1e 	bx	lr

000002e0 <gets>:
     2e0:	e92d4800 	push	{fp, lr}
     2e4:	e28db004 	add	fp, sp, #4
     2e8:	e24dd018 	sub	sp, sp, #24
     2ec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2f0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2f4:	e3a03000 	mov	r3, #0
     2f8:	e50b3008 	str	r3, [fp, #-8]
     2fc:	ea000016 	b	35c <gets+0x7c>
     300:	e24b300d 	sub	r3, fp, #13
     304:	e3a02001 	mov	r2, #1
     308:	e1a01003 	mov	r1, r3
     30c:	e3a00000 	mov	r0, #0
     310:	eb00009b 	bl	584 <read>
     314:	e50b000c 	str	r0, [fp, #-12]
     318:	e51b300c 	ldr	r3, [fp, #-12]
     31c:	e3530000 	cmp	r3, #0
     320:	da000013 	ble	374 <gets+0x94>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2832001 	add	r2, r3, #1
     32c:	e50b2008 	str	r2, [fp, #-8]
     330:	e1a02003 	mov	r2, r3
     334:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     338:	e0833002 	add	r3, r3, r2
     33c:	e55b200d 	ldrb	r2, [fp, #-13]
     340:	e5c32000 	strb	r2, [r3]
     344:	e55b300d 	ldrb	r3, [fp, #-13]
     348:	e353000a 	cmp	r3, #10
     34c:	0a000009 	beq	378 <gets+0x98>
     350:	e55b300d 	ldrb	r3, [fp, #-13]
     354:	e353000d 	cmp	r3, #13
     358:	0a000006 	beq	378 <gets+0x98>
     35c:	e51b3008 	ldr	r3, [fp, #-8]
     360:	e2833001 	add	r3, r3, #1
     364:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     368:	e1520003 	cmp	r2, r3
     36c:	caffffe3 	bgt	300 <gets+0x20>
     370:	ea000000 	b	378 <gets+0x98>
     374:	e1a00000 	nop			@ (mov r0, r0)
     378:	e51b3008 	ldr	r3, [fp, #-8]
     37c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     380:	e0823003 	add	r3, r2, r3
     384:	e3a02000 	mov	r2, #0
     388:	e5c32000 	strb	r2, [r3]
     38c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     390:	e1a00003 	mov	r0, r3
     394:	e24bd004 	sub	sp, fp, #4
     398:	e8bd8800 	pop	{fp, pc}

0000039c <stat>:
     39c:	e92d4800 	push	{fp, lr}
     3a0:	e28db004 	add	fp, sp, #4
     3a4:	e24dd010 	sub	sp, sp, #16
     3a8:	e50b0010 	str	r0, [fp, #-16]
     3ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b0:	e3a01000 	mov	r1, #0
     3b4:	e51b0010 	ldr	r0, [fp, #-16]
     3b8:	eb00009e 	bl	638 <open>
     3bc:	e50b0008 	str	r0, [fp, #-8]
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e3530000 	cmp	r3, #0
     3c8:	aa000001 	bge	3d4 <stat+0x38>
     3cc:	e3e03000 	mvn	r3, #0
     3d0:	ea000006 	b	3f0 <stat+0x54>
     3d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     3d8:	e51b0008 	ldr	r0, [fp, #-8]
     3dc:	eb0000b0 	bl	6a4 <fstat>
     3e0:	e50b000c 	str	r0, [fp, #-12]
     3e4:	e51b0008 	ldr	r0, [fp, #-8]
     3e8:	eb000077 	bl	5cc <close>
     3ec:	e51b300c 	ldr	r3, [fp, #-12]
     3f0:	e1a00003 	mov	r0, r3
     3f4:	e24bd004 	sub	sp, fp, #4
     3f8:	e8bd8800 	pop	{fp, pc}

000003fc <atoi>:
     3fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     400:	e28db000 	add	fp, sp, #0
     404:	e24dd014 	sub	sp, sp, #20
     408:	e50b0010 	str	r0, [fp, #-16]
     40c:	e3a03000 	mov	r3, #0
     410:	e50b3008 	str	r3, [fp, #-8]
     414:	ea00000c 	b	44c <atoi+0x50>
     418:	e51b2008 	ldr	r2, [fp, #-8]
     41c:	e1a03002 	mov	r3, r2
     420:	e1a03103 	lsl	r3, r3, #2
     424:	e0833002 	add	r3, r3, r2
     428:	e1a03083 	lsl	r3, r3, #1
     42c:	e1a01003 	mov	r1, r3
     430:	e51b3010 	ldr	r3, [fp, #-16]
     434:	e2832001 	add	r2, r3, #1
     438:	e50b2010 	str	r2, [fp, #-16]
     43c:	e5d33000 	ldrb	r3, [r3]
     440:	e0813003 	add	r3, r1, r3
     444:	e2433030 	sub	r3, r3, #48	@ 0x30
     448:	e50b3008 	str	r3, [fp, #-8]
     44c:	e51b3010 	ldr	r3, [fp, #-16]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e353002f 	cmp	r3, #47	@ 0x2f
     458:	9a000003 	bls	46c <atoi+0x70>
     45c:	e51b3010 	ldr	r3, [fp, #-16]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e3530039 	cmp	r3, #57	@ 0x39
     468:	9affffea 	bls	418 <atoi+0x1c>
     46c:	e51b3008 	ldr	r3, [fp, #-8]
     470:	e1a00003 	mov	r0, r3
     474:	e28bd000 	add	sp, fp, #0
     478:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     47c:	e12fff1e 	bx	lr

00000480 <memmove>:
     480:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     484:	e28db000 	add	fp, sp, #0
     488:	e24dd01c 	sub	sp, sp, #28
     48c:	e50b0010 	str	r0, [fp, #-16]
     490:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     494:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     498:	e51b3010 	ldr	r3, [fp, #-16]
     49c:	e50b3008 	str	r3, [fp, #-8]
     4a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     4a4:	e50b300c 	str	r3, [fp, #-12]
     4a8:	ea000007 	b	4cc <memmove+0x4c>
     4ac:	e51b200c 	ldr	r2, [fp, #-12]
     4b0:	e2823001 	add	r3, r2, #1
     4b4:	e50b300c 	str	r3, [fp, #-12]
     4b8:	e51b3008 	ldr	r3, [fp, #-8]
     4bc:	e2831001 	add	r1, r3, #1
     4c0:	e50b1008 	str	r1, [fp, #-8]
     4c4:	e5d22000 	ldrb	r2, [r2]
     4c8:	e5c32000 	strb	r2, [r3]
     4cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4d0:	e2432001 	sub	r2, r3, #1
     4d4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4d8:	e3530000 	cmp	r3, #0
     4dc:	cafffff2 	bgt	4ac <memmove+0x2c>
     4e0:	e51b3010 	ldr	r3, [fp, #-16]
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e28bd000 	add	sp, fp, #0
     4ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f0:	e12fff1e 	bx	lr

000004f4 <fork>:
     4f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     4f8:	e1a04003 	mov	r4, r3
     4fc:	e1a03002 	mov	r3, r2
     500:	e1a02001 	mov	r2, r1
     504:	e1a01000 	mov	r1, r0
     508:	e3a00001 	mov	r0, #1
     50c:	ef000000 	svc	0x00000000
     510:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     514:	e12fff1e 	bx	lr

00000518 <exit>:
     518:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     51c:	e1a04003 	mov	r4, r3
     520:	e1a03002 	mov	r3, r2
     524:	e1a02001 	mov	r2, r1
     528:	e1a01000 	mov	r1, r0
     52c:	e3a00002 	mov	r0, #2
     530:	ef000000 	svc	0x00000000
     534:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     538:	e12fff1e 	bx	lr

0000053c <wait>:
     53c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     540:	e1a04003 	mov	r4, r3
     544:	e1a03002 	mov	r3, r2
     548:	e1a02001 	mov	r2, r1
     54c:	e1a01000 	mov	r1, r0
     550:	e3a00003 	mov	r0, #3
     554:	ef000000 	svc	0x00000000
     558:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <pipe>:
     560:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00004 	mov	r0, #4
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <read>:
     584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00005 	mov	r0, #5
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <write>:
     5a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00010 	mov	r0, #16
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <close>:
     5cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00015 	mov	r0, #21
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <kill>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00006 	mov	r0, #6
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <exec>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00007 	mov	r0, #7
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <open>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a0000f 	mov	r0, #15
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <mknod>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00011 	mov	r0, #17
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <unlink>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00012 	mov	r0, #18
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <fstat>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a00008 	mov	r0, #8
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <link>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00013 	mov	r0, #19
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <mkdir>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00014 	mov	r0, #20
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <chdir>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00009 	mov	r0, #9
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <dup>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a0000a 	mov	r0, #10
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <getpid>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a0000b 	mov	r0, #11
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <sbrk>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a0000c 	mov	r0, #12
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <sleep>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000d 	mov	r0, #13
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <uptime>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000e 	mov	r0, #14
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <ps>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a00016 	mov	r0, #22
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <putc>:
     80c:	e92d4800 	push	{fp, lr}
     810:	e28db004 	add	fp, sp, #4
     814:	e24dd008 	sub	sp, sp, #8
     818:	e50b0008 	str	r0, [fp, #-8]
     81c:	e1a03001 	mov	r3, r1
     820:	e54b3009 	strb	r3, [fp, #-9]
     824:	e24b3009 	sub	r3, fp, #9
     828:	e3a02001 	mov	r2, #1
     82c:	e1a01003 	mov	r1, r3
     830:	e51b0008 	ldr	r0, [fp, #-8]
     834:	ebffff5b 	bl	5a8 <write>
     838:	e1a00000 	nop			@ (mov r0, r0)
     83c:	e24bd004 	sub	sp, fp, #4
     840:	e8bd8800 	pop	{fp, pc}

00000844 <printint>:
     844:	e92d4800 	push	{fp, lr}
     848:	e28db004 	add	fp, sp, #4
     84c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     850:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     854:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     858:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     85c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     860:	e3a03000 	mov	r3, #0
     864:	e50b300c 	str	r3, [fp, #-12]
     868:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     86c:	e3530000 	cmp	r3, #0
     870:	0a000008 	beq	898 <printint+0x54>
     874:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     878:	e3530000 	cmp	r3, #0
     87c:	aa000005 	bge	898 <printint+0x54>
     880:	e3a03001 	mov	r3, #1
     884:	e50b300c 	str	r3, [fp, #-12]
     888:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     88c:	e2633000 	rsb	r3, r3, #0
     890:	e50b3010 	str	r3, [fp, #-16]
     894:	ea000001 	b	8a0 <printint+0x5c>
     898:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     89c:	e50b3010 	str	r3, [fp, #-16]
     8a0:	e3a03000 	mov	r3, #0
     8a4:	e50b3008 	str	r3, [fp, #-8]
     8a8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8ac:	e51b3010 	ldr	r3, [fp, #-16]
     8b0:	e1a01002 	mov	r1, r2
     8b4:	e1a00003 	mov	r0, r3
     8b8:	eb0001d5 	bl	1014 <__aeabi_uidivmod>
     8bc:	e1a03001 	mov	r3, r1
     8c0:	e1a01003 	mov	r1, r3
     8c4:	e51b3008 	ldr	r3, [fp, #-8]
     8c8:	e2832001 	add	r2, r3, #1
     8cc:	e50b2008 	str	r2, [fp, #-8]
     8d0:	e59f20a0 	ldr	r2, [pc, #160]	@ 978 <printint+0x134>
     8d4:	e7d22001 	ldrb	r2, [r2, r1]
     8d8:	e2433004 	sub	r3, r3, #4
     8dc:	e083300b 	add	r3, r3, fp
     8e0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     8e4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     8e8:	e1a01003 	mov	r1, r3
     8ec:	e51b0010 	ldr	r0, [fp, #-16]
     8f0:	eb00018a 	bl	f20 <__udivsi3>
     8f4:	e1a03000 	mov	r3, r0
     8f8:	e50b3010 	str	r3, [fp, #-16]
     8fc:	e51b3010 	ldr	r3, [fp, #-16]
     900:	e3530000 	cmp	r3, #0
     904:	1affffe7 	bne	8a8 <printint+0x64>
     908:	e51b300c 	ldr	r3, [fp, #-12]
     90c:	e3530000 	cmp	r3, #0
     910:	0a00000e 	beq	950 <printint+0x10c>
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e2832001 	add	r2, r3, #1
     91c:	e50b2008 	str	r2, [fp, #-8]
     920:	e2433004 	sub	r3, r3, #4
     924:	e083300b 	add	r3, r3, fp
     928:	e3a0202d 	mov	r2, #45	@ 0x2d
     92c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     930:	ea000006 	b	950 <printint+0x10c>
     934:	e24b2020 	sub	r2, fp, #32
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e0823003 	add	r3, r2, r3
     940:	e5d33000 	ldrb	r3, [r3]
     944:	e1a01003 	mov	r1, r3
     948:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     94c:	ebffffae 	bl	80c <putc>
     950:	e51b3008 	ldr	r3, [fp, #-8]
     954:	e2433001 	sub	r3, r3, #1
     958:	e50b3008 	str	r3, [fp, #-8]
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e3530000 	cmp	r3, #0
     964:	aafffff2 	bge	934 <printint+0xf0>
     968:	e1a00000 	nop			@ (mov r0, r0)
     96c:	e1a00000 	nop			@ (mov r0, r0)
     970:	e24bd004 	sub	sp, fp, #4
     974:	e8bd8800 	pop	{fp, pc}
     978:	00001040 	.word	0x00001040

0000097c <printf>:
     97c:	e92d000e 	push	{r1, r2, r3}
     980:	e92d4800 	push	{fp, lr}
     984:	e28db004 	add	fp, sp, #4
     988:	e24dd024 	sub	sp, sp, #36	@ 0x24
     98c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     990:	e3a03000 	mov	r3, #0
     994:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     998:	e28b3008 	add	r3, fp, #8
     99c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9a0:	e3a03000 	mov	r3, #0
     9a4:	e50b3010 	str	r3, [fp, #-16]
     9a8:	ea000074 	b	b80 <printf+0x204>
     9ac:	e59b2004 	ldr	r2, [fp, #4]
     9b0:	e51b3010 	ldr	r3, [fp, #-16]
     9b4:	e0823003 	add	r3, r2, r3
     9b8:	e5d33000 	ldrb	r3, [r3]
     9bc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     9c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9c4:	e3530000 	cmp	r3, #0
     9c8:	1a00000b 	bne	9fc <printf+0x80>
     9cc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9d0:	e3530025 	cmp	r3, #37	@ 0x25
     9d4:	1a000002 	bne	9e4 <printf+0x68>
     9d8:	e3a03025 	mov	r3, #37	@ 0x25
     9dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9e0:	ea000063 	b	b74 <printf+0x1f8>
     9e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     9e8:	e6ef3073 	uxtb	r3, r3
     9ec:	e1a01003 	mov	r1, r3
     9f0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     9f4:	ebffff84 	bl	80c <putc>
     9f8:	ea00005d 	b	b74 <printf+0x1f8>
     9fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a00:	e3530025 	cmp	r3, #37	@ 0x25
     a04:	1a00005a 	bne	b74 <printf+0x1f8>
     a08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a0c:	e3530064 	cmp	r3, #100	@ 0x64
     a10:	1a00000a 	bne	a40 <printf+0xc4>
     a14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a18:	e5933000 	ldr	r3, [r3]
     a1c:	e1a01003 	mov	r1, r3
     a20:	e3a03001 	mov	r3, #1
     a24:	e3a0200a 	mov	r2, #10
     a28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a2c:	ebffff84 	bl	844 <printint>
     a30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a34:	e2833004 	add	r3, r3, #4
     a38:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a3c:	ea00004a 	b	b6c <printf+0x1f0>
     a40:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a44:	e3530078 	cmp	r3, #120	@ 0x78
     a48:	0a000002 	beq	a58 <printf+0xdc>
     a4c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a50:	e3530070 	cmp	r3, #112	@ 0x70
     a54:	1a00000a 	bne	a84 <printf+0x108>
     a58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a5c:	e5933000 	ldr	r3, [r3]
     a60:	e1a01003 	mov	r1, r3
     a64:	e3a03000 	mov	r3, #0
     a68:	e3a02010 	mov	r2, #16
     a6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a70:	ebffff73 	bl	844 <printint>
     a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a78:	e2833004 	add	r3, r3, #4
     a7c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a80:	ea000039 	b	b6c <printf+0x1f0>
     a84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a88:	e3530073 	cmp	r3, #115	@ 0x73
     a8c:	1a000018 	bne	af4 <printf+0x178>
     a90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a94:	e5933000 	ldr	r3, [r3]
     a98:	e50b300c 	str	r3, [fp, #-12]
     a9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa0:	e2833004 	add	r3, r3, #4
     aa4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	e51b300c 	ldr	r3, [fp, #-12]
     aac:	e3530000 	cmp	r3, #0
     ab0:	1a00000a 	bne	ae0 <printf+0x164>
     ab4:	e59f30f4 	ldr	r3, [pc, #244]	@ bb0 <printf+0x234>
     ab8:	e50b300c 	str	r3, [fp, #-12]
     abc:	ea000007 	b	ae0 <printf+0x164>
     ac0:	e51b300c 	ldr	r3, [fp, #-12]
     ac4:	e5d33000 	ldrb	r3, [r3]
     ac8:	e1a01003 	mov	r1, r3
     acc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ad0:	ebffff4d 	bl	80c <putc>
     ad4:	e51b300c 	ldr	r3, [fp, #-12]
     ad8:	e2833001 	add	r3, r3, #1
     adc:	e50b300c 	str	r3, [fp, #-12]
     ae0:	e51b300c 	ldr	r3, [fp, #-12]
     ae4:	e5d33000 	ldrb	r3, [r3]
     ae8:	e3530000 	cmp	r3, #0
     aec:	1afffff3 	bne	ac0 <printf+0x144>
     af0:	ea00001d 	b	b6c <printf+0x1f0>
     af4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af8:	e3530063 	cmp	r3, #99	@ 0x63
     afc:	1a000009 	bne	b28 <printf+0x1ac>
     b00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b04:	e5933000 	ldr	r3, [r3]
     b08:	e6ef3073 	uxtb	r3, r3
     b0c:	e1a01003 	mov	r1, r3
     b10:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b14:	ebffff3c 	bl	80c <putc>
     b18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b1c:	e2833004 	add	r3, r3, #4
     b20:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b24:	ea000010 	b	b6c <printf+0x1f0>
     b28:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b2c:	e3530025 	cmp	r3, #37	@ 0x25
     b30:	1a000005 	bne	b4c <printf+0x1d0>
     b34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b38:	e6ef3073 	uxtb	r3, r3
     b3c:	e1a01003 	mov	r1, r3
     b40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b44:	ebffff30 	bl	80c <putc>
     b48:	ea000007 	b	b6c <printf+0x1f0>
     b4c:	e3a01025 	mov	r1, #37	@ 0x25
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff2c 	bl	80c <putc>
     b58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b5c:	e6ef3073 	uxtb	r3, r3
     b60:	e1a01003 	mov	r1, r3
     b64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b68:	ebffff27 	bl	80c <putc>
     b6c:	e3a03000 	mov	r3, #0
     b70:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b74:	e51b3010 	ldr	r3, [fp, #-16]
     b78:	e2833001 	add	r3, r3, #1
     b7c:	e50b3010 	str	r3, [fp, #-16]
     b80:	e59b2004 	ldr	r2, [fp, #4]
     b84:	e51b3010 	ldr	r3, [fp, #-16]
     b88:	e0823003 	add	r3, r2, r3
     b8c:	e5d33000 	ldrb	r3, [r3]
     b90:	e3530000 	cmp	r3, #0
     b94:	1affff84 	bne	9ac <printf+0x30>
     b98:	e1a00000 	nop			@ (mov r0, r0)
     b9c:	e1a00000 	nop			@ (mov r0, r0)
     ba0:	e24bd004 	sub	sp, fp, #4
     ba4:	e8bd4800 	pop	{fp, lr}
     ba8:	e28dd00c 	add	sp, sp, #12
     bac:	e12fff1e 	bx	lr
     bb0:	00001038 	.word	0x00001038

00000bb4 <free>:
     bb4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     bb8:	e28db000 	add	fp, sp, #0
     bbc:	e24dd014 	sub	sp, sp, #20
     bc0:	e50b0010 	str	r0, [fp, #-16]
     bc4:	e51b3010 	ldr	r3, [fp, #-16]
     bc8:	e2433008 	sub	r3, r3, #8
     bcc:	e50b300c 	str	r3, [fp, #-12]
     bd0:	e59f3154 	ldr	r3, [pc, #340]	@ d2c <free+0x178>
     bd4:	e5933000 	ldr	r3, [r3]
     bd8:	e50b3008 	str	r3, [fp, #-8]
     bdc:	ea000010 	b	c24 <free+0x70>
     be0:	e51b3008 	ldr	r3, [fp, #-8]
     be4:	e5933000 	ldr	r3, [r3]
     be8:	e51b2008 	ldr	r2, [fp, #-8]
     bec:	e1520003 	cmp	r2, r3
     bf0:	3a000008 	bcc	c18 <free+0x64>
     bf4:	e51b200c 	ldr	r2, [fp, #-12]
     bf8:	e51b3008 	ldr	r3, [fp, #-8]
     bfc:	e1520003 	cmp	r2, r3
     c00:	8a000010 	bhi	c48 <free+0x94>
     c04:	e51b3008 	ldr	r3, [fp, #-8]
     c08:	e5933000 	ldr	r3, [r3]
     c0c:	e51b200c 	ldr	r2, [fp, #-12]
     c10:	e1520003 	cmp	r2, r3
     c14:	3a00000b 	bcc	c48 <free+0x94>
     c18:	e51b3008 	ldr	r3, [fp, #-8]
     c1c:	e5933000 	ldr	r3, [r3]
     c20:	e50b3008 	str	r3, [fp, #-8]
     c24:	e51b200c 	ldr	r2, [fp, #-12]
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e1520003 	cmp	r2, r3
     c30:	9affffea 	bls	be0 <free+0x2c>
     c34:	e51b3008 	ldr	r3, [fp, #-8]
     c38:	e5933000 	ldr	r3, [r3]
     c3c:	e51b200c 	ldr	r2, [fp, #-12]
     c40:	e1520003 	cmp	r2, r3
     c44:	2affffe5 	bcs	be0 <free+0x2c>
     c48:	e51b300c 	ldr	r3, [fp, #-12]
     c4c:	e5933004 	ldr	r3, [r3, #4]
     c50:	e1a03183 	lsl	r3, r3, #3
     c54:	e51b200c 	ldr	r2, [fp, #-12]
     c58:	e0822003 	add	r2, r2, r3
     c5c:	e51b3008 	ldr	r3, [fp, #-8]
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e1520003 	cmp	r2, r3
     c68:	1a00000d 	bne	ca4 <free+0xf0>
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e5932004 	ldr	r2, [r3, #4]
     c74:	e51b3008 	ldr	r3, [fp, #-8]
     c78:	e5933000 	ldr	r3, [r3]
     c7c:	e5933004 	ldr	r3, [r3, #4]
     c80:	e0822003 	add	r2, r2, r3
     c84:	e51b300c 	ldr	r3, [fp, #-12]
     c88:	e5832004 	str	r2, [r3, #4]
     c8c:	e51b3008 	ldr	r3, [fp, #-8]
     c90:	e5933000 	ldr	r3, [r3]
     c94:	e5932000 	ldr	r2, [r3]
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e5832000 	str	r2, [r3]
     ca0:	ea000003 	b	cb4 <free+0x100>
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5932000 	ldr	r2, [r3]
     cac:	e51b300c 	ldr	r3, [fp, #-12]
     cb0:	e5832000 	str	r2, [r3]
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e5933004 	ldr	r3, [r3, #4]
     cbc:	e1a03183 	lsl	r3, r3, #3
     cc0:	e51b2008 	ldr	r2, [fp, #-8]
     cc4:	e0823003 	add	r3, r2, r3
     cc8:	e51b200c 	ldr	r2, [fp, #-12]
     ccc:	e1520003 	cmp	r2, r3
     cd0:	1a00000b 	bne	d04 <free+0x150>
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5932004 	ldr	r2, [r3, #4]
     cdc:	e51b300c 	ldr	r3, [fp, #-12]
     ce0:	e5933004 	ldr	r3, [r3, #4]
     ce4:	e0822003 	add	r2, r2, r3
     ce8:	e51b3008 	ldr	r3, [fp, #-8]
     cec:	e5832004 	str	r2, [r3, #4]
     cf0:	e51b300c 	ldr	r3, [fp, #-12]
     cf4:	e5932000 	ldr	r2, [r3]
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5832000 	str	r2, [r3]
     d00:	ea000002 	b	d10 <free+0x15c>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e51b200c 	ldr	r2, [fp, #-12]
     d0c:	e5832000 	str	r2, [r3]
     d10:	e59f2014 	ldr	r2, [pc, #20]	@ d2c <free+0x178>
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5823000 	str	r3, [r2]
     d1c:	e1a00000 	nop			@ (mov r0, r0)
     d20:	e28bd000 	add	sp, fp, #0
     d24:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d28:	e12fff1e 	bx	lr
     d2c:	0000105c 	.word	0x0000105c

00000d30 <morecore>:
     d30:	e92d4800 	push	{fp, lr}
     d34:	e28db004 	add	fp, sp, #4
     d38:	e24dd010 	sub	sp, sp, #16
     d3c:	e50b0010 	str	r0, [fp, #-16]
     d40:	e51b3010 	ldr	r3, [fp, #-16]
     d44:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d48:	2a000001 	bcs	d54 <morecore+0x24>
     d4c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d50:	e50b3010 	str	r3, [fp, #-16]
     d54:	e51b3010 	ldr	r3, [fp, #-16]
     d58:	e1a03183 	lsl	r3, r3, #3
     d5c:	e1a00003 	mov	r0, r3
     d60:	ebfffe85 	bl	77c <sbrk>
     d64:	e50b0008 	str	r0, [fp, #-8]
     d68:	e51b3008 	ldr	r3, [fp, #-8]
     d6c:	e3730001 	cmn	r3, #1
     d70:	1a000001 	bne	d7c <morecore+0x4c>
     d74:	e3a03000 	mov	r3, #0
     d78:	ea00000a 	b	da8 <morecore+0x78>
     d7c:	e51b3008 	ldr	r3, [fp, #-8]
     d80:	e50b300c 	str	r3, [fp, #-12]
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e51b2010 	ldr	r2, [fp, #-16]
     d8c:	e5832004 	str	r2, [r3, #4]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e2833008 	add	r3, r3, #8
     d98:	e1a00003 	mov	r0, r3
     d9c:	ebffff84 	bl	bb4 <free>
     da0:	e59f300c 	ldr	r3, [pc, #12]	@ db4 <morecore+0x84>
     da4:	e5933000 	ldr	r3, [r3]
     da8:	e1a00003 	mov	r0, r3
     dac:	e24bd004 	sub	sp, fp, #4
     db0:	e8bd8800 	pop	{fp, pc}
     db4:	0000105c 	.word	0x0000105c

00000db8 <malloc>:
     db8:	e92d4800 	push	{fp, lr}
     dbc:	e28db004 	add	fp, sp, #4
     dc0:	e24dd018 	sub	sp, sp, #24
     dc4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dc8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dcc:	e2833007 	add	r3, r3, #7
     dd0:	e1a031a3 	lsr	r3, r3, #3
     dd4:	e2833001 	add	r3, r3, #1
     dd8:	e50b3010 	str	r3, [fp, #-16]
     ddc:	e59f3134 	ldr	r3, [pc, #308]	@ f18 <malloc+0x160>
     de0:	e5933000 	ldr	r3, [r3]
     de4:	e50b300c 	str	r3, [fp, #-12]
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e3530000 	cmp	r3, #0
     df0:	1a00000b 	bne	e24 <malloc+0x6c>
     df4:	e59f3120 	ldr	r3, [pc, #288]	@ f1c <malloc+0x164>
     df8:	e50b300c 	str	r3, [fp, #-12]
     dfc:	e59f2114 	ldr	r2, [pc, #276]	@ f18 <malloc+0x160>
     e00:	e51b300c 	ldr	r3, [fp, #-12]
     e04:	e5823000 	str	r3, [r2]
     e08:	e59f3108 	ldr	r3, [pc, #264]	@ f18 <malloc+0x160>
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e59f2104 	ldr	r2, [pc, #260]	@ f1c <malloc+0x164>
     e14:	e5823000 	str	r3, [r2]
     e18:	e59f30fc 	ldr	r3, [pc, #252]	@ f1c <malloc+0x164>
     e1c:	e3a02000 	mov	r2, #0
     e20:	e5832004 	str	r2, [r3, #4]
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5933000 	ldr	r3, [r3]
     e2c:	e50b3008 	str	r3, [fp, #-8]
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5933004 	ldr	r3, [r3, #4]
     e38:	e51b2010 	ldr	r2, [fp, #-16]
     e3c:	e1520003 	cmp	r2, r3
     e40:	8a00001e 	bhi	ec0 <malloc+0x108>
     e44:	e51b3008 	ldr	r3, [fp, #-8]
     e48:	e5933004 	ldr	r3, [r3, #4]
     e4c:	e51b2010 	ldr	r2, [fp, #-16]
     e50:	e1520003 	cmp	r2, r3
     e54:	1a000004 	bne	e6c <malloc+0xb4>
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5932000 	ldr	r2, [r3]
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5832000 	str	r2, [r3]
     e68:	ea00000e 	b	ea8 <malloc+0xf0>
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e5932004 	ldr	r2, [r3, #4]
     e74:	e51b3010 	ldr	r3, [fp, #-16]
     e78:	e0422003 	sub	r2, r2, r3
     e7c:	e51b3008 	ldr	r3, [fp, #-8]
     e80:	e5832004 	str	r2, [r3, #4]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e5933004 	ldr	r3, [r3, #4]
     e8c:	e1a03183 	lsl	r3, r3, #3
     e90:	e51b2008 	ldr	r2, [fp, #-8]
     e94:	e0823003 	add	r3, r2, r3
     e98:	e50b3008 	str	r3, [fp, #-8]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e51b2010 	ldr	r2, [fp, #-16]
     ea4:	e5832004 	str	r2, [r3, #4]
     ea8:	e59f2068 	ldr	r2, [pc, #104]	@ f18 <malloc+0x160>
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e5823000 	str	r3, [r2]
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e2833008 	add	r3, r3, #8
     ebc:	ea000012 	b	f0c <malloc+0x154>
     ec0:	e59f3050 	ldr	r3, [pc, #80]	@ f18 <malloc+0x160>
     ec4:	e5933000 	ldr	r3, [r3]
     ec8:	e51b2008 	ldr	r2, [fp, #-8]
     ecc:	e1520003 	cmp	r2, r3
     ed0:	1a000007 	bne	ef4 <malloc+0x13c>
     ed4:	e51b0010 	ldr	r0, [fp, #-16]
     ed8:	ebffff94 	bl	d30 <morecore>
     edc:	e50b0008 	str	r0, [fp, #-8]
     ee0:	e51b3008 	ldr	r3, [fp, #-8]
     ee4:	e3530000 	cmp	r3, #0
     ee8:	1a000001 	bne	ef4 <malloc+0x13c>
     eec:	e3a03000 	mov	r3, #0
     ef0:	ea000005 	b	f0c <malloc+0x154>
     ef4:	e51b3008 	ldr	r3, [fp, #-8]
     ef8:	e50b300c 	str	r3, [fp, #-12]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5933000 	ldr	r3, [r3]
     f04:	e50b3008 	str	r3, [fp, #-8]
     f08:	eaffffc8 	b	e30 <malloc+0x78>
     f0c:	e1a00003 	mov	r0, r3
     f10:	e24bd004 	sub	sp, fp, #4
     f14:	e8bd8800 	pop	{fp, pc}
     f18:	0000105c 	.word	0x0000105c
     f1c:	00001054 	.word	0x00001054

00000f20 <__udivsi3>:
     f20:	e2512001 	subs	r2, r1, #1
     f24:	012fff1e 	bxeq	lr
     f28:	3a000036 	bcc	1008 <__udivsi3+0xe8>
     f2c:	e1500001 	cmp	r0, r1
     f30:	9a000022 	bls	fc0 <__udivsi3+0xa0>
     f34:	e1110002 	tst	r1, r2
     f38:	0a000023 	beq	fcc <__udivsi3+0xac>
     f3c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f40:	01a01181 	lsleq	r1, r1, #3
     f44:	03a03008 	moveq	r3, #8
     f48:	13a03001 	movne	r3, #1
     f4c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f50:	31510000 	cmpcc	r1, r0
     f54:	31a01201 	lslcc	r1, r1, #4
     f58:	31a03203 	lslcc	r3, r3, #4
     f5c:	3afffffa 	bcc	f4c <__udivsi3+0x2c>
     f60:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     f64:	31510000 	cmpcc	r1, r0
     f68:	31a01081 	lslcc	r1, r1, #1
     f6c:	31a03083 	lslcc	r3, r3, #1
     f70:	3afffffa 	bcc	f60 <__udivsi3+0x40>
     f74:	e3a02000 	mov	r2, #0
     f78:	e1500001 	cmp	r0, r1
     f7c:	20400001 	subcs	r0, r0, r1
     f80:	21822003 	orrcs	r2, r2, r3
     f84:	e15000a1 	cmp	r0, r1, lsr #1
     f88:	204000a1 	subcs	r0, r0, r1, lsr #1
     f8c:	218220a3 	orrcs	r2, r2, r3, lsr #1
     f90:	e1500121 	cmp	r0, r1, lsr #2
     f94:	20400121 	subcs	r0, r0, r1, lsr #2
     f98:	21822123 	orrcs	r2, r2, r3, lsr #2
     f9c:	e15001a1 	cmp	r0, r1, lsr #3
     fa0:	204001a1 	subcs	r0, r0, r1, lsr #3
     fa4:	218221a3 	orrcs	r2, r2, r3, lsr #3
     fa8:	e3500000 	cmp	r0, #0
     fac:	11b03223 	lsrsne	r3, r3, #4
     fb0:	11a01221 	lsrne	r1, r1, #4
     fb4:	1affffef 	bne	f78 <__udivsi3+0x58>
     fb8:	e1a00002 	mov	r0, r2
     fbc:	e12fff1e 	bx	lr
     fc0:	03a00001 	moveq	r0, #1
     fc4:	13a00000 	movne	r0, #0
     fc8:	e12fff1e 	bx	lr
     fcc:	e3510801 	cmp	r1, #65536	@ 0x10000
     fd0:	21a01821 	lsrcs	r1, r1, #16
     fd4:	23a02010 	movcs	r2, #16
     fd8:	33a02000 	movcc	r2, #0
     fdc:	e3510c01 	cmp	r1, #256	@ 0x100
     fe0:	21a01421 	lsrcs	r1, r1, #8
     fe4:	22822008 	addcs	r2, r2, #8
     fe8:	e3510010 	cmp	r1, #16
     fec:	21a01221 	lsrcs	r1, r1, #4
     ff0:	22822004 	addcs	r2, r2, #4
     ff4:	e3510004 	cmp	r1, #4
     ff8:	82822003 	addhi	r2, r2, #3
     ffc:	908220a1 	addls	r2, r2, r1, lsr #1
    1000:	e1a00230 	lsr	r0, r0, r2
    1004:	e12fff1e 	bx	lr
    1008:	e3500000 	cmp	r0, #0
    100c:	13e00000 	mvnne	r0, #0
    1010:	ea000007 	b	1034 <__aeabi_idiv0>

00001014 <__aeabi_uidivmod>:
    1014:	e3510000 	cmp	r1, #0
    1018:	0afffffa 	beq	1008 <__udivsi3+0xe8>
    101c:	e92d4003 	push	{r0, r1, lr}
    1020:	ebffffbe 	bl	f20 <__udivsi3>
    1024:	e8bd4006 	pop	{r1, r2, lr}
    1028:	e0030092 	mul	r3, r2, r0
    102c:	e0411003 	sub	r1, r1, r3
    1030:	e12fff1e 	bx	lr

00001034 <__aeabi_idiv0>:
    1034:	e12fff1e 	bx	lr
