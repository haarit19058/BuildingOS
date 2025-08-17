
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
      e0:	00001408 	.word	0x00001408

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
     11c:	eb0002ef 	bl	ce0 <printf>
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
     14c:	eb0002e3 	bl	ce0 <printf>
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
     1b4:	eb0002c9 	bl	ce0 <printf>
     1b8:	ea000053 	b	30c <ls+0x228>
     1bc:	e51b0238 	ldr	r0, [fp, #-568]	@ 0xfffffdc8
     1c0:	eb0000af 	bl	484 <strlen>
     1c4:	e1a03000 	mov	r3, r0
     1c8:	e2833010 	add	r3, r3, #16
     1cc:	e3530c02 	cmp	r3, #512	@ 0x200
     1d0:	9a000003 	bls	1e4 <ls+0x100>
     1d4:	e59f114c 	ldr	r1, [pc, #332]	@ 328 <ls+0x244>
     1d8:	e3a00001 	mov	r0, #1
     1dc:	eb0002bf 	bl	ce0 <printf>
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
     294:	eb000291 	bl	ce0 <printf>
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
     2dc:	eb00027f 	bl	ce0 <printf>
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
     31c:	0000139c 	.word	0x0000139c
     320:	000013b0 	.word	0x000013b0
     324:	000013c4 	.word	0x000013c4
     328:	000013d4 	.word	0x000013d4

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
     3a0:	000013e8 	.word	0x000013e8

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

00000b70 <putc>:
     b70:	e92d4800 	push	{fp, lr}
     b74:	e28db004 	add	fp, sp, #4
     b78:	e24dd008 	sub	sp, sp, #8
     b7c:	e50b0008 	str	r0, [fp, #-8]
     b80:	e1a03001 	mov	r3, r1
     b84:	e54b3009 	strb	r3, [fp, #-9]
     b88:	e24b3009 	sub	r3, fp, #9
     b8c:	e3a02001 	mov	r2, #1
     b90:	e1a01003 	mov	r1, r3
     b94:	e51b0008 	ldr	r0, [fp, #-8]
     b98:	ebffff64 	bl	930 <write>
     b9c:	e1a00000 	nop			@ (mov r0, r0)
     ba0:	e24bd004 	sub	sp, fp, #4
     ba4:	e8bd8800 	pop	{fp, pc}

00000ba8 <printint>:
     ba8:	e92d4800 	push	{fp, lr}
     bac:	e28db004 	add	fp, sp, #4
     bb0:	e24dd030 	sub	sp, sp, #48	@ 0x30
     bb4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     bb8:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     bbc:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     bc0:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     bc4:	e3a03000 	mov	r3, #0
     bc8:	e50b300c 	str	r3, [fp, #-12]
     bcc:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     bd0:	e3530000 	cmp	r3, #0
     bd4:	0a000008 	beq	bfc <printint+0x54>
     bd8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bdc:	e3530000 	cmp	r3, #0
     be0:	aa000005 	bge	bfc <printint+0x54>
     be4:	e3a03001 	mov	r3, #1
     be8:	e50b300c 	str	r3, [fp, #-12]
     bec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     bf0:	e2633000 	rsb	r3, r3, #0
     bf4:	e50b3010 	str	r3, [fp, #-16]
     bf8:	ea000001 	b	c04 <printint+0x5c>
     bfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     c00:	e50b3010 	str	r3, [fp, #-16]
     c04:	e3a03000 	mov	r3, #0
     c08:	e50b3008 	str	r3, [fp, #-8]
     c0c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     c10:	e51b3010 	ldr	r3, [fp, #-16]
     c14:	e1a01002 	mov	r1, r2
     c18:	e1a00003 	mov	r0, r3
     c1c:	eb0001d5 	bl	1378 <__aeabi_uidivmod>
     c20:	e1a03001 	mov	r3, r1
     c24:	e1a01003 	mov	r1, r3
     c28:	e51b3008 	ldr	r3, [fp, #-8]
     c2c:	e2832001 	add	r2, r3, #1
     c30:	e50b2008 	str	r2, [fp, #-8]
     c34:	e59f20a0 	ldr	r2, [pc, #160]	@ cdc <printint+0x134>
     c38:	e7d22001 	ldrb	r2, [r2, r1]
     c3c:	e2433004 	sub	r3, r3, #4
     c40:	e083300b 	add	r3, r3, fp
     c44:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c48:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     c4c:	e1a01003 	mov	r1, r3
     c50:	e51b0010 	ldr	r0, [fp, #-16]
     c54:	eb00018a 	bl	1284 <__udivsi3>
     c58:	e1a03000 	mov	r3, r0
     c5c:	e50b3010 	str	r3, [fp, #-16]
     c60:	e51b3010 	ldr	r3, [fp, #-16]
     c64:	e3530000 	cmp	r3, #0
     c68:	1affffe7 	bne	c0c <printint+0x64>
     c6c:	e51b300c 	ldr	r3, [fp, #-12]
     c70:	e3530000 	cmp	r3, #0
     c74:	0a00000e 	beq	cb4 <printint+0x10c>
     c78:	e51b3008 	ldr	r3, [fp, #-8]
     c7c:	e2832001 	add	r2, r3, #1
     c80:	e50b2008 	str	r2, [fp, #-8]
     c84:	e2433004 	sub	r3, r3, #4
     c88:	e083300b 	add	r3, r3, fp
     c8c:	e3a0202d 	mov	r2, #45	@ 0x2d
     c90:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     c94:	ea000006 	b	cb4 <printint+0x10c>
     c98:	e24b2020 	sub	r2, fp, #32
     c9c:	e51b3008 	ldr	r3, [fp, #-8]
     ca0:	e0823003 	add	r3, r2, r3
     ca4:	e5d33000 	ldrb	r3, [r3]
     ca8:	e1a01003 	mov	r1, r3
     cac:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     cb0:	ebffffae 	bl	b70 <putc>
     cb4:	e51b3008 	ldr	r3, [fp, #-8]
     cb8:	e2433001 	sub	r3, r3, #1
     cbc:	e50b3008 	str	r3, [fp, #-8]
     cc0:	e51b3008 	ldr	r3, [fp, #-8]
     cc4:	e3530000 	cmp	r3, #0
     cc8:	aafffff2 	bge	c98 <printint+0xf0>
     ccc:	e1a00000 	nop			@ (mov r0, r0)
     cd0:	e1a00000 	nop			@ (mov r0, r0)
     cd4:	e24bd004 	sub	sp, fp, #4
     cd8:	e8bd8800 	pop	{fp, pc}
     cdc:	000013f4 	.word	0x000013f4

00000ce0 <printf>:
     ce0:	e92d000e 	push	{r1, r2, r3}
     ce4:	e92d4800 	push	{fp, lr}
     ce8:	e28db004 	add	fp, sp, #4
     cec:	e24dd024 	sub	sp, sp, #36	@ 0x24
     cf0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     cf4:	e3a03000 	mov	r3, #0
     cf8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cfc:	e28b3008 	add	r3, fp, #8
     d00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d04:	e3a03000 	mov	r3, #0
     d08:	e50b3010 	str	r3, [fp, #-16]
     d0c:	ea000074 	b	ee4 <printf+0x204>
     d10:	e59b2004 	ldr	r2, [fp, #4]
     d14:	e51b3010 	ldr	r3, [fp, #-16]
     d18:	e0823003 	add	r3, r2, r3
     d1c:	e5d33000 	ldrb	r3, [r3]
     d20:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     d24:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d28:	e3530000 	cmp	r3, #0
     d2c:	1a00000b 	bne	d60 <printf+0x80>
     d30:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d34:	e3530025 	cmp	r3, #37	@ 0x25
     d38:	1a000002 	bne	d48 <printf+0x68>
     d3c:	e3a03025 	mov	r3, #37	@ 0x25
     d40:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     d44:	ea000063 	b	ed8 <printf+0x1f8>
     d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d4c:	e6ef3073 	uxtb	r3, r3
     d50:	e1a01003 	mov	r1, r3
     d54:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d58:	ebffff84 	bl	b70 <putc>
     d5c:	ea00005d 	b	ed8 <printf+0x1f8>
     d60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     d64:	e3530025 	cmp	r3, #37	@ 0x25
     d68:	1a00005a 	bne	ed8 <printf+0x1f8>
     d6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d70:	e3530064 	cmp	r3, #100	@ 0x64
     d74:	1a00000a 	bne	da4 <printf+0xc4>
     d78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d7c:	e5933000 	ldr	r3, [r3]
     d80:	e1a01003 	mov	r1, r3
     d84:	e3a03001 	mov	r3, #1
     d88:	e3a0200a 	mov	r2, #10
     d8c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d90:	ebffff84 	bl	ba8 <printint>
     d94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d98:	e2833004 	add	r3, r3, #4
     d9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     da0:	ea00004a 	b	ed0 <printf+0x1f0>
     da4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     da8:	e3530078 	cmp	r3, #120	@ 0x78
     dac:	0a000002 	beq	dbc <printf+0xdc>
     db0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     db4:	e3530070 	cmp	r3, #112	@ 0x70
     db8:	1a00000a 	bne	de8 <printf+0x108>
     dbc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc0:	e5933000 	ldr	r3, [r3]
     dc4:	e1a01003 	mov	r1, r3
     dc8:	e3a03000 	mov	r3, #0
     dcc:	e3a02010 	mov	r2, #16
     dd0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd4:	ebffff73 	bl	ba8 <printint>
     dd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ddc:	e2833004 	add	r3, r3, #4
     de0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de4:	ea000039 	b	ed0 <printf+0x1f0>
     de8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dec:	e3530073 	cmp	r3, #115	@ 0x73
     df0:	1a000018 	bne	e58 <printf+0x178>
     df4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     df8:	e5933000 	ldr	r3, [r3]
     dfc:	e50b300c 	str	r3, [fp, #-12]
     e00:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e04:	e2833004 	add	r3, r3, #4
     e08:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e0c:	e51b300c 	ldr	r3, [fp, #-12]
     e10:	e3530000 	cmp	r3, #0
     e14:	1a00000a 	bne	e44 <printf+0x164>
     e18:	e59f30f4 	ldr	r3, [pc, #244]	@ f14 <printf+0x234>
     e1c:	e50b300c 	str	r3, [fp, #-12]
     e20:	ea000007 	b	e44 <printf+0x164>
     e24:	e51b300c 	ldr	r3, [fp, #-12]
     e28:	e5d33000 	ldrb	r3, [r3]
     e2c:	e1a01003 	mov	r1, r3
     e30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e34:	ebffff4d 	bl	b70 <putc>
     e38:	e51b300c 	ldr	r3, [fp, #-12]
     e3c:	e2833001 	add	r3, r3, #1
     e40:	e50b300c 	str	r3, [fp, #-12]
     e44:	e51b300c 	ldr	r3, [fp, #-12]
     e48:	e5d33000 	ldrb	r3, [r3]
     e4c:	e3530000 	cmp	r3, #0
     e50:	1afffff3 	bne	e24 <printf+0x144>
     e54:	ea00001d 	b	ed0 <printf+0x1f0>
     e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e5c:	e3530063 	cmp	r3, #99	@ 0x63
     e60:	1a000009 	bne	e8c <printf+0x1ac>
     e64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e68:	e5933000 	ldr	r3, [r3]
     e6c:	e6ef3073 	uxtb	r3, r3
     e70:	e1a01003 	mov	r1, r3
     e74:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e78:	ebffff3c 	bl	b70 <putc>
     e7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e80:	e2833004 	add	r3, r3, #4
     e84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     e88:	ea000010 	b	ed0 <printf+0x1f0>
     e8c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e90:	e3530025 	cmp	r3, #37	@ 0x25
     e94:	1a000005 	bne	eb0 <printf+0x1d0>
     e98:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e9c:	e6ef3073 	uxtb	r3, r3
     ea0:	e1a01003 	mov	r1, r3
     ea4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ea8:	ebffff30 	bl	b70 <putc>
     eac:	ea000007 	b	ed0 <printf+0x1f0>
     eb0:	e3a01025 	mov	r1, #37	@ 0x25
     eb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     eb8:	ebffff2c 	bl	b70 <putc>
     ebc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     ec0:	e6ef3073 	uxtb	r3, r3
     ec4:	e1a01003 	mov	r1, r3
     ec8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     ecc:	ebffff27 	bl	b70 <putc>
     ed0:	e3a03000 	mov	r3, #0
     ed4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ed8:	e51b3010 	ldr	r3, [fp, #-16]
     edc:	e2833001 	add	r3, r3, #1
     ee0:	e50b3010 	str	r3, [fp, #-16]
     ee4:	e59b2004 	ldr	r2, [fp, #4]
     ee8:	e51b3010 	ldr	r3, [fp, #-16]
     eec:	e0823003 	add	r3, r2, r3
     ef0:	e5d33000 	ldrb	r3, [r3]
     ef4:	e3530000 	cmp	r3, #0
     ef8:	1affff84 	bne	d10 <printf+0x30>
     efc:	e1a00000 	nop			@ (mov r0, r0)
     f00:	e1a00000 	nop			@ (mov r0, r0)
     f04:	e24bd004 	sub	sp, fp, #4
     f08:	e8bd4800 	pop	{fp, lr}
     f0c:	e28dd00c 	add	sp, sp, #12
     f10:	e12fff1e 	bx	lr
     f14:	000013ec 	.word	0x000013ec

00000f18 <free>:
     f18:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     f1c:	e28db000 	add	fp, sp, #0
     f20:	e24dd014 	sub	sp, sp, #20
     f24:	e50b0010 	str	r0, [fp, #-16]
     f28:	e51b3010 	ldr	r3, [fp, #-16]
     f2c:	e2433008 	sub	r3, r3, #8
     f30:	e50b300c 	str	r3, [fp, #-12]
     f34:	e59f3154 	ldr	r3, [pc, #340]	@ 1090 <free+0x178>
     f38:	e5933000 	ldr	r3, [r3]
     f3c:	e50b3008 	str	r3, [fp, #-8]
     f40:	ea000010 	b	f88 <free+0x70>
     f44:	e51b3008 	ldr	r3, [fp, #-8]
     f48:	e5933000 	ldr	r3, [r3]
     f4c:	e51b2008 	ldr	r2, [fp, #-8]
     f50:	e1520003 	cmp	r2, r3
     f54:	3a000008 	bcc	f7c <free+0x64>
     f58:	e51b200c 	ldr	r2, [fp, #-12]
     f5c:	e51b3008 	ldr	r3, [fp, #-8]
     f60:	e1520003 	cmp	r2, r3
     f64:	8a000010 	bhi	fac <free+0x94>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5933000 	ldr	r3, [r3]
     f70:	e51b200c 	ldr	r2, [fp, #-12]
     f74:	e1520003 	cmp	r2, r3
     f78:	3a00000b 	bcc	fac <free+0x94>
     f7c:	e51b3008 	ldr	r3, [fp, #-8]
     f80:	e5933000 	ldr	r3, [r3]
     f84:	e50b3008 	str	r3, [fp, #-8]
     f88:	e51b200c 	ldr	r2, [fp, #-12]
     f8c:	e51b3008 	ldr	r3, [fp, #-8]
     f90:	e1520003 	cmp	r2, r3
     f94:	9affffea 	bls	f44 <free+0x2c>
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5933000 	ldr	r3, [r3]
     fa0:	e51b200c 	ldr	r2, [fp, #-12]
     fa4:	e1520003 	cmp	r2, r3
     fa8:	2affffe5 	bcs	f44 <free+0x2c>
     fac:	e51b300c 	ldr	r3, [fp, #-12]
     fb0:	e5933004 	ldr	r3, [r3, #4]
     fb4:	e1a03183 	lsl	r3, r3, #3
     fb8:	e51b200c 	ldr	r2, [fp, #-12]
     fbc:	e0822003 	add	r2, r2, r3
     fc0:	e51b3008 	ldr	r3, [fp, #-8]
     fc4:	e5933000 	ldr	r3, [r3]
     fc8:	e1520003 	cmp	r2, r3
     fcc:	1a00000d 	bne	1008 <free+0xf0>
     fd0:	e51b300c 	ldr	r3, [fp, #-12]
     fd4:	e5932004 	ldr	r2, [r3, #4]
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5933000 	ldr	r3, [r3]
     fe0:	e5933004 	ldr	r3, [r3, #4]
     fe4:	e0822003 	add	r2, r2, r3
     fe8:	e51b300c 	ldr	r3, [fp, #-12]
     fec:	e5832004 	str	r2, [r3, #4]
     ff0:	e51b3008 	ldr	r3, [fp, #-8]
     ff4:	e5933000 	ldr	r3, [r3]
     ff8:	e5932000 	ldr	r2, [r3]
     ffc:	e51b300c 	ldr	r3, [fp, #-12]
    1000:	e5832000 	str	r2, [r3]
    1004:	ea000003 	b	1018 <free+0x100>
    1008:	e51b3008 	ldr	r3, [fp, #-8]
    100c:	e5932000 	ldr	r2, [r3]
    1010:	e51b300c 	ldr	r3, [fp, #-12]
    1014:	e5832000 	str	r2, [r3]
    1018:	e51b3008 	ldr	r3, [fp, #-8]
    101c:	e5933004 	ldr	r3, [r3, #4]
    1020:	e1a03183 	lsl	r3, r3, #3
    1024:	e51b2008 	ldr	r2, [fp, #-8]
    1028:	e0823003 	add	r3, r2, r3
    102c:	e51b200c 	ldr	r2, [fp, #-12]
    1030:	e1520003 	cmp	r2, r3
    1034:	1a00000b 	bne	1068 <free+0x150>
    1038:	e51b3008 	ldr	r3, [fp, #-8]
    103c:	e5932004 	ldr	r2, [r3, #4]
    1040:	e51b300c 	ldr	r3, [fp, #-12]
    1044:	e5933004 	ldr	r3, [r3, #4]
    1048:	e0822003 	add	r2, r2, r3
    104c:	e51b3008 	ldr	r3, [fp, #-8]
    1050:	e5832004 	str	r2, [r3, #4]
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e5932000 	ldr	r2, [r3]
    105c:	e51b3008 	ldr	r3, [fp, #-8]
    1060:	e5832000 	str	r2, [r3]
    1064:	ea000002 	b	1074 <free+0x15c>
    1068:	e51b3008 	ldr	r3, [fp, #-8]
    106c:	e51b200c 	ldr	r2, [fp, #-12]
    1070:	e5832000 	str	r2, [r3]
    1074:	e59f2014 	ldr	r2, [pc, #20]	@ 1090 <free+0x178>
    1078:	e51b3008 	ldr	r3, [fp, #-8]
    107c:	e5823000 	str	r3, [r2]
    1080:	e1a00000 	nop			@ (mov r0, r0)
    1084:	e28bd000 	add	sp, fp, #0
    1088:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    108c:	e12fff1e 	bx	lr
    1090:	00001420 	.word	0x00001420

00001094 <morecore>:
    1094:	e92d4800 	push	{fp, lr}
    1098:	e28db004 	add	fp, sp, #4
    109c:	e24dd010 	sub	sp, sp, #16
    10a0:	e50b0010 	str	r0, [fp, #-16]
    10a4:	e51b3010 	ldr	r3, [fp, #-16]
    10a8:	e3530a01 	cmp	r3, #4096	@ 0x1000
    10ac:	2a000001 	bcs	10b8 <morecore+0x24>
    10b0:	e3a03a01 	mov	r3, #4096	@ 0x1000
    10b4:	e50b3010 	str	r3, [fp, #-16]
    10b8:	e51b3010 	ldr	r3, [fp, #-16]
    10bc:	e1a03183 	lsl	r3, r3, #3
    10c0:	e1a00003 	mov	r0, r3
    10c4:	ebfffe8e 	bl	b04 <sbrk>
    10c8:	e50b0008 	str	r0, [fp, #-8]
    10cc:	e51b3008 	ldr	r3, [fp, #-8]
    10d0:	e3730001 	cmn	r3, #1
    10d4:	1a000001 	bne	10e0 <morecore+0x4c>
    10d8:	e3a03000 	mov	r3, #0
    10dc:	ea00000a 	b	110c <morecore+0x78>
    10e0:	e51b3008 	ldr	r3, [fp, #-8]
    10e4:	e50b300c 	str	r3, [fp, #-12]
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e51b2010 	ldr	r2, [fp, #-16]
    10f0:	e5832004 	str	r2, [r3, #4]
    10f4:	e51b300c 	ldr	r3, [fp, #-12]
    10f8:	e2833008 	add	r3, r3, #8
    10fc:	e1a00003 	mov	r0, r3
    1100:	ebffff84 	bl	f18 <free>
    1104:	e59f300c 	ldr	r3, [pc, #12]	@ 1118 <morecore+0x84>
    1108:	e5933000 	ldr	r3, [r3]
    110c:	e1a00003 	mov	r0, r3
    1110:	e24bd004 	sub	sp, fp, #4
    1114:	e8bd8800 	pop	{fp, pc}
    1118:	00001420 	.word	0x00001420

0000111c <malloc>:
    111c:	e92d4800 	push	{fp, lr}
    1120:	e28db004 	add	fp, sp, #4
    1124:	e24dd018 	sub	sp, sp, #24
    1128:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    112c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1130:	e2833007 	add	r3, r3, #7
    1134:	e1a031a3 	lsr	r3, r3, #3
    1138:	e2833001 	add	r3, r3, #1
    113c:	e50b3010 	str	r3, [fp, #-16]
    1140:	e59f3134 	ldr	r3, [pc, #308]	@ 127c <malloc+0x160>
    1144:	e5933000 	ldr	r3, [r3]
    1148:	e50b300c 	str	r3, [fp, #-12]
    114c:	e51b300c 	ldr	r3, [fp, #-12]
    1150:	e3530000 	cmp	r3, #0
    1154:	1a00000b 	bne	1188 <malloc+0x6c>
    1158:	e59f3120 	ldr	r3, [pc, #288]	@ 1280 <malloc+0x164>
    115c:	e50b300c 	str	r3, [fp, #-12]
    1160:	e59f2114 	ldr	r2, [pc, #276]	@ 127c <malloc+0x160>
    1164:	e51b300c 	ldr	r3, [fp, #-12]
    1168:	e5823000 	str	r3, [r2]
    116c:	e59f3108 	ldr	r3, [pc, #264]	@ 127c <malloc+0x160>
    1170:	e5933000 	ldr	r3, [r3]
    1174:	e59f2104 	ldr	r2, [pc, #260]	@ 1280 <malloc+0x164>
    1178:	e5823000 	str	r3, [r2]
    117c:	e59f30fc 	ldr	r3, [pc, #252]	@ 1280 <malloc+0x164>
    1180:	e3a02000 	mov	r2, #0
    1184:	e5832004 	str	r2, [r3, #4]
    1188:	e51b300c 	ldr	r3, [fp, #-12]
    118c:	e5933000 	ldr	r3, [r3]
    1190:	e50b3008 	str	r3, [fp, #-8]
    1194:	e51b3008 	ldr	r3, [fp, #-8]
    1198:	e5933004 	ldr	r3, [r3, #4]
    119c:	e51b2010 	ldr	r2, [fp, #-16]
    11a0:	e1520003 	cmp	r2, r3
    11a4:	8a00001e 	bhi	1224 <malloc+0x108>
    11a8:	e51b3008 	ldr	r3, [fp, #-8]
    11ac:	e5933004 	ldr	r3, [r3, #4]
    11b0:	e51b2010 	ldr	r2, [fp, #-16]
    11b4:	e1520003 	cmp	r2, r3
    11b8:	1a000004 	bne	11d0 <malloc+0xb4>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e5932000 	ldr	r2, [r3]
    11c4:	e51b300c 	ldr	r3, [fp, #-12]
    11c8:	e5832000 	str	r2, [r3]
    11cc:	ea00000e 	b	120c <malloc+0xf0>
    11d0:	e51b3008 	ldr	r3, [fp, #-8]
    11d4:	e5932004 	ldr	r2, [r3, #4]
    11d8:	e51b3010 	ldr	r3, [fp, #-16]
    11dc:	e0422003 	sub	r2, r2, r3
    11e0:	e51b3008 	ldr	r3, [fp, #-8]
    11e4:	e5832004 	str	r2, [r3, #4]
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e5933004 	ldr	r3, [r3, #4]
    11f0:	e1a03183 	lsl	r3, r3, #3
    11f4:	e51b2008 	ldr	r2, [fp, #-8]
    11f8:	e0823003 	add	r3, r2, r3
    11fc:	e50b3008 	str	r3, [fp, #-8]
    1200:	e51b3008 	ldr	r3, [fp, #-8]
    1204:	e51b2010 	ldr	r2, [fp, #-16]
    1208:	e5832004 	str	r2, [r3, #4]
    120c:	e59f2068 	ldr	r2, [pc, #104]	@ 127c <malloc+0x160>
    1210:	e51b300c 	ldr	r3, [fp, #-12]
    1214:	e5823000 	str	r3, [r2]
    1218:	e51b3008 	ldr	r3, [fp, #-8]
    121c:	e2833008 	add	r3, r3, #8
    1220:	ea000012 	b	1270 <malloc+0x154>
    1224:	e59f3050 	ldr	r3, [pc, #80]	@ 127c <malloc+0x160>
    1228:	e5933000 	ldr	r3, [r3]
    122c:	e51b2008 	ldr	r2, [fp, #-8]
    1230:	e1520003 	cmp	r2, r3
    1234:	1a000007 	bne	1258 <malloc+0x13c>
    1238:	e51b0010 	ldr	r0, [fp, #-16]
    123c:	ebffff94 	bl	1094 <morecore>
    1240:	e50b0008 	str	r0, [fp, #-8]
    1244:	e51b3008 	ldr	r3, [fp, #-8]
    1248:	e3530000 	cmp	r3, #0
    124c:	1a000001 	bne	1258 <malloc+0x13c>
    1250:	e3a03000 	mov	r3, #0
    1254:	ea000005 	b	1270 <malloc+0x154>
    1258:	e51b3008 	ldr	r3, [fp, #-8]
    125c:	e50b300c 	str	r3, [fp, #-12]
    1260:	e51b3008 	ldr	r3, [fp, #-8]
    1264:	e5933000 	ldr	r3, [r3]
    1268:	e50b3008 	str	r3, [fp, #-8]
    126c:	eaffffc8 	b	1194 <malloc+0x78>
    1270:	e1a00003 	mov	r0, r3
    1274:	e24bd004 	sub	sp, fp, #4
    1278:	e8bd8800 	pop	{fp, pc}
    127c:	00001420 	.word	0x00001420
    1280:	00001418 	.word	0x00001418

00001284 <__udivsi3>:
    1284:	e2512001 	subs	r2, r1, #1
    1288:	012fff1e 	bxeq	lr
    128c:	3a000036 	bcc	136c <__udivsi3+0xe8>
    1290:	e1500001 	cmp	r0, r1
    1294:	9a000022 	bls	1324 <__udivsi3+0xa0>
    1298:	e1110002 	tst	r1, r2
    129c:	0a000023 	beq	1330 <__udivsi3+0xac>
    12a0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    12a4:	01a01181 	lsleq	r1, r1, #3
    12a8:	03a03008 	moveq	r3, #8
    12ac:	13a03001 	movne	r3, #1
    12b0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    12b4:	31510000 	cmpcc	r1, r0
    12b8:	31a01201 	lslcc	r1, r1, #4
    12bc:	31a03203 	lslcc	r3, r3, #4
    12c0:	3afffffa 	bcc	12b0 <__udivsi3+0x2c>
    12c4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    12c8:	31510000 	cmpcc	r1, r0
    12cc:	31a01081 	lslcc	r1, r1, #1
    12d0:	31a03083 	lslcc	r3, r3, #1
    12d4:	3afffffa 	bcc	12c4 <__udivsi3+0x40>
    12d8:	e3a02000 	mov	r2, #0
    12dc:	e1500001 	cmp	r0, r1
    12e0:	20400001 	subcs	r0, r0, r1
    12e4:	21822003 	orrcs	r2, r2, r3
    12e8:	e15000a1 	cmp	r0, r1, lsr #1
    12ec:	204000a1 	subcs	r0, r0, r1, lsr #1
    12f0:	218220a3 	orrcs	r2, r2, r3, lsr #1
    12f4:	e1500121 	cmp	r0, r1, lsr #2
    12f8:	20400121 	subcs	r0, r0, r1, lsr #2
    12fc:	21822123 	orrcs	r2, r2, r3, lsr #2
    1300:	e15001a1 	cmp	r0, r1, lsr #3
    1304:	204001a1 	subcs	r0, r0, r1, lsr #3
    1308:	218221a3 	orrcs	r2, r2, r3, lsr #3
    130c:	e3500000 	cmp	r0, #0
    1310:	11b03223 	lsrsne	r3, r3, #4
    1314:	11a01221 	lsrne	r1, r1, #4
    1318:	1affffef 	bne	12dc <__udivsi3+0x58>
    131c:	e1a00002 	mov	r0, r2
    1320:	e12fff1e 	bx	lr
    1324:	03a00001 	moveq	r0, #1
    1328:	13a00000 	movne	r0, #0
    132c:	e12fff1e 	bx	lr
    1330:	e3510801 	cmp	r1, #65536	@ 0x10000
    1334:	21a01821 	lsrcs	r1, r1, #16
    1338:	23a02010 	movcs	r2, #16
    133c:	33a02000 	movcc	r2, #0
    1340:	e3510c01 	cmp	r1, #256	@ 0x100
    1344:	21a01421 	lsrcs	r1, r1, #8
    1348:	22822008 	addcs	r2, r2, #8
    134c:	e3510010 	cmp	r1, #16
    1350:	21a01221 	lsrcs	r1, r1, #4
    1354:	22822004 	addcs	r2, r2, #4
    1358:	e3510004 	cmp	r1, #4
    135c:	82822003 	addhi	r2, r2, #3
    1360:	908220a1 	addls	r2, r2, r1, lsr #1
    1364:	e1a00230 	lsr	r0, r0, r2
    1368:	e12fff1e 	bx	lr
    136c:	e3500000 	cmp	r0, #0
    1370:	13e00000 	mvnne	r0, #0
    1374:	ea000007 	b	1398 <__aeabi_idiv0>

00001378 <__aeabi_uidivmod>:
    1378:	e3510000 	cmp	r1, #0
    137c:	0afffffa 	beq	136c <__udivsi3+0xe8>
    1380:	e92d4003 	push	{r0, r1, lr}
    1384:	ebffffbe 	bl	1284 <__udivsi3>
    1388:	e8bd4006 	pop	{r1, r2, lr}
    138c:	e0030092 	mul	r3, r2, r0
    1390:	e0411003 	sub	r1, r1, r3
    1394:	e12fff1e 	bx	lr

00001398 <__aeabi_idiv0>:
    1398:	e12fff1e 	bx	lr
