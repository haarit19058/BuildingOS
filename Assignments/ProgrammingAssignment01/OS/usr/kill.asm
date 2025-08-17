
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
      28:	eb000265 	bl	9c4 <printf>
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
      84:	00001080 	.word	0x00001080

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

00000854 <putc>:
     854:	e92d4800 	push	{fp, lr}
     858:	e28db004 	add	fp, sp, #4
     85c:	e24dd008 	sub	sp, sp, #8
     860:	e50b0008 	str	r0, [fp, #-8]
     864:	e1a03001 	mov	r3, r1
     868:	e54b3009 	strb	r3, [fp, #-9]
     86c:	e24b3009 	sub	r3, fp, #9
     870:	e3a02001 	mov	r2, #1
     874:	e1a01003 	mov	r1, r3
     878:	e51b0008 	ldr	r0, [fp, #-8]
     87c:	ebffff64 	bl	614 <write>
     880:	e1a00000 	nop			@ (mov r0, r0)
     884:	e24bd004 	sub	sp, fp, #4
     888:	e8bd8800 	pop	{fp, pc}

0000088c <printint>:
     88c:	e92d4800 	push	{fp, lr}
     890:	e28db004 	add	fp, sp, #4
     894:	e24dd030 	sub	sp, sp, #48	@ 0x30
     898:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     89c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8a0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8a4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8a8:	e3a03000 	mov	r3, #0
     8ac:	e50b300c 	str	r3, [fp, #-12]
     8b0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8b4:	e3530000 	cmp	r3, #0
     8b8:	0a000008 	beq	8e0 <printint+0x54>
     8bc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8c0:	e3530000 	cmp	r3, #0
     8c4:	aa000005 	bge	8e0 <printint+0x54>
     8c8:	e3a03001 	mov	r3, #1
     8cc:	e50b300c 	str	r3, [fp, #-12]
     8d0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8d4:	e2633000 	rsb	r3, r3, #0
     8d8:	e50b3010 	str	r3, [fp, #-16]
     8dc:	ea000001 	b	8e8 <printint+0x5c>
     8e0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8e4:	e50b3010 	str	r3, [fp, #-16]
     8e8:	e3a03000 	mov	r3, #0
     8ec:	e50b3008 	str	r3, [fp, #-8]
     8f0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     8f4:	e51b3010 	ldr	r3, [fp, #-16]
     8f8:	e1a01002 	mov	r1, r2
     8fc:	e1a00003 	mov	r0, r3
     900:	eb0001d5 	bl	105c <__aeabi_uidivmod>
     904:	e1a03001 	mov	r3, r1
     908:	e1a01003 	mov	r1, r3
     90c:	e51b3008 	ldr	r3, [fp, #-8]
     910:	e2832001 	add	r2, r3, #1
     914:	e50b2008 	str	r2, [fp, #-8]
     918:	e59f20a0 	ldr	r2, [pc, #160]	@ 9c0 <printint+0x134>
     91c:	e7d22001 	ldrb	r2, [r2, r1]
     920:	e2433004 	sub	r3, r3, #4
     924:	e083300b 	add	r3, r3, fp
     928:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     92c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     930:	e1a01003 	mov	r1, r3
     934:	e51b0010 	ldr	r0, [fp, #-16]
     938:	eb00018a 	bl	f68 <__udivsi3>
     93c:	e1a03000 	mov	r3, r0
     940:	e50b3010 	str	r3, [fp, #-16]
     944:	e51b3010 	ldr	r3, [fp, #-16]
     948:	e3530000 	cmp	r3, #0
     94c:	1affffe7 	bne	8f0 <printint+0x64>
     950:	e51b300c 	ldr	r3, [fp, #-12]
     954:	e3530000 	cmp	r3, #0
     958:	0a00000e 	beq	998 <printint+0x10c>
     95c:	e51b3008 	ldr	r3, [fp, #-8]
     960:	e2832001 	add	r2, r3, #1
     964:	e50b2008 	str	r2, [fp, #-8]
     968:	e2433004 	sub	r3, r3, #4
     96c:	e083300b 	add	r3, r3, fp
     970:	e3a0202d 	mov	r2, #45	@ 0x2d
     974:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     978:	ea000006 	b	998 <printint+0x10c>
     97c:	e24b2020 	sub	r2, fp, #32
     980:	e51b3008 	ldr	r3, [fp, #-8]
     984:	e0823003 	add	r3, r2, r3
     988:	e5d33000 	ldrb	r3, [r3]
     98c:	e1a01003 	mov	r1, r3
     990:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     994:	ebffffae 	bl	854 <putc>
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e2433001 	sub	r3, r3, #1
     9a0:	e50b3008 	str	r3, [fp, #-8]
     9a4:	e51b3008 	ldr	r3, [fp, #-8]
     9a8:	e3530000 	cmp	r3, #0
     9ac:	aafffff2 	bge	97c <printint+0xf0>
     9b0:	e1a00000 	nop			@ (mov r0, r0)
     9b4:	e1a00000 	nop			@ (mov r0, r0)
     9b8:	e24bd004 	sub	sp, fp, #4
     9bc:	e8bd8800 	pop	{fp, pc}
     9c0:	0000109c 	.word	0x0000109c

000009c4 <printf>:
     9c4:	e92d000e 	push	{r1, r2, r3}
     9c8:	e92d4800 	push	{fp, lr}
     9cc:	e28db004 	add	fp, sp, #4
     9d0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9d4:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9d8:	e3a03000 	mov	r3, #0
     9dc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9e0:	e28b3008 	add	r3, fp, #8
     9e4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     9e8:	e3a03000 	mov	r3, #0
     9ec:	e50b3010 	str	r3, [fp, #-16]
     9f0:	ea000074 	b	bc8 <printf+0x204>
     9f4:	e59b2004 	ldr	r2, [fp, #4]
     9f8:	e51b3010 	ldr	r3, [fp, #-16]
     9fc:	e0823003 	add	r3, r2, r3
     a00:	e5d33000 	ldrb	r3, [r3]
     a04:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a08:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a0c:	e3530000 	cmp	r3, #0
     a10:	1a00000b 	bne	a44 <printf+0x80>
     a14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a18:	e3530025 	cmp	r3, #37	@ 0x25
     a1c:	1a000002 	bne	a2c <printf+0x68>
     a20:	e3a03025 	mov	r3, #37	@ 0x25
     a24:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a28:	ea000063 	b	bbc <printf+0x1f8>
     a2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a30:	e6ef3073 	uxtb	r3, r3
     a34:	e1a01003 	mov	r1, r3
     a38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a3c:	ebffff84 	bl	854 <putc>
     a40:	ea00005d 	b	bbc <printf+0x1f8>
     a44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a48:	e3530025 	cmp	r3, #37	@ 0x25
     a4c:	1a00005a 	bne	bbc <printf+0x1f8>
     a50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a54:	e3530064 	cmp	r3, #100	@ 0x64
     a58:	1a00000a 	bne	a88 <printf+0xc4>
     a5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a60:	e5933000 	ldr	r3, [r3]
     a64:	e1a01003 	mov	r1, r3
     a68:	e3a03001 	mov	r3, #1
     a6c:	e3a0200a 	mov	r2, #10
     a70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a74:	ebffff84 	bl	88c <printint>
     a78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a7c:	e2833004 	add	r3, r3, #4
     a80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a84:	ea00004a 	b	bb4 <printf+0x1f0>
     a88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a8c:	e3530078 	cmp	r3, #120	@ 0x78
     a90:	0a000002 	beq	aa0 <printf+0xdc>
     a94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a98:	e3530070 	cmp	r3, #112	@ 0x70
     a9c:	1a00000a 	bne	acc <printf+0x108>
     aa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     aa4:	e5933000 	ldr	r3, [r3]
     aa8:	e1a01003 	mov	r1, r3
     aac:	e3a03000 	mov	r3, #0
     ab0:	e3a02010 	mov	r2, #16
     ab4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ab8:	ebffff73 	bl	88c <printint>
     abc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac0:	e2833004 	add	r3, r3, #4
     ac4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	ea000039 	b	bb4 <printf+0x1f0>
     acc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ad0:	e3530073 	cmp	r3, #115	@ 0x73
     ad4:	1a000018 	bne	b3c <printf+0x178>
     ad8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     adc:	e5933000 	ldr	r3, [r3]
     ae0:	e50b300c 	str	r3, [fp, #-12]
     ae4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ae8:	e2833004 	add	r3, r3, #4
     aec:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     af0:	e51b300c 	ldr	r3, [fp, #-12]
     af4:	e3530000 	cmp	r3, #0
     af8:	1a00000a 	bne	b28 <printf+0x164>
     afc:	e59f30f4 	ldr	r3, [pc, #244]	@ bf8 <printf+0x234>
     b00:	e50b300c 	str	r3, [fp, #-12]
     b04:	ea000007 	b	b28 <printf+0x164>
     b08:	e51b300c 	ldr	r3, [fp, #-12]
     b0c:	e5d33000 	ldrb	r3, [r3]
     b10:	e1a01003 	mov	r1, r3
     b14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b18:	ebffff4d 	bl	854 <putc>
     b1c:	e51b300c 	ldr	r3, [fp, #-12]
     b20:	e2833001 	add	r3, r3, #1
     b24:	e50b300c 	str	r3, [fp, #-12]
     b28:	e51b300c 	ldr	r3, [fp, #-12]
     b2c:	e5d33000 	ldrb	r3, [r3]
     b30:	e3530000 	cmp	r3, #0
     b34:	1afffff3 	bne	b08 <printf+0x144>
     b38:	ea00001d 	b	bb4 <printf+0x1f0>
     b3c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b40:	e3530063 	cmp	r3, #99	@ 0x63
     b44:	1a000009 	bne	b70 <printf+0x1ac>
     b48:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b4c:	e5933000 	ldr	r3, [r3]
     b50:	e6ef3073 	uxtb	r3, r3
     b54:	e1a01003 	mov	r1, r3
     b58:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b5c:	ebffff3c 	bl	854 <putc>
     b60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b64:	e2833004 	add	r3, r3, #4
     b68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b6c:	ea000010 	b	bb4 <printf+0x1f0>
     b70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b74:	e3530025 	cmp	r3, #37	@ 0x25
     b78:	1a000005 	bne	b94 <printf+0x1d0>
     b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b80:	e6ef3073 	uxtb	r3, r3
     b84:	e1a01003 	mov	r1, r3
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff30 	bl	854 <putc>
     b90:	ea000007 	b	bb4 <printf+0x1f0>
     b94:	e3a01025 	mov	r1, #37	@ 0x25
     b98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b9c:	ebffff2c 	bl	854 <putc>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e6ef3073 	uxtb	r3, r3
     ba8:	e1a01003 	mov	r1, r3
     bac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb0:	ebffff27 	bl	854 <putc>
     bb4:	e3a03000 	mov	r3, #0
     bb8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bbc:	e51b3010 	ldr	r3, [fp, #-16]
     bc0:	e2833001 	add	r3, r3, #1
     bc4:	e50b3010 	str	r3, [fp, #-16]
     bc8:	e59b2004 	ldr	r2, [fp, #4]
     bcc:	e51b3010 	ldr	r3, [fp, #-16]
     bd0:	e0823003 	add	r3, r2, r3
     bd4:	e5d33000 	ldrb	r3, [r3]
     bd8:	e3530000 	cmp	r3, #0
     bdc:	1affff84 	bne	9f4 <printf+0x30>
     be0:	e1a00000 	nop			@ (mov r0, r0)
     be4:	e1a00000 	nop			@ (mov r0, r0)
     be8:	e24bd004 	sub	sp, fp, #4
     bec:	e8bd4800 	pop	{fp, lr}
     bf0:	e28dd00c 	add	sp, sp, #12
     bf4:	e12fff1e 	bx	lr
     bf8:	00001094 	.word	0x00001094

00000bfc <free>:
     bfc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c00:	e28db000 	add	fp, sp, #0
     c04:	e24dd014 	sub	sp, sp, #20
     c08:	e50b0010 	str	r0, [fp, #-16]
     c0c:	e51b3010 	ldr	r3, [fp, #-16]
     c10:	e2433008 	sub	r3, r3, #8
     c14:	e50b300c 	str	r3, [fp, #-12]
     c18:	e59f3154 	ldr	r3, [pc, #340]	@ d74 <free+0x178>
     c1c:	e5933000 	ldr	r3, [r3]
     c20:	e50b3008 	str	r3, [fp, #-8]
     c24:	ea000010 	b	c6c <free+0x70>
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e5933000 	ldr	r3, [r3]
     c30:	e51b2008 	ldr	r2, [fp, #-8]
     c34:	e1520003 	cmp	r2, r3
     c38:	3a000008 	bcc	c60 <free+0x64>
     c3c:	e51b200c 	ldr	r2, [fp, #-12]
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e1520003 	cmp	r2, r3
     c48:	8a000010 	bhi	c90 <free+0x94>
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e5933000 	ldr	r3, [r3]
     c54:	e51b200c 	ldr	r2, [fp, #-12]
     c58:	e1520003 	cmp	r2, r3
     c5c:	3a00000b 	bcc	c90 <free+0x94>
     c60:	e51b3008 	ldr	r3, [fp, #-8]
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e50b3008 	str	r3, [fp, #-8]
     c6c:	e51b200c 	ldr	r2, [fp, #-12]
     c70:	e51b3008 	ldr	r3, [fp, #-8]
     c74:	e1520003 	cmp	r2, r3
     c78:	9affffea 	bls	c28 <free+0x2c>
     c7c:	e51b3008 	ldr	r3, [fp, #-8]
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e51b200c 	ldr	r2, [fp, #-12]
     c88:	e1520003 	cmp	r2, r3
     c8c:	2affffe5 	bcs	c28 <free+0x2c>
     c90:	e51b300c 	ldr	r3, [fp, #-12]
     c94:	e5933004 	ldr	r3, [r3, #4]
     c98:	e1a03183 	lsl	r3, r3, #3
     c9c:	e51b200c 	ldr	r2, [fp, #-12]
     ca0:	e0822003 	add	r2, r2, r3
     ca4:	e51b3008 	ldr	r3, [fp, #-8]
     ca8:	e5933000 	ldr	r3, [r3]
     cac:	e1520003 	cmp	r2, r3
     cb0:	1a00000d 	bne	cec <free+0xf0>
     cb4:	e51b300c 	ldr	r3, [fp, #-12]
     cb8:	e5932004 	ldr	r2, [r3, #4]
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5933000 	ldr	r3, [r3]
     cc4:	e5933004 	ldr	r3, [r3, #4]
     cc8:	e0822003 	add	r2, r2, r3
     ccc:	e51b300c 	ldr	r3, [fp, #-12]
     cd0:	e5832004 	str	r2, [r3, #4]
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e5932000 	ldr	r2, [r3]
     ce0:	e51b300c 	ldr	r3, [fp, #-12]
     ce4:	e5832000 	str	r2, [r3]
     ce8:	ea000003 	b	cfc <free+0x100>
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5932000 	ldr	r2, [r3]
     cf4:	e51b300c 	ldr	r3, [fp, #-12]
     cf8:	e5832000 	str	r2, [r3]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933004 	ldr	r3, [r3, #4]
     d04:	e1a03183 	lsl	r3, r3, #3
     d08:	e51b2008 	ldr	r2, [fp, #-8]
     d0c:	e0823003 	add	r3, r2, r3
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e1520003 	cmp	r2, r3
     d18:	1a00000b 	bne	d4c <free+0x150>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5932004 	ldr	r2, [r3, #4]
     d24:	e51b300c 	ldr	r3, [fp, #-12]
     d28:	e5933004 	ldr	r3, [r3, #4]
     d2c:	e0822003 	add	r2, r2, r3
     d30:	e51b3008 	ldr	r3, [fp, #-8]
     d34:	e5832004 	str	r2, [r3, #4]
     d38:	e51b300c 	ldr	r3, [fp, #-12]
     d3c:	e5932000 	ldr	r2, [r3]
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5832000 	str	r2, [r3]
     d48:	ea000002 	b	d58 <free+0x15c>
     d4c:	e51b3008 	ldr	r3, [fp, #-8]
     d50:	e51b200c 	ldr	r2, [fp, #-12]
     d54:	e5832000 	str	r2, [r3]
     d58:	e59f2014 	ldr	r2, [pc, #20]	@ d74 <free+0x178>
     d5c:	e51b3008 	ldr	r3, [fp, #-8]
     d60:	e5823000 	str	r3, [r2]
     d64:	e1a00000 	nop			@ (mov r0, r0)
     d68:	e28bd000 	add	sp, fp, #0
     d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d70:	e12fff1e 	bx	lr
     d74:	000010b8 	.word	0x000010b8

00000d78 <morecore>:
     d78:	e92d4800 	push	{fp, lr}
     d7c:	e28db004 	add	fp, sp, #4
     d80:	e24dd010 	sub	sp, sp, #16
     d84:	e50b0010 	str	r0, [fp, #-16]
     d88:	e51b3010 	ldr	r3, [fp, #-16]
     d8c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     d90:	2a000001 	bcs	d9c <morecore+0x24>
     d94:	e3a03a01 	mov	r3, #4096	@ 0x1000
     d98:	e50b3010 	str	r3, [fp, #-16]
     d9c:	e51b3010 	ldr	r3, [fp, #-16]
     da0:	e1a03183 	lsl	r3, r3, #3
     da4:	e1a00003 	mov	r0, r3
     da8:	ebfffe8e 	bl	7e8 <sbrk>
     dac:	e50b0008 	str	r0, [fp, #-8]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e3730001 	cmn	r3, #1
     db8:	1a000001 	bne	dc4 <morecore+0x4c>
     dbc:	e3a03000 	mov	r3, #0
     dc0:	ea00000a 	b	df0 <morecore+0x78>
     dc4:	e51b3008 	ldr	r3, [fp, #-8]
     dc8:	e50b300c 	str	r3, [fp, #-12]
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e51b2010 	ldr	r2, [fp, #-16]
     dd4:	e5832004 	str	r2, [r3, #4]
     dd8:	e51b300c 	ldr	r3, [fp, #-12]
     ddc:	e2833008 	add	r3, r3, #8
     de0:	e1a00003 	mov	r0, r3
     de4:	ebffff84 	bl	bfc <free>
     de8:	e59f300c 	ldr	r3, [pc, #12]	@ dfc <morecore+0x84>
     dec:	e5933000 	ldr	r3, [r3]
     df0:	e1a00003 	mov	r0, r3
     df4:	e24bd004 	sub	sp, fp, #4
     df8:	e8bd8800 	pop	{fp, pc}
     dfc:	000010b8 	.word	0x000010b8

00000e00 <malloc>:
     e00:	e92d4800 	push	{fp, lr}
     e04:	e28db004 	add	fp, sp, #4
     e08:	e24dd018 	sub	sp, sp, #24
     e0c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e14:	e2833007 	add	r3, r3, #7
     e18:	e1a031a3 	lsr	r3, r3, #3
     e1c:	e2833001 	add	r3, r3, #1
     e20:	e50b3010 	str	r3, [fp, #-16]
     e24:	e59f3134 	ldr	r3, [pc, #308]	@ f60 <malloc+0x160>
     e28:	e5933000 	ldr	r3, [r3]
     e2c:	e50b300c 	str	r3, [fp, #-12]
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e3530000 	cmp	r3, #0
     e38:	1a00000b 	bne	e6c <malloc+0x6c>
     e3c:	e59f3120 	ldr	r3, [pc, #288]	@ f64 <malloc+0x164>
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	e59f2114 	ldr	r2, [pc, #276]	@ f60 <malloc+0x160>
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5823000 	str	r3, [r2]
     e50:	e59f3108 	ldr	r3, [pc, #264]	@ f60 <malloc+0x160>
     e54:	e5933000 	ldr	r3, [r3]
     e58:	e59f2104 	ldr	r2, [pc, #260]	@ f64 <malloc+0x164>
     e5c:	e5823000 	str	r3, [r2]
     e60:	e59f30fc 	ldr	r3, [pc, #252]	@ f64 <malloc+0x164>
     e64:	e3a02000 	mov	r2, #0
     e68:	e5832004 	str	r2, [r3, #4]
     e6c:	e51b300c 	ldr	r3, [fp, #-12]
     e70:	e5933000 	ldr	r3, [r3]
     e74:	e50b3008 	str	r3, [fp, #-8]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933004 	ldr	r3, [r3, #4]
     e80:	e51b2010 	ldr	r2, [fp, #-16]
     e84:	e1520003 	cmp	r2, r3
     e88:	8a00001e 	bhi	f08 <malloc+0x108>
     e8c:	e51b3008 	ldr	r3, [fp, #-8]
     e90:	e5933004 	ldr	r3, [r3, #4]
     e94:	e51b2010 	ldr	r2, [fp, #-16]
     e98:	e1520003 	cmp	r2, r3
     e9c:	1a000004 	bne	eb4 <malloc+0xb4>
     ea0:	e51b3008 	ldr	r3, [fp, #-8]
     ea4:	e5932000 	ldr	r2, [r3]
     ea8:	e51b300c 	ldr	r3, [fp, #-12]
     eac:	e5832000 	str	r2, [r3]
     eb0:	ea00000e 	b	ef0 <malloc+0xf0>
     eb4:	e51b3008 	ldr	r3, [fp, #-8]
     eb8:	e5932004 	ldr	r2, [r3, #4]
     ebc:	e51b3010 	ldr	r3, [fp, #-16]
     ec0:	e0422003 	sub	r2, r2, r3
     ec4:	e51b3008 	ldr	r3, [fp, #-8]
     ec8:	e5832004 	str	r2, [r3, #4]
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5933004 	ldr	r3, [r3, #4]
     ed4:	e1a03183 	lsl	r3, r3, #3
     ed8:	e51b2008 	ldr	r2, [fp, #-8]
     edc:	e0823003 	add	r3, r2, r3
     ee0:	e50b3008 	str	r3, [fp, #-8]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e51b2010 	ldr	r2, [fp, #-16]
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e59f2068 	ldr	r2, [pc, #104]	@ f60 <malloc+0x160>
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5823000 	str	r3, [r2]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e2833008 	add	r3, r3, #8
     f04:	ea000012 	b	f54 <malloc+0x154>
     f08:	e59f3050 	ldr	r3, [pc, #80]	@ f60 <malloc+0x160>
     f0c:	e5933000 	ldr	r3, [r3]
     f10:	e51b2008 	ldr	r2, [fp, #-8]
     f14:	e1520003 	cmp	r2, r3
     f18:	1a000007 	bne	f3c <malloc+0x13c>
     f1c:	e51b0010 	ldr	r0, [fp, #-16]
     f20:	ebffff94 	bl	d78 <morecore>
     f24:	e50b0008 	str	r0, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e3530000 	cmp	r3, #0
     f30:	1a000001 	bne	f3c <malloc+0x13c>
     f34:	e3a03000 	mov	r3, #0
     f38:	ea000005 	b	f54 <malloc+0x154>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e50b300c 	str	r3, [fp, #-12]
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e50b3008 	str	r3, [fp, #-8]
     f50:	eaffffc8 	b	e78 <malloc+0x78>
     f54:	e1a00003 	mov	r0, r3
     f58:	e24bd004 	sub	sp, fp, #4
     f5c:	e8bd8800 	pop	{fp, pc}
     f60:	000010b8 	.word	0x000010b8
     f64:	000010b0 	.word	0x000010b0

00000f68 <__udivsi3>:
     f68:	e2512001 	subs	r2, r1, #1
     f6c:	012fff1e 	bxeq	lr
     f70:	3a000036 	bcc	1050 <__udivsi3+0xe8>
     f74:	e1500001 	cmp	r0, r1
     f78:	9a000022 	bls	1008 <__udivsi3+0xa0>
     f7c:	e1110002 	tst	r1, r2
     f80:	0a000023 	beq	1014 <__udivsi3+0xac>
     f84:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     f88:	01a01181 	lsleq	r1, r1, #3
     f8c:	03a03008 	moveq	r3, #8
     f90:	13a03001 	movne	r3, #1
     f94:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     f98:	31510000 	cmpcc	r1, r0
     f9c:	31a01201 	lslcc	r1, r1, #4
     fa0:	31a03203 	lslcc	r3, r3, #4
     fa4:	3afffffa 	bcc	f94 <__udivsi3+0x2c>
     fa8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fac:	31510000 	cmpcc	r1, r0
     fb0:	31a01081 	lslcc	r1, r1, #1
     fb4:	31a03083 	lslcc	r3, r3, #1
     fb8:	3afffffa 	bcc	fa8 <__udivsi3+0x40>
     fbc:	e3a02000 	mov	r2, #0
     fc0:	e1500001 	cmp	r0, r1
     fc4:	20400001 	subcs	r0, r0, r1
     fc8:	21822003 	orrcs	r2, r2, r3
     fcc:	e15000a1 	cmp	r0, r1, lsr #1
     fd0:	204000a1 	subcs	r0, r0, r1, lsr #1
     fd4:	218220a3 	orrcs	r2, r2, r3, lsr #1
     fd8:	e1500121 	cmp	r0, r1, lsr #2
     fdc:	20400121 	subcs	r0, r0, r1, lsr #2
     fe0:	21822123 	orrcs	r2, r2, r3, lsr #2
     fe4:	e15001a1 	cmp	r0, r1, lsr #3
     fe8:	204001a1 	subcs	r0, r0, r1, lsr #3
     fec:	218221a3 	orrcs	r2, r2, r3, lsr #3
     ff0:	e3500000 	cmp	r0, #0
     ff4:	11b03223 	lsrsne	r3, r3, #4
     ff8:	11a01221 	lsrne	r1, r1, #4
     ffc:	1affffef 	bne	fc0 <__udivsi3+0x58>
    1000:	e1a00002 	mov	r0, r2
    1004:	e12fff1e 	bx	lr
    1008:	03a00001 	moveq	r0, #1
    100c:	13a00000 	movne	r0, #0
    1010:	e12fff1e 	bx	lr
    1014:	e3510801 	cmp	r1, #65536	@ 0x10000
    1018:	21a01821 	lsrcs	r1, r1, #16
    101c:	23a02010 	movcs	r2, #16
    1020:	33a02000 	movcc	r2, #0
    1024:	e3510c01 	cmp	r1, #256	@ 0x100
    1028:	21a01421 	lsrcs	r1, r1, #8
    102c:	22822008 	addcs	r2, r2, #8
    1030:	e3510010 	cmp	r1, #16
    1034:	21a01221 	lsrcs	r1, r1, #4
    1038:	22822004 	addcs	r2, r2, #4
    103c:	e3510004 	cmp	r1, #4
    1040:	82822003 	addhi	r2, r2, #3
    1044:	908220a1 	addls	r2, r2, r1, lsr #1
    1048:	e1a00230 	lsr	r0, r0, r2
    104c:	e12fff1e 	bx	lr
    1050:	e3500000 	cmp	r0, #0
    1054:	13e00000 	mvnne	r0, #0
    1058:	ea000007 	b	107c <__aeabi_idiv0>

0000105c <__aeabi_uidivmod>:
    105c:	e3510000 	cmp	r1, #0
    1060:	0afffffa 	beq	1050 <__udivsi3+0xe8>
    1064:	e92d4003 	push	{r0, r1, lr}
    1068:	ebffffbe 	bl	f68 <__udivsi3>
    106c:	e8bd4006 	pop	{r1, r2, lr}
    1070:	e0030092 	mul	r3, r2, r0
    1074:	e0411003 	sub	r1, r1, r3
    1078:	e12fff1e 	bx	lr

0000107c <__aeabi_idiv0>:
    107c:	e12fff1e 	bx	lr
