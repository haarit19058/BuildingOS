
_cat:     file format elf32-littlearm


Disassembly of section .text:

00000000 <cat>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	ea000003 	b	24 <cat+0x24>
      14:	e51b2008 	ldr	r2, [fp, #-8]
      18:	e59f104c 	ldr	r1, [pc, #76]	@ 6c <cat+0x6c>
      1c:	e3a00001 	mov	r0, #1
      20:	eb0001a7 	bl	6c4 <write>
      24:	e3a02c02 	mov	r2, #512	@ 0x200
      28:	e59f103c 	ldr	r1, [pc, #60]	@ 6c <cat+0x6c>
      2c:	e51b0010 	ldr	r0, [fp, #-16]
      30:	eb00019a 	bl	6a0 <read>
      34:	e50b0008 	str	r0, [fp, #-8]
      38:	e51b3008 	ldr	r3, [fp, #-8]
      3c:	e3530000 	cmp	r3, #0
      40:	cafffff3 	bgt	14 <cat+0x14>
      44:	e51b3008 	ldr	r3, [fp, #-8]
      48:	e3530000 	cmp	r3, #0
      4c:	aa000003 	bge	60 <cat+0x60>
      50:	e59f1018 	ldr	r1, [pc, #24]	@ 70 <cat+0x70>
      54:	e3a00001 	mov	r0, #1
      58:	eb000285 	bl	a74 <printf>
      5c:	eb000174 	bl	634 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	00001178 	.word	0x00001178
      70:	00001130 	.word	0x00001130

00000074 <main>:
      74:	e92d4800 	push	{fp, lr}
      78:	e28db004 	add	fp, sp, #4
      7c:	e24dd010 	sub	sp, sp, #16
      80:	e50b0010 	str	r0, [fp, #-16]
      84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      88:	e51b3010 	ldr	r3, [fp, #-16]
      8c:	e3530001 	cmp	r3, #1
      90:	ca000002 	bgt	a0 <main+0x2c>
      94:	e3a00000 	mov	r0, #0
      98:	ebffffd8 	bl	0 <cat>
      9c:	eb000164 	bl	634 <exit>
      a0:	e3a03001 	mov	r3, #1
      a4:	e50b3008 	str	r3, [fp, #-8]
      a8:	ea00001c 	b	120 <main+0xac>
      ac:	e51b3008 	ldr	r3, [fp, #-8]
      b0:	e1a03103 	lsl	r3, r3, #2
      b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      b8:	e0823003 	add	r3, r2, r3
      bc:	e5933000 	ldr	r3, [r3]
      c0:	e3a01000 	mov	r1, #0
      c4:	e1a00003 	mov	r0, r3
      c8:	eb0001a1 	bl	754 <open>
      cc:	e50b000c 	str	r0, [fp, #-12]
      d0:	e51b300c 	ldr	r3, [fp, #-12]
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000009 	bge	104 <main+0x90>
      dc:	e51b3008 	ldr	r3, [fp, #-8]
      e0:	e1a03103 	lsl	r3, r3, #2
      e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      e8:	e0823003 	add	r3, r2, r3
      ec:	e5933000 	ldr	r3, [r3]
      f0:	e1a02003 	mov	r2, r3
      f4:	e59f1038 	ldr	r1, [pc, #56]	@ 134 <main+0xc0>
      f8:	e3a00001 	mov	r0, #1
      fc:	eb00025c 	bl	a74 <printf>
     100:	eb00014b 	bl	634 <exit>
     104:	e51b000c 	ldr	r0, [fp, #-12]
     108:	ebffffbc 	bl	0 <cat>
     10c:	e51b000c 	ldr	r0, [fp, #-12]
     110:	eb000174 	bl	6e8 <close>
     114:	e51b3008 	ldr	r3, [fp, #-8]
     118:	e2833001 	add	r3, r3, #1
     11c:	e50b3008 	str	r3, [fp, #-8]
     120:	e51b2008 	ldr	r2, [fp, #-8]
     124:	e51b3010 	ldr	r3, [fp, #-16]
     128:	e1520003 	cmp	r2, r3
     12c:	baffffde 	blt	ac <main+0x38>
     130:	eb00013f 	bl	634 <exit>
     134:	00001144 	.word	0x00001144

00000138 <strcpy>:
     138:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     13c:	e28db000 	add	fp, sp, #0
     140:	e24dd014 	sub	sp, sp, #20
     144:	e50b0010 	str	r0, [fp, #-16]
     148:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     14c:	e51b3010 	ldr	r3, [fp, #-16]
     150:	e50b3008 	str	r3, [fp, #-8]
     154:	e1a00000 	nop			@ (mov r0, r0)
     158:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     15c:	e2823001 	add	r3, r2, #1
     160:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     164:	e51b3010 	ldr	r3, [fp, #-16]
     168:	e2831001 	add	r1, r3, #1
     16c:	e50b1010 	str	r1, [fp, #-16]
     170:	e5d22000 	ldrb	r2, [r2]
     174:	e5c32000 	strb	r2, [r3]
     178:	e5d33000 	ldrb	r3, [r3]
     17c:	e3530000 	cmp	r3, #0
     180:	1afffff4 	bne	158 <strcpy+0x20>
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e1a00003 	mov	r0, r3
     18c:	e28bd000 	add	sp, fp, #0
     190:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     194:	e12fff1e 	bx	lr

00000198 <strcmp>:
     198:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     19c:	e28db000 	add	fp, sp, #0
     1a0:	e24dd00c 	sub	sp, sp, #12
     1a4:	e50b0008 	str	r0, [fp, #-8]
     1a8:	e50b100c 	str	r1, [fp, #-12]
     1ac:	ea000005 	b	1c8 <strcmp+0x30>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b300c 	ldr	r3, [fp, #-12]
     1c0:	e2833001 	add	r3, r3, #1
     1c4:	e50b300c 	str	r3, [fp, #-12]
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e5d33000 	ldrb	r3, [r3]
     1d0:	e3530000 	cmp	r3, #0
     1d4:	0a000005 	beq	1f0 <strcmp+0x58>
     1d8:	e51b3008 	ldr	r3, [fp, #-8]
     1dc:	e5d32000 	ldrb	r2, [r3]
     1e0:	e51b300c 	ldr	r3, [fp, #-12]
     1e4:	e5d33000 	ldrb	r3, [r3]
     1e8:	e1520003 	cmp	r2, r3
     1ec:	0affffef 	beq	1b0 <strcmp+0x18>
     1f0:	e51b3008 	ldr	r3, [fp, #-8]
     1f4:	e5d33000 	ldrb	r3, [r3]
     1f8:	e1a02003 	mov	r2, r3
     1fc:	e51b300c 	ldr	r3, [fp, #-12]
     200:	e5d33000 	ldrb	r3, [r3]
     204:	e0423003 	sub	r3, r2, r3
     208:	e1a00003 	mov	r0, r3
     20c:	e28bd000 	add	sp, fp, #0
     210:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     214:	e12fff1e 	bx	lr

00000218 <strlen>:
     218:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     21c:	e28db000 	add	fp, sp, #0
     220:	e24dd014 	sub	sp, sp, #20
     224:	e50b0010 	str	r0, [fp, #-16]
     228:	e3a03000 	mov	r3, #0
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	ea000002 	b	240 <strlen+0x28>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e2833001 	add	r3, r3, #1
     23c:	e50b3008 	str	r3, [fp, #-8]
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e51b2010 	ldr	r2, [fp, #-16]
     248:	e0823003 	add	r3, r2, r3
     24c:	e5d33000 	ldrb	r3, [r3]
     250:	e3530000 	cmp	r3, #0
     254:	1afffff6 	bne	234 <strlen+0x1c>
     258:	e51b3008 	ldr	r3, [fp, #-8]
     25c:	e1a00003 	mov	r0, r3
     260:	e28bd000 	add	sp, fp, #0
     264:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     268:	e12fff1e 	bx	lr

0000026c <memset>:
     26c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     270:	e28db000 	add	fp, sp, #0
     274:	e24dd024 	sub	sp, sp, #36	@ 0x24
     278:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     27c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     280:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     288:	e50b3008 	str	r3, [fp, #-8]
     28c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     290:	e54b300d 	strb	r3, [fp, #-13]
     294:	e55b200d 	ldrb	r2, [fp, #-13]
     298:	e1a03002 	mov	r3, r2
     29c:	e1a03403 	lsl	r3, r3, #8
     2a0:	e0833002 	add	r3, r3, r2
     2a4:	e1a03803 	lsl	r3, r3, #16
     2a8:	e1a02003 	mov	r2, r3
     2ac:	e55b300d 	ldrb	r3, [fp, #-13]
     2b0:	e1a03403 	lsl	r3, r3, #8
     2b4:	e1822003 	orr	r2, r2, r3
     2b8:	e55b300d 	ldrb	r3, [fp, #-13]
     2bc:	e1823003 	orr	r3, r2, r3
     2c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c4:	ea000008 	b	2ec <memset+0x80>
     2c8:	e51b3008 	ldr	r3, [fp, #-8]
     2cc:	e55b200d 	ldrb	r2, [fp, #-13]
     2d0:	e5c32000 	strb	r2, [r3]
     2d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2d8:	e2433001 	sub	r3, r3, #1
     2dc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2e0:	e51b3008 	ldr	r3, [fp, #-8]
     2e4:	e2833001 	add	r3, r3, #1
     2e8:	e50b3008 	str	r3, [fp, #-8]
     2ec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2f0:	e3530000 	cmp	r3, #0
     2f4:	0a000003 	beq	308 <memset+0x9c>
     2f8:	e51b3008 	ldr	r3, [fp, #-8]
     2fc:	e2033003 	and	r3, r3, #3
     300:	e3530000 	cmp	r3, #0
     304:	1affffef 	bne	2c8 <memset+0x5c>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	e50b300c 	str	r3, [fp, #-12]
     310:	ea000008 	b	338 <memset+0xcc>
     314:	e51b300c 	ldr	r3, [fp, #-12]
     318:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     31c:	e5832000 	str	r2, [r3]
     320:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     324:	e2433004 	sub	r3, r3, #4
     328:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     32c:	e51b300c 	ldr	r3, [fp, #-12]
     330:	e2833004 	add	r3, r3, #4
     334:	e50b300c 	str	r3, [fp, #-12]
     338:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     33c:	e3530003 	cmp	r3, #3
     340:	8afffff3 	bhi	314 <memset+0xa8>
     344:	e51b300c 	ldr	r3, [fp, #-12]
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	ea000008 	b	374 <memset+0x108>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e55b200d 	ldrb	r2, [fp, #-13]
     358:	e5c32000 	strb	r2, [r3]
     35c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     360:	e2433001 	sub	r3, r3, #1
     364:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     368:	e51b3008 	ldr	r3, [fp, #-8]
     36c:	e2833001 	add	r3, r3, #1
     370:	e50b3008 	str	r3, [fp, #-8]
     374:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     378:	e3530000 	cmp	r3, #0
     37c:	1afffff3 	bne	350 <memset+0xe4>
     380:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     384:	e1a00003 	mov	r0, r3
     388:	e28bd000 	add	sp, fp, #0
     38c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     390:	e12fff1e 	bx	lr

00000394 <strchr>:
     394:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     398:	e28db000 	add	fp, sp, #0
     39c:	e24dd00c 	sub	sp, sp, #12
     3a0:	e50b0008 	str	r0, [fp, #-8]
     3a4:	e1a03001 	mov	r3, r1
     3a8:	e54b3009 	strb	r3, [fp, #-9]
     3ac:	ea000009 	b	3d8 <strchr+0x44>
     3b0:	e51b3008 	ldr	r3, [fp, #-8]
     3b4:	e5d33000 	ldrb	r3, [r3]
     3b8:	e55b2009 	ldrb	r2, [fp, #-9]
     3bc:	e1520003 	cmp	r2, r3
     3c0:	1a000001 	bne	3cc <strchr+0x38>
     3c4:	e51b3008 	ldr	r3, [fp, #-8]
     3c8:	ea000007 	b	3ec <strchr+0x58>
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e2833001 	add	r3, r3, #1
     3d4:	e50b3008 	str	r3, [fp, #-8]
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e5d33000 	ldrb	r3, [r3]
     3e0:	e3530000 	cmp	r3, #0
     3e4:	1afffff1 	bne	3b0 <strchr+0x1c>
     3e8:	e3a03000 	mov	r3, #0
     3ec:	e1a00003 	mov	r0, r3
     3f0:	e28bd000 	add	sp, fp, #0
     3f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3f8:	e12fff1e 	bx	lr

000003fc <gets>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd018 	sub	sp, sp, #24
     408:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     40c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     410:	e3a03000 	mov	r3, #0
     414:	e50b3008 	str	r3, [fp, #-8]
     418:	ea000016 	b	478 <gets+0x7c>
     41c:	e24b300d 	sub	r3, fp, #13
     420:	e3a02001 	mov	r2, #1
     424:	e1a01003 	mov	r1, r3
     428:	e3a00000 	mov	r0, #0
     42c:	eb00009b 	bl	6a0 <read>
     430:	e50b000c 	str	r0, [fp, #-12]
     434:	e51b300c 	ldr	r3, [fp, #-12]
     438:	e3530000 	cmp	r3, #0
     43c:	da000013 	ble	490 <gets+0x94>
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2832001 	add	r2, r3, #1
     448:	e50b2008 	str	r2, [fp, #-8]
     44c:	e1a02003 	mov	r2, r3
     450:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     454:	e0833002 	add	r3, r3, r2
     458:	e55b200d 	ldrb	r2, [fp, #-13]
     45c:	e5c32000 	strb	r2, [r3]
     460:	e55b300d 	ldrb	r3, [fp, #-13]
     464:	e353000a 	cmp	r3, #10
     468:	0a000009 	beq	494 <gets+0x98>
     46c:	e55b300d 	ldrb	r3, [fp, #-13]
     470:	e353000d 	cmp	r3, #13
     474:	0a000006 	beq	494 <gets+0x98>
     478:	e51b3008 	ldr	r3, [fp, #-8]
     47c:	e2833001 	add	r3, r3, #1
     480:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     484:	e1520003 	cmp	r2, r3
     488:	caffffe3 	bgt	41c <gets+0x20>
     48c:	ea000000 	b	494 <gets+0x98>
     490:	e1a00000 	nop			@ (mov r0, r0)
     494:	e51b3008 	ldr	r3, [fp, #-8]
     498:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     49c:	e0823003 	add	r3, r2, r3
     4a0:	e3a02000 	mov	r2, #0
     4a4:	e5c32000 	strb	r2, [r3]
     4a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4ac:	e1a00003 	mov	r0, r3
     4b0:	e24bd004 	sub	sp, fp, #4
     4b4:	e8bd8800 	pop	{fp, pc}

000004b8 <stat>:
     4b8:	e92d4800 	push	{fp, lr}
     4bc:	e28db004 	add	fp, sp, #4
     4c0:	e24dd010 	sub	sp, sp, #16
     4c4:	e50b0010 	str	r0, [fp, #-16]
     4c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0010 	ldr	r0, [fp, #-16]
     4d4:	eb00009e 	bl	754 <open>
     4d8:	e50b0008 	str	r0, [fp, #-8]
     4dc:	e51b3008 	ldr	r3, [fp, #-8]
     4e0:	e3530000 	cmp	r3, #0
     4e4:	aa000001 	bge	4f0 <stat+0x38>
     4e8:	e3e03000 	mvn	r3, #0
     4ec:	ea000006 	b	50c <stat+0x54>
     4f0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e51b0008 	ldr	r0, [fp, #-8]
     4f8:	eb0000b0 	bl	7c0 <fstat>
     4fc:	e50b000c 	str	r0, [fp, #-12]
     500:	e51b0008 	ldr	r0, [fp, #-8]
     504:	eb000077 	bl	6e8 <close>
     508:	e51b300c 	ldr	r3, [fp, #-12]
     50c:	e1a00003 	mov	r0, r3
     510:	e24bd004 	sub	sp, fp, #4
     514:	e8bd8800 	pop	{fp, pc}

00000518 <atoi>:
     518:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     51c:	e28db000 	add	fp, sp, #0
     520:	e24dd014 	sub	sp, sp, #20
     524:	e50b0010 	str	r0, [fp, #-16]
     528:	e3a03000 	mov	r3, #0
     52c:	e50b3008 	str	r3, [fp, #-8]
     530:	ea00000c 	b	568 <atoi+0x50>
     534:	e51b2008 	ldr	r2, [fp, #-8]
     538:	e1a03002 	mov	r3, r2
     53c:	e1a03103 	lsl	r3, r3, #2
     540:	e0833002 	add	r3, r3, r2
     544:	e1a03083 	lsl	r3, r3, #1
     548:	e1a01003 	mov	r1, r3
     54c:	e51b3010 	ldr	r3, [fp, #-16]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2010 	str	r2, [fp, #-16]
     558:	e5d33000 	ldrb	r3, [r3]
     55c:	e0813003 	add	r3, r1, r3
     560:	e2433030 	sub	r3, r3, #48	@ 0x30
     564:	e50b3008 	str	r3, [fp, #-8]
     568:	e51b3010 	ldr	r3, [fp, #-16]
     56c:	e5d33000 	ldrb	r3, [r3]
     570:	e353002f 	cmp	r3, #47	@ 0x2f
     574:	9a000003 	bls	588 <atoi+0x70>
     578:	e51b3010 	ldr	r3, [fp, #-16]
     57c:	e5d33000 	ldrb	r3, [r3]
     580:	e3530039 	cmp	r3, #57	@ 0x39
     584:	9affffea 	bls	534 <atoi+0x1c>
     588:	e51b3008 	ldr	r3, [fp, #-8]
     58c:	e1a00003 	mov	r0, r3
     590:	e28bd000 	add	sp, fp, #0
     594:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <memmove>:
     59c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5a0:	e28db000 	add	fp, sp, #0
     5a4:	e24dd01c 	sub	sp, sp, #28
     5a8:	e50b0010 	str	r0, [fp, #-16]
     5ac:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5b0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5b4:	e51b3010 	ldr	r3, [fp, #-16]
     5b8:	e50b3008 	str	r3, [fp, #-8]
     5bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     5c0:	e50b300c 	str	r3, [fp, #-12]
     5c4:	ea000007 	b	5e8 <memmove+0x4c>
     5c8:	e51b200c 	ldr	r2, [fp, #-12]
     5cc:	e2823001 	add	r3, r2, #1
     5d0:	e50b300c 	str	r3, [fp, #-12]
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2831001 	add	r1, r3, #1
     5dc:	e50b1008 	str	r1, [fp, #-8]
     5e0:	e5d22000 	ldrb	r2, [r2]
     5e4:	e5c32000 	strb	r2, [r3]
     5e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5ec:	e2432001 	sub	r2, r3, #1
     5f0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f4:	e3530000 	cmp	r3, #0
     5f8:	cafffff2 	bgt	5c8 <memmove+0x2c>
     5fc:	e51b3010 	ldr	r3, [fp, #-16]
     600:	e1a00003 	mov	r0, r3
     604:	e28bd000 	add	sp, fp, #0
     608:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     60c:	e12fff1e 	bx	lr

00000610 <fork>:
     610:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     614:	e1a04003 	mov	r4, r3
     618:	e1a03002 	mov	r3, r2
     61c:	e1a02001 	mov	r2, r1
     620:	e1a01000 	mov	r1, r0
     624:	e3a00001 	mov	r0, #1
     628:	ef000000 	svc	0x00000000
     62c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     630:	e12fff1e 	bx	lr

00000634 <exit>:
     634:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     638:	e1a04003 	mov	r4, r3
     63c:	e1a03002 	mov	r3, r2
     640:	e1a02001 	mov	r2, r1
     644:	e1a01000 	mov	r1, r0
     648:	e3a00002 	mov	r0, #2
     64c:	ef000000 	svc	0x00000000
     650:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     654:	e12fff1e 	bx	lr

00000658 <wait>:
     658:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     65c:	e1a04003 	mov	r4, r3
     660:	e1a03002 	mov	r3, r2
     664:	e1a02001 	mov	r2, r1
     668:	e1a01000 	mov	r1, r0
     66c:	e3a00003 	mov	r0, #3
     670:	ef000000 	svc	0x00000000
     674:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     678:	e12fff1e 	bx	lr

0000067c <pipe>:
     67c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     680:	e1a04003 	mov	r4, r3
     684:	e1a03002 	mov	r3, r2
     688:	e1a02001 	mov	r2, r1
     68c:	e1a01000 	mov	r1, r0
     690:	e3a00004 	mov	r0, #4
     694:	ef000000 	svc	0x00000000
     698:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     69c:	e12fff1e 	bx	lr

000006a0 <read>:
     6a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a4:	e1a04003 	mov	r4, r3
     6a8:	e1a03002 	mov	r3, r2
     6ac:	e1a02001 	mov	r2, r1
     6b0:	e1a01000 	mov	r1, r0
     6b4:	e3a00005 	mov	r0, #5
     6b8:	ef000000 	svc	0x00000000
     6bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6c0:	e12fff1e 	bx	lr

000006c4 <write>:
     6c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c8:	e1a04003 	mov	r4, r3
     6cc:	e1a03002 	mov	r3, r2
     6d0:	e1a02001 	mov	r2, r1
     6d4:	e1a01000 	mov	r1, r0
     6d8:	e3a00010 	mov	r0, #16
     6dc:	ef000000 	svc	0x00000000
     6e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e4:	e12fff1e 	bx	lr

000006e8 <close>:
     6e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6ec:	e1a04003 	mov	r4, r3
     6f0:	e1a03002 	mov	r3, r2
     6f4:	e1a02001 	mov	r2, r1
     6f8:	e1a01000 	mov	r1, r0
     6fc:	e3a00015 	mov	r0, #21
     700:	ef000000 	svc	0x00000000
     704:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     708:	e12fff1e 	bx	lr

0000070c <kill>:
     70c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     710:	e1a04003 	mov	r4, r3
     714:	e1a03002 	mov	r3, r2
     718:	e1a02001 	mov	r2, r1
     71c:	e1a01000 	mov	r1, r0
     720:	e3a00006 	mov	r0, #6
     724:	ef000000 	svc	0x00000000
     728:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     72c:	e12fff1e 	bx	lr

00000730 <exec>:
     730:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     734:	e1a04003 	mov	r4, r3
     738:	e1a03002 	mov	r3, r2
     73c:	e1a02001 	mov	r2, r1
     740:	e1a01000 	mov	r1, r0
     744:	e3a00007 	mov	r0, #7
     748:	ef000000 	svc	0x00000000
     74c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     750:	e12fff1e 	bx	lr

00000754 <open>:
     754:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     758:	e1a04003 	mov	r4, r3
     75c:	e1a03002 	mov	r3, r2
     760:	e1a02001 	mov	r2, r1
     764:	e1a01000 	mov	r1, r0
     768:	e3a0000f 	mov	r0, #15
     76c:	ef000000 	svc	0x00000000
     770:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     774:	e12fff1e 	bx	lr

00000778 <mknod>:
     778:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     77c:	e1a04003 	mov	r4, r3
     780:	e1a03002 	mov	r3, r2
     784:	e1a02001 	mov	r2, r1
     788:	e1a01000 	mov	r1, r0
     78c:	e3a00011 	mov	r0, #17
     790:	ef000000 	svc	0x00000000
     794:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     798:	e12fff1e 	bx	lr

0000079c <unlink>:
     79c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7a0:	e1a04003 	mov	r4, r3
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a02001 	mov	r2, r1
     7ac:	e1a01000 	mov	r1, r0
     7b0:	e3a00012 	mov	r0, #18
     7b4:	ef000000 	svc	0x00000000
     7b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7bc:	e12fff1e 	bx	lr

000007c0 <fstat>:
     7c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c4:	e1a04003 	mov	r4, r3
     7c8:	e1a03002 	mov	r3, r2
     7cc:	e1a02001 	mov	r2, r1
     7d0:	e1a01000 	mov	r1, r0
     7d4:	e3a00008 	mov	r0, #8
     7d8:	ef000000 	svc	0x00000000
     7dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7e0:	e12fff1e 	bx	lr

000007e4 <link>:
     7e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e8:	e1a04003 	mov	r4, r3
     7ec:	e1a03002 	mov	r3, r2
     7f0:	e1a02001 	mov	r2, r1
     7f4:	e1a01000 	mov	r1, r0
     7f8:	e3a00013 	mov	r0, #19
     7fc:	ef000000 	svc	0x00000000
     800:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <mkdir>:
     808:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     80c:	e1a04003 	mov	r4, r3
     810:	e1a03002 	mov	r3, r2
     814:	e1a02001 	mov	r2, r1
     818:	e1a01000 	mov	r1, r0
     81c:	e3a00014 	mov	r0, #20
     820:	ef000000 	svc	0x00000000
     824:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     828:	e12fff1e 	bx	lr

0000082c <chdir>:
     82c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     830:	e1a04003 	mov	r4, r3
     834:	e1a03002 	mov	r3, r2
     838:	e1a02001 	mov	r2, r1
     83c:	e1a01000 	mov	r1, r0
     840:	e3a00009 	mov	r0, #9
     844:	ef000000 	svc	0x00000000
     848:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     84c:	e12fff1e 	bx	lr

00000850 <dup>:
     850:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     854:	e1a04003 	mov	r4, r3
     858:	e1a03002 	mov	r3, r2
     85c:	e1a02001 	mov	r2, r1
     860:	e1a01000 	mov	r1, r0
     864:	e3a0000a 	mov	r0, #10
     868:	ef000000 	svc	0x00000000
     86c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     870:	e12fff1e 	bx	lr

00000874 <getpid>:
     874:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     878:	e1a04003 	mov	r4, r3
     87c:	e1a03002 	mov	r3, r2
     880:	e1a02001 	mov	r2, r1
     884:	e1a01000 	mov	r1, r0
     888:	e3a0000b 	mov	r0, #11
     88c:	ef000000 	svc	0x00000000
     890:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     894:	e12fff1e 	bx	lr

00000898 <sbrk>:
     898:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     89c:	e1a04003 	mov	r4, r3
     8a0:	e1a03002 	mov	r3, r2
     8a4:	e1a02001 	mov	r2, r1
     8a8:	e1a01000 	mov	r1, r0
     8ac:	e3a0000c 	mov	r0, #12
     8b0:	ef000000 	svc	0x00000000
     8b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b8:	e12fff1e 	bx	lr

000008bc <sleep>:
     8bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c0:	e1a04003 	mov	r4, r3
     8c4:	e1a03002 	mov	r3, r2
     8c8:	e1a02001 	mov	r2, r1
     8cc:	e1a01000 	mov	r1, r0
     8d0:	e3a0000d 	mov	r0, #13
     8d4:	ef000000 	svc	0x00000000
     8d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8dc:	e12fff1e 	bx	lr

000008e0 <uptime>:
     8e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e4:	e1a04003 	mov	r4, r3
     8e8:	e1a03002 	mov	r3, r2
     8ec:	e1a02001 	mov	r2, r1
     8f0:	e1a01000 	mov	r1, r0
     8f4:	e3a0000e 	mov	r0, #14
     8f8:	ef000000 	svc	0x00000000
     8fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     900:	e12fff1e 	bx	lr

00000904 <putc>:
     904:	e92d4800 	push	{fp, lr}
     908:	e28db004 	add	fp, sp, #4
     90c:	e24dd008 	sub	sp, sp, #8
     910:	e50b0008 	str	r0, [fp, #-8]
     914:	e1a03001 	mov	r3, r1
     918:	e54b3009 	strb	r3, [fp, #-9]
     91c:	e24b3009 	sub	r3, fp, #9
     920:	e3a02001 	mov	r2, #1
     924:	e1a01003 	mov	r1, r3
     928:	e51b0008 	ldr	r0, [fp, #-8]
     92c:	ebffff64 	bl	6c4 <write>
     930:	e1a00000 	nop			@ (mov r0, r0)
     934:	e24bd004 	sub	sp, fp, #4
     938:	e8bd8800 	pop	{fp, pc}

0000093c <printint>:
     93c:	e92d4800 	push	{fp, lr}
     940:	e28db004 	add	fp, sp, #4
     944:	e24dd030 	sub	sp, sp, #48	@ 0x30
     948:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     94c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     950:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     954:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     958:	e3a03000 	mov	r3, #0
     95c:	e50b300c 	str	r3, [fp, #-12]
     960:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     964:	e3530000 	cmp	r3, #0
     968:	0a000008 	beq	990 <printint+0x54>
     96c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     970:	e3530000 	cmp	r3, #0
     974:	aa000005 	bge	990 <printint+0x54>
     978:	e3a03001 	mov	r3, #1
     97c:	e50b300c 	str	r3, [fp, #-12]
     980:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     984:	e2633000 	rsb	r3, r3, #0
     988:	e50b3010 	str	r3, [fp, #-16]
     98c:	ea000001 	b	998 <printint+0x5c>
     990:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     994:	e50b3010 	str	r3, [fp, #-16]
     998:	e3a03000 	mov	r3, #0
     99c:	e50b3008 	str	r3, [fp, #-8]
     9a0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9a4:	e51b3010 	ldr	r3, [fp, #-16]
     9a8:	e1a01002 	mov	r1, r2
     9ac:	e1a00003 	mov	r0, r3
     9b0:	eb0001d5 	bl	110c <__aeabi_uidivmod>
     9b4:	e1a03001 	mov	r3, r1
     9b8:	e1a01003 	mov	r1, r3
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e2832001 	add	r2, r3, #1
     9c4:	e50b2008 	str	r2, [fp, #-8]
     9c8:	e59f20a0 	ldr	r2, [pc, #160]	@ a70 <printint+0x134>
     9cc:	e7d22001 	ldrb	r2, [r2, r1]
     9d0:	e2433004 	sub	r3, r3, #4
     9d4:	e083300b 	add	r3, r3, fp
     9d8:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     9dc:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     9e0:	e1a01003 	mov	r1, r3
     9e4:	e51b0010 	ldr	r0, [fp, #-16]
     9e8:	eb00018a 	bl	1018 <__udivsi3>
     9ec:	e1a03000 	mov	r3, r0
     9f0:	e50b3010 	str	r3, [fp, #-16]
     9f4:	e51b3010 	ldr	r3, [fp, #-16]
     9f8:	e3530000 	cmp	r3, #0
     9fc:	1affffe7 	bne	9a0 <printint+0x64>
     a00:	e51b300c 	ldr	r3, [fp, #-12]
     a04:	e3530000 	cmp	r3, #0
     a08:	0a00000e 	beq	a48 <printint+0x10c>
     a0c:	e51b3008 	ldr	r3, [fp, #-8]
     a10:	e2832001 	add	r2, r3, #1
     a14:	e50b2008 	str	r2, [fp, #-8]
     a18:	e2433004 	sub	r3, r3, #4
     a1c:	e083300b 	add	r3, r3, fp
     a20:	e3a0202d 	mov	r2, #45	@ 0x2d
     a24:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a28:	ea000006 	b	a48 <printint+0x10c>
     a2c:	e24b2020 	sub	r2, fp, #32
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e0823003 	add	r3, r2, r3
     a38:	e5d33000 	ldrb	r3, [r3]
     a3c:	e1a01003 	mov	r1, r3
     a40:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a44:	ebffffae 	bl	904 <putc>
     a48:	e51b3008 	ldr	r3, [fp, #-8]
     a4c:	e2433001 	sub	r3, r3, #1
     a50:	e50b3008 	str	r3, [fp, #-8]
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e3530000 	cmp	r3, #0
     a5c:	aafffff2 	bge	a2c <printint+0xf0>
     a60:	e1a00000 	nop			@ (mov r0, r0)
     a64:	e1a00000 	nop			@ (mov r0, r0)
     a68:	e24bd004 	sub	sp, fp, #4
     a6c:	e8bd8800 	pop	{fp, pc}
     a70:	00001164 	.word	0x00001164

00000a74 <printf>:
     a74:	e92d000e 	push	{r1, r2, r3}
     a78:	e92d4800 	push	{fp, lr}
     a7c:	e28db004 	add	fp, sp, #4
     a80:	e24dd024 	sub	sp, sp, #36	@ 0x24
     a84:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     a88:	e3a03000 	mov	r3, #0
     a8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a90:	e28b3008 	add	r3, fp, #8
     a94:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a98:	e3a03000 	mov	r3, #0
     a9c:	e50b3010 	str	r3, [fp, #-16]
     aa0:	ea000074 	b	c78 <printf+0x204>
     aa4:	e59b2004 	ldr	r2, [fp, #4]
     aa8:	e51b3010 	ldr	r3, [fp, #-16]
     aac:	e0823003 	add	r3, r2, r3
     ab0:	e5d33000 	ldrb	r3, [r3]
     ab4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ab8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     abc:	e3530000 	cmp	r3, #0
     ac0:	1a00000b 	bne	af4 <printf+0x80>
     ac4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ac8:	e3530025 	cmp	r3, #37	@ 0x25
     acc:	1a000002 	bne	adc <printf+0x68>
     ad0:	e3a03025 	mov	r3, #37	@ 0x25
     ad4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ad8:	ea000063 	b	c6c <printf+0x1f8>
     adc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae0:	e6ef3073 	uxtb	r3, r3
     ae4:	e1a01003 	mov	r1, r3
     ae8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     aec:	ebffff84 	bl	904 <putc>
     af0:	ea00005d 	b	c6c <printf+0x1f8>
     af4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     af8:	e3530025 	cmp	r3, #37	@ 0x25
     afc:	1a00005a 	bne	c6c <printf+0x1f8>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e3530064 	cmp	r3, #100	@ 0x64
     b08:	1a00000a 	bne	b38 <printf+0xc4>
     b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b10:	e5933000 	ldr	r3, [r3]
     b14:	e1a01003 	mov	r1, r3
     b18:	e3a03001 	mov	r3, #1
     b1c:	e3a0200a 	mov	r2, #10
     b20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b24:	ebffff84 	bl	93c <printint>
     b28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b2c:	e2833004 	add	r3, r3, #4
     b30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b34:	ea00004a 	b	c64 <printf+0x1f0>
     b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b3c:	e3530078 	cmp	r3, #120	@ 0x78
     b40:	0a000002 	beq	b50 <printf+0xdc>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530070 	cmp	r3, #112	@ 0x70
     b4c:	1a00000a 	bne	b7c <printf+0x108>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e1a01003 	mov	r1, r3
     b5c:	e3a03000 	mov	r3, #0
     b60:	e3a02010 	mov	r2, #16
     b64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b68:	ebffff73 	bl	93c <printint>
     b6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b70:	e2833004 	add	r3, r3, #4
     b74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b78:	ea000039 	b	c64 <printf+0x1f0>
     b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b80:	e3530073 	cmp	r3, #115	@ 0x73
     b84:	1a000018 	bne	bec <printf+0x178>
     b88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b8c:	e5933000 	ldr	r3, [r3]
     b90:	e50b300c 	str	r3, [fp, #-12]
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e2833004 	add	r3, r3, #4
     b9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba0:	e51b300c 	ldr	r3, [fp, #-12]
     ba4:	e3530000 	cmp	r3, #0
     ba8:	1a00000a 	bne	bd8 <printf+0x164>
     bac:	e59f30f4 	ldr	r3, [pc, #244]	@ ca8 <printf+0x234>
     bb0:	e50b300c 	str	r3, [fp, #-12]
     bb4:	ea000007 	b	bd8 <printf+0x164>
     bb8:	e51b300c 	ldr	r3, [fp, #-12]
     bbc:	e5d33000 	ldrb	r3, [r3]
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc8:	ebffff4d 	bl	904 <putc>
     bcc:	e51b300c 	ldr	r3, [fp, #-12]
     bd0:	e2833001 	add	r3, r3, #1
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	e51b300c 	ldr	r3, [fp, #-12]
     bdc:	e5d33000 	ldrb	r3, [r3]
     be0:	e3530000 	cmp	r3, #0
     be4:	1afffff3 	bne	bb8 <printf+0x144>
     be8:	ea00001d 	b	c64 <printf+0x1f0>
     bec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bf0:	e3530063 	cmp	r3, #99	@ 0x63
     bf4:	1a000009 	bne	c20 <printf+0x1ac>
     bf8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bfc:	e5933000 	ldr	r3, [r3]
     c00:	e6ef3073 	uxtb	r3, r3
     c04:	e1a01003 	mov	r1, r3
     c08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c0c:	ebffff3c 	bl	904 <putc>
     c10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c14:	e2833004 	add	r3, r3, #4
     c18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c1c:	ea000010 	b	c64 <printf+0x1f0>
     c20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c24:	e3530025 	cmp	r3, #37	@ 0x25
     c28:	1a000005 	bne	c44 <printf+0x1d0>
     c2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c30:	e6ef3073 	uxtb	r3, r3
     c34:	e1a01003 	mov	r1, r3
     c38:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c3c:	ebffff30 	bl	904 <putc>
     c40:	ea000007 	b	c64 <printf+0x1f0>
     c44:	e3a01025 	mov	r1, #37	@ 0x25
     c48:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c4c:	ebffff2c 	bl	904 <putc>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e6ef3073 	uxtb	r3, r3
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff27 	bl	904 <putc>
     c64:	e3a03000 	mov	r3, #0
     c68:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c6c:	e51b3010 	ldr	r3, [fp, #-16]
     c70:	e2833001 	add	r3, r3, #1
     c74:	e50b3010 	str	r3, [fp, #-16]
     c78:	e59b2004 	ldr	r2, [fp, #4]
     c7c:	e51b3010 	ldr	r3, [fp, #-16]
     c80:	e0823003 	add	r3, r2, r3
     c84:	e5d33000 	ldrb	r3, [r3]
     c88:	e3530000 	cmp	r3, #0
     c8c:	1affff84 	bne	aa4 <printf+0x30>
     c90:	e1a00000 	nop			@ (mov r0, r0)
     c94:	e1a00000 	nop			@ (mov r0, r0)
     c98:	e24bd004 	sub	sp, fp, #4
     c9c:	e8bd4800 	pop	{fp, lr}
     ca0:	e28dd00c 	add	sp, sp, #12
     ca4:	e12fff1e 	bx	lr
     ca8:	0000115c 	.word	0x0000115c

00000cac <free>:
     cac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cb0:	e28db000 	add	fp, sp, #0
     cb4:	e24dd014 	sub	sp, sp, #20
     cb8:	e50b0010 	str	r0, [fp, #-16]
     cbc:	e51b3010 	ldr	r3, [fp, #-16]
     cc0:	e2433008 	sub	r3, r3, #8
     cc4:	e50b300c 	str	r3, [fp, #-12]
     cc8:	e59f3154 	ldr	r3, [pc, #340]	@ e24 <free+0x178>
     ccc:	e5933000 	ldr	r3, [r3]
     cd0:	e50b3008 	str	r3, [fp, #-8]
     cd4:	ea000010 	b	d1c <free+0x70>
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e51b2008 	ldr	r2, [fp, #-8]
     ce4:	e1520003 	cmp	r2, r3
     ce8:	3a000008 	bcc	d10 <free+0x64>
     cec:	e51b200c 	ldr	r2, [fp, #-12]
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e1520003 	cmp	r2, r3
     cf8:	8a000010 	bhi	d40 <free+0x94>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e51b200c 	ldr	r2, [fp, #-12]
     d08:	e1520003 	cmp	r2, r3
     d0c:	3a00000b 	bcc	d40 <free+0x94>
     d10:	e51b3008 	ldr	r3, [fp, #-8]
     d14:	e5933000 	ldr	r3, [r3]
     d18:	e50b3008 	str	r3, [fp, #-8]
     d1c:	e51b200c 	ldr	r2, [fp, #-12]
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e1520003 	cmp	r2, r3
     d28:	9affffea 	bls	cd8 <free+0x2c>
     d2c:	e51b3008 	ldr	r3, [fp, #-8]
     d30:	e5933000 	ldr	r3, [r3]
     d34:	e51b200c 	ldr	r2, [fp, #-12]
     d38:	e1520003 	cmp	r2, r3
     d3c:	2affffe5 	bcs	cd8 <free+0x2c>
     d40:	e51b300c 	ldr	r3, [fp, #-12]
     d44:	e5933004 	ldr	r3, [r3, #4]
     d48:	e1a03183 	lsl	r3, r3, #3
     d4c:	e51b200c 	ldr	r2, [fp, #-12]
     d50:	e0822003 	add	r2, r2, r3
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e1520003 	cmp	r2, r3
     d60:	1a00000d 	bne	d9c <free+0xf0>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5932004 	ldr	r2, [r3, #4]
     d6c:	e51b3008 	ldr	r3, [fp, #-8]
     d70:	e5933000 	ldr	r3, [r3]
     d74:	e5933004 	ldr	r3, [r3, #4]
     d78:	e0822003 	add	r2, r2, r3
     d7c:	e51b300c 	ldr	r3, [fp, #-12]
     d80:	e5832004 	str	r2, [r3, #4]
     d84:	e51b3008 	ldr	r3, [fp, #-8]
     d88:	e5933000 	ldr	r3, [r3]
     d8c:	e5932000 	ldr	r2, [r3]
     d90:	e51b300c 	ldr	r3, [fp, #-12]
     d94:	e5832000 	str	r2, [r3]
     d98:	ea000003 	b	dac <free+0x100>
     d9c:	e51b3008 	ldr	r3, [fp, #-8]
     da0:	e5932000 	ldr	r2, [r3]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5832000 	str	r2, [r3]
     dac:	e51b3008 	ldr	r3, [fp, #-8]
     db0:	e5933004 	ldr	r3, [r3, #4]
     db4:	e1a03183 	lsl	r3, r3, #3
     db8:	e51b2008 	ldr	r2, [fp, #-8]
     dbc:	e0823003 	add	r3, r2, r3
     dc0:	e51b200c 	ldr	r2, [fp, #-12]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	1a00000b 	bne	dfc <free+0x150>
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e5932004 	ldr	r2, [r3, #4]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5933004 	ldr	r3, [r3, #4]
     ddc:	e0822003 	add	r2, r2, r3
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5832004 	str	r2, [r3, #4]
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5932000 	ldr	r2, [r3]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5832000 	str	r2, [r3]
     df8:	ea000002 	b	e08 <free+0x15c>
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e51b200c 	ldr	r2, [fp, #-12]
     e04:	e5832000 	str	r2, [r3]
     e08:	e59f2014 	ldr	r2, [pc, #20]	@ e24 <free+0x178>
     e0c:	e51b3008 	ldr	r3, [fp, #-8]
     e10:	e5823000 	str	r3, [r2]
     e14:	e1a00000 	nop			@ (mov r0, r0)
     e18:	e28bd000 	add	sp, fp, #0
     e1c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e20:	e12fff1e 	bx	lr
     e24:	00001380 	.word	0x00001380

00000e28 <morecore>:
     e28:	e92d4800 	push	{fp, lr}
     e2c:	e28db004 	add	fp, sp, #4
     e30:	e24dd010 	sub	sp, sp, #16
     e34:	e50b0010 	str	r0, [fp, #-16]
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e40:	2a000001 	bcs	e4c <morecore+0x24>
     e44:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e48:	e50b3010 	str	r3, [fp, #-16]
     e4c:	e51b3010 	ldr	r3, [fp, #-16]
     e50:	e1a03183 	lsl	r3, r3, #3
     e54:	e1a00003 	mov	r0, r3
     e58:	ebfffe8e 	bl	898 <sbrk>
     e5c:	e50b0008 	str	r0, [fp, #-8]
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e3730001 	cmn	r3, #1
     e68:	1a000001 	bne	e74 <morecore+0x4c>
     e6c:	e3a03000 	mov	r3, #0
     e70:	ea00000a 	b	ea0 <morecore+0x78>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e50b300c 	str	r3, [fp, #-12]
     e7c:	e51b300c 	ldr	r3, [fp, #-12]
     e80:	e51b2010 	ldr	r2, [fp, #-16]
     e84:	e5832004 	str	r2, [r3, #4]
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e2833008 	add	r3, r3, #8
     e90:	e1a00003 	mov	r0, r3
     e94:	ebffff84 	bl	cac <free>
     e98:	e59f300c 	ldr	r3, [pc, #12]	@ eac <morecore+0x84>
     e9c:	e5933000 	ldr	r3, [r3]
     ea0:	e1a00003 	mov	r0, r3
     ea4:	e24bd004 	sub	sp, fp, #4
     ea8:	e8bd8800 	pop	{fp, pc}
     eac:	00001380 	.word	0x00001380

00000eb0 <malloc>:
     eb0:	e92d4800 	push	{fp, lr}
     eb4:	e28db004 	add	fp, sp, #4
     eb8:	e24dd018 	sub	sp, sp, #24
     ebc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ec0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ec4:	e2833007 	add	r3, r3, #7
     ec8:	e1a031a3 	lsr	r3, r3, #3
     ecc:	e2833001 	add	r3, r3, #1
     ed0:	e50b3010 	str	r3, [fp, #-16]
     ed4:	e59f3134 	ldr	r3, [pc, #308]	@ 1010 <malloc+0x160>
     ed8:	e5933000 	ldr	r3, [r3]
     edc:	e50b300c 	str	r3, [fp, #-12]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e3530000 	cmp	r3, #0
     ee8:	1a00000b 	bne	f1c <malloc+0x6c>
     eec:	e59f3120 	ldr	r3, [pc, #288]	@ 1014 <malloc+0x164>
     ef0:	e50b300c 	str	r3, [fp, #-12]
     ef4:	e59f2114 	ldr	r2, [pc, #276]	@ 1010 <malloc+0x160>
     ef8:	e51b300c 	ldr	r3, [fp, #-12]
     efc:	e5823000 	str	r3, [r2]
     f00:	e59f3108 	ldr	r3, [pc, #264]	@ 1010 <malloc+0x160>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e59f2104 	ldr	r2, [pc, #260]	@ 1014 <malloc+0x164>
     f0c:	e5823000 	str	r3, [r2]
     f10:	e59f30fc 	ldr	r3, [pc, #252]	@ 1014 <malloc+0x164>
     f14:	e3a02000 	mov	r2, #0
     f18:	e5832004 	str	r2, [r3, #4]
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5933000 	ldr	r3, [r3]
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b3008 	ldr	r3, [fp, #-8]
     f2c:	e5933004 	ldr	r3, [r3, #4]
     f30:	e51b2010 	ldr	r2, [fp, #-16]
     f34:	e1520003 	cmp	r2, r3
     f38:	8a00001e 	bhi	fb8 <malloc+0x108>
     f3c:	e51b3008 	ldr	r3, [fp, #-8]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e51b2010 	ldr	r2, [fp, #-16]
     f48:	e1520003 	cmp	r2, r3
     f4c:	1a000004 	bne	f64 <malloc+0xb4>
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5932000 	ldr	r2, [r3]
     f58:	e51b300c 	ldr	r3, [fp, #-12]
     f5c:	e5832000 	str	r2, [r3]
     f60:	ea00000e 	b	fa0 <malloc+0xf0>
     f64:	e51b3008 	ldr	r3, [fp, #-8]
     f68:	e5932004 	ldr	r2, [r3, #4]
     f6c:	e51b3010 	ldr	r3, [fp, #-16]
     f70:	e0422003 	sub	r2, r2, r3
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5832004 	str	r2, [r3, #4]
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5933004 	ldr	r3, [r3, #4]
     f84:	e1a03183 	lsl	r3, r3, #3
     f88:	e51b2008 	ldr	r2, [fp, #-8]
     f8c:	e0823003 	add	r3, r2, r3
     f90:	e50b3008 	str	r3, [fp, #-8]
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e51b2010 	ldr	r2, [fp, #-16]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e59f2068 	ldr	r2, [pc, #104]	@ 1010 <malloc+0x160>
     fa4:	e51b300c 	ldr	r3, [fp, #-12]
     fa8:	e5823000 	str	r3, [r2]
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e2833008 	add	r3, r3, #8
     fb4:	ea000012 	b	1004 <malloc+0x154>
     fb8:	e59f3050 	ldr	r3, [pc, #80]	@ 1010 <malloc+0x160>
     fbc:	e5933000 	ldr	r3, [r3]
     fc0:	e51b2008 	ldr	r2, [fp, #-8]
     fc4:	e1520003 	cmp	r2, r3
     fc8:	1a000007 	bne	fec <malloc+0x13c>
     fcc:	e51b0010 	ldr	r0, [fp, #-16]
     fd0:	ebffff94 	bl	e28 <morecore>
     fd4:	e50b0008 	str	r0, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e3530000 	cmp	r3, #0
     fe0:	1a000001 	bne	fec <malloc+0x13c>
     fe4:	e3a03000 	mov	r3, #0
     fe8:	ea000005 	b	1004 <malloc+0x154>
     fec:	e51b3008 	ldr	r3, [fp, #-8]
     ff0:	e50b300c 	str	r3, [fp, #-12]
     ff4:	e51b3008 	ldr	r3, [fp, #-8]
     ff8:	e5933000 	ldr	r3, [r3]
     ffc:	e50b3008 	str	r3, [fp, #-8]
    1000:	eaffffc8 	b	f28 <malloc+0x78>
    1004:	e1a00003 	mov	r0, r3
    1008:	e24bd004 	sub	sp, fp, #4
    100c:	e8bd8800 	pop	{fp, pc}
    1010:	00001380 	.word	0x00001380
    1014:	00001378 	.word	0x00001378

00001018 <__udivsi3>:
    1018:	e2512001 	subs	r2, r1, #1
    101c:	012fff1e 	bxeq	lr
    1020:	3a000036 	bcc	1100 <__udivsi3+0xe8>
    1024:	e1500001 	cmp	r0, r1
    1028:	9a000022 	bls	10b8 <__udivsi3+0xa0>
    102c:	e1110002 	tst	r1, r2
    1030:	0a000023 	beq	10c4 <__udivsi3+0xac>
    1034:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1038:	01a01181 	lsleq	r1, r1, #3
    103c:	03a03008 	moveq	r3, #8
    1040:	13a03001 	movne	r3, #1
    1044:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1048:	31510000 	cmpcc	r1, r0
    104c:	31a01201 	lslcc	r1, r1, #4
    1050:	31a03203 	lslcc	r3, r3, #4
    1054:	3afffffa 	bcc	1044 <__udivsi3+0x2c>
    1058:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    105c:	31510000 	cmpcc	r1, r0
    1060:	31a01081 	lslcc	r1, r1, #1
    1064:	31a03083 	lslcc	r3, r3, #1
    1068:	3afffffa 	bcc	1058 <__udivsi3+0x40>
    106c:	e3a02000 	mov	r2, #0
    1070:	e1500001 	cmp	r0, r1
    1074:	20400001 	subcs	r0, r0, r1
    1078:	21822003 	orrcs	r2, r2, r3
    107c:	e15000a1 	cmp	r0, r1, lsr #1
    1080:	204000a1 	subcs	r0, r0, r1, lsr #1
    1084:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1088:	e1500121 	cmp	r0, r1, lsr #2
    108c:	20400121 	subcs	r0, r0, r1, lsr #2
    1090:	21822123 	orrcs	r2, r2, r3, lsr #2
    1094:	e15001a1 	cmp	r0, r1, lsr #3
    1098:	204001a1 	subcs	r0, r0, r1, lsr #3
    109c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10a0:	e3500000 	cmp	r0, #0
    10a4:	11b03223 	lsrsne	r3, r3, #4
    10a8:	11a01221 	lsrne	r1, r1, #4
    10ac:	1affffef 	bne	1070 <__udivsi3+0x58>
    10b0:	e1a00002 	mov	r0, r2
    10b4:	e12fff1e 	bx	lr
    10b8:	03a00001 	moveq	r0, #1
    10bc:	13a00000 	movne	r0, #0
    10c0:	e12fff1e 	bx	lr
    10c4:	e3510801 	cmp	r1, #65536	@ 0x10000
    10c8:	21a01821 	lsrcs	r1, r1, #16
    10cc:	23a02010 	movcs	r2, #16
    10d0:	33a02000 	movcc	r2, #0
    10d4:	e3510c01 	cmp	r1, #256	@ 0x100
    10d8:	21a01421 	lsrcs	r1, r1, #8
    10dc:	22822008 	addcs	r2, r2, #8
    10e0:	e3510010 	cmp	r1, #16
    10e4:	21a01221 	lsrcs	r1, r1, #4
    10e8:	22822004 	addcs	r2, r2, #4
    10ec:	e3510004 	cmp	r1, #4
    10f0:	82822003 	addhi	r2, r2, #3
    10f4:	908220a1 	addls	r2, r2, r1, lsr #1
    10f8:	e1a00230 	lsr	r0, r0, r2
    10fc:	e12fff1e 	bx	lr
    1100:	e3500000 	cmp	r0, #0
    1104:	13e00000 	mvnne	r0, #0
    1108:	ea000007 	b	112c <__aeabi_idiv0>

0000110c <__aeabi_uidivmod>:
    110c:	e3510000 	cmp	r1, #0
    1110:	0afffffa 	beq	1100 <__udivsi3+0xe8>
    1114:	e92d4003 	push	{r0, r1, lr}
    1118:	ebffffbe 	bl	1018 <__udivsi3>
    111c:	e8bd4006 	pop	{r1, r2, lr}
    1120:	e0030092 	mul	r3, r2, r0
    1124:	e0411003 	sub	r1, r1, r3
    1128:	e12fff1e 	bx	lr

0000112c <__aeabi_idiv0>:
    112c:	e12fff1e 	bx	lr
