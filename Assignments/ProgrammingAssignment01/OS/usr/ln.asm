
_ln:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e50b0008 	str	r0, [fp, #-8]
      10:	e50b100c 	str	r1, [fp, #-12]
      14:	e51b3008 	ldr	r3, [fp, #-8]
      18:	e3530003 	cmp	r3, #3
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f1060 	ldr	r1, [pc, #96]	@ 88 <main+0x88>
      24:	e3a00002 	mov	r0, #2
      28:	eb000267 	bl	9cc <printf>
      2c:	eb000156 	bl	58c <exit>
      30:	e51b300c 	ldr	r3, [fp, #-12]
      34:	e2833004 	add	r3, r3, #4
      38:	e5932000 	ldr	r2, [r3]
      3c:	e51b300c 	ldr	r3, [fp, #-12]
      40:	e2833008 	add	r3, r3, #8
      44:	e5933000 	ldr	r3, [r3]
      48:	e1a01003 	mov	r1, r3
      4c:	e1a00002 	mov	r0, r2
      50:	eb0001b9 	bl	73c <link>
      54:	e1a03000 	mov	r3, r0
      58:	e3530000 	cmp	r3, #0
      5c:	aa000008 	bge	84 <main+0x84>
      60:	e51b300c 	ldr	r3, [fp, #-12]
      64:	e2833004 	add	r3, r3, #4
      68:	e5932000 	ldr	r2, [r3]
      6c:	e51b300c 	ldr	r3, [fp, #-12]
      70:	e2833008 	add	r3, r3, #8
      74:	e5933000 	ldr	r3, [r3]
      78:	e59f100c 	ldr	r1, [pc, #12]	@ 8c <main+0x8c>
      7c:	e3a00002 	mov	r0, #2
      80:	eb000251 	bl	9cc <printf>
      84:	eb000140 	bl	58c <exit>
      88:	00001088 	.word	0x00001088
      8c:	0000109c 	.word	0x0000109c

00000090 <strcpy>:
      90:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      94:	e28db000 	add	fp, sp, #0
      98:	e24dd014 	sub	sp, sp, #20
      9c:	e50b0010 	str	r0, [fp, #-16]
      a0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      a4:	e51b3010 	ldr	r3, [fp, #-16]
      a8:	e50b3008 	str	r3, [fp, #-8]
      ac:	e1a00000 	nop			@ (mov r0, r0)
      b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b4:	e2823001 	add	r3, r2, #1
      b8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      bc:	e51b3010 	ldr	r3, [fp, #-16]
      c0:	e2831001 	add	r1, r3, #1
      c4:	e50b1010 	str	r1, [fp, #-16]
      c8:	e5d22000 	ldrb	r2, [r2]
      cc:	e5c32000 	strb	r2, [r3]
      d0:	e5d33000 	ldrb	r3, [r3]
      d4:	e3530000 	cmp	r3, #0
      d8:	1afffff4 	bne	b0 <strcpy+0x20>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a00003 	mov	r0, r3
      e4:	e28bd000 	add	sp, fp, #0
      e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      ec:	e12fff1e 	bx	lr

000000f0 <strcmp>:
      f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      f4:	e28db000 	add	fp, sp, #0
      f8:	e24dd00c 	sub	sp, sp, #12
      fc:	e50b0008 	str	r0, [fp, #-8]
     100:	e50b100c 	str	r1, [fp, #-12]
     104:	ea000005 	b	120 <strcmp+0x30>
     108:	e51b3008 	ldr	r3, [fp, #-8]
     10c:	e2833001 	add	r3, r3, #1
     110:	e50b3008 	str	r3, [fp, #-8]
     114:	e51b300c 	ldr	r3, [fp, #-12]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b300c 	str	r3, [fp, #-12]
     120:	e51b3008 	ldr	r3, [fp, #-8]
     124:	e5d33000 	ldrb	r3, [r3]
     128:	e3530000 	cmp	r3, #0
     12c:	0a000005 	beq	148 <strcmp+0x58>
     130:	e51b3008 	ldr	r3, [fp, #-8]
     134:	e5d32000 	ldrb	r2, [r3]
     138:	e51b300c 	ldr	r3, [fp, #-12]
     13c:	e5d33000 	ldrb	r3, [r3]
     140:	e1520003 	cmp	r2, r3
     144:	0affffef 	beq	108 <strcmp+0x18>
     148:	e51b3008 	ldr	r3, [fp, #-8]
     14c:	e5d33000 	ldrb	r3, [r3]
     150:	e1a02003 	mov	r2, r3
     154:	e51b300c 	ldr	r3, [fp, #-12]
     158:	e5d33000 	ldrb	r3, [r3]
     15c:	e0423003 	sub	r3, r2, r3
     160:	e1a00003 	mov	r0, r3
     164:	e28bd000 	add	sp, fp, #0
     168:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     16c:	e12fff1e 	bx	lr

00000170 <strlen>:
     170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     174:	e28db000 	add	fp, sp, #0
     178:	e24dd014 	sub	sp, sp, #20
     17c:	e50b0010 	str	r0, [fp, #-16]
     180:	e3a03000 	mov	r3, #0
     184:	e50b3008 	str	r3, [fp, #-8]
     188:	ea000002 	b	198 <strlen+0x28>
     18c:	e51b3008 	ldr	r3, [fp, #-8]
     190:	e2833001 	add	r3, r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e51b3008 	ldr	r3, [fp, #-8]
     19c:	e51b2010 	ldr	r2, [fp, #-16]
     1a0:	e0823003 	add	r3, r2, r3
     1a4:	e5d33000 	ldrb	r3, [r3]
     1a8:	e3530000 	cmp	r3, #0
     1ac:	1afffff6 	bne	18c <strlen+0x1c>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e1a00003 	mov	r0, r3
     1b8:	e28bd000 	add	sp, fp, #0
     1bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1c0:	e12fff1e 	bx	lr

000001c4 <memset>:
     1c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c8:	e28db000 	add	fp, sp, #0
     1cc:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1d0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1d4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e0:	e50b3008 	str	r3, [fp, #-8]
     1e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e8:	e54b300d 	strb	r3, [fp, #-13]
     1ec:	e55b200d 	ldrb	r2, [fp, #-13]
     1f0:	e1a03002 	mov	r3, r2
     1f4:	e1a03403 	lsl	r3, r3, #8
     1f8:	e0833002 	add	r3, r3, r2
     1fc:	e1a03803 	lsl	r3, r3, #16
     200:	e1a02003 	mov	r2, r3
     204:	e55b300d 	ldrb	r3, [fp, #-13]
     208:	e1a03403 	lsl	r3, r3, #8
     20c:	e1822003 	orr	r2, r2, r3
     210:	e55b300d 	ldrb	r3, [fp, #-13]
     214:	e1823003 	orr	r3, r2, r3
     218:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     21c:	ea000008 	b	244 <memset+0x80>
     220:	e51b3008 	ldr	r3, [fp, #-8]
     224:	e55b200d 	ldrb	r2, [fp, #-13]
     228:	e5c32000 	strb	r2, [r3]
     22c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     230:	e2433001 	sub	r3, r3, #1
     234:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     238:	e51b3008 	ldr	r3, [fp, #-8]
     23c:	e2833001 	add	r3, r3, #1
     240:	e50b3008 	str	r3, [fp, #-8]
     244:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     248:	e3530000 	cmp	r3, #0
     24c:	0a000003 	beq	260 <memset+0x9c>
     250:	e51b3008 	ldr	r3, [fp, #-8]
     254:	e2033003 	and	r3, r3, #3
     258:	e3530000 	cmp	r3, #0
     25c:	1affffef 	bne	220 <memset+0x5c>
     260:	e51b3008 	ldr	r3, [fp, #-8]
     264:	e50b300c 	str	r3, [fp, #-12]
     268:	ea000008 	b	290 <memset+0xcc>
     26c:	e51b300c 	ldr	r3, [fp, #-12]
     270:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     274:	e5832000 	str	r2, [r3]
     278:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e2433004 	sub	r3, r3, #4
     280:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     284:	e51b300c 	ldr	r3, [fp, #-12]
     288:	e2833004 	add	r3, r3, #4
     28c:	e50b300c 	str	r3, [fp, #-12]
     290:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     294:	e3530003 	cmp	r3, #3
     298:	8afffff3 	bhi	26c <memset+0xa8>
     29c:	e51b300c 	ldr	r3, [fp, #-12]
     2a0:	e50b3008 	str	r3, [fp, #-8]
     2a4:	ea000008 	b	2cc <memset+0x108>
     2a8:	e51b3008 	ldr	r3, [fp, #-8]
     2ac:	e55b200d 	ldrb	r2, [fp, #-13]
     2b0:	e5c32000 	strb	r2, [r3]
     2b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e2433001 	sub	r3, r3, #1
     2bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2c0:	e51b3008 	ldr	r3, [fp, #-8]
     2c4:	e2833001 	add	r3, r3, #1
     2c8:	e50b3008 	str	r3, [fp, #-8]
     2cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d0:	e3530000 	cmp	r3, #0
     2d4:	1afffff3 	bne	2a8 <memset+0xe4>
     2d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2dc:	e1a00003 	mov	r0, r3
     2e0:	e28bd000 	add	sp, fp, #0
     2e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e8:	e12fff1e 	bx	lr

000002ec <strchr>:
     2ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2f0:	e28db000 	add	fp, sp, #0
     2f4:	e24dd00c 	sub	sp, sp, #12
     2f8:	e50b0008 	str	r0, [fp, #-8]
     2fc:	e1a03001 	mov	r3, r1
     300:	e54b3009 	strb	r3, [fp, #-9]
     304:	ea000009 	b	330 <strchr+0x44>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e55b2009 	ldrb	r2, [fp, #-9]
     314:	e1520003 	cmp	r2, r3
     318:	1a000001 	bne	324 <strchr+0x38>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	ea000007 	b	344 <strchr+0x58>
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3008 	ldr	r3, [fp, #-8]
     334:	e5d33000 	ldrb	r3, [r3]
     338:	e3530000 	cmp	r3, #0
     33c:	1afffff1 	bne	308 <strchr+0x1c>
     340:	e3a03000 	mov	r3, #0
     344:	e1a00003 	mov	r0, r3
     348:	e28bd000 	add	sp, fp, #0
     34c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     350:	e12fff1e 	bx	lr

00000354 <gets>:
     354:	e92d4800 	push	{fp, lr}
     358:	e28db004 	add	fp, sp, #4
     35c:	e24dd018 	sub	sp, sp, #24
     360:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     364:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     368:	e3a03000 	mov	r3, #0
     36c:	e50b3008 	str	r3, [fp, #-8]
     370:	ea000016 	b	3d0 <gets+0x7c>
     374:	e24b300d 	sub	r3, fp, #13
     378:	e3a02001 	mov	r2, #1
     37c:	e1a01003 	mov	r1, r3
     380:	e3a00000 	mov	r0, #0
     384:	eb00009b 	bl	5f8 <read>
     388:	e50b000c 	str	r0, [fp, #-12]
     38c:	e51b300c 	ldr	r3, [fp, #-12]
     390:	e3530000 	cmp	r3, #0
     394:	da000013 	ble	3e8 <gets+0x94>
     398:	e51b3008 	ldr	r3, [fp, #-8]
     39c:	e2832001 	add	r2, r3, #1
     3a0:	e50b2008 	str	r2, [fp, #-8]
     3a4:	e1a02003 	mov	r2, r3
     3a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e55b200d 	ldrb	r2, [fp, #-13]
     3b4:	e5c32000 	strb	r2, [r3]
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e353000a 	cmp	r3, #10
     3c0:	0a000009 	beq	3ec <gets+0x98>
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e353000d 	cmp	r3, #13
     3cc:	0a000006 	beq	3ec <gets+0x98>
     3d0:	e51b3008 	ldr	r3, [fp, #-8]
     3d4:	e2833001 	add	r3, r3, #1
     3d8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3dc:	e1520003 	cmp	r2, r3
     3e0:	caffffe3 	bgt	374 <gets+0x20>
     3e4:	ea000000 	b	3ec <gets+0x98>
     3e8:	e1a00000 	nop			@ (mov r0, r0)
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3f4:	e0823003 	add	r3, r2, r3
     3f8:	e3a02000 	mov	r2, #0
     3fc:	e5c32000 	strb	r2, [r3]
     400:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     404:	e1a00003 	mov	r0, r3
     408:	e24bd004 	sub	sp, fp, #4
     40c:	e8bd8800 	pop	{fp, pc}

00000410 <stat>:
     410:	e92d4800 	push	{fp, lr}
     414:	e28db004 	add	fp, sp, #4
     418:	e24dd010 	sub	sp, sp, #16
     41c:	e50b0010 	str	r0, [fp, #-16]
     420:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     424:	e3a01000 	mov	r1, #0
     428:	e51b0010 	ldr	r0, [fp, #-16]
     42c:	eb00009e 	bl	6ac <open>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3530000 	cmp	r3, #0
     43c:	aa000001 	bge	448 <stat+0x38>
     440:	e3e03000 	mvn	r3, #0
     444:	ea000006 	b	464 <stat+0x54>
     448:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     44c:	e51b0008 	ldr	r0, [fp, #-8]
     450:	eb0000b0 	bl	718 <fstat>
     454:	e50b000c 	str	r0, [fp, #-12]
     458:	e51b0008 	ldr	r0, [fp, #-8]
     45c:	eb000077 	bl	640 <close>
     460:	e51b300c 	ldr	r3, [fp, #-12]
     464:	e1a00003 	mov	r0, r3
     468:	e24bd004 	sub	sp, fp, #4
     46c:	e8bd8800 	pop	{fp, pc}

00000470 <atoi>:
     470:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     474:	e28db000 	add	fp, sp, #0
     478:	e24dd014 	sub	sp, sp, #20
     47c:	e50b0010 	str	r0, [fp, #-16]
     480:	e3a03000 	mov	r3, #0
     484:	e50b3008 	str	r3, [fp, #-8]
     488:	ea00000c 	b	4c0 <atoi+0x50>
     48c:	e51b2008 	ldr	r2, [fp, #-8]
     490:	e1a03002 	mov	r3, r2
     494:	e1a03103 	lsl	r3, r3, #2
     498:	e0833002 	add	r3, r3, r2
     49c:	e1a03083 	lsl	r3, r3, #1
     4a0:	e1a01003 	mov	r1, r3
     4a4:	e51b3010 	ldr	r3, [fp, #-16]
     4a8:	e2832001 	add	r2, r3, #1
     4ac:	e50b2010 	str	r2, [fp, #-16]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e0813003 	add	r3, r1, r3
     4b8:	e2433030 	sub	r3, r3, #48	@ 0x30
     4bc:	e50b3008 	str	r3, [fp, #-8]
     4c0:	e51b3010 	ldr	r3, [fp, #-16]
     4c4:	e5d33000 	ldrb	r3, [r3]
     4c8:	e353002f 	cmp	r3, #47	@ 0x2f
     4cc:	9a000003 	bls	4e0 <atoi+0x70>
     4d0:	e51b3010 	ldr	r3, [fp, #-16]
     4d4:	e5d33000 	ldrb	r3, [r3]
     4d8:	e3530039 	cmp	r3, #57	@ 0x39
     4dc:	9affffea 	bls	48c <atoi+0x1c>
     4e0:	e51b3008 	ldr	r3, [fp, #-8]
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e28bd000 	add	sp, fp, #0
     4ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f0:	e12fff1e 	bx	lr

000004f4 <memmove>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd01c 	sub	sp, sp, #28
     500:	e50b0010 	str	r0, [fp, #-16]
     504:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     508:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     50c:	e51b3010 	ldr	r3, [fp, #-16]
     510:	e50b3008 	str	r3, [fp, #-8]
     514:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     518:	e50b300c 	str	r3, [fp, #-12]
     51c:	ea000007 	b	540 <memmove+0x4c>
     520:	e51b200c 	ldr	r2, [fp, #-12]
     524:	e2823001 	add	r3, r2, #1
     528:	e50b300c 	str	r3, [fp, #-12]
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e2831001 	add	r1, r3, #1
     534:	e50b1008 	str	r1, [fp, #-8]
     538:	e5d22000 	ldrb	r2, [r2]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     544:	e2432001 	sub	r2, r3, #1
     548:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     54c:	e3530000 	cmp	r3, #0
     550:	cafffff2 	bgt	520 <memmove+0x2c>
     554:	e51b3010 	ldr	r3, [fp, #-16]
     558:	e1a00003 	mov	r0, r3
     55c:	e28bd000 	add	sp, fp, #0
     560:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     564:	e12fff1e 	bx	lr

00000568 <fork>:
     568:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     56c:	e1a04003 	mov	r4, r3
     570:	e1a03002 	mov	r3, r2
     574:	e1a02001 	mov	r2, r1
     578:	e1a01000 	mov	r1, r0
     57c:	e3a00001 	mov	r0, #1
     580:	ef000000 	svc	0x00000000
     584:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     588:	e12fff1e 	bx	lr

0000058c <exit>:
     58c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     590:	e1a04003 	mov	r4, r3
     594:	e1a03002 	mov	r3, r2
     598:	e1a02001 	mov	r2, r1
     59c:	e1a01000 	mov	r1, r0
     5a0:	e3a00002 	mov	r0, #2
     5a4:	ef000000 	svc	0x00000000
     5a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ac:	e12fff1e 	bx	lr

000005b0 <wait>:
     5b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5b4:	e1a04003 	mov	r4, r3
     5b8:	e1a03002 	mov	r3, r2
     5bc:	e1a02001 	mov	r2, r1
     5c0:	e1a01000 	mov	r1, r0
     5c4:	e3a00003 	mov	r0, #3
     5c8:	ef000000 	svc	0x00000000
     5cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5d0:	e12fff1e 	bx	lr

000005d4 <pipe>:
     5d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d8:	e1a04003 	mov	r4, r3
     5dc:	e1a03002 	mov	r3, r2
     5e0:	e1a02001 	mov	r2, r1
     5e4:	e1a01000 	mov	r1, r0
     5e8:	e3a00004 	mov	r0, #4
     5ec:	ef000000 	svc	0x00000000
     5f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5f4:	e12fff1e 	bx	lr

000005f8 <read>:
     5f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5fc:	e1a04003 	mov	r4, r3
     600:	e1a03002 	mov	r3, r2
     604:	e1a02001 	mov	r2, r1
     608:	e1a01000 	mov	r1, r0
     60c:	e3a00005 	mov	r0, #5
     610:	ef000000 	svc	0x00000000
     614:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     618:	e12fff1e 	bx	lr

0000061c <write>:
     61c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     620:	e1a04003 	mov	r4, r3
     624:	e1a03002 	mov	r3, r2
     628:	e1a02001 	mov	r2, r1
     62c:	e1a01000 	mov	r1, r0
     630:	e3a00010 	mov	r0, #16
     634:	ef000000 	svc	0x00000000
     638:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     63c:	e12fff1e 	bx	lr

00000640 <close>:
     640:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     644:	e1a04003 	mov	r4, r3
     648:	e1a03002 	mov	r3, r2
     64c:	e1a02001 	mov	r2, r1
     650:	e1a01000 	mov	r1, r0
     654:	e3a00015 	mov	r0, #21
     658:	ef000000 	svc	0x00000000
     65c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     660:	e12fff1e 	bx	lr

00000664 <kill>:
     664:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     668:	e1a04003 	mov	r4, r3
     66c:	e1a03002 	mov	r3, r2
     670:	e1a02001 	mov	r2, r1
     674:	e1a01000 	mov	r1, r0
     678:	e3a00006 	mov	r0, #6
     67c:	ef000000 	svc	0x00000000
     680:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     684:	e12fff1e 	bx	lr

00000688 <exec>:
     688:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     68c:	e1a04003 	mov	r4, r3
     690:	e1a03002 	mov	r3, r2
     694:	e1a02001 	mov	r2, r1
     698:	e1a01000 	mov	r1, r0
     69c:	e3a00007 	mov	r0, #7
     6a0:	ef000000 	svc	0x00000000
     6a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a8:	e12fff1e 	bx	lr

000006ac <open>:
     6ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6b0:	e1a04003 	mov	r4, r3
     6b4:	e1a03002 	mov	r3, r2
     6b8:	e1a02001 	mov	r2, r1
     6bc:	e1a01000 	mov	r1, r0
     6c0:	e3a0000f 	mov	r0, #15
     6c4:	ef000000 	svc	0x00000000
     6c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6cc:	e12fff1e 	bx	lr

000006d0 <mknod>:
     6d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6d4:	e1a04003 	mov	r4, r3
     6d8:	e1a03002 	mov	r3, r2
     6dc:	e1a02001 	mov	r2, r1
     6e0:	e1a01000 	mov	r1, r0
     6e4:	e3a00011 	mov	r0, #17
     6e8:	ef000000 	svc	0x00000000
     6ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6f0:	e12fff1e 	bx	lr

000006f4 <unlink>:
     6f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f8:	e1a04003 	mov	r4, r3
     6fc:	e1a03002 	mov	r3, r2
     700:	e1a02001 	mov	r2, r1
     704:	e1a01000 	mov	r1, r0
     708:	e3a00012 	mov	r0, #18
     70c:	ef000000 	svc	0x00000000
     710:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     714:	e12fff1e 	bx	lr

00000718 <fstat>:
     718:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     71c:	e1a04003 	mov	r4, r3
     720:	e1a03002 	mov	r3, r2
     724:	e1a02001 	mov	r2, r1
     728:	e1a01000 	mov	r1, r0
     72c:	e3a00008 	mov	r0, #8
     730:	ef000000 	svc	0x00000000
     734:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     738:	e12fff1e 	bx	lr

0000073c <link>:
     73c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     740:	e1a04003 	mov	r4, r3
     744:	e1a03002 	mov	r3, r2
     748:	e1a02001 	mov	r2, r1
     74c:	e1a01000 	mov	r1, r0
     750:	e3a00013 	mov	r0, #19
     754:	ef000000 	svc	0x00000000
     758:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     75c:	e12fff1e 	bx	lr

00000760 <mkdir>:
     760:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     764:	e1a04003 	mov	r4, r3
     768:	e1a03002 	mov	r3, r2
     76c:	e1a02001 	mov	r2, r1
     770:	e1a01000 	mov	r1, r0
     774:	e3a00014 	mov	r0, #20
     778:	ef000000 	svc	0x00000000
     77c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     780:	e12fff1e 	bx	lr

00000784 <chdir>:
     784:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     788:	e1a04003 	mov	r4, r3
     78c:	e1a03002 	mov	r3, r2
     790:	e1a02001 	mov	r2, r1
     794:	e1a01000 	mov	r1, r0
     798:	e3a00009 	mov	r0, #9
     79c:	ef000000 	svc	0x00000000
     7a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a4:	e12fff1e 	bx	lr

000007a8 <dup>:
     7a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ac:	e1a04003 	mov	r4, r3
     7b0:	e1a03002 	mov	r3, r2
     7b4:	e1a02001 	mov	r2, r1
     7b8:	e1a01000 	mov	r1, r0
     7bc:	e3a0000a 	mov	r0, #10
     7c0:	ef000000 	svc	0x00000000
     7c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c8:	e12fff1e 	bx	lr

000007cc <getpid>:
     7cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d0:	e1a04003 	mov	r4, r3
     7d4:	e1a03002 	mov	r3, r2
     7d8:	e1a02001 	mov	r2, r1
     7dc:	e1a01000 	mov	r1, r0
     7e0:	e3a0000b 	mov	r0, #11
     7e4:	ef000000 	svc	0x00000000
     7e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7ec:	e12fff1e 	bx	lr

000007f0 <sbrk>:
     7f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f4:	e1a04003 	mov	r4, r3
     7f8:	e1a03002 	mov	r3, r2
     7fc:	e1a02001 	mov	r2, r1
     800:	e1a01000 	mov	r1, r0
     804:	e3a0000c 	mov	r0, #12
     808:	ef000000 	svc	0x00000000
     80c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     810:	e12fff1e 	bx	lr

00000814 <sleep>:
     814:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     818:	e1a04003 	mov	r4, r3
     81c:	e1a03002 	mov	r3, r2
     820:	e1a02001 	mov	r2, r1
     824:	e1a01000 	mov	r1, r0
     828:	e3a0000d 	mov	r0, #13
     82c:	ef000000 	svc	0x00000000
     830:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     834:	e12fff1e 	bx	lr

00000838 <uptime>:
     838:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     83c:	e1a04003 	mov	r4, r3
     840:	e1a03002 	mov	r3, r2
     844:	e1a02001 	mov	r2, r1
     848:	e1a01000 	mov	r1, r0
     84c:	e3a0000e 	mov	r0, #14
     850:	ef000000 	svc	0x00000000
     854:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     858:	e12fff1e 	bx	lr

0000085c <putc>:
     85c:	e92d4800 	push	{fp, lr}
     860:	e28db004 	add	fp, sp, #4
     864:	e24dd008 	sub	sp, sp, #8
     868:	e50b0008 	str	r0, [fp, #-8]
     86c:	e1a03001 	mov	r3, r1
     870:	e54b3009 	strb	r3, [fp, #-9]
     874:	e24b3009 	sub	r3, fp, #9
     878:	e3a02001 	mov	r2, #1
     87c:	e1a01003 	mov	r1, r3
     880:	e51b0008 	ldr	r0, [fp, #-8]
     884:	ebffff64 	bl	61c <write>
     888:	e1a00000 	nop			@ (mov r0, r0)
     88c:	e24bd004 	sub	sp, fp, #4
     890:	e8bd8800 	pop	{fp, pc}

00000894 <printint>:
     894:	e92d4800 	push	{fp, lr}
     898:	e28db004 	add	fp, sp, #4
     89c:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8a0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8a4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8a8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8ac:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8b0:	e3a03000 	mov	r3, #0
     8b4:	e50b300c 	str	r3, [fp, #-12]
     8b8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8bc:	e3530000 	cmp	r3, #0
     8c0:	0a000008 	beq	8e8 <printint+0x54>
     8c4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8c8:	e3530000 	cmp	r3, #0
     8cc:	aa000005 	bge	8e8 <printint+0x54>
     8d0:	e3a03001 	mov	r3, #1
     8d4:	e50b300c 	str	r3, [fp, #-12]
     8d8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8dc:	e2633000 	rsb	r3, r3, #0
     8e0:	e50b3010 	str	r3, [fp, #-16]
     8e4:	ea000001 	b	8f0 <printint+0x5c>
     8e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8ec:	e50b3010 	str	r3, [fp, #-16]
     8f0:	e3a03000 	mov	r3, #0
     8f4:	e50b3008 	str	r3, [fp, #-8]
     8f8:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8fc:	e51b3010 	ldr	r3, [fp, #-16]
     900:	e1a01002 	mov	r1, r2
     904:	e1a00003 	mov	r0, r3
     908:	eb0001d5 	bl	1064 <__aeabi_uidivmod>
     90c:	e1a03001 	mov	r3, r1
     910:	e1a01003 	mov	r1, r3
     914:	e51b3008 	ldr	r3, [fp, #-8]
     918:	e2832001 	add	r2, r3, #1
     91c:	e50b2008 	str	r2, [fp, #-8]
     920:	e59f20a0 	ldr	r2, [pc, #160]	@ 9c8 <printint+0x134>
     924:	e7d22001 	ldrb	r2, [r2, r1]
     928:	e2433004 	sub	r3, r3, #4
     92c:	e083300b 	add	r3, r3, fp
     930:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     934:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     938:	e1a01003 	mov	r1, r3
     93c:	e51b0010 	ldr	r0, [fp, #-16]
     940:	eb00018a 	bl	f70 <__udivsi3>
     944:	e1a03000 	mov	r3, r0
     948:	e50b3010 	str	r3, [fp, #-16]
     94c:	e51b3010 	ldr	r3, [fp, #-16]
     950:	e3530000 	cmp	r3, #0
     954:	1affffe7 	bne	8f8 <printint+0x64>
     958:	e51b300c 	ldr	r3, [fp, #-12]
     95c:	e3530000 	cmp	r3, #0
     960:	0a00000e 	beq	9a0 <printint+0x10c>
     964:	e51b3008 	ldr	r3, [fp, #-8]
     968:	e2832001 	add	r2, r3, #1
     96c:	e50b2008 	str	r2, [fp, #-8]
     970:	e2433004 	sub	r3, r3, #4
     974:	e083300b 	add	r3, r3, fp
     978:	e3a0202d 	mov	r2, #45	@ 0x2d
     97c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     980:	ea000006 	b	9a0 <printint+0x10c>
     984:	e24b2020 	sub	r2, fp, #32
     988:	e51b3008 	ldr	r3, [fp, #-8]
     98c:	e0823003 	add	r3, r2, r3
     990:	e5d33000 	ldrb	r3, [r3]
     994:	e1a01003 	mov	r1, r3
     998:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     99c:	ebffffae 	bl	85c <putc>
     9a0:	e51b3008 	ldr	r3, [fp, #-8]
     9a4:	e2433001 	sub	r3, r3, #1
     9a8:	e50b3008 	str	r3, [fp, #-8]
     9ac:	e51b3008 	ldr	r3, [fp, #-8]
     9b0:	e3530000 	cmp	r3, #0
     9b4:	aafffff2 	bge	984 <printint+0xf0>
     9b8:	e1a00000 	nop			@ (mov r0, r0)
     9bc:	e1a00000 	nop			@ (mov r0, r0)
     9c0:	e24bd004 	sub	sp, fp, #4
     9c4:	e8bd8800 	pop	{fp, pc}
     9c8:	000010b8 	.word	0x000010b8

000009cc <printf>:
     9cc:	e92d000e 	push	{r1, r2, r3}
     9d0:	e92d4800 	push	{fp, lr}
     9d4:	e28db004 	add	fp, sp, #4
     9d8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9dc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9e0:	e3a03000 	mov	r3, #0
     9e4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9e8:	e28b3008 	add	r3, fp, #8
     9ec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9f0:	e3a03000 	mov	r3, #0
     9f4:	e50b3010 	str	r3, [fp, #-16]
     9f8:	ea000074 	b	bd0 <printf+0x204>
     9fc:	e59b2004 	ldr	r2, [fp, #4]
     a00:	e51b3010 	ldr	r3, [fp, #-16]
     a04:	e0823003 	add	r3, r2, r3
     a08:	e5d33000 	ldrb	r3, [r3]
     a0c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a14:	e3530000 	cmp	r3, #0
     a18:	1a00000b 	bne	a4c <printf+0x80>
     a1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a20:	e3530025 	cmp	r3, #37	@ 0x25
     a24:	1a000002 	bne	a34 <printf+0x68>
     a28:	e3a03025 	mov	r3, #37	@ 0x25
     a2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a30:	ea000063 	b	bc4 <printf+0x1f8>
     a34:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a38:	e6ef3073 	uxtb	r3, r3
     a3c:	e1a01003 	mov	r1, r3
     a40:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a44:	ebffff84 	bl	85c <putc>
     a48:	ea00005d 	b	bc4 <printf+0x1f8>
     a4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a50:	e3530025 	cmp	r3, #37	@ 0x25
     a54:	1a00005a 	bne	bc4 <printf+0x1f8>
     a58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a5c:	e3530064 	cmp	r3, #100	@ 0x64
     a60:	1a00000a 	bne	a90 <printf+0xc4>
     a64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a68:	e5933000 	ldr	r3, [r3]
     a6c:	e1a01003 	mov	r1, r3
     a70:	e3a03001 	mov	r3, #1
     a74:	e3a0200a 	mov	r2, #10
     a78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a7c:	ebffff84 	bl	894 <printint>
     a80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a84:	e2833004 	add	r3, r3, #4
     a88:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a8c:	ea00004a 	b	bbc <printf+0x1f0>
     a90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a94:	e3530078 	cmp	r3, #120	@ 0x78
     a98:	0a000002 	beq	aa8 <printf+0xdc>
     a9c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa0:	e3530070 	cmp	r3, #112	@ 0x70
     aa4:	1a00000a 	bne	ad4 <printf+0x108>
     aa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aac:	e5933000 	ldr	r3, [r3]
     ab0:	e1a01003 	mov	r1, r3
     ab4:	e3a03000 	mov	r3, #0
     ab8:	e3a02010 	mov	r2, #16
     abc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ac0:	ebffff73 	bl	894 <printint>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e2833004 	add	r3, r3, #4
     acc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ad0:	ea000039 	b	bbc <printf+0x1f0>
     ad4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad8:	e3530073 	cmp	r3, #115	@ 0x73
     adc:	1a000018 	bne	b44 <printf+0x178>
     ae0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae4:	e5933000 	ldr	r3, [r3]
     ae8:	e50b300c 	str	r3, [fp, #-12]
     aec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af0:	e2833004 	add	r3, r3, #4
     af4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af8:	e51b300c 	ldr	r3, [fp, #-12]
     afc:	e3530000 	cmp	r3, #0
     b00:	1a00000a 	bne	b30 <printf+0x164>
     b04:	e59f30f4 	ldr	r3, [pc, #244]	@ c00 <printf+0x234>
     b08:	e50b300c 	str	r3, [fp, #-12]
     b0c:	ea000007 	b	b30 <printf+0x164>
     b10:	e51b300c 	ldr	r3, [fp, #-12]
     b14:	e5d33000 	ldrb	r3, [r3]
     b18:	e1a01003 	mov	r1, r3
     b1c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b20:	ebffff4d 	bl	85c <putc>
     b24:	e51b300c 	ldr	r3, [fp, #-12]
     b28:	e2833001 	add	r3, r3, #1
     b2c:	e50b300c 	str	r3, [fp, #-12]
     b30:	e51b300c 	ldr	r3, [fp, #-12]
     b34:	e5d33000 	ldrb	r3, [r3]
     b38:	e3530000 	cmp	r3, #0
     b3c:	1afffff3 	bne	b10 <printf+0x144>
     b40:	ea00001d 	b	bbc <printf+0x1f0>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530063 	cmp	r3, #99	@ 0x63
     b4c:	1a000009 	bne	b78 <printf+0x1ac>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e6ef3073 	uxtb	r3, r3
     b5c:	e1a01003 	mov	r1, r3
     b60:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b64:	ebffff3c 	bl	85c <putc>
     b68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b6c:	e2833004 	add	r3, r3, #4
     b70:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b74:	ea000010 	b	bbc <printf+0x1f0>
     b78:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b7c:	e3530025 	cmp	r3, #37	@ 0x25
     b80:	1a000005 	bne	b9c <printf+0x1d0>
     b84:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b88:	e6ef3073 	uxtb	r3, r3
     b8c:	e1a01003 	mov	r1, r3
     b90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b94:	ebffff30 	bl	85c <putc>
     b98:	ea000007 	b	bbc <printf+0x1f0>
     b9c:	e3a01025 	mov	r1, #37	@ 0x25
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba4:	ebffff2c 	bl	85c <putc>
     ba8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bac:	e6ef3073 	uxtb	r3, r3
     bb0:	e1a01003 	mov	r1, r3
     bb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb8:	ebffff27 	bl	85c <putc>
     bbc:	e3a03000 	mov	r3, #0
     bc0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bc4:	e51b3010 	ldr	r3, [fp, #-16]
     bc8:	e2833001 	add	r3, r3, #1
     bcc:	e50b3010 	str	r3, [fp, #-16]
     bd0:	e59b2004 	ldr	r2, [fp, #4]
     bd4:	e51b3010 	ldr	r3, [fp, #-16]
     bd8:	e0823003 	add	r3, r2, r3
     bdc:	e5d33000 	ldrb	r3, [r3]
     be0:	e3530000 	cmp	r3, #0
     be4:	1affff84 	bne	9fc <printf+0x30>
     be8:	e1a00000 	nop			@ (mov r0, r0)
     bec:	e1a00000 	nop			@ (mov r0, r0)
     bf0:	e24bd004 	sub	sp, fp, #4
     bf4:	e8bd4800 	pop	{fp, lr}
     bf8:	e28dd00c 	add	sp, sp, #12
     bfc:	e12fff1e 	bx	lr
     c00:	000010b0 	.word	0x000010b0

00000c04 <free>:
     c04:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c08:	e28db000 	add	fp, sp, #0
     c0c:	e24dd014 	sub	sp, sp, #20
     c10:	e50b0010 	str	r0, [fp, #-16]
     c14:	e51b3010 	ldr	r3, [fp, #-16]
     c18:	e2433008 	sub	r3, r3, #8
     c1c:	e50b300c 	str	r3, [fp, #-12]
     c20:	e59f3154 	ldr	r3, [pc, #340]	@ d7c <free+0x178>
     c24:	e5933000 	ldr	r3, [r3]
     c28:	e50b3008 	str	r3, [fp, #-8]
     c2c:	ea000010 	b	c74 <free+0x70>
     c30:	e51b3008 	ldr	r3, [fp, #-8]
     c34:	e5933000 	ldr	r3, [r3]
     c38:	e51b2008 	ldr	r2, [fp, #-8]
     c3c:	e1520003 	cmp	r2, r3
     c40:	3a000008 	bcc	c68 <free+0x64>
     c44:	e51b200c 	ldr	r2, [fp, #-12]
     c48:	e51b3008 	ldr	r3, [fp, #-8]
     c4c:	e1520003 	cmp	r2, r3
     c50:	8a000010 	bhi	c98 <free+0x94>
     c54:	e51b3008 	ldr	r3, [fp, #-8]
     c58:	e5933000 	ldr	r3, [r3]
     c5c:	e51b200c 	ldr	r2, [fp, #-12]
     c60:	e1520003 	cmp	r2, r3
     c64:	3a00000b 	bcc	c98 <free+0x94>
     c68:	e51b3008 	ldr	r3, [fp, #-8]
     c6c:	e5933000 	ldr	r3, [r3]
     c70:	e50b3008 	str	r3, [fp, #-8]
     c74:	e51b200c 	ldr	r2, [fp, #-12]
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e1520003 	cmp	r2, r3
     c80:	9affffea 	bls	c30 <free+0x2c>
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e51b200c 	ldr	r2, [fp, #-12]
     c90:	e1520003 	cmp	r2, r3
     c94:	2affffe5 	bcs	c30 <free+0x2c>
     c98:	e51b300c 	ldr	r3, [fp, #-12]
     c9c:	e5933004 	ldr	r3, [r3, #4]
     ca0:	e1a03183 	lsl	r3, r3, #3
     ca4:	e51b200c 	ldr	r2, [fp, #-12]
     ca8:	e0822003 	add	r2, r2, r3
     cac:	e51b3008 	ldr	r3, [fp, #-8]
     cb0:	e5933000 	ldr	r3, [r3]
     cb4:	e1520003 	cmp	r2, r3
     cb8:	1a00000d 	bne	cf4 <free+0xf0>
     cbc:	e51b300c 	ldr	r3, [fp, #-12]
     cc0:	e5932004 	ldr	r2, [r3, #4]
     cc4:	e51b3008 	ldr	r3, [fp, #-8]
     cc8:	e5933000 	ldr	r3, [r3]
     ccc:	e5933004 	ldr	r3, [r3, #4]
     cd0:	e0822003 	add	r2, r2, r3
     cd4:	e51b300c 	ldr	r3, [fp, #-12]
     cd8:	e5832004 	str	r2, [r3, #4]
     cdc:	e51b3008 	ldr	r3, [fp, #-8]
     ce0:	e5933000 	ldr	r3, [r3]
     ce4:	e5932000 	ldr	r2, [r3]
     ce8:	e51b300c 	ldr	r3, [fp, #-12]
     cec:	e5832000 	str	r2, [r3]
     cf0:	ea000003 	b	d04 <free+0x100>
     cf4:	e51b3008 	ldr	r3, [fp, #-8]
     cf8:	e5932000 	ldr	r2, [r3]
     cfc:	e51b300c 	ldr	r3, [fp, #-12]
     d00:	e5832000 	str	r2, [r3]
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5933004 	ldr	r3, [r3, #4]
     d0c:	e1a03183 	lsl	r3, r3, #3
     d10:	e51b2008 	ldr	r2, [fp, #-8]
     d14:	e0823003 	add	r3, r2, r3
     d18:	e51b200c 	ldr	r2, [fp, #-12]
     d1c:	e1520003 	cmp	r2, r3
     d20:	1a00000b 	bne	d54 <free+0x150>
     d24:	e51b3008 	ldr	r3, [fp, #-8]
     d28:	e5932004 	ldr	r2, [r3, #4]
     d2c:	e51b300c 	ldr	r3, [fp, #-12]
     d30:	e5933004 	ldr	r3, [r3, #4]
     d34:	e0822003 	add	r2, r2, r3
     d38:	e51b3008 	ldr	r3, [fp, #-8]
     d3c:	e5832004 	str	r2, [r3, #4]
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5932000 	ldr	r2, [r3]
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5832000 	str	r2, [r3]
     d50:	ea000002 	b	d60 <free+0x15c>
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e5832000 	str	r2, [r3]
     d60:	e59f2014 	ldr	r2, [pc, #20]	@ d7c <free+0x178>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5823000 	str	r3, [r2]
     d6c:	e1a00000 	nop			@ (mov r0, r0)
     d70:	e28bd000 	add	sp, fp, #0
     d74:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d78:	e12fff1e 	bx	lr
     d7c:	000010d4 	.word	0x000010d4

00000d80 <morecore>:
     d80:	e92d4800 	push	{fp, lr}
     d84:	e28db004 	add	fp, sp, #4
     d88:	e24dd010 	sub	sp, sp, #16
     d8c:	e50b0010 	str	r0, [fp, #-16]
     d90:	e51b3010 	ldr	r3, [fp, #-16]
     d94:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d98:	2a000001 	bcs	da4 <morecore+0x24>
     d9c:	e3a03a01 	mov	r3, #4096	@ 0x1000
     da0:	e50b3010 	str	r3, [fp, #-16]
     da4:	e51b3010 	ldr	r3, [fp, #-16]
     da8:	e1a03183 	lsl	r3, r3, #3
     dac:	e1a00003 	mov	r0, r3
     db0:	ebfffe8e 	bl	7f0 <sbrk>
     db4:	e50b0008 	str	r0, [fp, #-8]
     db8:	e51b3008 	ldr	r3, [fp, #-8]
     dbc:	e3730001 	cmn	r3, #1
     dc0:	1a000001 	bne	dcc <morecore+0x4c>
     dc4:	e3a03000 	mov	r3, #0
     dc8:	ea00000a 	b	df8 <morecore+0x78>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e50b300c 	str	r3, [fp, #-12]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e51b2010 	ldr	r2, [fp, #-16]
     ddc:	e5832004 	str	r2, [r3, #4]
     de0:	e51b300c 	ldr	r3, [fp, #-12]
     de4:	e2833008 	add	r3, r3, #8
     de8:	e1a00003 	mov	r0, r3
     dec:	ebffff84 	bl	c04 <free>
     df0:	e59f300c 	ldr	r3, [pc, #12]	@ e04 <morecore+0x84>
     df4:	e5933000 	ldr	r3, [r3]
     df8:	e1a00003 	mov	r0, r3
     dfc:	e24bd004 	sub	sp, fp, #4
     e00:	e8bd8800 	pop	{fp, pc}
     e04:	000010d4 	.word	0x000010d4

00000e08 <malloc>:
     e08:	e92d4800 	push	{fp, lr}
     e0c:	e28db004 	add	fp, sp, #4
     e10:	e24dd018 	sub	sp, sp, #24
     e14:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	e2833007 	add	r3, r3, #7
     e20:	e1a031a3 	lsr	r3, r3, #3
     e24:	e2833001 	add	r3, r3, #1
     e28:	e50b3010 	str	r3, [fp, #-16]
     e2c:	e59f3134 	ldr	r3, [pc, #308]	@ f68 <malloc+0x160>
     e30:	e5933000 	ldr	r3, [r3]
     e34:	e50b300c 	str	r3, [fp, #-12]
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e3530000 	cmp	r3, #0
     e40:	1a00000b 	bne	e74 <malloc+0x6c>
     e44:	e59f3120 	ldr	r3, [pc, #288]	@ f6c <malloc+0x164>
     e48:	e50b300c 	str	r3, [fp, #-12]
     e4c:	e59f2114 	ldr	r2, [pc, #276]	@ f68 <malloc+0x160>
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5823000 	str	r3, [r2]
     e58:	e59f3108 	ldr	r3, [pc, #264]	@ f68 <malloc+0x160>
     e5c:	e5933000 	ldr	r3, [r3]
     e60:	e59f2104 	ldr	r2, [pc, #260]	@ f6c <malloc+0x164>
     e64:	e5823000 	str	r3, [r2]
     e68:	e59f30fc 	ldr	r3, [pc, #252]	@ f6c <malloc+0x164>
     e6c:	e3a02000 	mov	r2, #0
     e70:	e5832004 	str	r2, [r3, #4]
     e74:	e51b300c 	ldr	r3, [fp, #-12]
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e50b3008 	str	r3, [fp, #-8]
     e80:	e51b3008 	ldr	r3, [fp, #-8]
     e84:	e5933004 	ldr	r3, [r3, #4]
     e88:	e51b2010 	ldr	r2, [fp, #-16]
     e8c:	e1520003 	cmp	r2, r3
     e90:	8a00001e 	bhi	f10 <malloc+0x108>
     e94:	e51b3008 	ldr	r3, [fp, #-8]
     e98:	e5933004 	ldr	r3, [r3, #4]
     e9c:	e51b2010 	ldr	r2, [fp, #-16]
     ea0:	e1520003 	cmp	r2, r3
     ea4:	1a000004 	bne	ebc <malloc+0xb4>
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e5932000 	ldr	r2, [r3]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5832000 	str	r2, [r3]
     eb8:	ea00000e 	b	ef8 <malloc+0xf0>
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e5932004 	ldr	r2, [r3, #4]
     ec4:	e51b3010 	ldr	r3, [fp, #-16]
     ec8:	e0422003 	sub	r2, r2, r3
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5832004 	str	r2, [r3, #4]
     ed4:	e51b3008 	ldr	r3, [fp, #-8]
     ed8:	e5933004 	ldr	r3, [r3, #4]
     edc:	e1a03183 	lsl	r3, r3, #3
     ee0:	e51b2008 	ldr	r2, [fp, #-8]
     ee4:	e0823003 	add	r3, r2, r3
     ee8:	e50b3008 	str	r3, [fp, #-8]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e51b2010 	ldr	r2, [fp, #-16]
     ef4:	e5832004 	str	r2, [r3, #4]
     ef8:	e59f2068 	ldr	r2, [pc, #104]	@ f68 <malloc+0x160>
     efc:	e51b300c 	ldr	r3, [fp, #-12]
     f00:	e5823000 	str	r3, [r2]
     f04:	e51b3008 	ldr	r3, [fp, #-8]
     f08:	e2833008 	add	r3, r3, #8
     f0c:	ea000012 	b	f5c <malloc+0x154>
     f10:	e59f3050 	ldr	r3, [pc, #80]	@ f68 <malloc+0x160>
     f14:	e5933000 	ldr	r3, [r3]
     f18:	e51b2008 	ldr	r2, [fp, #-8]
     f1c:	e1520003 	cmp	r2, r3
     f20:	1a000007 	bne	f44 <malloc+0x13c>
     f24:	e51b0010 	ldr	r0, [fp, #-16]
     f28:	ebffff94 	bl	d80 <morecore>
     f2c:	e50b0008 	str	r0, [fp, #-8]
     f30:	e51b3008 	ldr	r3, [fp, #-8]
     f34:	e3530000 	cmp	r3, #0
     f38:	1a000001 	bne	f44 <malloc+0x13c>
     f3c:	e3a03000 	mov	r3, #0
     f40:	ea000005 	b	f5c <malloc+0x154>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e50b300c 	str	r3, [fp, #-12]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933000 	ldr	r3, [r3]
     f54:	e50b3008 	str	r3, [fp, #-8]
     f58:	eaffffc8 	b	e80 <malloc+0x78>
     f5c:	e1a00003 	mov	r0, r3
     f60:	e24bd004 	sub	sp, fp, #4
     f64:	e8bd8800 	pop	{fp, pc}
     f68:	000010d4 	.word	0x000010d4
     f6c:	000010cc 	.word	0x000010cc

00000f70 <__udivsi3>:
     f70:	e2512001 	subs	r2, r1, #1
     f74:	012fff1e 	bxeq	lr
     f78:	3a000036 	bcc	1058 <__udivsi3+0xe8>
     f7c:	e1500001 	cmp	r0, r1
     f80:	9a000022 	bls	1010 <__udivsi3+0xa0>
     f84:	e1110002 	tst	r1, r2
     f88:	0a000023 	beq	101c <__udivsi3+0xac>
     f8c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f90:	01a01181 	lsleq	r1, r1, #3
     f94:	03a03008 	moveq	r3, #8
     f98:	13a03001 	movne	r3, #1
     f9c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fa0:	31510000 	cmpcc	r1, r0
     fa4:	31a01201 	lslcc	r1, r1, #4
     fa8:	31a03203 	lslcc	r3, r3, #4
     fac:	3afffffa 	bcc	f9c <__udivsi3+0x2c>
     fb0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fb4:	31510000 	cmpcc	r1, r0
     fb8:	31a01081 	lslcc	r1, r1, #1
     fbc:	31a03083 	lslcc	r3, r3, #1
     fc0:	3afffffa 	bcc	fb0 <__udivsi3+0x40>
     fc4:	e3a02000 	mov	r2, #0
     fc8:	e1500001 	cmp	r0, r1
     fcc:	20400001 	subcs	r0, r0, r1
     fd0:	21822003 	orrcs	r2, r2, r3
     fd4:	e15000a1 	cmp	r0, r1, lsr #1
     fd8:	204000a1 	subcs	r0, r0, r1, lsr #1
     fdc:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fe0:	e1500121 	cmp	r0, r1, lsr #2
     fe4:	20400121 	subcs	r0, r0, r1, lsr #2
     fe8:	21822123 	orrcs	r2, r2, r3, lsr #2
     fec:	e15001a1 	cmp	r0, r1, lsr #3
     ff0:	204001a1 	subcs	r0, r0, r1, lsr #3
     ff4:	218221a3 	orrcs	r2, r2, r3, lsr #3
     ff8:	e3500000 	cmp	r0, #0
     ffc:	11b03223 	lsrsne	r3, r3, #4
    1000:	11a01221 	lsrne	r1, r1, #4
    1004:	1affffef 	bne	fc8 <__udivsi3+0x58>
    1008:	e1a00002 	mov	r0, r2
    100c:	e12fff1e 	bx	lr
    1010:	03a00001 	moveq	r0, #1
    1014:	13a00000 	movne	r0, #0
    1018:	e12fff1e 	bx	lr
    101c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1020:	21a01821 	lsrcs	r1, r1, #16
    1024:	23a02010 	movcs	r2, #16
    1028:	33a02000 	movcc	r2, #0
    102c:	e3510c01 	cmp	r1, #256	@ 0x100
    1030:	21a01421 	lsrcs	r1, r1, #8
    1034:	22822008 	addcs	r2, r2, #8
    1038:	e3510010 	cmp	r1, #16
    103c:	21a01221 	lsrcs	r1, r1, #4
    1040:	22822004 	addcs	r2, r2, #4
    1044:	e3510004 	cmp	r1, #4
    1048:	82822003 	addhi	r2, r2, #3
    104c:	908220a1 	addls	r2, r2, r1, lsr #1
    1050:	e1a00230 	lsr	r0, r0, r2
    1054:	e12fff1e 	bx	lr
    1058:	e3500000 	cmp	r0, #0
    105c:	13e00000 	mvnne	r0, #0
    1060:	ea000007 	b	1084 <__aeabi_idiv0>

00001064 <__aeabi_uidivmod>:
    1064:	e3510000 	cmp	r1, #0
    1068:	0afffffa 	beq	1058 <__udivsi3+0xe8>
    106c:	e92d4003 	push	{r0, r1, lr}
    1070:	ebffffbe 	bl	f70 <__udivsi3>
    1074:	e8bd4006 	pop	{r1, r2, lr}
    1078:	e0030092 	mul	r3, r2, r0
    107c:	e0411003 	sub	r1, r1, r3
    1080:	e12fff1e 	bx	lr

00001084 <__aeabi_idiv0>:
    1084:	e12fff1e 	bx	lr
