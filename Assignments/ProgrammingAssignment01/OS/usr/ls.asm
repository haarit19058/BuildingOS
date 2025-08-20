
_ls:     file format elf32-littlearm


Disassembly of section .text:

00000000 <fmtname>:
       0:	e92d4810 	push	{r4, fp, lr}
       4:	e28db008 	add	fp, sp, #8
       8:	e24dd014 	sub	sp, sp, #20
       c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
      10:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
      14:	eb00011a 	bl	484 <strlen>
      18:	e1a02000 	mov	r2, r0
      1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      20:	e0833002 	add	r3, r3, r2
      24:	e50b3010 	str	r3, [fp, #-16]
      28:	ea000002 	b	38 <fmtname+0x38>
      2c:	e51b3010 	ldr	r3, [fp, #-16]
      30:	e2433001 	sub	r3, r3, #1
      34:	e50b3010 	str	r3, [fp, #-16]
      38:	e51b2010 	ldr	r2, [fp, #-16]
      3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      40:	e1520003 	cmp	r2, r3
      44:	3a000003 	bcc	58 <fmtname+0x58>
      48:	e51b3010 	ldr	r3, [fp, #-16]
      4c:	e5d33000 	ldrb	r3, [r3]
      50:	e353002f 	cmp	r3, #47	@ 0x2f
      54:	1afffff4 	bne	2c <fmtname+0x2c>
      58:	e51b3010 	ldr	r3, [fp, #-16]
      5c:	e2833001 	add	r3, r3, #1
      60:	e50b3010 	str	r3, [fp, #-16]
      64:	e51b0010 	ldr	r0, [fp, #-16]
      68:	eb000105 	bl	484 <strlen>
      6c:	e1a03000 	mov	r3, r0
      70:	e353000d 	cmp	r3, #13
      74:	9a000001 	bls	80 <fmtname+0x80>
      78:	e51b3010 	ldr	r3, [fp, #-16]
      7c:	ea000014 	b	d4 <fmtname+0xd4>
      80:	e51b0010 	ldr	r0, [fp, #-16]
      84:	eb0000fe 	bl	484 <strlen>
      88:	e1a03000 	mov	r3, r0
      8c:	e1a02003 	mov	r2, r3
      90:	e51b1010 	ldr	r1, [fp, #-16]
      94:	e59f0044 	ldr	r0, [pc, #68]	@ e0 <fmtname+0xe0>
      98:	eb0001da 	bl	808 <memmove>
      9c:	e51b0010 	ldr	r0, [fp, #-16]
      a0:	eb0000f7 	bl	484 <strlen>
      a4:	e1a03000 	mov	r3, r0
      a8:	e59f2030 	ldr	r2, [pc, #48]	@ e0 <fmtname+0xe0>
      ac:	e0834002 	add	r4, r3, r2
      b0:	e51b0010 	ldr	r0, [fp, #-16]
      b4:	eb0000f2 	bl	484 <strlen>
      b8:	e1a03000 	mov	r3, r0
      bc:	e263300e 	rsb	r3, r3, #14
      c0:	e1a02003 	mov	r2, r3
      c4:	e3a01020 	mov	r1, #32
      c8:	e1a00004 	mov	r0, r4
      cc:	eb000101 	bl	4d8 <memset>
      d0:	e59f3008 	ldr	r3, [pc, #8]	@ e0 <fmtname+0xe0>
      d4:	e1a00003 	mov	r0, r3
      d8:	e24bd008 	sub	sp, fp, #8
      dc:	e8bd8810 	pop	{r4, fp, pc}
      e0:	0000142c 	.word	0x0000142c

000000e4 <ls>:
      e4:	e92d4800 	push	{fp, lr}
      e8:	e28db004 	add	fp, sp, #4
      ec:	e24ddd09 	sub	sp, sp, #576	@ 0x240
      f0:	e50b0238 	str	r0, [fp, #-568]	@ 0xfffffdc8
      f4:	e3a01000 	mov	r1, #0
      f8:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
      fc:	eb00022f 	bl	9c0 <open>
     100:	e50b0008 	str	r0, [fp, #-8]
     104:	e51b3008 	ldr	r3, [fp, #-8]
     108:	e3530000 	cmp	r3, #0
     10c:	aa000004 	bge	124 <ls+0x40>
     110:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     114:	e59f1200 	ldr	r1, [pc, #512]	@ 31c <ls+0x238>
     118:	e3a00002 	mov	r0, #2
     11c:	eb0002f8 	bl	d04 <printf>
     120:	ea00007b 	b	314 <ls+0x230>
     124:	e24b3e23 	sub	r3, fp, #560	@ 0x230
     128:	e1a01003 	mov	r1, r3
     12c:	e51b0008 	ldr	r0, [fp, #-8]
     130:	eb00023d 	bl	a2c <fstat>
     134:	e1a03000 	mov	r3, r0
     138:	e3530000 	cmp	r3, #0
     13c:	aa000006 	bge	15c <ls+0x78>
     140:	e51b2238 	ldr	r2, [fp, #-568]	@ 0xfffffdc8
     144:	e59f11d4 	ldr	r1, [pc, #468]	@ 320 <ls+0x23c>
     148:	e3a00002 	mov	r0, #2
     14c:	eb0002ec 	bl	d04 <printf>
     150:	e51b0008 	ldr	r0, [fp, #-8]
     154:	eb0001fe 	bl	954 <close>
     158:	ea00006d 	b	314 <ls+0x230>
     15c:	e24b3004 	sub	r3, fp, #4
     160:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     164:	e1d330f0 	ldrsh	r3, [r3]
     168:	e3530001 	cmp	r3, #1
     16c:	0a000012 	beq	1bc <ls+0xd8>
     170:	e3530002 	cmp	r3, #2
     174:	1a000064 	bne	30c <ls+0x228>
     178:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     17c:	ebffff9f 	bl	0 <fmtname>
     180:	e1a01000 	mov	r1, r0
     184:	e24b3004 	sub	r3, fp, #4
     188:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     18c:	e1d330f0 	ldrsh	r3, [r3]
     190:	e1a00003 	mov	r0, r3
     194:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     198:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     19c:	e58d2004 	str	r2, [sp, #4]
     1a0:	e58d3000 	str	r3, [sp]
     1a4:	e1a03000 	mov	r3, r0
     1a8:	e1a02001 	mov	r2, r1
     1ac:	e59f1170 	ldr	r1, [pc, #368]	@ 324 <ls+0x240>
     1b0:	e3a00001 	mov	r0, #1
     1b4:	eb0002d2 	bl	d04 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002c8 	bl	d04 <printf>
     1e0:	ea000049 	b	30c <ls+0x228>
     1e4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1e8:	e51b1238 	ldr	r1, [fp, #-568]	@ 0xfffffdc8
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb00006b 	bl	3a4 <strcpy>
     1f4:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     1f8:	e1a00003 	mov	r0, r3
     1fc:	eb0000a0 	bl	484 <strlen>
     200:	e1a02000 	mov	r2, r0
     204:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     208:	e0833002 	add	r3, r3, r2
     20c:	e50b300c 	str	r3, [fp, #-12]
     210:	e51b300c 	ldr	r3, [fp, #-12]
     214:	e2832001 	add	r2, r3, #1
     218:	e50b200c 	str	r2, [fp, #-12]
     21c:	e3a0202f 	mov	r2, #47	@ 0x2f
     220:	e5c32000 	strb	r2, [r3]
     224:	ea00002f 	b	2e8 <ls+0x204>
     228:	e24b3004 	sub	r3, fp, #4
     22c:	e2433f86 	sub	r3, r3, #536	@ 0x218
     230:	e1d330b0 	ldrh	r3, [r3]
     234:	e3530000 	cmp	r3, #0
     238:	0a000029 	beq	2e4 <ls+0x200>
     23c:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     240:	e2833002 	add	r3, r3, #2
     244:	e3a0200e 	mov	r2, #14
     248:	e1a01003 	mov	r1, r3
     24c:	e51b000c 	ldr	r0, [fp, #-12]
     250:	eb00016c 	bl	808 <memmove>
     254:	e51b300c 	ldr	r3, [fp, #-12]
     258:	e283300e 	add	r3, r3, #14
     25c:	e3a02000 	mov	r2, #0
     260:	e5c32000 	strb	r2, [r3]
     264:	e24b2e23 	sub	r2, fp, #560	@ 0x230
     268:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     26c:	e1a01002 	mov	r1, r2
     270:	e1a00003 	mov	r0, r3
     274:	eb00012a 	bl	724 <stat>
     278:	e1a03000 	mov	r3, r0
     27c:	e3530000 	cmp	r3, #0
     280:	aa000005 	bge	29c <ls+0x1b8>
     284:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     288:	e1a02003 	mov	r2, r3
     28c:	e59f108c 	ldr	r1, [pc, #140]	@ 320 <ls+0x23c>
     290:	e3a00001 	mov	r0, #1
     294:	eb00029a 	bl	d04 <printf>
     298:	ea000012 	b	2e8 <ls+0x204>
     29c:	e24b3f83 	sub	r3, fp, #524	@ 0x20c
     2a0:	e1a00003 	mov	r0, r3
     2a4:	ebffff55 	bl	0 <fmtname>
     2a8:	e1a01000 	mov	r1, r0
     2ac:	e24b3004 	sub	r3, fp, #4
     2b0:	e2433f8b 	sub	r3, r3, #556	@ 0x22c
     2b4:	e1d330f0 	ldrsh	r3, [r3]
     2b8:	e1a00003 	mov	r0, r3
     2bc:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
     2c0:	e51b2220 	ldr	r2, [fp, #-544]	@ 0xfffffde0
     2c4:	e58d2004 	str	r2, [sp, #4]
     2c8:	e58d3000 	str	r3, [sp]
     2cc:	e1a03000 	mov	r3, r0
     2d0:	e1a02001 	mov	r2, r1
     2d4:	e59f1048 	ldr	r1, [pc, #72]	@ 324 <ls+0x240>
     2d8:	e3a00001 	mov	r0, #1
     2dc:	eb000288 	bl	d04 <printf>
     2e0:	ea000000 	b	2e8 <ls+0x204>
     2e4:	e1a00000 	nop			@ (mov r0, r0)
     2e8:	e24b3f87 	sub	r3, fp, #540	@ 0x21c
     2ec:	e3a02010 	mov	r2, #16
     2f0:	e1a01003 	mov	r1, r3
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb000183 	bl	90c <read>
     2fc:	e1a03000 	mov	r3, r0
     300:	e3530010 	cmp	r3, #16
     304:	0affffc7 	beq	228 <ls+0x144>
     308:	e1a00000 	nop			@ (mov r0, r0)
     30c:	e51b0008 	ldr	r0, [fp, #-8]
     310:	eb00018f 	bl	954 <close>
     314:	e24bd004 	sub	sp, fp, #4
     318:	e8bd8800 	pop	{fp, pc}
     31c:	000013c0 	.word	0x000013c0
     320:	000013d4 	.word	0x000013d4
     324:	000013e8 	.word	0x000013e8
     328:	000013f8 	.word	0x000013f8

0000032c <main>:
     32c:	e92d4800 	push	{fp, lr}
     330:	e28db004 	add	fp, sp, #4
     334:	e24dd010 	sub	sp, sp, #16
     338:	e50b0010 	str	r0, [fp, #-16]
     33c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     340:	e51b3010 	ldr	r3, [fp, #-16]
     344:	e3530001 	cmp	r3, #1
     348:	ca000002 	bgt	358 <main+0x2c>
     34c:	e59f004c 	ldr	r0, [pc, #76]	@ 3a0 <main+0x74>
     350:	ebffff63 	bl	e4 <ls>
     354:	eb000151 	bl	8a0 <exit>
     358:	e3a03001 	mov	r3, #1
     35c:	e50b3008 	str	r3, [fp, #-8]
     360:	ea000009 	b	38c <main+0x60>
     364:	e51b3008 	ldr	r3, [fp, #-8]
     368:	e1a03103 	lsl	r3, r3, #2
     36c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     370:	e0823003 	add	r3, r2, r3
     374:	e5933000 	ldr	r3, [r3]
     378:	e1a00003 	mov	r0, r3
     37c:	ebffff58 	bl	e4 <ls>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e2833001 	add	r3, r3, #1
     388:	e50b3008 	str	r3, [fp, #-8]
     38c:	e51b2008 	ldr	r2, [fp, #-8]
     390:	e51b3010 	ldr	r3, [fp, #-16]
     394:	e1520003 	cmp	r2, r3
     398:	bafffff1 	blt	364 <main+0x38>
     39c:	eb00013f 	bl	8a0 <exit>
     3a0:	0000140c 	.word	0x0000140c

000003a4 <strcpy>:
     3a4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3a8:	e28db000 	add	fp, sp, #0
     3ac:	e24dd014 	sub	sp, sp, #20
     3b0:	e50b0010 	str	r0, [fp, #-16]
     3b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     3b8:	e51b3010 	ldr	r3, [fp, #-16]
     3bc:	e50b3008 	str	r3, [fp, #-8]
     3c0:	e1a00000 	nop			@ (mov r0, r0)
     3c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     3c8:	e2823001 	add	r3, r2, #1
     3cc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     3d0:	e51b3010 	ldr	r3, [fp, #-16]
     3d4:	e2831001 	add	r1, r3, #1
     3d8:	e50b1010 	str	r1, [fp, #-16]
     3dc:	e5d22000 	ldrb	r2, [r2]
     3e0:	e5c32000 	strb	r2, [r3]
     3e4:	e5d33000 	ldrb	r3, [r3]
     3e8:	e3530000 	cmp	r3, #0
     3ec:	1afffff4 	bne	3c4 <strcpy+0x20>
     3f0:	e51b3008 	ldr	r3, [fp, #-8]
     3f4:	e1a00003 	mov	r0, r3
     3f8:	e28bd000 	add	sp, fp, #0
     3fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     400:	e12fff1e 	bx	lr

00000404 <strcmp>:
     404:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     408:	e28db000 	add	fp, sp, #0
     40c:	e24dd00c 	sub	sp, sp, #12
     410:	e50b0008 	str	r0, [fp, #-8]
     414:	e50b100c 	str	r1, [fp, #-12]
     418:	ea000005 	b	434 <strcmp+0x30>
     41c:	e51b3008 	ldr	r3, [fp, #-8]
     420:	e2833001 	add	r3, r3, #1
     424:	e50b3008 	str	r3, [fp, #-8]
     428:	e51b300c 	ldr	r3, [fp, #-12]
     42c:	e2833001 	add	r3, r3, #1
     430:	e50b300c 	str	r3, [fp, #-12]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e5d33000 	ldrb	r3, [r3]
     43c:	e3530000 	cmp	r3, #0
     440:	0a000005 	beq	45c <strcmp+0x58>
     444:	e51b3008 	ldr	r3, [fp, #-8]
     448:	e5d32000 	ldrb	r2, [r3]
     44c:	e51b300c 	ldr	r3, [fp, #-12]
     450:	e5d33000 	ldrb	r3, [r3]
     454:	e1520003 	cmp	r2, r3
     458:	0affffef 	beq	41c <strcmp+0x18>
     45c:	e51b3008 	ldr	r3, [fp, #-8]
     460:	e5d33000 	ldrb	r3, [r3]
     464:	e1a02003 	mov	r2, r3
     468:	e51b300c 	ldr	r3, [fp, #-12]
     46c:	e5d33000 	ldrb	r3, [r3]
     470:	e0423003 	sub	r3, r2, r3
     474:	e1a00003 	mov	r0, r3
     478:	e28bd000 	add	sp, fp, #0
     47c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     480:	e12fff1e 	bx	lr

00000484 <strlen>:
     484:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     488:	e28db000 	add	fp, sp, #0
     48c:	e24dd014 	sub	sp, sp, #20
     490:	e50b0010 	str	r0, [fp, #-16]
     494:	e3a03000 	mov	r3, #0
     498:	e50b3008 	str	r3, [fp, #-8]
     49c:	ea000002 	b	4ac <strlen+0x28>
     4a0:	e51b3008 	ldr	r3, [fp, #-8]
     4a4:	e2833001 	add	r3, r3, #1
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	e51b3008 	ldr	r3, [fp, #-8]
     4b0:	e51b2010 	ldr	r2, [fp, #-16]
     4b4:	e0823003 	add	r3, r2, r3
     4b8:	e5d33000 	ldrb	r3, [r3]
     4bc:	e3530000 	cmp	r3, #0
     4c0:	1afffff6 	bne	4a0 <strlen+0x1c>
     4c4:	e51b3008 	ldr	r3, [fp, #-8]
     4c8:	e1a00003 	mov	r0, r3
     4cc:	e28bd000 	add	sp, fp, #0
     4d0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4d4:	e12fff1e 	bx	lr

000004d8 <memset>:
     4d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4dc:	e28db000 	add	fp, sp, #0
     4e0:	e24dd024 	sub	sp, sp, #36	@ 0x24
     4e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     4e8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     4ec:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     4f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4f4:	e50b3008 	str	r3, [fp, #-8]
     4f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     4fc:	e54b300d 	strb	r3, [fp, #-13]
     500:	e55b200d 	ldrb	r2, [fp, #-13]
     504:	e1a03002 	mov	r3, r2
     508:	e1a03403 	lsl	r3, r3, #8
     50c:	e0833002 	add	r3, r3, r2
     510:	e1a03803 	lsl	r3, r3, #16
     514:	e1a02003 	mov	r2, r3
     518:	e55b300d 	ldrb	r3, [fp, #-13]
     51c:	e1a03403 	lsl	r3, r3, #8
     520:	e1822003 	orr	r2, r2, r3
     524:	e55b300d 	ldrb	r3, [fp, #-13]
     528:	e1823003 	orr	r3, r2, r3
     52c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     530:	ea000008 	b	558 <memset+0x80>
     534:	e51b3008 	ldr	r3, [fp, #-8]
     538:	e55b200d 	ldrb	r2, [fp, #-13]
     53c:	e5c32000 	strb	r2, [r3]
     540:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     544:	e2433001 	sub	r3, r3, #1
     548:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     54c:	e51b3008 	ldr	r3, [fp, #-8]
     550:	e2833001 	add	r3, r3, #1
     554:	e50b3008 	str	r3, [fp, #-8]
     558:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     55c:	e3530000 	cmp	r3, #0
     560:	0a000003 	beq	574 <memset+0x9c>
     564:	e51b3008 	ldr	r3, [fp, #-8]
     568:	e2033003 	and	r3, r3, #3
     56c:	e3530000 	cmp	r3, #0
     570:	1affffef 	bne	534 <memset+0x5c>
     574:	e51b3008 	ldr	r3, [fp, #-8]
     578:	e50b300c 	str	r3, [fp, #-12]
     57c:	ea000008 	b	5a4 <memset+0xcc>
     580:	e51b300c 	ldr	r3, [fp, #-12]
     584:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     588:	e5832000 	str	r2, [r3]
     58c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     590:	e2433004 	sub	r3, r3, #4
     594:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     598:	e51b300c 	ldr	r3, [fp, #-12]
     59c:	e2833004 	add	r3, r3, #4
     5a0:	e50b300c 	str	r3, [fp, #-12]
     5a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5a8:	e3530003 	cmp	r3, #3
     5ac:	8afffff3 	bhi	580 <memset+0xa8>
     5b0:	e51b300c 	ldr	r3, [fp, #-12]
     5b4:	e50b3008 	str	r3, [fp, #-8]
     5b8:	ea000008 	b	5e0 <memset+0x108>
     5bc:	e51b3008 	ldr	r3, [fp, #-8]
     5c0:	e55b200d 	ldrb	r2, [fp, #-13]
     5c4:	e5c32000 	strb	r2, [r3]
     5c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5cc:	e2433001 	sub	r3, r3, #1
     5d0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     5d4:	e51b3008 	ldr	r3, [fp, #-8]
     5d8:	e2833001 	add	r3, r3, #1
     5dc:	e50b3008 	str	r3, [fp, #-8]
     5e0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     5e4:	e3530000 	cmp	r3, #0
     5e8:	1afffff3 	bne	5bc <memset+0xe4>
     5ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5f0:	e1a00003 	mov	r0, r3
     5f4:	e28bd000 	add	sp, fp, #0
     5f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     5fc:	e12fff1e 	bx	lr

00000600 <strchr>:
     600:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     604:	e28db000 	add	fp, sp, #0
     608:	e24dd00c 	sub	sp, sp, #12
     60c:	e50b0008 	str	r0, [fp, #-8]
     610:	e1a03001 	mov	r3, r1
     614:	e54b3009 	strb	r3, [fp, #-9]
     618:	ea000009 	b	644 <strchr+0x44>
     61c:	e51b3008 	ldr	r3, [fp, #-8]
     620:	e5d33000 	ldrb	r3, [r3]
     624:	e55b2009 	ldrb	r2, [fp, #-9]
     628:	e1520003 	cmp	r2, r3
     62c:	1a000001 	bne	638 <strchr+0x38>
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	ea000007 	b	658 <strchr+0x58>
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e2833001 	add	r3, r3, #1
     640:	e50b3008 	str	r3, [fp, #-8]
     644:	e51b3008 	ldr	r3, [fp, #-8]
     648:	e5d33000 	ldrb	r3, [r3]
     64c:	e3530000 	cmp	r3, #0
     650:	1afffff1 	bne	61c <strchr+0x1c>
     654:	e3a03000 	mov	r3, #0
     658:	e1a00003 	mov	r0, r3
     65c:	e28bd000 	add	sp, fp, #0
     660:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     664:	e12fff1e 	bx	lr

00000668 <gets>:
     668:	e92d4800 	push	{fp, lr}
     66c:	e28db004 	add	fp, sp, #4
     670:	e24dd018 	sub	sp, sp, #24
     674:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     678:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     67c:	e3a03000 	mov	r3, #0
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	ea000016 	b	6e4 <gets+0x7c>
     688:	e24b300d 	sub	r3, fp, #13
     68c:	e3a02001 	mov	r2, #1
     690:	e1a01003 	mov	r1, r3
     694:	e3a00000 	mov	r0, #0
     698:	eb00009b 	bl	90c <read>
     69c:	e50b000c 	str	r0, [fp, #-12]
     6a0:	e51b300c 	ldr	r3, [fp, #-12]
     6a4:	e3530000 	cmp	r3, #0
     6a8:	da000013 	ble	6fc <gets+0x94>
     6ac:	e51b3008 	ldr	r3, [fp, #-8]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2008 	str	r2, [fp, #-8]
     6b8:	e1a02003 	mov	r2, r3
     6bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c0:	e0833002 	add	r3, r3, r2
     6c4:	e55b200d 	ldrb	r2, [fp, #-13]
     6c8:	e5c32000 	strb	r2, [r3]
     6cc:	e55b300d 	ldrb	r3, [fp, #-13]
     6d0:	e353000a 	cmp	r3, #10
     6d4:	0a000009 	beq	700 <gets+0x98>
     6d8:	e55b300d 	ldrb	r3, [fp, #-13]
     6dc:	e353000d 	cmp	r3, #13
     6e0:	0a000006 	beq	700 <gets+0x98>
     6e4:	e51b3008 	ldr	r3, [fp, #-8]
     6e8:	e2833001 	add	r3, r3, #1
     6ec:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     6f0:	e1520003 	cmp	r2, r3
     6f4:	caffffe3 	bgt	688 <gets+0x20>
     6f8:	ea000000 	b	700 <gets+0x98>
     6fc:	e1a00000 	nop			@ (mov r0, r0)
     700:	e51b3008 	ldr	r3, [fp, #-8]
     704:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     708:	e0823003 	add	r3, r2, r3
     70c:	e3a02000 	mov	r2, #0
     710:	e5c32000 	strb	r2, [r3]
     714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     718:	e1a00003 	mov	r0, r3
     71c:	e24bd004 	sub	sp, fp, #4
     720:	e8bd8800 	pop	{fp, pc}

00000724 <stat>:
     724:	e92d4800 	push	{fp, lr}
     728:	e28db004 	add	fp, sp, #4
     72c:	e24dd010 	sub	sp, sp, #16
     730:	e50b0010 	str	r0, [fp, #-16]
     734:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     738:	e3a01000 	mov	r1, #0
     73c:	e51b0010 	ldr	r0, [fp, #-16]
     740:	eb00009e 	bl	9c0 <open>
     744:	e50b0008 	str	r0, [fp, #-8]
     748:	e51b3008 	ldr	r3, [fp, #-8]
     74c:	e3530000 	cmp	r3, #0
     750:	aa000001 	bge	75c <stat+0x38>
     754:	e3e03000 	mvn	r3, #0
     758:	ea000006 	b	778 <stat+0x54>
     75c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     760:	e51b0008 	ldr	r0, [fp, #-8]
     764:	eb0000b0 	bl	a2c <fstat>
     768:	e50b000c 	str	r0, [fp, #-12]
     76c:	e51b0008 	ldr	r0, [fp, #-8]
     770:	eb000077 	bl	954 <close>
     774:	e51b300c 	ldr	r3, [fp, #-12]
     778:	e1a00003 	mov	r0, r3
     77c:	e24bd004 	sub	sp, fp, #4
     780:	e8bd8800 	pop	{fp, pc}

00000784 <atoi>:
     784:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     788:	e28db000 	add	fp, sp, #0
     78c:	e24dd014 	sub	sp, sp, #20
     790:	e50b0010 	str	r0, [fp, #-16]
     794:	e3a03000 	mov	r3, #0
     798:	e50b3008 	str	r3, [fp, #-8]
     79c:	ea00000c 	b	7d4 <atoi+0x50>
     7a0:	e51b2008 	ldr	r2, [fp, #-8]
     7a4:	e1a03002 	mov	r3, r2
     7a8:	e1a03103 	lsl	r3, r3, #2
     7ac:	e0833002 	add	r3, r3, r2
     7b0:	e1a03083 	lsl	r3, r3, #1
     7b4:	e1a01003 	mov	r1, r3
     7b8:	e51b3010 	ldr	r3, [fp, #-16]
     7bc:	e2832001 	add	r2, r3, #1
     7c0:	e50b2010 	str	r2, [fp, #-16]
     7c4:	e5d33000 	ldrb	r3, [r3]
     7c8:	e0813003 	add	r3, r1, r3
     7cc:	e2433030 	sub	r3, r3, #48	@ 0x30
     7d0:	e50b3008 	str	r3, [fp, #-8]
     7d4:	e51b3010 	ldr	r3, [fp, #-16]
     7d8:	e5d33000 	ldrb	r3, [r3]
     7dc:	e353002f 	cmp	r3, #47	@ 0x2f
     7e0:	9a000003 	bls	7f4 <atoi+0x70>
     7e4:	e51b3010 	ldr	r3, [fp, #-16]
     7e8:	e5d33000 	ldrb	r3, [r3]
     7ec:	e3530039 	cmp	r3, #57	@ 0x39
     7f0:	9affffea 	bls	7a0 <atoi+0x1c>
     7f4:	e51b3008 	ldr	r3, [fp, #-8]
     7f8:	e1a00003 	mov	r0, r3
     7fc:	e28bd000 	add	sp, fp, #0
     800:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     804:	e12fff1e 	bx	lr

00000808 <memmove>:
     808:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     80c:	e28db000 	add	fp, sp, #0
     810:	e24dd01c 	sub	sp, sp, #28
     814:	e50b0010 	str	r0, [fp, #-16]
     818:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     81c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     820:	e51b3010 	ldr	r3, [fp, #-16]
     824:	e50b3008 	str	r3, [fp, #-8]
     828:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     82c:	e50b300c 	str	r3, [fp, #-12]
     830:	ea000007 	b	854 <memmove+0x4c>
     834:	e51b200c 	ldr	r2, [fp, #-12]
     838:	e2823001 	add	r3, r2, #1
     83c:	e50b300c 	str	r3, [fp, #-12]
     840:	e51b3008 	ldr	r3, [fp, #-8]
     844:	e2831001 	add	r1, r3, #1
     848:	e50b1008 	str	r1, [fp, #-8]
     84c:	e5d22000 	ldrb	r2, [r2]
     850:	e5c32000 	strb	r2, [r3]
     854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     858:	e2432001 	sub	r2, r3, #1
     85c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     860:	e3530000 	cmp	r3, #0
     864:	cafffff2 	bgt	834 <memmove+0x2c>
     868:	e51b3010 	ldr	r3, [fp, #-16]
     86c:	e1a00003 	mov	r0, r3
     870:	e28bd000 	add	sp, fp, #0
     874:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     878:	e12fff1e 	bx	lr

0000087c <fork>:
     87c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     880:	e1a04003 	mov	r4, r3
     884:	e1a03002 	mov	r3, r2
     888:	e1a02001 	mov	r2, r1
     88c:	e1a01000 	mov	r1, r0
     890:	e3a00001 	mov	r0, #1
     894:	ef000000 	svc	0x00000000
     898:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     89c:	e12fff1e 	bx	lr

000008a0 <exit>:
     8a0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8a4:	e1a04003 	mov	r4, r3
     8a8:	e1a03002 	mov	r3, r2
     8ac:	e1a02001 	mov	r2, r1
     8b0:	e1a01000 	mov	r1, r0
     8b4:	e3a00002 	mov	r0, #2
     8b8:	ef000000 	svc	0x00000000
     8bc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8c0:	e12fff1e 	bx	lr

000008c4 <wait>:
     8c4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8c8:	e1a04003 	mov	r4, r3
     8cc:	e1a03002 	mov	r3, r2
     8d0:	e1a02001 	mov	r2, r1
     8d4:	e1a01000 	mov	r1, r0
     8d8:	e3a00003 	mov	r0, #3
     8dc:	ef000000 	svc	0x00000000
     8e0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8e4:	e12fff1e 	bx	lr

000008e8 <pipe>:
     8e8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8ec:	e1a04003 	mov	r4, r3
     8f0:	e1a03002 	mov	r3, r2
     8f4:	e1a02001 	mov	r2, r1
     8f8:	e1a01000 	mov	r1, r0
     8fc:	e3a00004 	mov	r0, #4
     900:	ef000000 	svc	0x00000000
     904:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     908:	e12fff1e 	bx	lr

0000090c <read>:
     90c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     910:	e1a04003 	mov	r4, r3
     914:	e1a03002 	mov	r3, r2
     918:	e1a02001 	mov	r2, r1
     91c:	e1a01000 	mov	r1, r0
     920:	e3a00005 	mov	r0, #5
     924:	ef000000 	svc	0x00000000
     928:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     92c:	e12fff1e 	bx	lr

00000930 <write>:
     930:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     934:	e1a04003 	mov	r4, r3
     938:	e1a03002 	mov	r3, r2
     93c:	e1a02001 	mov	r2, r1
     940:	e1a01000 	mov	r1, r0
     944:	e3a00010 	mov	r0, #16
     948:	ef000000 	svc	0x00000000
     94c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     950:	e12fff1e 	bx	lr

00000954 <close>:
     954:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     958:	e1a04003 	mov	r4, r3
     95c:	e1a03002 	mov	r3, r2
     960:	e1a02001 	mov	r2, r1
     964:	e1a01000 	mov	r1, r0
     968:	e3a00015 	mov	r0, #21
     96c:	ef000000 	svc	0x00000000
     970:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     974:	e12fff1e 	bx	lr

00000978 <kill>:
     978:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     97c:	e1a04003 	mov	r4, r3
     980:	e1a03002 	mov	r3, r2
     984:	e1a02001 	mov	r2, r1
     988:	e1a01000 	mov	r1, r0
     98c:	e3a00006 	mov	r0, #6
     990:	ef000000 	svc	0x00000000
     994:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     998:	e12fff1e 	bx	lr

0000099c <exec>:
     99c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9a0:	e1a04003 	mov	r4, r3
     9a4:	e1a03002 	mov	r3, r2
     9a8:	e1a02001 	mov	r2, r1
     9ac:	e1a01000 	mov	r1, r0
     9b0:	e3a00007 	mov	r0, #7
     9b4:	ef000000 	svc	0x00000000
     9b8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9bc:	e12fff1e 	bx	lr

000009c0 <open>:
     9c0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9c4:	e1a04003 	mov	r4, r3
     9c8:	e1a03002 	mov	r3, r2
     9cc:	e1a02001 	mov	r2, r1
     9d0:	e1a01000 	mov	r1, r0
     9d4:	e3a0000f 	mov	r0, #15
     9d8:	ef000000 	svc	0x00000000
     9dc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9e0:	e12fff1e 	bx	lr

000009e4 <mknod>:
     9e4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9e8:	e1a04003 	mov	r4, r3
     9ec:	e1a03002 	mov	r3, r2
     9f0:	e1a02001 	mov	r2, r1
     9f4:	e1a01000 	mov	r1, r0
     9f8:	e3a00011 	mov	r0, #17
     9fc:	ef000000 	svc	0x00000000
     a00:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a04:	e12fff1e 	bx	lr

00000a08 <unlink>:
     a08:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a0c:	e1a04003 	mov	r4, r3
     a10:	e1a03002 	mov	r3, r2
     a14:	e1a02001 	mov	r2, r1
     a18:	e1a01000 	mov	r1, r0
     a1c:	e3a00012 	mov	r0, #18
     a20:	ef000000 	svc	0x00000000
     a24:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a28:	e12fff1e 	bx	lr

00000a2c <fstat>:
     a2c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a30:	e1a04003 	mov	r4, r3
     a34:	e1a03002 	mov	r3, r2
     a38:	e1a02001 	mov	r2, r1
     a3c:	e1a01000 	mov	r1, r0
     a40:	e3a00008 	mov	r0, #8
     a44:	ef000000 	svc	0x00000000
     a48:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a4c:	e12fff1e 	bx	lr

00000a50 <link>:
     a50:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a54:	e1a04003 	mov	r4, r3
     a58:	e1a03002 	mov	r3, r2
     a5c:	e1a02001 	mov	r2, r1
     a60:	e1a01000 	mov	r1, r0
     a64:	e3a00013 	mov	r0, #19
     a68:	ef000000 	svc	0x00000000
     a6c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a70:	e12fff1e 	bx	lr

00000a74 <mkdir>:
     a74:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a78:	e1a04003 	mov	r4, r3
     a7c:	e1a03002 	mov	r3, r2
     a80:	e1a02001 	mov	r2, r1
     a84:	e1a01000 	mov	r1, r0
     a88:	e3a00014 	mov	r0, #20
     a8c:	ef000000 	svc	0x00000000
     a90:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a94:	e12fff1e 	bx	lr

00000a98 <chdir>:
     a98:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a9c:	e1a04003 	mov	r4, r3
     aa0:	e1a03002 	mov	r3, r2
     aa4:	e1a02001 	mov	r2, r1
     aa8:	e1a01000 	mov	r1, r0
     aac:	e3a00009 	mov	r0, #9
     ab0:	ef000000 	svc	0x00000000
     ab4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     ab8:	e12fff1e 	bx	lr

00000abc <dup>:
     abc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ac0:	e1a04003 	mov	r4, r3
     ac4:	e1a03002 	mov	r3, r2
     ac8:	e1a02001 	mov	r2, r1
     acc:	e1a01000 	mov	r1, r0
     ad0:	e3a0000a 	mov	r0, #10
     ad4:	ef000000 	svc	0x00000000
     ad8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     adc:	e12fff1e 	bx	lr

00000ae0 <getpid>:
     ae0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ae4:	e1a04003 	mov	r4, r3
     ae8:	e1a03002 	mov	r3, r2
     aec:	e1a02001 	mov	r2, r1
     af0:	e1a01000 	mov	r1, r0
     af4:	e3a0000b 	mov	r0, #11
     af8:	ef000000 	svc	0x00000000
     afc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b00:	e12fff1e 	bx	lr

00000b04 <sbrk>:
     b04:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b08:	e1a04003 	mov	r4, r3
     b0c:	e1a03002 	mov	r3, r2
     b10:	e1a02001 	mov	r2, r1
     b14:	e1a01000 	mov	r1, r0
     b18:	e3a0000c 	mov	r0, #12
     b1c:	ef000000 	svc	0x00000000
     b20:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b24:	e12fff1e 	bx	lr

00000b28 <sleep>:
     b28:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b2c:	e1a04003 	mov	r4, r3
     b30:	e1a03002 	mov	r3, r2
     b34:	e1a02001 	mov	r2, r1
     b38:	e1a01000 	mov	r1, r0
     b3c:	e3a0000d 	mov	r0, #13
     b40:	ef000000 	svc	0x00000000
     b44:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b48:	e12fff1e 	bx	lr

00000b4c <uptime>:
     b4c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b50:	e1a04003 	mov	r4, r3
     b54:	e1a03002 	mov	r3, r2
     b58:	e1a02001 	mov	r2, r1
     b5c:	e1a01000 	mov	r1, r0
     b60:	e3a0000e 	mov	r0, #14
     b64:	ef000000 	svc	0x00000000
     b68:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b6c:	e12fff1e 	bx	lr

00000b70 <ps>:
     b70:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     b74:	e1a04003 	mov	r4, r3
     b78:	e1a03002 	mov	r3, r2
     b7c:	e1a02001 	mov	r2, r1
     b80:	e1a01000 	mov	r1, r0
     b84:	e3a00016 	mov	r0, #22
     b88:	ef000000 	svc	0x00000000
     b8c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     b90:	e12fff1e 	bx	lr

00000b94 <putc>:
     b94:	e92d4800 	push	{fp, lr}
     b98:	e28db004 	add	fp, sp, #4
     b9c:	e24dd008 	sub	sp, sp, #8
     ba0:	e50b0008 	str	r0, [fp, #-8]
     ba4:	e1a03001 	mov	r3, r1
     ba8:	e54b3009 	strb	r3, [fp, #-9]
     bac:	e24b3009 	sub	r3, fp, #9
     bb0:	e3a02001 	mov	r2, #1
     bb4:	e1a01003 	mov	r1, r3
     bb8:	e51b0008 	ldr	r0, [fp, #-8]
     bbc:	ebffff5b 	bl	930 <write>
     bc0:	e1a00000 	nop			@ (mov r0, r0)
     bc4:	e24bd004 	sub	sp, fp, #4
     bc8:	e8bd8800 	pop	{fp, pc}

00000bcc <printint>:
     bcc:	e92d4800 	push	{fp, lr}
     bd0:	e28db004 	add	fp, sp, #4
     bd4:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bd8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bdc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     be0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     be4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     be8:	e3a03000 	mov	r3, #0
     bec:	e50b300c 	str	r3, [fp, #-12]
     bf0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bf4:	e3530000 	cmp	r3, #0
     bf8:	0a000008 	beq	c20 <printint+0x54>
     bfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c00:	e3530000 	cmp	r3, #0
     c04:	aa000005 	bge	c20 <printint+0x54>
     c08:	e3a03001 	mov	r3, #1
     c0c:	e50b300c 	str	r3, [fp, #-12]
     c10:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c14:	e2633000 	rsb	r3, r3, #0
     c18:	e50b3010 	str	r3, [fp, #-16]
     c1c:	ea000001 	b	c28 <printint+0x5c>
     c20:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c24:	e50b3010 	str	r3, [fp, #-16]
     c28:	e3a03000 	mov	r3, #0
     c2c:	e50b3008 	str	r3, [fp, #-8]
     c30:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c34:	e51b3010 	ldr	r3, [fp, #-16]
     c38:	e1a01002 	mov	r1, r2
     c3c:	e1a00003 	mov	r0, r3
     c40:	eb0001d5 	bl	139c <__aeabi_uidivmod>
     c44:	e1a03001 	mov	r3, r1
     c48:	e1a01003 	mov	r1, r3
     c4c:	e51b3008 	ldr	r3, [fp, #-8]
     c50:	e2832001 	add	r2, r3, #1
     c54:	e50b2008 	str	r2, [fp, #-8]
     c58:	e59f20a0 	ldr	r2, [pc, #160]	@ d00 <printint+0x134>
     c5c:	e7d22001 	ldrb	r2, [r2, r1]
     c60:	e2433004 	sub	r3, r3, #4
     c64:	e083300b 	add	r3, r3, fp
     c68:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c6c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c70:	e1a01003 	mov	r1, r3
     c74:	e51b0010 	ldr	r0, [fp, #-16]
     c78:	eb00018a 	bl	12a8 <__udivsi3>
     c7c:	e1a03000 	mov	r3, r0
     c80:	e50b3010 	str	r3, [fp, #-16]
     c84:	e51b3010 	ldr	r3, [fp, #-16]
     c88:	e3530000 	cmp	r3, #0
     c8c:	1affffe7 	bne	c30 <printint+0x64>
     c90:	e51b300c 	ldr	r3, [fp, #-12]
     c94:	e3530000 	cmp	r3, #0
     c98:	0a00000e 	beq	cd8 <printint+0x10c>
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e2832001 	add	r2, r3, #1
     ca4:	e50b2008 	str	r2, [fp, #-8]
     ca8:	e2433004 	sub	r3, r3, #4
     cac:	e083300b 	add	r3, r3, fp
     cb0:	e3a0202d 	mov	r2, #45	@ 0x2d
     cb4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     cb8:	ea000006 	b	cd8 <printint+0x10c>
     cbc:	e24b2020 	sub	r2, fp, #32
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e0823003 	add	r3, r2, r3
     cc8:	e5d33000 	ldrb	r3, [r3]
     ccc:	e1a01003 	mov	r1, r3
     cd0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cd4:	ebffffae 	bl	b94 <putc>
     cd8:	e51b3008 	ldr	r3, [fp, #-8]
     cdc:	e2433001 	sub	r3, r3, #1
     ce0:	e50b3008 	str	r3, [fp, #-8]
     ce4:	e51b3008 	ldr	r3, [fp, #-8]
     ce8:	e3530000 	cmp	r3, #0
     cec:	aafffff2 	bge	cbc <printint+0xf0>
     cf0:	e1a00000 	nop			@ (mov r0, r0)
     cf4:	e1a00000 	nop			@ (mov r0, r0)
     cf8:	e24bd004 	sub	sp, fp, #4
     cfc:	e8bd8800 	pop	{fp, pc}
     d00:	00001418 	.word	0x00001418

00000d04 <printf>:
     d04:	e92d000e 	push	{r1, r2, r3}
     d08:	e92d4800 	push	{fp, lr}
     d0c:	e28db004 	add	fp, sp, #4
     d10:	e24dd024 	sub	sp, sp, #36	@ 0x24
     d14:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     d18:	e3a03000 	mov	r3, #0
     d1c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d20:	e28b3008 	add	r3, fp, #8
     d24:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d28:	e3a03000 	mov	r3, #0
     d2c:	e50b3010 	str	r3, [fp, #-16]
     d30:	ea000074 	b	f08 <printf+0x204>
     d34:	e59b2004 	ldr	r2, [fp, #4]
     d38:	e51b3010 	ldr	r3, [fp, #-16]
     d3c:	e0823003 	add	r3, r2, r3
     d40:	e5d33000 	ldrb	r3, [r3]
     d44:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d48:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d4c:	e3530000 	cmp	r3, #0
     d50:	1a00000b 	bne	d84 <printf+0x80>
     d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d58:	e3530025 	cmp	r3, #37	@ 0x25
     d5c:	1a000002 	bne	d6c <printf+0x68>
     d60:	e3a03025 	mov	r3, #37	@ 0x25
     d64:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d68:	ea000063 	b	efc <printf+0x1f8>
     d6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d70:	e6ef3073 	uxtb	r3, r3
     d74:	e1a01003 	mov	r1, r3
     d78:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d7c:	ebffff84 	bl	b94 <putc>
     d80:	ea00005d 	b	efc <printf+0x1f8>
     d84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d88:	e3530025 	cmp	r3, #37	@ 0x25
     d8c:	1a00005a 	bne	efc <printf+0x1f8>
     d90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d94:	e3530064 	cmp	r3, #100	@ 0x64
     d98:	1a00000a 	bne	dc8 <printf+0xc4>
     d9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     da0:	e5933000 	ldr	r3, [r3]
     da4:	e1a01003 	mov	r1, r3
     da8:	e3a03001 	mov	r3, #1
     dac:	e3a0200a 	mov	r2, #10
     db0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     db4:	ebffff84 	bl	bcc <printint>
     db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dbc:	e2833004 	add	r3, r3, #4
     dc0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     dc4:	ea00004a 	b	ef4 <printf+0x1f0>
     dc8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dcc:	e3530078 	cmp	r3, #120	@ 0x78
     dd0:	0a000002 	beq	de0 <printf+0xdc>
     dd4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dd8:	e3530070 	cmp	r3, #112	@ 0x70
     ddc:	1a00000a 	bne	e0c <printf+0x108>
     de0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de4:	e5933000 	ldr	r3, [r3]
     de8:	e1a01003 	mov	r1, r3
     dec:	e3a03000 	mov	r3, #0
     df0:	e3a02010 	mov	r2, #16
     df4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     df8:	ebffff73 	bl	bcc <printint>
     dfc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e00:	e2833004 	add	r3, r3, #4
     e04:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e08:	ea000039 	b	ef4 <printf+0x1f0>
     e0c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e10:	e3530073 	cmp	r3, #115	@ 0x73
     e14:	1a000018 	bne	e7c <printf+0x178>
     e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e1c:	e5933000 	ldr	r3, [r3]
     e20:	e50b300c 	str	r3, [fp, #-12]
     e24:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e28:	e2833004 	add	r3, r3, #4
     e2c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e30:	e51b300c 	ldr	r3, [fp, #-12]
     e34:	e3530000 	cmp	r3, #0
     e38:	1a00000a 	bne	e68 <printf+0x164>
     e3c:	e59f30f4 	ldr	r3, [pc, #244]	@ f38 <printf+0x234>
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	ea000007 	b	e68 <printf+0x164>
     e48:	e51b300c 	ldr	r3, [fp, #-12]
     e4c:	e5d33000 	ldrb	r3, [r3]
     e50:	e1a01003 	mov	r1, r3
     e54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e58:	ebffff4d 	bl	b94 <putc>
     e5c:	e51b300c 	ldr	r3, [fp, #-12]
     e60:	e2833001 	add	r3, r3, #1
     e64:	e50b300c 	str	r3, [fp, #-12]
     e68:	e51b300c 	ldr	r3, [fp, #-12]
     e6c:	e5d33000 	ldrb	r3, [r3]
     e70:	e3530000 	cmp	r3, #0
     e74:	1afffff3 	bne	e48 <printf+0x144>
     e78:	ea00001d 	b	ef4 <printf+0x1f0>
     e7c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e80:	e3530063 	cmp	r3, #99	@ 0x63
     e84:	1a000009 	bne	eb0 <printf+0x1ac>
     e88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e8c:	e5933000 	ldr	r3, [r3]
     e90:	e6ef3073 	uxtb	r3, r3
     e94:	e1a01003 	mov	r1, r3
     e98:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e9c:	ebffff3c 	bl	b94 <putc>
     ea0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ea4:	e2833004 	add	r3, r3, #4
     ea8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     eac:	ea000010 	b	ef4 <printf+0x1f0>
     eb0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     eb4:	e3530025 	cmp	r3, #37	@ 0x25
     eb8:	1a000005 	bne	ed4 <printf+0x1d0>
     ebc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec0:	e6ef3073 	uxtb	r3, r3
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ecc:	ebffff30 	bl	b94 <putc>
     ed0:	ea000007 	b	ef4 <printf+0x1f0>
     ed4:	e3a01025 	mov	r1, #37	@ 0x25
     ed8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     edc:	ebffff2c 	bl	b94 <putc>
     ee0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ee4:	e6ef3073 	uxtb	r3, r3
     ee8:	e1a01003 	mov	r1, r3
     eec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ef0:	ebffff27 	bl	b94 <putc>
     ef4:	e3a03000 	mov	r3, #0
     ef8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     efc:	e51b3010 	ldr	r3, [fp, #-16]
     f00:	e2833001 	add	r3, r3, #1
     f04:	e50b3010 	str	r3, [fp, #-16]
     f08:	e59b2004 	ldr	r2, [fp, #4]
     f0c:	e51b3010 	ldr	r3, [fp, #-16]
     f10:	e0823003 	add	r3, r2, r3
     f14:	e5d33000 	ldrb	r3, [r3]
     f18:	e3530000 	cmp	r3, #0
     f1c:	1affff84 	bne	d34 <printf+0x30>
     f20:	e1a00000 	nop			@ (mov r0, r0)
     f24:	e1a00000 	nop			@ (mov r0, r0)
     f28:	e24bd004 	sub	sp, fp, #4
     f2c:	e8bd4800 	pop	{fp, lr}
     f30:	e28dd00c 	add	sp, sp, #12
     f34:	e12fff1e 	bx	lr
     f38:	00001410 	.word	0x00001410

00000f3c <free>:
     f3c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f40:	e28db000 	add	fp, sp, #0
     f44:	e24dd014 	sub	sp, sp, #20
     f48:	e50b0010 	str	r0, [fp, #-16]
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e2433008 	sub	r3, r3, #8
     f54:	e50b300c 	str	r3, [fp, #-12]
     f58:	e59f3154 	ldr	r3, [pc, #340]	@ 10b4 <free+0x178>
     f5c:	e5933000 	ldr	r3, [r3]
     f60:	e50b3008 	str	r3, [fp, #-8]
     f64:	ea000010 	b	fac <free+0x70>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e51b2008 	ldr	r2, [fp, #-8]
     f74:	e1520003 	cmp	r2, r3
     f78:	3a000008 	bcc	fa0 <free+0x64>
     f7c:	e51b200c 	ldr	r2, [fp, #-12]
     f80:	e51b3008 	ldr	r3, [fp, #-8]
     f84:	e1520003 	cmp	r2, r3
     f88:	8a000010 	bhi	fd0 <free+0x94>
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e5933000 	ldr	r3, [r3]
     f94:	e51b200c 	ldr	r2, [fp, #-12]
     f98:	e1520003 	cmp	r2, r3
     f9c:	3a00000b 	bcc	fd0 <free+0x94>
     fa0:	e51b3008 	ldr	r3, [fp, #-8]
     fa4:	e5933000 	ldr	r3, [r3]
     fa8:	e50b3008 	str	r3, [fp, #-8]
     fac:	e51b200c 	ldr	r2, [fp, #-12]
     fb0:	e51b3008 	ldr	r3, [fp, #-8]
     fb4:	e1520003 	cmp	r2, r3
     fb8:	9affffea 	bls	f68 <free+0x2c>
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5933000 	ldr	r3, [r3]
     fc4:	e51b200c 	ldr	r2, [fp, #-12]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	2affffe5 	bcs	f68 <free+0x2c>
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5933004 	ldr	r3, [r3, #4]
     fd8:	e1a03183 	lsl	r3, r3, #3
     fdc:	e51b200c 	ldr	r2, [fp, #-12]
     fe0:	e0822003 	add	r2, r2, r3
     fe4:	e51b3008 	ldr	r3, [fp, #-8]
     fe8:	e5933000 	ldr	r3, [r3]
     fec:	e1520003 	cmp	r2, r3
     ff0:	1a00000d 	bne	102c <free+0xf0>
     ff4:	e51b300c 	ldr	r3, [fp, #-12]
     ff8:	e5932004 	ldr	r2, [r3, #4]
     ffc:	e51b3008 	ldr	r3, [fp, #-8]
    1000:	e5933000 	ldr	r3, [r3]
    1004:	e5933004 	ldr	r3, [r3, #4]
    1008:	e0822003 	add	r2, r2, r3
    100c:	e51b300c 	ldr	r3, [fp, #-12]
    1010:	e5832004 	str	r2, [r3, #4]
    1014:	e51b3008 	ldr	r3, [fp, #-8]
    1018:	e5933000 	ldr	r3, [r3]
    101c:	e5932000 	ldr	r2, [r3]
    1020:	e51b300c 	ldr	r3, [fp, #-12]
    1024:	e5832000 	str	r2, [r3]
    1028:	ea000003 	b	103c <free+0x100>
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e5932000 	ldr	r2, [r3]
    1034:	e51b300c 	ldr	r3, [fp, #-12]
    1038:	e5832000 	str	r2, [r3]
    103c:	e51b3008 	ldr	r3, [fp, #-8]
    1040:	e5933004 	ldr	r3, [r3, #4]
    1044:	e1a03183 	lsl	r3, r3, #3
    1048:	e51b2008 	ldr	r2, [fp, #-8]
    104c:	e0823003 	add	r3, r2, r3
    1050:	e51b200c 	ldr	r2, [fp, #-12]
    1054:	e1520003 	cmp	r2, r3
    1058:	1a00000b 	bne	108c <free+0x150>
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5932004 	ldr	r2, [r3, #4]
    1064:	e51b300c 	ldr	r3, [fp, #-12]
    1068:	e5933004 	ldr	r3, [r3, #4]
    106c:	e0822003 	add	r2, r2, r3
    1070:	e51b3008 	ldr	r3, [fp, #-8]
    1074:	e5832004 	str	r2, [r3, #4]
    1078:	e51b300c 	ldr	r3, [fp, #-12]
    107c:	e5932000 	ldr	r2, [r3]
    1080:	e51b3008 	ldr	r3, [fp, #-8]
    1084:	e5832000 	str	r2, [r3]
    1088:	ea000002 	b	1098 <free+0x15c>
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e51b200c 	ldr	r2, [fp, #-12]
    1094:	e5832000 	str	r2, [r3]
    1098:	e59f2014 	ldr	r2, [pc, #20]	@ 10b4 <free+0x178>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5823000 	str	r3, [r2]
    10a4:	e1a00000 	nop			@ (mov r0, r0)
    10a8:	e28bd000 	add	sp, fp, #0
    10ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10b0:	e12fff1e 	bx	lr
    10b4:	00001444 	.word	0x00001444

000010b8 <morecore>:
    10b8:	e92d4800 	push	{fp, lr}
    10bc:	e28db004 	add	fp, sp, #4
    10c0:	e24dd010 	sub	sp, sp, #16
    10c4:	e50b0010 	str	r0, [fp, #-16]
    10c8:	e51b3010 	ldr	r3, [fp, #-16]
    10cc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10d0:	2a000001 	bcs	10dc <morecore+0x24>
    10d4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10d8:	e50b3010 	str	r3, [fp, #-16]
    10dc:	e51b3010 	ldr	r3, [fp, #-16]
    10e0:	e1a03183 	lsl	r3, r3, #3
    10e4:	e1a00003 	mov	r0, r3
    10e8:	ebfffe85 	bl	b04 <sbrk>
    10ec:	e50b0008 	str	r0, [fp, #-8]
    10f0:	e51b3008 	ldr	r3, [fp, #-8]
    10f4:	e3730001 	cmn	r3, #1
    10f8:	1a000001 	bne	1104 <morecore+0x4c>
    10fc:	e3a03000 	mov	r3, #0
    1100:	ea00000a 	b	1130 <morecore+0x78>
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e50b300c 	str	r3, [fp, #-12]
    110c:	e51b300c 	ldr	r3, [fp, #-12]
    1110:	e51b2010 	ldr	r2, [fp, #-16]
    1114:	e5832004 	str	r2, [r3, #4]
    1118:	e51b300c 	ldr	r3, [fp, #-12]
    111c:	e2833008 	add	r3, r3, #8
    1120:	e1a00003 	mov	r0, r3
    1124:	ebffff84 	bl	f3c <free>
    1128:	e59f300c 	ldr	r3, [pc, #12]	@ 113c <morecore+0x84>
    112c:	e5933000 	ldr	r3, [r3]
    1130:	e1a00003 	mov	r0, r3
    1134:	e24bd004 	sub	sp, fp, #4
    1138:	e8bd8800 	pop	{fp, pc}
    113c:	00001444 	.word	0x00001444

00001140 <malloc>:
    1140:	e92d4800 	push	{fp, lr}
    1144:	e28db004 	add	fp, sp, #4
    1148:	e24dd018 	sub	sp, sp, #24
    114c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1150:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1154:	e2833007 	add	r3, r3, #7
    1158:	e1a031a3 	lsr	r3, r3, #3
    115c:	e2833001 	add	r3, r3, #1
    1160:	e50b3010 	str	r3, [fp, #-16]
    1164:	e59f3134 	ldr	r3, [pc, #308]	@ 12a0 <malloc+0x160>
    1168:	e5933000 	ldr	r3, [r3]
    116c:	e50b300c 	str	r3, [fp, #-12]
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e3530000 	cmp	r3, #0
    1178:	1a00000b 	bne	11ac <malloc+0x6c>
    117c:	e59f3120 	ldr	r3, [pc, #288]	@ 12a4 <malloc+0x164>
    1180:	e50b300c 	str	r3, [fp, #-12]
    1184:	e59f2114 	ldr	r2, [pc, #276]	@ 12a0 <malloc+0x160>
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e5823000 	str	r3, [r2]
    1190:	e59f3108 	ldr	r3, [pc, #264]	@ 12a0 <malloc+0x160>
    1194:	e5933000 	ldr	r3, [r3]
    1198:	e59f2104 	ldr	r2, [pc, #260]	@ 12a4 <malloc+0x164>
    119c:	e5823000 	str	r3, [r2]
    11a0:	e59f30fc 	ldr	r3, [pc, #252]	@ 12a4 <malloc+0x164>
    11a4:	e3a02000 	mov	r2, #0
    11a8:	e5832004 	str	r2, [r3, #4]
    11ac:	e51b300c 	ldr	r3, [fp, #-12]
    11b0:	e5933000 	ldr	r3, [r3]
    11b4:	e50b3008 	str	r3, [fp, #-8]
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e5933004 	ldr	r3, [r3, #4]
    11c0:	e51b2010 	ldr	r2, [fp, #-16]
    11c4:	e1520003 	cmp	r2, r3
    11c8:	8a00001e 	bhi	1248 <malloc+0x108>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e5933004 	ldr	r3, [r3, #4]
    11d4:	e51b2010 	ldr	r2, [fp, #-16]
    11d8:	e1520003 	cmp	r2, r3
    11dc:	1a000004 	bne	11f4 <malloc+0xb4>
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5932000 	ldr	r2, [r3]
    11e8:	e51b300c 	ldr	r3, [fp, #-12]
    11ec:	e5832000 	str	r2, [r3]
    11f0:	ea00000e 	b	1230 <malloc+0xf0>
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e5932004 	ldr	r2, [r3, #4]
    11fc:	e51b3010 	ldr	r3, [fp, #-16]
    1200:	e0422003 	sub	r2, r2, r3
    1204:	e51b3008 	ldr	r3, [fp, #-8]
    1208:	e5832004 	str	r2, [r3, #4]
    120c:	e51b3008 	ldr	r3, [fp, #-8]
    1210:	e5933004 	ldr	r3, [r3, #4]
    1214:	e1a03183 	lsl	r3, r3, #3
    1218:	e51b2008 	ldr	r2, [fp, #-8]
    121c:	e0823003 	add	r3, r2, r3
    1220:	e50b3008 	str	r3, [fp, #-8]
    1224:	e51b3008 	ldr	r3, [fp, #-8]
    1228:	e51b2010 	ldr	r2, [fp, #-16]
    122c:	e5832004 	str	r2, [r3, #4]
    1230:	e59f2068 	ldr	r2, [pc, #104]	@ 12a0 <malloc+0x160>
    1234:	e51b300c 	ldr	r3, [fp, #-12]
    1238:	e5823000 	str	r3, [r2]
    123c:	e51b3008 	ldr	r3, [fp, #-8]
    1240:	e2833008 	add	r3, r3, #8
    1244:	ea000012 	b	1294 <malloc+0x154>
    1248:	e59f3050 	ldr	r3, [pc, #80]	@ 12a0 <malloc+0x160>
    124c:	e5933000 	ldr	r3, [r3]
    1250:	e51b2008 	ldr	r2, [fp, #-8]
    1254:	e1520003 	cmp	r2, r3
    1258:	1a000007 	bne	127c <malloc+0x13c>
    125c:	e51b0010 	ldr	r0, [fp, #-16]
    1260:	ebffff94 	bl	10b8 <morecore>
    1264:	e50b0008 	str	r0, [fp, #-8]
    1268:	e51b3008 	ldr	r3, [fp, #-8]
    126c:	e3530000 	cmp	r3, #0
    1270:	1a000001 	bne	127c <malloc+0x13c>
    1274:	e3a03000 	mov	r3, #0
    1278:	ea000005 	b	1294 <malloc+0x154>
    127c:	e51b3008 	ldr	r3, [fp, #-8]
    1280:	e50b300c 	str	r3, [fp, #-12]
    1284:	e51b3008 	ldr	r3, [fp, #-8]
    1288:	e5933000 	ldr	r3, [r3]
    128c:	e50b3008 	str	r3, [fp, #-8]
    1290:	eaffffc8 	b	11b8 <malloc+0x78>
    1294:	e1a00003 	mov	r0, r3
    1298:	e24bd004 	sub	sp, fp, #4
    129c:	e8bd8800 	pop	{fp, pc}
    12a0:	00001444 	.word	0x00001444
    12a4:	0000143c 	.word	0x0000143c

000012a8 <__udivsi3>:
    12a8:	e2512001 	subs	r2, r1, #1
    12ac:	012fff1e 	bxeq	lr
    12b0:	3a000036 	bcc	1390 <__udivsi3+0xe8>
    12b4:	e1500001 	cmp	r0, r1
    12b8:	9a000022 	bls	1348 <__udivsi3+0xa0>
    12bc:	e1110002 	tst	r1, r2
    12c0:	0a000023 	beq	1354 <__udivsi3+0xac>
    12c4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12c8:	01a01181 	lsleq	r1, r1, #3
    12cc:	03a03008 	moveq	r3, #8
    12d0:	13a03001 	movne	r3, #1
    12d4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12d8:	31510000 	cmpcc	r1, r0
    12dc:	31a01201 	lslcc	r1, r1, #4
    12e0:	31a03203 	lslcc	r3, r3, #4
    12e4:	3afffffa 	bcc	12d4 <__udivsi3+0x2c>
    12e8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12ec:	31510000 	cmpcc	r1, r0
    12f0:	31a01081 	lslcc	r1, r1, #1
    12f4:	31a03083 	lslcc	r3, r3, #1
    12f8:	3afffffa 	bcc	12e8 <__udivsi3+0x40>
    12fc:	e3a02000 	mov	r2, #0
    1300:	e1500001 	cmp	r0, r1
    1304:	20400001 	subcs	r0, r0, r1
    1308:	21822003 	orrcs	r2, r2, r3
    130c:	e15000a1 	cmp	r0, r1, lsr #1
    1310:	204000a1 	subcs	r0, r0, r1, lsr #1
    1314:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1318:	e1500121 	cmp	r0, r1, lsr #2
    131c:	20400121 	subcs	r0, r0, r1, lsr #2
    1320:	21822123 	orrcs	r2, r2, r3, lsr #2
    1324:	e15001a1 	cmp	r0, r1, lsr #3
    1328:	204001a1 	subcs	r0, r0, r1, lsr #3
    132c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1330:	e3500000 	cmp	r0, #0
    1334:	11b03223 	lsrsne	r3, r3, #4
    1338:	11a01221 	lsrne	r1, r1, #4
    133c:	1affffef 	bne	1300 <__udivsi3+0x58>
    1340:	e1a00002 	mov	r0, r2
    1344:	e12fff1e 	bx	lr
    1348:	03a00001 	moveq	r0, #1
    134c:	13a00000 	movne	r0, #0
    1350:	e12fff1e 	bx	lr
    1354:	e3510801 	cmp	r1, #65536	@ 0x10000
    1358:	21a01821 	lsrcs	r1, r1, #16
    135c:	23a02010 	movcs	r2, #16
    1360:	33a02000 	movcc	r2, #0
    1364:	e3510c01 	cmp	r1, #256	@ 0x100
    1368:	21a01421 	lsrcs	r1, r1, #8
    136c:	22822008 	addcs	r2, r2, #8
    1370:	e3510010 	cmp	r1, #16
    1374:	21a01221 	lsrcs	r1, r1, #4
    1378:	22822004 	addcs	r2, r2, #4
    137c:	e3510004 	cmp	r1, #4
    1380:	82822003 	addhi	r2, r2, #3
    1384:	908220a1 	addls	r2, r2, r1, lsr #1
    1388:	e1a00230 	lsr	r0, r0, r2
    138c:	e12fff1e 	bx	lr
    1390:	e3500000 	cmp	r0, #0
    1394:	13e00000 	mvnne	r0, #0
    1398:	ea000007 	b	13bc <__aeabi_idiv0>

0000139c <__aeabi_uidivmod>:
    139c:	e3510000 	cmp	r1, #0
    13a0:	0afffffa 	beq	1390 <__udivsi3+0xe8>
    13a4:	e92d4003 	push	{r0, r1, lr}
    13a8:	ebffffbe 	bl	12a8 <__udivsi3>
    13ac:	e8bd4006 	pop	{r1, r2, lr}
    13b0:	e0030092 	mul	r3, r2, r0
    13b4:	e0411003 	sub	r1, r1, r3
    13b8:	e12fff1e 	bx	lr

000013bc <__aeabi_idiv0>:
    13bc:	e12fff1e 	bx	lr
