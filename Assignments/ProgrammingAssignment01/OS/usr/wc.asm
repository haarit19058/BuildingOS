
_wc:     file format elf32-littlearm


Disassembly of section .text:

00000000 <wc>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      10:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
      14:	e3a03000 	mov	r3, #0
      18:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      1c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      20:	e50b3010 	str	r3, [fp, #-16]
      24:	e51b3010 	ldr	r3, [fp, #-16]
      28:	e50b300c 	str	r3, [fp, #-12]
      2c:	e3a03000 	mov	r3, #0
      30:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      34:	ea00002a 	b	e4 <wc+0xe4>
      38:	e3a03000 	mov	r3, #0
      3c:	e50b3008 	str	r3, [fp, #-8]
      40:	ea000023 	b	d4 <wc+0xd4>
      44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      48:	e2833001 	add	r3, r3, #1
      4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      50:	e59f20f8 	ldr	r2, [pc, #248]	@ 150 <wc+0x150>
      54:	e51b3008 	ldr	r3, [fp, #-8]
      58:	e0823003 	add	r3, r2, r3
      5c:	e5d33000 	ldrb	r3, [r3]
      60:	e353000a 	cmp	r3, #10
      64:	1a000002 	bne	74 <wc+0x74>
      68:	e51b300c 	ldr	r3, [fp, #-12]
      6c:	e2833001 	add	r3, r3, #1
      70:	e50b300c 	str	r3, [fp, #-12]
      74:	e59f20d4 	ldr	r2, [pc, #212]	@ 150 <wc+0x150>
      78:	e51b3008 	ldr	r3, [fp, #-8]
      7c:	e0823003 	add	r3, r2, r3
      80:	e5d33000 	ldrb	r3, [r3]
      84:	e1a01003 	mov	r1, r3
      88:	e59f00c4 	ldr	r0, [pc, #196]	@ 154 <wc+0x154>
      8c:	eb000103 	bl	4a0 <strchr>
      90:	e1a03000 	mov	r3, r0
      94:	e3530000 	cmp	r3, #0
      98:	0a000002 	beq	a8 <wc+0xa8>
      9c:	e3a03000 	mov	r3, #0
      a0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      a4:	ea000007 	b	c8 <wc+0xc8>
      a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      ac:	e3530000 	cmp	r3, #0
      b0:	1a000004 	bne	c8 <wc+0xc8>
      b4:	e51b3010 	ldr	r3, [fp, #-16]
      b8:	e2833001 	add	r3, r3, #1
      bc:	e50b3010 	str	r3, [fp, #-16]
      c0:	e3a03001 	mov	r3, #1
      c4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      c8:	e51b3008 	ldr	r3, [fp, #-8]
      cc:	e2833001 	add	r3, r3, #1
      d0:	e50b3008 	str	r3, [fp, #-8]
      d4:	e51b2008 	ldr	r2, [fp, #-8]
      d8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      dc:	e1520003 	cmp	r2, r3
      e0:	baffffd7 	blt	44 <wc+0x44>
      e4:	e3a02c02 	mov	r2, #512	@ 0x200
      e8:	e59f1060 	ldr	r1, [pc, #96]	@ 150 <wc+0x150>
      ec:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
      f0:	eb0001ad 	bl	7ac <read>
      f4:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
      fc:	e3530000 	cmp	r3, #0
     100:	caffffcc 	bgt	38 <wc+0x38>
     104:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     108:	e3530000 	cmp	r3, #0
     10c:	aa000003 	bge	120 <wc+0x120>
     110:	e59f1040 	ldr	r1, [pc, #64]	@ 158 <wc+0x158>
     114:	e3a00001 	mov	r0, #1
     118:	eb000298 	bl	b80 <printf>
     11c:	eb000187 	bl	740 <exit>
     120:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     124:	e58d3004 	str	r3, [sp, #4]
     128:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     12c:	e58d3000 	str	r3, [sp]
     130:	e51b3010 	ldr	r3, [fp, #-16]
     134:	e51b200c 	ldr	r2, [fp, #-12]
     138:	e59f101c 	ldr	r1, [pc, #28]	@ 15c <wc+0x15c>
     13c:	e3a00001 	mov	r0, #1
     140:	eb00028e 	bl	b80 <printf>
     144:	e1a00000 	nop			@ (mov r0, r0)
     148:	e24bd004 	sub	sp, fp, #4
     14c:	e8bd8800 	pop	{fp, pc}
     150:	00001298 	.word	0x00001298
     154:	0000123c 	.word	0x0000123c
     158:	00001244 	.word	0x00001244
     15c:	00001254 	.word	0x00001254

00000160 <main>:
     160:	e92d4800 	push	{fp, lr}
     164:	e28db004 	add	fp, sp, #4
     168:	e24dd010 	sub	sp, sp, #16
     16c:	e50b0010 	str	r0, [fp, #-16]
     170:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     174:	e51b3010 	ldr	r3, [fp, #-16]
     178:	e3530001 	cmp	r3, #1
     17c:	ca000003 	bgt	190 <main+0x30>
     180:	e59f10b4 	ldr	r1, [pc, #180]	@ 23c <main+0xdc>
     184:	e3a00000 	mov	r0, #0
     188:	ebffff9c 	bl	0 <wc>
     18c:	eb00016b 	bl	740 <exit>
     190:	e3a03001 	mov	r3, #1
     194:	e50b3008 	str	r3, [fp, #-8]
     198:	ea000022 	b	228 <main+0xc8>
     19c:	e51b3008 	ldr	r3, [fp, #-8]
     1a0:	e1a03103 	lsl	r3, r3, #2
     1a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1a8:	e0823003 	add	r3, r2, r3
     1ac:	e5933000 	ldr	r3, [r3]
     1b0:	e3a01000 	mov	r1, #0
     1b4:	e1a00003 	mov	r0, r3
     1b8:	eb0001a8 	bl	860 <open>
     1bc:	e50b000c 	str	r0, [fp, #-12]
     1c0:	e51b300c 	ldr	r3, [fp, #-12]
     1c4:	e3530000 	cmp	r3, #0
     1c8:	aa000009 	bge	1f4 <main+0x94>
     1cc:	e51b3008 	ldr	r3, [fp, #-8]
     1d0:	e1a03103 	lsl	r3, r3, #2
     1d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     1d8:	e0823003 	add	r3, r2, r3
     1dc:	e5933000 	ldr	r3, [r3]
     1e0:	e1a02003 	mov	r2, r3
     1e4:	e59f1054 	ldr	r1, [pc, #84]	@ 240 <main+0xe0>
     1e8:	e3a00001 	mov	r0, #1
     1ec:	eb000263 	bl	b80 <printf>
     1f0:	eb000152 	bl	740 <exit>
     1f4:	e51b3008 	ldr	r3, [fp, #-8]
     1f8:	e1a03103 	lsl	r3, r3, #2
     1fc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     200:	e0823003 	add	r3, r2, r3
     204:	e5933000 	ldr	r3, [r3]
     208:	e1a01003 	mov	r1, r3
     20c:	e51b000c 	ldr	r0, [fp, #-12]
     210:	ebffff7a 	bl	0 <wc>
     214:	e51b000c 	ldr	r0, [fp, #-12]
     218:	eb000175 	bl	7f4 <close>
     21c:	e51b3008 	ldr	r3, [fp, #-8]
     220:	e2833001 	add	r3, r3, #1
     224:	e50b3008 	str	r3, [fp, #-8]
     228:	e51b2008 	ldr	r2, [fp, #-8]
     22c:	e51b3010 	ldr	r3, [fp, #-16]
     230:	e1520003 	cmp	r2, r3
     234:	baffffd8 	blt	19c <main+0x3c>
     238:	eb000140 	bl	740 <exit>
     23c:	00001264 	.word	0x00001264
     240:	00001268 	.word	0x00001268

00000244 <strcpy>:
     244:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     248:	e28db000 	add	fp, sp, #0
     24c:	e24dd014 	sub	sp, sp, #20
     250:	e50b0010 	str	r0, [fp, #-16]
     254:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     258:	e51b3010 	ldr	r3, [fp, #-16]
     25c:	e50b3008 	str	r3, [fp, #-8]
     260:	e1a00000 	nop			@ (mov r0, r0)
     264:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     268:	e2823001 	add	r3, r2, #1
     26c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     270:	e51b3010 	ldr	r3, [fp, #-16]
     274:	e2831001 	add	r1, r3, #1
     278:	e50b1010 	str	r1, [fp, #-16]
     27c:	e5d22000 	ldrb	r2, [r2]
     280:	e5c32000 	strb	r2, [r3]
     284:	e5d33000 	ldrb	r3, [r3]
     288:	e3530000 	cmp	r3, #0
     28c:	1afffff4 	bne	264 <strcpy+0x20>
     290:	e51b3008 	ldr	r3, [fp, #-8]
     294:	e1a00003 	mov	r0, r3
     298:	e28bd000 	add	sp, fp, #0
     29c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2a0:	e12fff1e 	bx	lr

000002a4 <strcmp>:
     2a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2a8:	e28db000 	add	fp, sp, #0
     2ac:	e24dd00c 	sub	sp, sp, #12
     2b0:	e50b0008 	str	r0, [fp, #-8]
     2b4:	e50b100c 	str	r1, [fp, #-12]
     2b8:	ea000005 	b	2d4 <strcmp+0x30>
     2bc:	e51b3008 	ldr	r3, [fp, #-8]
     2c0:	e2833001 	add	r3, r3, #1
     2c4:	e50b3008 	str	r3, [fp, #-8]
     2c8:	e51b300c 	ldr	r3, [fp, #-12]
     2cc:	e2833001 	add	r3, r3, #1
     2d0:	e50b300c 	str	r3, [fp, #-12]
     2d4:	e51b3008 	ldr	r3, [fp, #-8]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	0a000005 	beq	2fc <strcmp+0x58>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e5d32000 	ldrb	r2, [r3]
     2ec:	e51b300c 	ldr	r3, [fp, #-12]
     2f0:	e5d33000 	ldrb	r3, [r3]
     2f4:	e1520003 	cmp	r2, r3
     2f8:	0affffef 	beq	2bc <strcmp+0x18>
     2fc:	e51b3008 	ldr	r3, [fp, #-8]
     300:	e5d33000 	ldrb	r3, [r3]
     304:	e1a02003 	mov	r2, r3
     308:	e51b300c 	ldr	r3, [fp, #-12]
     30c:	e5d33000 	ldrb	r3, [r3]
     310:	e0423003 	sub	r3, r2, r3
     314:	e1a00003 	mov	r0, r3
     318:	e28bd000 	add	sp, fp, #0
     31c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     320:	e12fff1e 	bx	lr

00000324 <strlen>:
     324:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     328:	e28db000 	add	fp, sp, #0
     32c:	e24dd014 	sub	sp, sp, #20
     330:	e50b0010 	str	r0, [fp, #-16]
     334:	e3a03000 	mov	r3, #0
     338:	e50b3008 	str	r3, [fp, #-8]
     33c:	ea000002 	b	34c <strlen+0x28>
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e2833001 	add	r3, r3, #1
     348:	e50b3008 	str	r3, [fp, #-8]
     34c:	e51b3008 	ldr	r3, [fp, #-8]
     350:	e51b2010 	ldr	r2, [fp, #-16]
     354:	e0823003 	add	r3, r2, r3
     358:	e5d33000 	ldrb	r3, [r3]
     35c:	e3530000 	cmp	r3, #0
     360:	1afffff6 	bne	340 <strlen+0x1c>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <memset>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd024 	sub	sp, sp, #36	@ 0x24
     384:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     388:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     38c:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     390:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     394:	e50b3008 	str	r3, [fp, #-8]
     398:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     39c:	e54b300d 	strb	r3, [fp, #-13]
     3a0:	e55b200d 	ldrb	r2, [fp, #-13]
     3a4:	e1a03002 	mov	r3, r2
     3a8:	e1a03403 	lsl	r3, r3, #8
     3ac:	e0833002 	add	r3, r3, r2
     3b0:	e1a03803 	lsl	r3, r3, #16
     3b4:	e1a02003 	mov	r2, r3
     3b8:	e55b300d 	ldrb	r3, [fp, #-13]
     3bc:	e1a03403 	lsl	r3, r3, #8
     3c0:	e1822003 	orr	r2, r2, r3
     3c4:	e55b300d 	ldrb	r3, [fp, #-13]
     3c8:	e1823003 	orr	r3, r2, r3
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	ea000008 	b	3f8 <memset+0x80>
     3d4:	e51b3008 	ldr	r3, [fp, #-8]
     3d8:	e55b200d 	ldrb	r2, [fp, #-13]
     3dc:	e5c32000 	strb	r2, [r3]
     3e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3e4:	e2433001 	sub	r3, r3, #1
     3e8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     3ec:	e51b3008 	ldr	r3, [fp, #-8]
     3f0:	e2833001 	add	r3, r3, #1
     3f4:	e50b3008 	str	r3, [fp, #-8]
     3f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     3fc:	e3530000 	cmp	r3, #0
     400:	0a000003 	beq	414 <memset+0x9c>
     404:	e51b3008 	ldr	r3, [fp, #-8]
     408:	e2033003 	and	r3, r3, #3
     40c:	e3530000 	cmp	r3, #0
     410:	1affffef 	bne	3d4 <memset+0x5c>
     414:	e51b3008 	ldr	r3, [fp, #-8]
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	ea000008 	b	444 <memset+0xcc>
     420:	e51b300c 	ldr	r3, [fp, #-12]
     424:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     428:	e5832000 	str	r2, [r3]
     42c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     430:	e2433004 	sub	r3, r3, #4
     434:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     438:	e51b300c 	ldr	r3, [fp, #-12]
     43c:	e2833004 	add	r3, r3, #4
     440:	e50b300c 	str	r3, [fp, #-12]
     444:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     448:	e3530003 	cmp	r3, #3
     44c:	8afffff3 	bhi	420 <memset+0xa8>
     450:	e51b300c 	ldr	r3, [fp, #-12]
     454:	e50b3008 	str	r3, [fp, #-8]
     458:	ea000008 	b	480 <memset+0x108>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e55b200d 	ldrb	r2, [fp, #-13]
     464:	e5c32000 	strb	r2, [r3]
     468:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     46c:	e2433001 	sub	r3, r3, #1
     470:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     474:	e51b3008 	ldr	r3, [fp, #-8]
     478:	e2833001 	add	r3, r3, #1
     47c:	e50b3008 	str	r3, [fp, #-8]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e3530000 	cmp	r3, #0
     488:	1afffff3 	bne	45c <memset+0xe4>
     48c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     490:	e1a00003 	mov	r0, r3
     494:	e28bd000 	add	sp, fp, #0
     498:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     49c:	e12fff1e 	bx	lr

000004a0 <strchr>:
     4a0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4a4:	e28db000 	add	fp, sp, #0
     4a8:	e24dd00c 	sub	sp, sp, #12
     4ac:	e50b0008 	str	r0, [fp, #-8]
     4b0:	e1a03001 	mov	r3, r1
     4b4:	e54b3009 	strb	r3, [fp, #-9]
     4b8:	ea000009 	b	4e4 <strchr+0x44>
     4bc:	e51b3008 	ldr	r3, [fp, #-8]
     4c0:	e5d33000 	ldrb	r3, [r3]
     4c4:	e55b2009 	ldrb	r2, [fp, #-9]
     4c8:	e1520003 	cmp	r2, r3
     4cc:	1a000001 	bne	4d8 <strchr+0x38>
     4d0:	e51b3008 	ldr	r3, [fp, #-8]
     4d4:	ea000007 	b	4f8 <strchr+0x58>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e2833001 	add	r3, r3, #1
     4e0:	e50b3008 	str	r3, [fp, #-8]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e5d33000 	ldrb	r3, [r3]
     4ec:	e3530000 	cmp	r3, #0
     4f0:	1afffff1 	bne	4bc <strchr+0x1c>
     4f4:	e3a03000 	mov	r3, #0
     4f8:	e1a00003 	mov	r0, r3
     4fc:	e28bd000 	add	sp, fp, #0
     500:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     504:	e12fff1e 	bx	lr

00000508 <gets>:
     508:	e92d4800 	push	{fp, lr}
     50c:	e28db004 	add	fp, sp, #4
     510:	e24dd018 	sub	sp, sp, #24
     514:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     518:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     51c:	e3a03000 	mov	r3, #0
     520:	e50b3008 	str	r3, [fp, #-8]
     524:	ea000016 	b	584 <gets+0x7c>
     528:	e24b300d 	sub	r3, fp, #13
     52c:	e3a02001 	mov	r2, #1
     530:	e1a01003 	mov	r1, r3
     534:	e3a00000 	mov	r0, #0
     538:	eb00009b 	bl	7ac <read>
     53c:	e50b000c 	str	r0, [fp, #-12]
     540:	e51b300c 	ldr	r3, [fp, #-12]
     544:	e3530000 	cmp	r3, #0
     548:	da000013 	ble	59c <gets+0x94>
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2832001 	add	r2, r3, #1
     554:	e50b2008 	str	r2, [fp, #-8]
     558:	e1a02003 	mov	r2, r3
     55c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     560:	e0833002 	add	r3, r3, r2
     564:	e55b200d 	ldrb	r2, [fp, #-13]
     568:	e5c32000 	strb	r2, [r3]
     56c:	e55b300d 	ldrb	r3, [fp, #-13]
     570:	e353000a 	cmp	r3, #10
     574:	0a000009 	beq	5a0 <gets+0x98>
     578:	e55b300d 	ldrb	r3, [fp, #-13]
     57c:	e353000d 	cmp	r3, #13
     580:	0a000006 	beq	5a0 <gets+0x98>
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e2833001 	add	r3, r3, #1
     58c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     590:	e1520003 	cmp	r2, r3
     594:	caffffe3 	bgt	528 <gets+0x20>
     598:	ea000000 	b	5a0 <gets+0x98>
     59c:	e1a00000 	nop			@ (mov r0, r0)
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5a8:	e0823003 	add	r3, r2, r3
     5ac:	e3a02000 	mov	r2, #0
     5b0:	e5c32000 	strb	r2, [r3]
     5b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b8:	e1a00003 	mov	r0, r3
     5bc:	e24bd004 	sub	sp, fp, #4
     5c0:	e8bd8800 	pop	{fp, pc}

000005c4 <stat>:
     5c4:	e92d4800 	push	{fp, lr}
     5c8:	e28db004 	add	fp, sp, #4
     5cc:	e24dd010 	sub	sp, sp, #16
     5d0:	e50b0010 	str	r0, [fp, #-16]
     5d4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5d8:	e3a01000 	mov	r1, #0
     5dc:	e51b0010 	ldr	r0, [fp, #-16]
     5e0:	eb00009e 	bl	860 <open>
     5e4:	e50b0008 	str	r0, [fp, #-8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e3530000 	cmp	r3, #0
     5f0:	aa000001 	bge	5fc <stat+0x38>
     5f4:	e3e03000 	mvn	r3, #0
     5f8:	ea000006 	b	618 <stat+0x54>
     5fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     600:	e51b0008 	ldr	r0, [fp, #-8]
     604:	eb0000b0 	bl	8cc <fstat>
     608:	e50b000c 	str	r0, [fp, #-12]
     60c:	e51b0008 	ldr	r0, [fp, #-8]
     610:	eb000077 	bl	7f4 <close>
     614:	e51b300c 	ldr	r3, [fp, #-12]
     618:	e1a00003 	mov	r0, r3
     61c:	e24bd004 	sub	sp, fp, #4
     620:	e8bd8800 	pop	{fp, pc}

00000624 <atoi>:
     624:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     628:	e28db000 	add	fp, sp, #0
     62c:	e24dd014 	sub	sp, sp, #20
     630:	e50b0010 	str	r0, [fp, #-16]
     634:	e3a03000 	mov	r3, #0
     638:	e50b3008 	str	r3, [fp, #-8]
     63c:	ea00000c 	b	674 <atoi+0x50>
     640:	e51b2008 	ldr	r2, [fp, #-8]
     644:	e1a03002 	mov	r3, r2
     648:	e1a03103 	lsl	r3, r3, #2
     64c:	e0833002 	add	r3, r3, r2
     650:	e1a03083 	lsl	r3, r3, #1
     654:	e1a01003 	mov	r1, r3
     658:	e51b3010 	ldr	r3, [fp, #-16]
     65c:	e2832001 	add	r2, r3, #1
     660:	e50b2010 	str	r2, [fp, #-16]
     664:	e5d33000 	ldrb	r3, [r3]
     668:	e0813003 	add	r3, r1, r3
     66c:	e2433030 	sub	r3, r3, #48	@ 0x30
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	e51b3010 	ldr	r3, [fp, #-16]
     678:	e5d33000 	ldrb	r3, [r3]
     67c:	e353002f 	cmp	r3, #47	@ 0x2f
     680:	9a000003 	bls	694 <atoi+0x70>
     684:	e51b3010 	ldr	r3, [fp, #-16]
     688:	e5d33000 	ldrb	r3, [r3]
     68c:	e3530039 	cmp	r3, #57	@ 0x39
     690:	9affffea 	bls	640 <atoi+0x1c>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e1a00003 	mov	r0, r3
     69c:	e28bd000 	add	sp, fp, #0
     6a0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6a4:	e12fff1e 	bx	lr

000006a8 <memmove>:
     6a8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     6ac:	e28db000 	add	fp, sp, #0
     6b0:	e24dd01c 	sub	sp, sp, #28
     6b4:	e50b0010 	str	r0, [fp, #-16]
     6b8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     6bc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     6c0:	e51b3010 	ldr	r3, [fp, #-16]
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     6cc:	e50b300c 	str	r3, [fp, #-12]
     6d0:	ea000007 	b	6f4 <memmove+0x4c>
     6d4:	e51b200c 	ldr	r2, [fp, #-12]
     6d8:	e2823001 	add	r3, r2, #1
     6dc:	e50b300c 	str	r3, [fp, #-12]
     6e0:	e51b3008 	ldr	r3, [fp, #-8]
     6e4:	e2831001 	add	r1, r3, #1
     6e8:	e50b1008 	str	r1, [fp, #-8]
     6ec:	e5d22000 	ldrb	r2, [r2]
     6f0:	e5c32000 	strb	r2, [r3]
     6f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6f8:	e2432001 	sub	r2, r3, #1
     6fc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     700:	e3530000 	cmp	r3, #0
     704:	cafffff2 	bgt	6d4 <memmove+0x2c>
     708:	e51b3010 	ldr	r3, [fp, #-16]
     70c:	e1a00003 	mov	r0, r3
     710:	e28bd000 	add	sp, fp, #0
     714:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     718:	e12fff1e 	bx	lr

0000071c <fork>:
     71c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     720:	e1a04003 	mov	r4, r3
     724:	e1a03002 	mov	r3, r2
     728:	e1a02001 	mov	r2, r1
     72c:	e1a01000 	mov	r1, r0
     730:	e3a00001 	mov	r0, #1
     734:	ef000000 	svc	0x00000000
     738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     73c:	e12fff1e 	bx	lr

00000740 <exit>:
     740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     744:	e1a04003 	mov	r4, r3
     748:	e1a03002 	mov	r3, r2
     74c:	e1a02001 	mov	r2, r1
     750:	e1a01000 	mov	r1, r0
     754:	e3a00002 	mov	r0, #2
     758:	ef000000 	svc	0x00000000
     75c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     760:	e12fff1e 	bx	lr

00000764 <wait>:
     764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     768:	e1a04003 	mov	r4, r3
     76c:	e1a03002 	mov	r3, r2
     770:	e1a02001 	mov	r2, r1
     774:	e1a01000 	mov	r1, r0
     778:	e3a00003 	mov	r0, #3
     77c:	ef000000 	svc	0x00000000
     780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     784:	e12fff1e 	bx	lr

00000788 <pipe>:
     788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     78c:	e1a04003 	mov	r4, r3
     790:	e1a03002 	mov	r3, r2
     794:	e1a02001 	mov	r2, r1
     798:	e1a01000 	mov	r1, r0
     79c:	e3a00004 	mov	r0, #4
     7a0:	ef000000 	svc	0x00000000
     7a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7a8:	e12fff1e 	bx	lr

000007ac <read>:
     7ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7b0:	e1a04003 	mov	r4, r3
     7b4:	e1a03002 	mov	r3, r2
     7b8:	e1a02001 	mov	r2, r1
     7bc:	e1a01000 	mov	r1, r0
     7c0:	e3a00005 	mov	r0, #5
     7c4:	ef000000 	svc	0x00000000
     7c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7cc:	e12fff1e 	bx	lr

000007d0 <write>:
     7d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7d4:	e1a04003 	mov	r4, r3
     7d8:	e1a03002 	mov	r3, r2
     7dc:	e1a02001 	mov	r2, r1
     7e0:	e1a01000 	mov	r1, r0
     7e4:	e3a00010 	mov	r0, #16
     7e8:	ef000000 	svc	0x00000000
     7ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7f0:	e12fff1e 	bx	lr

000007f4 <close>:
     7f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7f8:	e1a04003 	mov	r4, r3
     7fc:	e1a03002 	mov	r3, r2
     800:	e1a02001 	mov	r2, r1
     804:	e1a01000 	mov	r1, r0
     808:	e3a00015 	mov	r0, #21
     80c:	ef000000 	svc	0x00000000
     810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     814:	e12fff1e 	bx	lr

00000818 <kill>:
     818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     81c:	e1a04003 	mov	r4, r3
     820:	e1a03002 	mov	r3, r2
     824:	e1a02001 	mov	r2, r1
     828:	e1a01000 	mov	r1, r0
     82c:	e3a00006 	mov	r0, #6
     830:	ef000000 	svc	0x00000000
     834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     838:	e12fff1e 	bx	lr

0000083c <exec>:
     83c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     840:	e1a04003 	mov	r4, r3
     844:	e1a03002 	mov	r3, r2
     848:	e1a02001 	mov	r2, r1
     84c:	e1a01000 	mov	r1, r0
     850:	e3a00007 	mov	r0, #7
     854:	ef000000 	svc	0x00000000
     858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     85c:	e12fff1e 	bx	lr

00000860 <open>:
     860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     864:	e1a04003 	mov	r4, r3
     868:	e1a03002 	mov	r3, r2
     86c:	e1a02001 	mov	r2, r1
     870:	e1a01000 	mov	r1, r0
     874:	e3a0000f 	mov	r0, #15
     878:	ef000000 	svc	0x00000000
     87c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     880:	e12fff1e 	bx	lr

00000884 <mknod>:
     884:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     888:	e1a04003 	mov	r4, r3
     88c:	e1a03002 	mov	r3, r2
     890:	e1a02001 	mov	r2, r1
     894:	e1a01000 	mov	r1, r0
     898:	e3a00011 	mov	r0, #17
     89c:	ef000000 	svc	0x00000000
     8a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8a4:	e12fff1e 	bx	lr

000008a8 <unlink>:
     8a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ac:	e1a04003 	mov	r4, r3
     8b0:	e1a03002 	mov	r3, r2
     8b4:	e1a02001 	mov	r2, r1
     8b8:	e1a01000 	mov	r1, r0
     8bc:	e3a00012 	mov	r0, #18
     8c0:	ef000000 	svc	0x00000000
     8c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c8:	e12fff1e 	bx	lr

000008cc <fstat>:
     8cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8d0:	e1a04003 	mov	r4, r3
     8d4:	e1a03002 	mov	r3, r2
     8d8:	e1a02001 	mov	r2, r1
     8dc:	e1a01000 	mov	r1, r0
     8e0:	e3a00008 	mov	r0, #8
     8e4:	ef000000 	svc	0x00000000
     8e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8ec:	e12fff1e 	bx	lr

000008f0 <link>:
     8f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8f4:	e1a04003 	mov	r4, r3
     8f8:	e1a03002 	mov	r3, r2
     8fc:	e1a02001 	mov	r2, r1
     900:	e1a01000 	mov	r1, r0
     904:	e3a00013 	mov	r0, #19
     908:	ef000000 	svc	0x00000000
     90c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     910:	e12fff1e 	bx	lr

00000914 <mkdir>:
     914:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     918:	e1a04003 	mov	r4, r3
     91c:	e1a03002 	mov	r3, r2
     920:	e1a02001 	mov	r2, r1
     924:	e1a01000 	mov	r1, r0
     928:	e3a00014 	mov	r0, #20
     92c:	ef000000 	svc	0x00000000
     930:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     934:	e12fff1e 	bx	lr

00000938 <chdir>:
     938:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     93c:	e1a04003 	mov	r4, r3
     940:	e1a03002 	mov	r3, r2
     944:	e1a02001 	mov	r2, r1
     948:	e1a01000 	mov	r1, r0
     94c:	e3a00009 	mov	r0, #9
     950:	ef000000 	svc	0x00000000
     954:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     958:	e12fff1e 	bx	lr

0000095c <dup>:
     95c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     960:	e1a04003 	mov	r4, r3
     964:	e1a03002 	mov	r3, r2
     968:	e1a02001 	mov	r2, r1
     96c:	e1a01000 	mov	r1, r0
     970:	e3a0000a 	mov	r0, #10
     974:	ef000000 	svc	0x00000000
     978:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     97c:	e12fff1e 	bx	lr

00000980 <getpid>:
     980:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     984:	e1a04003 	mov	r4, r3
     988:	e1a03002 	mov	r3, r2
     98c:	e1a02001 	mov	r2, r1
     990:	e1a01000 	mov	r1, r0
     994:	e3a0000b 	mov	r0, #11
     998:	ef000000 	svc	0x00000000
     99c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9a0:	e12fff1e 	bx	lr

000009a4 <sbrk>:
     9a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a8:	e1a04003 	mov	r4, r3
     9ac:	e1a03002 	mov	r3, r2
     9b0:	e1a02001 	mov	r2, r1
     9b4:	e1a01000 	mov	r1, r0
     9b8:	e3a0000c 	mov	r0, #12
     9bc:	ef000000 	svc	0x00000000
     9c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9c4:	e12fff1e 	bx	lr

000009c8 <sleep>:
     9c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9cc:	e1a04003 	mov	r4, r3
     9d0:	e1a03002 	mov	r3, r2
     9d4:	e1a02001 	mov	r2, r1
     9d8:	e1a01000 	mov	r1, r0
     9dc:	e3a0000d 	mov	r0, #13
     9e0:	ef000000 	svc	0x00000000
     9e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e8:	e12fff1e 	bx	lr

000009ec <uptime>:
     9ec:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9f0:	e1a04003 	mov	r4, r3
     9f4:	e1a03002 	mov	r3, r2
     9f8:	e1a02001 	mov	r2, r1
     9fc:	e1a01000 	mov	r1, r0
     a00:	e3a0000e 	mov	r0, #14
     a04:	ef000000 	svc	0x00000000
     a08:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a0c:	e12fff1e 	bx	lr

00000a10 <putc>:
     a10:	e92d4800 	push	{fp, lr}
     a14:	e28db004 	add	fp, sp, #4
     a18:	e24dd008 	sub	sp, sp, #8
     a1c:	e50b0008 	str	r0, [fp, #-8]
     a20:	e1a03001 	mov	r3, r1
     a24:	e54b3009 	strb	r3, [fp, #-9]
     a28:	e24b3009 	sub	r3, fp, #9
     a2c:	e3a02001 	mov	r2, #1
     a30:	e1a01003 	mov	r1, r3
     a34:	e51b0008 	ldr	r0, [fp, #-8]
     a38:	ebffff64 	bl	7d0 <write>
     a3c:	e1a00000 	nop			@ (mov r0, r0)
     a40:	e24bd004 	sub	sp, fp, #4
     a44:	e8bd8800 	pop	{fp, pc}

00000a48 <printint>:
     a48:	e92d4800 	push	{fp, lr}
     a4c:	e28db004 	add	fp, sp, #4
     a50:	e24dd030 	sub	sp, sp, #48	@ 0x30
     a54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     a58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     a5c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     a60:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     a64:	e3a03000 	mov	r3, #0
     a68:	e50b300c 	str	r3, [fp, #-12]
     a6c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     a70:	e3530000 	cmp	r3, #0
     a74:	0a000008 	beq	a9c <printint+0x54>
     a78:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a7c:	e3530000 	cmp	r3, #0
     a80:	aa000005 	bge	a9c <printint+0x54>
     a84:	e3a03001 	mov	r3, #1
     a88:	e50b300c 	str	r3, [fp, #-12]
     a8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     a90:	e2633000 	rsb	r3, r3, #0
     a94:	e50b3010 	str	r3, [fp, #-16]
     a98:	ea000001 	b	aa4 <printint+0x5c>
     a9c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     aa0:	e50b3010 	str	r3, [fp, #-16]
     aa4:	e3a03000 	mov	r3, #0
     aa8:	e50b3008 	str	r3, [fp, #-8]
     aac:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     ab0:	e51b3010 	ldr	r3, [fp, #-16]
     ab4:	e1a01002 	mov	r1, r2
     ab8:	e1a00003 	mov	r0, r3
     abc:	eb0001d5 	bl	1218 <__aeabi_uidivmod>
     ac0:	e1a03001 	mov	r3, r1
     ac4:	e1a01003 	mov	r1, r3
     ac8:	e51b3008 	ldr	r3, [fp, #-8]
     acc:	e2832001 	add	r2, r3, #1
     ad0:	e50b2008 	str	r2, [fp, #-8]
     ad4:	e59f20a0 	ldr	r2, [pc, #160]	@ b7c <printint+0x134>
     ad8:	e7d22001 	ldrb	r2, [r2, r1]
     adc:	e2433004 	sub	r3, r3, #4
     ae0:	e083300b 	add	r3, r3, fp
     ae4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ae8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     aec:	e1a01003 	mov	r1, r3
     af0:	e51b0010 	ldr	r0, [fp, #-16]
     af4:	eb00018a 	bl	1124 <__udivsi3>
     af8:	e1a03000 	mov	r3, r0
     afc:	e50b3010 	str	r3, [fp, #-16]
     b00:	e51b3010 	ldr	r3, [fp, #-16]
     b04:	e3530000 	cmp	r3, #0
     b08:	1affffe7 	bne	aac <printint+0x64>
     b0c:	e51b300c 	ldr	r3, [fp, #-12]
     b10:	e3530000 	cmp	r3, #0
     b14:	0a00000e 	beq	b54 <printint+0x10c>
     b18:	e51b3008 	ldr	r3, [fp, #-8]
     b1c:	e2832001 	add	r2, r3, #1
     b20:	e50b2008 	str	r2, [fp, #-8]
     b24:	e2433004 	sub	r3, r3, #4
     b28:	e083300b 	add	r3, r3, fp
     b2c:	e3a0202d 	mov	r2, #45	@ 0x2d
     b30:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     b34:	ea000006 	b	b54 <printint+0x10c>
     b38:	e24b2020 	sub	r2, fp, #32
     b3c:	e51b3008 	ldr	r3, [fp, #-8]
     b40:	e0823003 	add	r3, r2, r3
     b44:	e5d33000 	ldrb	r3, [r3]
     b48:	e1a01003 	mov	r1, r3
     b4c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     b50:	ebffffae 	bl	a10 <putc>
     b54:	e51b3008 	ldr	r3, [fp, #-8]
     b58:	e2433001 	sub	r3, r3, #1
     b5c:	e50b3008 	str	r3, [fp, #-8]
     b60:	e51b3008 	ldr	r3, [fp, #-8]
     b64:	e3530000 	cmp	r3, #0
     b68:	aafffff2 	bge	b38 <printint+0xf0>
     b6c:	e1a00000 	nop			@ (mov r0, r0)
     b70:	e1a00000 	nop			@ (mov r0, r0)
     b74:	e24bd004 	sub	sp, fp, #4
     b78:	e8bd8800 	pop	{fp, pc}
     b7c:	00001284 	.word	0x00001284

00000b80 <printf>:
     b80:	e92d000e 	push	{r1, r2, r3}
     b84:	e92d4800 	push	{fp, lr}
     b88:	e28db004 	add	fp, sp, #4
     b8c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     b90:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     b94:	e3a03000 	mov	r3, #0
     b98:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     b9c:	e28b3008 	add	r3, fp, #8
     ba0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     ba4:	e3a03000 	mov	r3, #0
     ba8:	e50b3010 	str	r3, [fp, #-16]
     bac:	ea000074 	b	d84 <printf+0x204>
     bb0:	e59b2004 	ldr	r2, [fp, #4]
     bb4:	e51b3010 	ldr	r3, [fp, #-16]
     bb8:	e0823003 	add	r3, r2, r3
     bbc:	e5d33000 	ldrb	r3, [r3]
     bc0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     bc4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     bc8:	e3530000 	cmp	r3, #0
     bcc:	1a00000b 	bne	c00 <printf+0x80>
     bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bd4:	e3530025 	cmp	r3, #37	@ 0x25
     bd8:	1a000002 	bne	be8 <printf+0x68>
     bdc:	e3a03025 	mov	r3, #37	@ 0x25
     be0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     be4:	ea000063 	b	d78 <printf+0x1f8>
     be8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     bec:	e6ef3073 	uxtb	r3, r3
     bf0:	e1a01003 	mov	r1, r3
     bf4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     bf8:	ebffff84 	bl	a10 <putc>
     bfc:	ea00005d 	b	d78 <printf+0x1f8>
     c00:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c04:	e3530025 	cmp	r3, #37	@ 0x25
     c08:	1a00005a 	bne	d78 <printf+0x1f8>
     c0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c10:	e3530064 	cmp	r3, #100	@ 0x64
     c14:	1a00000a 	bne	c44 <printf+0xc4>
     c18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c1c:	e5933000 	ldr	r3, [r3]
     c20:	e1a01003 	mov	r1, r3
     c24:	e3a03001 	mov	r3, #1
     c28:	e3a0200a 	mov	r2, #10
     c2c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c30:	ebffff84 	bl	a48 <printint>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e2833004 	add	r3, r3, #4
     c3c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c40:	ea00004a 	b	d70 <printf+0x1f0>
     c44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c48:	e3530078 	cmp	r3, #120	@ 0x78
     c4c:	0a000002 	beq	c5c <printf+0xdc>
     c50:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c54:	e3530070 	cmp	r3, #112	@ 0x70
     c58:	1a00000a 	bne	c88 <printf+0x108>
     c5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c60:	e5933000 	ldr	r3, [r3]
     c64:	e1a01003 	mov	r1, r3
     c68:	e3a03000 	mov	r3, #0
     c6c:	e3a02010 	mov	r2, #16
     c70:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     c74:	ebffff73 	bl	a48 <printint>
     c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c7c:	e2833004 	add	r3, r3, #4
     c80:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c84:	ea000039 	b	d70 <printf+0x1f0>
     c88:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c8c:	e3530073 	cmp	r3, #115	@ 0x73
     c90:	1a000018 	bne	cf8 <printf+0x178>
     c94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c98:	e5933000 	ldr	r3, [r3]
     c9c:	e50b300c 	str	r3, [fp, #-12]
     ca0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ca4:	e2833004 	add	r3, r3, #4
     ca8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     cac:	e51b300c 	ldr	r3, [fp, #-12]
     cb0:	e3530000 	cmp	r3, #0
     cb4:	1a00000a 	bne	ce4 <printf+0x164>
     cb8:	e59f30f4 	ldr	r3, [pc, #244]	@ db4 <printf+0x234>
     cbc:	e50b300c 	str	r3, [fp, #-12]
     cc0:	ea000007 	b	ce4 <printf+0x164>
     cc4:	e51b300c 	ldr	r3, [fp, #-12]
     cc8:	e5d33000 	ldrb	r3, [r3]
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cd4:	ebffff4d 	bl	a10 <putc>
     cd8:	e51b300c 	ldr	r3, [fp, #-12]
     cdc:	e2833001 	add	r3, r3, #1
     ce0:	e50b300c 	str	r3, [fp, #-12]
     ce4:	e51b300c 	ldr	r3, [fp, #-12]
     ce8:	e5d33000 	ldrb	r3, [r3]
     cec:	e3530000 	cmp	r3, #0
     cf0:	1afffff3 	bne	cc4 <printf+0x144>
     cf4:	ea00001d 	b	d70 <printf+0x1f0>
     cf8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cfc:	e3530063 	cmp	r3, #99	@ 0x63
     d00:	1a000009 	bne	d2c <printf+0x1ac>
     d04:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d08:	e5933000 	ldr	r3, [r3]
     d0c:	e6ef3073 	uxtb	r3, r3
     d10:	e1a01003 	mov	r1, r3
     d14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d18:	ebffff3c 	bl	a10 <putc>
     d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d20:	e2833004 	add	r3, r3, #4
     d24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d28:	ea000010 	b	d70 <printf+0x1f0>
     d2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d30:	e3530025 	cmp	r3, #37	@ 0x25
     d34:	1a000005 	bne	d50 <printf+0x1d0>
     d38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d3c:	e6ef3073 	uxtb	r3, r3
     d40:	e1a01003 	mov	r1, r3
     d44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d48:	ebffff30 	bl	a10 <putc>
     d4c:	ea000007 	b	d70 <printf+0x1f0>
     d50:	e3a01025 	mov	r1, #37	@ 0x25
     d54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d58:	ebffff2c 	bl	a10 <putc>
     d5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d60:	e6ef3073 	uxtb	r3, r3
     d64:	e1a01003 	mov	r1, r3
     d68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d6c:	ebffff27 	bl	a10 <putc>
     d70:	e3a03000 	mov	r3, #0
     d74:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d78:	e51b3010 	ldr	r3, [fp, #-16]
     d7c:	e2833001 	add	r3, r3, #1
     d80:	e50b3010 	str	r3, [fp, #-16]
     d84:	e59b2004 	ldr	r2, [fp, #4]
     d88:	e51b3010 	ldr	r3, [fp, #-16]
     d8c:	e0823003 	add	r3, r2, r3
     d90:	e5d33000 	ldrb	r3, [r3]
     d94:	e3530000 	cmp	r3, #0
     d98:	1affff84 	bne	bb0 <printf+0x30>
     d9c:	e1a00000 	nop			@ (mov r0, r0)
     da0:	e1a00000 	nop			@ (mov r0, r0)
     da4:	e24bd004 	sub	sp, fp, #4
     da8:	e8bd4800 	pop	{fp, lr}
     dac:	e28dd00c 	add	sp, sp, #12
     db0:	e12fff1e 	bx	lr
     db4:	0000127c 	.word	0x0000127c

00000db8 <free>:
     db8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     dbc:	e28db000 	add	fp, sp, #0
     dc0:	e24dd014 	sub	sp, sp, #20
     dc4:	e50b0010 	str	r0, [fp, #-16]
     dc8:	e51b3010 	ldr	r3, [fp, #-16]
     dcc:	e2433008 	sub	r3, r3, #8
     dd0:	e50b300c 	str	r3, [fp, #-12]
     dd4:	e59f3154 	ldr	r3, [pc, #340]	@ f30 <free+0x178>
     dd8:	e5933000 	ldr	r3, [r3]
     ddc:	e50b3008 	str	r3, [fp, #-8]
     de0:	ea000010 	b	e28 <free+0x70>
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e5933000 	ldr	r3, [r3]
     dec:	e51b2008 	ldr	r2, [fp, #-8]
     df0:	e1520003 	cmp	r2, r3
     df4:	3a000008 	bcc	e1c <free+0x64>
     df8:	e51b200c 	ldr	r2, [fp, #-12]
     dfc:	e51b3008 	ldr	r3, [fp, #-8]
     e00:	e1520003 	cmp	r2, r3
     e04:	8a000010 	bhi	e4c <free+0x94>
     e08:	e51b3008 	ldr	r3, [fp, #-8]
     e0c:	e5933000 	ldr	r3, [r3]
     e10:	e51b200c 	ldr	r2, [fp, #-12]
     e14:	e1520003 	cmp	r2, r3
     e18:	3a00000b 	bcc	e4c <free+0x94>
     e1c:	e51b3008 	ldr	r3, [fp, #-8]
     e20:	e5933000 	ldr	r3, [r3]
     e24:	e50b3008 	str	r3, [fp, #-8]
     e28:	e51b200c 	ldr	r2, [fp, #-12]
     e2c:	e51b3008 	ldr	r3, [fp, #-8]
     e30:	e1520003 	cmp	r2, r3
     e34:	9affffea 	bls	de4 <free+0x2c>
     e38:	e51b3008 	ldr	r3, [fp, #-8]
     e3c:	e5933000 	ldr	r3, [r3]
     e40:	e51b200c 	ldr	r2, [fp, #-12]
     e44:	e1520003 	cmp	r2, r3
     e48:	2affffe5 	bcs	de4 <free+0x2c>
     e4c:	e51b300c 	ldr	r3, [fp, #-12]
     e50:	e5933004 	ldr	r3, [r3, #4]
     e54:	e1a03183 	lsl	r3, r3, #3
     e58:	e51b200c 	ldr	r2, [fp, #-12]
     e5c:	e0822003 	add	r2, r2, r3
     e60:	e51b3008 	ldr	r3, [fp, #-8]
     e64:	e5933000 	ldr	r3, [r3]
     e68:	e1520003 	cmp	r2, r3
     e6c:	1a00000d 	bne	ea8 <free+0xf0>
     e70:	e51b300c 	ldr	r3, [fp, #-12]
     e74:	e5932004 	ldr	r2, [r3, #4]
     e78:	e51b3008 	ldr	r3, [fp, #-8]
     e7c:	e5933000 	ldr	r3, [r3]
     e80:	e5933004 	ldr	r3, [r3, #4]
     e84:	e0822003 	add	r2, r2, r3
     e88:	e51b300c 	ldr	r3, [fp, #-12]
     e8c:	e5832004 	str	r2, [r3, #4]
     e90:	e51b3008 	ldr	r3, [fp, #-8]
     e94:	e5933000 	ldr	r3, [r3]
     e98:	e5932000 	ldr	r2, [r3]
     e9c:	e51b300c 	ldr	r3, [fp, #-12]
     ea0:	e5832000 	str	r2, [r3]
     ea4:	ea000003 	b	eb8 <free+0x100>
     ea8:	e51b3008 	ldr	r3, [fp, #-8]
     eac:	e5932000 	ldr	r2, [r3]
     eb0:	e51b300c 	ldr	r3, [fp, #-12]
     eb4:	e5832000 	str	r2, [r3]
     eb8:	e51b3008 	ldr	r3, [fp, #-8]
     ebc:	e5933004 	ldr	r3, [r3, #4]
     ec0:	e1a03183 	lsl	r3, r3, #3
     ec4:	e51b2008 	ldr	r2, [fp, #-8]
     ec8:	e0823003 	add	r3, r2, r3
     ecc:	e51b200c 	ldr	r2, [fp, #-12]
     ed0:	e1520003 	cmp	r2, r3
     ed4:	1a00000b 	bne	f08 <free+0x150>
     ed8:	e51b3008 	ldr	r3, [fp, #-8]
     edc:	e5932004 	ldr	r2, [r3, #4]
     ee0:	e51b300c 	ldr	r3, [fp, #-12]
     ee4:	e5933004 	ldr	r3, [r3, #4]
     ee8:	e0822003 	add	r2, r2, r3
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e5832004 	str	r2, [r3, #4]
     ef4:	e51b300c 	ldr	r3, [fp, #-12]
     ef8:	e5932000 	ldr	r2, [r3]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e5832000 	str	r2, [r3]
     f04:	ea000002 	b	f14 <free+0x15c>
     f08:	e51b3008 	ldr	r3, [fp, #-8]
     f0c:	e51b200c 	ldr	r2, [fp, #-12]
     f10:	e5832000 	str	r2, [r3]
     f14:	e59f2014 	ldr	r2, [pc, #20]	@ f30 <free+0x178>
     f18:	e51b3008 	ldr	r3, [fp, #-8]
     f1c:	e5823000 	str	r3, [r2]
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	e28bd000 	add	sp, fp, #0
     f28:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     f2c:	e12fff1e 	bx	lr
     f30:	000014a0 	.word	0x000014a0

00000f34 <morecore>:
     f34:	e92d4800 	push	{fp, lr}
     f38:	e28db004 	add	fp, sp, #4
     f3c:	e24dd010 	sub	sp, sp, #16
     f40:	e50b0010 	str	r0, [fp, #-16]
     f44:	e51b3010 	ldr	r3, [fp, #-16]
     f48:	e3530a01 	cmp	r3, #4096	@ 0x1000
     f4c:	2a000001 	bcs	f58 <morecore+0x24>
     f50:	e3a03a01 	mov	r3, #4096	@ 0x1000
     f54:	e50b3010 	str	r3, [fp, #-16]
     f58:	e51b3010 	ldr	r3, [fp, #-16]
     f5c:	e1a03183 	lsl	r3, r3, #3
     f60:	e1a00003 	mov	r0, r3
     f64:	ebfffe8e 	bl	9a4 <sbrk>
     f68:	e50b0008 	str	r0, [fp, #-8]
     f6c:	e51b3008 	ldr	r3, [fp, #-8]
     f70:	e3730001 	cmn	r3, #1
     f74:	1a000001 	bne	f80 <morecore+0x4c>
     f78:	e3a03000 	mov	r3, #0
     f7c:	ea00000a 	b	fac <morecore+0x78>
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e50b300c 	str	r3, [fp, #-12]
     f88:	e51b300c 	ldr	r3, [fp, #-12]
     f8c:	e51b2010 	ldr	r2, [fp, #-16]
     f90:	e5832004 	str	r2, [r3, #4]
     f94:	e51b300c 	ldr	r3, [fp, #-12]
     f98:	e2833008 	add	r3, r3, #8
     f9c:	e1a00003 	mov	r0, r3
     fa0:	ebffff84 	bl	db8 <free>
     fa4:	e59f300c 	ldr	r3, [pc, #12]	@ fb8 <morecore+0x84>
     fa8:	e5933000 	ldr	r3, [r3]
     fac:	e1a00003 	mov	r0, r3
     fb0:	e24bd004 	sub	sp, fp, #4
     fb4:	e8bd8800 	pop	{fp, pc}
     fb8:	000014a0 	.word	0x000014a0

00000fbc <malloc>:
     fbc:	e92d4800 	push	{fp, lr}
     fc0:	e28db004 	add	fp, sp, #4
     fc4:	e24dd018 	sub	sp, sp, #24
     fc8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     fcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     fd0:	e2833007 	add	r3, r3, #7
     fd4:	e1a031a3 	lsr	r3, r3, #3
     fd8:	e2833001 	add	r3, r3, #1
     fdc:	e50b3010 	str	r3, [fp, #-16]
     fe0:	e59f3134 	ldr	r3, [pc, #308]	@ 111c <malloc+0x160>
     fe4:	e5933000 	ldr	r3, [r3]
     fe8:	e50b300c 	str	r3, [fp, #-12]
     fec:	e51b300c 	ldr	r3, [fp, #-12]
     ff0:	e3530000 	cmp	r3, #0
     ff4:	1a00000b 	bne	1028 <malloc+0x6c>
     ff8:	e59f3120 	ldr	r3, [pc, #288]	@ 1120 <malloc+0x164>
     ffc:	e50b300c 	str	r3, [fp, #-12]
    1000:	e59f2114 	ldr	r2, [pc, #276]	@ 111c <malloc+0x160>
    1004:	e51b300c 	ldr	r3, [fp, #-12]
    1008:	e5823000 	str	r3, [r2]
    100c:	e59f3108 	ldr	r3, [pc, #264]	@ 111c <malloc+0x160>
    1010:	e5933000 	ldr	r3, [r3]
    1014:	e59f2104 	ldr	r2, [pc, #260]	@ 1120 <malloc+0x164>
    1018:	e5823000 	str	r3, [r2]
    101c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1120 <malloc+0x164>
    1020:	e3a02000 	mov	r2, #0
    1024:	e5832004 	str	r2, [r3, #4]
    1028:	e51b300c 	ldr	r3, [fp, #-12]
    102c:	e5933000 	ldr	r3, [r3]
    1030:	e50b3008 	str	r3, [fp, #-8]
    1034:	e51b3008 	ldr	r3, [fp, #-8]
    1038:	e5933004 	ldr	r3, [r3, #4]
    103c:	e51b2010 	ldr	r2, [fp, #-16]
    1040:	e1520003 	cmp	r2, r3
    1044:	8a00001e 	bhi	10c4 <malloc+0x108>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e5933004 	ldr	r3, [r3, #4]
    1050:	e51b2010 	ldr	r2, [fp, #-16]
    1054:	e1520003 	cmp	r2, r3
    1058:	1a000004 	bne	1070 <malloc+0xb4>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5932000 	ldr	r2, [r3]
    1064:	e51b300c 	ldr	r3, [fp, #-12]
    1068:	e5832000 	str	r2, [r3]
    106c:	ea00000e 	b	10ac <malloc+0xf0>
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e5932004 	ldr	r2, [r3, #4]
    1078:	e51b3010 	ldr	r3, [fp, #-16]
    107c:	e0422003 	sub	r2, r2, r3
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5832004 	str	r2, [r3, #4]
    1088:	e51b3008 	ldr	r3, [fp, #-8]
    108c:	e5933004 	ldr	r3, [r3, #4]
    1090:	e1a03183 	lsl	r3, r3, #3
    1094:	e51b2008 	ldr	r2, [fp, #-8]
    1098:	e0823003 	add	r3, r2, r3
    109c:	e50b3008 	str	r3, [fp, #-8]
    10a0:	e51b3008 	ldr	r3, [fp, #-8]
    10a4:	e51b2010 	ldr	r2, [fp, #-16]
    10a8:	e5832004 	str	r2, [r3, #4]
    10ac:	e59f2068 	ldr	r2, [pc, #104]	@ 111c <malloc+0x160>
    10b0:	e51b300c 	ldr	r3, [fp, #-12]
    10b4:	e5823000 	str	r3, [r2]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e2833008 	add	r3, r3, #8
    10c0:	ea000012 	b	1110 <malloc+0x154>
    10c4:	e59f3050 	ldr	r3, [pc, #80]	@ 111c <malloc+0x160>
    10c8:	e5933000 	ldr	r3, [r3]
    10cc:	e51b2008 	ldr	r2, [fp, #-8]
    10d0:	e1520003 	cmp	r2, r3
    10d4:	1a000007 	bne	10f8 <malloc+0x13c>
    10d8:	e51b0010 	ldr	r0, [fp, #-16]
    10dc:	ebffff94 	bl	f34 <morecore>
    10e0:	e50b0008 	str	r0, [fp, #-8]
    10e4:	e51b3008 	ldr	r3, [fp, #-8]
    10e8:	e3530000 	cmp	r3, #0
    10ec:	1a000001 	bne	10f8 <malloc+0x13c>
    10f0:	e3a03000 	mov	r3, #0
    10f4:	ea000005 	b	1110 <malloc+0x154>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e50b300c 	str	r3, [fp, #-12]
    1100:	e51b3008 	ldr	r3, [fp, #-8]
    1104:	e5933000 	ldr	r3, [r3]
    1108:	e50b3008 	str	r3, [fp, #-8]
    110c:	eaffffc8 	b	1034 <malloc+0x78>
    1110:	e1a00003 	mov	r0, r3
    1114:	e24bd004 	sub	sp, fp, #4
    1118:	e8bd8800 	pop	{fp, pc}
    111c:	000014a0 	.word	0x000014a0
    1120:	00001498 	.word	0x00001498

00001124 <__udivsi3>:
    1124:	e2512001 	subs	r2, r1, #1
    1128:	012fff1e 	bxeq	lr
    112c:	3a000036 	bcc	120c <__udivsi3+0xe8>
    1130:	e1500001 	cmp	r0, r1
    1134:	9a000022 	bls	11c4 <__udivsi3+0xa0>
    1138:	e1110002 	tst	r1, r2
    113c:	0a000023 	beq	11d0 <__udivsi3+0xac>
    1140:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1144:	01a01181 	lsleq	r1, r1, #3
    1148:	03a03008 	moveq	r3, #8
    114c:	13a03001 	movne	r3, #1
    1150:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1154:	31510000 	cmpcc	r1, r0
    1158:	31a01201 	lslcc	r1, r1, #4
    115c:	31a03203 	lslcc	r3, r3, #4
    1160:	3afffffa 	bcc	1150 <__udivsi3+0x2c>
    1164:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1168:	31510000 	cmpcc	r1, r0
    116c:	31a01081 	lslcc	r1, r1, #1
    1170:	31a03083 	lslcc	r3, r3, #1
    1174:	3afffffa 	bcc	1164 <__udivsi3+0x40>
    1178:	e3a02000 	mov	r2, #0
    117c:	e1500001 	cmp	r0, r1
    1180:	20400001 	subcs	r0, r0, r1
    1184:	21822003 	orrcs	r2, r2, r3
    1188:	e15000a1 	cmp	r0, r1, lsr #1
    118c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1190:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1194:	e1500121 	cmp	r0, r1, lsr #2
    1198:	20400121 	subcs	r0, r0, r1, lsr #2
    119c:	21822123 	orrcs	r2, r2, r3, lsr #2
    11a0:	e15001a1 	cmp	r0, r1, lsr #3
    11a4:	204001a1 	subcs	r0, r0, r1, lsr #3
    11a8:	218221a3 	orrcs	r2, r2, r3, lsr #3
    11ac:	e3500000 	cmp	r0, #0
    11b0:	11b03223 	lsrsne	r3, r3, #4
    11b4:	11a01221 	lsrne	r1, r1, #4
    11b8:	1affffef 	bne	117c <__udivsi3+0x58>
    11bc:	e1a00002 	mov	r0, r2
    11c0:	e12fff1e 	bx	lr
    11c4:	03a00001 	moveq	r0, #1
    11c8:	13a00000 	movne	r0, #0
    11cc:	e12fff1e 	bx	lr
    11d0:	e3510801 	cmp	r1, #65536	@ 0x10000
    11d4:	21a01821 	lsrcs	r1, r1, #16
    11d8:	23a02010 	movcs	r2, #16
    11dc:	33a02000 	movcc	r2, #0
    11e0:	e3510c01 	cmp	r1, #256	@ 0x100
    11e4:	21a01421 	lsrcs	r1, r1, #8
    11e8:	22822008 	addcs	r2, r2, #8
    11ec:	e3510010 	cmp	r1, #16
    11f0:	21a01221 	lsrcs	r1, r1, #4
    11f4:	22822004 	addcs	r2, r2, #4
    11f8:	e3510004 	cmp	r1, #4
    11fc:	82822003 	addhi	r2, r2, #3
    1200:	908220a1 	addls	r2, r2, r1, lsr #1
    1204:	e1a00230 	lsr	r0, r0, r2
    1208:	e12fff1e 	bx	lr
    120c:	e3500000 	cmp	r0, #0
    1210:	13e00000 	mvnne	r0, #0
    1214:	ea000007 	b	1238 <__aeabi_idiv0>

00001218 <__aeabi_uidivmod>:
    1218:	e3510000 	cmp	r1, #0
    121c:	0afffffa 	beq	120c <__udivsi3+0xe8>
    1220:	e92d4003 	push	{r0, r1, lr}
    1224:	ebffffbe 	bl	1124 <__udivsi3>
    1228:	e8bd4006 	pop	{r1, r2, lr}
    122c:	e0030092 	mul	r3, r2, r0
    1230:	e0411003 	sub	r1, r1, r3
    1234:	e12fff1e 	bx	lr

00001238 <__aeabi_idiv0>:
    1238:	e12fff1e 	bx	lr
