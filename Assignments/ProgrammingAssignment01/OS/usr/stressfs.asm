
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
      30:	eb0002a9 	bl	adc <printf>
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
      90:	eb000291 	bl	adc <printf>
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
     108:	eb000273 	bl	adc <printf>
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
     168:	000011c0 	.word	0x000011c0
     16c:	00001198 	.word	0x00001198
     170:	000011ac 	.word	0x000011ac
     174:	00000202 	.word	0x00000202
     178:	000011b8 	.word	0x000011b8

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

00000948 <ps>:
     948:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     94c:	e1a04003 	mov	r4, r3
     950:	e1a03002 	mov	r3, r2
     954:	e1a02001 	mov	r2, r1
     958:	e1a01000 	mov	r1, r0
     95c:	e3a00016 	mov	r0, #22
     960:	ef000000 	svc	0x00000000
     964:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     968:	e12fff1e 	bx	lr

0000096c <putc>:
     96c:	e92d4800 	push	{fp, lr}
     970:	e28db004 	add	fp, sp, #4
     974:	e24dd008 	sub	sp, sp, #8
     978:	e50b0008 	str	r0, [fp, #-8]
     97c:	e1a03001 	mov	r3, r1
     980:	e54b3009 	strb	r3, [fp, #-9]
     984:	e24b3009 	sub	r3, fp, #9
     988:	e3a02001 	mov	r2, #1
     98c:	e1a01003 	mov	r1, r3
     990:	e51b0008 	ldr	r0, [fp, #-8]
     994:	ebffff5b 	bl	708 <write>
     998:	e1a00000 	nop			@ (mov r0, r0)
     99c:	e24bd004 	sub	sp, fp, #4
     9a0:	e8bd8800 	pop	{fp, pc}

000009a4 <printint>:
     9a4:	e92d4800 	push	{fp, lr}
     9a8:	e28db004 	add	fp, sp, #4
     9ac:	e24dd030 	sub	sp, sp, #48	@ 0x30
     9b0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     9b4:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     9b8:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     9bc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     9c0:	e3a03000 	mov	r3, #0
     9c4:	e50b300c 	str	r3, [fp, #-12]
     9c8:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     9cc:	e3530000 	cmp	r3, #0
     9d0:	0a000008 	beq	9f8 <printint+0x54>
     9d4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9d8:	e3530000 	cmp	r3, #0
     9dc:	aa000005 	bge	9f8 <printint+0x54>
     9e0:	e3a03001 	mov	r3, #1
     9e4:	e50b300c 	str	r3, [fp, #-12]
     9e8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9ec:	e2633000 	rsb	r3, r3, #0
     9f0:	e50b3010 	str	r3, [fp, #-16]
     9f4:	ea000001 	b	a00 <printint+0x5c>
     9f8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     9fc:	e50b3010 	str	r3, [fp, #-16]
     a00:	e3a03000 	mov	r3, #0
     a04:	e50b3008 	str	r3, [fp, #-8]
     a08:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     a0c:	e51b3010 	ldr	r3, [fp, #-16]
     a10:	e1a01002 	mov	r1, r2
     a14:	e1a00003 	mov	r0, r3
     a18:	eb0001d5 	bl	1174 <__aeabi_uidivmod>
     a1c:	e1a03001 	mov	r3, r1
     a20:	e1a01003 	mov	r1, r3
     a24:	e51b3008 	ldr	r3, [fp, #-8]
     a28:	e2832001 	add	r2, r3, #1
     a2c:	e50b2008 	str	r2, [fp, #-8]
     a30:	e59f20a0 	ldr	r2, [pc, #160]	@ ad8 <printint+0x134>
     a34:	e7d22001 	ldrb	r2, [r2, r1]
     a38:	e2433004 	sub	r3, r3, #4
     a3c:	e083300b 	add	r3, r3, fp
     a40:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a44:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     a48:	e1a01003 	mov	r1, r3
     a4c:	e51b0010 	ldr	r0, [fp, #-16]
     a50:	eb00018a 	bl	1080 <__udivsi3>
     a54:	e1a03000 	mov	r3, r0
     a58:	e50b3010 	str	r3, [fp, #-16]
     a5c:	e51b3010 	ldr	r3, [fp, #-16]
     a60:	e3530000 	cmp	r3, #0
     a64:	1affffe7 	bne	a08 <printint+0x64>
     a68:	e51b300c 	ldr	r3, [fp, #-12]
     a6c:	e3530000 	cmp	r3, #0
     a70:	0a00000e 	beq	ab0 <printint+0x10c>
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e2832001 	add	r2, r3, #1
     a7c:	e50b2008 	str	r2, [fp, #-8]
     a80:	e2433004 	sub	r3, r3, #4
     a84:	e083300b 	add	r3, r3, fp
     a88:	e3a0202d 	mov	r2, #45	@ 0x2d
     a8c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     a90:	ea000006 	b	ab0 <printint+0x10c>
     a94:	e24b2020 	sub	r2, fp, #32
     a98:	e51b3008 	ldr	r3, [fp, #-8]
     a9c:	e0823003 	add	r3, r2, r3
     aa0:	e5d33000 	ldrb	r3, [r3]
     aa4:	e1a01003 	mov	r1, r3
     aa8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     aac:	ebffffae 	bl	96c <putc>
     ab0:	e51b3008 	ldr	r3, [fp, #-8]
     ab4:	e2433001 	sub	r3, r3, #1
     ab8:	e50b3008 	str	r3, [fp, #-8]
     abc:	e51b3008 	ldr	r3, [fp, #-8]
     ac0:	e3530000 	cmp	r3, #0
     ac4:	aafffff2 	bge	a94 <printint+0xf0>
     ac8:	e1a00000 	nop			@ (mov r0, r0)
     acc:	e1a00000 	nop			@ (mov r0, r0)
     ad0:	e24bd004 	sub	sp, fp, #4
     ad4:	e8bd8800 	pop	{fp, pc}
     ad8:	000011d4 	.word	0x000011d4

00000adc <printf>:
     adc:	e92d000e 	push	{r1, r2, r3}
     ae0:	e92d4800 	push	{fp, lr}
     ae4:	e28db004 	add	fp, sp, #4
     ae8:	e24dd024 	sub	sp, sp, #36	@ 0x24
     aec:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     af0:	e3a03000 	mov	r3, #0
     af4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     af8:	e28b3008 	add	r3, fp, #8
     afc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b00:	e3a03000 	mov	r3, #0
     b04:	e50b3010 	str	r3, [fp, #-16]
     b08:	ea000074 	b	ce0 <printf+0x204>
     b0c:	e59b2004 	ldr	r2, [fp, #4]
     b10:	e51b3010 	ldr	r3, [fp, #-16]
     b14:	e0823003 	add	r3, r2, r3
     b18:	e5d33000 	ldrb	r3, [r3]
     b1c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     b20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b24:	e3530000 	cmp	r3, #0
     b28:	1a00000b 	bne	b5c <printf+0x80>
     b2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b30:	e3530025 	cmp	r3, #37	@ 0x25
     b34:	1a000002 	bne	b44 <printf+0x68>
     b38:	e3a03025 	mov	r3, #37	@ 0x25
     b3c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b40:	ea000063 	b	cd4 <printf+0x1f8>
     b44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b48:	e6ef3073 	uxtb	r3, r3
     b4c:	e1a01003 	mov	r1, r3
     b50:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b54:	ebffff84 	bl	96c <putc>
     b58:	ea00005d 	b	cd4 <printf+0x1f8>
     b5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b60:	e3530025 	cmp	r3, #37	@ 0x25
     b64:	1a00005a 	bne	cd4 <printf+0x1f8>
     b68:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     b6c:	e3530064 	cmp	r3, #100	@ 0x64
     b70:	1a00000a 	bne	ba0 <printf+0xc4>
     b74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b78:	e5933000 	ldr	r3, [r3]
     b7c:	e1a01003 	mov	r1, r3
     b80:	e3a03001 	mov	r3, #1
     b84:	e3a0200a 	mov	r2, #10
     b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     b8c:	ebffff84 	bl	9a4 <printint>
     b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b94:	e2833004 	add	r3, r3, #4
     b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     b9c:	ea00004a 	b	ccc <printf+0x1f0>
     ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ba4:	e3530078 	cmp	r3, #120	@ 0x78
     ba8:	0a000002 	beq	bb8 <printf+0xdc>
     bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bb0:	e3530070 	cmp	r3, #112	@ 0x70
     bb4:	1a00000a 	bne	be4 <printf+0x108>
     bb8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bbc:	e5933000 	ldr	r3, [r3]
     bc0:	e1a01003 	mov	r1, r3
     bc4:	e3a03000 	mov	r3, #0
     bc8:	e3a02010 	mov	r2, #16
     bcc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bd0:	ebffff73 	bl	9a4 <printint>
     bd4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bd8:	e2833004 	add	r3, r3, #4
     bdc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     be0:	ea000039 	b	ccc <printf+0x1f0>
     be4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     be8:	e3530073 	cmp	r3, #115	@ 0x73
     bec:	1a000018 	bne	c54 <printf+0x178>
     bf0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     bf4:	e5933000 	ldr	r3, [r3]
     bf8:	e50b300c 	str	r3, [fp, #-12]
     bfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c00:	e2833004 	add	r3, r3, #4
     c04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c08:	e51b300c 	ldr	r3, [fp, #-12]
     c0c:	e3530000 	cmp	r3, #0
     c10:	1a00000a 	bne	c40 <printf+0x164>
     c14:	e59f30f4 	ldr	r3, [pc, #244]	@ d10 <printf+0x234>
     c18:	e50b300c 	str	r3, [fp, #-12]
     c1c:	ea000007 	b	c40 <printf+0x164>
     c20:	e51b300c 	ldr	r3, [fp, #-12]
     c24:	e5d33000 	ldrb	r3, [r3]
     c28:	e1a01003 	mov	r1, r3
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c30:	ebffff4d 	bl	96c <putc>
     c34:	e51b300c 	ldr	r3, [fp, #-12]
     c38:	e2833001 	add	r3, r3, #1
     c3c:	e50b300c 	str	r3, [fp, #-12]
     c40:	e51b300c 	ldr	r3, [fp, #-12]
     c44:	e5d33000 	ldrb	r3, [r3]
     c48:	e3530000 	cmp	r3, #0
     c4c:	1afffff3 	bne	c20 <printf+0x144>
     c50:	ea00001d 	b	ccc <printf+0x1f0>
     c54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c58:	e3530063 	cmp	r3, #99	@ 0x63
     c5c:	1a000009 	bne	c88 <printf+0x1ac>
     c60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e5933000 	ldr	r3, [r3]
     c68:	e6ef3073 	uxtb	r3, r3
     c6c:	e1a01003 	mov	r1, r3
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff3c 	bl	96c <putc>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c84:	ea000010 	b	ccc <printf+0x1f0>
     c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c8c:	e3530025 	cmp	r3, #37	@ 0x25
     c90:	1a000005 	bne	cac <printf+0x1d0>
     c94:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c98:	e6ef3073 	uxtb	r3, r3
     c9c:	e1a01003 	mov	r1, r3
     ca0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ca4:	ebffff30 	bl	96c <putc>
     ca8:	ea000007 	b	ccc <printf+0x1f0>
     cac:	e3a01025 	mov	r1, #37	@ 0x25
     cb0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb4:	ebffff2c 	bl	96c <putc>
     cb8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cbc:	e6ef3073 	uxtb	r3, r3
     cc0:	e1a01003 	mov	r1, r3
     cc4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cc8:	ebffff27 	bl	96c <putc>
     ccc:	e3a03000 	mov	r3, #0
     cd0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cd4:	e51b3010 	ldr	r3, [fp, #-16]
     cd8:	e2833001 	add	r3, r3, #1
     cdc:	e50b3010 	str	r3, [fp, #-16]
     ce0:	e59b2004 	ldr	r2, [fp, #4]
     ce4:	e51b3010 	ldr	r3, [fp, #-16]
     ce8:	e0823003 	add	r3, r2, r3
     cec:	e5d33000 	ldrb	r3, [r3]
     cf0:	e3530000 	cmp	r3, #0
     cf4:	1affff84 	bne	b0c <printf+0x30>
     cf8:	e1a00000 	nop			@ (mov r0, r0)
     cfc:	e1a00000 	nop			@ (mov r0, r0)
     d00:	e24bd004 	sub	sp, fp, #4
     d04:	e8bd4800 	pop	{fp, lr}
     d08:	e28dd00c 	add	sp, sp, #12
     d0c:	e12fff1e 	bx	lr
     d10:	000011cc 	.word	0x000011cc

00000d14 <free>:
     d14:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     d18:	e28db000 	add	fp, sp, #0
     d1c:	e24dd014 	sub	sp, sp, #20
     d20:	e50b0010 	str	r0, [fp, #-16]
     d24:	e51b3010 	ldr	r3, [fp, #-16]
     d28:	e2433008 	sub	r3, r3, #8
     d2c:	e50b300c 	str	r3, [fp, #-12]
     d30:	e59f3154 	ldr	r3, [pc, #340]	@ e8c <free+0x178>
     d34:	e5933000 	ldr	r3, [r3]
     d38:	e50b3008 	str	r3, [fp, #-8]
     d3c:	ea000010 	b	d84 <free+0x70>
     d40:	e51b3008 	ldr	r3, [fp, #-8]
     d44:	e5933000 	ldr	r3, [r3]
     d48:	e51b2008 	ldr	r2, [fp, #-8]
     d4c:	e1520003 	cmp	r2, r3
     d50:	3a000008 	bcc	d78 <free+0x64>
     d54:	e51b200c 	ldr	r2, [fp, #-12]
     d58:	e51b3008 	ldr	r3, [fp, #-8]
     d5c:	e1520003 	cmp	r2, r3
     d60:	8a000010 	bhi	da8 <free+0x94>
     d64:	e51b3008 	ldr	r3, [fp, #-8]
     d68:	e5933000 	ldr	r3, [r3]
     d6c:	e51b200c 	ldr	r2, [fp, #-12]
     d70:	e1520003 	cmp	r2, r3
     d74:	3a00000b 	bcc	da8 <free+0x94>
     d78:	e51b3008 	ldr	r3, [fp, #-8]
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e50b3008 	str	r3, [fp, #-8]
     d84:	e51b200c 	ldr	r2, [fp, #-12]
     d88:	e51b3008 	ldr	r3, [fp, #-8]
     d8c:	e1520003 	cmp	r2, r3
     d90:	9affffea 	bls	d40 <free+0x2c>
     d94:	e51b3008 	ldr	r3, [fp, #-8]
     d98:	e5933000 	ldr	r3, [r3]
     d9c:	e51b200c 	ldr	r2, [fp, #-12]
     da0:	e1520003 	cmp	r2, r3
     da4:	2affffe5 	bcs	d40 <free+0x2c>
     da8:	e51b300c 	ldr	r3, [fp, #-12]
     dac:	e5933004 	ldr	r3, [r3, #4]
     db0:	e1a03183 	lsl	r3, r3, #3
     db4:	e51b200c 	ldr	r2, [fp, #-12]
     db8:	e0822003 	add	r2, r2, r3
     dbc:	e51b3008 	ldr	r3, [fp, #-8]
     dc0:	e5933000 	ldr	r3, [r3]
     dc4:	e1520003 	cmp	r2, r3
     dc8:	1a00000d 	bne	e04 <free+0xf0>
     dcc:	e51b300c 	ldr	r3, [fp, #-12]
     dd0:	e5932004 	ldr	r2, [r3, #4]
     dd4:	e51b3008 	ldr	r3, [fp, #-8]
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e5933004 	ldr	r3, [r3, #4]
     de0:	e0822003 	add	r2, r2, r3
     de4:	e51b300c 	ldr	r3, [fp, #-12]
     de8:	e5832004 	str	r2, [r3, #4]
     dec:	e51b3008 	ldr	r3, [fp, #-8]
     df0:	e5933000 	ldr	r3, [r3]
     df4:	e5932000 	ldr	r2, [r3]
     df8:	e51b300c 	ldr	r3, [fp, #-12]
     dfc:	e5832000 	str	r2, [r3]
     e00:	ea000003 	b	e14 <free+0x100>
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e5932000 	ldr	r2, [r3]
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e5832000 	str	r2, [r3]
     e14:	e51b3008 	ldr	r3, [fp, #-8]
     e18:	e5933004 	ldr	r3, [r3, #4]
     e1c:	e1a03183 	lsl	r3, r3, #3
     e20:	e51b2008 	ldr	r2, [fp, #-8]
     e24:	e0823003 	add	r3, r2, r3
     e28:	e51b200c 	ldr	r2, [fp, #-12]
     e2c:	e1520003 	cmp	r2, r3
     e30:	1a00000b 	bne	e64 <free+0x150>
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e5932004 	ldr	r2, [r3, #4]
     e3c:	e51b300c 	ldr	r3, [fp, #-12]
     e40:	e5933004 	ldr	r3, [r3, #4]
     e44:	e0822003 	add	r2, r2, r3
     e48:	e51b3008 	ldr	r3, [fp, #-8]
     e4c:	e5832004 	str	r2, [r3, #4]
     e50:	e51b300c 	ldr	r3, [fp, #-12]
     e54:	e5932000 	ldr	r2, [r3]
     e58:	e51b3008 	ldr	r3, [fp, #-8]
     e5c:	e5832000 	str	r2, [r3]
     e60:	ea000002 	b	e70 <free+0x15c>
     e64:	e51b3008 	ldr	r3, [fp, #-8]
     e68:	e51b200c 	ldr	r2, [fp, #-12]
     e6c:	e5832000 	str	r2, [r3]
     e70:	e59f2014 	ldr	r2, [pc, #20]	@ e8c <free+0x178>
     e74:	e51b3008 	ldr	r3, [fp, #-8]
     e78:	e5823000 	str	r3, [r2]
     e7c:	e1a00000 	nop			@ (mov r0, r0)
     e80:	e28bd000 	add	sp, fp, #0
     e84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     e88:	e12fff1e 	bx	lr
     e8c:	000011f0 	.word	0x000011f0

00000e90 <morecore>:
     e90:	e92d4800 	push	{fp, lr}
     e94:	e28db004 	add	fp, sp, #4
     e98:	e24dd010 	sub	sp, sp, #16
     e9c:	e50b0010 	str	r0, [fp, #-16]
     ea0:	e51b3010 	ldr	r3, [fp, #-16]
     ea4:	e3530a01 	cmp	r3, #4096	@ 0x1000
     ea8:	2a000001 	bcs	eb4 <morecore+0x24>
     eac:	e3a03a01 	mov	r3, #4096	@ 0x1000
     eb0:	e50b3010 	str	r3, [fp, #-16]
     eb4:	e51b3010 	ldr	r3, [fp, #-16]
     eb8:	e1a03183 	lsl	r3, r3, #3
     ebc:	e1a00003 	mov	r0, r3
     ec0:	ebfffe85 	bl	8dc <sbrk>
     ec4:	e50b0008 	str	r0, [fp, #-8]
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e3730001 	cmn	r3, #1
     ed0:	1a000001 	bne	edc <morecore+0x4c>
     ed4:	e3a03000 	mov	r3, #0
     ed8:	ea00000a 	b	f08 <morecore+0x78>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e50b300c 	str	r3, [fp, #-12]
     ee4:	e51b300c 	ldr	r3, [fp, #-12]
     ee8:	e51b2010 	ldr	r2, [fp, #-16]
     eec:	e5832004 	str	r2, [r3, #4]
     ef0:	e51b300c 	ldr	r3, [fp, #-12]
     ef4:	e2833008 	add	r3, r3, #8
     ef8:	e1a00003 	mov	r0, r3
     efc:	ebffff84 	bl	d14 <free>
     f00:	e59f300c 	ldr	r3, [pc, #12]	@ f14 <morecore+0x84>
     f04:	e5933000 	ldr	r3, [r3]
     f08:	e1a00003 	mov	r0, r3
     f0c:	e24bd004 	sub	sp, fp, #4
     f10:	e8bd8800 	pop	{fp, pc}
     f14:	000011f0 	.word	0x000011f0

00000f18 <malloc>:
     f18:	e92d4800 	push	{fp, lr}
     f1c:	e28db004 	add	fp, sp, #4
     f20:	e24dd018 	sub	sp, sp, #24
     f24:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f2c:	e2833007 	add	r3, r3, #7
     f30:	e1a031a3 	lsr	r3, r3, #3
     f34:	e2833001 	add	r3, r3, #1
     f38:	e50b3010 	str	r3, [fp, #-16]
     f3c:	e59f3134 	ldr	r3, [pc, #308]	@ 1078 <malloc+0x160>
     f40:	e5933000 	ldr	r3, [r3]
     f44:	e50b300c 	str	r3, [fp, #-12]
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e3530000 	cmp	r3, #0
     f50:	1a00000b 	bne	f84 <malloc+0x6c>
     f54:	e59f3120 	ldr	r3, [pc, #288]	@ 107c <malloc+0x164>
     f58:	e50b300c 	str	r3, [fp, #-12]
     f5c:	e59f2114 	ldr	r2, [pc, #276]	@ 1078 <malloc+0x160>
     f60:	e51b300c 	ldr	r3, [fp, #-12]
     f64:	e5823000 	str	r3, [r2]
     f68:	e59f3108 	ldr	r3, [pc, #264]	@ 1078 <malloc+0x160>
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e59f2104 	ldr	r2, [pc, #260]	@ 107c <malloc+0x164>
     f74:	e5823000 	str	r3, [r2]
     f78:	e59f30fc 	ldr	r3, [pc, #252]	@ 107c <malloc+0x164>
     f7c:	e3a02000 	mov	r2, #0
     f80:	e5832004 	str	r2, [r3, #4]
     f84:	e51b300c 	ldr	r3, [fp, #-12]
     f88:	e5933000 	ldr	r3, [r3]
     f8c:	e50b3008 	str	r3, [fp, #-8]
     f90:	e51b3008 	ldr	r3, [fp, #-8]
     f94:	e5933004 	ldr	r3, [r3, #4]
     f98:	e51b2010 	ldr	r2, [fp, #-16]
     f9c:	e1520003 	cmp	r2, r3
     fa0:	8a00001e 	bhi	1020 <malloc+0x108>
     fa4:	e51b3008 	ldr	r3, [fp, #-8]
     fa8:	e5933004 	ldr	r3, [r3, #4]
     fac:	e51b2010 	ldr	r2, [fp, #-16]
     fb0:	e1520003 	cmp	r2, r3
     fb4:	1a000004 	bne	fcc <malloc+0xb4>
     fb8:	e51b3008 	ldr	r3, [fp, #-8]
     fbc:	e5932000 	ldr	r2, [r3]
     fc0:	e51b300c 	ldr	r3, [fp, #-12]
     fc4:	e5832000 	str	r2, [r3]
     fc8:	ea00000e 	b	1008 <malloc+0xf0>
     fcc:	e51b3008 	ldr	r3, [fp, #-8]
     fd0:	e5932004 	ldr	r2, [r3, #4]
     fd4:	e51b3010 	ldr	r3, [fp, #-16]
     fd8:	e0422003 	sub	r2, r2, r3
     fdc:	e51b3008 	ldr	r3, [fp, #-8]
     fe0:	e5832004 	str	r2, [r3, #4]
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933004 	ldr	r3, [r3, #4]
     fec:	e1a03183 	lsl	r3, r3, #3
     ff0:	e51b2008 	ldr	r2, [fp, #-8]
     ff4:	e0823003 	add	r3, r2, r3
     ff8:	e50b3008 	str	r3, [fp, #-8]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e51b2010 	ldr	r2, [fp, #-16]
    1004:	e5832004 	str	r2, [r3, #4]
    1008:	e59f2068 	ldr	r2, [pc, #104]	@ 1078 <malloc+0x160>
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5823000 	str	r3, [r2]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e2833008 	add	r3, r3, #8
    101c:	ea000012 	b	106c <malloc+0x154>
    1020:	e59f3050 	ldr	r3, [pc, #80]	@ 1078 <malloc+0x160>
    1024:	e5933000 	ldr	r3, [r3]
    1028:	e51b2008 	ldr	r2, [fp, #-8]
    102c:	e1520003 	cmp	r2, r3
    1030:	1a000007 	bne	1054 <malloc+0x13c>
    1034:	e51b0010 	ldr	r0, [fp, #-16]
    1038:	ebffff94 	bl	e90 <morecore>
    103c:	e50b0008 	str	r0, [fp, #-8]
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e3530000 	cmp	r3, #0
    1048:	1a000001 	bne	1054 <malloc+0x13c>
    104c:	e3a03000 	mov	r3, #0
    1050:	ea000005 	b	106c <malloc+0x154>
    1054:	e51b3008 	ldr	r3, [fp, #-8]
    1058:	e50b300c 	str	r3, [fp, #-12]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5933000 	ldr	r3, [r3]
    1064:	e50b3008 	str	r3, [fp, #-8]
    1068:	eaffffc8 	b	f90 <malloc+0x78>
    106c:	e1a00003 	mov	r0, r3
    1070:	e24bd004 	sub	sp, fp, #4
    1074:	e8bd8800 	pop	{fp, pc}
    1078:	000011f0 	.word	0x000011f0
    107c:	000011e8 	.word	0x000011e8

00001080 <__udivsi3>:
    1080:	e2512001 	subs	r2, r1, #1
    1084:	012fff1e 	bxeq	lr
    1088:	3a000036 	bcc	1168 <__udivsi3+0xe8>
    108c:	e1500001 	cmp	r0, r1
    1090:	9a000022 	bls	1120 <__udivsi3+0xa0>
    1094:	e1110002 	tst	r1, r2
    1098:	0a000023 	beq	112c <__udivsi3+0xac>
    109c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    10a0:	01a01181 	lsleq	r1, r1, #3
    10a4:	03a03008 	moveq	r3, #8
    10a8:	13a03001 	movne	r3, #1
    10ac:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    10b0:	31510000 	cmpcc	r1, r0
    10b4:	31a01201 	lslcc	r1, r1, #4
    10b8:	31a03203 	lslcc	r3, r3, #4
    10bc:	3afffffa 	bcc	10ac <__udivsi3+0x2c>
    10c0:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    10c4:	31510000 	cmpcc	r1, r0
    10c8:	31a01081 	lslcc	r1, r1, #1
    10cc:	31a03083 	lslcc	r3, r3, #1
    10d0:	3afffffa 	bcc	10c0 <__udivsi3+0x40>
    10d4:	e3a02000 	mov	r2, #0
    10d8:	e1500001 	cmp	r0, r1
    10dc:	20400001 	subcs	r0, r0, r1
    10e0:	21822003 	orrcs	r2, r2, r3
    10e4:	e15000a1 	cmp	r0, r1, lsr #1
    10e8:	204000a1 	subcs	r0, r0, r1, lsr #1
    10ec:	218220a3 	orrcs	r2, r2, r3, lsr #1
    10f0:	e1500121 	cmp	r0, r1, lsr #2
    10f4:	20400121 	subcs	r0, r0, r1, lsr #2
    10f8:	21822123 	orrcs	r2, r2, r3, lsr #2
    10fc:	e15001a1 	cmp	r0, r1, lsr #3
    1100:	204001a1 	subcs	r0, r0, r1, lsr #3
    1104:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1108:	e3500000 	cmp	r0, #0
    110c:	11b03223 	lsrsne	r3, r3, #4
    1110:	11a01221 	lsrne	r1, r1, #4
    1114:	1affffef 	bne	10d8 <__udivsi3+0x58>
    1118:	e1a00002 	mov	r0, r2
    111c:	e12fff1e 	bx	lr
    1120:	03a00001 	moveq	r0, #1
    1124:	13a00000 	movne	r0, #0
    1128:	e12fff1e 	bx	lr
    112c:	e3510801 	cmp	r1, #65536	@ 0x10000
    1130:	21a01821 	lsrcs	r1, r1, #16
    1134:	23a02010 	movcs	r2, #16
    1138:	33a02000 	movcc	r2, #0
    113c:	e3510c01 	cmp	r1, #256	@ 0x100
    1140:	21a01421 	lsrcs	r1, r1, #8
    1144:	22822008 	addcs	r2, r2, #8
    1148:	e3510010 	cmp	r1, #16
    114c:	21a01221 	lsrcs	r1, r1, #4
    1150:	22822004 	addcs	r2, r2, #4
    1154:	e3510004 	cmp	r1, #4
    1158:	82822003 	addhi	r2, r2, #3
    115c:	908220a1 	addls	r2, r2, r1, lsr #1
    1160:	e1a00230 	lsr	r0, r0, r2
    1164:	e12fff1e 	bx	lr
    1168:	e3500000 	cmp	r0, #0
    116c:	13e00000 	mvnne	r0, #0
    1170:	ea000007 	b	1194 <__aeabi_idiv0>

00001174 <__aeabi_uidivmod>:
    1174:	e3510000 	cmp	r1, #0
    1178:	0afffffa 	beq	1168 <__udivsi3+0xe8>
    117c:	e92d4003 	push	{r0, r1, lr}
    1180:	ebffffbe 	bl	1080 <__udivsi3>
    1184:	e8bd4006 	pop	{r1, r2, lr}
    1188:	e0030092 	mul	r3, r2, r0
    118c:	e0411003 	sub	r1, r1, r3
    1190:	e12fff1e 	bx	lr

00001194 <__aeabi_idiv0>:
    1194:	e12fff1e 	bx	lr
