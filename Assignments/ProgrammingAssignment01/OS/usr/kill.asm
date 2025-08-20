
_kill:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530000 	cmp	r3, #0
      1c:	ca000003 	bgt	30 <main+0x30>
      20:	e59f105c 	ldr	r1, [pc, #92]	@ 84 <main+0x84>
      24:	e3a00002 	mov	r0, #2
      28:	eb00026e 	bl	9e8 <printf>
      2c:	eb000154 	bl	584 <exit>
      30:	e3a03001 	mov	r3, #1
      34:	e50b3008 	str	r3, [fp, #-8]
      38:	ea00000c 	b	70 <main+0x70>
      3c:	e51b3008 	ldr	r3, [fp, #-8]
      40:	e1a03103 	lsl	r3, r3, #2
      44:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      48:	e0823003 	add	r3, r2, r3
      4c:	e5933000 	ldr	r3, [r3]
      50:	e1a00003 	mov	r0, r3
      54:	eb000103 	bl	468 <atoi>
      58:	e1a03000 	mov	r3, r0
      5c:	e1a00003 	mov	r0, r3
      60:	eb00017d 	bl	65c <kill>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b2008 	ldr	r2, [fp, #-8]
      74:	e51b3010 	ldr	r3, [fp, #-16]
      78:	e1520003 	cmp	r2, r3
      7c:	baffffee 	blt	3c <main+0x3c>
      80:	eb00013f 	bl	584 <exit>
      84:	000010a4 	.word	0x000010a4

00000088 <strcpy>:
      88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      8c:	e28db000 	add	fp, sp, #0
      90:	e24dd014 	sub	sp, sp, #20
      94:	e50b0010 	str	r0, [fp, #-16]
      98:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      9c:	e51b3010 	ldr	r3, [fp, #-16]
      a0:	e50b3008 	str	r3, [fp, #-8]
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      ac:	e2823001 	add	r3, r2, #1
      b0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2831001 	add	r1, r3, #1
      bc:	e50b1010 	str	r1, [fp, #-16]
      c0:	e5d22000 	ldrb	r2, [r2]
      c4:	e5c32000 	strb	r2, [r3]
      c8:	e5d33000 	ldrb	r3, [r3]
      cc:	e3530000 	cmp	r3, #0
      d0:	1afffff4 	bne	a8 <strcpy+0x20>
      d4:	e51b3008 	ldr	r3, [fp, #-8]
      d8:	e1a00003 	mov	r0, r3
      dc:	e28bd000 	add	sp, fp, #0
      e0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      e4:	e12fff1e 	bx	lr

000000e8 <strcmp>:
      e8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      ec:	e28db000 	add	fp, sp, #0
      f0:	e24dd00c 	sub	sp, sp, #12
      f4:	e50b0008 	str	r0, [fp, #-8]
      f8:	e50b100c 	str	r1, [fp, #-12]
      fc:	ea000005 	b	118 <strcmp+0x30>
     100:	e51b3008 	ldr	r3, [fp, #-8]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b3008 	str	r3, [fp, #-8]
     10c:	e51b300c 	ldr	r3, [fp, #-12]
     110:	e2833001 	add	r3, r3, #1
     114:	e50b300c 	str	r3, [fp, #-12]
     118:	e51b3008 	ldr	r3, [fp, #-8]
     11c:	e5d33000 	ldrb	r3, [r3]
     120:	e3530000 	cmp	r3, #0
     124:	0a000005 	beq	140 <strcmp+0x58>
     128:	e51b3008 	ldr	r3, [fp, #-8]
     12c:	e5d32000 	ldrb	r2, [r3]
     130:	e51b300c 	ldr	r3, [fp, #-12]
     134:	e5d33000 	ldrb	r3, [r3]
     138:	e1520003 	cmp	r2, r3
     13c:	0affffef 	beq	100 <strcmp+0x18>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e1a02003 	mov	r2, r3
     14c:	e51b300c 	ldr	r3, [fp, #-12]
     150:	e5d33000 	ldrb	r3, [r3]
     154:	e0423003 	sub	r3, r2, r3
     158:	e1a00003 	mov	r0, r3
     15c:	e28bd000 	add	sp, fp, #0
     160:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     164:	e12fff1e 	bx	lr

00000168 <strlen>:
     168:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     16c:	e28db000 	add	fp, sp, #0
     170:	e24dd014 	sub	sp, sp, #20
     174:	e50b0010 	str	r0, [fp, #-16]
     178:	e3a03000 	mov	r3, #0
     17c:	e50b3008 	str	r3, [fp, #-8]
     180:	ea000002 	b	190 <strlen+0x28>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e2833001 	add	r3, r3, #1
     18c:	e50b3008 	str	r3, [fp, #-8]
     190:	e51b3008 	ldr	r3, [fp, #-8]
     194:	e51b2010 	ldr	r2, [fp, #-16]
     198:	e0823003 	add	r3, r2, r3
     19c:	e5d33000 	ldrb	r3, [r3]
     1a0:	e3530000 	cmp	r3, #0
     1a4:	1afffff6 	bne	184 <strlen+0x1c>
     1a8:	e51b3008 	ldr	r3, [fp, #-8]
     1ac:	e1a00003 	mov	r0, r3
     1b0:	e28bd000 	add	sp, fp, #0
     1b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1b8:	e12fff1e 	bx	lr

000001bc <memset>:
     1bc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1c0:	e28db000 	add	fp, sp, #0
     1c4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1c8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1d0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d8:	e50b3008 	str	r3, [fp, #-8]
     1dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1e0:	e54b300d 	strb	r3, [fp, #-13]
     1e4:	e55b200d 	ldrb	r2, [fp, #-13]
     1e8:	e1a03002 	mov	r3, r2
     1ec:	e1a03403 	lsl	r3, r3, #8
     1f0:	e0833002 	add	r3, r3, r2
     1f4:	e1a03803 	lsl	r3, r3, #16
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1a03403 	lsl	r3, r3, #8
     204:	e1822003 	orr	r2, r2, r3
     208:	e55b300d 	ldrb	r3, [fp, #-13]
     20c:	e1823003 	orr	r3, r2, r3
     210:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     214:	ea000008 	b	23c <memset+0x80>
     218:	e51b3008 	ldr	r3, [fp, #-8]
     21c:	e55b200d 	ldrb	r2, [fp, #-13]
     220:	e5c32000 	strb	r2, [r3]
     224:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     228:	e2433001 	sub	r3, r3, #1
     22c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     230:	e51b3008 	ldr	r3, [fp, #-8]
     234:	e2833001 	add	r3, r3, #1
     238:	e50b3008 	str	r3, [fp, #-8]
     23c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     240:	e3530000 	cmp	r3, #0
     244:	0a000003 	beq	258 <memset+0x9c>
     248:	e51b3008 	ldr	r3, [fp, #-8]
     24c:	e2033003 	and	r3, r3, #3
     250:	e3530000 	cmp	r3, #0
     254:	1affffef 	bne	218 <memset+0x5c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e50b300c 	str	r3, [fp, #-12]
     260:	ea000008 	b	288 <memset+0xcc>
     264:	e51b300c 	ldr	r3, [fp, #-12]
     268:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     26c:	e5832000 	str	r2, [r3]
     270:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     274:	e2433004 	sub	r3, r3, #4
     278:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     27c:	e51b300c 	ldr	r3, [fp, #-12]
     280:	e2833004 	add	r3, r3, #4
     284:	e50b300c 	str	r3, [fp, #-12]
     288:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     28c:	e3530003 	cmp	r3, #3
     290:	8afffff3 	bhi	264 <memset+0xa8>
     294:	e51b300c 	ldr	r3, [fp, #-12]
     298:	e50b3008 	str	r3, [fp, #-8]
     29c:	ea000008 	b	2c4 <memset+0x108>
     2a0:	e51b3008 	ldr	r3, [fp, #-8]
     2a4:	e55b200d 	ldrb	r2, [fp, #-13]
     2a8:	e5c32000 	strb	r2, [r3]
     2ac:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2b0:	e2433001 	sub	r3, r3, #1
     2b4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2b8:	e51b3008 	ldr	r3, [fp, #-8]
     2bc:	e2833001 	add	r3, r3, #1
     2c0:	e50b3008 	str	r3, [fp, #-8]
     2c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2c8:	e3530000 	cmp	r3, #0
     2cc:	1afffff3 	bne	2a0 <memset+0xe4>
     2d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2d4:	e1a00003 	mov	r0, r3
     2d8:	e28bd000 	add	sp, fp, #0
     2dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2e0:	e12fff1e 	bx	lr

000002e4 <strchr>:
     2e4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2e8:	e28db000 	add	fp, sp, #0
     2ec:	e24dd00c 	sub	sp, sp, #12
     2f0:	e50b0008 	str	r0, [fp, #-8]
     2f4:	e1a03001 	mov	r3, r1
     2f8:	e54b3009 	strb	r3, [fp, #-9]
     2fc:	ea000009 	b	328 <strchr+0x44>
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e5d33000 	ldrb	r3, [r3]
     308:	e55b2009 	ldrb	r2, [fp, #-9]
     30c:	e1520003 	cmp	r2, r3
     310:	1a000001 	bne	31c <strchr+0x38>
     314:	e51b3008 	ldr	r3, [fp, #-8]
     318:	ea000007 	b	33c <strchr+0x58>
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b3008 	str	r3, [fp, #-8]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	1afffff1 	bne	300 <strchr+0x1c>
     338:	e3a03000 	mov	r3, #0
     33c:	e1a00003 	mov	r0, r3
     340:	e28bd000 	add	sp, fp, #0
     344:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     348:	e12fff1e 	bx	lr

0000034c <gets>:
     34c:	e92d4800 	push	{fp, lr}
     350:	e28db004 	add	fp, sp, #4
     354:	e24dd018 	sub	sp, sp, #24
     358:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     35c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     360:	e3a03000 	mov	r3, #0
     364:	e50b3008 	str	r3, [fp, #-8]
     368:	ea000016 	b	3c8 <gets+0x7c>
     36c:	e24b300d 	sub	r3, fp, #13
     370:	e3a02001 	mov	r2, #1
     374:	e1a01003 	mov	r1, r3
     378:	e3a00000 	mov	r0, #0
     37c:	eb00009b 	bl	5f0 <read>
     380:	e50b000c 	str	r0, [fp, #-12]
     384:	e51b300c 	ldr	r3, [fp, #-12]
     388:	e3530000 	cmp	r3, #0
     38c:	da000013 	ble	3e0 <gets+0x94>
     390:	e51b3008 	ldr	r3, [fp, #-8]
     394:	e2832001 	add	r2, r3, #1
     398:	e50b2008 	str	r2, [fp, #-8]
     39c:	e1a02003 	mov	r2, r3
     3a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3a4:	e0833002 	add	r3, r3, r2
     3a8:	e55b200d 	ldrb	r2, [fp, #-13]
     3ac:	e5c32000 	strb	r2, [r3]
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000a 	cmp	r3, #10
     3b8:	0a000009 	beq	3e4 <gets+0x98>
     3bc:	e55b300d 	ldrb	r3, [fp, #-13]
     3c0:	e353000d 	cmp	r3, #13
     3c4:	0a000006 	beq	3e4 <gets+0x98>
     3c8:	e51b3008 	ldr	r3, [fp, #-8]
     3cc:	e2833001 	add	r3, r3, #1
     3d0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3d4:	e1520003 	cmp	r2, r3
     3d8:	caffffe3 	bgt	36c <gets+0x20>
     3dc:	ea000000 	b	3e4 <gets+0x98>
     3e0:	e1a00000 	nop			@ (mov r0, r0)
     3e4:	e51b3008 	ldr	r3, [fp, #-8]
     3e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3ec:	e0823003 	add	r3, r2, r3
     3f0:	e3a02000 	mov	r2, #0
     3f4:	e5c32000 	strb	r2, [r3]
     3f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3fc:	e1a00003 	mov	r0, r3
     400:	e24bd004 	sub	sp, fp, #4
     404:	e8bd8800 	pop	{fp, pc}

00000408 <stat>:
     408:	e92d4800 	push	{fp, lr}
     40c:	e28db004 	add	fp, sp, #4
     410:	e24dd010 	sub	sp, sp, #16
     414:	e50b0010 	str	r0, [fp, #-16]
     418:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     41c:	e3a01000 	mov	r1, #0
     420:	e51b0010 	ldr	r0, [fp, #-16]
     424:	eb00009e 	bl	6a4 <open>
     428:	e50b0008 	str	r0, [fp, #-8]
     42c:	e51b3008 	ldr	r3, [fp, #-8]
     430:	e3530000 	cmp	r3, #0
     434:	aa000001 	bge	440 <stat+0x38>
     438:	e3e03000 	mvn	r3, #0
     43c:	ea000006 	b	45c <stat+0x54>
     440:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb0000b0 	bl	710 <fstat>
     44c:	e50b000c 	str	r0, [fp, #-12]
     450:	e51b0008 	ldr	r0, [fp, #-8]
     454:	eb000077 	bl	638 <close>
     458:	e51b300c 	ldr	r3, [fp, #-12]
     45c:	e1a00003 	mov	r0, r3
     460:	e24bd004 	sub	sp, fp, #4
     464:	e8bd8800 	pop	{fp, pc}

00000468 <atoi>:
     468:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     46c:	e28db000 	add	fp, sp, #0
     470:	e24dd014 	sub	sp, sp, #20
     474:	e50b0010 	str	r0, [fp, #-16]
     478:	e3a03000 	mov	r3, #0
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	ea00000c 	b	4b8 <atoi+0x50>
     484:	e51b2008 	ldr	r2, [fp, #-8]
     488:	e1a03002 	mov	r3, r2
     48c:	e1a03103 	lsl	r3, r3, #2
     490:	e0833002 	add	r3, r3, r2
     494:	e1a03083 	lsl	r3, r3, #1
     498:	e1a01003 	mov	r1, r3
     49c:	e51b3010 	ldr	r3, [fp, #-16]
     4a0:	e2832001 	add	r2, r3, #1
     4a4:	e50b2010 	str	r2, [fp, #-16]
     4a8:	e5d33000 	ldrb	r3, [r3]
     4ac:	e0813003 	add	r3, r1, r3
     4b0:	e2433030 	sub	r3, r3, #48	@ 0x30
     4b4:	e50b3008 	str	r3, [fp, #-8]
     4b8:	e51b3010 	ldr	r3, [fp, #-16]
     4bc:	e5d33000 	ldrb	r3, [r3]
     4c0:	e353002f 	cmp	r3, #47	@ 0x2f
     4c4:	9a000003 	bls	4d8 <atoi+0x70>
     4c8:	e51b3010 	ldr	r3, [fp, #-16]
     4cc:	e5d33000 	ldrb	r3, [r3]
     4d0:	e3530039 	cmp	r3, #57	@ 0x39
     4d4:	9affffea 	bls	484 <atoi+0x1c>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e1a00003 	mov	r0, r3
     4e0:	e28bd000 	add	sp, fp, #0
     4e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4e8:	e12fff1e 	bx	lr

000004ec <memmove>:
     4ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f0:	e28db000 	add	fp, sp, #0
     4f4:	e24dd01c 	sub	sp, sp, #28
     4f8:	e50b0010 	str	r0, [fp, #-16]
     4fc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     500:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     504:	e51b3010 	ldr	r3, [fp, #-16]
     508:	e50b3008 	str	r3, [fp, #-8]
     50c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     510:	e50b300c 	str	r3, [fp, #-12]
     514:	ea000007 	b	538 <memmove+0x4c>
     518:	e51b200c 	ldr	r2, [fp, #-12]
     51c:	e2823001 	add	r3, r2, #1
     520:	e50b300c 	str	r3, [fp, #-12]
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	e2831001 	add	r1, r3, #1
     52c:	e50b1008 	str	r1, [fp, #-8]
     530:	e5d22000 	ldrb	r2, [r2]
     534:	e5c32000 	strb	r2, [r3]
     538:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     53c:	e2432001 	sub	r2, r3, #1
     540:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     544:	e3530000 	cmp	r3, #0
     548:	cafffff2 	bgt	518 <memmove+0x2c>
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e1a00003 	mov	r0, r3
     554:	e28bd000 	add	sp, fp, #0
     558:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     55c:	e12fff1e 	bx	lr

00000560 <fork>:
     560:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     564:	e1a04003 	mov	r4, r3
     568:	e1a03002 	mov	r3, r2
     56c:	e1a02001 	mov	r2, r1
     570:	e1a01000 	mov	r1, r0
     574:	e3a00001 	mov	r0, #1
     578:	ef000000 	svc	0x00000000
     57c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     580:	e12fff1e 	bx	lr

00000584 <exit>:
     584:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     588:	e1a04003 	mov	r4, r3
     58c:	e1a03002 	mov	r3, r2
     590:	e1a02001 	mov	r2, r1
     594:	e1a01000 	mov	r1, r0
     598:	e3a00002 	mov	r0, #2
     59c:	ef000000 	svc	0x00000000
     5a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5a4:	e12fff1e 	bx	lr

000005a8 <wait>:
     5a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5ac:	e1a04003 	mov	r4, r3
     5b0:	e1a03002 	mov	r3, r2
     5b4:	e1a02001 	mov	r2, r1
     5b8:	e1a01000 	mov	r1, r0
     5bc:	e3a00003 	mov	r0, #3
     5c0:	ef000000 	svc	0x00000000
     5c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5c8:	e12fff1e 	bx	lr

000005cc <pipe>:
     5cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5d0:	e1a04003 	mov	r4, r3
     5d4:	e1a03002 	mov	r3, r2
     5d8:	e1a02001 	mov	r2, r1
     5dc:	e1a01000 	mov	r1, r0
     5e0:	e3a00004 	mov	r0, #4
     5e4:	ef000000 	svc	0x00000000
     5e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5ec:	e12fff1e 	bx	lr

000005f0 <read>:
     5f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5f4:	e1a04003 	mov	r4, r3
     5f8:	e1a03002 	mov	r3, r2
     5fc:	e1a02001 	mov	r2, r1
     600:	e1a01000 	mov	r1, r0
     604:	e3a00005 	mov	r0, #5
     608:	ef000000 	svc	0x00000000
     60c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     610:	e12fff1e 	bx	lr

00000614 <write>:
     614:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     618:	e1a04003 	mov	r4, r3
     61c:	e1a03002 	mov	r3, r2
     620:	e1a02001 	mov	r2, r1
     624:	e1a01000 	mov	r1, r0
     628:	e3a00010 	mov	r0, #16
     62c:	ef000000 	svc	0x00000000
     630:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     634:	e12fff1e 	bx	lr

00000638 <close>:
     638:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     63c:	e1a04003 	mov	r4, r3
     640:	e1a03002 	mov	r3, r2
     644:	e1a02001 	mov	r2, r1
     648:	e1a01000 	mov	r1, r0
     64c:	e3a00015 	mov	r0, #21
     650:	ef000000 	svc	0x00000000
     654:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     658:	e12fff1e 	bx	lr

0000065c <kill>:
     65c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     660:	e1a04003 	mov	r4, r3
     664:	e1a03002 	mov	r3, r2
     668:	e1a02001 	mov	r2, r1
     66c:	e1a01000 	mov	r1, r0
     670:	e3a00006 	mov	r0, #6
     674:	ef000000 	svc	0x00000000
     678:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     67c:	e12fff1e 	bx	lr

00000680 <exec>:
     680:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     684:	e1a04003 	mov	r4, r3
     688:	e1a03002 	mov	r3, r2
     68c:	e1a02001 	mov	r2, r1
     690:	e1a01000 	mov	r1, r0
     694:	e3a00007 	mov	r0, #7
     698:	ef000000 	svc	0x00000000
     69c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6a0:	e12fff1e 	bx	lr

000006a4 <open>:
     6a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a8:	e1a04003 	mov	r4, r3
     6ac:	e1a03002 	mov	r3, r2
     6b0:	e1a02001 	mov	r2, r1
     6b4:	e1a01000 	mov	r1, r0
     6b8:	e3a0000f 	mov	r0, #15
     6bc:	ef000000 	svc	0x00000000
     6c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c4:	e12fff1e 	bx	lr

000006c8 <mknod>:
     6c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6cc:	e1a04003 	mov	r4, r3
     6d0:	e1a03002 	mov	r3, r2
     6d4:	e1a02001 	mov	r2, r1
     6d8:	e1a01000 	mov	r1, r0
     6dc:	e3a00011 	mov	r0, #17
     6e0:	ef000000 	svc	0x00000000
     6e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e8:	e12fff1e 	bx	lr

000006ec <unlink>:
     6ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6f0:	e1a04003 	mov	r4, r3
     6f4:	e1a03002 	mov	r3, r2
     6f8:	e1a02001 	mov	r2, r1
     6fc:	e1a01000 	mov	r1, r0
     700:	e3a00012 	mov	r0, #18
     704:	ef000000 	svc	0x00000000
     708:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     70c:	e12fff1e 	bx	lr

00000710 <fstat>:
     710:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     714:	e1a04003 	mov	r4, r3
     718:	e1a03002 	mov	r3, r2
     71c:	e1a02001 	mov	r2, r1
     720:	e1a01000 	mov	r1, r0
     724:	e3a00008 	mov	r0, #8
     728:	ef000000 	svc	0x00000000
     72c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     730:	e12fff1e 	bx	lr

00000734 <link>:
     734:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     738:	e1a04003 	mov	r4, r3
     73c:	e1a03002 	mov	r3, r2
     740:	e1a02001 	mov	r2, r1
     744:	e1a01000 	mov	r1, r0
     748:	e3a00013 	mov	r0, #19
     74c:	ef000000 	svc	0x00000000
     750:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     754:	e12fff1e 	bx	lr

00000758 <mkdir>:
     758:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     75c:	e1a04003 	mov	r4, r3
     760:	e1a03002 	mov	r3, r2
     764:	e1a02001 	mov	r2, r1
     768:	e1a01000 	mov	r1, r0
     76c:	e3a00014 	mov	r0, #20
     770:	ef000000 	svc	0x00000000
     774:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     778:	e12fff1e 	bx	lr

0000077c <chdir>:
     77c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     780:	e1a04003 	mov	r4, r3
     784:	e1a03002 	mov	r3, r2
     788:	e1a02001 	mov	r2, r1
     78c:	e1a01000 	mov	r1, r0
     790:	e3a00009 	mov	r0, #9
     794:	ef000000 	svc	0x00000000
     798:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     79c:	e12fff1e 	bx	lr

000007a0 <dup>:
     7a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a4:	e1a04003 	mov	r4, r3
     7a8:	e1a03002 	mov	r3, r2
     7ac:	e1a02001 	mov	r2, r1
     7b0:	e1a01000 	mov	r1, r0
     7b4:	e3a0000a 	mov	r0, #10
     7b8:	ef000000 	svc	0x00000000
     7bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7c0:	e12fff1e 	bx	lr

000007c4 <getpid>:
     7c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c8:	e1a04003 	mov	r4, r3
     7cc:	e1a03002 	mov	r3, r2
     7d0:	e1a02001 	mov	r2, r1
     7d4:	e1a01000 	mov	r1, r0
     7d8:	e3a0000b 	mov	r0, #11
     7dc:	ef000000 	svc	0x00000000
     7e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e4:	e12fff1e 	bx	lr

000007e8 <sbrk>:
     7e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7ec:	e1a04003 	mov	r4, r3
     7f0:	e1a03002 	mov	r3, r2
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e1a01000 	mov	r1, r0
     7fc:	e3a0000c 	mov	r0, #12
     800:	ef000000 	svc	0x00000000
     804:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     808:	e12fff1e 	bx	lr

0000080c <sleep>:
     80c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     810:	e1a04003 	mov	r4, r3
     814:	e1a03002 	mov	r3, r2
     818:	e1a02001 	mov	r2, r1
     81c:	e1a01000 	mov	r1, r0
     820:	e3a0000d 	mov	r0, #13
     824:	ef000000 	svc	0x00000000
     828:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     82c:	e12fff1e 	bx	lr

00000830 <uptime>:
     830:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     834:	e1a04003 	mov	r4, r3
     838:	e1a03002 	mov	r3, r2
     83c:	e1a02001 	mov	r2, r1
     840:	e1a01000 	mov	r1, r0
     844:	e3a0000e 	mov	r0, #14
     848:	ef000000 	svc	0x00000000
     84c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     850:	e12fff1e 	bx	lr

00000854 <ps>:
     854:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     858:	e1a04003 	mov	r4, r3
     85c:	e1a03002 	mov	r3, r2
     860:	e1a02001 	mov	r2, r1
     864:	e1a01000 	mov	r1, r0
     868:	e3a00016 	mov	r0, #22
     86c:	ef000000 	svc	0x00000000
     870:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     874:	e12fff1e 	bx	lr

00000878 <putc>:
     878:	e92d4800 	push	{fp, lr}
     87c:	e28db004 	add	fp, sp, #4
     880:	e24dd008 	sub	sp, sp, #8
     884:	e50b0008 	str	r0, [fp, #-8]
     888:	e1a03001 	mov	r3, r1
     88c:	e54b3009 	strb	r3, [fp, #-9]
     890:	e24b3009 	sub	r3, fp, #9
     894:	e3a02001 	mov	r2, #1
     898:	e1a01003 	mov	r1, r3
     89c:	e51b0008 	ldr	r0, [fp, #-8]
     8a0:	ebffff5b 	bl	614 <write>
     8a4:	e1a00000 	nop			@ (mov r0, r0)
     8a8:	e24bd004 	sub	sp, fp, #4
     8ac:	e8bd8800 	pop	{fp, pc}

000008b0 <printint>:
     8b0:	e92d4800 	push	{fp, lr}
     8b4:	e28db004 	add	fp, sp, #4
     8b8:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8bc:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8c0:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8c4:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8c8:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8cc:	e3a03000 	mov	r3, #0
     8d0:	e50b300c 	str	r3, [fp, #-12]
     8d4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8d8:	e3530000 	cmp	r3, #0
     8dc:	0a000008 	beq	904 <printint+0x54>
     8e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8e4:	e3530000 	cmp	r3, #0
     8e8:	aa000005 	bge	904 <printint+0x54>
     8ec:	e3a03001 	mov	r3, #1
     8f0:	e50b300c 	str	r3, [fp, #-12]
     8f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8f8:	e2633000 	rsb	r3, r3, #0
     8fc:	e50b3010 	str	r3, [fp, #-16]
     900:	ea000001 	b	90c <printint+0x5c>
     904:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     908:	e50b3010 	str	r3, [fp, #-16]
     90c:	e3a03000 	mov	r3, #0
     910:	e50b3008 	str	r3, [fp, #-8]
     914:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     918:	e51b3010 	ldr	r3, [fp, #-16]
     91c:	e1a01002 	mov	r1, r2
     920:	e1a00003 	mov	r0, r3
     924:	eb0001d5 	bl	1080 <__aeabi_uidivmod>
     928:	e1a03001 	mov	r3, r1
     92c:	e1a01003 	mov	r1, r3
     930:	e51b3008 	ldr	r3, [fp, #-8]
     934:	e2832001 	add	r2, r3, #1
     938:	e50b2008 	str	r2, [fp, #-8]
     93c:	e59f20a0 	ldr	r2, [pc, #160]	@ 9e4 <printint+0x134>
     940:	e7d22001 	ldrb	r2, [r2, r1]
     944:	e2433004 	sub	r3, r3, #4
     948:	e083300b 	add	r3, r3, fp
     94c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     950:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     954:	e1a01003 	mov	r1, r3
     958:	e51b0010 	ldr	r0, [fp, #-16]
     95c:	eb00018a 	bl	f8c <__udivsi3>
     960:	e1a03000 	mov	r3, r0
     964:	e50b3010 	str	r3, [fp, #-16]
     968:	e51b3010 	ldr	r3, [fp, #-16]
     96c:	e3530000 	cmp	r3, #0
     970:	1affffe7 	bne	914 <printint+0x64>
     974:	e51b300c 	ldr	r3, [fp, #-12]
     978:	e3530000 	cmp	r3, #0
     97c:	0a00000e 	beq	9bc <printint+0x10c>
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e2832001 	add	r2, r3, #1
     988:	e50b2008 	str	r2, [fp, #-8]
     98c:	e2433004 	sub	r3, r3, #4
     990:	e083300b 	add	r3, r3, fp
     994:	e3a0202d 	mov	r2, #45	@ 0x2d
     998:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     99c:	ea000006 	b	9bc <printint+0x10c>
     9a0:	e24b2020 	sub	r2, fp, #32
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e0823003 	add	r3, r2, r3
     9ac:	e5d33000 	ldrb	r3, [r3]
     9b0:	e1a01003 	mov	r1, r3
     9b4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9b8:	ebffffae 	bl	878 <putc>
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e2433001 	sub	r3, r3, #1
     9c4:	e50b3008 	str	r3, [fp, #-8]
     9c8:	e51b3008 	ldr	r3, [fp, #-8]
     9cc:	e3530000 	cmp	r3, #0
     9d0:	aafffff2 	bge	9a0 <printint+0xf0>
     9d4:	e1a00000 	nop			@ (mov r0, r0)
     9d8:	e1a00000 	nop			@ (mov r0, r0)
     9dc:	e24bd004 	sub	sp, fp, #4
     9e0:	e8bd8800 	pop	{fp, pc}
     9e4:	000010c0 	.word	0x000010c0

000009e8 <printf>:
     9e8:	e92d000e 	push	{r1, r2, r3}
     9ec:	e92d4800 	push	{fp, lr}
     9f0:	e28db004 	add	fp, sp, #4
     9f4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9f8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9fc:	e3a03000 	mov	r3, #0
     a00:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a04:	e28b3008 	add	r3, fp, #8
     a08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a0c:	e3a03000 	mov	r3, #0
     a10:	e50b3010 	str	r3, [fp, #-16]
     a14:	ea000074 	b	bec <printf+0x204>
     a18:	e59b2004 	ldr	r2, [fp, #4]
     a1c:	e51b3010 	ldr	r3, [fp, #-16]
     a20:	e0823003 	add	r3, r2, r3
     a24:	e5d33000 	ldrb	r3, [r3]
     a28:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a30:	e3530000 	cmp	r3, #0
     a34:	1a00000b 	bne	a68 <printf+0x80>
     a38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a3c:	e3530025 	cmp	r3, #37	@ 0x25
     a40:	1a000002 	bne	a50 <printf+0x68>
     a44:	e3a03025 	mov	r3, #37	@ 0x25
     a48:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a4c:	ea000063 	b	be0 <printf+0x1f8>
     a50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a54:	e6ef3073 	uxtb	r3, r3
     a58:	e1a01003 	mov	r1, r3
     a5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a60:	ebffff84 	bl	878 <putc>
     a64:	ea00005d 	b	be0 <printf+0x1f8>
     a68:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a6c:	e3530025 	cmp	r3, #37	@ 0x25
     a70:	1a00005a 	bne	be0 <printf+0x1f8>
     a74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a78:	e3530064 	cmp	r3, #100	@ 0x64
     a7c:	1a00000a 	bne	aac <printf+0xc4>
     a80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a84:	e5933000 	ldr	r3, [r3]
     a88:	e1a01003 	mov	r1, r3
     a8c:	e3a03001 	mov	r3, #1
     a90:	e3a0200a 	mov	r2, #10
     a94:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a98:	ebffff84 	bl	8b0 <printint>
     a9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa0:	e2833004 	add	r3, r3, #4
     aa4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aa8:	ea00004a 	b	bd8 <printf+0x1f0>
     aac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab0:	e3530078 	cmp	r3, #120	@ 0x78
     ab4:	0a000002 	beq	ac4 <printf+0xdc>
     ab8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     abc:	e3530070 	cmp	r3, #112	@ 0x70
     ac0:	1a00000a 	bne	af0 <printf+0x108>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e5933000 	ldr	r3, [r3]
     acc:	e1a01003 	mov	r1, r3
     ad0:	e3a03000 	mov	r3, #0
     ad4:	e3a02010 	mov	r2, #16
     ad8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     adc:	ebffff73 	bl	8b0 <printint>
     ae0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae4:	e2833004 	add	r3, r3, #4
     ae8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     aec:	ea000039 	b	bd8 <printf+0x1f0>
     af0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     af4:	e3530073 	cmp	r3, #115	@ 0x73
     af8:	1a000018 	bne	b60 <printf+0x178>
     afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e5933000 	ldr	r3, [r3]
     b04:	e50b300c 	str	r3, [fp, #-12]
     b08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b0c:	e2833004 	add	r3, r3, #4
     b10:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b14:	e51b300c 	ldr	r3, [fp, #-12]
     b18:	e3530000 	cmp	r3, #0
     b1c:	1a00000a 	bne	b4c <printf+0x164>
     b20:	e59f30f4 	ldr	r3, [pc, #244]	@ c1c <printf+0x234>
     b24:	e50b300c 	str	r3, [fp, #-12]
     b28:	ea000007 	b	b4c <printf+0x164>
     b2c:	e51b300c 	ldr	r3, [fp, #-12]
     b30:	e5d33000 	ldrb	r3, [r3]
     b34:	e1a01003 	mov	r1, r3
     b38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b3c:	ebffff4d 	bl	878 <putc>
     b40:	e51b300c 	ldr	r3, [fp, #-12]
     b44:	e2833001 	add	r3, r3, #1
     b48:	e50b300c 	str	r3, [fp, #-12]
     b4c:	e51b300c 	ldr	r3, [fp, #-12]
     b50:	e5d33000 	ldrb	r3, [r3]
     b54:	e3530000 	cmp	r3, #0
     b58:	1afffff3 	bne	b2c <printf+0x144>
     b5c:	ea00001d 	b	bd8 <printf+0x1f0>
     b60:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b64:	e3530063 	cmp	r3, #99	@ 0x63
     b68:	1a000009 	bne	b94 <printf+0x1ac>
     b6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b70:	e5933000 	ldr	r3, [r3]
     b74:	e6ef3073 	uxtb	r3, r3
     b78:	e1a01003 	mov	r1, r3
     b7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b80:	ebffff3c 	bl	878 <putc>
     b84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b88:	e2833004 	add	r3, r3, #4
     b8c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b90:	ea000010 	b	bd8 <printf+0x1f0>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b98:	e3530025 	cmp	r3, #37	@ 0x25
     b9c:	1a000005 	bne	bb8 <printf+0x1d0>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e6ef3073 	uxtb	r3, r3
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb0:	ebffff30 	bl	878 <putc>
     bb4:	ea000007 	b	bd8 <printf+0x1f0>
     bb8:	e3a01025 	mov	r1, #37	@ 0x25
     bbc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc0:	ebffff2c 	bl	878 <putc>
     bc4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc8:	e6ef3073 	uxtb	r3, r3
     bcc:	e1a01003 	mov	r1, r3
     bd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd4:	ebffff27 	bl	878 <putc>
     bd8:	e3a03000 	mov	r3, #0
     bdc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be0:	e51b3010 	ldr	r3, [fp, #-16]
     be4:	e2833001 	add	r3, r3, #1
     be8:	e50b3010 	str	r3, [fp, #-16]
     bec:	e59b2004 	ldr	r2, [fp, #4]
     bf0:	e51b3010 	ldr	r3, [fp, #-16]
     bf4:	e0823003 	add	r3, r2, r3
     bf8:	e5d33000 	ldrb	r3, [r3]
     bfc:	e3530000 	cmp	r3, #0
     c00:	1affff84 	bne	a18 <printf+0x30>
     c04:	e1a00000 	nop			@ (mov r0, r0)
     c08:	e1a00000 	nop			@ (mov r0, r0)
     c0c:	e24bd004 	sub	sp, fp, #4
     c10:	e8bd4800 	pop	{fp, lr}
     c14:	e28dd00c 	add	sp, sp, #12
     c18:	e12fff1e 	bx	lr
     c1c:	000010b8 	.word	0x000010b8

00000c20 <free>:
     c20:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c24:	e28db000 	add	fp, sp, #0
     c28:	e24dd014 	sub	sp, sp, #20
     c2c:	e50b0010 	str	r0, [fp, #-16]
     c30:	e51b3010 	ldr	r3, [fp, #-16]
     c34:	e2433008 	sub	r3, r3, #8
     c38:	e50b300c 	str	r3, [fp, #-12]
     c3c:	e59f3154 	ldr	r3, [pc, #340]	@ d98 <free+0x178>
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e50b3008 	str	r3, [fp, #-8]
     c48:	ea000010 	b	c90 <free+0x70>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e51b2008 	ldr	r2, [fp, #-8]
     c58:	e1520003 	cmp	r2, r3
     c5c:	3a000008 	bcc	c84 <free+0x64>
     c60:	e51b200c 	ldr	r2, [fp, #-12]
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e1520003 	cmp	r2, r3
     c6c:	8a000010 	bhi	cb4 <free+0x94>
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e5933000 	ldr	r3, [r3]
     c78:	e51b200c 	ldr	r2, [fp, #-12]
     c7c:	e1520003 	cmp	r2, r3
     c80:	3a00000b 	bcc	cb4 <free+0x94>
     c84:	e51b3008 	ldr	r3, [fp, #-8]
     c88:	e5933000 	ldr	r3, [r3]
     c8c:	e50b3008 	str	r3, [fp, #-8]
     c90:	e51b200c 	ldr	r2, [fp, #-12]
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e1520003 	cmp	r2, r3
     c9c:	9affffea 	bls	c4c <free+0x2c>
     ca0:	e51b3008 	ldr	r3, [fp, #-8]
     ca4:	e5933000 	ldr	r3, [r3]
     ca8:	e51b200c 	ldr	r2, [fp, #-12]
     cac:	e1520003 	cmp	r2, r3
     cb0:	2affffe5 	bcs	c4c <free+0x2c>
     cb4:	e51b300c 	ldr	r3, [fp, #-12]
     cb8:	e5933004 	ldr	r3, [r3, #4]
     cbc:	e1a03183 	lsl	r3, r3, #3
     cc0:	e51b200c 	ldr	r2, [fp, #-12]
     cc4:	e0822003 	add	r2, r2, r3
     cc8:	e51b3008 	ldr	r3, [fp, #-8]
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e1520003 	cmp	r2, r3
     cd4:	1a00000d 	bne	d10 <free+0xf0>
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e5932004 	ldr	r2, [r3, #4]
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e5933004 	ldr	r3, [r3, #4]
     cec:	e0822003 	add	r2, r2, r3
     cf0:	e51b300c 	ldr	r3, [fp, #-12]
     cf4:	e5832004 	str	r2, [r3, #4]
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e5933000 	ldr	r3, [r3]
     d00:	e5932000 	ldr	r2, [r3]
     d04:	e51b300c 	ldr	r3, [fp, #-12]
     d08:	e5832000 	str	r2, [r3]
     d0c:	ea000003 	b	d20 <free+0x100>
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5932000 	ldr	r2, [r3]
     d18:	e51b300c 	ldr	r3, [fp, #-12]
     d1c:	e5832000 	str	r2, [r3]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933004 	ldr	r3, [r3, #4]
     d28:	e1a03183 	lsl	r3, r3, #3
     d2c:	e51b2008 	ldr	r2, [fp, #-8]
     d30:	e0823003 	add	r3, r2, r3
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e1520003 	cmp	r2, r3
     d3c:	1a00000b 	bne	d70 <free+0x150>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5932004 	ldr	r2, [r3, #4]
     d48:	e51b300c 	ldr	r3, [fp, #-12]
     d4c:	e5933004 	ldr	r3, [r3, #4]
     d50:	e0822003 	add	r2, r2, r3
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5832004 	str	r2, [r3, #4]
     d5c:	e51b300c 	ldr	r3, [fp, #-12]
     d60:	e5932000 	ldr	r2, [r3]
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5832000 	str	r2, [r3]
     d6c:	ea000002 	b	d7c <free+0x15c>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e51b200c 	ldr	r2, [fp, #-12]
     d78:	e5832000 	str	r2, [r3]
     d7c:	e59f2014 	ldr	r2, [pc, #20]	@ d98 <free+0x178>
     d80:	e51b3008 	ldr	r3, [fp, #-8]
     d84:	e5823000 	str	r3, [r2]
     d88:	e1a00000 	nop			@ (mov r0, r0)
     d8c:	e28bd000 	add	sp, fp, #0
     d90:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d94:	e12fff1e 	bx	lr
     d98:	000010dc 	.word	0x000010dc

00000d9c <morecore>:
     d9c:	e92d4800 	push	{fp, lr}
     da0:	e28db004 	add	fp, sp, #4
     da4:	e24dd010 	sub	sp, sp, #16
     da8:	e50b0010 	str	r0, [fp, #-16]
     dac:	e51b3010 	ldr	r3, [fp, #-16]
     db0:	e3530a01 	cmp	r3, #4096	@ 0x1000
     db4:	2a000001 	bcs	dc0 <morecore+0x24>
     db8:	e3a03a01 	mov	r3, #4096	@ 0x1000
     dbc:	e50b3010 	str	r3, [fp, #-16]
     dc0:	e51b3010 	ldr	r3, [fp, #-16]
     dc4:	e1a03183 	lsl	r3, r3, #3
     dc8:	e1a00003 	mov	r0, r3
     dcc:	ebfffe85 	bl	7e8 <sbrk>
     dd0:	e50b0008 	str	r0, [fp, #-8]
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e3730001 	cmn	r3, #1
     ddc:	1a000001 	bne	de8 <morecore+0x4c>
     de0:	e3a03000 	mov	r3, #0
     de4:	ea00000a 	b	e14 <morecore+0x78>
     de8:	e51b3008 	ldr	r3, [fp, #-8]
     dec:	e50b300c 	str	r3, [fp, #-12]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e51b2010 	ldr	r2, [fp, #-16]
     df8:	e5832004 	str	r2, [r3, #4]
     dfc:	e51b300c 	ldr	r3, [fp, #-12]
     e00:	e2833008 	add	r3, r3, #8
     e04:	e1a00003 	mov	r0, r3
     e08:	ebffff84 	bl	c20 <free>
     e0c:	e59f300c 	ldr	r3, [pc, #12]	@ e20 <morecore+0x84>
     e10:	e5933000 	ldr	r3, [r3]
     e14:	e1a00003 	mov	r0, r3
     e18:	e24bd004 	sub	sp, fp, #4
     e1c:	e8bd8800 	pop	{fp, pc}
     e20:	000010dc 	.word	0x000010dc

00000e24 <malloc>:
     e24:	e92d4800 	push	{fp, lr}
     e28:	e28db004 	add	fp, sp, #4
     e2c:	e24dd018 	sub	sp, sp, #24
     e30:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e38:	e2833007 	add	r3, r3, #7
     e3c:	e1a031a3 	lsr	r3, r3, #3
     e40:	e2833001 	add	r3, r3, #1
     e44:	e50b3010 	str	r3, [fp, #-16]
     e48:	e59f3134 	ldr	r3, [pc, #308]	@ f84 <malloc+0x160>
     e4c:	e5933000 	ldr	r3, [r3]
     e50:	e50b300c 	str	r3, [fp, #-12]
     e54:	e51b300c 	ldr	r3, [fp, #-12]
     e58:	e3530000 	cmp	r3, #0
     e5c:	1a00000b 	bne	e90 <malloc+0x6c>
     e60:	e59f3120 	ldr	r3, [pc, #288]	@ f88 <malloc+0x164>
     e64:	e50b300c 	str	r3, [fp, #-12]
     e68:	e59f2114 	ldr	r2, [pc, #276]	@ f84 <malloc+0x160>
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e5823000 	str	r3, [r2]
     e74:	e59f3108 	ldr	r3, [pc, #264]	@ f84 <malloc+0x160>
     e78:	e5933000 	ldr	r3, [r3]
     e7c:	e59f2104 	ldr	r2, [pc, #260]	@ f88 <malloc+0x164>
     e80:	e5823000 	str	r3, [r2]
     e84:	e59f30fc 	ldr	r3, [pc, #252]	@ f88 <malloc+0x164>
     e88:	e3a02000 	mov	r2, #0
     e8c:	e5832004 	str	r2, [r3, #4]
     e90:	e51b300c 	ldr	r3, [fp, #-12]
     e94:	e5933000 	ldr	r3, [r3]
     e98:	e50b3008 	str	r3, [fp, #-8]
     e9c:	e51b3008 	ldr	r3, [fp, #-8]
     ea0:	e5933004 	ldr	r3, [r3, #4]
     ea4:	e51b2010 	ldr	r2, [fp, #-16]
     ea8:	e1520003 	cmp	r2, r3
     eac:	8a00001e 	bhi	f2c <malloc+0x108>
     eb0:	e51b3008 	ldr	r3, [fp, #-8]
     eb4:	e5933004 	ldr	r3, [r3, #4]
     eb8:	e51b2010 	ldr	r2, [fp, #-16]
     ebc:	e1520003 	cmp	r2, r3
     ec0:	1a000004 	bne	ed8 <malloc+0xb4>
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5932000 	ldr	r2, [r3]
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e5832000 	str	r2, [r3]
     ed4:	ea00000e 	b	f14 <malloc+0xf0>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5932004 	ldr	r2, [r3, #4]
     ee0:	e51b3010 	ldr	r3, [fp, #-16]
     ee4:	e0422003 	sub	r2, r2, r3
     ee8:	e51b3008 	ldr	r3, [fp, #-8]
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e5933004 	ldr	r3, [r3, #4]
     ef8:	e1a03183 	lsl	r3, r3, #3
     efc:	e51b2008 	ldr	r2, [fp, #-8]
     f00:	e0823003 	add	r3, r2, r3
     f04:	e50b3008 	str	r3, [fp, #-8]
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e51b2010 	ldr	r2, [fp, #-16]
     f10:	e5832004 	str	r2, [r3, #4]
     f14:	e59f2068 	ldr	r2, [pc, #104]	@ f84 <malloc+0x160>
     f18:	e51b300c 	ldr	r3, [fp, #-12]
     f1c:	e5823000 	str	r3, [r2]
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e2833008 	add	r3, r3, #8
     f28:	ea000012 	b	f78 <malloc+0x154>
     f2c:	e59f3050 	ldr	r3, [pc, #80]	@ f84 <malloc+0x160>
     f30:	e5933000 	ldr	r3, [r3]
     f34:	e51b2008 	ldr	r2, [fp, #-8]
     f38:	e1520003 	cmp	r2, r3
     f3c:	1a000007 	bne	f60 <malloc+0x13c>
     f40:	e51b0010 	ldr	r0, [fp, #-16]
     f44:	ebffff94 	bl	d9c <morecore>
     f48:	e50b0008 	str	r0, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e3530000 	cmp	r3, #0
     f54:	1a000001 	bne	f60 <malloc+0x13c>
     f58:	e3a03000 	mov	r3, #0
     f5c:	ea000005 	b	f78 <malloc+0x154>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e50b300c 	str	r3, [fp, #-12]
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e50b3008 	str	r3, [fp, #-8]
     f74:	eaffffc8 	b	e9c <malloc+0x78>
     f78:	e1a00003 	mov	r0, r3
     f7c:	e24bd004 	sub	sp, fp, #4
     f80:	e8bd8800 	pop	{fp, pc}
     f84:	000010dc 	.word	0x000010dc
     f88:	000010d4 	.word	0x000010d4

00000f8c <__udivsi3>:
     f8c:	e2512001 	subs	r2, r1, #1
     f90:	012fff1e 	bxeq	lr
     f94:	3a000036 	bcc	1074 <__udivsi3+0xe8>
     f98:	e1500001 	cmp	r0, r1
     f9c:	9a000022 	bls	102c <__udivsi3+0xa0>
     fa0:	e1110002 	tst	r1, r2
     fa4:	0a000023 	beq	1038 <__udivsi3+0xac>
     fa8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fac:	01a01181 	lsleq	r1, r1, #3
     fb0:	03a03008 	moveq	r3, #8
     fb4:	13a03001 	movne	r3, #1
     fb8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fbc:	31510000 	cmpcc	r1, r0
     fc0:	31a01201 	lslcc	r1, r1, #4
     fc4:	31a03203 	lslcc	r3, r3, #4
     fc8:	3afffffa 	bcc	fb8 <__udivsi3+0x2c>
     fcc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fd0:	31510000 	cmpcc	r1, r0
     fd4:	31a01081 	lslcc	r1, r1, #1
     fd8:	31a03083 	lslcc	r3, r3, #1
     fdc:	3afffffa 	bcc	fcc <__udivsi3+0x40>
     fe0:	e3a02000 	mov	r2, #0
     fe4:	e1500001 	cmp	r0, r1
     fe8:	20400001 	subcs	r0, r0, r1
     fec:	21822003 	orrcs	r2, r2, r3
     ff0:	e15000a1 	cmp	r0, r1, lsr #1
     ff4:	204000a1 	subcs	r0, r0, r1, lsr #1
     ff8:	218220a3 	orrcs	r2, r2, r3, lsr #1
     ffc:	e1500121 	cmp	r0, r1, lsr #2
    1000:	20400121 	subcs	r0, r0, r1, lsr #2
    1004:	21822123 	orrcs	r2, r2, r3, lsr #2
    1008:	e15001a1 	cmp	r0, r1, lsr #3
    100c:	204001a1 	subcs	r0, r0, r1, lsr #3
    1010:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1014:	e3500000 	cmp	r0, #0
    1018:	11b03223 	lsrsne	r3, r3, #4
    101c:	11a01221 	lsrne	r1, r1, #4
    1020:	1affffef 	bne	fe4 <__udivsi3+0x58>
    1024:	e1a00002 	mov	r0, r2
    1028:	e12fff1e 	bx	lr
    102c:	03a00001 	moveq	r0, #1
    1030:	13a00000 	movne	r0, #0
    1034:	e12fff1e 	bx	lr
    1038:	e3510801 	cmp	r1, #65536	@ 0x10000
    103c:	21a01821 	lsrcs	r1, r1, #16
    1040:	23a02010 	movcs	r2, #16
    1044:	33a02000 	movcc	r2, #0
    1048:	e3510c01 	cmp	r1, #256	@ 0x100
    104c:	21a01421 	lsrcs	r1, r1, #8
    1050:	22822008 	addcs	r2, r2, #8
    1054:	e3510010 	cmp	r1, #16
    1058:	21a01221 	lsrcs	r1, r1, #4
    105c:	22822004 	addcs	r2, r2, #4
    1060:	e3510004 	cmp	r1, #4
    1064:	82822003 	addhi	r2, r2, #3
    1068:	908220a1 	addls	r2, r2, r1, lsr #1
    106c:	e1a00230 	lsr	r0, r0, r2
    1070:	e12fff1e 	bx	lr
    1074:	e3500000 	cmp	r0, #0
    1078:	13e00000 	mvnne	r0, #0
    107c:	ea000007 	b	10a0 <__aeabi_idiv0>

00001080 <__aeabi_uidivmod>:
    1080:	e3510000 	cmp	r1, #0
    1084:	0afffffa 	beq	1074 <__udivsi3+0xe8>
    1088:	e92d4003 	push	{r0, r1, lr}
    108c:	ebffffbe 	bl	f8c <__udivsi3>
    1090:	e8bd4006 	pop	{r1, r2, lr}
    1094:	e0030092 	mul	r3, r2, r0
    1098:	e0411003 	sub	r1, r1, r3
    109c:	e12fff1e 	bx	lr

000010a0 <__aeabi_idiv0>:
    10a0:	e12fff1e 	bx	lr
