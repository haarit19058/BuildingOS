
_sh:     file format elf32-littlearm


Disassembly of section .text:

00000000 <runcmd>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd028 	sub	sp, sp, #40	@ 0x28
       c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
      10:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      14:	e3530000 	cmp	r3, #0
      18:	1a000000 	bne	20 <runcmd+0x20>
      1c:	eb000535 	bl	14f8 <exit>
      20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      24:	e5933000 	ldr	r3, [r3]
      28:	e2432001 	sub	r2, r3, #1
      2c:	e59f3224 	ldr	r3, [pc, #548]	@ 258 <runcmd+0x258>
      30:	e3520004 	cmp	r2, #4
      34:	8a000001 	bhi	40 <runcmd+0x40>
      38:	e793f102 	ldr	pc, [r3, r2, lsl #2]
      3c:	e1a00000 	nop			@ (mov r0, r0)
      40:	e59f0214 	ldr	r0, [pc, #532]	@ 25c <runcmd+0x25c>
      44:	eb0000eb 	bl	3f8 <panic>
      48:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
      50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      54:	e5933004 	ldr	r3, [r3, #4]
      58:	e3530000 	cmp	r3, #0
      5c:	1a000000 	bne	64 <runcmd+0x64>
      60:	eb000524 	bl	14f8 <exit>
      64:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      68:	e5932004 	ldr	r2, [r3, #4]
      6c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      70:	e2833004 	add	r3, r3, #4
      74:	e1a01003 	mov	r1, r3
      78:	e1a00002 	mov	r0, r2
      7c:	eb00055c 	bl	15f4 <exec>
      80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
      84:	e5933004 	ldr	r3, [r3, #4]
      88:	e1a02003 	mov	r2, r3
      8c:	e59f11cc 	ldr	r1, [pc, #460]	@ 260 <runcmd+0x260>
      90:	e3a00002 	mov	r0, #2
      94:	eb000630 	bl	195c <printf>
      98:	ea00006d 	b	254 <runcmd+0x254>
      9c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
      a0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
      a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      a8:	e5933014 	ldr	r3, [r3, #20]
      ac:	e1a00003 	mov	r0, r3
      b0:	eb00053d 	bl	15ac <close>
      b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      b8:	e5932008 	ldr	r2, [r3, #8]
      bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      c0:	e5933010 	ldr	r3, [r3, #16]
      c4:	e1a01003 	mov	r1, r3
      c8:	e1a00002 	mov	r0, r2
      cc:	eb000551 	bl	1618 <open>
      d0:	e1a03000 	mov	r3, r0
      d4:	e3530000 	cmp	r3, #0
      d8:	aa000006 	bge	f8 <runcmd+0xf8>
      dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      e0:	e5933008 	ldr	r3, [r3, #8]
      e4:	e1a02003 	mov	r2, r3
      e8:	e59f1174 	ldr	r1, [pc, #372]	@ 264 <runcmd+0x264>
      ec:	e3a00002 	mov	r0, #2
      f0:	eb000619 	bl	195c <printf>
      f4:	eb0004ff 	bl	14f8 <exit>
      f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
      fc:	e5933004 	ldr	r3, [r3, #4]
     100:	e1a00003 	mov	r0, r3
     104:	ebffffbd 	bl	0 <runcmd>
     108:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     10c:	e50b300c 	str	r3, [fp, #-12]
     110:	eb0000c2 	bl	420 <fork1>
     114:	e1a03000 	mov	r3, r0
     118:	e3530000 	cmp	r3, #0
     11c:	1a000003 	bne	130 <runcmd+0x130>
     120:	e51b300c 	ldr	r3, [fp, #-12]
     124:	e5933004 	ldr	r3, [r3, #4]
     128:	e1a00003 	mov	r0, r3
     12c:	ebffffb3 	bl	0 <runcmd>
     130:	eb0004f9 	bl	151c <wait>
     134:	e51b300c 	ldr	r3, [fp, #-12]
     138:	e5933008 	ldr	r3, [r3, #8]
     13c:	e1a00003 	mov	r0, r3
     140:	ebffffae 	bl	0 <runcmd>
     144:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     148:	e50b3010 	str	r3, [fp, #-16]
     14c:	e24b3020 	sub	r3, fp, #32
     150:	e1a00003 	mov	r0, r3
     154:	eb0004f9 	bl	1540 <pipe>
     158:	e1a03000 	mov	r3, r0
     15c:	e3530000 	cmp	r3, #0
     160:	aa000001 	bge	16c <runcmd+0x16c>
     164:	e59f00fc 	ldr	r0, [pc, #252]	@ 268 <runcmd+0x268>
     168:	eb0000a2 	bl	3f8 <panic>
     16c:	eb0000ab 	bl	420 <fork1>
     170:	e1a03000 	mov	r3, r0
     174:	e3530000 	cmp	r3, #0
     178:	1a00000e 	bne	1b8 <runcmd+0x1b8>
     17c:	e3a00001 	mov	r0, #1
     180:	eb000509 	bl	15ac <close>
     184:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     188:	e1a00003 	mov	r0, r3
     18c:	eb000560 	bl	1714 <dup>
     190:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     194:	e1a00003 	mov	r0, r3
     198:	eb000503 	bl	15ac <close>
     19c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1a0:	e1a00003 	mov	r0, r3
     1a4:	eb000500 	bl	15ac <close>
     1a8:	e51b3010 	ldr	r3, [fp, #-16]
     1ac:	e5933004 	ldr	r3, [r3, #4]
     1b0:	e1a00003 	mov	r0, r3
     1b4:	ebffff91 	bl	0 <runcmd>
     1b8:	eb000098 	bl	420 <fork1>
     1bc:	e1a03000 	mov	r3, r0
     1c0:	e3530000 	cmp	r3, #0
     1c4:	1a00000e 	bne	204 <runcmd+0x204>
     1c8:	e3a00000 	mov	r0, #0
     1cc:	eb0004f6 	bl	15ac <close>
     1d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb00054d 	bl	1714 <dup>
     1dc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     1e0:	e1a00003 	mov	r0, r3
     1e4:	eb0004f0 	bl	15ac <close>
     1e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     1ec:	e1a00003 	mov	r0, r3
     1f0:	eb0004ed 	bl	15ac <close>
     1f4:	e51b3010 	ldr	r3, [fp, #-16]
     1f8:	e5933008 	ldr	r3, [r3, #8]
     1fc:	e1a00003 	mov	r0, r3
     200:	ebffff7e 	bl	0 <runcmd>
     204:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     208:	e1a00003 	mov	r0, r3
     20c:	eb0004e6 	bl	15ac <close>
     210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     214:	e1a00003 	mov	r0, r3
     218:	eb0004e3 	bl	15ac <close>
     21c:	eb0004be 	bl	151c <wait>
     220:	eb0004bd 	bl	151c <wait>
     224:	ea00000a 	b	254 <runcmd+0x254>
     228:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
     22c:	e50b3008 	str	r3, [fp, #-8]
     230:	eb00007a 	bl	420 <fork1>
     234:	e1a03000 	mov	r3, r0
     238:	e3530000 	cmp	r3, #0
     23c:	1a000003 	bne	250 <runcmd+0x250>
     240:	e51b3008 	ldr	r3, [fp, #-8]
     244:	e5933004 	ldr	r3, [r3, #4]
     248:	e1a00003 	mov	r0, r3
     24c:	ebffff6b 	bl	0 <runcmd>
     250:	e1a00000 	nop			@ (mov r0, r0)
     254:	eb0004a7 	bl	14f8 <exit>
     258:	00002048 	.word	0x00002048
     25c:	00002018 	.word	0x00002018
     260:	00002020 	.word	0x00002020
     264:	00002030 	.word	0x00002030
     268:	00002040 	.word	0x00002040

0000026c <getcmd>:
     26c:	e92d4800 	push	{fp, lr}
     270:	e28db004 	add	fp, sp, #4
     274:	e24dd008 	sub	sp, sp, #8
     278:	e50b0008 	str	r0, [fp, #-8]
     27c:	e50b100c 	str	r1, [fp, #-12]
     280:	e59f104c 	ldr	r1, [pc, #76]	@ 2d4 <getcmd+0x68>
     284:	e3a00002 	mov	r0, #2
     288:	eb0005b3 	bl	195c <printf>
     28c:	e51b300c 	ldr	r3, [fp, #-12]
     290:	e1a02003 	mov	r2, r3
     294:	e3a01000 	mov	r1, #0
     298:	e51b0008 	ldr	r0, [fp, #-8]
     29c:	eb0003a3 	bl	1130 <memset>
     2a0:	e51b100c 	ldr	r1, [fp, #-12]
     2a4:	e51b0008 	ldr	r0, [fp, #-8]
     2a8:	eb000404 	bl	12c0 <gets>
     2ac:	e51b3008 	ldr	r3, [fp, #-8]
     2b0:	e5d33000 	ldrb	r3, [r3]
     2b4:	e3530000 	cmp	r3, #0
     2b8:	1a000001 	bne	2c4 <getcmd+0x58>
     2bc:	e3e03000 	mvn	r3, #0
     2c0:	ea000000 	b	2c8 <getcmd+0x5c>
     2c4:	e3a03000 	mov	r3, #0
     2c8:	e1a00003 	mov	r0, r3
     2cc:	e24bd004 	sub	sp, fp, #4
     2d0:	e8bd8800 	pop	{fp, pc}
     2d4:	0000205c 	.word	0x0000205c

000002d8 <main>:
     2d8:	e92d4800 	push	{fp, lr}
     2dc:	e28db004 	add	fp, sp, #4
     2e0:	e24dd008 	sub	sp, sp, #8
     2e4:	ea000005 	b	300 <main+0x28>
     2e8:	e51b3008 	ldr	r3, [fp, #-8]
     2ec:	e3530002 	cmp	r3, #2
     2f0:	da000002 	ble	300 <main+0x28>
     2f4:	e51b0008 	ldr	r0, [fp, #-8]
     2f8:	eb0004ab 	bl	15ac <close>
     2fc:	ea000006 	b	31c <main+0x44>
     300:	e3a01002 	mov	r1, #2
     304:	e59f00dc 	ldr	r0, [pc, #220]	@ 3e8 <main+0x110>
     308:	eb0004c2 	bl	1618 <open>
     30c:	e50b0008 	str	r0, [fp, #-8]
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e3530000 	cmp	r3, #0
     318:	aafffff2 	bge	2e8 <main+0x10>
     31c:	ea00002a 	b	3cc <main+0xf4>
     320:	e59f30c4 	ldr	r3, [pc, #196]	@ 3ec <main+0x114>
     324:	e5d33000 	ldrb	r3, [r3]
     328:	e3530063 	cmp	r3, #99	@ 0x63
     32c:	1a00001a 	bne	39c <main+0xc4>
     330:	e59f30b4 	ldr	r3, [pc, #180]	@ 3ec <main+0x114>
     334:	e5d33001 	ldrb	r3, [r3, #1]
     338:	e3530064 	cmp	r3, #100	@ 0x64
     33c:	1a000016 	bne	39c <main+0xc4>
     340:	e59f30a4 	ldr	r3, [pc, #164]	@ 3ec <main+0x114>
     344:	e5d33002 	ldrb	r3, [r3, #2]
     348:	e3530020 	cmp	r3, #32
     34c:	1a000012 	bne	39c <main+0xc4>
     350:	e59f0094 	ldr	r0, [pc, #148]	@ 3ec <main+0x114>
     354:	eb000360 	bl	10dc <strlen>
     358:	e1a03000 	mov	r3, r0
     35c:	e2433001 	sub	r3, r3, #1
     360:	e59f2084 	ldr	r2, [pc, #132]	@ 3ec <main+0x114>
     364:	e3a01000 	mov	r1, #0
     368:	e7c21003 	strb	r1, [r2, r3]
     36c:	e59f307c 	ldr	r3, [pc, #124]	@ 3f0 <main+0x118>
     370:	e1a00003 	mov	r0, r3
     374:	eb0004dd 	bl	16f0 <chdir>
     378:	e1a03000 	mov	r3, r0
     37c:	e3530000 	cmp	r3, #0
     380:	aa000010 	bge	3c8 <main+0xf0>
     384:	e59f3064 	ldr	r3, [pc, #100]	@ 3f0 <main+0x118>
     388:	e1a02003 	mov	r2, r3
     38c:	e59f1060 	ldr	r1, [pc, #96]	@ 3f4 <main+0x11c>
     390:	e3a00002 	mov	r0, #2
     394:	eb000570 	bl	195c <printf>
     398:	ea00000a 	b	3c8 <main+0xf0>
     39c:	eb00001f 	bl	420 <fork1>
     3a0:	e1a03000 	mov	r3, r0
     3a4:	e3530000 	cmp	r3, #0
     3a8:	1a000004 	bne	3c0 <main+0xe8>
     3ac:	e59f0038 	ldr	r0, [pc, #56]	@ 3ec <main+0x114>
     3b0:	eb00015c 	bl	928 <parsecmd>
     3b4:	e1a03000 	mov	r3, r0
     3b8:	e1a00003 	mov	r0, r3
     3bc:	ebffff0f 	bl	0 <runcmd>
     3c0:	eb000455 	bl	151c <wait>
     3c4:	ea000000 	b	3cc <main+0xf4>
     3c8:	e1a00000 	nop			@ (mov r0, r0)
     3cc:	e3a01064 	mov	r1, #100	@ 0x64
     3d0:	e59f0014 	ldr	r0, [pc, #20]	@ 3ec <main+0x114>
     3d4:	ebffffa4 	bl	26c <getcmd>
     3d8:	e1a03000 	mov	r3, r0
     3dc:	e3530000 	cmp	r3, #0
     3e0:	aaffffce 	bge	320 <main+0x48>
     3e4:	eb000443 	bl	14f8 <exit>
     3e8:	00002060 	.word	0x00002060
     3ec:	000021b4 	.word	0x000021b4
     3f0:	000021b7 	.word	0x000021b7
     3f4:	00002068 	.word	0x00002068

000003f8 <panic>:
     3f8:	e92d4800 	push	{fp, lr}
     3fc:	e28db004 	add	fp, sp, #4
     400:	e24dd008 	sub	sp, sp, #8
     404:	e50b0008 	str	r0, [fp, #-8]
     408:	e51b2008 	ldr	r2, [fp, #-8]
     40c:	e59f1008 	ldr	r1, [pc, #8]	@ 41c <panic+0x24>
     410:	e3a00002 	mov	r0, #2
     414:	eb000550 	bl	195c <printf>
     418:	eb000436 	bl	14f8 <exit>
     41c:	00002078 	.word	0x00002078

00000420 <fork1>:
     420:	e92d4800 	push	{fp, lr}
     424:	e28db004 	add	fp, sp, #4
     428:	e24dd008 	sub	sp, sp, #8
     42c:	eb000428 	bl	14d4 <fork>
     430:	e50b0008 	str	r0, [fp, #-8]
     434:	e51b3008 	ldr	r3, [fp, #-8]
     438:	e3730001 	cmn	r3, #1
     43c:	1a000001 	bne	448 <fork1+0x28>
     440:	e59f0010 	ldr	r0, [pc, #16]	@ 458 <fork1+0x38>
     444:	ebffffeb 	bl	3f8 <panic>
     448:	e51b3008 	ldr	r3, [fp, #-8]
     44c:	e1a00003 	mov	r0, r3
     450:	e24bd004 	sub	sp, fp, #4
     454:	e8bd8800 	pop	{fp, pc}
     458:	0000207c 	.word	0x0000207c

0000045c <execcmd>:
     45c:	e92d4800 	push	{fp, lr}
     460:	e28db004 	add	fp, sp, #4
     464:	e24dd008 	sub	sp, sp, #8
     468:	e3a00054 	mov	r0, #84	@ 0x54
     46c:	eb000649 	bl	1d98 <malloc>
     470:	e50b0008 	str	r0, [fp, #-8]
     474:	e3a02054 	mov	r2, #84	@ 0x54
     478:	e3a01000 	mov	r1, #0
     47c:	e51b0008 	ldr	r0, [fp, #-8]
     480:	eb00032a 	bl	1130 <memset>
     484:	e51b3008 	ldr	r3, [fp, #-8]
     488:	e3a02001 	mov	r2, #1
     48c:	e5832000 	str	r2, [r3]
     490:	e51b3008 	ldr	r3, [fp, #-8]
     494:	e1a00003 	mov	r0, r3
     498:	e24bd004 	sub	sp, fp, #4
     49c:	e8bd8800 	pop	{fp, pc}

000004a0 <redircmd>:
     4a0:	e92d4800 	push	{fp, lr}
     4a4:	e28db004 	add	fp, sp, #4
     4a8:	e24dd018 	sub	sp, sp, #24
     4ac:	e50b0010 	str	r0, [fp, #-16]
     4b0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     4b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     4b8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     4bc:	e3a00018 	mov	r0, #24
     4c0:	eb000634 	bl	1d98 <malloc>
     4c4:	e50b0008 	str	r0, [fp, #-8]
     4c8:	e3a02018 	mov	r2, #24
     4cc:	e3a01000 	mov	r1, #0
     4d0:	e51b0008 	ldr	r0, [fp, #-8]
     4d4:	eb000315 	bl	1130 <memset>
     4d8:	e51b3008 	ldr	r3, [fp, #-8]
     4dc:	e3a02002 	mov	r2, #2
     4e0:	e5832000 	str	r2, [r3]
     4e4:	e51b3008 	ldr	r3, [fp, #-8]
     4e8:	e51b2010 	ldr	r2, [fp, #-16]
     4ec:	e5832004 	str	r2, [r3, #4]
     4f0:	e51b3008 	ldr	r3, [fp, #-8]
     4f4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     4f8:	e5832008 	str	r2, [r3, #8]
     4fc:	e51b3008 	ldr	r3, [fp, #-8]
     500:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     504:	e583200c 	str	r2, [r3, #12]
     508:	e51b3008 	ldr	r3, [fp, #-8]
     50c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     510:	e5832010 	str	r2, [r3, #16]
     514:	e51b3008 	ldr	r3, [fp, #-8]
     518:	e59b2004 	ldr	r2, [fp, #4]
     51c:	e5832014 	str	r2, [r3, #20]
     520:	e51b3008 	ldr	r3, [fp, #-8]
     524:	e1a00003 	mov	r0, r3
     528:	e24bd004 	sub	sp, fp, #4
     52c:	e8bd8800 	pop	{fp, pc}

00000530 <pipecmd>:
     530:	e92d4800 	push	{fp, lr}
     534:	e28db004 	add	fp, sp, #4
     538:	e24dd010 	sub	sp, sp, #16
     53c:	e50b0010 	str	r0, [fp, #-16]
     540:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     544:	e3a0000c 	mov	r0, #12
     548:	eb000612 	bl	1d98 <malloc>
     54c:	e50b0008 	str	r0, [fp, #-8]
     550:	e3a0200c 	mov	r2, #12
     554:	e3a01000 	mov	r1, #0
     558:	e51b0008 	ldr	r0, [fp, #-8]
     55c:	eb0002f3 	bl	1130 <memset>
     560:	e51b3008 	ldr	r3, [fp, #-8]
     564:	e3a02003 	mov	r2, #3
     568:	e5832000 	str	r2, [r3]
     56c:	e51b3008 	ldr	r3, [fp, #-8]
     570:	e51b2010 	ldr	r2, [fp, #-16]
     574:	e5832004 	str	r2, [r3, #4]
     578:	e51b3008 	ldr	r3, [fp, #-8]
     57c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     580:	e5832008 	str	r2, [r3, #8]
     584:	e51b3008 	ldr	r3, [fp, #-8]
     588:	e1a00003 	mov	r0, r3
     58c:	e24bd004 	sub	sp, fp, #4
     590:	e8bd8800 	pop	{fp, pc}

00000594 <listcmd>:
     594:	e92d4800 	push	{fp, lr}
     598:	e28db004 	add	fp, sp, #4
     59c:	e24dd010 	sub	sp, sp, #16
     5a0:	e50b0010 	str	r0, [fp, #-16]
     5a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     5a8:	e3a0000c 	mov	r0, #12
     5ac:	eb0005f9 	bl	1d98 <malloc>
     5b0:	e50b0008 	str	r0, [fp, #-8]
     5b4:	e3a0200c 	mov	r2, #12
     5b8:	e3a01000 	mov	r1, #0
     5bc:	e51b0008 	ldr	r0, [fp, #-8]
     5c0:	eb0002da 	bl	1130 <memset>
     5c4:	e51b3008 	ldr	r3, [fp, #-8]
     5c8:	e3a02004 	mov	r2, #4
     5cc:	e5832000 	str	r2, [r3]
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e51b2010 	ldr	r2, [fp, #-16]
     5d8:	e5832004 	str	r2, [r3, #4]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     5e4:	e5832008 	str	r2, [r3, #8]
     5e8:	e51b3008 	ldr	r3, [fp, #-8]
     5ec:	e1a00003 	mov	r0, r3
     5f0:	e24bd004 	sub	sp, fp, #4
     5f4:	e8bd8800 	pop	{fp, pc}

000005f8 <backcmd>:
     5f8:	e92d4800 	push	{fp, lr}
     5fc:	e28db004 	add	fp, sp, #4
     600:	e24dd010 	sub	sp, sp, #16
     604:	e50b0010 	str	r0, [fp, #-16]
     608:	e3a00008 	mov	r0, #8
     60c:	eb0005e1 	bl	1d98 <malloc>
     610:	e50b0008 	str	r0, [fp, #-8]
     614:	e3a02008 	mov	r2, #8
     618:	e3a01000 	mov	r1, #0
     61c:	e51b0008 	ldr	r0, [fp, #-8]
     620:	eb0002c2 	bl	1130 <memset>
     624:	e51b3008 	ldr	r3, [fp, #-8]
     628:	e3a02005 	mov	r2, #5
     62c:	e5832000 	str	r2, [r3]
     630:	e51b3008 	ldr	r3, [fp, #-8]
     634:	e51b2010 	ldr	r2, [fp, #-16]
     638:	e5832004 	str	r2, [r3, #4]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e1a00003 	mov	r0, r3
     644:	e24bd004 	sub	sp, fp, #4
     648:	e8bd8800 	pop	{fp, pc}

0000064c <gettoken>:
     64c:	e92d4800 	push	{fp, lr}
     650:	e28db004 	add	fp, sp, #4
     654:	e24dd018 	sub	sp, sp, #24
     658:	e50b0010 	str	r0, [fp, #-16]
     65c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     660:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     664:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     668:	e51b3010 	ldr	r3, [fp, #-16]
     66c:	e5933000 	ldr	r3, [r3]
     670:	e50b3008 	str	r3, [fp, #-8]
     674:	ea000002 	b	684 <gettoken+0x38>
     678:	e51b3008 	ldr	r3, [fp, #-8]
     67c:	e2833001 	add	r3, r3, #1
     680:	e50b3008 	str	r3, [fp, #-8]
     684:	e51b2008 	ldr	r2, [fp, #-8]
     688:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     68c:	e1520003 	cmp	r2, r3
     690:	2a000007 	bcs	6b4 <gettoken+0x68>
     694:	e51b3008 	ldr	r3, [fp, #-8]
     698:	e5d33000 	ldrb	r3, [r3]
     69c:	e1a01003 	mov	r1, r3
     6a0:	e59f01b8 	ldr	r0, [pc, #440]	@ 860 <gettoken+0x214>
     6a4:	eb0002eb 	bl	1258 <strchr>
     6a8:	e1a03000 	mov	r3, r0
     6ac:	e3530000 	cmp	r3, #0
     6b0:	1afffff0 	bne	678 <gettoken+0x2c>
     6b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6b8:	e3530000 	cmp	r3, #0
     6bc:	0a000002 	beq	6cc <gettoken+0x80>
     6c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     6c4:	e51b2008 	ldr	r2, [fp, #-8]
     6c8:	e5832000 	str	r2, [r3]
     6cc:	e51b3008 	ldr	r3, [fp, #-8]
     6d0:	e5d33000 	ldrb	r3, [r3]
     6d4:	e50b300c 	str	r3, [fp, #-12]
     6d8:	e51b3008 	ldr	r3, [fp, #-8]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e353007c 	cmp	r3, #124	@ 0x7c
     6e4:	0a00000f 	beq	728 <gettoken+0xdc>
     6e8:	e353007c 	cmp	r3, #124	@ 0x7c
     6ec:	ca00001e 	bgt	76c <gettoken+0x120>
     6f0:	e3530000 	cmp	r3, #0
     6f4:	0a000037 	beq	7d8 <gettoken+0x18c>
     6f8:	e3530000 	cmp	r3, #0
     6fc:	ba00001a 	blt	76c <gettoken+0x120>
     700:	e353003e 	cmp	r3, #62	@ 0x3e
     704:	ca000018 	bgt	76c <gettoken+0x120>
     708:	e3530026 	cmp	r3, #38	@ 0x26
     70c:	ba000016 	blt	76c <gettoken+0x120>
     710:	e2432026 	sub	r2, r3, #38	@ 0x26
     714:	e59f3148 	ldr	r3, [pc, #328]	@ 864 <gettoken+0x218>
     718:	e3520018 	cmp	r2, #24
     71c:	8a000012 	bhi	76c <gettoken+0x120>
     720:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     724:	e1a00000 	nop			@ (mov r0, r0)
     728:	e51b3008 	ldr	r3, [fp, #-8]
     72c:	e2833001 	add	r3, r3, #1
     730:	e50b3008 	str	r3, [fp, #-8]
     734:	ea00002c 	b	7ec <gettoken+0x1a0>
     738:	e51b3008 	ldr	r3, [fp, #-8]
     73c:	e2833001 	add	r3, r3, #1
     740:	e50b3008 	str	r3, [fp, #-8]
     744:	e51b3008 	ldr	r3, [fp, #-8]
     748:	e5d33000 	ldrb	r3, [r3]
     74c:	e353003e 	cmp	r3, #62	@ 0x3e
     750:	1a000022 	bne	7e0 <gettoken+0x194>
     754:	e3a0302b 	mov	r3, #43	@ 0x2b
     758:	e50b300c 	str	r3, [fp, #-12]
     75c:	e51b3008 	ldr	r3, [fp, #-8]
     760:	e2833001 	add	r3, r3, #1
     764:	e50b3008 	str	r3, [fp, #-8]
     768:	ea00001c 	b	7e0 <gettoken+0x194>
     76c:	e3a03061 	mov	r3, #97	@ 0x61
     770:	e50b300c 	str	r3, [fp, #-12]
     774:	ea000002 	b	784 <gettoken+0x138>
     778:	e51b3008 	ldr	r3, [fp, #-8]
     77c:	e2833001 	add	r3, r3, #1
     780:	e50b3008 	str	r3, [fp, #-8]
     784:	e51b2008 	ldr	r2, [fp, #-8]
     788:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     78c:	e1520003 	cmp	r2, r3
     790:	2a000014 	bcs	7e8 <gettoken+0x19c>
     794:	e51b3008 	ldr	r3, [fp, #-8]
     798:	e5d33000 	ldrb	r3, [r3]
     79c:	e1a01003 	mov	r1, r3
     7a0:	e59f00b8 	ldr	r0, [pc, #184]	@ 860 <gettoken+0x214>
     7a4:	eb0002ab 	bl	1258 <strchr>
     7a8:	e1a03000 	mov	r3, r0
     7ac:	e3530000 	cmp	r3, #0
     7b0:	1a00000c 	bne	7e8 <gettoken+0x19c>
     7b4:	e51b3008 	ldr	r3, [fp, #-8]
     7b8:	e5d33000 	ldrb	r3, [r3]
     7bc:	e1a01003 	mov	r1, r3
     7c0:	e59f00a0 	ldr	r0, [pc, #160]	@ 868 <gettoken+0x21c>
     7c4:	eb0002a3 	bl	1258 <strchr>
     7c8:	e1a03000 	mov	r3, r0
     7cc:	e3530000 	cmp	r3, #0
     7d0:	0affffe8 	beq	778 <gettoken+0x12c>
     7d4:	ea000003 	b	7e8 <gettoken+0x19c>
     7d8:	e1a00000 	nop			@ (mov r0, r0)
     7dc:	ea000002 	b	7ec <gettoken+0x1a0>
     7e0:	e1a00000 	nop			@ (mov r0, r0)
     7e4:	ea000000 	b	7ec <gettoken+0x1a0>
     7e8:	e1a00000 	nop			@ (mov r0, r0)
     7ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     7f0:	e3530000 	cmp	r3, #0
     7f4:	0a000006 	beq	814 <gettoken+0x1c8>
     7f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     7fc:	e51b2008 	ldr	r2, [fp, #-8]
     800:	e5832000 	str	r2, [r3]
     804:	ea000002 	b	814 <gettoken+0x1c8>
     808:	e51b3008 	ldr	r3, [fp, #-8]
     80c:	e2833001 	add	r3, r3, #1
     810:	e50b3008 	str	r3, [fp, #-8]
     814:	e51b2008 	ldr	r2, [fp, #-8]
     818:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     81c:	e1520003 	cmp	r2, r3
     820:	2a000007 	bcs	844 <gettoken+0x1f8>
     824:	e51b3008 	ldr	r3, [fp, #-8]
     828:	e5d33000 	ldrb	r3, [r3]
     82c:	e1a01003 	mov	r1, r3
     830:	e59f0028 	ldr	r0, [pc, #40]	@ 860 <gettoken+0x214>
     834:	eb000287 	bl	1258 <strchr>
     838:	e1a03000 	mov	r3, r0
     83c:	e3530000 	cmp	r3, #0
     840:	1afffff0 	bne	808 <gettoken+0x1bc>
     844:	e51b3010 	ldr	r3, [fp, #-16]
     848:	e51b2008 	ldr	r2, [fp, #-8]
     84c:	e5832000 	str	r2, [r3]
     850:	e51b300c 	ldr	r3, [fp, #-12]
     854:	e1a00003 	mov	r0, r3
     858:	e24bd004 	sub	sp, fp, #4
     85c:	e8bd8800 	pop	{fp, pc}
     860:	00002190 	.word	0x00002190
     864:	00002084 	.word	0x00002084
     868:	00002198 	.word	0x00002198

0000086c <peek>:
     86c:	e92d4800 	push	{fp, lr}
     870:	e28db004 	add	fp, sp, #4
     874:	e24dd018 	sub	sp, sp, #24
     878:	e50b0010 	str	r0, [fp, #-16]
     87c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     880:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     884:	e51b3010 	ldr	r3, [fp, #-16]
     888:	e5933000 	ldr	r3, [r3]
     88c:	e50b3008 	str	r3, [fp, #-8]
     890:	ea000002 	b	8a0 <peek+0x34>
     894:	e51b3008 	ldr	r3, [fp, #-8]
     898:	e2833001 	add	r3, r3, #1
     89c:	e50b3008 	str	r3, [fp, #-8]
     8a0:	e51b2008 	ldr	r2, [fp, #-8]
     8a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     8a8:	e1520003 	cmp	r2, r3
     8ac:	2a000007 	bcs	8d0 <peek+0x64>
     8b0:	e51b3008 	ldr	r3, [fp, #-8]
     8b4:	e5d33000 	ldrb	r3, [r3]
     8b8:	e1a01003 	mov	r1, r3
     8bc:	e59f0060 	ldr	r0, [pc, #96]	@ 924 <peek+0xb8>
     8c0:	eb000264 	bl	1258 <strchr>
     8c4:	e1a03000 	mov	r3, r0
     8c8:	e3530000 	cmp	r3, #0
     8cc:	1afffff0 	bne	894 <peek+0x28>
     8d0:	e51b3010 	ldr	r3, [fp, #-16]
     8d4:	e51b2008 	ldr	r2, [fp, #-8]
     8d8:	e5832000 	str	r2, [r3]
     8dc:	e51b3008 	ldr	r3, [fp, #-8]
     8e0:	e5d33000 	ldrb	r3, [r3]
     8e4:	e3530000 	cmp	r3, #0
     8e8:	0a000009 	beq	914 <peek+0xa8>
     8ec:	e51b3008 	ldr	r3, [fp, #-8]
     8f0:	e5d33000 	ldrb	r3, [r3]
     8f4:	e1a01003 	mov	r1, r3
     8f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     8fc:	eb000255 	bl	1258 <strchr>
     900:	e1a03000 	mov	r3, r0
     904:	e3530000 	cmp	r3, #0
     908:	0a000001 	beq	914 <peek+0xa8>
     90c:	e3a03001 	mov	r3, #1
     910:	ea000000 	b	918 <peek+0xac>
     914:	e3a03000 	mov	r3, #0
     918:	e1a00003 	mov	r0, r3
     91c:	e24bd004 	sub	sp, fp, #4
     920:	e8bd8800 	pop	{fp, pc}
     924:	00002190 	.word	0x00002190

00000928 <parsecmd>:
     928:	e92d4810 	push	{r4, fp, lr}
     92c:	e28db008 	add	fp, sp, #8
     930:	e24dd014 	sub	sp, sp, #20
     934:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     938:	e51b4018 	ldr	r4, [fp, #-24]	@ 0xffffffe8
     93c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     940:	e1a00003 	mov	r0, r3
     944:	eb0001e4 	bl	10dc <strlen>
     948:	e1a03000 	mov	r3, r0
     94c:	e0843003 	add	r3, r4, r3
     950:	e50b3010 	str	r3, [fp, #-16]
     954:	e24b3018 	sub	r3, fp, #24
     958:	e51b1010 	ldr	r1, [fp, #-16]
     95c:	e1a00003 	mov	r0, r3
     960:	eb000019 	bl	9cc <parseline>
     964:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     968:	e24b3018 	sub	r3, fp, #24
     96c:	e59f204c 	ldr	r2, [pc, #76]	@ 9c0 <parsecmd+0x98>
     970:	e51b1010 	ldr	r1, [fp, #-16]
     974:	e1a00003 	mov	r0, r3
     978:	ebffffbb 	bl	86c <peek>
     97c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     980:	e51b2010 	ldr	r2, [fp, #-16]
     984:	e1520003 	cmp	r2, r3
     988:	0a000006 	beq	9a8 <parsecmd+0x80>
     98c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     990:	e1a02003 	mov	r2, r3
     994:	e59f1028 	ldr	r1, [pc, #40]	@ 9c4 <parsecmd+0x9c>
     998:	e3a00002 	mov	r0, #2
     99c:	eb0003ee 	bl	195c <printf>
     9a0:	e59f0020 	ldr	r0, [pc, #32]	@ 9c8 <parsecmd+0xa0>
     9a4:	ebfffe93 	bl	3f8 <panic>
     9a8:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     9ac:	eb00013c 	bl	ea4 <nulterminate>
     9b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     9b4:	e1a00003 	mov	r0, r3
     9b8:	e24bd008 	sub	sp, fp, #8
     9bc:	e8bd8810 	pop	{r4, fp, pc}
     9c0:	000020e8 	.word	0x000020e8
     9c4:	000020ec 	.word	0x000020ec
     9c8:	000020fc 	.word	0x000020fc

000009cc <parseline>:
     9cc:	e92d4800 	push	{fp, lr}
     9d0:	e28db004 	add	fp, sp, #4
     9d4:	e24dd010 	sub	sp, sp, #16
     9d8:	e50b0010 	str	r0, [fp, #-16]
     9dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     9e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     9e4:	e51b0010 	ldr	r0, [fp, #-16]
     9e8:	eb00002a 	bl	a98 <parsepipe>
     9ec:	e50b0008 	str	r0, [fp, #-8]
     9f0:	ea000007 	b	a14 <parseline+0x48>
     9f4:	e3a03000 	mov	r3, #0
     9f8:	e3a02000 	mov	r2, #0
     9fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a00:	e51b0010 	ldr	r0, [fp, #-16]
     a04:	ebffff10 	bl	64c <gettoken>
     a08:	e51b0008 	ldr	r0, [fp, #-8]
     a0c:	ebfffef9 	bl	5f8 <backcmd>
     a10:	e50b0008 	str	r0, [fp, #-8]
     a14:	e59f2074 	ldr	r2, [pc, #116]	@ a90 <parseline+0xc4>
     a18:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a1c:	e51b0010 	ldr	r0, [fp, #-16]
     a20:	ebffff91 	bl	86c <peek>
     a24:	e1a03000 	mov	r3, r0
     a28:	e3530000 	cmp	r3, #0
     a2c:	1afffff0 	bne	9f4 <parseline+0x28>
     a30:	e59f205c 	ldr	r2, [pc, #92]	@ a94 <parseline+0xc8>
     a34:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a38:	e51b0010 	ldr	r0, [fp, #-16]
     a3c:	ebffff8a 	bl	86c <peek>
     a40:	e1a03000 	mov	r3, r0
     a44:	e3530000 	cmp	r3, #0
     a48:	0a00000c 	beq	a80 <parseline+0xb4>
     a4c:	e3a03000 	mov	r3, #0
     a50:	e3a02000 	mov	r2, #0
     a54:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a58:	e51b0010 	ldr	r0, [fp, #-16]
     a5c:	ebfffefa 	bl	64c <gettoken>
     a60:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     a64:	e51b0010 	ldr	r0, [fp, #-16]
     a68:	ebffffd7 	bl	9cc <parseline>
     a6c:	e1a03000 	mov	r3, r0
     a70:	e1a01003 	mov	r1, r3
     a74:	e51b0008 	ldr	r0, [fp, #-8]
     a78:	ebfffec5 	bl	594 <listcmd>
     a7c:	e50b0008 	str	r0, [fp, #-8]
     a80:	e51b3008 	ldr	r3, [fp, #-8]
     a84:	e1a00003 	mov	r0, r3
     a88:	e24bd004 	sub	sp, fp, #4
     a8c:	e8bd8800 	pop	{fp, pc}
     a90:	00002104 	.word	0x00002104
     a94:	00002108 	.word	0x00002108

00000a98 <parsepipe>:
     a98:	e92d4800 	push	{fp, lr}
     a9c:	e28db004 	add	fp, sp, #4
     aa0:	e24dd010 	sub	sp, sp, #16
     aa4:	e50b0010 	str	r0, [fp, #-16]
     aa8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     aac:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ab0:	e51b0010 	ldr	r0, [fp, #-16]
     ab4:	eb000097 	bl	d18 <parseexec>
     ab8:	e50b0008 	str	r0, [fp, #-8]
     abc:	e59f2058 	ldr	r2, [pc, #88]	@ b1c <parsepipe+0x84>
     ac0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ac4:	e51b0010 	ldr	r0, [fp, #-16]
     ac8:	ebffff67 	bl	86c <peek>
     acc:	e1a03000 	mov	r3, r0
     ad0:	e3530000 	cmp	r3, #0
     ad4:	0a00000c 	beq	b0c <parsepipe+0x74>
     ad8:	e3a03000 	mov	r3, #0
     adc:	e3a02000 	mov	r2, #0
     ae0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ae4:	e51b0010 	ldr	r0, [fp, #-16]
     ae8:	ebfffed7 	bl	64c <gettoken>
     aec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     af0:	e51b0010 	ldr	r0, [fp, #-16]
     af4:	ebffffe7 	bl	a98 <parsepipe>
     af8:	e1a03000 	mov	r3, r0
     afc:	e1a01003 	mov	r1, r3
     b00:	e51b0008 	ldr	r0, [fp, #-8]
     b04:	ebfffe89 	bl	530 <pipecmd>
     b08:	e50b0008 	str	r0, [fp, #-8]
     b0c:	e51b3008 	ldr	r3, [fp, #-8]
     b10:	e1a00003 	mov	r0, r3
     b14:	e24bd004 	sub	sp, fp, #4
     b18:	e8bd8800 	pop	{fp, pc}
     b1c:	0000210c 	.word	0x0000210c

00000b20 <parseredirs>:
     b20:	e92d4800 	push	{fp, lr}
     b24:	e28db004 	add	fp, sp, #4
     b28:	e24dd028 	sub	sp, sp, #40	@ 0x28
     b2c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     b30:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     b34:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     b38:	ea000036 	b	c18 <parseredirs+0xf8>
     b3c:	e3a03000 	mov	r3, #0
     b40:	e3a02000 	mov	r2, #0
     b44:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b48:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b4c:	ebfffebe 	bl	64c <gettoken>
     b50:	e50b0008 	str	r0, [fp, #-8]
     b54:	e24b3010 	sub	r3, fp, #16
     b58:	e24b200c 	sub	r2, fp, #12
     b5c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     b60:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     b64:	ebfffeb8 	bl	64c <gettoken>
     b68:	e1a03000 	mov	r3, r0
     b6c:	e3530061 	cmp	r3, #97	@ 0x61
     b70:	0a000001 	beq	b7c <parseredirs+0x5c>
     b74:	e59f00c8 	ldr	r0, [pc, #200]	@ c44 <parseredirs+0x124>
     b78:	ebfffe1e 	bl	3f8 <panic>
     b7c:	e51b3008 	ldr	r3, [fp, #-8]
     b80:	e353003e 	cmp	r3, #62	@ 0x3e
     b84:	0a000011 	beq	bd0 <parseredirs+0xb0>
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e353003e 	cmp	r3, #62	@ 0x3e
     b90:	ca000020 	bgt	c18 <parseredirs+0xf8>
     b94:	e51b3008 	ldr	r3, [fp, #-8]
     b98:	e353002b 	cmp	r3, #43	@ 0x2b
     b9c:	0a000014 	beq	bf4 <parseredirs+0xd4>
     ba0:	e51b3008 	ldr	r3, [fp, #-8]
     ba4:	e353003c 	cmp	r3, #60	@ 0x3c
     ba8:	1a00001a 	bne	c18 <parseredirs+0xf8>
     bac:	e51b100c 	ldr	r1, [fp, #-12]
     bb0:	e51b2010 	ldr	r2, [fp, #-16]
     bb4:	e3a03000 	mov	r3, #0
     bb8:	e58d3000 	str	r3, [sp]
     bbc:	e3a03000 	mov	r3, #0
     bc0:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     bc4:	ebfffe35 	bl	4a0 <redircmd>
     bc8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     bcc:	ea000011 	b	c18 <parseredirs+0xf8>
     bd0:	e51b100c 	ldr	r1, [fp, #-12]
     bd4:	e51b2010 	ldr	r2, [fp, #-16]
     bd8:	e3a03001 	mov	r3, #1
     bdc:	e58d3000 	str	r3, [sp]
     be0:	e59f3060 	ldr	r3, [pc, #96]	@ c48 <parseredirs+0x128>
     be4:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     be8:	ebfffe2c 	bl	4a0 <redircmd>
     bec:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     bf0:	ea000008 	b	c18 <parseredirs+0xf8>
     bf4:	e51b100c 	ldr	r1, [fp, #-12]
     bf8:	e51b2010 	ldr	r2, [fp, #-16]
     bfc:	e3a03001 	mov	r3, #1
     c00:	e58d3000 	str	r3, [sp]
     c04:	e59f303c 	ldr	r3, [pc, #60]	@ c48 <parseredirs+0x128>
     c08:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
     c0c:	ebfffe23 	bl	4a0 <redircmd>
     c10:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     c14:	e1a00000 	nop			@ (mov r0, r0)
     c18:	e59f202c 	ldr	r2, [pc, #44]	@ c4c <parseredirs+0x12c>
     c1c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     c20:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
     c24:	ebffff10 	bl	86c <peek>
     c28:	e1a03000 	mov	r3, r0
     c2c:	e3530000 	cmp	r3, #0
     c30:	1affffc1 	bne	b3c <parseredirs+0x1c>
     c34:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     c38:	e1a00003 	mov	r0, r3
     c3c:	e24bd004 	sub	sp, fp, #4
     c40:	e8bd8800 	pop	{fp, pc}
     c44:	00002110 	.word	0x00002110
     c48:	00000201 	.word	0x00000201
     c4c:	00002130 	.word	0x00002130

00000c50 <parseblock>:
     c50:	e92d4800 	push	{fp, lr}
     c54:	e28db004 	add	fp, sp, #4
     c58:	e24dd010 	sub	sp, sp, #16
     c5c:	e50b0010 	str	r0, [fp, #-16]
     c60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     c64:	e59f209c 	ldr	r2, [pc, #156]	@ d08 <parseblock+0xb8>
     c68:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c6c:	e51b0010 	ldr	r0, [fp, #-16]
     c70:	ebfffefd 	bl	86c <peek>
     c74:	e1a03000 	mov	r3, r0
     c78:	e3530000 	cmp	r3, #0
     c7c:	1a000001 	bne	c88 <parseblock+0x38>
     c80:	e59f0084 	ldr	r0, [pc, #132]	@ d0c <parseblock+0xbc>
     c84:	ebfffddb 	bl	3f8 <panic>
     c88:	e3a03000 	mov	r3, #0
     c8c:	e3a02000 	mov	r2, #0
     c90:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     c94:	e51b0010 	ldr	r0, [fp, #-16]
     c98:	ebfffe6b 	bl	64c <gettoken>
     c9c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     ca0:	e51b0010 	ldr	r0, [fp, #-16]
     ca4:	ebffff48 	bl	9cc <parseline>
     ca8:	e50b0008 	str	r0, [fp, #-8]
     cac:	e59f205c 	ldr	r2, [pc, #92]	@ d10 <parseblock+0xc0>
     cb0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cb4:	e51b0010 	ldr	r0, [fp, #-16]
     cb8:	ebfffeeb 	bl	86c <peek>
     cbc:	e1a03000 	mov	r3, r0
     cc0:	e3530000 	cmp	r3, #0
     cc4:	1a000001 	bne	cd0 <parseblock+0x80>
     cc8:	e59f0044 	ldr	r0, [pc, #68]	@ d14 <parseblock+0xc4>
     ccc:	ebfffdc9 	bl	3f8 <panic>
     cd0:	e3a03000 	mov	r3, #0
     cd4:	e3a02000 	mov	r2, #0
     cd8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     cdc:	e51b0010 	ldr	r0, [fp, #-16]
     ce0:	ebfffe59 	bl	64c <gettoken>
     ce4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     ce8:	e51b1010 	ldr	r1, [fp, #-16]
     cec:	e51b0008 	ldr	r0, [fp, #-8]
     cf0:	ebffff8a 	bl	b20 <parseredirs>
     cf4:	e50b0008 	str	r0, [fp, #-8]
     cf8:	e51b3008 	ldr	r3, [fp, #-8]
     cfc:	e1a00003 	mov	r0, r3
     d00:	e24bd004 	sub	sp, fp, #4
     d04:	e8bd8800 	pop	{fp, pc}
     d08:	00002134 	.word	0x00002134
     d0c:	00002138 	.word	0x00002138
     d10:	00002144 	.word	0x00002144
     d14:	00002148 	.word	0x00002148

00000d18 <parseexec>:
     d18:	e92d4800 	push	{fp, lr}
     d1c:	e28db004 	add	fp, sp, #4
     d20:	e24dd020 	sub	sp, sp, #32
     d24:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     d28:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
     d2c:	e59f2160 	ldr	r2, [pc, #352]	@ e94 <parseexec+0x17c>
     d30:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d34:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d38:	ebfffecb 	bl	86c <peek>
     d3c:	e1a03000 	mov	r3, r0
     d40:	e3530000 	cmp	r3, #0
     d44:	0a000004 	beq	d5c <parseexec+0x44>
     d48:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d4c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d50:	ebffffbe 	bl	c50 <parseblock>
     d54:	e1a03000 	mov	r3, r0
     d58:	ea00004a 	b	e88 <parseexec+0x170>
     d5c:	ebfffdbe 	bl	45c <execcmd>
     d60:	e50b000c 	str	r0, [fp, #-12]
     d64:	e51b300c 	ldr	r3, [fp, #-12]
     d68:	e50b3010 	str	r3, [fp, #-16]
     d6c:	e3a03000 	mov	r3, #0
     d70:	e50b3008 	str	r3, [fp, #-8]
     d74:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     d78:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     d7c:	e51b000c 	ldr	r0, [fp, #-12]
     d80:	ebffff66 	bl	b20 <parseredirs>
     d84:	e50b000c 	str	r0, [fp, #-12]
     d88:	ea000027 	b	e2c <parseexec+0x114>
     d8c:	e24b301c 	sub	r3, fp, #28
     d90:	e24b2018 	sub	r2, fp, #24
     d94:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     d98:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     d9c:	ebfffe2a 	bl	64c <gettoken>
     da0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     da4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da8:	e3530000 	cmp	r3, #0
     dac:	0a000026 	beq	e4c <parseexec+0x134>
     db0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     db4:	e3530061 	cmp	r3, #97	@ 0x61
     db8:	0a000001 	beq	dc4 <parseexec+0xac>
     dbc:	e59f00d4 	ldr	r0, [pc, #212]	@ e98 <parseexec+0x180>
     dc0:	ebfffd8c 	bl	3f8 <panic>
     dc4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     dc8:	e51b1010 	ldr	r1, [fp, #-16]
     dcc:	e51b3008 	ldr	r3, [fp, #-8]
     dd0:	e1a03103 	lsl	r3, r3, #2
     dd4:	e0813003 	add	r3, r1, r3
     dd8:	e5832004 	str	r2, [r3, #4]
     ddc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     de0:	e51b1010 	ldr	r1, [fp, #-16]
     de4:	e51b3008 	ldr	r3, [fp, #-8]
     de8:	e283300a 	add	r3, r3, #10
     dec:	e1a03103 	lsl	r3, r3, #2
     df0:	e0813003 	add	r3, r1, r3
     df4:	e5832004 	str	r2, [r3, #4]
     df8:	e51b3008 	ldr	r3, [fp, #-8]
     dfc:	e2833001 	add	r3, r3, #1
     e00:	e50b3008 	str	r3, [fp, #-8]
     e04:	e51b3008 	ldr	r3, [fp, #-8]
     e08:	e3530009 	cmp	r3, #9
     e0c:	da000001 	ble	e18 <parseexec+0x100>
     e10:	e59f0084 	ldr	r0, [pc, #132]	@ e9c <parseexec+0x184>
     e14:	ebfffd77 	bl	3f8 <panic>
     e18:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     e1c:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
     e20:	e51b000c 	ldr	r0, [fp, #-12]
     e24:	ebffff3d 	bl	b20 <parseredirs>
     e28:	e50b000c 	str	r0, [fp, #-12]
     e2c:	e59f206c 	ldr	r2, [pc, #108]	@ ea0 <parseexec+0x188>
     e30:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
     e34:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
     e38:	ebfffe8b 	bl	86c <peek>
     e3c:	e1a03000 	mov	r3, r0
     e40:	e3530000 	cmp	r3, #0
     e44:	0affffd0 	beq	d8c <parseexec+0x74>
     e48:	ea000000 	b	e50 <parseexec+0x138>
     e4c:	e1a00000 	nop			@ (mov r0, r0)
     e50:	e51b2010 	ldr	r2, [fp, #-16]
     e54:	e51b3008 	ldr	r3, [fp, #-8]
     e58:	e1a03103 	lsl	r3, r3, #2
     e5c:	e0823003 	add	r3, r2, r3
     e60:	e3a02000 	mov	r2, #0
     e64:	e5832004 	str	r2, [r3, #4]
     e68:	e51b2010 	ldr	r2, [fp, #-16]
     e6c:	e51b3008 	ldr	r3, [fp, #-8]
     e70:	e283300a 	add	r3, r3, #10
     e74:	e1a03103 	lsl	r3, r3, #2
     e78:	e0823003 	add	r3, r2, r3
     e7c:	e3a02000 	mov	r2, #0
     e80:	e5832004 	str	r2, [r3, #4]
     e84:	e51b300c 	ldr	r3, [fp, #-12]
     e88:	e1a00003 	mov	r0, r3
     e8c:	e24bd004 	sub	sp, fp, #4
     e90:	e8bd8800 	pop	{fp, pc}
     e94:	00002134 	.word	0x00002134
     e98:	000020fc 	.word	0x000020fc
     e9c:	0000215c 	.word	0x0000215c
     ea0:	0000216c 	.word	0x0000216c

00000ea4 <nulterminate>:
     ea4:	e92d4800 	push	{fp, lr}
     ea8:	e28db004 	add	fp, sp, #4
     eac:	e24dd020 	sub	sp, sp, #32
     eb0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
     eb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     eb8:	e3530000 	cmp	r3, #0
     ebc:	1a000001 	bne	ec8 <nulterminate+0x24>
     ec0:	e3a03000 	mov	r3, #0
     ec4:	ea000048 	b	fec <nulterminate+0x148>
     ec8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e2432001 	sub	r2, r3, #1
     ed4:	e59f311c 	ldr	r3, [pc, #284]	@ ff8 <nulterminate+0x154>
     ed8:	e3520004 	cmp	r2, #4
     edc:	8a000041 	bhi	fe8 <nulterminate+0x144>
     ee0:	e793f102 	ldr	pc, [r3, r2, lsl #2]
     ee4:	e1a00000 	nop			@ (mov r0, r0)
     ee8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     eec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     ef0:	e3a03000 	mov	r3, #0
     ef4:	e50b3008 	str	r3, [fp, #-8]
     ef8:	ea00000a 	b	f28 <nulterminate+0x84>
     efc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f00:	e51b3008 	ldr	r3, [fp, #-8]
     f04:	e283300a 	add	r3, r3, #10
     f08:	e1a03103 	lsl	r3, r3, #2
     f0c:	e0823003 	add	r3, r2, r3
     f10:	e5933004 	ldr	r3, [r3, #4]
     f14:	e3a02000 	mov	r2, #0
     f18:	e5c32000 	strb	r2, [r3]
     f1c:	e51b3008 	ldr	r3, [fp, #-8]
     f20:	e2833001 	add	r3, r3, #1
     f24:	e50b3008 	str	r3, [fp, #-8]
     f28:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     f2c:	e51b3008 	ldr	r3, [fp, #-8]
     f30:	e1a03103 	lsl	r3, r3, #2
     f34:	e0823003 	add	r3, r2, r3
     f38:	e5933004 	ldr	r3, [r3, #4]
     f3c:	e3530000 	cmp	r3, #0
     f40:	1affffed 	bne	efc <nulterminate+0x58>
     f44:	ea000027 	b	fe8 <nulterminate+0x144>
     f48:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f4c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     f50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f54:	e5933004 	ldr	r3, [r3, #4]
     f58:	e1a00003 	mov	r0, r3
     f5c:	ebffffd0 	bl	ea4 <nulterminate>
     f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     f64:	e593300c 	ldr	r3, [r3, #12]
     f68:	e3a02000 	mov	r2, #0
     f6c:	e5c32000 	strb	r2, [r3]
     f70:	ea00001c 	b	fe8 <nulterminate+0x144>
     f74:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     f78:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     f7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f80:	e5933004 	ldr	r3, [r3, #4]
     f84:	e1a00003 	mov	r0, r3
     f88:	ebffffc5 	bl	ea4 <nulterminate>
     f8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     f90:	e5933008 	ldr	r3, [r3, #8]
     f94:	e1a00003 	mov	r0, r3
     f98:	ebffffc1 	bl	ea4 <nulterminate>
     f9c:	ea000011 	b	fe8 <nulterminate+0x144>
     fa0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fa4:	e50b3010 	str	r3, [fp, #-16]
     fa8:	e51b3010 	ldr	r3, [fp, #-16]
     fac:	e5933004 	ldr	r3, [r3, #4]
     fb0:	e1a00003 	mov	r0, r3
     fb4:	ebffffba 	bl	ea4 <nulterminate>
     fb8:	e51b3010 	ldr	r3, [fp, #-16]
     fbc:	e5933008 	ldr	r3, [r3, #8]
     fc0:	e1a00003 	mov	r0, r3
     fc4:	ebffffb6 	bl	ea4 <nulterminate>
     fc8:	ea000006 	b	fe8 <nulterminate+0x144>
     fcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fd0:	e50b300c 	str	r3, [fp, #-12]
     fd4:	e51b300c 	ldr	r3, [fp, #-12]
     fd8:	e5933004 	ldr	r3, [r3, #4]
     fdc:	e1a00003 	mov	r0, r3
     fe0:	ebffffaf 	bl	ea4 <nulterminate>
     fe4:	e1a00000 	nop			@ (mov r0, r0)
     fe8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     fec:	e1a00003 	mov	r0, r3
     ff0:	e24bd004 	sub	sp, fp, #4
     ff4:	e8bd8800 	pop	{fp, pc}
     ff8:	00002174 	.word	0x00002174

00000ffc <strcpy>:
     ffc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1000:	e28db000 	add	fp, sp, #0
    1004:	e24dd014 	sub	sp, sp, #20
    1008:	e50b0010 	str	r0, [fp, #-16]
    100c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1010:	e51b3010 	ldr	r3, [fp, #-16]
    1014:	e50b3008 	str	r3, [fp, #-8]
    1018:	e1a00000 	nop			@ (mov r0, r0)
    101c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    1020:	e2823001 	add	r3, r2, #1
    1024:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1028:	e51b3010 	ldr	r3, [fp, #-16]
    102c:	e2831001 	add	r1, r3, #1
    1030:	e50b1010 	str	r1, [fp, #-16]
    1034:	e5d22000 	ldrb	r2, [r2]
    1038:	e5c32000 	strb	r2, [r3]
    103c:	e5d33000 	ldrb	r3, [r3]
    1040:	e3530000 	cmp	r3, #0
    1044:	1afffff4 	bne	101c <strcpy+0x20>
    1048:	e51b3008 	ldr	r3, [fp, #-8]
    104c:	e1a00003 	mov	r0, r3
    1050:	e28bd000 	add	sp, fp, #0
    1054:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1058:	e12fff1e 	bx	lr

0000105c <strcmp>:
    105c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1060:	e28db000 	add	fp, sp, #0
    1064:	e24dd00c 	sub	sp, sp, #12
    1068:	e50b0008 	str	r0, [fp, #-8]
    106c:	e50b100c 	str	r1, [fp, #-12]
    1070:	ea000005 	b	108c <strcmp+0x30>
    1074:	e51b3008 	ldr	r3, [fp, #-8]
    1078:	e2833001 	add	r3, r3, #1
    107c:	e50b3008 	str	r3, [fp, #-8]
    1080:	e51b300c 	ldr	r3, [fp, #-12]
    1084:	e2833001 	add	r3, r3, #1
    1088:	e50b300c 	str	r3, [fp, #-12]
    108c:	e51b3008 	ldr	r3, [fp, #-8]
    1090:	e5d33000 	ldrb	r3, [r3]
    1094:	e3530000 	cmp	r3, #0
    1098:	0a000005 	beq	10b4 <strcmp+0x58>
    109c:	e51b3008 	ldr	r3, [fp, #-8]
    10a0:	e5d32000 	ldrb	r2, [r3]
    10a4:	e51b300c 	ldr	r3, [fp, #-12]
    10a8:	e5d33000 	ldrb	r3, [r3]
    10ac:	e1520003 	cmp	r2, r3
    10b0:	0affffef 	beq	1074 <strcmp+0x18>
    10b4:	e51b3008 	ldr	r3, [fp, #-8]
    10b8:	e5d33000 	ldrb	r3, [r3]
    10bc:	e1a02003 	mov	r2, r3
    10c0:	e51b300c 	ldr	r3, [fp, #-12]
    10c4:	e5d33000 	ldrb	r3, [r3]
    10c8:	e0423003 	sub	r3, r2, r3
    10cc:	e1a00003 	mov	r0, r3
    10d0:	e28bd000 	add	sp, fp, #0
    10d4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    10d8:	e12fff1e 	bx	lr

000010dc <strlen>:
    10dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    10e0:	e28db000 	add	fp, sp, #0
    10e4:	e24dd014 	sub	sp, sp, #20
    10e8:	e50b0010 	str	r0, [fp, #-16]
    10ec:	e3a03000 	mov	r3, #0
    10f0:	e50b3008 	str	r3, [fp, #-8]
    10f4:	ea000002 	b	1104 <strlen+0x28>
    10f8:	e51b3008 	ldr	r3, [fp, #-8]
    10fc:	e2833001 	add	r3, r3, #1
    1100:	e50b3008 	str	r3, [fp, #-8]
    1104:	e51b3008 	ldr	r3, [fp, #-8]
    1108:	e51b2010 	ldr	r2, [fp, #-16]
    110c:	e0823003 	add	r3, r2, r3
    1110:	e5d33000 	ldrb	r3, [r3]
    1114:	e3530000 	cmp	r3, #0
    1118:	1afffff6 	bne	10f8 <strlen+0x1c>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e1a00003 	mov	r0, r3
    1124:	e28bd000 	add	sp, fp, #0
    1128:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    112c:	e12fff1e 	bx	lr

00001130 <memset>:
    1130:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1134:	e28db000 	add	fp, sp, #0
    1138:	e24dd024 	sub	sp, sp, #36	@ 0x24
    113c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1140:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    1144:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    1148:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    114c:	e50b3008 	str	r3, [fp, #-8]
    1150:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1154:	e54b300d 	strb	r3, [fp, #-13]
    1158:	e55b200d 	ldrb	r2, [fp, #-13]
    115c:	e1a03002 	mov	r3, r2
    1160:	e1a03403 	lsl	r3, r3, #8
    1164:	e0833002 	add	r3, r3, r2
    1168:	e1a03803 	lsl	r3, r3, #16
    116c:	e1a02003 	mov	r2, r3
    1170:	e55b300d 	ldrb	r3, [fp, #-13]
    1174:	e1a03403 	lsl	r3, r3, #8
    1178:	e1822003 	orr	r2, r2, r3
    117c:	e55b300d 	ldrb	r3, [fp, #-13]
    1180:	e1823003 	orr	r3, r2, r3
    1184:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1188:	ea000008 	b	11b0 <memset+0x80>
    118c:	e51b3008 	ldr	r3, [fp, #-8]
    1190:	e55b200d 	ldrb	r2, [fp, #-13]
    1194:	e5c32000 	strb	r2, [r3]
    1198:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    119c:	e2433001 	sub	r3, r3, #1
    11a0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e2833001 	add	r3, r3, #1
    11ac:	e50b3008 	str	r3, [fp, #-8]
    11b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11b4:	e3530000 	cmp	r3, #0
    11b8:	0a000003 	beq	11cc <memset+0x9c>
    11bc:	e51b3008 	ldr	r3, [fp, #-8]
    11c0:	e2033003 	and	r3, r3, #3
    11c4:	e3530000 	cmp	r3, #0
    11c8:	1affffef 	bne	118c <memset+0x5c>
    11cc:	e51b3008 	ldr	r3, [fp, #-8]
    11d0:	e50b300c 	str	r3, [fp, #-12]
    11d4:	ea000008 	b	11fc <memset+0xcc>
    11d8:	e51b300c 	ldr	r3, [fp, #-12]
    11dc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    11e0:	e5832000 	str	r2, [r3]
    11e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11e8:	e2433004 	sub	r3, r3, #4
    11ec:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    11f0:	e51b300c 	ldr	r3, [fp, #-12]
    11f4:	e2833004 	add	r3, r3, #4
    11f8:	e50b300c 	str	r3, [fp, #-12]
    11fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1200:	e3530003 	cmp	r3, #3
    1204:	8afffff3 	bhi	11d8 <memset+0xa8>
    1208:	e51b300c 	ldr	r3, [fp, #-12]
    120c:	e50b3008 	str	r3, [fp, #-8]
    1210:	ea000008 	b	1238 <memset+0x108>
    1214:	e51b3008 	ldr	r3, [fp, #-8]
    1218:	e55b200d 	ldrb	r2, [fp, #-13]
    121c:	e5c32000 	strb	r2, [r3]
    1220:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1224:	e2433001 	sub	r3, r3, #1
    1228:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    122c:	e51b3008 	ldr	r3, [fp, #-8]
    1230:	e2833001 	add	r3, r3, #1
    1234:	e50b3008 	str	r3, [fp, #-8]
    1238:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    123c:	e3530000 	cmp	r3, #0
    1240:	1afffff3 	bne	1214 <memset+0xe4>
    1244:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1248:	e1a00003 	mov	r0, r3
    124c:	e28bd000 	add	sp, fp, #0
    1250:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1254:	e12fff1e 	bx	lr

00001258 <strchr>:
    1258:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    125c:	e28db000 	add	fp, sp, #0
    1260:	e24dd00c 	sub	sp, sp, #12
    1264:	e50b0008 	str	r0, [fp, #-8]
    1268:	e1a03001 	mov	r3, r1
    126c:	e54b3009 	strb	r3, [fp, #-9]
    1270:	ea000009 	b	129c <strchr+0x44>
    1274:	e51b3008 	ldr	r3, [fp, #-8]
    1278:	e5d33000 	ldrb	r3, [r3]
    127c:	e55b2009 	ldrb	r2, [fp, #-9]
    1280:	e1520003 	cmp	r2, r3
    1284:	1a000001 	bne	1290 <strchr+0x38>
    1288:	e51b3008 	ldr	r3, [fp, #-8]
    128c:	ea000007 	b	12b0 <strchr+0x58>
    1290:	e51b3008 	ldr	r3, [fp, #-8]
    1294:	e2833001 	add	r3, r3, #1
    1298:	e50b3008 	str	r3, [fp, #-8]
    129c:	e51b3008 	ldr	r3, [fp, #-8]
    12a0:	e5d33000 	ldrb	r3, [r3]
    12a4:	e3530000 	cmp	r3, #0
    12a8:	1afffff1 	bne	1274 <strchr+0x1c>
    12ac:	e3a03000 	mov	r3, #0
    12b0:	e1a00003 	mov	r0, r3
    12b4:	e28bd000 	add	sp, fp, #0
    12b8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    12bc:	e12fff1e 	bx	lr

000012c0 <gets>:
    12c0:	e92d4800 	push	{fp, lr}
    12c4:	e28db004 	add	fp, sp, #4
    12c8:	e24dd018 	sub	sp, sp, #24
    12cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    12d0:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    12d4:	e3a03000 	mov	r3, #0
    12d8:	e50b3008 	str	r3, [fp, #-8]
    12dc:	ea000016 	b	133c <gets+0x7c>
    12e0:	e24b300d 	sub	r3, fp, #13
    12e4:	e3a02001 	mov	r2, #1
    12e8:	e1a01003 	mov	r1, r3
    12ec:	e3a00000 	mov	r0, #0
    12f0:	eb00009b 	bl	1564 <read>
    12f4:	e50b000c 	str	r0, [fp, #-12]
    12f8:	e51b300c 	ldr	r3, [fp, #-12]
    12fc:	e3530000 	cmp	r3, #0
    1300:	da000013 	ble	1354 <gets+0x94>
    1304:	e51b3008 	ldr	r3, [fp, #-8]
    1308:	e2832001 	add	r2, r3, #1
    130c:	e50b2008 	str	r2, [fp, #-8]
    1310:	e1a02003 	mov	r2, r3
    1314:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1318:	e0833002 	add	r3, r3, r2
    131c:	e55b200d 	ldrb	r2, [fp, #-13]
    1320:	e5c32000 	strb	r2, [r3]
    1324:	e55b300d 	ldrb	r3, [fp, #-13]
    1328:	e353000a 	cmp	r3, #10
    132c:	0a000009 	beq	1358 <gets+0x98>
    1330:	e55b300d 	ldrb	r3, [fp, #-13]
    1334:	e353000d 	cmp	r3, #13
    1338:	0a000006 	beq	1358 <gets+0x98>
    133c:	e51b3008 	ldr	r3, [fp, #-8]
    1340:	e2833001 	add	r3, r3, #1
    1344:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    1348:	e1520003 	cmp	r2, r3
    134c:	caffffe3 	bgt	12e0 <gets+0x20>
    1350:	ea000000 	b	1358 <gets+0x98>
    1354:	e1a00000 	nop			@ (mov r0, r0)
    1358:	e51b3008 	ldr	r3, [fp, #-8]
    135c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    1360:	e0823003 	add	r3, r2, r3
    1364:	e3a02000 	mov	r2, #0
    1368:	e5c32000 	strb	r2, [r3]
    136c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1370:	e1a00003 	mov	r0, r3
    1374:	e24bd004 	sub	sp, fp, #4
    1378:	e8bd8800 	pop	{fp, pc}

0000137c <stat>:
    137c:	e92d4800 	push	{fp, lr}
    1380:	e28db004 	add	fp, sp, #4
    1384:	e24dd010 	sub	sp, sp, #16
    1388:	e50b0010 	str	r0, [fp, #-16]
    138c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1390:	e3a01000 	mov	r1, #0
    1394:	e51b0010 	ldr	r0, [fp, #-16]
    1398:	eb00009e 	bl	1618 <open>
    139c:	e50b0008 	str	r0, [fp, #-8]
    13a0:	e51b3008 	ldr	r3, [fp, #-8]
    13a4:	e3530000 	cmp	r3, #0
    13a8:	aa000001 	bge	13b4 <stat+0x38>
    13ac:	e3e03000 	mvn	r3, #0
    13b0:	ea000006 	b	13d0 <stat+0x54>
    13b4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    13b8:	e51b0008 	ldr	r0, [fp, #-8]
    13bc:	eb0000b0 	bl	1684 <fstat>
    13c0:	e50b000c 	str	r0, [fp, #-12]
    13c4:	e51b0008 	ldr	r0, [fp, #-8]
    13c8:	eb000077 	bl	15ac <close>
    13cc:	e51b300c 	ldr	r3, [fp, #-12]
    13d0:	e1a00003 	mov	r0, r3
    13d4:	e24bd004 	sub	sp, fp, #4
    13d8:	e8bd8800 	pop	{fp, pc}

000013dc <atoi>:
    13dc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    13e0:	e28db000 	add	fp, sp, #0
    13e4:	e24dd014 	sub	sp, sp, #20
    13e8:	e50b0010 	str	r0, [fp, #-16]
    13ec:	e3a03000 	mov	r3, #0
    13f0:	e50b3008 	str	r3, [fp, #-8]
    13f4:	ea00000c 	b	142c <atoi+0x50>
    13f8:	e51b2008 	ldr	r2, [fp, #-8]
    13fc:	e1a03002 	mov	r3, r2
    1400:	e1a03103 	lsl	r3, r3, #2
    1404:	e0833002 	add	r3, r3, r2
    1408:	e1a03083 	lsl	r3, r3, #1
    140c:	e1a01003 	mov	r1, r3
    1410:	e51b3010 	ldr	r3, [fp, #-16]
    1414:	e2832001 	add	r2, r3, #1
    1418:	e50b2010 	str	r2, [fp, #-16]
    141c:	e5d33000 	ldrb	r3, [r3]
    1420:	e0813003 	add	r3, r1, r3
    1424:	e2433030 	sub	r3, r3, #48	@ 0x30
    1428:	e50b3008 	str	r3, [fp, #-8]
    142c:	e51b3010 	ldr	r3, [fp, #-16]
    1430:	e5d33000 	ldrb	r3, [r3]
    1434:	e353002f 	cmp	r3, #47	@ 0x2f
    1438:	9a000003 	bls	144c <atoi+0x70>
    143c:	e51b3010 	ldr	r3, [fp, #-16]
    1440:	e5d33000 	ldrb	r3, [r3]
    1444:	e3530039 	cmp	r3, #57	@ 0x39
    1448:	9affffea 	bls	13f8 <atoi+0x1c>
    144c:	e51b3008 	ldr	r3, [fp, #-8]
    1450:	e1a00003 	mov	r0, r3
    1454:	e28bd000 	add	sp, fp, #0
    1458:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    145c:	e12fff1e 	bx	lr

00001460 <memmove>:
    1460:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1464:	e28db000 	add	fp, sp, #0
    1468:	e24dd01c 	sub	sp, sp, #28
    146c:	e50b0010 	str	r0, [fp, #-16]
    1470:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    1474:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    1478:	e51b3010 	ldr	r3, [fp, #-16]
    147c:	e50b3008 	str	r3, [fp, #-8]
    1480:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1484:	e50b300c 	str	r3, [fp, #-12]
    1488:	ea000007 	b	14ac <memmove+0x4c>
    148c:	e51b200c 	ldr	r2, [fp, #-12]
    1490:	e2823001 	add	r3, r2, #1
    1494:	e50b300c 	str	r3, [fp, #-12]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e2831001 	add	r1, r3, #1
    14a0:	e50b1008 	str	r1, [fp, #-8]
    14a4:	e5d22000 	ldrb	r2, [r2]
    14a8:	e5c32000 	strb	r2, [r3]
    14ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    14b0:	e2432001 	sub	r2, r3, #1
    14b4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    14b8:	e3530000 	cmp	r3, #0
    14bc:	cafffff2 	bgt	148c <memmove+0x2c>
    14c0:	e51b3010 	ldr	r3, [fp, #-16]
    14c4:	e1a00003 	mov	r0, r3
    14c8:	e28bd000 	add	sp, fp, #0
    14cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    14d0:	e12fff1e 	bx	lr

000014d4 <fork>:
    14d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    14d8:	e1a04003 	mov	r4, r3
    14dc:	e1a03002 	mov	r3, r2
    14e0:	e1a02001 	mov	r2, r1
    14e4:	e1a01000 	mov	r1, r0
    14e8:	e3a00001 	mov	r0, #1
    14ec:	ef000000 	svc	0x00000000
    14f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    14f4:	e12fff1e 	bx	lr

000014f8 <exit>:
    14f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    14fc:	e1a04003 	mov	r4, r3
    1500:	e1a03002 	mov	r3, r2
    1504:	e1a02001 	mov	r2, r1
    1508:	e1a01000 	mov	r1, r0
    150c:	e3a00002 	mov	r0, #2
    1510:	ef000000 	svc	0x00000000
    1514:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1518:	e12fff1e 	bx	lr

0000151c <wait>:
    151c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1520:	e1a04003 	mov	r4, r3
    1524:	e1a03002 	mov	r3, r2
    1528:	e1a02001 	mov	r2, r1
    152c:	e1a01000 	mov	r1, r0
    1530:	e3a00003 	mov	r0, #3
    1534:	ef000000 	svc	0x00000000
    1538:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    153c:	e12fff1e 	bx	lr

00001540 <pipe>:
    1540:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1544:	e1a04003 	mov	r4, r3
    1548:	e1a03002 	mov	r3, r2
    154c:	e1a02001 	mov	r2, r1
    1550:	e1a01000 	mov	r1, r0
    1554:	e3a00004 	mov	r0, #4
    1558:	ef000000 	svc	0x00000000
    155c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1560:	e12fff1e 	bx	lr

00001564 <read>:
    1564:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1568:	e1a04003 	mov	r4, r3
    156c:	e1a03002 	mov	r3, r2
    1570:	e1a02001 	mov	r2, r1
    1574:	e1a01000 	mov	r1, r0
    1578:	e3a00005 	mov	r0, #5
    157c:	ef000000 	svc	0x00000000
    1580:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1584:	e12fff1e 	bx	lr

00001588 <write>:
    1588:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    158c:	e1a04003 	mov	r4, r3
    1590:	e1a03002 	mov	r3, r2
    1594:	e1a02001 	mov	r2, r1
    1598:	e1a01000 	mov	r1, r0
    159c:	e3a00010 	mov	r0, #16
    15a0:	ef000000 	svc	0x00000000
    15a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15a8:	e12fff1e 	bx	lr

000015ac <close>:
    15ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15b0:	e1a04003 	mov	r4, r3
    15b4:	e1a03002 	mov	r3, r2
    15b8:	e1a02001 	mov	r2, r1
    15bc:	e1a01000 	mov	r1, r0
    15c0:	e3a00015 	mov	r0, #21
    15c4:	ef000000 	svc	0x00000000
    15c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15cc:	e12fff1e 	bx	lr

000015d0 <kill>:
    15d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15d4:	e1a04003 	mov	r4, r3
    15d8:	e1a03002 	mov	r3, r2
    15dc:	e1a02001 	mov	r2, r1
    15e0:	e1a01000 	mov	r1, r0
    15e4:	e3a00006 	mov	r0, #6
    15e8:	ef000000 	svc	0x00000000
    15ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    15f0:	e12fff1e 	bx	lr

000015f4 <exec>:
    15f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    15f8:	e1a04003 	mov	r4, r3
    15fc:	e1a03002 	mov	r3, r2
    1600:	e1a02001 	mov	r2, r1
    1604:	e1a01000 	mov	r1, r0
    1608:	e3a00007 	mov	r0, #7
    160c:	ef000000 	svc	0x00000000
    1610:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1614:	e12fff1e 	bx	lr

00001618 <open>:
    1618:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    161c:	e1a04003 	mov	r4, r3
    1620:	e1a03002 	mov	r3, r2
    1624:	e1a02001 	mov	r2, r1
    1628:	e1a01000 	mov	r1, r0
    162c:	e3a0000f 	mov	r0, #15
    1630:	ef000000 	svc	0x00000000
    1634:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1638:	e12fff1e 	bx	lr

0000163c <mknod>:
    163c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1640:	e1a04003 	mov	r4, r3
    1644:	e1a03002 	mov	r3, r2
    1648:	e1a02001 	mov	r2, r1
    164c:	e1a01000 	mov	r1, r0
    1650:	e3a00011 	mov	r0, #17
    1654:	ef000000 	svc	0x00000000
    1658:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    165c:	e12fff1e 	bx	lr

00001660 <unlink>:
    1660:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1664:	e1a04003 	mov	r4, r3
    1668:	e1a03002 	mov	r3, r2
    166c:	e1a02001 	mov	r2, r1
    1670:	e1a01000 	mov	r1, r0
    1674:	e3a00012 	mov	r0, #18
    1678:	ef000000 	svc	0x00000000
    167c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1680:	e12fff1e 	bx	lr

00001684 <fstat>:
    1684:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1688:	e1a04003 	mov	r4, r3
    168c:	e1a03002 	mov	r3, r2
    1690:	e1a02001 	mov	r2, r1
    1694:	e1a01000 	mov	r1, r0
    1698:	e3a00008 	mov	r0, #8
    169c:	ef000000 	svc	0x00000000
    16a0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16a4:	e12fff1e 	bx	lr

000016a8 <link>:
    16a8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16ac:	e1a04003 	mov	r4, r3
    16b0:	e1a03002 	mov	r3, r2
    16b4:	e1a02001 	mov	r2, r1
    16b8:	e1a01000 	mov	r1, r0
    16bc:	e3a00013 	mov	r0, #19
    16c0:	ef000000 	svc	0x00000000
    16c4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16c8:	e12fff1e 	bx	lr

000016cc <mkdir>:
    16cc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16d0:	e1a04003 	mov	r4, r3
    16d4:	e1a03002 	mov	r3, r2
    16d8:	e1a02001 	mov	r2, r1
    16dc:	e1a01000 	mov	r1, r0
    16e0:	e3a00014 	mov	r0, #20
    16e4:	ef000000 	svc	0x00000000
    16e8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    16ec:	e12fff1e 	bx	lr

000016f0 <chdir>:
    16f0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    16f4:	e1a04003 	mov	r4, r3
    16f8:	e1a03002 	mov	r3, r2
    16fc:	e1a02001 	mov	r2, r1
    1700:	e1a01000 	mov	r1, r0
    1704:	e3a00009 	mov	r0, #9
    1708:	ef000000 	svc	0x00000000
    170c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1710:	e12fff1e 	bx	lr

00001714 <dup>:
    1714:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1718:	e1a04003 	mov	r4, r3
    171c:	e1a03002 	mov	r3, r2
    1720:	e1a02001 	mov	r2, r1
    1724:	e1a01000 	mov	r1, r0
    1728:	e3a0000a 	mov	r0, #10
    172c:	ef000000 	svc	0x00000000
    1730:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1734:	e12fff1e 	bx	lr

00001738 <getpid>:
    1738:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    173c:	e1a04003 	mov	r4, r3
    1740:	e1a03002 	mov	r3, r2
    1744:	e1a02001 	mov	r2, r1
    1748:	e1a01000 	mov	r1, r0
    174c:	e3a0000b 	mov	r0, #11
    1750:	ef000000 	svc	0x00000000
    1754:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    1758:	e12fff1e 	bx	lr

0000175c <sbrk>:
    175c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1760:	e1a04003 	mov	r4, r3
    1764:	e1a03002 	mov	r3, r2
    1768:	e1a02001 	mov	r2, r1
    176c:	e1a01000 	mov	r1, r0
    1770:	e3a0000c 	mov	r0, #12
    1774:	ef000000 	svc	0x00000000
    1778:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    177c:	e12fff1e 	bx	lr

00001780 <sleep>:
    1780:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    1784:	e1a04003 	mov	r4, r3
    1788:	e1a03002 	mov	r3, r2
    178c:	e1a02001 	mov	r2, r1
    1790:	e1a01000 	mov	r1, r0
    1794:	e3a0000d 	mov	r0, #13
    1798:	ef000000 	svc	0x00000000
    179c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17a0:	e12fff1e 	bx	lr

000017a4 <uptime>:
    17a4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17a8:	e1a04003 	mov	r4, r3
    17ac:	e1a03002 	mov	r3, r2
    17b0:	e1a02001 	mov	r2, r1
    17b4:	e1a01000 	mov	r1, r0
    17b8:	e3a0000e 	mov	r0, #14
    17bc:	ef000000 	svc	0x00000000
    17c0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17c4:	e12fff1e 	bx	lr

000017c8 <ps>:
    17c8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    17cc:	e1a04003 	mov	r4, r3
    17d0:	e1a03002 	mov	r3, r2
    17d4:	e1a02001 	mov	r2, r1
    17d8:	e1a01000 	mov	r1, r0
    17dc:	e3a00016 	mov	r0, #22
    17e0:	ef000000 	svc	0x00000000
    17e4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    17e8:	e12fff1e 	bx	lr

000017ec <putc>:
    17ec:	e92d4800 	push	{fp, lr}
    17f0:	e28db004 	add	fp, sp, #4
    17f4:	e24dd008 	sub	sp, sp, #8
    17f8:	e50b0008 	str	r0, [fp, #-8]
    17fc:	e1a03001 	mov	r3, r1
    1800:	e54b3009 	strb	r3, [fp, #-9]
    1804:	e24b3009 	sub	r3, fp, #9
    1808:	e3a02001 	mov	r2, #1
    180c:	e1a01003 	mov	r1, r3
    1810:	e51b0008 	ldr	r0, [fp, #-8]
    1814:	ebffff5b 	bl	1588 <write>
    1818:	e1a00000 	nop			@ (mov r0, r0)
    181c:	e24bd004 	sub	sp, fp, #4
    1820:	e8bd8800 	pop	{fp, pc}

00001824 <printint>:
    1824:	e92d4800 	push	{fp, lr}
    1828:	e28db004 	add	fp, sp, #4
    182c:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1830:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    1834:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    1838:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    183c:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    1840:	e3a03000 	mov	r3, #0
    1844:	e50b300c 	str	r3, [fp, #-12]
    1848:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    184c:	e3530000 	cmp	r3, #0
    1850:	0a000008 	beq	1878 <printint+0x54>
    1854:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    1858:	e3530000 	cmp	r3, #0
    185c:	aa000005 	bge	1878 <printint+0x54>
    1860:	e3a03001 	mov	r3, #1
    1864:	e50b300c 	str	r3, [fp, #-12]
    1868:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    186c:	e2633000 	rsb	r3, r3, #0
    1870:	e50b3010 	str	r3, [fp, #-16]
    1874:	ea000001 	b	1880 <printint+0x5c>
    1878:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    187c:	e50b3010 	str	r3, [fp, #-16]
    1880:	e3a03000 	mov	r3, #0
    1884:	e50b3008 	str	r3, [fp, #-8]
    1888:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    188c:	e51b3010 	ldr	r3, [fp, #-16]
    1890:	e1a01002 	mov	r1, r2
    1894:	e1a00003 	mov	r0, r3
    1898:	eb0001d5 	bl	1ff4 <__aeabi_uidivmod>
    189c:	e1a03001 	mov	r3, r1
    18a0:	e1a01003 	mov	r1, r3
    18a4:	e51b3008 	ldr	r3, [fp, #-8]
    18a8:	e2832001 	add	r2, r3, #1
    18ac:	e50b2008 	str	r2, [fp, #-8]
    18b0:	e59f20a0 	ldr	r2, [pc, #160]	@ 1958 <printint+0x134>
    18b4:	e7d22001 	ldrb	r2, [r2, r1]
    18b8:	e2433004 	sub	r3, r3, #4
    18bc:	e083300b 	add	r3, r3, fp
    18c0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    18c4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    18c8:	e1a01003 	mov	r1, r3
    18cc:	e51b0010 	ldr	r0, [fp, #-16]
    18d0:	eb00018a 	bl	1f00 <__udivsi3>
    18d4:	e1a03000 	mov	r3, r0
    18d8:	e50b3010 	str	r3, [fp, #-16]
    18dc:	e51b3010 	ldr	r3, [fp, #-16]
    18e0:	e3530000 	cmp	r3, #0
    18e4:	1affffe7 	bne	1888 <printint+0x64>
    18e8:	e51b300c 	ldr	r3, [fp, #-12]
    18ec:	e3530000 	cmp	r3, #0
    18f0:	0a00000e 	beq	1930 <printint+0x10c>
    18f4:	e51b3008 	ldr	r3, [fp, #-8]
    18f8:	e2832001 	add	r2, r3, #1
    18fc:	e50b2008 	str	r2, [fp, #-8]
    1900:	e2433004 	sub	r3, r3, #4
    1904:	e083300b 	add	r3, r3, fp
    1908:	e3a0202d 	mov	r2, #45	@ 0x2d
    190c:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    1910:	ea000006 	b	1930 <printint+0x10c>
    1914:	e24b2020 	sub	r2, fp, #32
    1918:	e51b3008 	ldr	r3, [fp, #-8]
    191c:	e0823003 	add	r3, r2, r3
    1920:	e5d33000 	ldrb	r3, [r3]
    1924:	e1a01003 	mov	r1, r3
    1928:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    192c:	ebffffae 	bl	17ec <putc>
    1930:	e51b3008 	ldr	r3, [fp, #-8]
    1934:	e2433001 	sub	r3, r3, #1
    1938:	e50b3008 	str	r3, [fp, #-8]
    193c:	e51b3008 	ldr	r3, [fp, #-8]
    1940:	e3530000 	cmp	r3, #0
    1944:	aafffff2 	bge	1914 <printint+0xf0>
    1948:	e1a00000 	nop			@ (mov r0, r0)
    194c:	e1a00000 	nop			@ (mov r0, r0)
    1950:	e24bd004 	sub	sp, fp, #4
    1954:	e8bd8800 	pop	{fp, pc}
    1958:	000021a0 	.word	0x000021a0

0000195c <printf>:
    195c:	e92d000e 	push	{r1, r2, r3}
    1960:	e92d4800 	push	{fp, lr}
    1964:	e28db004 	add	fp, sp, #4
    1968:	e24dd024 	sub	sp, sp, #36	@ 0x24
    196c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    1970:	e3a03000 	mov	r3, #0
    1974:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1978:	e28b3008 	add	r3, fp, #8
    197c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1980:	e3a03000 	mov	r3, #0
    1984:	e50b3010 	str	r3, [fp, #-16]
    1988:	ea000074 	b	1b60 <printf+0x204>
    198c:	e59b2004 	ldr	r2, [fp, #4]
    1990:	e51b3010 	ldr	r3, [fp, #-16]
    1994:	e0823003 	add	r3, r2, r3
    1998:	e5d33000 	ldrb	r3, [r3]
    199c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    19a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19a4:	e3530000 	cmp	r3, #0
    19a8:	1a00000b 	bne	19dc <printf+0x80>
    19ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    19b0:	e3530025 	cmp	r3, #37	@ 0x25
    19b4:	1a000002 	bne	19c4 <printf+0x68>
    19b8:	e3a03025 	mov	r3, #37	@ 0x25
    19bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    19c0:	ea000063 	b	1b54 <printf+0x1f8>
    19c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    19c8:	e6ef3073 	uxtb	r3, r3
    19cc:	e1a01003 	mov	r1, r3
    19d0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    19d4:	ebffff84 	bl	17ec <putc>
    19d8:	ea00005d 	b	1b54 <printf+0x1f8>
    19dc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19e0:	e3530025 	cmp	r3, #37	@ 0x25
    19e4:	1a00005a 	bne	1b54 <printf+0x1f8>
    19e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    19ec:	e3530064 	cmp	r3, #100	@ 0x64
    19f0:	1a00000a 	bne	1a20 <printf+0xc4>
    19f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    19f8:	e5933000 	ldr	r3, [r3]
    19fc:	e1a01003 	mov	r1, r3
    1a00:	e3a03001 	mov	r3, #1
    1a04:	e3a0200a 	mov	r2, #10
    1a08:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1a0c:	ebffff84 	bl	1824 <printint>
    1a10:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a14:	e2833004 	add	r3, r3, #4
    1a18:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a1c:	ea00004a 	b	1b4c <printf+0x1f0>
    1a20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a24:	e3530078 	cmp	r3, #120	@ 0x78
    1a28:	0a000002 	beq	1a38 <printf+0xdc>
    1a2c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a30:	e3530070 	cmp	r3, #112	@ 0x70
    1a34:	1a00000a 	bne	1a64 <printf+0x108>
    1a38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a3c:	e5933000 	ldr	r3, [r3]
    1a40:	e1a01003 	mov	r1, r3
    1a44:	e3a03000 	mov	r3, #0
    1a48:	e3a02010 	mov	r2, #16
    1a4c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1a50:	ebffff73 	bl	1824 <printint>
    1a54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a58:	e2833004 	add	r3, r3, #4
    1a5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a60:	ea000039 	b	1b4c <printf+0x1f0>
    1a64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1a68:	e3530073 	cmp	r3, #115	@ 0x73
    1a6c:	1a000018 	bne	1ad4 <printf+0x178>
    1a70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a74:	e5933000 	ldr	r3, [r3]
    1a78:	e50b300c 	str	r3, [fp, #-12]
    1a7c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1a80:	e2833004 	add	r3, r3, #4
    1a84:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1a88:	e51b300c 	ldr	r3, [fp, #-12]
    1a8c:	e3530000 	cmp	r3, #0
    1a90:	1a00000a 	bne	1ac0 <printf+0x164>
    1a94:	e59f30f4 	ldr	r3, [pc, #244]	@ 1b90 <printf+0x234>
    1a98:	e50b300c 	str	r3, [fp, #-12]
    1a9c:	ea000007 	b	1ac0 <printf+0x164>
    1aa0:	e51b300c 	ldr	r3, [fp, #-12]
    1aa4:	e5d33000 	ldrb	r3, [r3]
    1aa8:	e1a01003 	mov	r1, r3
    1aac:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1ab0:	ebffff4d 	bl	17ec <putc>
    1ab4:	e51b300c 	ldr	r3, [fp, #-12]
    1ab8:	e2833001 	add	r3, r3, #1
    1abc:	e50b300c 	str	r3, [fp, #-12]
    1ac0:	e51b300c 	ldr	r3, [fp, #-12]
    1ac4:	e5d33000 	ldrb	r3, [r3]
    1ac8:	e3530000 	cmp	r3, #0
    1acc:	1afffff3 	bne	1aa0 <printf+0x144>
    1ad0:	ea00001d 	b	1b4c <printf+0x1f0>
    1ad4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1ad8:	e3530063 	cmp	r3, #99	@ 0x63
    1adc:	1a000009 	bne	1b08 <printf+0x1ac>
    1ae0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1ae4:	e5933000 	ldr	r3, [r3]
    1ae8:	e6ef3073 	uxtb	r3, r3
    1aec:	e1a01003 	mov	r1, r3
    1af0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1af4:	ebffff3c 	bl	17ec <putc>
    1af8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1afc:	e2833004 	add	r3, r3, #4
    1b00:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1b04:	ea000010 	b	1b4c <printf+0x1f0>
    1b08:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b0c:	e3530025 	cmp	r3, #37	@ 0x25
    1b10:	1a000005 	bne	1b2c <printf+0x1d0>
    1b14:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b18:	e6ef3073 	uxtb	r3, r3
    1b1c:	e1a01003 	mov	r1, r3
    1b20:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b24:	ebffff30 	bl	17ec <putc>
    1b28:	ea000007 	b	1b4c <printf+0x1f0>
    1b2c:	e3a01025 	mov	r1, #37	@ 0x25
    1b30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b34:	ebffff2c 	bl	17ec <putc>
    1b38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    1b3c:	e6ef3073 	uxtb	r3, r3
    1b40:	e1a01003 	mov	r1, r3
    1b44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    1b48:	ebffff27 	bl	17ec <putc>
    1b4c:	e3a03000 	mov	r3, #0
    1b50:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    1b54:	e51b3010 	ldr	r3, [fp, #-16]
    1b58:	e2833001 	add	r3, r3, #1
    1b5c:	e50b3010 	str	r3, [fp, #-16]
    1b60:	e59b2004 	ldr	r2, [fp, #4]
    1b64:	e51b3010 	ldr	r3, [fp, #-16]
    1b68:	e0823003 	add	r3, r2, r3
    1b6c:	e5d33000 	ldrb	r3, [r3]
    1b70:	e3530000 	cmp	r3, #0
    1b74:	1affff84 	bne	198c <printf+0x30>
    1b78:	e1a00000 	nop			@ (mov r0, r0)
    1b7c:	e1a00000 	nop			@ (mov r0, r0)
    1b80:	e24bd004 	sub	sp, fp, #4
    1b84:	e8bd4800 	pop	{fp, lr}
    1b88:	e28dd00c 	add	sp, sp, #12
    1b8c:	e12fff1e 	bx	lr
    1b90:	00002188 	.word	0x00002188

00001b94 <free>:
    1b94:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    1b98:	e28db000 	add	fp, sp, #0
    1b9c:	e24dd014 	sub	sp, sp, #20
    1ba0:	e50b0010 	str	r0, [fp, #-16]
    1ba4:	e51b3010 	ldr	r3, [fp, #-16]
    1ba8:	e2433008 	sub	r3, r3, #8
    1bac:	e50b300c 	str	r3, [fp, #-12]
    1bb0:	e59f3154 	ldr	r3, [pc, #340]	@ 1d0c <free+0x178>
    1bb4:	e5933000 	ldr	r3, [r3]
    1bb8:	e50b3008 	str	r3, [fp, #-8]
    1bbc:	ea000010 	b	1c04 <free+0x70>
    1bc0:	e51b3008 	ldr	r3, [fp, #-8]
    1bc4:	e5933000 	ldr	r3, [r3]
    1bc8:	e51b2008 	ldr	r2, [fp, #-8]
    1bcc:	e1520003 	cmp	r2, r3
    1bd0:	3a000008 	bcc	1bf8 <free+0x64>
    1bd4:	e51b200c 	ldr	r2, [fp, #-12]
    1bd8:	e51b3008 	ldr	r3, [fp, #-8]
    1bdc:	e1520003 	cmp	r2, r3
    1be0:	8a000010 	bhi	1c28 <free+0x94>
    1be4:	e51b3008 	ldr	r3, [fp, #-8]
    1be8:	e5933000 	ldr	r3, [r3]
    1bec:	e51b200c 	ldr	r2, [fp, #-12]
    1bf0:	e1520003 	cmp	r2, r3
    1bf4:	3a00000b 	bcc	1c28 <free+0x94>
    1bf8:	e51b3008 	ldr	r3, [fp, #-8]
    1bfc:	e5933000 	ldr	r3, [r3]
    1c00:	e50b3008 	str	r3, [fp, #-8]
    1c04:	e51b200c 	ldr	r2, [fp, #-12]
    1c08:	e51b3008 	ldr	r3, [fp, #-8]
    1c0c:	e1520003 	cmp	r2, r3
    1c10:	9affffea 	bls	1bc0 <free+0x2c>
    1c14:	e51b3008 	ldr	r3, [fp, #-8]
    1c18:	e5933000 	ldr	r3, [r3]
    1c1c:	e51b200c 	ldr	r2, [fp, #-12]
    1c20:	e1520003 	cmp	r2, r3
    1c24:	2affffe5 	bcs	1bc0 <free+0x2c>
    1c28:	e51b300c 	ldr	r3, [fp, #-12]
    1c2c:	e5933004 	ldr	r3, [r3, #4]
    1c30:	e1a03183 	lsl	r3, r3, #3
    1c34:	e51b200c 	ldr	r2, [fp, #-12]
    1c38:	e0822003 	add	r2, r2, r3
    1c3c:	e51b3008 	ldr	r3, [fp, #-8]
    1c40:	e5933000 	ldr	r3, [r3]
    1c44:	e1520003 	cmp	r2, r3
    1c48:	1a00000d 	bne	1c84 <free+0xf0>
    1c4c:	e51b300c 	ldr	r3, [fp, #-12]
    1c50:	e5932004 	ldr	r2, [r3, #4]
    1c54:	e51b3008 	ldr	r3, [fp, #-8]
    1c58:	e5933000 	ldr	r3, [r3]
    1c5c:	e5933004 	ldr	r3, [r3, #4]
    1c60:	e0822003 	add	r2, r2, r3
    1c64:	e51b300c 	ldr	r3, [fp, #-12]
    1c68:	e5832004 	str	r2, [r3, #4]
    1c6c:	e51b3008 	ldr	r3, [fp, #-8]
    1c70:	e5933000 	ldr	r3, [r3]
    1c74:	e5932000 	ldr	r2, [r3]
    1c78:	e51b300c 	ldr	r3, [fp, #-12]
    1c7c:	e5832000 	str	r2, [r3]
    1c80:	ea000003 	b	1c94 <free+0x100>
    1c84:	e51b3008 	ldr	r3, [fp, #-8]
    1c88:	e5932000 	ldr	r2, [r3]
    1c8c:	e51b300c 	ldr	r3, [fp, #-12]
    1c90:	e5832000 	str	r2, [r3]
    1c94:	e51b3008 	ldr	r3, [fp, #-8]
    1c98:	e5933004 	ldr	r3, [r3, #4]
    1c9c:	e1a03183 	lsl	r3, r3, #3
    1ca0:	e51b2008 	ldr	r2, [fp, #-8]
    1ca4:	e0823003 	add	r3, r2, r3
    1ca8:	e51b200c 	ldr	r2, [fp, #-12]
    1cac:	e1520003 	cmp	r2, r3
    1cb0:	1a00000b 	bne	1ce4 <free+0x150>
    1cb4:	e51b3008 	ldr	r3, [fp, #-8]
    1cb8:	e5932004 	ldr	r2, [r3, #4]
    1cbc:	e51b300c 	ldr	r3, [fp, #-12]
    1cc0:	e5933004 	ldr	r3, [r3, #4]
    1cc4:	e0822003 	add	r2, r2, r3
    1cc8:	e51b3008 	ldr	r3, [fp, #-8]
    1ccc:	e5832004 	str	r2, [r3, #4]
    1cd0:	e51b300c 	ldr	r3, [fp, #-12]
    1cd4:	e5932000 	ldr	r2, [r3]
    1cd8:	e51b3008 	ldr	r3, [fp, #-8]
    1cdc:	e5832000 	str	r2, [r3]
    1ce0:	ea000002 	b	1cf0 <free+0x15c>
    1ce4:	e51b3008 	ldr	r3, [fp, #-8]
    1ce8:	e51b200c 	ldr	r2, [fp, #-12]
    1cec:	e5832000 	str	r2, [r3]
    1cf0:	e59f2014 	ldr	r2, [pc, #20]	@ 1d0c <free+0x178>
    1cf4:	e51b3008 	ldr	r3, [fp, #-8]
    1cf8:	e5823000 	str	r3, [r2]
    1cfc:	e1a00000 	nop			@ (mov r0, r0)
    1d00:	e28bd000 	add	sp, fp, #0
    1d04:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    1d08:	e12fff1e 	bx	lr
    1d0c:	00002220 	.word	0x00002220

00001d10 <morecore>:
    1d10:	e92d4800 	push	{fp, lr}
    1d14:	e28db004 	add	fp, sp, #4
    1d18:	e24dd010 	sub	sp, sp, #16
    1d1c:	e50b0010 	str	r0, [fp, #-16]
    1d20:	e51b3010 	ldr	r3, [fp, #-16]
    1d24:	e3530a01 	cmp	r3, #4096	@ 0x1000
    1d28:	2a000001 	bcs	1d34 <morecore+0x24>
    1d2c:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1d30:	e50b3010 	str	r3, [fp, #-16]
    1d34:	e51b3010 	ldr	r3, [fp, #-16]
    1d38:	e1a03183 	lsl	r3, r3, #3
    1d3c:	e1a00003 	mov	r0, r3
    1d40:	ebfffe85 	bl	175c <sbrk>
    1d44:	e50b0008 	str	r0, [fp, #-8]
    1d48:	e51b3008 	ldr	r3, [fp, #-8]
    1d4c:	e3730001 	cmn	r3, #1
    1d50:	1a000001 	bne	1d5c <morecore+0x4c>
    1d54:	e3a03000 	mov	r3, #0
    1d58:	ea00000a 	b	1d88 <morecore+0x78>
    1d5c:	e51b3008 	ldr	r3, [fp, #-8]
    1d60:	e50b300c 	str	r3, [fp, #-12]
    1d64:	e51b300c 	ldr	r3, [fp, #-12]
    1d68:	e51b2010 	ldr	r2, [fp, #-16]
    1d6c:	e5832004 	str	r2, [r3, #4]
    1d70:	e51b300c 	ldr	r3, [fp, #-12]
    1d74:	e2833008 	add	r3, r3, #8
    1d78:	e1a00003 	mov	r0, r3
    1d7c:	ebffff84 	bl	1b94 <free>
    1d80:	e59f300c 	ldr	r3, [pc, #12]	@ 1d94 <morecore+0x84>
    1d84:	e5933000 	ldr	r3, [r3]
    1d88:	e1a00003 	mov	r0, r3
    1d8c:	e24bd004 	sub	sp, fp, #4
    1d90:	e8bd8800 	pop	{fp, pc}
    1d94:	00002220 	.word	0x00002220

00001d98 <malloc>:
    1d98:	e92d4800 	push	{fp, lr}
    1d9c:	e28db004 	add	fp, sp, #4
    1da0:	e24dd018 	sub	sp, sp, #24
    1da4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    1da8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1dac:	e2833007 	add	r3, r3, #7
    1db0:	e1a031a3 	lsr	r3, r3, #3
    1db4:	e2833001 	add	r3, r3, #1
    1db8:	e50b3010 	str	r3, [fp, #-16]
    1dbc:	e59f3134 	ldr	r3, [pc, #308]	@ 1ef8 <malloc+0x160>
    1dc0:	e5933000 	ldr	r3, [r3]
    1dc4:	e50b300c 	str	r3, [fp, #-12]
    1dc8:	e51b300c 	ldr	r3, [fp, #-12]
    1dcc:	e3530000 	cmp	r3, #0
    1dd0:	1a00000b 	bne	1e04 <malloc+0x6c>
    1dd4:	e59f3120 	ldr	r3, [pc, #288]	@ 1efc <malloc+0x164>
    1dd8:	e50b300c 	str	r3, [fp, #-12]
    1ddc:	e59f2114 	ldr	r2, [pc, #276]	@ 1ef8 <malloc+0x160>
    1de0:	e51b300c 	ldr	r3, [fp, #-12]
    1de4:	e5823000 	str	r3, [r2]
    1de8:	e59f3108 	ldr	r3, [pc, #264]	@ 1ef8 <malloc+0x160>
    1dec:	e5933000 	ldr	r3, [r3]
    1df0:	e59f2104 	ldr	r2, [pc, #260]	@ 1efc <malloc+0x164>
    1df4:	e5823000 	str	r3, [r2]
    1df8:	e59f30fc 	ldr	r3, [pc, #252]	@ 1efc <malloc+0x164>
    1dfc:	e3a02000 	mov	r2, #0
    1e00:	e5832004 	str	r2, [r3, #4]
    1e04:	e51b300c 	ldr	r3, [fp, #-12]
    1e08:	e5933000 	ldr	r3, [r3]
    1e0c:	e50b3008 	str	r3, [fp, #-8]
    1e10:	e51b3008 	ldr	r3, [fp, #-8]
    1e14:	e5933004 	ldr	r3, [r3, #4]
    1e18:	e51b2010 	ldr	r2, [fp, #-16]
    1e1c:	e1520003 	cmp	r2, r3
    1e20:	8a00001e 	bhi	1ea0 <malloc+0x108>
    1e24:	e51b3008 	ldr	r3, [fp, #-8]
    1e28:	e5933004 	ldr	r3, [r3, #4]
    1e2c:	e51b2010 	ldr	r2, [fp, #-16]
    1e30:	e1520003 	cmp	r2, r3
    1e34:	1a000004 	bne	1e4c <malloc+0xb4>
    1e38:	e51b3008 	ldr	r3, [fp, #-8]
    1e3c:	e5932000 	ldr	r2, [r3]
    1e40:	e51b300c 	ldr	r3, [fp, #-12]
    1e44:	e5832000 	str	r2, [r3]
    1e48:	ea00000e 	b	1e88 <malloc+0xf0>
    1e4c:	e51b3008 	ldr	r3, [fp, #-8]
    1e50:	e5932004 	ldr	r2, [r3, #4]
    1e54:	e51b3010 	ldr	r3, [fp, #-16]
    1e58:	e0422003 	sub	r2, r2, r3
    1e5c:	e51b3008 	ldr	r3, [fp, #-8]
    1e60:	e5832004 	str	r2, [r3, #4]
    1e64:	e51b3008 	ldr	r3, [fp, #-8]
    1e68:	e5933004 	ldr	r3, [r3, #4]
    1e6c:	e1a03183 	lsl	r3, r3, #3
    1e70:	e51b2008 	ldr	r2, [fp, #-8]
    1e74:	e0823003 	add	r3, r2, r3
    1e78:	e50b3008 	str	r3, [fp, #-8]
    1e7c:	e51b3008 	ldr	r3, [fp, #-8]
    1e80:	e51b2010 	ldr	r2, [fp, #-16]
    1e84:	e5832004 	str	r2, [r3, #4]
    1e88:	e59f2068 	ldr	r2, [pc, #104]	@ 1ef8 <malloc+0x160>
    1e8c:	e51b300c 	ldr	r3, [fp, #-12]
    1e90:	e5823000 	str	r3, [r2]
    1e94:	e51b3008 	ldr	r3, [fp, #-8]
    1e98:	e2833008 	add	r3, r3, #8
    1e9c:	ea000012 	b	1eec <malloc+0x154>
    1ea0:	e59f3050 	ldr	r3, [pc, #80]	@ 1ef8 <malloc+0x160>
    1ea4:	e5933000 	ldr	r3, [r3]
    1ea8:	e51b2008 	ldr	r2, [fp, #-8]
    1eac:	e1520003 	cmp	r2, r3
    1eb0:	1a000007 	bne	1ed4 <malloc+0x13c>
    1eb4:	e51b0010 	ldr	r0, [fp, #-16]
    1eb8:	ebffff94 	bl	1d10 <morecore>
    1ebc:	e50b0008 	str	r0, [fp, #-8]
    1ec0:	e51b3008 	ldr	r3, [fp, #-8]
    1ec4:	e3530000 	cmp	r3, #0
    1ec8:	1a000001 	bne	1ed4 <malloc+0x13c>
    1ecc:	e3a03000 	mov	r3, #0
    1ed0:	ea000005 	b	1eec <malloc+0x154>
    1ed4:	e51b3008 	ldr	r3, [fp, #-8]
    1ed8:	e50b300c 	str	r3, [fp, #-12]
    1edc:	e51b3008 	ldr	r3, [fp, #-8]
    1ee0:	e5933000 	ldr	r3, [r3]
    1ee4:	e50b3008 	str	r3, [fp, #-8]
    1ee8:	eaffffc8 	b	1e10 <malloc+0x78>
    1eec:	e1a00003 	mov	r0, r3
    1ef0:	e24bd004 	sub	sp, fp, #4
    1ef4:	e8bd8800 	pop	{fp, pc}
    1ef8:	00002220 	.word	0x00002220
    1efc:	00002218 	.word	0x00002218

00001f00 <__udivsi3>:
    1f00:	e2512001 	subs	r2, r1, #1
    1f04:	012fff1e 	bxeq	lr
    1f08:	3a000036 	bcc	1fe8 <__udivsi3+0xe8>
    1f0c:	e1500001 	cmp	r0, r1
    1f10:	9a000022 	bls	1fa0 <__udivsi3+0xa0>
    1f14:	e1110002 	tst	r1, r2
    1f18:	0a000023 	beq	1fac <__udivsi3+0xac>
    1f1c:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1f20:	01a01181 	lsleq	r1, r1, #3
    1f24:	03a03008 	moveq	r3, #8
    1f28:	13a03001 	movne	r3, #1
    1f2c:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1f30:	31510000 	cmpcc	r1, r0
    1f34:	31a01201 	lslcc	r1, r1, #4
    1f38:	31a03203 	lslcc	r3, r3, #4
    1f3c:	3afffffa 	bcc	1f2c <__udivsi3+0x2c>
    1f40:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1f44:	31510000 	cmpcc	r1, r0
    1f48:	31a01081 	lslcc	r1, r1, #1
    1f4c:	31a03083 	lslcc	r3, r3, #1
    1f50:	3afffffa 	bcc	1f40 <__udivsi3+0x40>
    1f54:	e3a02000 	mov	r2, #0
    1f58:	e1500001 	cmp	r0, r1
    1f5c:	20400001 	subcs	r0, r0, r1
    1f60:	21822003 	orrcs	r2, r2, r3
    1f64:	e15000a1 	cmp	r0, r1, lsr #1
    1f68:	204000a1 	subcs	r0, r0, r1, lsr #1
    1f6c:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1f70:	e1500121 	cmp	r0, r1, lsr #2
    1f74:	20400121 	subcs	r0, r0, r1, lsr #2
    1f78:	21822123 	orrcs	r2, r2, r3, lsr #2
    1f7c:	e15001a1 	cmp	r0, r1, lsr #3
    1f80:	204001a1 	subcs	r0, r0, r1, lsr #3
    1f84:	218221a3 	orrcs	r2, r2, r3, lsr #3
    1f88:	e3500000 	cmp	r0, #0
    1f8c:	11b03223 	lsrsne	r3, r3, #4
    1f90:	11a01221 	lsrne	r1, r1, #4
    1f94:	1affffef 	bne	1f58 <__udivsi3+0x58>
    1f98:	e1a00002 	mov	r0, r2
    1f9c:	e12fff1e 	bx	lr
    1fa0:	03a00001 	moveq	r0, #1
    1fa4:	13a00000 	movne	r0, #0
    1fa8:	e12fff1e 	bx	lr
    1fac:	e3510801 	cmp	r1, #65536	@ 0x10000
    1fb0:	21a01821 	lsrcs	r1, r1, #16
    1fb4:	23a02010 	movcs	r2, #16
    1fb8:	33a02000 	movcc	r2, #0
    1fbc:	e3510c01 	cmp	r1, #256	@ 0x100
    1fc0:	21a01421 	lsrcs	r1, r1, #8
    1fc4:	22822008 	addcs	r2, r2, #8
    1fc8:	e3510010 	cmp	r1, #16
    1fcc:	21a01221 	lsrcs	r1, r1, #4
    1fd0:	22822004 	addcs	r2, r2, #4
    1fd4:	e3510004 	cmp	r1, #4
    1fd8:	82822003 	addhi	r2, r2, #3
    1fdc:	908220a1 	addls	r2, r2, r1, lsr #1
    1fe0:	e1a00230 	lsr	r0, r0, r2
    1fe4:	e12fff1e 	bx	lr
    1fe8:	e3500000 	cmp	r0, #0
    1fec:	13e00000 	mvnne	r0, #0
    1ff0:	ea000007 	b	2014 <__aeabi_idiv0>

00001ff4 <__aeabi_uidivmod>:
    1ff4:	e3510000 	cmp	r1, #0
    1ff8:	0afffffa 	beq	1fe8 <__udivsi3+0xe8>
    1ffc:	e92d4003 	push	{r0, r1, lr}
    2000:	ebffffbe 	bl	1f00 <__udivsi3>
    2004:	e8bd4006 	pop	{r1, r2, lr}
    2008:	e0030092 	mul	r3, r2, r0
    200c:	e0411003 	sub	r1, r1, r3
    2010:	e12fff1e 	bx	lr

00002014 <__aeabi_idiv0>:
    2014:	e12fff1e 	bx	lr
