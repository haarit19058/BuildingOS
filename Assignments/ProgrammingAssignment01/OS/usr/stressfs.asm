
_stressfs:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde22 	sub	sp, sp, #544	@ 0x220
       c:	e50b0220 	str	r0, [fp, #-544]	@ 0xfffffde0
      10:	e50b1224 	str	r1, [fp, #-548]	@ 0xfffffddc
      14:	e59f214c 	ldr	r2, [pc, #332]	@ 168 <main+0x168>
      18:	e24b3018 	sub	r3, fp, #24
      1c:	e8920007 	ldm	r2, {r0, r1, r2}
      20:	e8a30003 	stmia	r3!, {r0, r1}
      24:	e1c320b0 	strh	r2, [r3]
      28:	e59f113c 	ldr	r1, [pc, #316]	@ 16c <main+0x16c>
      2c:	e3a00001 	mov	r0, #1
      30:	eb0002a0 	bl	ab8 <printf>
      34:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      38:	e3a02c02 	mov	r2, #512	@ 0x200
      3c:	e3a01061 	mov	r1, #97	@ 0x61
      40:	e1a00003 	mov	r0, r3
      44:	eb000099 	bl	2b0 <memset>
      48:	e3a03000 	mov	r3, #0
      4c:	e50b3008 	str	r3, [fp, #-8]
      50:	ea000006 	b	70 <main+0x70>
      54:	eb00017e 	bl	654 <fork>
      58:	e1a03000 	mov	r3, r0
      5c:	e3530000 	cmp	r3, #0
      60:	ca000006 	bgt	80 <main+0x80>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e3530003 	cmp	r3, #3
      78:	dafffff5 	ble	54 <main+0x54>
      7c:	ea000000 	b	84 <main+0x84>
      80:	e1a00000 	nop			@ (mov r0, r0)
      84:	e51b2008 	ldr	r2, [fp, #-8]
      88:	e59f10e0 	ldr	r1, [pc, #224]	@ 170 <main+0x170>
      8c:	e3a00001 	mov	r0, #1
      90:	eb000288 	bl	ab8 <printf>
      94:	e55b2010 	ldrb	r2, [fp, #-16]
      98:	e51b3008 	ldr	r3, [fp, #-8]
      9c:	e6ef3073 	uxtb	r3, r3
      a0:	e0823003 	add	r3, r2, r3
      a4:	e6ef3073 	uxtb	r3, r3
      a8:	e54b3010 	strb	r3, [fp, #-16]
      ac:	e24b3018 	sub	r3, fp, #24
      b0:	e59f10bc 	ldr	r1, [pc, #188]	@ 174 <main+0x174>
      b4:	e1a00003 	mov	r0, r3
      b8:	eb0001b6 	bl	798 <open>
      bc:	e50b000c 	str	r0, [fp, #-12]
      c0:	e3a03000 	mov	r3, #0
      c4:	e50b3008 	str	r3, [fp, #-8]
      c8:	ea000007 	b	ec <main+0xec>
      cc:	e24b3f86 	sub	r3, fp, #536	@ 0x218
      d0:	e3a02c02 	mov	r2, #512	@ 0x200
      d4:	e1a01003 	mov	r1, r3
      d8:	e51b000c 	ldr	r0, [fp, #-12]
      dc:	eb000189 	bl	708 <write>
      e0:	e51b3008 	ldr	r3, [fp, #-8]
      e4:	e2833001 	add	r3, r3, #1
      e8:	e50b3008 	str	r3, [fp, #-8]
      ec:	e51b3008 	ldr	r3, [fp, #-8]
      f0:	e3530013 	cmp	r3, #19
      f4:	dafffff4 	ble	cc <main+0xcc>
      f8:	e51b000c 	ldr	r0, [fp, #-12]
      fc:	eb00018a 	bl	72c <close>
     100:	e59f1070 	ldr	r1, [pc, #112]	@ 178 <main+0x178>
     104:	e3a00001 	mov	r0, #1
     108:	eb00026a 	bl	ab8 <printf>
     10c:	e24b3018 	sub	r3, fp, #24
     110:	e3a01000 	mov	r1, #0
     114:	e1a00003 	mov	r0, r3
     118:	eb00019e 	bl	798 <open>
     11c:	e50b000c 	str	r0, [fp, #-12]
     120:	e3a03000 	mov	r3, #0
     124:	e50b3008 	str	r3, [fp, #-8]
     128:	ea000007 	b	14c <main+0x14c>
     12c:	e24b3f86 	sub	r3, fp, #536	@ 0x218
     130:	e3a02c02 	mov	r2, #512	@ 0x200
     134:	e1a01003 	mov	r1, r3
     138:	e51b000c 	ldr	r0, [fp, #-12]
     13c:	eb000168 	bl	6e4 <read>
     140:	e51b3008 	ldr	r3, [fp, #-8]
     144:	e2833001 	add	r3, r3, #1
     148:	e50b3008 	str	r3, [fp, #-8]
     14c:	e51b3008 	ldr	r3, [fp, #-8]
     150:	e3530013 	cmp	r3, #19
     154:	dafffff4 	ble	12c <main+0x12c>
     158:	e51b000c 	ldr	r0, [fp, #-12]
     15c:	eb000172 	bl	72c <close>
     160:	eb00014d 	bl	69c <wait>
     164:	eb000143 	bl	678 <exit>
     168:	0000119c 	.word	0x0000119c
     16c:	00001174 	.word	0x00001174
     170:	00001188 	.word	0x00001188
     174:	00000202 	.word	0x00000202
     178:	00001194 	.word	0x00001194

0000017c <strcpy>:
     17c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     180:	e28db000 	add	fp, sp, #0
     184:	e24dd014 	sub	sp, sp, #20
     188:	e50b0010 	str	r0, [fp, #-16]
     18c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     190:	e51b3010 	ldr	r3, [fp, #-16]
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	e1a00000 	nop			@ (mov r0, r0)
     19c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a0:	e2823001 	add	r3, r2, #1
     1a4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e2831001 	add	r1, r3, #1
     1b0:	e50b1010 	str	r1, [fp, #-16]
     1b4:	e5d22000 	ldrb	r2, [r2]
     1b8:	e5c32000 	strb	r2, [r3]
     1bc:	e5d33000 	ldrb	r3, [r3]
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1afffff4 	bne	19c <strcpy+0x20>
     1c8:	e51b3008 	ldr	r3, [fp, #-8]
     1cc:	e1a00003 	mov	r0, r3
     1d0:	e28bd000 	add	sp, fp, #0
     1d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     1d8:	e12fff1e 	bx	lr

000001dc <strcmp>:
     1dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     1e0:	e28db000 	add	fp, sp, #0
     1e4:	e24dd00c 	sub	sp, sp, #12
     1e8:	e50b0008 	str	r0, [fp, #-8]
     1ec:	e50b100c 	str	r1, [fp, #-12]
     1f0:	ea000005 	b	20c <strcmp+0x30>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e2833001 	add	r3, r3, #1
     1fc:	e50b3008 	str	r3, [fp, #-8]
     200:	e51b300c 	ldr	r3, [fp, #-12]
     204:	e2833001 	add	r3, r3, #1
     208:	e50b300c 	str	r3, [fp, #-12]
     20c:	e51b3008 	ldr	r3, [fp, #-8]
     210:	e5d33000 	ldrb	r3, [r3]
     214:	e3530000 	cmp	r3, #0
     218:	0a000005 	beq	234 <strcmp+0x58>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e5d32000 	ldrb	r2, [r3]
     224:	e51b300c 	ldr	r3, [fp, #-12]
     228:	e5d33000 	ldrb	r3, [r3]
     22c:	e1520003 	cmp	r2, r3
     230:	0affffef 	beq	1f4 <strcmp+0x18>
     234:	e51b3008 	ldr	r3, [fp, #-8]
     238:	e5d33000 	ldrb	r3, [r3]
     23c:	e1a02003 	mov	r2, r3
     240:	e51b300c 	ldr	r3, [fp, #-12]
     244:	e5d33000 	ldrb	r3, [r3]
     248:	e0423003 	sub	r3, r2, r3
     24c:	e1a00003 	mov	r0, r3
     250:	e28bd000 	add	sp, fp, #0
     254:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     258:	e12fff1e 	bx	lr

0000025c <strlen>:
     25c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     260:	e28db000 	add	fp, sp, #0
     264:	e24dd014 	sub	sp, sp, #20
     268:	e50b0010 	str	r0, [fp, #-16]
     26c:	e3a03000 	mov	r3, #0
     270:	e50b3008 	str	r3, [fp, #-8]
     274:	ea000002 	b	284 <strlen+0x28>
     278:	e51b3008 	ldr	r3, [fp, #-8]
     27c:	e2833001 	add	r3, r3, #1
     280:	e50b3008 	str	r3, [fp, #-8]
     284:	e51b3008 	ldr	r3, [fp, #-8]
     288:	e51b2010 	ldr	r2, [fp, #-16]
     28c:	e0823003 	add	r3, r2, r3
     290:	e5d33000 	ldrb	r3, [r3]
     294:	e3530000 	cmp	r3, #0
     298:	1afffff6 	bne	278 <strlen+0x1c>
     29c:	e51b3008 	ldr	r3, [fp, #-8]
     2a0:	e1a00003 	mov	r0, r3
     2a4:	e28bd000 	add	sp, fp, #0
     2a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2ac:	e12fff1e 	bx	lr

000002b0 <memset>:
     2b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2b4:	e28db000 	add	fp, sp, #0
     2b8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     2bc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     2c0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     2c4:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     2c8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     2cc:	e50b3008 	str	r3, [fp, #-8]
     2d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     2d4:	e54b300d 	strb	r3, [fp, #-13]
     2d8:	e55b200d 	ldrb	r2, [fp, #-13]
     2dc:	e1a03002 	mov	r3, r2
     2e0:	e1a03403 	lsl	r3, r3, #8
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e1a03803 	lsl	r3, r3, #16
     2ec:	e1a02003 	mov	r2, r3
     2f0:	e55b300d 	ldrb	r3, [fp, #-13]
     2f4:	e1a03403 	lsl	r3, r3, #8
     2f8:	e1822003 	orr	r2, r2, r3
     2fc:	e55b300d 	ldrb	r3, [fp, #-13]
     300:	e1823003 	orr	r3, r2, r3
     304:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     308:	ea000008 	b	330 <memset+0x80>
     30c:	e51b3008 	ldr	r3, [fp, #-8]
     310:	e55b200d 	ldrb	r2, [fp, #-13]
     314:	e5c32000 	strb	r2, [r3]
     318:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     31c:	e2433001 	sub	r3, r3, #1
     320:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     324:	e51b3008 	ldr	r3, [fp, #-8]
     328:	e2833001 	add	r3, r3, #1
     32c:	e50b3008 	str	r3, [fp, #-8]
     330:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     334:	e3530000 	cmp	r3, #0
     338:	0a000003 	beq	34c <memset+0x9c>
     33c:	e51b3008 	ldr	r3, [fp, #-8]
     340:	e2033003 	and	r3, r3, #3
     344:	e3530000 	cmp	r3, #0
     348:	1affffef 	bne	30c <memset+0x5c>
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e50b300c 	str	r3, [fp, #-12]
     354:	ea000008 	b	37c <memset+0xcc>
     358:	e51b300c 	ldr	r3, [fp, #-12]
     35c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     360:	e5832000 	str	r2, [r3]
     364:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     368:	e2433004 	sub	r3, r3, #4
     36c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     370:	e51b300c 	ldr	r3, [fp, #-12]
     374:	e2833004 	add	r3, r3, #4
     378:	e50b300c 	str	r3, [fp, #-12]
     37c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     380:	e3530003 	cmp	r3, #3
     384:	8afffff3 	bhi	358 <memset+0xa8>
     388:	e51b300c 	ldr	r3, [fp, #-12]
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000008 	b	3b8 <memset+0x108>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e55b200d 	ldrb	r2, [fp, #-13]
     39c:	e5c32000 	strb	r2, [r3]
     3a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3a4:	e2433001 	sub	r3, r3, #1
     3a8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ac:	e51b3008 	ldr	r3, [fp, #-8]
     3b0:	e2833001 	add	r3, r3, #1
     3b4:	e50b3008 	str	r3, [fp, #-8]
     3b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3bc:	e3530000 	cmp	r3, #0
     3c0:	1afffff3 	bne	394 <memset+0xe4>
     3c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3c8:	e1a00003 	mov	r0, r3
     3cc:	e28bd000 	add	sp, fp, #0
     3d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3d4:	e12fff1e 	bx	lr

000003d8 <strchr>:
     3d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3dc:	e28db000 	add	fp, sp, #0
     3e0:	e24dd00c 	sub	sp, sp, #12
     3e4:	e50b0008 	str	r0, [fp, #-8]
     3e8:	e1a03001 	mov	r3, r1
     3ec:	e54b3009 	strb	r3, [fp, #-9]
     3f0:	ea000009 	b	41c <strchr+0x44>
     3f4:	e51b3008 	ldr	r3, [fp, #-8]
     3f8:	e5d33000 	ldrb	r3, [r3]
     3fc:	e55b2009 	ldrb	r2, [fp, #-9]
     400:	e1520003 	cmp	r2, r3
     404:	1a000001 	bne	410 <strchr+0x38>
     408:	e51b3008 	ldr	r3, [fp, #-8]
     40c:	ea000007 	b	430 <strchr+0x58>
     410:	e51b3008 	ldr	r3, [fp, #-8]
     414:	e2833001 	add	r3, r3, #1
     418:	e50b3008 	str	r3, [fp, #-8]
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e5d33000 	ldrb	r3, [r3]
     424:	e3530000 	cmp	r3, #0
     428:	1afffff1 	bne	3f4 <strchr+0x1c>
     42c:	e3a03000 	mov	r3, #0
     430:	e1a00003 	mov	r0, r3
     434:	e28bd000 	add	sp, fp, #0
     438:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     43c:	e12fff1e 	bx	lr

00000440 <gets>:
     440:	e92d4800 	push	{fp, lr}
     444:	e28db004 	add	fp, sp, #4
     448:	e24dd018 	sub	sp, sp, #24
     44c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     450:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     454:	e3a03000 	mov	r3, #0
     458:	e50b3008 	str	r3, [fp, #-8]
     45c:	ea000016 	b	4bc <gets+0x7c>
     460:	e24b300d 	sub	r3, fp, #13
     464:	e3a02001 	mov	r2, #1
     468:	e1a01003 	mov	r1, r3
     46c:	e3a00000 	mov	r0, #0
     470:	eb00009b 	bl	6e4 <read>
     474:	e50b000c 	str	r0, [fp, #-12]
     478:	e51b300c 	ldr	r3, [fp, #-12]
     47c:	e3530000 	cmp	r3, #0
     480:	da000013 	ble	4d4 <gets+0x94>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e2832001 	add	r2, r3, #1
     48c:	e50b2008 	str	r2, [fp, #-8]
     490:	e1a02003 	mov	r2, r3
     494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     498:	e0833002 	add	r3, r3, r2
     49c:	e55b200d 	ldrb	r2, [fp, #-13]
     4a0:	e5c32000 	strb	r2, [r3]
     4a4:	e55b300d 	ldrb	r3, [fp, #-13]
     4a8:	e353000a 	cmp	r3, #10
     4ac:	0a000009 	beq	4d8 <gets+0x98>
     4b0:	e55b300d 	ldrb	r3, [fp, #-13]
     4b4:	e353000d 	cmp	r3, #13
     4b8:	0a000006 	beq	4d8 <gets+0x98>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e2833001 	add	r3, r3, #1
     4c4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     4c8:	e1520003 	cmp	r2, r3
     4cc:	caffffe3 	bgt	460 <gets+0x20>
     4d0:	ea000000 	b	4d8 <gets+0x98>
     4d4:	e1a00000 	nop			@ (mov r0, r0)
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     4e0:	e0823003 	add	r3, r2, r3
     4e4:	e3a02000 	mov	r2, #0
     4e8:	e5c32000 	strb	r2, [r3]
     4ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f0:	e1a00003 	mov	r0, r3
     4f4:	e24bd004 	sub	sp, fp, #4
     4f8:	e8bd8800 	pop	{fp, pc}

000004fc <stat>:
     4fc:	e92d4800 	push	{fp, lr}
     500:	e28db004 	add	fp, sp, #4
     504:	e24dd010 	sub	sp, sp, #16
     508:	e50b0010 	str	r0, [fp, #-16]
     50c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     510:	e3a01000 	mov	r1, #0
     514:	e51b0010 	ldr	r0, [fp, #-16]
     518:	eb00009e 	bl	798 <open>
     51c:	e50b0008 	str	r0, [fp, #-8]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e3530000 	cmp	r3, #0
     528:	aa000001 	bge	534 <stat+0x38>
     52c:	e3e03000 	mvn	r3, #0
     530:	ea000006 	b	550 <stat+0x54>
     534:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     538:	e51b0008 	ldr	r0, [fp, #-8]
     53c:	eb0000b0 	bl	804 <fstat>
     540:	e50b000c 	str	r0, [fp, #-12]
     544:	e51b0008 	ldr	r0, [fp, #-8]
     548:	eb000077 	bl	72c <close>
     54c:	e51b300c 	ldr	r3, [fp, #-12]
     550:	e1a00003 	mov	r0, r3
     554:	e24bd004 	sub	sp, fp, #4
     558:	e8bd8800 	pop	{fp, pc}

0000055c <atoi>:
     55c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     560:	e28db000 	add	fp, sp, #0
     564:	e24dd014 	sub	sp, sp, #20
     568:	e50b0010 	str	r0, [fp, #-16]
     56c:	e3a03000 	mov	r3, #0
     570:	e50b3008 	str	r3, [fp, #-8]
     574:	ea00000c 	b	5ac <atoi+0x50>
     578:	e51b2008 	ldr	r2, [fp, #-8]
     57c:	e1a03002 	mov	r3, r2
     580:	e1a03103 	lsl	r3, r3, #2
     584:	e0833002 	add	r3, r3, r2
     588:	e1a03083 	lsl	r3, r3, #1
     58c:	e1a01003 	mov	r1, r3
     590:	e51b3010 	ldr	r3, [fp, #-16]
     594:	e2832001 	add	r2, r3, #1
     598:	e50b2010 	str	r2, [fp, #-16]
     59c:	e5d33000 	ldrb	r3, [r3]
     5a0:	e0813003 	add	r3, r1, r3
     5a4:	e2433030 	sub	r3, r3, #48	@ 0x30
     5a8:	e50b3008 	str	r3, [fp, #-8]
     5ac:	e51b3010 	ldr	r3, [fp, #-16]
     5b0:	e5d33000 	ldrb	r3, [r3]
     5b4:	e353002f 	cmp	r3, #47	@ 0x2f
     5b8:	9a000003 	bls	5cc <atoi+0x70>
     5bc:	e51b3010 	ldr	r3, [fp, #-16]
     5c0:	e5d33000 	ldrb	r3, [r3]
     5c4:	e3530039 	cmp	r3, #57	@ 0x39
     5c8:	9affffea 	bls	578 <atoi+0x1c>
     5cc:	e51b3008 	ldr	r3, [fp, #-8]
     5d0:	e1a00003 	mov	r0, r3
     5d4:	e28bd000 	add	sp, fp, #0
     5d8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5dc:	e12fff1e 	bx	lr

000005e0 <memmove>:
     5e0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     5e4:	e28db000 	add	fp, sp, #0
     5e8:	e24dd01c 	sub	sp, sp, #28
     5ec:	e50b0010 	str	r0, [fp, #-16]
     5f0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5f4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     5f8:	e51b3010 	ldr	r3, [fp, #-16]
     5fc:	e50b3008 	str	r3, [fp, #-8]
     600:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     604:	e50b300c 	str	r3, [fp, #-12]
     608:	ea000007 	b	62c <memmove+0x4c>
     60c:	e51b200c 	ldr	r2, [fp, #-12]
     610:	e2823001 	add	r3, r2, #1
     614:	e50b300c 	str	r3, [fp, #-12]
     618:	e51b3008 	ldr	r3, [fp, #-8]
     61c:	e2831001 	add	r1, r3, #1
     620:	e50b1008 	str	r1, [fp, #-8]
     624:	e5d22000 	ldrb	r2, [r2]
     628:	e5c32000 	strb	r2, [r3]
     62c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     630:	e2432001 	sub	r2, r3, #1
     634:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     638:	e3530000 	cmp	r3, #0
     63c:	cafffff2 	bgt	60c <memmove+0x2c>
     640:	e51b3010 	ldr	r3, [fp, #-16]
     644:	e1a00003 	mov	r0, r3
     648:	e28bd000 	add	sp, fp, #0
     64c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     650:	e12fff1e 	bx	lr

00000654 <fork>:
     654:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     658:	e1a04003 	mov	r4, r3
     65c:	e1a03002 	mov	r3, r2
     660:	e1a02001 	mov	r2, r1
     664:	e1a01000 	mov	r1, r0
     668:	e3a00001 	mov	r0, #1
     66c:	ef000000 	svc	0x00000000
     670:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     674:	e12fff1e 	bx	lr

00000678 <exit>:
     678:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     67c:	e1a04003 	mov	r4, r3
     680:	e1a03002 	mov	r3, r2
     684:	e1a02001 	mov	r2, r1
     688:	e1a01000 	mov	r1, r0
     68c:	e3a00002 	mov	r0, #2
     690:	ef000000 	svc	0x00000000
     694:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     698:	e12fff1e 	bx	lr

0000069c <wait>:
     69c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6a0:	e1a04003 	mov	r4, r3
     6a4:	e1a03002 	mov	r3, r2
     6a8:	e1a02001 	mov	r2, r1
     6ac:	e1a01000 	mov	r1, r0
     6b0:	e3a00003 	mov	r0, #3
     6b4:	ef000000 	svc	0x00000000
     6b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6bc:	e12fff1e 	bx	lr

000006c0 <pipe>:
     6c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6c4:	e1a04003 	mov	r4, r3
     6c8:	e1a03002 	mov	r3, r2
     6cc:	e1a02001 	mov	r2, r1
     6d0:	e1a01000 	mov	r1, r0
     6d4:	e3a00004 	mov	r0, #4
     6d8:	ef000000 	svc	0x00000000
     6dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     6e0:	e12fff1e 	bx	lr

000006e4 <read>:
     6e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     6e8:	e1a04003 	mov	r4, r3
     6ec:	e1a03002 	mov	r3, r2
     6f0:	e1a02001 	mov	r2, r1
     6f4:	e1a01000 	mov	r1, r0
     6f8:	e3a00005 	mov	r0, #5
     6fc:	ef000000 	svc	0x00000000
     700:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     704:	e12fff1e 	bx	lr

00000708 <write>:
     708:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     70c:	e1a04003 	mov	r4, r3
     710:	e1a03002 	mov	r3, r2
     714:	e1a02001 	mov	r2, r1
     718:	e1a01000 	mov	r1, r0
     71c:	e3a00010 	mov	r0, #16
     720:	ef000000 	svc	0x00000000
     724:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     728:	e12fff1e 	bx	lr

0000072c <close>:
     72c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     730:	e1a04003 	mov	r4, r3
     734:	e1a03002 	mov	r3, r2
     738:	e1a02001 	mov	r2, r1
     73c:	e1a01000 	mov	r1, r0
     740:	e3a00015 	mov	r0, #21
     744:	ef000000 	svc	0x00000000
     748:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     74c:	e12fff1e 	bx	lr

00000750 <kill>:
     750:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     754:	e1a04003 	mov	r4, r3
     758:	e1a03002 	mov	r3, r2
     75c:	e1a02001 	mov	r2, r1
     760:	e1a01000 	mov	r1, r0
     764:	e3a00006 	mov	r0, #6
     768:	ef000000 	svc	0x00000000
     76c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     770:	e12fff1e 	bx	lr

00000774 <exec>:
     774:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     778:	e1a04003 	mov	r4, r3
     77c:	e1a03002 	mov	r3, r2
     780:	e1a02001 	mov	r2, r1
     784:	e1a01000 	mov	r1, r0
     788:	e3a00007 	mov	r0, #7
     78c:	ef000000 	svc	0x00000000
     790:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     794:	e12fff1e 	bx	lr

00000798 <open>:
     798:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     79c:	e1a04003 	mov	r4, r3
     7a0:	e1a03002 	mov	r3, r2
     7a4:	e1a02001 	mov	r2, r1
     7a8:	e1a01000 	mov	r1, r0
     7ac:	e3a0000f 	mov	r0, #15
     7b0:	ef000000 	svc	0x00000000
     7b4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b8:	e12fff1e 	bx	lr

000007bc <mknod>:
     7bc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7c0:	e1a04003 	mov	r4, r3
     7c4:	e1a03002 	mov	r3, r2
     7c8:	e1a02001 	mov	r2, r1
     7cc:	e1a01000 	mov	r1, r0
     7d0:	e3a00011 	mov	r0, #17
     7d4:	ef000000 	svc	0x00000000
     7d8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7dc:	e12fff1e 	bx	lr

000007e0 <unlink>:
     7e0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e4:	e1a04003 	mov	r4, r3
     7e8:	e1a03002 	mov	r3, r2
     7ec:	e1a02001 	mov	r2, r1
     7f0:	e1a01000 	mov	r1, r0
     7f4:	e3a00012 	mov	r0, #18
     7f8:	ef000000 	svc	0x00000000
     7fc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     800:	e12fff1e 	bx	lr

00000804 <fstat>:
     804:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     808:	e1a04003 	mov	r4, r3
     80c:	e1a03002 	mov	r3, r2
     810:	e1a02001 	mov	r2, r1
     814:	e1a01000 	mov	r1, r0
     818:	e3a00008 	mov	r0, #8
     81c:	ef000000 	svc	0x00000000
     820:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     824:	e12fff1e 	bx	lr

00000828 <link>:
     828:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     82c:	e1a04003 	mov	r4, r3
     830:	e1a03002 	mov	r3, r2
     834:	e1a02001 	mov	r2, r1
     838:	e1a01000 	mov	r1, r0
     83c:	e3a00013 	mov	r0, #19
     840:	ef000000 	svc	0x00000000
     844:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     848:	e12fff1e 	bx	lr

0000084c <mkdir>:
     84c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     850:	e1a04003 	mov	r4, r3
     854:	e1a03002 	mov	r3, r2
     858:	e1a02001 	mov	r2, r1
     85c:	e1a01000 	mov	r1, r0
     860:	e3a00014 	mov	r0, #20
     864:	ef000000 	svc	0x00000000
     868:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     86c:	e12fff1e 	bx	lr

00000870 <chdir>:
     870:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     874:	e1a04003 	mov	r4, r3
     878:	e1a03002 	mov	r3, r2
     87c:	e1a02001 	mov	r2, r1
     880:	e1a01000 	mov	r1, r0
     884:	e3a00009 	mov	r0, #9
     888:	ef000000 	svc	0x00000000
     88c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     890:	e12fff1e 	bx	lr

00000894 <dup>:
     894:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     898:	e1a04003 	mov	r4, r3
     89c:	e1a03002 	mov	r3, r2
     8a0:	e1a02001 	mov	r2, r1
     8a4:	e1a01000 	mov	r1, r0
     8a8:	e3a0000a 	mov	r0, #10
     8ac:	ef000000 	svc	0x00000000
     8b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b4:	e12fff1e 	bx	lr

000008b8 <getpid>:
     8b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8bc:	e1a04003 	mov	r4, r3
     8c0:	e1a03002 	mov	r3, r2
     8c4:	e1a02001 	mov	r2, r1
     8c8:	e1a01000 	mov	r1, r0
     8cc:	e3a0000b 	mov	r0, #11
     8d0:	ef000000 	svc	0x00000000
     8d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d8:	e12fff1e 	bx	lr

000008dc <sbrk>:
     8dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8e0:	e1a04003 	mov	r4, r3
     8e4:	e1a03002 	mov	r3, r2
     8e8:	e1a02001 	mov	r2, r1
     8ec:	e1a01000 	mov	r1, r0
     8f0:	e3a0000c 	mov	r0, #12
     8f4:	ef000000 	svc	0x00000000
     8f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8fc:	e12fff1e 	bx	lr

00000900 <sleep>:
     900:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     904:	e1a04003 	mov	r4, r3
     908:	e1a03002 	mov	r3, r2
     90c:	e1a02001 	mov	r2, r1
     910:	e1a01000 	mov	r1, r0
     914:	e3a0000d 	mov	r0, #13
     918:	ef000000 	svc	0x00000000
     91c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     920:	e12fff1e 	bx	lr

00000924 <uptime>:
     924:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     928:	e1a04003 	mov	r4, r3
     92c:	e1a03002 	mov	r3, r2
     930:	e1a02001 	mov	r2, r1
     934:	e1a01000 	mov	r1, r0
     938:	e3a0000e 	mov	r0, #14
     93c:	ef000000 	svc	0x00000000
     940:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     944:	e12fff1e 	bx	lr

00000948 <putc>:
     948:	e92d4800 	push	{fp, lr}
     94c:	e28db004 	add	fp, sp, #4
     950:	e24dd008 	sub	sp, sp, #8
     954:	e50b0008 	str	r0, [fp, #-8]
     958:	e1a03001 	mov	r3, r1
     95c:	e54b3009 	strb	r3, [fp, #-9]
     960:	e24b3009 	sub	r3, fp, #9
     964:	e3a02001 	mov	r2, #1
     968:	e1a01003 	mov	r1, r3
     96c:	e51b0008 	ldr	r0, [fp, #-8]
     970:	ebffff64 	bl	708 <write>
     974:	e1a00000 	nop			@ (mov r0, r0)
     978:	e24bd004 	sub	sp, fp, #4
     97c:	e8bd8800 	pop	{fp, pc}

00000980 <printint>:
     980:	e92d4800 	push	{fp, lr}
     984:	e28db004 	add	fp, sp, #4
     988:	e24dd030 	sub	sp, sp, #48	@ 0x30
     98c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     990:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     994:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     998:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     99c:	e3a03000 	mov	r3, #0
     9a0:	e50b300c 	str	r3, [fp, #-12]
     9a4:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9a8:	e3530000 	cmp	r3, #0
     9ac:	0a000008 	beq	9d4 <printint+0x54>
     9b0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9b4:	e3530000 	cmp	r3, #0
     9b8:	aa000005 	bge	9d4 <printint+0x54>
     9bc:	e3a03001 	mov	r3, #1
     9c0:	e50b300c 	str	r3, [fp, #-12]
     9c4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9c8:	e2633000 	rsb	r3, r3, #0
     9cc:	e50b3010 	str	r3, [fp, #-16]
     9d0:	ea000001 	b	9dc <printint+0x5c>
     9d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9d8:	e50b3010 	str	r3, [fp, #-16]
     9dc:	e3a03000 	mov	r3, #0
     9e0:	e50b3008 	str	r3, [fp, #-8]
     9e4:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     9e8:	e51b3010 	ldr	r3, [fp, #-16]
     9ec:	e1a01002 	mov	r1, r2
     9f0:	e1a00003 	mov	r0, r3
     9f4:	eb0001d5 	bl	1150 <__aeabi_uidivmod>
     9f8:	e1a03001 	mov	r3, r1
     9fc:	e1a01003 	mov	r1, r3
     a00:	e51b3008 	ldr	r3, [fp, #-8]
     a04:	e2832001 	add	r2, r3, #1
     a08:	e50b2008 	str	r2, [fp, #-8]
     a0c:	e59f20a0 	ldr	r2, [pc, #160]	@ ab4 <printint+0x134>
     a10:	e7d22001 	ldrb	r2, [r2, r1]
     a14:	e2433004 	sub	r3, r3, #4
     a18:	e083300b 	add	r3, r3, fp
     a1c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a20:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a24:	e1a01003 	mov	r1, r3
     a28:	e51b0010 	ldr	r0, [fp, #-16]
     a2c:	eb00018a 	bl	105c <__udivsi3>
     a30:	e1a03000 	mov	r3, r0
     a34:	e50b3010 	str	r3, [fp, #-16]
     a38:	e51b3010 	ldr	r3, [fp, #-16]
     a3c:	e3530000 	cmp	r3, #0
     a40:	1affffe7 	bne	9e4 <printint+0x64>
     a44:	e51b300c 	ldr	r3, [fp, #-12]
     a48:	e3530000 	cmp	r3, #0
     a4c:	0a00000e 	beq	a8c <printint+0x10c>
     a50:	e51b3008 	ldr	r3, [fp, #-8]
     a54:	e2832001 	add	r2, r3, #1
     a58:	e50b2008 	str	r2, [fp, #-8]
     a5c:	e2433004 	sub	r3, r3, #4
     a60:	e083300b 	add	r3, r3, fp
     a64:	e3a0202d 	mov	r2, #45	@ 0x2d
     a68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a6c:	ea000006 	b	a8c <printint+0x10c>
     a70:	e24b2020 	sub	r2, fp, #32
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e0823003 	add	r3, r2, r3
     a7c:	e5d33000 	ldrb	r3, [r3]
     a80:	e1a01003 	mov	r1, r3
     a84:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     a88:	ebffffae 	bl	948 <putc>
     a8c:	e51b3008 	ldr	r3, [fp, #-8]
     a90:	e2433001 	sub	r3, r3, #1
     a94:	e50b3008 	str	r3, [fp, #-8]
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e3530000 	cmp	r3, #0
     aa0:	aafffff2 	bge	a70 <printint+0xf0>
     aa4:	e1a00000 	nop			@ (mov r0, r0)
     aa8:	e1a00000 	nop			@ (mov r0, r0)
     aac:	e24bd004 	sub	sp, fp, #4
     ab0:	e8bd8800 	pop	{fp, pc}
     ab4:	000011b0 	.word	0x000011b0

00000ab8 <printf>:
     ab8:	e92d000e 	push	{r1, r2, r3}
     abc:	e92d4800 	push	{fp, lr}
     ac0:	e28db004 	add	fp, sp, #4
     ac4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     ac8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     acc:	e3a03000 	mov	r3, #0
     ad0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ad4:	e28b3008 	add	r3, fp, #8
     ad8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     adc:	e3a03000 	mov	r3, #0
     ae0:	e50b3010 	str	r3, [fp, #-16]
     ae4:	ea000074 	b	cbc <printf+0x204>
     ae8:	e59b2004 	ldr	r2, [fp, #4]
     aec:	e51b3010 	ldr	r3, [fp, #-16]
     af0:	e0823003 	add	r3, r2, r3
     af4:	e5d33000 	ldrb	r3, [r3]
     af8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     afc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b00:	e3530000 	cmp	r3, #0
     b04:	1a00000b 	bne	b38 <printf+0x80>
     b08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b0c:	e3530025 	cmp	r3, #37	@ 0x25
     b10:	1a000002 	bne	b20 <printf+0x68>
     b14:	e3a03025 	mov	r3, #37	@ 0x25
     b18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b1c:	ea000063 	b	cb0 <printf+0x1f8>
     b20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b24:	e6ef3073 	uxtb	r3, r3
     b28:	e1a01003 	mov	r1, r3
     b2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b30:	ebffff84 	bl	948 <putc>
     b34:	ea00005d 	b	cb0 <printf+0x1f8>
     b38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b3c:	e3530025 	cmp	r3, #37	@ 0x25
     b40:	1a00005a 	bne	cb0 <printf+0x1f8>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e3530064 	cmp	r3, #100	@ 0x64
     b4c:	1a00000a 	bne	b7c <printf+0xc4>
     b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b54:	e5933000 	ldr	r3, [r3]
     b58:	e1a01003 	mov	r1, r3
     b5c:	e3a03001 	mov	r3, #1
     b60:	e3a0200a 	mov	r2, #10
     b64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b68:	ebffff84 	bl	980 <printint>
     b6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b70:	e2833004 	add	r3, r3, #4
     b74:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b78:	ea00004a 	b	ca8 <printf+0x1f0>
     b7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b80:	e3530078 	cmp	r3, #120	@ 0x78
     b84:	0a000002 	beq	b94 <printf+0xdc>
     b88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b8c:	e3530070 	cmp	r3, #112	@ 0x70
     b90:	1a00000a 	bne	bc0 <printf+0x108>
     b94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b98:	e5933000 	ldr	r3, [r3]
     b9c:	e1a01003 	mov	r1, r3
     ba0:	e3a03000 	mov	r3, #0
     ba4:	e3a02010 	mov	r2, #16
     ba8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bac:	ebffff73 	bl	980 <printint>
     bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bb4:	e2833004 	add	r3, r3, #4
     bb8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	ea000039 	b	ca8 <printf+0x1f0>
     bc0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e3530073 	cmp	r3, #115	@ 0x73
     bc8:	1a000018 	bne	c30 <printf+0x178>
     bcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd0:	e5933000 	ldr	r3, [r3]
     bd4:	e50b300c 	str	r3, [fp, #-12]
     bd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bdc:	e2833004 	add	r3, r3, #4
     be0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be4:	e51b300c 	ldr	r3, [fp, #-12]
     be8:	e3530000 	cmp	r3, #0
     bec:	1a00000a 	bne	c1c <printf+0x164>
     bf0:	e59f30f4 	ldr	r3, [pc, #244]	@ cec <printf+0x234>
     bf4:	e50b300c 	str	r3, [fp, #-12]
     bf8:	ea000007 	b	c1c <printf+0x164>
     bfc:	e51b300c 	ldr	r3, [fp, #-12]
     c00:	e5d33000 	ldrb	r3, [r3]
     c04:	e1a01003 	mov	r1, r3
     c08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c0c:	ebffff4d 	bl	948 <putc>
     c10:	e51b300c 	ldr	r3, [fp, #-12]
     c14:	e2833001 	add	r3, r3, #1
     c18:	e50b300c 	str	r3, [fp, #-12]
     c1c:	e51b300c 	ldr	r3, [fp, #-12]
     c20:	e5d33000 	ldrb	r3, [r3]
     c24:	e3530000 	cmp	r3, #0
     c28:	1afffff3 	bne	bfc <printf+0x144>
     c2c:	ea00001d 	b	ca8 <printf+0x1f0>
     c30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c34:	e3530063 	cmp	r3, #99	@ 0x63
     c38:	1a000009 	bne	c64 <printf+0x1ac>
     c3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c40:	e5933000 	ldr	r3, [r3]
     c44:	e6ef3073 	uxtb	r3, r3
     c48:	e1a01003 	mov	r1, r3
     c4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c50:	ebffff3c 	bl	948 <putc>
     c54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c58:	e2833004 	add	r3, r3, #4
     c5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c60:	ea000010 	b	ca8 <printf+0x1f0>
     c64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c68:	e3530025 	cmp	r3, #37	@ 0x25
     c6c:	1a000005 	bne	c88 <printf+0x1d0>
     c70:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c74:	e6ef3073 	uxtb	r3, r3
     c78:	e1a01003 	mov	r1, r3
     c7c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c80:	ebffff30 	bl	948 <putc>
     c84:	ea000007 	b	ca8 <printf+0x1f0>
     c88:	e3a01025 	mov	r1, #37	@ 0x25
     c8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c90:	ebffff2c 	bl	948 <putc>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e6ef3073 	uxtb	r3, r3
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff27 	bl	948 <putc>
     ca8:	e3a03000 	mov	r3, #0
     cac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cb0:	e51b3010 	ldr	r3, [fp, #-16]
     cb4:	e2833001 	add	r3, r3, #1
     cb8:	e50b3010 	str	r3, [fp, #-16]
     cbc:	e59b2004 	ldr	r2, [fp, #4]
     cc0:	e51b3010 	ldr	r3, [fp, #-16]
     cc4:	e0823003 	add	r3, r2, r3
     cc8:	e5d33000 	ldrb	r3, [r3]
     ccc:	e3530000 	cmp	r3, #0
     cd0:	1affff84 	bne	ae8 <printf+0x30>
     cd4:	e1a00000 	nop			@ (mov r0, r0)
     cd8:	e1a00000 	nop			@ (mov r0, r0)
     cdc:	e24bd004 	sub	sp, fp, #4
     ce0:	e8bd4800 	pop	{fp, lr}
     ce4:	e28dd00c 	add	sp, sp, #12
     ce8:	e12fff1e 	bx	lr
     cec:	000011a8 	.word	0x000011a8

00000cf0 <free>:
     cf0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     cf4:	e28db000 	add	fp, sp, #0
     cf8:	e24dd014 	sub	sp, sp, #20
     cfc:	e50b0010 	str	r0, [fp, #-16]
     d00:	e51b3010 	ldr	r3, [fp, #-16]
     d04:	e2433008 	sub	r3, r3, #8
     d08:	e50b300c 	str	r3, [fp, #-12]
     d0c:	e59f3154 	ldr	r3, [pc, #340]	@ e68 <free+0x178>
     d10:	e5933000 	ldr	r3, [r3]
     d14:	e50b3008 	str	r3, [fp, #-8]
     d18:	ea000010 	b	d60 <free+0x70>
     d1c:	e51b3008 	ldr	r3, [fp, #-8]
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e51b2008 	ldr	r2, [fp, #-8]
     d28:	e1520003 	cmp	r2, r3
     d2c:	3a000008 	bcc	d54 <free+0x64>
     d30:	e51b200c 	ldr	r2, [fp, #-12]
     d34:	e51b3008 	ldr	r3, [fp, #-8]
     d38:	e1520003 	cmp	r2, r3
     d3c:	8a000010 	bhi	d84 <free+0x94>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e51b200c 	ldr	r2, [fp, #-12]
     d4c:	e1520003 	cmp	r2, r3
     d50:	3a00000b 	bcc	d84 <free+0x94>
     d54:	e51b3008 	ldr	r3, [fp, #-8]
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e50b3008 	str	r3, [fp, #-8]
     d60:	e51b200c 	ldr	r2, [fp, #-12]
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e1520003 	cmp	r2, r3
     d6c:	9affffea 	bls	d1c <free+0x2c>
     d70:	e51b3008 	ldr	r3, [fp, #-8]
     d74:	e5933000 	ldr	r3, [r3]
     d78:	e51b200c 	ldr	r2, [fp, #-12]
     d7c:	e1520003 	cmp	r2, r3
     d80:	2affffe5 	bcs	d1c <free+0x2c>
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e5933004 	ldr	r3, [r3, #4]
     d8c:	e1a03183 	lsl	r3, r3, #3
     d90:	e51b200c 	ldr	r2, [fp, #-12]
     d94:	e0822003 	add	r2, r2, r3
     d98:	e51b3008 	ldr	r3, [fp, #-8]
     d9c:	e5933000 	ldr	r3, [r3]
     da0:	e1520003 	cmp	r2, r3
     da4:	1a00000d 	bne	de0 <free+0xf0>
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5932004 	ldr	r2, [r3, #4]
     db0:	e51b3008 	ldr	r3, [fp, #-8]
     db4:	e5933000 	ldr	r3, [r3]
     db8:	e5933004 	ldr	r3, [r3, #4]
     dbc:	e0822003 	add	r2, r2, r3
     dc0:	e51b300c 	ldr	r3, [fp, #-12]
     dc4:	e5832004 	str	r2, [r3, #4]
     dc8:	e51b3008 	ldr	r3, [fp, #-8]
     dcc:	e5933000 	ldr	r3, [r3]
     dd0:	e5932000 	ldr	r2, [r3]
     dd4:	e51b300c 	ldr	r3, [fp, #-12]
     dd8:	e5832000 	str	r2, [r3]
     ddc:	ea000003 	b	df0 <free+0x100>
     de0:	e51b3008 	ldr	r3, [fp, #-8]
     de4:	e5932000 	ldr	r2, [r3]
     de8:	e51b300c 	ldr	r3, [fp, #-12]
     dec:	e5832000 	str	r2, [r3]
     df0:	e51b3008 	ldr	r3, [fp, #-8]
     df4:	e5933004 	ldr	r3, [r3, #4]
     df8:	e1a03183 	lsl	r3, r3, #3
     dfc:	e51b2008 	ldr	r2, [fp, #-8]
     e00:	e0823003 	add	r3, r2, r3
     e04:	e51b200c 	ldr	r2, [fp, #-12]
     e08:	e1520003 	cmp	r2, r3
     e0c:	1a00000b 	bne	e40 <free+0x150>
     e10:	e51b3008 	ldr	r3, [fp, #-8]
     e14:	e5932004 	ldr	r2, [r3, #4]
     e18:	e51b300c 	ldr	r3, [fp, #-12]
     e1c:	e5933004 	ldr	r3, [r3, #4]
     e20:	e0822003 	add	r2, r2, r3
     e24:	e51b3008 	ldr	r3, [fp, #-8]
     e28:	e5832004 	str	r2, [r3, #4]
     e2c:	e51b300c 	ldr	r3, [fp, #-12]
     e30:	e5932000 	ldr	r2, [r3]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5832000 	str	r2, [r3]
     e3c:	ea000002 	b	e4c <free+0x15c>
     e40:	e51b3008 	ldr	r3, [fp, #-8]
     e44:	e51b200c 	ldr	r2, [fp, #-12]
     e48:	e5832000 	str	r2, [r3]
     e4c:	e59f2014 	ldr	r2, [pc, #20]	@ e68 <free+0x178>
     e50:	e51b3008 	ldr	r3, [fp, #-8]
     e54:	e5823000 	str	r3, [r2]
     e58:	e1a00000 	nop			@ (mov r0, r0)
     e5c:	e28bd000 	add	sp, fp, #0
     e60:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e64:	e12fff1e 	bx	lr
     e68:	000011cc 	.word	0x000011cc

00000e6c <morecore>:
     e6c:	e92d4800 	push	{fp, lr}
     e70:	e28db004 	add	fp, sp, #4
     e74:	e24dd010 	sub	sp, sp, #16
     e78:	e50b0010 	str	r0, [fp, #-16]
     e7c:	e51b3010 	ldr	r3, [fp, #-16]
     e80:	e3530a01 	cmp	r3, #4096	@ 0x1000
     e84:	2a000001 	bcs	e90 <morecore+0x24>
     e88:	e3a03a01 	mov	r3, #4096	@ 0x1000
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	e51b3010 	ldr	r3, [fp, #-16]
     e94:	e1a03183 	lsl	r3, r3, #3
     e98:	e1a00003 	mov	r0, r3
     e9c:	ebfffe8e 	bl	8dc <sbrk>
     ea0:	e50b0008 	str	r0, [fp, #-8]
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e3730001 	cmn	r3, #1
     eac:	1a000001 	bne	eb8 <morecore+0x4c>
     eb0:	e3a03000 	mov	r3, #0
     eb4:	ea00000a 	b	ee4 <morecore+0x78>
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e50b300c 	str	r3, [fp, #-12]
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e51b2010 	ldr	r2, [fp, #-16]
     ec8:	e5832004 	str	r2, [r3, #4]
     ecc:	e51b300c 	ldr	r3, [fp, #-12]
     ed0:	e2833008 	add	r3, r3, #8
     ed4:	e1a00003 	mov	r0, r3
     ed8:	ebffff84 	bl	cf0 <free>
     edc:	e59f300c 	ldr	r3, [pc, #12]	@ ef0 <morecore+0x84>
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e1a00003 	mov	r0, r3
     ee8:	e24bd004 	sub	sp, fp, #4
     eec:	e8bd8800 	pop	{fp, pc}
     ef0:	000011cc 	.word	0x000011cc

00000ef4 <malloc>:
     ef4:	e92d4800 	push	{fp, lr}
     ef8:	e28db004 	add	fp, sp, #4
     efc:	e24dd018 	sub	sp, sp, #24
     f00:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f08:	e2833007 	add	r3, r3, #7
     f0c:	e1a031a3 	lsr	r3, r3, #3
     f10:	e2833001 	add	r3, r3, #1
     f14:	e50b3010 	str	r3, [fp, #-16]
     f18:	e59f3134 	ldr	r3, [pc, #308]	@ 1054 <malloc+0x160>
     f1c:	e5933000 	ldr	r3, [r3]
     f20:	e50b300c 	str	r3, [fp, #-12]
     f24:	e51b300c 	ldr	r3, [fp, #-12]
     f28:	e3530000 	cmp	r3, #0
     f2c:	1a00000b 	bne	f60 <malloc+0x6c>
     f30:	e59f3120 	ldr	r3, [pc, #288]	@ 1058 <malloc+0x164>
     f34:	e50b300c 	str	r3, [fp, #-12]
     f38:	e59f2114 	ldr	r2, [pc, #276]	@ 1054 <malloc+0x160>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e5823000 	str	r3, [r2]
     f44:	e59f3108 	ldr	r3, [pc, #264]	@ 1054 <malloc+0x160>
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e59f2104 	ldr	r2, [pc, #260]	@ 1058 <malloc+0x164>
     f50:	e5823000 	str	r3, [r2]
     f54:	e59f30fc 	ldr	r3, [pc, #252]	@ 1058 <malloc+0x164>
     f58:	e3a02000 	mov	r2, #0
     f5c:	e5832004 	str	r2, [r3, #4]
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5933000 	ldr	r3, [r3]
     f68:	e50b3008 	str	r3, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e5933004 	ldr	r3, [r3, #4]
     f74:	e51b2010 	ldr	r2, [fp, #-16]
     f78:	e1520003 	cmp	r2, r3
     f7c:	8a00001e 	bhi	ffc <malloc+0x108>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e5933004 	ldr	r3, [r3, #4]
     f88:	e51b2010 	ldr	r2, [fp, #-16]
     f8c:	e1520003 	cmp	r2, r3
     f90:	1a000004 	bne	fa8 <malloc+0xb4>
     f94:	e51b3008 	ldr	r3, [fp, #-8]
     f98:	e5932000 	ldr	r2, [r3]
     f9c:	e51b300c 	ldr	r3, [fp, #-12]
     fa0:	e5832000 	str	r2, [r3]
     fa4:	ea00000e 	b	fe4 <malloc+0xf0>
     fa8:	e51b3008 	ldr	r3, [fp, #-8]
     fac:	e5932004 	ldr	r2, [r3, #4]
     fb0:	e51b3010 	ldr	r3, [fp, #-16]
     fb4:	e0422003 	sub	r2, r2, r3
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5832004 	str	r2, [r3, #4]
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5933004 	ldr	r3, [r3, #4]
     fc8:	e1a03183 	lsl	r3, r3, #3
     fcc:	e51b2008 	ldr	r2, [fp, #-8]
     fd0:	e0823003 	add	r3, r2, r3
     fd4:	e50b3008 	str	r3, [fp, #-8]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e51b2010 	ldr	r2, [fp, #-16]
     fe0:	e5832004 	str	r2, [r3, #4]
     fe4:	e59f2068 	ldr	r2, [pc, #104]	@ 1054 <malloc+0x160>
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5823000 	str	r3, [r2]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e2833008 	add	r3, r3, #8
     ff8:	ea000012 	b	1048 <malloc+0x154>
     ffc:	e59f3050 	ldr	r3, [pc, #80]	@ 1054 <malloc+0x160>
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e51b2008 	ldr	r2, [fp, #-8]
    1008:	e1520003 	cmp	r2, r3
    100c:	1a000007 	bne	1030 <malloc+0x13c>
    1010:	e51b0010 	ldr	r0, [fp, #-16]
    1014:	ebffff94 	bl	e6c <morecore>
    1018:	e50b0008 	str	r0, [fp, #-8]
    101c:	e51b3008 	ldr	r3, [fp, #-8]
    1020:	e3530000 	cmp	r3, #0
    1024:	1a000001 	bne	1030 <malloc+0x13c>
    1028:	e3a03000 	mov	r3, #0
    102c:	ea000005 	b	1048 <malloc+0x154>
    1030:	e51b3008 	ldr	r3, [fp, #-8]
    1034:	e50b300c 	str	r3, [fp, #-12]
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5933000 	ldr	r3, [r3]
    1040:	e50b3008 	str	r3, [fp, #-8]
    1044:	eaffffc8 	b	f6c <malloc+0x78>
    1048:	e1a00003 	mov	r0, r3
    104c:	e24bd004 	sub	sp, fp, #4
    1050:	e8bd8800 	pop	{fp, pc}
    1054:	000011cc 	.word	0x000011cc
    1058:	000011c4 	.word	0x000011c4

0000105c <__udivsi3>:
    105c:	e2512001 	subs	r2, r1, #1
    1060:	012fff1e 	bxeq	lr
    1064:	3a000036 	bcc	1144 <__udivsi3+0xe8>
    1068:	e1500001 	cmp	r0, r1
    106c:	9a000022 	bls	10fc <__udivsi3+0xa0>
    1070:	e1110002 	tst	r1, r2
    1074:	0a000023 	beq	1108 <__udivsi3+0xac>
    1078:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    107c:	01a01181 	lsleq	r1, r1, #3
    1080:	03a03008 	moveq	r3, #8
    1084:	13a03001 	movne	r3, #1
    1088:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    108c:	31510000 	cmpcc	r1, r0
    1090:	31a01201 	lslcc	r1, r1, #4
    1094:	31a03203 	lslcc	r3, r3, #4
    1098:	3afffffa 	bcc	1088 <__udivsi3+0x2c>
    109c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10a0:	31510000 	cmpcc	r1, r0
    10a4:	31a01081 	lslcc	r1, r1, #1
    10a8:	31a03083 	lslcc	r3, r3, #1
    10ac:	3afffffa 	bcc	109c <__udivsi3+0x40>
    10b0:	e3a02000 	mov	r2, #0
    10b4:	e1500001 	cmp	r0, r1
    10b8:	20400001 	subcs	r0, r0, r1
    10bc:	21822003 	orrcs	r2, r2, r3
    10c0:	e15000a1 	cmp	r0, r1, lsr #1
    10c4:	204000a1 	subcs	r0, r0, r1, lsr #1
    10c8:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10cc:	e1500121 	cmp	r0, r1, lsr #2
    10d0:	20400121 	subcs	r0, r0, r1, lsr #2
    10d4:	21822123 	orrcs	r2, r2, r3, lsr #2
    10d8:	e15001a1 	cmp	r0, r1, lsr #3
    10dc:	204001a1 	subcs	r0, r0, r1, lsr #3
    10e0:	218221a3 	orrcs	r2, r2, r3, lsr #3
    10e4:	e3500000 	cmp	r0, #0
    10e8:	11b03223 	lsrsne	r3, r3, #4
    10ec:	11a01221 	lsrne	r1, r1, #4
    10f0:	1affffef 	bne	10b4 <__udivsi3+0x58>
    10f4:	e1a00002 	mov	r0, r2
    10f8:	e12fff1e 	bx	lr
    10fc:	03a00001 	moveq	r0, #1
    1100:	13a00000 	movne	r0, #0
    1104:	e12fff1e 	bx	lr
    1108:	e3510801 	cmp	r1, #65536	@ 0x10000
    110c:	21a01821 	lsrcs	r1, r1, #16
    1110:	23a02010 	movcs	r2, #16
    1114:	33a02000 	movcc	r2, #0
    1118:	e3510c01 	cmp	r1, #256	@ 0x100
    111c:	21a01421 	lsrcs	r1, r1, #8
    1120:	22822008 	addcs	r2, r2, #8
    1124:	e3510010 	cmp	r1, #16
    1128:	21a01221 	lsrcs	r1, r1, #4
    112c:	22822004 	addcs	r2, r2, #4
    1130:	e3510004 	cmp	r1, #4
    1134:	82822003 	addhi	r2, r2, #3
    1138:	908220a1 	addls	r2, r2, r1, lsr #1
    113c:	e1a00230 	lsr	r0, r0, r2
    1140:	e12fff1e 	bx	lr
    1144:	e3500000 	cmp	r0, #0
    1148:	13e00000 	mvnne	r0, #0
    114c:	ea000007 	b	1170 <__aeabi_idiv0>

00001150 <__aeabi_uidivmod>:
    1150:	e3510000 	cmp	r1, #0
    1154:	0afffffa 	beq	1144 <__udivsi3+0xe8>
    1158:	e92d4003 	push	{r0, r1, lr}
    115c:	ebffffbe 	bl	105c <__udivsi3>
    1160:	e8bd4006 	pop	{r1, r2, lr}
    1164:	e0030092 	mul	r3, r2, r0
    1168:	e0411003 	sub	r1, r1, r3
    116c:	e12fff1e 	bx	lr

00001170 <__aeabi_idiv0>:
    1170:	e12fff1e 	bx	lr
