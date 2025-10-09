
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
      58:	eb00028e 	bl	a98 <printf>
      5c:	eb000174 	bl	634 <exit>
      60:	e1a00000 	nop			@ (mov r0, r0)
      64:	e24bd004 	sub	sp, fp, #4
      68:	e8bd8800 	pop	{fp, pc}
      6c:	0000119c 	.word	0x0000119c
      70:	00001154 	.word	0x00001154

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
      fc:	eb000265 	bl	a98 <printf>
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
     134:	00001168 	.word	0x00001168

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

00000904 <ps>:
     904:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     908:	e1a04003 	mov	r4, r3
     90c:	e1a03002 	mov	r3, r2
     910:	e1a02001 	mov	r2, r1
     914:	e1a01000 	mov	r1, r0
     918:	e3a00016 	mov	r0, #22
     91c:	ef000000 	svc	0x00000000
     920:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     924:	e12fff1e 	bx	lr

00000928 <putc>:
     928:	e92d4800 	push	{fp, lr}
     92c:	e28db004 	add	fp, sp, #4
     930:	e24dd008 	sub	sp, sp, #8
     934:	e50b0008 	str	r0, [fp, #-8]
     938:	e1a03001 	mov	r3, r1
     93c:	e54b3009 	strb	r3, [fp, #-9]
     940:	e24b3009 	sub	r3, fp, #9
     944:	e3a02001 	mov	r2, #1
     948:	e1a01003 	mov	r1, r3
     94c:	e51b0008 	ldr	r0, [fp, #-8]
     950:	ebffff5b 	bl	6c4 <write>
     954:	e1a00000 	nop			@ (mov r0, r0)
     958:	e24bd004 	sub	sp, fp, #4
     95c:	e8bd8800 	pop	{fp, pc}

00000960 <printint>:
     960:	e92d4800 	push	{fp, lr}
     964:	e28db004 	add	fp, sp, #4
     968:	e24dd030 	sub	sp, sp, #48	@ 0x30
     96c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     970:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     974:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     978:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     97c:	e3a03000 	mov	r3, #0
     980:	e50b300c 	str	r3, [fp, #-12]
     984:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     988:	e3530000 	cmp	r3, #0
     98c:	0a000008 	beq	9b4 <printint+0x54>
     990:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     994:	e3530000 	cmp	r3, #0
     998:	aa000005 	bge	9b4 <printint+0x54>
     99c:	e3a03001 	mov	r3, #1
     9a0:	e50b300c 	str	r3, [fp, #-12]
     9a4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9a8:	e2633000 	rsb	r3, r3, #0
     9ac:	e50b3010 	str	r3, [fp, #-16]
     9b0:	ea000001 	b	9bc <printint+0x5c>
     9b4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b8:	e50b3010 	str	r3, [fp, #-16]
     9bc:	e3a03000 	mov	r3, #0
     9c0:	e50b3008 	str	r3, [fp, #-8]
     9c4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9c8:	e51b3010 	ldr	r3, [fp, #-16]
     9cc:	e1a01002 	mov	r1, r2
     9d0:	e1a00003 	mov	r0, r3
     9d4:	eb0001d5 	bl	1130 <__aeabi_uidivmod>
     9d8:	e1a03001 	mov	r3, r1
     9dc:	e1a01003 	mov	r1, r3
     9e0:	e51b3008 	ldr	r3, [fp, #-8]
     9e4:	e2832001 	add	r2, r3, #1
     9e8:	e50b2008 	str	r2, [fp, #-8]
     9ec:	e59f20a0 	ldr	r2, [pc, #160]	@ a94 <printint+0x134>
     9f0:	e7d22001 	ldrb	r2, [r2, r1]
     9f4:	e2433004 	sub	r3, r3, #4
     9f8:	e083300b 	add	r3, r3, fp
     9fc:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a00:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a04:	e1a01003 	mov	r1, r3
     a08:	e51b0010 	ldr	r0, [fp, #-16]
     a0c:	eb00018a 	bl	103c <__udivsi3>
     a10:	e1a03000 	mov	r3, r0
     a14:	e50b3010 	str	r3, [fp, #-16]
     a18:	e51b3010 	ldr	r3, [fp, #-16]
     a1c:	e3530000 	cmp	r3, #0
     a20:	1affffe7 	bne	9c4 <printint+0x64>
     a24:	e51b300c 	ldr	r3, [fp, #-12]
     a28:	e3530000 	cmp	r3, #0
     a2c:	0a00000e 	beq	a6c <printint+0x10c>
     a30:	e51b3008 	ldr	r3, [fp, #-8]
     a34:	e2832001 	add	r2, r3, #1
     a38:	e50b2008 	str	r2, [fp, #-8]
     a3c:	e2433004 	sub	r3, r3, #4
     a40:	e083300b 	add	r3, r3, fp
     a44:	e3a0202d 	mov	r2, #45	@ 0x2d
     a48:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a4c:	ea000006 	b	a6c <printint+0x10c>
     a50:	e24b2020 	sub	r2, fp, #32
     a54:	e51b3008 	ldr	r3, [fp, #-8]
     a58:	e0823003 	add	r3, r2, r3
     a5c:	e5d33000 	ldrb	r3, [r3]
     a60:	e1a01003 	mov	r1, r3
     a64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a68:	ebffffae 	bl	928 <putc>
     a6c:	e51b3008 	ldr	r3, [fp, #-8]
     a70:	e2433001 	sub	r3, r3, #1
     a74:	e50b3008 	str	r3, [fp, #-8]
     a78:	e51b3008 	ldr	r3, [fp, #-8]
     a7c:	e3530000 	cmp	r3, #0
     a80:	aafffff2 	bge	a50 <printint+0xf0>
     a84:	e1a00000 	nop			@ (mov r0, r0)
     a88:	e1a00000 	nop			@ (mov r0, r0)
     a8c:	e24bd004 	sub	sp, fp, #4
     a90:	e8bd8800 	pop	{fp, pc}
     a94:	00001188 	.word	0x00001188

00000a98 <printf>:
     a98:	e92d000e 	push	{r1, r2, r3}
     a9c:	e92d4800 	push	{fp, lr}
     aa0:	e28db004 	add	fp, sp, #4
     aa4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aa8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     aac:	e3a03000 	mov	r3, #0
     ab0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ab4:	e28b3008 	add	r3, fp, #8
     ab8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     abc:	e3a03000 	mov	r3, #0
     ac0:	e50b3010 	str	r3, [fp, #-16]
     ac4:	ea000074 	b	c9c <printf+0x204>
     ac8:	e59b2004 	ldr	r2, [fp, #4]
     acc:	e51b3010 	ldr	r3, [fp, #-16]
     ad0:	e0823003 	add	r3, r2, r3
     ad4:	e5d33000 	ldrb	r3, [r3]
     ad8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     adc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ae0:	e3530000 	cmp	r3, #0
     ae4:	1a00000b 	bne	b18 <printf+0x80>
     ae8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aec:	e3530025 	cmp	r3, #37	@ 0x25
     af0:	1a000002 	bne	b00 <printf+0x68>
     af4:	e3a03025 	mov	r3, #37	@ 0x25
     af8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     afc:	ea000063 	b	c90 <printf+0x1f8>
     b00:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b04:	e6ef3073 	uxtb	r3, r3
     b08:	e1a01003 	mov	r1, r3
     b0c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b10:	ebffff84 	bl	928 <putc>
     b14:	ea00005d 	b	c90 <printf+0x1f8>
     b18:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b1c:	e3530025 	cmp	r3, #37	@ 0x25
     b20:	1a00005a 	bne	c90 <printf+0x1f8>
     b24:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b28:	e3530064 	cmp	r3, #100	@ 0x64
     b2c:	1a00000a 	bne	b5c <printf+0xc4>
     b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b34:	e5933000 	ldr	r3, [r3]
     b38:	e1a01003 	mov	r1, r3
     b3c:	e3a03001 	mov	r3, #1
     b40:	e3a0200a 	mov	r2, #10
     b44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b48:	ebffff84 	bl	960 <printint>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e2833004 	add	r3, r3, #4
     b54:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b58:	ea00004a 	b	c88 <printf+0x1f0>
     b5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b60:	e3530078 	cmp	r3, #120	@ 0x78
     b64:	0a000002 	beq	b74 <printf+0xdc>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530070 	cmp	r3, #112	@ 0x70
     b70:	1a00000a 	bne	ba0 <printf+0x108>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e1a01003 	mov	r1, r3
     b80:	e3a03000 	mov	r3, #0
     b84:	e3a02010 	mov	r2, #16
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff73 	bl	960 <printint>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e2833004 	add	r3, r3, #4
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	ea000039 	b	c88 <printf+0x1f0>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530073 	cmp	r3, #115	@ 0x73
     ba8:	1a000018 	bne	c10 <printf+0x178>
     bac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb0:	e5933000 	ldr	r3, [r3]
     bb4:	e50b300c 	str	r3, [fp, #-12]
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e2833004 	add	r3, r3, #4
     bc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bc4:	e51b300c 	ldr	r3, [fp, #-12]
     bc8:	e3530000 	cmp	r3, #0
     bcc:	1a00000a 	bne	bfc <printf+0x164>
     bd0:	e59f30f4 	ldr	r3, [pc, #244]	@ ccc <printf+0x234>
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	ea000007 	b	bfc <printf+0x164>
     bdc:	e51b300c 	ldr	r3, [fp, #-12]
     be0:	e5d33000 	ldrb	r3, [r3]
     be4:	e1a01003 	mov	r1, r3
     be8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bec:	ebffff4d 	bl	928 <putc>
     bf0:	e51b300c 	ldr	r3, [fp, #-12]
     bf4:	e2833001 	add	r3, r3, #1
     bf8:	e50b300c 	str	r3, [fp, #-12]
     bfc:	e51b300c 	ldr	r3, [fp, #-12]
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e3530000 	cmp	r3, #0
     c08:	1afffff3 	bne	bdc <printf+0x144>
     c0c:	ea00001d 	b	c88 <printf+0x1f0>
     c10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c14:	e3530063 	cmp	r3, #99	@ 0x63
     c18:	1a000009 	bne	c44 <printf+0x1ac>
     c1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c20:	e5933000 	ldr	r3, [r3]
     c24:	e6ef3073 	uxtb	r3, r3
     c28:	e1a01003 	mov	r1, r3
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c30:	ebffff3c 	bl	928 <putc>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e2833004 	add	r3, r3, #4
     c3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c40:	ea000010 	b	c88 <printf+0x1f0>
     c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c48:	e3530025 	cmp	r3, #37	@ 0x25
     c4c:	1a000005 	bne	c68 <printf+0x1d0>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e6ef3073 	uxtb	r3, r3
     c58:	e1a01003 	mov	r1, r3
     c5c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c60:	ebffff30 	bl	928 <putc>
     c64:	ea000007 	b	c88 <printf+0x1f0>
     c68:	e3a01025 	mov	r1, #37	@ 0x25
     c6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c70:	ebffff2c 	bl	928 <putc>
     c74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c78:	e6ef3073 	uxtb	r3, r3
     c7c:	e1a01003 	mov	r1, r3
     c80:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c84:	ebffff27 	bl	928 <putc>
     c88:	e3a03000 	mov	r3, #0
     c8c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c90:	e51b3010 	ldr	r3, [fp, #-16]
     c94:	e2833001 	add	r3, r3, #1
     c98:	e50b3010 	str	r3, [fp, #-16]
     c9c:	e59b2004 	ldr	r2, [fp, #4]
     ca0:	e51b3010 	ldr	r3, [fp, #-16]
     ca4:	e0823003 	add	r3, r2, r3
     ca8:	e5d33000 	ldrb	r3, [r3]
     cac:	e3530000 	cmp	r3, #0
     cb0:	1affff84 	bne	ac8 <printf+0x30>
     cb4:	e1a00000 	nop			@ (mov r0, r0)
     cb8:	e1a00000 	nop			@ (mov r0, r0)
     cbc:	e24bd004 	sub	sp, fp, #4
     cc0:	e8bd4800 	pop	{fp, lr}
     cc4:	e28dd00c 	add	sp, sp, #12
     cc8:	e12fff1e 	bx	lr
     ccc:	00001180 	.word	0x00001180

00000cd0 <free>:
     cd0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cd4:	e28db000 	add	fp, sp, #0
     cd8:	e24dd014 	sub	sp, sp, #20
     cdc:	e50b0010 	str	r0, [fp, #-16]
     ce0:	e51b3010 	ldr	r3, [fp, #-16]
     ce4:	e2433008 	sub	r3, r3, #8
     ce8:	e50b300c 	str	r3, [fp, #-12]
     cec:	e59f3154 	ldr	r3, [pc, #340]	@ e48 <free+0x178>
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e50b3008 	str	r3, [fp, #-8]
     cf8:	ea000010 	b	d40 <free+0x70>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e5933000 	ldr	r3, [r3]
     d04:	e51b2008 	ldr	r2, [fp, #-8]
     d08:	e1520003 	cmp	r2, r3
     d0c:	3a000008 	bcc	d34 <free+0x64>
     d10:	e51b200c 	ldr	r2, [fp, #-12]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e1520003 	cmp	r2, r3
     d1c:	8a000010 	bhi	d64 <free+0x94>
     d20:	e51b3008 	ldr	r3, [fp, #-8]
     d24:	e5933000 	ldr	r3, [r3]
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e1520003 	cmp	r2, r3
     d30:	3a00000b 	bcc	d64 <free+0x94>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5933000 	ldr	r3, [r3]
     d3c:	e50b3008 	str	r3, [fp, #-8]
     d40:	e51b200c 	ldr	r2, [fp, #-12]
     d44:	e51b3008 	ldr	r3, [fp, #-8]
     d48:	e1520003 	cmp	r2, r3
     d4c:	9affffea 	bls	cfc <free+0x2c>
     d50:	e51b3008 	ldr	r3, [fp, #-8]
     d54:	e5933000 	ldr	r3, [r3]
     d58:	e51b200c 	ldr	r2, [fp, #-12]
     d5c:	e1520003 	cmp	r2, r3
     d60:	2affffe5 	bcs	cfc <free+0x2c>
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e5933004 	ldr	r3, [r3, #4]
     d6c:	e1a03183 	lsl	r3, r3, #3
     d70:	e51b200c 	ldr	r2, [fp, #-12]
     d74:	e0822003 	add	r2, r2, r3
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e1520003 	cmp	r2, r3
     d84:	1a00000d 	bne	dc0 <free+0xf0>
     d88:	e51b300c 	ldr	r3, [fp, #-12]
     d8c:	e5932004 	ldr	r2, [r3, #4]
     d90:	e51b3008 	ldr	r3, [fp, #-8]
     d94:	e5933000 	ldr	r3, [r3]
     d98:	e5933004 	ldr	r3, [r3, #4]
     d9c:	e0822003 	add	r2, r2, r3
     da0:	e51b300c 	ldr	r3, [fp, #-12]
     da4:	e5832004 	str	r2, [r3, #4]
     da8:	e51b3008 	ldr	r3, [fp, #-8]
     dac:	e5933000 	ldr	r3, [r3]
     db0:	e5932000 	ldr	r2, [r3]
     db4:	e51b300c 	ldr	r3, [fp, #-12]
     db8:	e5832000 	str	r2, [r3]
     dbc:	ea000003 	b	dd0 <free+0x100>
     dc0:	e51b3008 	ldr	r3, [fp, #-8]
     dc4:	e5932000 	ldr	r2, [r3]
     dc8:	e51b300c 	ldr	r3, [fp, #-12]
     dcc:	e5832000 	str	r2, [r3]
     dd0:	e51b3008 	ldr	r3, [fp, #-8]
     dd4:	e5933004 	ldr	r3, [r3, #4]
     dd8:	e1a03183 	lsl	r3, r3, #3
     ddc:	e51b2008 	ldr	r2, [fp, #-8]
     de0:	e0823003 	add	r3, r2, r3
     de4:	e51b200c 	ldr	r2, [fp, #-12]
     de8:	e1520003 	cmp	r2, r3
     dec:	1a00000b 	bne	e20 <free+0x150>
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5932004 	ldr	r2, [r3, #4]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5933004 	ldr	r3, [r3, #4]
     e00:	e0822003 	add	r2, r2, r3
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5832004 	str	r2, [r3, #4]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5932000 	ldr	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5832000 	str	r2, [r3]
     e1c:	ea000002 	b	e2c <free+0x15c>
     e20:	e51b3008 	ldr	r3, [fp, #-8]
     e24:	e51b200c 	ldr	r2, [fp, #-12]
     e28:	e5832000 	str	r2, [r3]
     e2c:	e59f2014 	ldr	r2, [pc, #20]	@ e48 <free+0x178>
     e30:	e51b3008 	ldr	r3, [fp, #-8]
     e34:	e5823000 	str	r3, [r2]
     e38:	e1a00000 	nop			@ (mov r0, r0)
     e3c:	e28bd000 	add	sp, fp, #0
     e40:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e44:	e12fff1e 	bx	lr
     e48:	000013a4 	.word	0x000013a4

00000e4c <morecore>:
     e4c:	e92d4800 	push	{fp, lr}
     e50:	e28db004 	add	fp, sp, #4
     e54:	e24dd010 	sub	sp, sp, #16
     e58:	e50b0010 	str	r0, [fp, #-16]
     e5c:	e51b3010 	ldr	r3, [fp, #-16]
     e60:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e64:	2a000001 	bcs	e70 <morecore+0x24>
     e68:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e6c:	e50b3010 	str	r3, [fp, #-16]
     e70:	e51b3010 	ldr	r3, [fp, #-16]
     e74:	e1a03183 	lsl	r3, r3, #3
     e78:	e1a00003 	mov	r0, r3
     e7c:	ebfffe85 	bl	898 <sbrk>
     e80:	e50b0008 	str	r0, [fp, #-8]
     e84:	e51b3008 	ldr	r3, [fp, #-8]
     e88:	e3730001 	cmn	r3, #1
     e8c:	1a000001 	bne	e98 <morecore+0x4c>
     e90:	e3a03000 	mov	r3, #0
     e94:	ea00000a 	b	ec4 <morecore+0x78>
     e98:	e51b3008 	ldr	r3, [fp, #-8]
     e9c:	e50b300c 	str	r3, [fp, #-12]
     ea0:	e51b300c 	ldr	r3, [fp, #-12]
     ea4:	e51b2010 	ldr	r2, [fp, #-16]
     ea8:	e5832004 	str	r2, [r3, #4]
     eac:	e51b300c 	ldr	r3, [fp, #-12]
     eb0:	e2833008 	add	r3, r3, #8
     eb4:	e1a00003 	mov	r0, r3
     eb8:	ebffff84 	bl	cd0 <free>
     ebc:	e59f300c 	ldr	r3, [pc, #12]	@ ed0 <morecore+0x84>
     ec0:	e5933000 	ldr	r3, [r3]
     ec4:	e1a00003 	mov	r0, r3
     ec8:	e24bd004 	sub	sp, fp, #4
     ecc:	e8bd8800 	pop	{fp, pc}
     ed0:	000013a4 	.word	0x000013a4

00000ed4 <malloc>:
     ed4:	e92d4800 	push	{fp, lr}
     ed8:	e28db004 	add	fp, sp, #4
     edc:	e24dd018 	sub	sp, sp, #24
     ee0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ee8:	e2833007 	add	r3, r3, #7
     eec:	e1a031a3 	lsr	r3, r3, #3
     ef0:	e2833001 	add	r3, r3, #1
     ef4:	e50b3010 	str	r3, [fp, #-16]
     ef8:	e59f3134 	ldr	r3, [pc, #308]	@ 1034 <malloc+0x160>
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e50b300c 	str	r3, [fp, #-12]
     f04:	e51b300c 	ldr	r3, [fp, #-12]
     f08:	e3530000 	cmp	r3, #0
     f0c:	1a00000b 	bne	f40 <malloc+0x6c>
     f10:	e59f3120 	ldr	r3, [pc, #288]	@ 1038 <malloc+0x164>
     f14:	e50b300c 	str	r3, [fp, #-12]
     f18:	e59f2114 	ldr	r2, [pc, #276]	@ 1034 <malloc+0x160>
     f1c:	e51b300c 	ldr	r3, [fp, #-12]
     f20:	e5823000 	str	r3, [r2]
     f24:	e59f3108 	ldr	r3, [pc, #264]	@ 1034 <malloc+0x160>
     f28:	e5933000 	ldr	r3, [r3]
     f2c:	e59f2104 	ldr	r2, [pc, #260]	@ 1038 <malloc+0x164>
     f30:	e5823000 	str	r3, [r2]
     f34:	e59f30fc 	ldr	r3, [pc, #252]	@ 1038 <malloc+0x164>
     f38:	e3a02000 	mov	r2, #0
     f3c:	e5832004 	str	r2, [r3, #4]
     f40:	e51b300c 	ldr	r3, [fp, #-12]
     f44:	e5933000 	ldr	r3, [r3]
     f48:	e50b3008 	str	r3, [fp, #-8]
     f4c:	e51b3008 	ldr	r3, [fp, #-8]
     f50:	e5933004 	ldr	r3, [r3, #4]
     f54:	e51b2010 	ldr	r2, [fp, #-16]
     f58:	e1520003 	cmp	r2, r3
     f5c:	8a00001e 	bhi	fdc <malloc+0x108>
     f60:	e51b3008 	ldr	r3, [fp, #-8]
     f64:	e5933004 	ldr	r3, [r3, #4]
     f68:	e51b2010 	ldr	r2, [fp, #-16]
     f6c:	e1520003 	cmp	r2, r3
     f70:	1a000004 	bne	f88 <malloc+0xb4>
     f74:	e51b3008 	ldr	r3, [fp, #-8]
     f78:	e5932000 	ldr	r2, [r3]
     f7c:	e51b300c 	ldr	r3, [fp, #-12]
     f80:	e5832000 	str	r2, [r3]
     f84:	ea00000e 	b	fc4 <malloc+0xf0>
     f88:	e51b3008 	ldr	r3, [fp, #-8]
     f8c:	e5932004 	ldr	r2, [r3, #4]
     f90:	e51b3010 	ldr	r3, [fp, #-16]
     f94:	e0422003 	sub	r2, r2, r3
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5832004 	str	r2, [r3, #4]
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e1a03183 	lsl	r3, r3, #3
     fac:	e51b2008 	ldr	r2, [fp, #-8]
     fb0:	e0823003 	add	r3, r2, r3
     fb4:	e50b3008 	str	r3, [fp, #-8]
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e51b2010 	ldr	r2, [fp, #-16]
     fc0:	e5832004 	str	r2, [r3, #4]
     fc4:	e59f2068 	ldr	r2, [pc, #104]	@ 1034 <malloc+0x160>
     fc8:	e51b300c 	ldr	r3, [fp, #-12]
     fcc:	e5823000 	str	r3, [r2]
     fd0:	e51b3008 	ldr	r3, [fp, #-8]
     fd4:	e2833008 	add	r3, r3, #8
     fd8:	ea000012 	b	1028 <malloc+0x154>
     fdc:	e59f3050 	ldr	r3, [pc, #80]	@ 1034 <malloc+0x160>
     fe0:	e5933000 	ldr	r3, [r3]
     fe4:	e51b2008 	ldr	r2, [fp, #-8]
     fe8:	e1520003 	cmp	r2, r3
     fec:	1a000007 	bne	1010 <malloc+0x13c>
     ff0:	e51b0010 	ldr	r0, [fp, #-16]
     ff4:	ebffff94 	bl	e4c <morecore>
     ff8:	e50b0008 	str	r0, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e3530000 	cmp	r3, #0
    1004:	1a000001 	bne	1010 <malloc+0x13c>
    1008:	e3a03000 	mov	r3, #0
    100c:	ea000005 	b	1028 <malloc+0x154>
    1010:	e51b3008 	ldr	r3, [fp, #-8]
    1014:	e50b300c 	str	r3, [fp, #-12]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933000 	ldr	r3, [r3]
    1020:	e50b3008 	str	r3, [fp, #-8]
    1024:	eaffffc8 	b	f4c <malloc+0x78>
    1028:	e1a00003 	mov	r0, r3
    102c:	e24bd004 	sub	sp, fp, #4
    1030:	e8bd8800 	pop	{fp, pc}
    1034:	000013a4 	.word	0x000013a4
    1038:	0000139c 	.word	0x0000139c

0000103c <__udivsi3>:
    103c:	e2512001 	subs	r2, r1, #1
    1040:	012fff1e 	bxeq	lr
    1044:	3a000036 	bcc	1124 <__udivsi3+0xe8>
    1048:	e1500001 	cmp	r0, r1
    104c:	9a000022 	bls	10dc <__udivsi3+0xa0>
    1050:	e1110002 	tst	r1, r2
    1054:	0a000023 	beq	10e8 <__udivsi3+0xac>
    1058:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    105c:	01a01181 	lsleq	r1, r1, #3
    1060:	03a03008 	moveq	r3, #8
    1064:	13a03001 	movne	r3, #1
    1068:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    106c:	31510000 	cmpcc	r1, r0
    1070:	31a01201 	lslcc	r1, r1, #4
    1074:	31a03203 	lslcc	r3, r3, #4
    1078:	3afffffa 	bcc	1068 <__udivsi3+0x2c>
    107c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1080:	31510000 	cmpcc	r1, r0
    1084:	31a01081 	lslcc	r1, r1, #1
    1088:	31a03083 	lslcc	r3, r3, #1
    108c:	3afffffa 	bcc	107c <__udivsi3+0x40>
    1090:	e3a02000 	mov	r2, #0
    1094:	e1500001 	cmp	r0, r1
    1098:	20400001 	subcs	r0, r0, r1
    109c:	21822003 	orrcs	r2, r2, r3
    10a0:	e15000a1 	cmp	r0, r1, lsr #1
    10a4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10a8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10ac:	e1500121 	cmp	r0, r1, lsr #2
    10b0:	20400121 	subcs	r0, r0, r1, lsr #2
    10b4:	21822123 	orrcs	r2, r2, r3, lsr #2
    10b8:	e15001a1 	cmp	r0, r1, lsr #3
    10bc:	204001a1 	subcs	r0, r0, r1, lsr #3
    10c0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10c4:	e3500000 	cmp	r0, #0
    10c8:	11b03223 	lsrsne	r3, r3, #4
    10cc:	11a01221 	lsrne	r1, r1, #4
    10d0:	1affffef 	bne	1094 <__udivsi3+0x58>
    10d4:	e1a00002 	mov	r0, r2
    10d8:	e12fff1e 	bx	lr
    10dc:	03a00001 	moveq	r0, #1
    10e0:	13a00000 	movne	r0, #0
    10e4:	e12fff1e 	bx	lr
    10e8:	e3510801 	cmp	r1, #65536	@ 0x10000
    10ec:	21a01821 	lsrcs	r1, r1, #16
    10f0:	23a02010 	movcs	r2, #16
    10f4:	33a02000 	movcc	r2, #0
    10f8:	e3510c01 	cmp	r1, #256	@ 0x100
    10fc:	21a01421 	lsrcs	r1, r1, #8
    1100:	22822008 	addcs	r2, r2, #8
    1104:	e3510010 	cmp	r1, #16
    1108:	21a01221 	lsrcs	r1, r1, #4
    110c:	22822004 	addcs	r2, r2, #4
    1110:	e3510004 	cmp	r1, #4
    1114:	82822003 	addhi	r2, r2, #3
    1118:	908220a1 	addls	r2, r2, r1, lsr #1
    111c:	e1a00230 	lsr	r0, r0, r2
    1120:	e12fff1e 	bx	lr
    1124:	e3500000 	cmp	r0, #0
    1128:	13e00000 	mvnne	r0, #0
    112c:	ea000007 	b	1150 <__aeabi_idiv0>

00001130 <__aeabi_uidivmod>:
    1130:	e3510000 	cmp	r1, #0
    1134:	0afffffa 	beq	1124 <__udivsi3+0xe8>
    1138:	e92d4003 	push	{r0, r1, lr}
    113c:	ebffffbe 	bl	103c <__udivsi3>
    1140:	e8bd4006 	pop	{r1, r2, lr}
    1144:	e0030092 	mul	r3, r2, r0
    1148:	e0411003 	sub	r1, r1, r3
    114c:	e12fff1e 	bx	lr

00001150 <__aeabi_idiv0>:
    1150:	e12fff1e 	bx	lr
