
_pause:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd010 	sub	sp, sp, #16
       c:	e50b0010 	str	r0, [fp, #-16]
      10:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      14:	e51b3010 	ldr	r3, [fp, #-16]
      18:	e3530002 	cmp	r3, #2
      1c:	0a000003 	beq	30 <main+0x30>
      20:	e59f104c 	ldr	r1, [pc, #76]	@ 74 <main+0x74>
      24:	e3a00002 	mov	r0, #2
      28:	eb00026b 	bl	9dc <printf>
      2c:	eb000151 	bl	578 <exit>
      30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      34:	e2833004 	add	r3, r3, #4
      38:	e5933000 	ldr	r3, [r3]
      3c:	e1a00003 	mov	r0, r3
      40:	eb000105 	bl	45c <atoi>
      44:	e50b0008 	str	r0, [fp, #-8]
      48:	e51b2008 	ldr	r2, [fp, #-8]
      4c:	e1a03002 	mov	r3, r2
      50:	e1a03103 	lsl	r3, r3, #2
      54:	e0833002 	add	r3, r3, r2
      58:	e1a03083 	lsl	r3, r3, #1
      5c:	e1a00003 	mov	r0, r3
      60:	eb0001e6 	bl	800 <sleep>
      64:	e59f100c 	ldr	r1, [pc, #12]	@ 78 <main+0x78>
      68:	e3a00001 	mov	r0, #1
      6c:	eb00025a 	bl	9dc <printf>
      70:	eb000140 	bl	578 <exit>
      74:	00001098 	.word	0x00001098
      78:	000010b8 	.word	0x000010b8

0000007c <strcpy>:
      7c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      80:	e28db000 	add	fp, sp, #0
      84:	e24dd014 	sub	sp, sp, #20
      88:	e50b0010 	str	r0, [fp, #-16]
      8c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
      90:	e51b3010 	ldr	r3, [fp, #-16]
      94:	e50b3008 	str	r3, [fp, #-8]
      98:	e1a00000 	nop			@ (mov r0, r0)
      9c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
      a0:	e2823001 	add	r3, r2, #1
      a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      a8:	e51b3010 	ldr	r3, [fp, #-16]
      ac:	e2831001 	add	r1, r3, #1
      b0:	e50b1010 	str	r1, [fp, #-16]
      b4:	e5d22000 	ldrb	r2, [r2]
      b8:	e5c32000 	strb	r2, [r3]
      bc:	e5d33000 	ldrb	r3, [r3]
      c0:	e3530000 	cmp	r3, #0
      c4:	1afffff4 	bne	9c <strcpy+0x20>
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e1a00003 	mov	r0, r3
      d0:	e28bd000 	add	sp, fp, #0
      d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
      d8:	e12fff1e 	bx	lr

000000dc <strcmp>:
      dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
      e0:	e28db000 	add	fp, sp, #0
      e4:	e24dd00c 	sub	sp, sp, #12
      e8:	e50b0008 	str	r0, [fp, #-8]
      ec:	e50b100c 	str	r1, [fp, #-12]
      f0:	ea000005 	b	10c <strcmp+0x30>
      f4:	e51b3008 	ldr	r3, [fp, #-8]
      f8:	e2833001 	add	r3, r3, #1
      fc:	e50b3008 	str	r3, [fp, #-8]
     100:	e51b300c 	ldr	r3, [fp, #-12]
     104:	e2833001 	add	r3, r3, #1
     108:	e50b300c 	str	r3, [fp, #-12]
     10c:	e51b3008 	ldr	r3, [fp, #-8]
     110:	e5d33000 	ldrb	r3, [r3]
     114:	e3530000 	cmp	r3, #0
     118:	0a000005 	beq	134 <strcmp+0x58>
     11c:	e51b3008 	ldr	r3, [fp, #-8]
     120:	e5d32000 	ldrb	r2, [r3]
     124:	e51b300c 	ldr	r3, [fp, #-12]
     128:	e5d33000 	ldrb	r3, [r3]
     12c:	e1520003 	cmp	r2, r3
     130:	0affffef 	beq	f4 <strcmp+0x18>
     134:	e51b3008 	ldr	r3, [fp, #-8]
     138:	e5d33000 	ldrb	r3, [r3]
     13c:	e1a02003 	mov	r2, r3
     140:	e51b300c 	ldr	r3, [fp, #-12]
     144:	e5d33000 	ldrb	r3, [r3]
     148:	e0423003 	sub	r3, r2, r3
     14c:	e1a00003 	mov	r0, r3
     150:	e28bd000 	add	sp, fp, #0
     154:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     158:	e12fff1e 	bx	lr

0000015c <strlen>:
     15c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     160:	e28db000 	add	fp, sp, #0
     164:	e24dd014 	sub	sp, sp, #20
     168:	e50b0010 	str	r0, [fp, #-16]
     16c:	e3a03000 	mov	r3, #0
     170:	e50b3008 	str	r3, [fp, #-8]
     174:	ea000002 	b	184 <strlen+0x28>
     178:	e51b3008 	ldr	r3, [fp, #-8]
     17c:	e2833001 	add	r3, r3, #1
     180:	e50b3008 	str	r3, [fp, #-8]
     184:	e51b3008 	ldr	r3, [fp, #-8]
     188:	e51b2010 	ldr	r2, [fp, #-16]
     18c:	e0823003 	add	r3, r2, r3
     190:	e5d33000 	ldrb	r3, [r3]
     194:	e3530000 	cmp	r3, #0
     198:	1afffff6 	bne	178 <strlen+0x1c>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a00003 	mov	r0, r3
     1a4:	e28bd000 	add	sp, fp, #0
     1a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1ac:	e12fff1e 	bx	lr

000001b0 <memset>:
     1b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1b4:	e28db000 	add	fp, sp, #0
     1b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     1bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     1c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     1c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     1c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1cc:	e50b3008 	str	r3, [fp, #-8]
     1d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1d4:	e54b300d 	strb	r3, [fp, #-13]
     1d8:	e55b200d 	ldrb	r2, [fp, #-13]
     1dc:	e1a03002 	mov	r3, r2
     1e0:	e1a03403 	lsl	r3, r3, #8
     1e4:	e0833002 	add	r3, r3, r2
     1e8:	e1a03803 	lsl	r3, r3, #16
     1ec:	e1a02003 	mov	r2, r3
     1f0:	e55b300d 	ldrb	r3, [fp, #-13]
     1f4:	e1a03403 	lsl	r3, r3, #8
     1f8:	e1822003 	orr	r2, r2, r3
     1fc:	e55b300d 	ldrb	r3, [fp, #-13]
     200:	e1823003 	orr	r3, r2, r3
     204:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     208:	ea000008 	b	230 <memset+0x80>
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e55b200d 	ldrb	r2, [fp, #-13]
     214:	e5c32000 	strb	r2, [r3]
     218:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     21c:	e2433001 	sub	r3, r3, #1
     220:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     224:	e51b3008 	ldr	r3, [fp, #-8]
     228:	e2833001 	add	r3, r3, #1
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     234:	e3530000 	cmp	r3, #0
     238:	0a000003 	beq	24c <memset+0x9c>
     23c:	e51b3008 	ldr	r3, [fp, #-8]
     240:	e2033003 	and	r3, r3, #3
     244:	e3530000 	cmp	r3, #0
     248:	1affffef 	bne	20c <memset+0x5c>
     24c:	e51b3008 	ldr	r3, [fp, #-8]
     250:	e50b300c 	str	r3, [fp, #-12]
     254:	ea000008 	b	27c <memset+0xcc>
     258:	e51b300c 	ldr	r3, [fp, #-12]
     25c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     260:	e5832000 	str	r2, [r3]
     264:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     268:	e2433004 	sub	r3, r3, #4
     26c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     270:	e51b300c 	ldr	r3, [fp, #-12]
     274:	e2833004 	add	r3, r3, #4
     278:	e50b300c 	str	r3, [fp, #-12]
     27c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     280:	e3530003 	cmp	r3, #3
     284:	8afffff3 	bhi	258 <memset+0xa8>
     288:	e51b300c 	ldr	r3, [fp, #-12]
     28c:	e50b3008 	str	r3, [fp, #-8]
     290:	ea000008 	b	2b8 <memset+0x108>
     294:	e51b3008 	ldr	r3, [fp, #-8]
     298:	e55b200d 	ldrb	r2, [fp, #-13]
     29c:	e5c32000 	strb	r2, [r3]
     2a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2a4:	e2433001 	sub	r3, r3, #1
     2a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e2833001 	add	r3, r3, #1
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     2bc:	e3530000 	cmp	r3, #0
     2c0:	1afffff3 	bne	294 <memset+0xe4>
     2c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2c8:	e1a00003 	mov	r0, r3
     2cc:	e28bd000 	add	sp, fp, #0
     2d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2d4:	e12fff1e 	bx	lr

000002d8 <strchr>:
     2d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2dc:	e28db000 	add	fp, sp, #0
     2e0:	e24dd00c 	sub	sp, sp, #12
     2e4:	e50b0008 	str	r0, [fp, #-8]
     2e8:	e1a03001 	mov	r3, r1
     2ec:	e54b3009 	strb	r3, [fp, #-9]
     2f0:	ea000009 	b	31c <strchr+0x44>
     2f4:	e51b3008 	ldr	r3, [fp, #-8]
     2f8:	e5d33000 	ldrb	r3, [r3]
     2fc:	e55b2009 	ldrb	r2, [fp, #-9]
     300:	e1520003 	cmp	r2, r3
     304:	1a000001 	bne	310 <strchr+0x38>
     308:	e51b3008 	ldr	r3, [fp, #-8]
     30c:	ea000007 	b	330 <strchr+0x58>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833001 	add	r3, r3, #1
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e51b3008 	ldr	r3, [fp, #-8]
     320:	e5d33000 	ldrb	r3, [r3]
     324:	e3530000 	cmp	r3, #0
     328:	1afffff1 	bne	2f4 <strchr+0x1c>
     32c:	e3a03000 	mov	r3, #0
     330:	e1a00003 	mov	r0, r3
     334:	e28bd000 	add	sp, fp, #0
     338:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     33c:	e12fff1e 	bx	lr

00000340 <gets>:
     340:	e92d4800 	push	{fp, lr}
     344:	e28db004 	add	fp, sp, #4
     348:	e24dd018 	sub	sp, sp, #24
     34c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     350:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     354:	e3a03000 	mov	r3, #0
     358:	e50b3008 	str	r3, [fp, #-8]
     35c:	ea000016 	b	3bc <gets+0x7c>
     360:	e24b300d 	sub	r3, fp, #13
     364:	e3a02001 	mov	r2, #1
     368:	e1a01003 	mov	r1, r3
     36c:	e3a00000 	mov	r0, #0
     370:	eb00009b 	bl	5e4 <read>
     374:	e50b000c 	str	r0, [fp, #-12]
     378:	e51b300c 	ldr	r3, [fp, #-12]
     37c:	e3530000 	cmp	r3, #0
     380:	da000013 	ble	3d4 <gets+0x94>
     384:	e51b3008 	ldr	r3, [fp, #-8]
     388:	e2832001 	add	r2, r3, #1
     38c:	e50b2008 	str	r2, [fp, #-8]
     390:	e1a02003 	mov	r2, r3
     394:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     398:	e0833002 	add	r3, r3, r2
     39c:	e55b200d 	ldrb	r2, [fp, #-13]
     3a0:	e5c32000 	strb	r2, [r3]
     3a4:	e55b300d 	ldrb	r3, [fp, #-13]
     3a8:	e353000a 	cmp	r3, #10
     3ac:	0a000009 	beq	3d8 <gets+0x98>
     3b0:	e55b300d 	ldrb	r3, [fp, #-13]
     3b4:	e353000d 	cmp	r3, #13
     3b8:	0a000006 	beq	3d8 <gets+0x98>
     3bc:	e51b3008 	ldr	r3, [fp, #-8]
     3c0:	e2833001 	add	r3, r3, #1
     3c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     3c8:	e1520003 	cmp	r2, r3
     3cc:	caffffe3 	bgt	360 <gets+0x20>
     3d0:	ea000000 	b	3d8 <gets+0x98>
     3d4:	e1a00000 	nop			@ (mov r0, r0)
     3d8:	e51b3008 	ldr	r3, [fp, #-8]
     3dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     3e0:	e0823003 	add	r3, r2, r3
     3e4:	e3a02000 	mov	r2, #0
     3e8:	e5c32000 	strb	r2, [r3]
     3ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3f0:	e1a00003 	mov	r0, r3
     3f4:	e24bd004 	sub	sp, fp, #4
     3f8:	e8bd8800 	pop	{fp, pc}

000003fc <stat>:
     3fc:	e92d4800 	push	{fp, lr}
     400:	e28db004 	add	fp, sp, #4
     404:	e24dd010 	sub	sp, sp, #16
     408:	e50b0010 	str	r0, [fp, #-16]
     40c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     410:	e3a01000 	mov	r1, #0
     414:	e51b0010 	ldr	r0, [fp, #-16]
     418:	eb00009e 	bl	698 <open>
     41c:	e50b0008 	str	r0, [fp, #-8]
     420:	e51b3008 	ldr	r3, [fp, #-8]
     424:	e3530000 	cmp	r3, #0
     428:	aa000001 	bge	434 <stat+0x38>
     42c:	e3e03000 	mvn	r3, #0
     430:	ea000006 	b	450 <stat+0x54>
     434:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     438:	e51b0008 	ldr	r0, [fp, #-8]
     43c:	eb0000b0 	bl	704 <fstat>
     440:	e50b000c 	str	r0, [fp, #-12]
     444:	e51b0008 	ldr	r0, [fp, #-8]
     448:	eb000077 	bl	62c <close>
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e1a00003 	mov	r0, r3
     454:	e24bd004 	sub	sp, fp, #4
     458:	e8bd8800 	pop	{fp, pc}

0000045c <atoi>:
     45c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     460:	e28db000 	add	fp, sp, #0
     464:	e24dd014 	sub	sp, sp, #20
     468:	e50b0010 	str	r0, [fp, #-16]
     46c:	e3a03000 	mov	r3, #0
     470:	e50b3008 	str	r3, [fp, #-8]
     474:	ea00000c 	b	4ac <atoi+0x50>
     478:	e51b2008 	ldr	r2, [fp, #-8]
     47c:	e1a03002 	mov	r3, r2
     480:	e1a03103 	lsl	r3, r3, #2
     484:	e0833002 	add	r3, r3, r2
     488:	e1a03083 	lsl	r3, r3, #1
     48c:	e1a01003 	mov	r1, r3
     490:	e51b3010 	ldr	r3, [fp, #-16]
     494:	e2832001 	add	r2, r3, #1
     498:	e50b2010 	str	r2, [fp, #-16]
     49c:	e5d33000 	ldrb	r3, [r3]
     4a0:	e0813003 	add	r3, r1, r3
     4a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3010 	ldr	r3, [fp, #-16]
     4b0:	e5d33000 	ldrb	r3, [r3]
     4b4:	e353002f 	cmp	r3, #47	@ 0x2f
     4b8:	9a000003 	bls	4cc <atoi+0x70>
     4bc:	e51b3010 	ldr	r3, [fp, #-16]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e3530039 	cmp	r3, #57	@ 0x39
     4c8:	9affffea 	bls	478 <atoi+0x1c>
     4cc:	e51b3008 	ldr	r3, [fp, #-8]
     4d0:	e1a00003 	mov	r0, r3
     4d4:	e28bd000 	add	sp, fp, #0
     4d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4dc:	e12fff1e 	bx	lr

000004e0 <memmove>:
     4e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4e4:	e28db000 	add	fp, sp, #0
     4e8:	e24dd01c 	sub	sp, sp, #28
     4ec:	e50b0010 	str	r0, [fp, #-16]
     4f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4f8:	e51b3010 	ldr	r3, [fp, #-16]
     4fc:	e50b3008 	str	r3, [fp, #-8]
     500:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     504:	e50b300c 	str	r3, [fp, #-12]
     508:	ea000007 	b	52c <memmove+0x4c>
     50c:	e51b200c 	ldr	r2, [fp, #-12]
     510:	e2823001 	add	r3, r2, #1
     514:	e50b300c 	str	r3, [fp, #-12]
     518:	e51b3008 	ldr	r3, [fp, #-8]
     51c:	e2831001 	add	r1, r3, #1
     520:	e50b1008 	str	r1, [fp, #-8]
     524:	e5d22000 	ldrb	r2, [r2]
     528:	e5c32000 	strb	r2, [r3]
     52c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     530:	e2432001 	sub	r2, r3, #1
     534:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     538:	e3530000 	cmp	r3, #0
     53c:	cafffff2 	bgt	50c <memmove+0x2c>
     540:	e51b3010 	ldr	r3, [fp, #-16]
     544:	e1a00003 	mov	r0, r3
     548:	e28bd000 	add	sp, fp, #0
     54c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     550:	e12fff1e 	bx	lr

00000554 <fork>:
     554:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     558:	e1a04003 	mov	r4, r3
     55c:	e1a03002 	mov	r3, r2
     560:	e1a02001 	mov	r2, r1
     564:	e1a01000 	mov	r1, r0
     568:	e3a00001 	mov	r0, #1
     56c:	ef000000 	svc	0x00000000
     570:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     574:	e12fff1e 	bx	lr

00000578 <exit>:
     578:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     57c:	e1a04003 	mov	r4, r3
     580:	e1a03002 	mov	r3, r2
     584:	e1a02001 	mov	r2, r1
     588:	e1a01000 	mov	r1, r0
     58c:	e3a00002 	mov	r0, #2
     590:	ef000000 	svc	0x00000000
     594:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     598:	e12fff1e 	bx	lr

0000059c <wait>:
     59c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5a0:	e1a04003 	mov	r4, r3
     5a4:	e1a03002 	mov	r3, r2
     5a8:	e1a02001 	mov	r2, r1
     5ac:	e1a01000 	mov	r1, r0
     5b0:	e3a00003 	mov	r0, #3
     5b4:	ef000000 	svc	0x00000000
     5b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5bc:	e12fff1e 	bx	lr

000005c0 <pipe>:
     5c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5c4:	e1a04003 	mov	r4, r3
     5c8:	e1a03002 	mov	r3, r2
     5cc:	e1a02001 	mov	r2, r1
     5d0:	e1a01000 	mov	r1, r0
     5d4:	e3a00004 	mov	r0, #4
     5d8:	ef000000 	svc	0x00000000
     5dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     5e0:	e12fff1e 	bx	lr

000005e4 <read>:
     5e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     5e8:	e1a04003 	mov	r4, r3
     5ec:	e1a03002 	mov	r3, r2
     5f0:	e1a02001 	mov	r2, r1
     5f4:	e1a01000 	mov	r1, r0
     5f8:	e3a00005 	mov	r0, #5
     5fc:	ef000000 	svc	0x00000000
     600:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     604:	e12fff1e 	bx	lr

00000608 <write>:
     608:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     60c:	e1a04003 	mov	r4, r3
     610:	e1a03002 	mov	r3, r2
     614:	e1a02001 	mov	r2, r1
     618:	e1a01000 	mov	r1, r0
     61c:	e3a00010 	mov	r0, #16
     620:	ef000000 	svc	0x00000000
     624:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     628:	e12fff1e 	bx	lr

0000062c <close>:
     62c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     630:	e1a04003 	mov	r4, r3
     634:	e1a03002 	mov	r3, r2
     638:	e1a02001 	mov	r2, r1
     63c:	e1a01000 	mov	r1, r0
     640:	e3a00015 	mov	r0, #21
     644:	ef000000 	svc	0x00000000
     648:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     64c:	e12fff1e 	bx	lr

00000650 <kill>:
     650:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     654:	e1a04003 	mov	r4, r3
     658:	e1a03002 	mov	r3, r2
     65c:	e1a02001 	mov	r2, r1
     660:	e1a01000 	mov	r1, r0
     664:	e3a00006 	mov	r0, #6
     668:	ef000000 	svc	0x00000000
     66c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     670:	e12fff1e 	bx	lr

00000674 <exec>:
     674:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     678:	e1a04003 	mov	r4, r3
     67c:	e1a03002 	mov	r3, r2
     680:	e1a02001 	mov	r2, r1
     684:	e1a01000 	mov	r1, r0
     688:	e3a00007 	mov	r0, #7
     68c:	ef000000 	svc	0x00000000
     690:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     694:	e12fff1e 	bx	lr

00000698 <open>:
     698:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     69c:	e1a04003 	mov	r4, r3
     6a0:	e1a03002 	mov	r3, r2
     6a4:	e1a02001 	mov	r2, r1
     6a8:	e1a01000 	mov	r1, r0
     6ac:	e3a0000f 	mov	r0, #15
     6b0:	ef000000 	svc	0x00000000
     6b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6b8:	e12fff1e 	bx	lr

000006bc <mknod>:
     6bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c0:	e1a04003 	mov	r4, r3
     6c4:	e1a03002 	mov	r3, r2
     6c8:	e1a02001 	mov	r2, r1
     6cc:	e1a01000 	mov	r1, r0
     6d0:	e3a00011 	mov	r0, #17
     6d4:	ef000000 	svc	0x00000000
     6d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6dc:	e12fff1e 	bx	lr

000006e0 <unlink>:
     6e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e4:	e1a04003 	mov	r4, r3
     6e8:	e1a03002 	mov	r3, r2
     6ec:	e1a02001 	mov	r2, r1
     6f0:	e1a01000 	mov	r1, r0
     6f4:	e3a00012 	mov	r0, #18
     6f8:	ef000000 	svc	0x00000000
     6fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     700:	e12fff1e 	bx	lr

00000704 <fstat>:
     704:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     708:	e1a04003 	mov	r4, r3
     70c:	e1a03002 	mov	r3, r2
     710:	e1a02001 	mov	r2, r1
     714:	e1a01000 	mov	r1, r0
     718:	e3a00008 	mov	r0, #8
     71c:	ef000000 	svc	0x00000000
     720:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     724:	e12fff1e 	bx	lr

00000728 <link>:
     728:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     72c:	e1a04003 	mov	r4, r3
     730:	e1a03002 	mov	r3, r2
     734:	e1a02001 	mov	r2, r1
     738:	e1a01000 	mov	r1, r0
     73c:	e3a00013 	mov	r0, #19
     740:	ef000000 	svc	0x00000000
     744:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     748:	e12fff1e 	bx	lr

0000074c <mkdir>:
     74c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     750:	e1a04003 	mov	r4, r3
     754:	e1a03002 	mov	r3, r2
     758:	e1a02001 	mov	r2, r1
     75c:	e1a01000 	mov	r1, r0
     760:	e3a00014 	mov	r0, #20
     764:	ef000000 	svc	0x00000000
     768:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <chdir>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00009 	mov	r0, #9
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <dup>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a0000a 	mov	r0, #10
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <getpid>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a0000b 	mov	r0, #11
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <sbrk>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a0000c 	mov	r0, #12
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <sleep>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a0000d 	mov	r0, #13
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <uptime>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a0000e 	mov	r0, #14
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <ps>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00016 	mov	r0, #22
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <putc>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd008 	sub	sp, sp, #8
     878:	e50b0008 	str	r0, [fp, #-8]
     87c:	e1a03001 	mov	r3, r1
     880:	e54b3009 	strb	r3, [fp, #-9]
     884:	e24b3009 	sub	r3, fp, #9
     888:	e3a02001 	mov	r2, #1
     88c:	e1a01003 	mov	r1, r3
     890:	e51b0008 	ldr	r0, [fp, #-8]
     894:	ebffff5b 	bl	608 <write>
     898:	e1a00000 	nop			@ (mov r0, r0)
     89c:	e24bd004 	sub	sp, fp, #4
     8a0:	e8bd8800 	pop	{fp, pc}

000008a4 <printint>:
     8a4:	e92d4800 	push	{fp, lr}
     8a8:	e28db004 	add	fp, sp, #4
     8ac:	e24dd030 	sub	sp, sp, #48	@ 0x30
     8b0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     8b4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     8b8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     8bc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     8c0:	e3a03000 	mov	r3, #0
     8c4:	e50b300c 	str	r3, [fp, #-12]
     8c8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     8cc:	e3530000 	cmp	r3, #0
     8d0:	0a000008 	beq	8f8 <printint+0x54>
     8d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8d8:	e3530000 	cmp	r3, #0
     8dc:	aa000005 	bge	8f8 <printint+0x54>
     8e0:	e3a03001 	mov	r3, #1
     8e4:	e50b300c 	str	r3, [fp, #-12]
     8e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8ec:	e2633000 	rsb	r3, r3, #0
     8f0:	e50b3010 	str	r3, [fp, #-16]
     8f4:	ea000001 	b	900 <printint+0x5c>
     8f8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     8fc:	e50b3010 	str	r3, [fp, #-16]
     900:	e3a03000 	mov	r3, #0
     904:	e50b3008 	str	r3, [fp, #-8]
     908:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     90c:	e51b3010 	ldr	r3, [fp, #-16]
     910:	e1a01002 	mov	r1, r2
     914:	e1a00003 	mov	r0, r3
     918:	eb0001d5 	bl	1074 <__aeabi_uidivmod>
     91c:	e1a03001 	mov	r3, r1
     920:	e1a01003 	mov	r1, r3
     924:	e51b3008 	ldr	r3, [fp, #-8]
     928:	e2832001 	add	r2, r3, #1
     92c:	e50b2008 	str	r2, [fp, #-8]
     930:	e59f20a0 	ldr	r2, [pc, #160]	@ 9d8 <printint+0x134>
     934:	e7d22001 	ldrb	r2, [r2, r1]
     938:	e2433004 	sub	r3, r3, #4
     93c:	e083300b 	add	r3, r3, fp
     940:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     944:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     948:	e1a01003 	mov	r1, r3
     94c:	e51b0010 	ldr	r0, [fp, #-16]
     950:	eb00018a 	bl	f80 <__udivsi3>
     954:	e1a03000 	mov	r3, r0
     958:	e50b3010 	str	r3, [fp, #-16]
     95c:	e51b3010 	ldr	r3, [fp, #-16]
     960:	e3530000 	cmp	r3, #0
     964:	1affffe7 	bne	908 <printint+0x64>
     968:	e51b300c 	ldr	r3, [fp, #-12]
     96c:	e3530000 	cmp	r3, #0
     970:	0a00000e 	beq	9b0 <printint+0x10c>
     974:	e51b3008 	ldr	r3, [fp, #-8]
     978:	e2832001 	add	r2, r3, #1
     97c:	e50b2008 	str	r2, [fp, #-8]
     980:	e2433004 	sub	r3, r3, #4
     984:	e083300b 	add	r3, r3, fp
     988:	e3a0202d 	mov	r2, #45	@ 0x2d
     98c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     990:	ea000006 	b	9b0 <printint+0x10c>
     994:	e24b2020 	sub	r2, fp, #32
     998:	e51b3008 	ldr	r3, [fp, #-8]
     99c:	e0823003 	add	r3, r2, r3
     9a0:	e5d33000 	ldrb	r3, [r3]
     9a4:	e1a01003 	mov	r1, r3
     9a8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     9ac:	ebffffae 	bl	86c <putc>
     9b0:	e51b3008 	ldr	r3, [fp, #-8]
     9b4:	e2433001 	sub	r3, r3, #1
     9b8:	e50b3008 	str	r3, [fp, #-8]
     9bc:	e51b3008 	ldr	r3, [fp, #-8]
     9c0:	e3530000 	cmp	r3, #0
     9c4:	aafffff2 	bge	994 <printint+0xf0>
     9c8:	e1a00000 	nop			@ (mov r0, r0)
     9cc:	e1a00000 	nop			@ (mov r0, r0)
     9d0:	e24bd004 	sub	sp, fp, #4
     9d4:	e8bd8800 	pop	{fp, pc}
     9d8:	000010c4 	.word	0x000010c4

000009dc <printf>:
     9dc:	e92d000e 	push	{r1, r2, r3}
     9e0:	e92d4800 	push	{fp, lr}
     9e4:	e28db004 	add	fp, sp, #4
     9e8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     9ec:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     9f0:	e3a03000 	mov	r3, #0
     9f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9f8:	e28b3008 	add	r3, fp, #8
     9fc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b3010 	str	r3, [fp, #-16]
     a08:	ea000074 	b	be0 <printf+0x204>
     a0c:	e59b2004 	ldr	r2, [fp, #4]
     a10:	e51b3010 	ldr	r3, [fp, #-16]
     a14:	e0823003 	add	r3, r2, r3
     a18:	e5d33000 	ldrb	r3, [r3]
     a1c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     a20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a24:	e3530000 	cmp	r3, #0
     a28:	1a00000b 	bne	a5c <printf+0x80>
     a2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a30:	e3530025 	cmp	r3, #37	@ 0x25
     a34:	1a000002 	bne	a44 <printf+0x68>
     a38:	e3a03025 	mov	r3, #37	@ 0x25
     a3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     a40:	ea000063 	b	bd4 <printf+0x1f8>
     a44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a48:	e6ef3073 	uxtb	r3, r3
     a4c:	e1a01003 	mov	r1, r3
     a50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a54:	ebffff84 	bl	86c <putc>
     a58:	ea00005d 	b	bd4 <printf+0x1f8>
     a5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     a60:	e3530025 	cmp	r3, #37	@ 0x25
     a64:	1a00005a 	bne	bd4 <printf+0x1f8>
     a68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     a6c:	e3530064 	cmp	r3, #100	@ 0x64
     a70:	1a00000a 	bne	aa0 <printf+0xc4>
     a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a78:	e5933000 	ldr	r3, [r3]
     a7c:	e1a01003 	mov	r1, r3
     a80:	e3a03001 	mov	r3, #1
     a84:	e3a0200a 	mov	r2, #10
     a88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     a8c:	ebffff84 	bl	8a4 <printint>
     a90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     a94:	e2833004 	add	r3, r3, #4
     a98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     a9c:	ea00004a 	b	bcc <printf+0x1f0>
     aa0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     aa4:	e3530078 	cmp	r3, #120	@ 0x78
     aa8:	0a000002 	beq	ab8 <printf+0xdc>
     aac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ab0:	e3530070 	cmp	r3, #112	@ 0x70
     ab4:	1a00000a 	bne	ae4 <printf+0x108>
     ab8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     abc:	e5933000 	ldr	r3, [r3]
     ac0:	e1a01003 	mov	r1, r3
     ac4:	e3a03000 	mov	r3, #0
     ac8:	e3a02010 	mov	r2, #16
     acc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ad0:	ebffff73 	bl	8a4 <printint>
     ad4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ad8:	e2833004 	add	r3, r3, #4
     adc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ae0:	ea000039 	b	bcc <printf+0x1f0>
     ae4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ae8:	e3530073 	cmp	r3, #115	@ 0x73
     aec:	1a000018 	bne	b54 <printf+0x178>
     af0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     af4:	e5933000 	ldr	r3, [r3]
     af8:	e50b300c 	str	r3, [fp, #-12]
     afc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e2833004 	add	r3, r3, #4
     b04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b08:	e51b300c 	ldr	r3, [fp, #-12]
     b0c:	e3530000 	cmp	r3, #0
     b10:	1a00000a 	bne	b40 <printf+0x164>
     b14:	e59f30f4 	ldr	r3, [pc, #244]	@ c10 <printf+0x234>
     b18:	e50b300c 	str	r3, [fp, #-12]
     b1c:	ea000007 	b	b40 <printf+0x164>
     b20:	e51b300c 	ldr	r3, [fp, #-12]
     b24:	e5d33000 	ldrb	r3, [r3]
     b28:	e1a01003 	mov	r1, r3
     b2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b30:	ebffff4d 	bl	86c <putc>
     b34:	e51b300c 	ldr	r3, [fp, #-12]
     b38:	e2833001 	add	r3, r3, #1
     b3c:	e50b300c 	str	r3, [fp, #-12]
     b40:	e51b300c 	ldr	r3, [fp, #-12]
     b44:	e5d33000 	ldrb	r3, [r3]
     b48:	e3530000 	cmp	r3, #0
     b4c:	1afffff3 	bne	b20 <printf+0x144>
     b50:	ea00001d 	b	bcc <printf+0x1f0>
     b54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b58:	e3530063 	cmp	r3, #99	@ 0x63
     b5c:	1a000009 	bne	b88 <printf+0x1ac>
     b60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b64:	e5933000 	ldr	r3, [r3]
     b68:	e6ef3073 	uxtb	r3, r3
     b6c:	e1a01003 	mov	r1, r3
     b70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b74:	ebffff3c 	bl	86c <putc>
     b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b7c:	e2833004 	add	r3, r3, #4
     b80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b84:	ea000010 	b	bcc <printf+0x1f0>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e3530025 	cmp	r3, #37	@ 0x25
     b90:	1a000005 	bne	bac <printf+0x1d0>
     b94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b98:	e6ef3073 	uxtb	r3, r3
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ba4:	ebffff30 	bl	86c <putc>
     ba8:	ea000007 	b	bcc <printf+0x1f0>
     bac:	e3a01025 	mov	r1, #37	@ 0x25
     bb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bb4:	ebffff2c 	bl	86c <putc>
     bb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bbc:	e6ef3073 	uxtb	r3, r3
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bc8:	ebffff27 	bl	86c <putc>
     bcc:	e3a03000 	mov	r3, #0
     bd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     bd4:	e51b3010 	ldr	r3, [fp, #-16]
     bd8:	e2833001 	add	r3, r3, #1
     bdc:	e50b3010 	str	r3, [fp, #-16]
     be0:	e59b2004 	ldr	r2, [fp, #4]
     be4:	e51b3010 	ldr	r3, [fp, #-16]
     be8:	e0823003 	add	r3, r2, r3
     bec:	e5d33000 	ldrb	r3, [r3]
     bf0:	e3530000 	cmp	r3, #0
     bf4:	1affff84 	bne	a0c <printf+0x30>
     bf8:	e1a00000 	nop			@ (mov r0, r0)
     bfc:	e1a00000 	nop			@ (mov r0, r0)
     c00:	e24bd004 	sub	sp, fp, #4
     c04:	e8bd4800 	pop	{fp, lr}
     c08:	e28dd00c 	add	sp, sp, #12
     c0c:	e12fff1e 	bx	lr
     c10:	000010bc 	.word	0x000010bc

00000c14 <free>:
     c14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     c18:	e28db000 	add	fp, sp, #0
     c1c:	e24dd014 	sub	sp, sp, #20
     c20:	e50b0010 	str	r0, [fp, #-16]
     c24:	e51b3010 	ldr	r3, [fp, #-16]
     c28:	e2433008 	sub	r3, r3, #8
     c2c:	e50b300c 	str	r3, [fp, #-12]
     c30:	e59f3154 	ldr	r3, [pc, #340]	@ d8c <free+0x178>
     c34:	e5933000 	ldr	r3, [r3]
     c38:	e50b3008 	str	r3, [fp, #-8]
     c3c:	ea000010 	b	c84 <free+0x70>
     c40:	e51b3008 	ldr	r3, [fp, #-8]
     c44:	e5933000 	ldr	r3, [r3]
     c48:	e51b2008 	ldr	r2, [fp, #-8]
     c4c:	e1520003 	cmp	r2, r3
     c50:	3a000008 	bcc	c78 <free+0x64>
     c54:	e51b200c 	ldr	r2, [fp, #-12]
     c58:	e51b3008 	ldr	r3, [fp, #-8]
     c5c:	e1520003 	cmp	r2, r3
     c60:	8a000010 	bhi	ca8 <free+0x94>
     c64:	e51b3008 	ldr	r3, [fp, #-8]
     c68:	e5933000 	ldr	r3, [r3]
     c6c:	e51b200c 	ldr	r2, [fp, #-12]
     c70:	e1520003 	cmp	r2, r3
     c74:	3a00000b 	bcc	ca8 <free+0x94>
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e5933000 	ldr	r3, [r3]
     c80:	e50b3008 	str	r3, [fp, #-8]
     c84:	e51b200c 	ldr	r2, [fp, #-12]
     c88:	e51b3008 	ldr	r3, [fp, #-8]
     c8c:	e1520003 	cmp	r2, r3
     c90:	9affffea 	bls	c40 <free+0x2c>
     c94:	e51b3008 	ldr	r3, [fp, #-8]
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e51b200c 	ldr	r2, [fp, #-12]
     ca0:	e1520003 	cmp	r2, r3
     ca4:	2affffe5 	bcs	c40 <free+0x2c>
     ca8:	e51b300c 	ldr	r3, [fp, #-12]
     cac:	e5933004 	ldr	r3, [r3, #4]
     cb0:	e1a03183 	lsl	r3, r3, #3
     cb4:	e51b200c 	ldr	r2, [fp, #-12]
     cb8:	e0822003 	add	r2, r2, r3
     cbc:	e51b3008 	ldr	r3, [fp, #-8]
     cc0:	e5933000 	ldr	r3, [r3]
     cc4:	e1520003 	cmp	r2, r3
     cc8:	1a00000d 	bne	d04 <free+0xf0>
     ccc:	e51b300c 	ldr	r3, [fp, #-12]
     cd0:	e5932004 	ldr	r2, [r3, #4]
     cd4:	e51b3008 	ldr	r3, [fp, #-8]
     cd8:	e5933000 	ldr	r3, [r3]
     cdc:	e5933004 	ldr	r3, [r3, #4]
     ce0:	e0822003 	add	r2, r2, r3
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e5832004 	str	r2, [r3, #4]
     cec:	e51b3008 	ldr	r3, [fp, #-8]
     cf0:	e5933000 	ldr	r3, [r3]
     cf4:	e5932000 	ldr	r2, [r3]
     cf8:	e51b300c 	ldr	r3, [fp, #-12]
     cfc:	e5832000 	str	r2, [r3]
     d00:	ea000003 	b	d14 <free+0x100>
     d04:	e51b3008 	ldr	r3, [fp, #-8]
     d08:	e5932000 	ldr	r2, [r3]
     d0c:	e51b300c 	ldr	r3, [fp, #-12]
     d10:	e5832000 	str	r2, [r3]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e5933004 	ldr	r3, [r3, #4]
     d1c:	e1a03183 	lsl	r3, r3, #3
     d20:	e51b2008 	ldr	r2, [fp, #-8]
     d24:	e0823003 	add	r3, r2, r3
     d28:	e51b200c 	ldr	r2, [fp, #-12]
     d2c:	e1520003 	cmp	r2, r3
     d30:	1a00000b 	bne	d64 <free+0x150>
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e5932004 	ldr	r2, [r3, #4]
     d3c:	e51b300c 	ldr	r3, [fp, #-12]
     d40:	e5933004 	ldr	r3, [r3, #4]
     d44:	e0822003 	add	r2, r2, r3
     d48:	e51b3008 	ldr	r3, [fp, #-8]
     d4c:	e5832004 	str	r2, [r3, #4]
     d50:	e51b300c 	ldr	r3, [fp, #-12]
     d54:	e5932000 	ldr	r2, [r3]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e5832000 	str	r2, [r3]
     d60:	ea000002 	b	d70 <free+0x15c>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e51b200c 	ldr	r2, [fp, #-12]
     d6c:	e5832000 	str	r2, [r3]
     d70:	e59f2014 	ldr	r2, [pc, #20]	@ d8c <free+0x178>
     d74:	e51b3008 	ldr	r3, [fp, #-8]
     d78:	e5823000 	str	r3, [r2]
     d7c:	e1a00000 	nop			@ (mov r0, r0)
     d80:	e28bd000 	add	sp, fp, #0
     d84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     d88:	e12fff1e 	bx	lr
     d8c:	000010e0 	.word	0x000010e0

00000d90 <morecore>:
     d90:	e92d4800 	push	{fp, lr}
     d94:	e28db004 	add	fp, sp, #4
     d98:	e24dd010 	sub	sp, sp, #16
     d9c:	e50b0010 	str	r0, [fp, #-16]
     da0:	e51b3010 	ldr	r3, [fp, #-16]
     da4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     da8:	2a000001 	bcs	db4 <morecore+0x24>
     dac:	e3a03a01 	mov	r3, #4096	@ 0x1000
     db0:	e50b3010 	str	r3, [fp, #-16]
     db4:	e51b3010 	ldr	r3, [fp, #-16]
     db8:	e1a03183 	lsl	r3, r3, #3
     dbc:	e1a00003 	mov	r0, r3
     dc0:	ebfffe85 	bl	7dc <sbrk>
     dc4:	e50b0008 	str	r0, [fp, #-8]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e3730001 	cmn	r3, #1
     dd0:	1a000001 	bne	ddc <morecore+0x4c>
     dd4:	e3a03000 	mov	r3, #0
     dd8:	ea00000a 	b	e08 <morecore+0x78>
     ddc:	e51b3008 	ldr	r3, [fp, #-8]
     de0:	e50b300c 	str	r3, [fp, #-12]
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e51b2010 	ldr	r2, [fp, #-16]
     dec:	e5832004 	str	r2, [r3, #4]
     df0:	e51b300c 	ldr	r3, [fp, #-12]
     df4:	e2833008 	add	r3, r3, #8
     df8:	e1a00003 	mov	r0, r3
     dfc:	ebffff84 	bl	c14 <free>
     e00:	e59f300c 	ldr	r3, [pc, #12]	@ e14 <morecore+0x84>
     e04:	e5933000 	ldr	r3, [r3]
     e08:	e1a00003 	mov	r0, r3
     e0c:	e24bd004 	sub	sp, fp, #4
     e10:	e8bd8800 	pop	{fp, pc}
     e14:	000010e0 	.word	0x000010e0

00000e18 <malloc>:
     e18:	e92d4800 	push	{fp, lr}
     e1c:	e28db004 	add	fp, sp, #4
     e20:	e24dd018 	sub	sp, sp, #24
     e24:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     e28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e2c:	e2833007 	add	r3, r3, #7
     e30:	e1a031a3 	lsr	r3, r3, #3
     e34:	e2833001 	add	r3, r3, #1
     e38:	e50b3010 	str	r3, [fp, #-16]
     e3c:	e59f3134 	ldr	r3, [pc, #308]	@ f78 <malloc+0x160>
     e40:	e5933000 	ldr	r3, [r3]
     e44:	e50b300c 	str	r3, [fp, #-12]
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e3530000 	cmp	r3, #0
     e50:	1a00000b 	bne	e84 <malloc+0x6c>
     e54:	e59f3120 	ldr	r3, [pc, #288]	@ f7c <malloc+0x164>
     e58:	e50b300c 	str	r3, [fp, #-12]
     e5c:	e59f2114 	ldr	r2, [pc, #276]	@ f78 <malloc+0x160>
     e60:	e51b300c 	ldr	r3, [fp, #-12]
     e64:	e5823000 	str	r3, [r2]
     e68:	e59f3108 	ldr	r3, [pc, #264]	@ f78 <malloc+0x160>
     e6c:	e5933000 	ldr	r3, [r3]
     e70:	e59f2104 	ldr	r2, [pc, #260]	@ f7c <malloc+0x164>
     e74:	e5823000 	str	r3, [r2]
     e78:	e59f30fc 	ldr	r3, [pc, #252]	@ f7c <malloc+0x164>
     e7c:	e3a02000 	mov	r2, #0
     e80:	e5832004 	str	r2, [r3, #4]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e5933000 	ldr	r3, [r3]
     e8c:	e50b3008 	str	r3, [fp, #-8]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933004 	ldr	r3, [r3, #4]
     e98:	e51b2010 	ldr	r2, [fp, #-16]
     e9c:	e1520003 	cmp	r2, r3
     ea0:	8a00001e 	bhi	f20 <malloc+0x108>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933004 	ldr	r3, [r3, #4]
     eac:	e51b2010 	ldr	r2, [fp, #-16]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	1a000004 	bne	ecc <malloc+0xb4>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5932000 	ldr	r2, [r3]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e5832000 	str	r2, [r3]
     ec8:	ea00000e 	b	f08 <malloc+0xf0>
     ecc:	e51b3008 	ldr	r3, [fp, #-8]
     ed0:	e5932004 	ldr	r2, [r3, #4]
     ed4:	e51b3010 	ldr	r3, [fp, #-16]
     ed8:	e0422003 	sub	r2, r2, r3
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5832004 	str	r2, [r3, #4]
     ee4:	e51b3008 	ldr	r3, [fp, #-8]
     ee8:	e5933004 	ldr	r3, [r3, #4]
     eec:	e1a03183 	lsl	r3, r3, #3
     ef0:	e51b2008 	ldr	r2, [fp, #-8]
     ef4:	e0823003 	add	r3, r2, r3
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e51b2010 	ldr	r2, [fp, #-16]
     f04:	e5832004 	str	r2, [r3, #4]
     f08:	e59f2068 	ldr	r2, [pc, #104]	@ f78 <malloc+0x160>
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5823000 	str	r3, [r2]
     f14:	e51b3008 	ldr	r3, [fp, #-8]
     f18:	e2833008 	add	r3, r3, #8
     f1c:	ea000012 	b	f6c <malloc+0x154>
     f20:	e59f3050 	ldr	r3, [pc, #80]	@ f78 <malloc+0x160>
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e51b2008 	ldr	r2, [fp, #-8]
     f2c:	e1520003 	cmp	r2, r3
     f30:	1a000007 	bne	f54 <malloc+0x13c>
     f34:	e51b0010 	ldr	r0, [fp, #-16]
     f38:	ebffff94 	bl	d90 <morecore>
     f3c:	e50b0008 	str	r0, [fp, #-8]
     f40:	e51b3008 	ldr	r3, [fp, #-8]
     f44:	e3530000 	cmp	r3, #0
     f48:	1a000001 	bne	f54 <malloc+0x13c>
     f4c:	e3a03000 	mov	r3, #0
     f50:	ea000005 	b	f6c <malloc+0x154>
     f54:	e51b3008 	ldr	r3, [fp, #-8]
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e5933000 	ldr	r3, [r3]
     f64:	e50b3008 	str	r3, [fp, #-8]
     f68:	eaffffc8 	b	e90 <malloc+0x78>
     f6c:	e1a00003 	mov	r0, r3
     f70:	e24bd004 	sub	sp, fp, #4
     f74:	e8bd8800 	pop	{fp, pc}
     f78:	000010e0 	.word	0x000010e0
     f7c:	000010d8 	.word	0x000010d8

00000f80 <__udivsi3>:
     f80:	e2512001 	subs	r2, r1, #1
     f84:	012fff1e 	bxeq	lr
     f88:	3a000036 	bcc	1068 <__udivsi3+0xe8>
     f8c:	e1500001 	cmp	r0, r1
     f90:	9a000022 	bls	1020 <__udivsi3+0xa0>
     f94:	e1110002 	tst	r1, r2
     f98:	0a000023 	beq	102c <__udivsi3+0xac>
     f9c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
     fa0:	01a01181 	lsleq	r1, r1, #3
     fa4:	03a03008 	moveq	r3, #8
     fa8:	13a03001 	movne	r3, #1
     fac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
     fb0:	31510000 	cmpcc	r1, r0
     fb4:	31a01201 	lslcc	r1, r1, #4
     fb8:	31a03203 	lslcc	r3, r3, #4
     fbc:	3afffffa 	bcc	fac <__udivsi3+0x2c>
     fc0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
     fc4:	31510000 	cmpcc	r1, r0
     fc8:	31a01081 	lslcc	r1, r1, #1
     fcc:	31a03083 	lslcc	r3, r3, #1
     fd0:	3afffffa 	bcc	fc0 <__udivsi3+0x40>
     fd4:	e3a02000 	mov	r2, #0
     fd8:	e1500001 	cmp	r0, r1
     fdc:	20400001 	subcs	r0, r0, r1
     fe0:	21822003 	orrcs	r2, r2, r3
     fe4:	e15000a1 	cmp	r0, r1, lsr #1
     fe8:	204000a1 	subcs	r0, r0, r1, lsr #1
     fec:	218220a3 	orrcs	r2, r2, r3, lsr #1
     ff0:	e1500121 	cmp	r0, r1, lsr #2
     ff4:	20400121 	subcs	r0, r0, r1, lsr #2
     ff8:	21822123 	orrcs	r2, r2, r3, lsr #2
     ffc:	e15001a1 	cmp	r0, r1, lsr #3
    1000:	204001a1 	subcs	r0, r0, r1, lsr #3
    1004:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1008:	e3500000 	cmp	r0, #0
    100c:	11b03223 	lsrsne	r3, r3, #4
    1010:	11a01221 	lsrne	r1, r1, #4
    1014:	1affffef 	bne	fd8 <__udivsi3+0x58>
    1018:	e1a00002 	mov	r0, r2
    101c:	e12fff1e 	bx	lr
    1020:	03a00001 	moveq	r0, #1
    1024:	13a00000 	movne	r0, #0
    1028:	e12fff1e 	bx	lr
    102c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1030:	21a01821 	lsrcs	r1, r1, #16
    1034:	23a02010 	movcs	r2, #16
    1038:	33a02000 	movcc	r2, #0
    103c:	e3510c01 	cmp	r1, #256	@ 0x100
    1040:	21a01421 	lsrcs	r1, r1, #8
    1044:	22822008 	addcs	r2, r2, #8
    1048:	e3510010 	cmp	r1, #16
    104c:	21a01221 	lsrcs	r1, r1, #4
    1050:	22822004 	addcs	r2, r2, #4
    1054:	e3510004 	cmp	r1, #4
    1058:	82822003 	addhi	r2, r2, #3
    105c:	908220a1 	addls	r2, r2, r1, lsr #1
    1060:	e1a00230 	lsr	r0, r0, r2
    1064:	e12fff1e 	bx	lr
    1068:	e3500000 	cmp	r0, #0
    106c:	13e00000 	mvnne	r0, #0
    1070:	ea000007 	b	1094 <__aeabi_idiv0>

00001074 <__aeabi_uidivmod>:
    1074:	e3510000 	cmp	r1, #0
    1078:	0afffffa 	beq	1068 <__udivsi3+0xe8>
    107c:	e92d4003 	push	{r0, r1, lr}
    1080:	ebffffbe 	bl	f80 <__udivsi3>
    1084:	e8bd4006 	pop	{r1, r2, lr}
    1088:	e0030092 	mul	r3, r2, r0
    108c:	e0411003 	sub	r1, r1, r3
    1090:	e12fff1e 	bx	lr

00001094 <__aeabi_idiv0>:
    1094:	e12fff1e 	bx	lr
