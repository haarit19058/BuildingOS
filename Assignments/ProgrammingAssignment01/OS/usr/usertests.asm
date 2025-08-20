
_usertests:     file format elf32-littlearm


Disassembly of section .text:

00000000 <opentest>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dd008 	sub	sp, sp, #8
       c:	e59f309c 	ldr	r3, [pc, #156]	@ b0 <opentest+0xb0>
      10:	e5933000 	ldr	r3, [r3]
      14:	e59f1098 	ldr	r1, [pc, #152]	@ b4 <opentest+0xb4>
      18:	e1a00003 	mov	r0, r3
      1c:	eb001274 	bl	49f4 <printf>
      20:	e3a01000 	mov	r1, #0
      24:	e59f008c 	ldr	r0, [pc, #140]	@ b8 <opentest+0xb8>
      28:	eb0011a0 	bl	46b0 <open>
      2c:	e50b0008 	str	r0, [fp, #-8]
      30:	e51b3008 	ldr	r3, [fp, #-8]
      34:	e3530000 	cmp	r3, #0
      38:	aa000005 	bge	54 <opentest+0x54>
      3c:	e59f306c 	ldr	r3, [pc, #108]	@ b0 <opentest+0xb0>
      40:	e5933000 	ldr	r3, [r3]
      44:	e59f1070 	ldr	r1, [pc, #112]	@ bc <opentest+0xbc>
      48:	e1a00003 	mov	r0, r3
      4c:	eb001268 	bl	49f4 <printf>
      50:	eb00114e 	bl	4590 <exit>
      54:	e51b0008 	ldr	r0, [fp, #-8]
      58:	eb001179 	bl	4644 <close>
      5c:	e3a01000 	mov	r1, #0
      60:	e59f0058 	ldr	r0, [pc, #88]	@ c0 <opentest+0xc0>
      64:	eb001191 	bl	46b0 <open>
      68:	e50b0008 	str	r0, [fp, #-8]
      6c:	e51b3008 	ldr	r3, [fp, #-8]
      70:	e3530000 	cmp	r3, #0
      74:	ba000005 	blt	90 <opentest+0x90>
      78:	e59f3030 	ldr	r3, [pc, #48]	@ b0 <opentest+0xb0>
      7c:	e5933000 	ldr	r3, [r3]
      80:	e59f103c 	ldr	r1, [pc, #60]	@ c4 <opentest+0xc4>
      84:	e1a00003 	mov	r0, r3
      88:	eb001259 	bl	49f4 <printf>
      8c:	eb00113f 	bl	4590 <exit>
      90:	e59f3018 	ldr	r3, [pc, #24]	@ b0 <opentest+0xb0>
      94:	e5933000 	ldr	r3, [r3]
      98:	e59f1028 	ldr	r1, [pc, #40]	@ c8 <opentest+0xc8>
      9c:	e1a00003 	mov	r0, r3
      a0:	eb001253 	bl	49f4 <printf>
      a4:	e1a00000 	nop			@ (mov r0, r0)
      a8:	e24bd004 	sub	sp, fp, #4
      ac:	e8bd8800 	pop	{fp, pc}
      b0:	000068fc 	.word	0x000068fc
      b4:	000050cc 	.word	0x000050cc
      b8:	000050b0 	.word	0x000050b0
      bc:	000050d8 	.word	0x000050d8
      c0:	000050ec 	.word	0x000050ec
      c4:	000050fc 	.word	0x000050fc
      c8:	0000511c 	.word	0x0000511c

000000cc <writetest>:
      cc:	e92d4800 	push	{fp, lr}
      d0:	e28db004 	add	fp, sp, #4
      d4:	e24dd008 	sub	sp, sp, #8
      d8:	e59f31f4 	ldr	r3, [pc, #500]	@ 2d4 <writetest+0x208>
      dc:	e5933000 	ldr	r3, [r3]
      e0:	e59f11f0 	ldr	r1, [pc, #496]	@ 2d8 <writetest+0x20c>
      e4:	e1a00003 	mov	r0, r3
      e8:	eb001241 	bl	49f4 <printf>
      ec:	e59f11e8 	ldr	r1, [pc, #488]	@ 2dc <writetest+0x210>
      f0:	e59f01e8 	ldr	r0, [pc, #488]	@ 2e0 <writetest+0x214>
      f4:	eb00116d 	bl	46b0 <open>
      f8:	e50b000c 	str	r0, [fp, #-12]
      fc:	e51b300c 	ldr	r3, [fp, #-12]
     100:	e3530000 	cmp	r3, #0
     104:	ba000007 	blt	128 <writetest+0x5c>
     108:	e59f31c4 	ldr	r3, [pc, #452]	@ 2d4 <writetest+0x208>
     10c:	e5933000 	ldr	r3, [r3]
     110:	e59f11cc 	ldr	r1, [pc, #460]	@ 2e4 <writetest+0x218>
     114:	e1a00003 	mov	r0, r3
     118:	eb001235 	bl	49f4 <printf>
     11c:	e3a03000 	mov	r3, #0
     120:	e50b3008 	str	r3, [fp, #-8]
     124:	ea000024 	b	1bc <writetest+0xf0>
     128:	e59f31a4 	ldr	r3, [pc, #420]	@ 2d4 <writetest+0x208>
     12c:	e5933000 	ldr	r3, [r3]
     130:	e59f11b0 	ldr	r1, [pc, #432]	@ 2e8 <writetest+0x21c>
     134:	e1a00003 	mov	r0, r3
     138:	eb00122d 	bl	49f4 <printf>
     13c:	eb001113 	bl	4590 <exit>
     140:	e3a0200a 	mov	r2, #10
     144:	e59f11a0 	ldr	r1, [pc, #416]	@ 2ec <writetest+0x220>
     148:	e51b000c 	ldr	r0, [fp, #-12]
     14c:	eb001133 	bl	4620 <write>
     150:	e1a03000 	mov	r3, r0
     154:	e353000a 	cmp	r3, #10
     158:	0a000006 	beq	178 <writetest+0xac>
     15c:	e59f3170 	ldr	r3, [pc, #368]	@ 2d4 <writetest+0x208>
     160:	e5933000 	ldr	r3, [r3]
     164:	e51b2008 	ldr	r2, [fp, #-8]
     168:	e59f1180 	ldr	r1, [pc, #384]	@ 2f0 <writetest+0x224>
     16c:	e1a00003 	mov	r0, r3
     170:	eb00121f 	bl	49f4 <printf>
     174:	eb001105 	bl	4590 <exit>
     178:	e3a0200a 	mov	r2, #10
     17c:	e59f1170 	ldr	r1, [pc, #368]	@ 2f4 <writetest+0x228>
     180:	e51b000c 	ldr	r0, [fp, #-12]
     184:	eb001125 	bl	4620 <write>
     188:	e1a03000 	mov	r3, r0
     18c:	e353000a 	cmp	r3, #10
     190:	0a000006 	beq	1b0 <writetest+0xe4>
     194:	e59f3138 	ldr	r3, [pc, #312]	@ 2d4 <writetest+0x208>
     198:	e5933000 	ldr	r3, [r3]
     19c:	e51b2008 	ldr	r2, [fp, #-8]
     1a0:	e59f1150 	ldr	r1, [pc, #336]	@ 2f8 <writetest+0x22c>
     1a4:	e1a00003 	mov	r0, r3
     1a8:	eb001211 	bl	49f4 <printf>
     1ac:	eb0010f7 	bl	4590 <exit>
     1b0:	e51b3008 	ldr	r3, [fp, #-8]
     1b4:	e2833001 	add	r3, r3, #1
     1b8:	e50b3008 	str	r3, [fp, #-8]
     1bc:	e51b3008 	ldr	r3, [fp, #-8]
     1c0:	e3530063 	cmp	r3, #99	@ 0x63
     1c4:	daffffdd 	ble	140 <writetest+0x74>
     1c8:	e59f3104 	ldr	r3, [pc, #260]	@ 2d4 <writetest+0x208>
     1cc:	e5933000 	ldr	r3, [r3]
     1d0:	e59f1124 	ldr	r1, [pc, #292]	@ 2fc <writetest+0x230>
     1d4:	e1a00003 	mov	r0, r3
     1d8:	eb001205 	bl	49f4 <printf>
     1dc:	e51b000c 	ldr	r0, [fp, #-12]
     1e0:	eb001117 	bl	4644 <close>
     1e4:	e3a01000 	mov	r1, #0
     1e8:	e59f00f0 	ldr	r0, [pc, #240]	@ 2e0 <writetest+0x214>
     1ec:	eb00112f 	bl	46b0 <open>
     1f0:	e50b000c 	str	r0, [fp, #-12]
     1f4:	e51b300c 	ldr	r3, [fp, #-12]
     1f8:	e3530000 	cmp	r3, #0
     1fc:	ba00000d 	blt	238 <writetest+0x16c>
     200:	e59f30cc 	ldr	r3, [pc, #204]	@ 2d4 <writetest+0x208>
     204:	e5933000 	ldr	r3, [r3]
     208:	e59f10f0 	ldr	r1, [pc, #240]	@ 300 <writetest+0x234>
     20c:	e1a00003 	mov	r0, r3
     210:	eb0011f7 	bl	49f4 <printf>
     214:	e3a02e7d 	mov	r2, #2000	@ 0x7d0
     218:	e59f10e4 	ldr	r1, [pc, #228]	@ 304 <writetest+0x238>
     21c:	e51b000c 	ldr	r0, [fp, #-12]
     220:	eb0010f5 	bl	45fc <read>
     224:	e50b0008 	str	r0, [fp, #-8]
     228:	e51b3008 	ldr	r3, [fp, #-8]
     22c:	e3530e7d 	cmp	r3, #2000	@ 0x7d0
     230:	1a000013 	bne	284 <writetest+0x1b8>
     234:	ea000005 	b	250 <writetest+0x184>
     238:	e59f3094 	ldr	r3, [pc, #148]	@ 2d4 <writetest+0x208>
     23c:	e5933000 	ldr	r3, [r3]
     240:	e59f10c0 	ldr	r1, [pc, #192]	@ 308 <writetest+0x23c>
     244:	e1a00003 	mov	r0, r3
     248:	eb0011e9 	bl	49f4 <printf>
     24c:	eb0010cf 	bl	4590 <exit>
     250:	e59f307c 	ldr	r3, [pc, #124]	@ 2d4 <writetest+0x208>
     254:	e5933000 	ldr	r3, [r3]
     258:	e59f10ac 	ldr	r1, [pc, #172]	@ 30c <writetest+0x240>
     25c:	e1a00003 	mov	r0, r3
     260:	eb0011e3 	bl	49f4 <printf>
     264:	e51b000c 	ldr	r0, [fp, #-12]
     268:	eb0010f5 	bl	4644 <close>
     26c:	e59f006c 	ldr	r0, [pc, #108]	@ 2e0 <writetest+0x214>
     270:	eb001120 	bl	46f8 <unlink>
     274:	e1a03000 	mov	r3, r0
     278:	e3530000 	cmp	r3, #0
     27c:	aa00000c 	bge	2b4 <writetest+0x1e8>
     280:	ea000005 	b	29c <writetest+0x1d0>
     284:	e59f3048 	ldr	r3, [pc, #72]	@ 2d4 <writetest+0x208>
     288:	e5933000 	ldr	r3, [r3]
     28c:	e59f107c 	ldr	r1, [pc, #124]	@ 310 <writetest+0x244>
     290:	e1a00003 	mov	r0, r3
     294:	eb0011d6 	bl	49f4 <printf>
     298:	eb0010bc 	bl	4590 <exit>
     29c:	e59f3030 	ldr	r3, [pc, #48]	@ 2d4 <writetest+0x208>
     2a0:	e5933000 	ldr	r3, [r3]
     2a4:	e59f1068 	ldr	r1, [pc, #104]	@ 314 <writetest+0x248>
     2a8:	e1a00003 	mov	r0, r3
     2ac:	eb0011d0 	bl	49f4 <printf>
     2b0:	eb0010b6 	bl	4590 <exit>
     2b4:	e59f3018 	ldr	r3, [pc, #24]	@ 2d4 <writetest+0x208>
     2b8:	e5933000 	ldr	r3, [r3]
     2bc:	e59f1054 	ldr	r1, [pc, #84]	@ 318 <writetest+0x24c>
     2c0:	e1a00003 	mov	r0, r3
     2c4:	eb0011ca 	bl	49f4 <printf>
     2c8:	e1a00000 	nop			@ (mov r0, r0)
     2cc:	e24bd004 	sub	sp, fp, #4
     2d0:	e8bd8800 	pop	{fp, pc}
     2d4:	000068fc 	.word	0x000068fc
     2d8:	0000512c 	.word	0x0000512c
     2dc:	00000202 	.word	0x00000202
     2e0:	00005140 	.word	0x00005140
     2e4:	00005148 	.word	0x00005148
     2e8:	00005164 	.word	0x00005164
     2ec:	00005180 	.word	0x00005180
     2f0:	0000518c 	.word	0x0000518c
     2f4:	000051b0 	.word	0x000051b0
     2f8:	000051bc 	.word	0x000051bc
     2fc:	000051e0 	.word	0x000051e0
     300:	000051ec 	.word	0x000051ec
     304:	00006918 	.word	0x00006918
     308:	00005208 	.word	0x00005208
     30c:	00005224 	.word	0x00005224
     310:	00005238 	.word	0x00005238
     314:	00005248 	.word	0x00005248
     318:	00005260 	.word	0x00005260

0000031c <writetest1>:
     31c:	e92d4800 	push	{fp, lr}
     320:	e28db004 	add	fp, sp, #4
     324:	e24dd010 	sub	sp, sp, #16
     328:	e59f31f8 	ldr	r3, [pc, #504]	@ 528 <writetest1+0x20c>
     32c:	e5933000 	ldr	r3, [r3]
     330:	e59f11f4 	ldr	r1, [pc, #500]	@ 52c <writetest1+0x210>
     334:	e1a00003 	mov	r0, r3
     338:	eb0011ad 	bl	49f4 <printf>
     33c:	e59f11ec 	ldr	r1, [pc, #492]	@ 530 <writetest1+0x214>
     340:	e59f01ec 	ldr	r0, [pc, #492]	@ 534 <writetest1+0x218>
     344:	eb0010d9 	bl	46b0 <open>
     348:	e50b0010 	str	r0, [fp, #-16]
     34c:	e51b3010 	ldr	r3, [fp, #-16]
     350:	e3530000 	cmp	r3, #0
     354:	aa000005 	bge	370 <writetest1+0x54>
     358:	e59f31c8 	ldr	r3, [pc, #456]	@ 528 <writetest1+0x20c>
     35c:	e5933000 	ldr	r3, [r3]
     360:	e59f11d0 	ldr	r1, [pc, #464]	@ 538 <writetest1+0x21c>
     364:	e1a00003 	mov	r0, r3
     368:	eb0011a1 	bl	49f4 <printf>
     36c:	eb001087 	bl	4590 <exit>
     370:	e3a03000 	mov	r3, #0
     374:	e50b3008 	str	r3, [fp, #-8]
     378:	ea000013 	b	3cc <writetest1+0xb0>
     37c:	e59f21b8 	ldr	r2, [pc, #440]	@ 53c <writetest1+0x220>
     380:	e51b3008 	ldr	r3, [fp, #-8]
     384:	e5823000 	str	r3, [r2]
     388:	e3a02c02 	mov	r2, #512	@ 0x200
     38c:	e59f11a8 	ldr	r1, [pc, #424]	@ 53c <writetest1+0x220>
     390:	e51b0010 	ldr	r0, [fp, #-16]
     394:	eb0010a1 	bl	4620 <write>
     398:	e1a03000 	mov	r3, r0
     39c:	e3530c02 	cmp	r3, #512	@ 0x200
     3a0:	0a000006 	beq	3c0 <writetest1+0xa4>
     3a4:	e59f317c 	ldr	r3, [pc, #380]	@ 528 <writetest1+0x20c>
     3a8:	e5933000 	ldr	r3, [r3]
     3ac:	e51b2008 	ldr	r2, [fp, #-8]
     3b0:	e59f1188 	ldr	r1, [pc, #392]	@ 540 <writetest1+0x224>
     3b4:	e1a00003 	mov	r0, r3
     3b8:	eb00118d 	bl	49f4 <printf>
     3bc:	eb001073 	bl	4590 <exit>
     3c0:	e51b3008 	ldr	r3, [fp, #-8]
     3c4:	e2833001 	add	r3, r3, #1
     3c8:	e50b3008 	str	r3, [fp, #-8]
     3cc:	e51b3008 	ldr	r3, [fp, #-8]
     3d0:	e353008b 	cmp	r3, #139	@ 0x8b
     3d4:	9affffe8 	bls	37c <writetest1+0x60>
     3d8:	e51b0010 	ldr	r0, [fp, #-16]
     3dc:	eb001098 	bl	4644 <close>
     3e0:	e3a01000 	mov	r1, #0
     3e4:	e59f0148 	ldr	r0, [pc, #328]	@ 534 <writetest1+0x218>
     3e8:	eb0010b0 	bl	46b0 <open>
     3ec:	e50b0010 	str	r0, [fp, #-16]
     3f0:	e51b3010 	ldr	r3, [fp, #-16]
     3f4:	e3530000 	cmp	r3, #0
     3f8:	aa000005 	bge	414 <writetest1+0xf8>
     3fc:	e59f3124 	ldr	r3, [pc, #292]	@ 528 <writetest1+0x20c>
     400:	e5933000 	ldr	r3, [r3]
     404:	e59f1138 	ldr	r1, [pc, #312]	@ 544 <writetest1+0x228>
     408:	e1a00003 	mov	r0, r3
     40c:	eb001178 	bl	49f4 <printf>
     410:	eb00105e 	bl	4590 <exit>
     414:	e3a03000 	mov	r3, #0
     418:	e50b300c 	str	r3, [fp, #-12]
     41c:	e3a02c02 	mov	r2, #512	@ 0x200
     420:	e59f1114 	ldr	r1, [pc, #276]	@ 53c <writetest1+0x220>
     424:	e51b0010 	ldr	r0, [fp, #-16]
     428:	eb001073 	bl	45fc <read>
     42c:	e50b0008 	str	r0, [fp, #-8]
     430:	e51b3008 	ldr	r3, [fp, #-8]
     434:	e3530000 	cmp	r3, #0
     438:	1a000009 	bne	464 <writetest1+0x148>
     43c:	e51b300c 	ldr	r3, [fp, #-12]
     440:	e353008b 	cmp	r3, #139	@ 0x8b
     444:	1a000021 	bne	4d0 <writetest1+0x1b4>
     448:	e59f30d8 	ldr	r3, [pc, #216]	@ 528 <writetest1+0x20c>
     44c:	e5933000 	ldr	r3, [r3]
     450:	e51b200c 	ldr	r2, [fp, #-12]
     454:	e59f10ec 	ldr	r1, [pc, #236]	@ 548 <writetest1+0x22c>
     458:	e1a00003 	mov	r0, r3
     45c:	eb001164 	bl	49f4 <printf>
     460:	eb00104a 	bl	4590 <exit>
     464:	e51b3008 	ldr	r3, [fp, #-8]
     468:	e3530c02 	cmp	r3, #512	@ 0x200
     46c:	0a000006 	beq	48c <writetest1+0x170>
     470:	e59f30b0 	ldr	r3, [pc, #176]	@ 528 <writetest1+0x20c>
     474:	e5933000 	ldr	r3, [r3]
     478:	e51b2008 	ldr	r2, [fp, #-8]
     47c:	e59f10c8 	ldr	r1, [pc, #200]	@ 54c <writetest1+0x230>
     480:	e1a00003 	mov	r0, r3
     484:	eb00115a 	bl	49f4 <printf>
     488:	eb001040 	bl	4590 <exit>
     48c:	e59f30a8 	ldr	r3, [pc, #168]	@ 53c <writetest1+0x220>
     490:	e5933000 	ldr	r3, [r3]
     494:	e51b200c 	ldr	r2, [fp, #-12]
     498:	e1520003 	cmp	r2, r3
     49c:	0a000007 	beq	4c0 <writetest1+0x1a4>
     4a0:	e59f3080 	ldr	r3, [pc, #128]	@ 528 <writetest1+0x20c>
     4a4:	e5930000 	ldr	r0, [r3]
     4a8:	e59f308c 	ldr	r3, [pc, #140]	@ 53c <writetest1+0x220>
     4ac:	e5933000 	ldr	r3, [r3]
     4b0:	e51b200c 	ldr	r2, [fp, #-12]
     4b4:	e59f1094 	ldr	r1, [pc, #148]	@ 550 <writetest1+0x234>
     4b8:	eb00114d 	bl	49f4 <printf>
     4bc:	eb001033 	bl	4590 <exit>
     4c0:	e51b300c 	ldr	r3, [fp, #-12]
     4c4:	e2833001 	add	r3, r3, #1
     4c8:	e50b300c 	str	r3, [fp, #-12]
     4cc:	eaffffd2 	b	41c <writetest1+0x100>
     4d0:	e1a00000 	nop			@ (mov r0, r0)
     4d4:	e51b0010 	ldr	r0, [fp, #-16]
     4d8:	eb001059 	bl	4644 <close>
     4dc:	e59f0050 	ldr	r0, [pc, #80]	@ 534 <writetest1+0x218>
     4e0:	eb001084 	bl	46f8 <unlink>
     4e4:	e1a03000 	mov	r3, r0
     4e8:	e3530000 	cmp	r3, #0
     4ec:	aa000005 	bge	508 <writetest1+0x1ec>
     4f0:	e59f3030 	ldr	r3, [pc, #48]	@ 528 <writetest1+0x20c>
     4f4:	e5933000 	ldr	r3, [r3]
     4f8:	e59f1054 	ldr	r1, [pc, #84]	@ 554 <writetest1+0x238>
     4fc:	e1a00003 	mov	r0, r3
     500:	eb00113b 	bl	49f4 <printf>
     504:	eb001021 	bl	4590 <exit>
     508:	e59f3018 	ldr	r3, [pc, #24]	@ 528 <writetest1+0x20c>
     50c:	e5933000 	ldr	r3, [r3]
     510:	e59f1040 	ldr	r1, [pc, #64]	@ 558 <writetest1+0x23c>
     514:	e1a00003 	mov	r0, r3
     518:	eb001135 	bl	49f4 <printf>
     51c:	e1a00000 	nop			@ (mov r0, r0)
     520:	e24bd004 	sub	sp, fp, #4
     524:	e8bd8800 	pop	{fp, pc}
     528:	000068fc 	.word	0x000068fc
     52c:	00005274 	.word	0x00005274
     530:	00000202 	.word	0x00000202
     534:	00005284 	.word	0x00005284
     538:	00005288 	.word	0x00005288
     53c:	00006918 	.word	0x00006918
     540:	000052a4 	.word	0x000052a4
     544:	000052c4 	.word	0x000052c4
     548:	000052e0 	.word	0x000052e0
     54c:	00005300 	.word	0x00005300
     550:	00005310 	.word	0x00005310
     554:	00005330 	.word	0x00005330
     558:	00005344 	.word	0x00005344

0000055c <createtest>:
     55c:	e92d4800 	push	{fp, lr}
     560:	e28db004 	add	fp, sp, #4
     564:	e24dd008 	sub	sp, sp, #8
     568:	e59f30f4 	ldr	r3, [pc, #244]	@ 664 <createtest+0x108>
     56c:	e5933000 	ldr	r3, [r3]
     570:	e59f10f0 	ldr	r1, [pc, #240]	@ 668 <createtest+0x10c>
     574:	e1a00003 	mov	r0, r3
     578:	eb00111d 	bl	49f4 <printf>
     57c:	e59f30e8 	ldr	r3, [pc, #232]	@ 66c <createtest+0x110>
     580:	e3a02061 	mov	r2, #97	@ 0x61
     584:	e5c32000 	strb	r2, [r3]
     588:	e59f30dc 	ldr	r3, [pc, #220]	@ 66c <createtest+0x110>
     58c:	e3a02000 	mov	r2, #0
     590:	e5c32002 	strb	r2, [r3, #2]
     594:	e3a03000 	mov	r3, #0
     598:	e50b3008 	str	r3, [fp, #-8]
     59c:	ea00000e 	b	5dc <createtest+0x80>
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e6ef3073 	uxtb	r3, r3
     5a8:	e2833030 	add	r3, r3, #48	@ 0x30
     5ac:	e6ef2073 	uxtb	r2, r3
     5b0:	e59f30b4 	ldr	r3, [pc, #180]	@ 66c <createtest+0x110>
     5b4:	e5c32001 	strb	r2, [r3, #1]
     5b8:	e59f10b0 	ldr	r1, [pc, #176]	@ 670 <createtest+0x114>
     5bc:	e59f00a8 	ldr	r0, [pc, #168]	@ 66c <createtest+0x110>
     5c0:	eb00103a 	bl	46b0 <open>
     5c4:	e50b000c 	str	r0, [fp, #-12]
     5c8:	e51b000c 	ldr	r0, [fp, #-12]
     5cc:	eb00101c 	bl	4644 <close>
     5d0:	e51b3008 	ldr	r3, [fp, #-8]
     5d4:	e2833001 	add	r3, r3, #1
     5d8:	e50b3008 	str	r3, [fp, #-8]
     5dc:	e51b3008 	ldr	r3, [fp, #-8]
     5e0:	e3530033 	cmp	r3, #51	@ 0x33
     5e4:	daffffed 	ble	5a0 <createtest+0x44>
     5e8:	e59f307c 	ldr	r3, [pc, #124]	@ 66c <createtest+0x110>
     5ec:	e3a02061 	mov	r2, #97	@ 0x61
     5f0:	e5c32000 	strb	r2, [r3]
     5f4:	e59f3070 	ldr	r3, [pc, #112]	@ 66c <createtest+0x110>
     5f8:	e3a02000 	mov	r2, #0
     5fc:	e5c32002 	strb	r2, [r3, #2]
     600:	e3a03000 	mov	r3, #0
     604:	e50b3008 	str	r3, [fp, #-8]
     608:	ea00000a 	b	638 <createtest+0xdc>
     60c:	e51b3008 	ldr	r3, [fp, #-8]
     610:	e6ef3073 	uxtb	r3, r3
     614:	e2833030 	add	r3, r3, #48	@ 0x30
     618:	e6ef2073 	uxtb	r2, r3
     61c:	e59f3048 	ldr	r3, [pc, #72]	@ 66c <createtest+0x110>
     620:	e5c32001 	strb	r2, [r3, #1]
     624:	e59f0040 	ldr	r0, [pc, #64]	@ 66c <createtest+0x110>
     628:	eb001032 	bl	46f8 <unlink>
     62c:	e51b3008 	ldr	r3, [fp, #-8]
     630:	e2833001 	add	r3, r3, #1
     634:	e50b3008 	str	r3, [fp, #-8]
     638:	e51b3008 	ldr	r3, [fp, #-8]
     63c:	e3530033 	cmp	r3, #51	@ 0x33
     640:	dafffff1 	ble	60c <createtest+0xb0>
     644:	e59f3018 	ldr	r3, [pc, #24]	@ 664 <createtest+0x108>
     648:	e5933000 	ldr	r3, [r3]
     64c:	e59f1020 	ldr	r1, [pc, #32]	@ 674 <createtest+0x118>
     650:	e1a00003 	mov	r0, r3
     654:	eb0010e6 	bl	49f4 <printf>
     658:	e1a00000 	nop			@ (mov r0, r0)
     65c:	e24bd004 	sub	sp, fp, #4
     660:	e8bd8800 	pop	{fp, pc}
     664:	000068fc 	.word	0x000068fc
     668:	00005354 	.word	0x00005354
     66c:	00008918 	.word	0x00008918
     670:	00000202 	.word	0x00000202
     674:	0000537c 	.word	0x0000537c

00000678 <dirtest>:
     678:	e92d4800 	push	{fp, lr}
     67c:	e28db004 	add	fp, sp, #4
     680:	e59f30d8 	ldr	r3, [pc, #216]	@ 760 <dirtest+0xe8>
     684:	e5933000 	ldr	r3, [r3]
     688:	e59f10d4 	ldr	r1, [pc, #212]	@ 764 <dirtest+0xec>
     68c:	e1a00003 	mov	r0, r3
     690:	eb0010d7 	bl	49f4 <printf>
     694:	e59f00cc 	ldr	r0, [pc, #204]	@ 768 <dirtest+0xf0>
     698:	eb001031 	bl	4764 <mkdir>
     69c:	e1a03000 	mov	r3, r0
     6a0:	e3530000 	cmp	r3, #0
     6a4:	aa000005 	bge	6c0 <dirtest+0x48>
     6a8:	e59f30b0 	ldr	r3, [pc, #176]	@ 760 <dirtest+0xe8>
     6ac:	e5933000 	ldr	r3, [r3]
     6b0:	e59f10b4 	ldr	r1, [pc, #180]	@ 76c <dirtest+0xf4>
     6b4:	e1a00003 	mov	r0, r3
     6b8:	eb0010cd 	bl	49f4 <printf>
     6bc:	eb000fb3 	bl	4590 <exit>
     6c0:	e59f00a0 	ldr	r0, [pc, #160]	@ 768 <dirtest+0xf0>
     6c4:	eb00102f 	bl	4788 <chdir>
     6c8:	e1a03000 	mov	r3, r0
     6cc:	e3530000 	cmp	r3, #0
     6d0:	aa000005 	bge	6ec <dirtest+0x74>
     6d4:	e59f3084 	ldr	r3, [pc, #132]	@ 760 <dirtest+0xe8>
     6d8:	e5933000 	ldr	r3, [r3]
     6dc:	e59f108c 	ldr	r1, [pc, #140]	@ 770 <dirtest+0xf8>
     6e0:	e1a00003 	mov	r0, r3
     6e4:	eb0010c2 	bl	49f4 <printf>
     6e8:	eb000fa8 	bl	4590 <exit>
     6ec:	e59f0080 	ldr	r0, [pc, #128]	@ 774 <dirtest+0xfc>
     6f0:	eb001024 	bl	4788 <chdir>
     6f4:	e1a03000 	mov	r3, r0
     6f8:	e3530000 	cmp	r3, #0
     6fc:	aa000005 	bge	718 <dirtest+0xa0>
     700:	e59f3058 	ldr	r3, [pc, #88]	@ 760 <dirtest+0xe8>
     704:	e5933000 	ldr	r3, [r3]
     708:	e59f1068 	ldr	r1, [pc, #104]	@ 778 <dirtest+0x100>
     70c:	e1a00003 	mov	r0, r3
     710:	eb0010b7 	bl	49f4 <printf>
     714:	eb000f9d 	bl	4590 <exit>
     718:	e59f0048 	ldr	r0, [pc, #72]	@ 768 <dirtest+0xf0>
     71c:	eb000ff5 	bl	46f8 <unlink>
     720:	e1a03000 	mov	r3, r0
     724:	e3530000 	cmp	r3, #0
     728:	aa000005 	bge	744 <dirtest+0xcc>
     72c:	e59f302c 	ldr	r3, [pc, #44]	@ 760 <dirtest+0xe8>
     730:	e5933000 	ldr	r3, [r3]
     734:	e59f1040 	ldr	r1, [pc, #64]	@ 77c <dirtest+0x104>
     738:	e1a00003 	mov	r0, r3
     73c:	eb0010ac 	bl	49f4 <printf>
     740:	eb000f92 	bl	4590 <exit>
     744:	e59f3014 	ldr	r3, [pc, #20]	@ 760 <dirtest+0xe8>
     748:	e5933000 	ldr	r3, [r3]
     74c:	e59f1010 	ldr	r1, [pc, #16]	@ 764 <dirtest+0xec>
     750:	e1a00003 	mov	r0, r3
     754:	eb0010a6 	bl	49f4 <printf>
     758:	e1a00000 	nop			@ (mov r0, r0)
     75c:	e8bd8800 	pop	{fp, pc}
     760:	000068fc 	.word	0x000068fc
     764:	000053a4 	.word	0x000053a4
     768:	000053b0 	.word	0x000053b0
     76c:	000053b8 	.word	0x000053b8
     770:	000053c8 	.word	0x000053c8
     774:	000053dc 	.word	0x000053dc
     778:	000053e0 	.word	0x000053e0
     77c:	000053f4 	.word	0x000053f4

00000780 <exectest>:
     780:	e92d4800 	push	{fp, lr}
     784:	e28db004 	add	fp, sp, #4
     788:	e59f3044 	ldr	r3, [pc, #68]	@ 7d4 <exectest+0x54>
     78c:	e5933000 	ldr	r3, [r3]
     790:	e59f1040 	ldr	r1, [pc, #64]	@ 7d8 <exectest+0x58>
     794:	e1a00003 	mov	r0, r3
     798:	eb001095 	bl	49f4 <printf>
     79c:	e59f1038 	ldr	r1, [pc, #56]	@ 7dc <exectest+0x5c>
     7a0:	e59f0038 	ldr	r0, [pc, #56]	@ 7e0 <exectest+0x60>
     7a4:	eb000fb8 	bl	468c <exec>
     7a8:	e1a03000 	mov	r3, r0
     7ac:	e3530000 	cmp	r3, #0
     7b0:	aa000005 	bge	7cc <exectest+0x4c>
     7b4:	e59f3018 	ldr	r3, [pc, #24]	@ 7d4 <exectest+0x54>
     7b8:	e5933000 	ldr	r3, [r3]
     7bc:	e59f1020 	ldr	r1, [pc, #32]	@ 7e4 <exectest+0x64>
     7c0:	e1a00003 	mov	r0, r3
     7c4:	eb00108a 	bl	49f4 <printf>
     7c8:	eb000f70 	bl	4590 <exit>
     7cc:	e1a00000 	nop			@ (mov r0, r0)
     7d0:	e8bd8800 	pop	{fp, pc}
     7d4:	000068fc 	.word	0x000068fc
     7d8:	00005408 	.word	0x00005408
     7dc:	000068e8 	.word	0x000068e8
     7e0:	000050b0 	.word	0x000050b0
     7e4:	00005414 	.word	0x00005414

000007e8 <pipe1>:
     7e8:	e92d4800 	push	{fp, lr}
     7ec:	e28db004 	add	fp, sp, #4
     7f0:	e24dd020 	sub	sp, sp, #32
     7f4:	e24b3024 	sub	r3, fp, #36	@ 0x24
     7f8:	e1a00003 	mov	r0, r3
     7fc:	eb000f75 	bl	45d8 <pipe>
     800:	e1a03000 	mov	r3, r0
     804:	e3530000 	cmp	r3, #0
     808:	0a000003 	beq	81c <pipe1+0x34>
     80c:	e59f1218 	ldr	r1, [pc, #536]	@ a2c <pipe1+0x244>
     810:	e3a00001 	mov	r0, #1
     814:	eb001076 	bl	49f4 <printf>
     818:	eb000f5c 	bl	4590 <exit>
     81c:	eb000f52 	bl	456c <fork>
     820:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     824:	e3a03000 	mov	r3, #0
     828:	e50b3008 	str	r3, [fp, #-8]
     82c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     830:	e3530000 	cmp	r3, #0
     834:	1a00002c 	bne	8ec <pipe1+0x104>
     838:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     83c:	e1a00003 	mov	r0, r3
     840:	eb000f7f 	bl	4644 <close>
     844:	e3a03000 	mov	r3, #0
     848:	e50b3010 	str	r3, [fp, #-16]
     84c:	ea000022 	b	8dc <pipe1+0xf4>
     850:	e3a03000 	mov	r3, #0
     854:	e50b300c 	str	r3, [fp, #-12]
     858:	ea00000b 	b	88c <pipe1+0xa4>
     85c:	e51b3008 	ldr	r3, [fp, #-8]
     860:	e2832001 	add	r2, r3, #1
     864:	e50b2008 	str	r2, [fp, #-8]
     868:	e6ef1073 	uxtb	r1, r3
     86c:	e59f21bc 	ldr	r2, [pc, #444]	@ a30 <pipe1+0x248>
     870:	e51b300c 	ldr	r3, [fp, #-12]
     874:	e0823003 	add	r3, r2, r3
     878:	e1a02001 	mov	r2, r1
     87c:	e5c32000 	strb	r2, [r3]
     880:	e51b300c 	ldr	r3, [fp, #-12]
     884:	e2833001 	add	r3, r3, #1
     888:	e50b300c 	str	r3, [fp, #-12]
     88c:	e51b300c 	ldr	r3, [fp, #-12]
     890:	e59f219c 	ldr	r2, [pc, #412]	@ a34 <pipe1+0x24c>
     894:	e1530002 	cmp	r3, r2
     898:	daffffef 	ble	85c <pipe1+0x74>
     89c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     8a0:	e59f2190 	ldr	r2, [pc, #400]	@ a38 <pipe1+0x250>
     8a4:	e59f1184 	ldr	r1, [pc, #388]	@ a30 <pipe1+0x248>
     8a8:	e1a00003 	mov	r0, r3
     8ac:	eb000f5b 	bl	4620 <write>
     8b0:	e1a03000 	mov	r3, r0
     8b4:	e59f217c 	ldr	r2, [pc, #380]	@ a38 <pipe1+0x250>
     8b8:	e1530002 	cmp	r3, r2
     8bc:	0a000003 	beq	8d0 <pipe1+0xe8>
     8c0:	e59f1174 	ldr	r1, [pc, #372]	@ a3c <pipe1+0x254>
     8c4:	e3a00001 	mov	r0, #1
     8c8:	eb001049 	bl	49f4 <printf>
     8cc:	eb000f2f 	bl	4590 <exit>
     8d0:	e51b3010 	ldr	r3, [fp, #-16]
     8d4:	e2833001 	add	r3, r3, #1
     8d8:	e50b3010 	str	r3, [fp, #-16]
     8dc:	e51b3010 	ldr	r3, [fp, #-16]
     8e0:	e3530004 	cmp	r3, #4
     8e4:	daffffd9 	ble	850 <pipe1+0x68>
     8e8:	eb000f28 	bl	4590 <exit>
     8ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     8f0:	e3530000 	cmp	r3, #0
     8f4:	da000046 	ble	a14 <pipe1+0x22c>
     8f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     8fc:	e1a00003 	mov	r0, r3
     900:	eb000f4f 	bl	4644 <close>
     904:	e3a03000 	mov	r3, #0
     908:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     90c:	e3a03001 	mov	r3, #1
     910:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     914:	ea000024 	b	9ac <pipe1+0x1c4>
     918:	e3a03000 	mov	r3, #0
     91c:	e50b300c 	str	r3, [fp, #-12]
     920:	ea000011 	b	96c <pipe1+0x184>
     924:	e59f2104 	ldr	r2, [pc, #260]	@ a30 <pipe1+0x248>
     928:	e51b300c 	ldr	r3, [fp, #-12]
     92c:	e0823003 	add	r3, r2, r3
     930:	e5d33000 	ldrb	r3, [r3]
     934:	e1a01003 	mov	r1, r3
     938:	e51b3008 	ldr	r3, [fp, #-8]
     93c:	e2832001 	add	r2, r3, #1
     940:	e50b2008 	str	r2, [fp, #-8]
     944:	e6ef3073 	uxtb	r3, r3
     948:	e1510003 	cmp	r1, r3
     94c:	0a000003 	beq	960 <pipe1+0x178>
     950:	e59f10e8 	ldr	r1, [pc, #232]	@ a40 <pipe1+0x258>
     954:	e3a00001 	mov	r0, #1
     958:	eb001025 	bl	49f4 <printf>
     95c:	ea000030 	b	a24 <pipe1+0x23c>
     960:	e51b300c 	ldr	r3, [fp, #-12]
     964:	e2833001 	add	r3, r3, #1
     968:	e50b300c 	str	r3, [fp, #-12]
     96c:	e51b200c 	ldr	r2, [fp, #-12]
     970:	e51b3010 	ldr	r3, [fp, #-16]
     974:	e1520003 	cmp	r2, r3
     978:	baffffe9 	blt	924 <pipe1+0x13c>
     97c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     980:	e51b3010 	ldr	r3, [fp, #-16]
     984:	e0823003 	add	r3, r2, r3
     988:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     98c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     990:	e1a03083 	lsl	r3, r3, #1
     994:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     998:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     99c:	e3530a02 	cmp	r3, #8192	@ 0x2000
     9a0:	9a000001 	bls	9ac <pipe1+0x1c4>
     9a4:	e3a03a02 	mov	r3, #8192	@ 0x2000
     9a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     9ac:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     9b0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     9b4:	e59f1074 	ldr	r1, [pc, #116]	@ a30 <pipe1+0x248>
     9b8:	e1a00003 	mov	r0, r3
     9bc:	eb000f0e 	bl	45fc <read>
     9c0:	e50b0010 	str	r0, [fp, #-16]
     9c4:	e51b3010 	ldr	r3, [fp, #-16]
     9c8:	e3530000 	cmp	r3, #0
     9cc:	caffffd1 	bgt	918 <pipe1+0x130>
     9d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     9d4:	e59f2068 	ldr	r2, [pc, #104]	@ a44 <pipe1+0x25c>
     9d8:	e1530002 	cmp	r3, r2
     9dc:	0a000004 	beq	9f4 <pipe1+0x20c>
     9e0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     9e4:	e59f105c 	ldr	r1, [pc, #92]	@ a48 <pipe1+0x260>
     9e8:	e3a00001 	mov	r0, #1
     9ec:	eb001000 	bl	49f4 <printf>
     9f0:	eb000ee6 	bl	4590 <exit>
     9f4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
     9f8:	e1a00003 	mov	r0, r3
     9fc:	eb000f10 	bl	4644 <close>
     a00:	eb000eeb 	bl	45b4 <wait>
     a04:	e59f1040 	ldr	r1, [pc, #64]	@ a4c <pipe1+0x264>
     a08:	e3a00001 	mov	r0, #1
     a0c:	eb000ff8 	bl	49f4 <printf>
     a10:	ea000003 	b	a24 <pipe1+0x23c>
     a14:	e59f1034 	ldr	r1, [pc, #52]	@ a50 <pipe1+0x268>
     a18:	e3a00001 	mov	r0, #1
     a1c:	eb000ff4 	bl	49f4 <printf>
     a20:	eb000eda 	bl	4590 <exit>
     a24:	e24bd004 	sub	sp, fp, #4
     a28:	e8bd8800 	pop	{fp, pc}
     a2c:	00005428 	.word	0x00005428
     a30:	00006918 	.word	0x00006918
     a34:	00000408 	.word	0x00000408
     a38:	00000409 	.word	0x00000409
     a3c:	00005438 	.word	0x00005438
     a40:	00005448 	.word	0x00005448
     a44:	0000142d 	.word	0x0000142d
     a48:	00005458 	.word	0x00005458
     a4c:	00005480 	.word	0x00005480
     a50:	00005470 	.word	0x00005470

00000a54 <preempt>:
     a54:	e92d4800 	push	{fp, lr}
     a58:	e28db004 	add	fp, sp, #4
     a5c:	e24dd018 	sub	sp, sp, #24
     a60:	e59f1140 	ldr	r1, [pc, #320]	@ ba8 <preempt+0x154>
     a64:	e3a00001 	mov	r0, #1
     a68:	eb000fe1 	bl	49f4 <printf>
     a6c:	eb000ebe 	bl	456c <fork>
     a70:	e50b0008 	str	r0, [fp, #-8]
     a74:	e51b3008 	ldr	r3, [fp, #-8]
     a78:	e3530000 	cmp	r3, #0
     a7c:	1a000001 	bne	a88 <preempt+0x34>
     a80:	e1a00000 	nop			@ (mov r0, r0)
     a84:	eafffffd 	b	a80 <preempt+0x2c>
     a88:	eb000eb7 	bl	456c <fork>
     a8c:	e50b000c 	str	r0, [fp, #-12]
     a90:	e51b300c 	ldr	r3, [fp, #-12]
     a94:	e3530000 	cmp	r3, #0
     a98:	1a000001 	bne	aa4 <preempt+0x50>
     a9c:	e1a00000 	nop			@ (mov r0, r0)
     aa0:	eafffffd 	b	a9c <preempt+0x48>
     aa4:	e24b3018 	sub	r3, fp, #24
     aa8:	e1a00003 	mov	r0, r3
     aac:	eb000ec9 	bl	45d8 <pipe>
     ab0:	eb000ead 	bl	456c <fork>
     ab4:	e50b0010 	str	r0, [fp, #-16]
     ab8:	e51b3010 	ldr	r3, [fp, #-16]
     abc:	e3530000 	cmp	r3, #0
     ac0:	1a000012 	bne	b10 <preempt+0xbc>
     ac4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     ac8:	e1a00003 	mov	r0, r3
     acc:	eb000edc 	bl	4644 <close>
     ad0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     ad4:	e3a02001 	mov	r2, #1
     ad8:	e59f10cc 	ldr	r1, [pc, #204]	@ bac <preempt+0x158>
     adc:	e1a00003 	mov	r0, r3
     ae0:	eb000ece 	bl	4620 <write>
     ae4:	e1a03000 	mov	r3, r0
     ae8:	e3530001 	cmp	r3, #1
     aec:	0a000002 	beq	afc <preempt+0xa8>
     af0:	e59f10b8 	ldr	r1, [pc, #184]	@ bb0 <preempt+0x15c>
     af4:	e3a00001 	mov	r0, #1
     af8:	eb000fbd 	bl	49f4 <printf>
     afc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b00:	e1a00003 	mov	r0, r3
     b04:	eb000ece 	bl	4644 <close>
     b08:	e1a00000 	nop			@ (mov r0, r0)
     b0c:	eafffffd 	b	b08 <preempt+0xb4>
     b10:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     b14:	e1a00003 	mov	r0, r3
     b18:	eb000ec9 	bl	4644 <close>
     b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b20:	e3a02a02 	mov	r2, #8192	@ 0x2000
     b24:	e59f1088 	ldr	r1, [pc, #136]	@ bb4 <preempt+0x160>
     b28:	e1a00003 	mov	r0, r3
     b2c:	eb000eb2 	bl	45fc <read>
     b30:	e1a03000 	mov	r3, r0
     b34:	e3530001 	cmp	r3, #1
     b38:	0a000003 	beq	b4c <preempt+0xf8>
     b3c:	e59f1074 	ldr	r1, [pc, #116]	@ bb8 <preempt+0x164>
     b40:	e3a00001 	mov	r0, #1
     b44:	eb000faa 	bl	49f4 <printf>
     b48:	ea000014 	b	ba0 <preempt+0x14c>
     b4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     b50:	e1a00003 	mov	r0, r3
     b54:	eb000eba 	bl	4644 <close>
     b58:	e59f105c 	ldr	r1, [pc, #92]	@ bbc <preempt+0x168>
     b5c:	e3a00001 	mov	r0, #1
     b60:	eb000fa3 	bl	49f4 <printf>
     b64:	e51b0008 	ldr	r0, [fp, #-8]
     b68:	eb000ebe 	bl	4668 <kill>
     b6c:	e51b000c 	ldr	r0, [fp, #-12]
     b70:	eb000ebc 	bl	4668 <kill>
     b74:	e51b0010 	ldr	r0, [fp, #-16]
     b78:	eb000eba 	bl	4668 <kill>
     b7c:	e59f103c 	ldr	r1, [pc, #60]	@ bc0 <preempt+0x16c>
     b80:	e3a00001 	mov	r0, #1
     b84:	eb000f9a 	bl	49f4 <printf>
     b88:	eb000e89 	bl	45b4 <wait>
     b8c:	eb000e88 	bl	45b4 <wait>
     b90:	eb000e87 	bl	45b4 <wait>
     b94:	e59f1028 	ldr	r1, [pc, #40]	@ bc4 <preempt+0x170>
     b98:	e3a00001 	mov	r0, #1
     b9c:	eb000f94 	bl	49f4 <printf>
     ba0:	e24bd004 	sub	sp, fp, #4
     ba4:	e8bd8800 	pop	{fp, pc}
     ba8:	0000548c 	.word	0x0000548c
     bac:	00005498 	.word	0x00005498
     bb0:	0000549c 	.word	0x0000549c
     bb4:	00006918 	.word	0x00006918
     bb8:	000054b0 	.word	0x000054b0
     bbc:	000054c4 	.word	0x000054c4
     bc0:	000054d0 	.word	0x000054d0
     bc4:	000054dc 	.word	0x000054dc

00000bc8 <exitwait>:
     bc8:	e92d4800 	push	{fp, lr}
     bcc:	e28db004 	add	fp, sp, #4
     bd0:	e24dd008 	sub	sp, sp, #8
     bd4:	e3a03000 	mov	r3, #0
     bd8:	e50b3008 	str	r3, [fp, #-8]
     bdc:	ea000018 	b	c44 <exitwait+0x7c>
     be0:	eb000e61 	bl	456c <fork>
     be4:	e50b000c 	str	r0, [fp, #-12]
     be8:	e51b300c 	ldr	r3, [fp, #-12]
     bec:	e3530000 	cmp	r3, #0
     bf0:	aa000003 	bge	c04 <exitwait+0x3c>
     bf4:	e59f1068 	ldr	r1, [pc, #104]	@ c64 <exitwait+0x9c>
     bf8:	e3a00001 	mov	r0, #1
     bfc:	eb000f7c 	bl	49f4 <printf>
     c00:	ea000015 	b	c5c <exitwait+0x94>
     c04:	e51b300c 	ldr	r3, [fp, #-12]
     c08:	e3530000 	cmp	r3, #0
     c0c:	0a000008 	beq	c34 <exitwait+0x6c>
     c10:	eb000e67 	bl	45b4 <wait>
     c14:	e1a02000 	mov	r2, r0
     c18:	e51b300c 	ldr	r3, [fp, #-12]
     c1c:	e1530002 	cmp	r3, r2
     c20:	0a000004 	beq	c38 <exitwait+0x70>
     c24:	e59f103c 	ldr	r1, [pc, #60]	@ c68 <exitwait+0xa0>
     c28:	e3a00001 	mov	r0, #1
     c2c:	eb000f70 	bl	49f4 <printf>
     c30:	ea000009 	b	c5c <exitwait+0x94>
     c34:	eb000e55 	bl	4590 <exit>
     c38:	e51b3008 	ldr	r3, [fp, #-8]
     c3c:	e2833001 	add	r3, r3, #1
     c40:	e50b3008 	str	r3, [fp, #-8]
     c44:	e51b3008 	ldr	r3, [fp, #-8]
     c48:	e3530063 	cmp	r3, #99	@ 0x63
     c4c:	daffffe3 	ble	be0 <exitwait+0x18>
     c50:	e59f1014 	ldr	r1, [pc, #20]	@ c6c <exitwait+0xa4>
     c54:	e3a00001 	mov	r0, #1
     c58:	eb000f65 	bl	49f4 <printf>
     c5c:	e24bd004 	sub	sp, fp, #4
     c60:	e8bd8800 	pop	{fp, pc}
     c64:	000054e8 	.word	0x000054e8
     c68:	000054f8 	.word	0x000054f8
     c6c:	00005508 	.word	0x00005508

00000c70 <mem>:
     c70:	e92d4800 	push	{fp, lr}
     c74:	e28db004 	add	fp, sp, #4
     c78:	e24dd010 	sub	sp, sp, #16
     c7c:	e59f10dc 	ldr	r1, [pc, #220]	@ d60 <mem+0xf0>
     c80:	e3a00001 	mov	r0, #1
     c84:	eb000f5a 	bl	49f4 <printf>
     c88:	eb000ed0 	bl	47d0 <getpid>
     c8c:	e50b000c 	str	r0, [fp, #-12]
     c90:	eb000e35 	bl	456c <fork>
     c94:	e50b0010 	str	r0, [fp, #-16]
     c98:	e51b3010 	ldr	r3, [fp, #-16]
     c9c:	e3530000 	cmp	r3, #0
     ca0:	1a00002a 	bne	d50 <mem+0xe0>
     ca4:	e3a03000 	mov	r3, #0
     ca8:	e50b3008 	str	r3, [fp, #-8]
     cac:	ea000004 	b	cc4 <mem+0x54>
     cb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cb4:	e51b2008 	ldr	r2, [fp, #-8]
     cb8:	e5832000 	str	r2, [r3]
     cbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cc0:	e50b3008 	str	r3, [fp, #-8]
     cc4:	e59f0098 	ldr	r0, [pc, #152]	@ d64 <mem+0xf4>
     cc8:	eb001058 	bl	4e30 <malloc>
     ccc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     cd0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cd4:	e3530000 	cmp	r3, #0
     cd8:	1afffff4 	bne	cb0 <mem+0x40>
     cdc:	ea000006 	b	cfc <mem+0x8c>
     ce0:	e51b3008 	ldr	r3, [fp, #-8]
     ce4:	e5933000 	ldr	r3, [r3]
     ce8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     cec:	e51b0008 	ldr	r0, [fp, #-8]
     cf0:	eb000fcd 	bl	4c2c <free>
     cf4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cf8:	e50b3008 	str	r3, [fp, #-8]
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e3530000 	cmp	r3, #0
     d04:	1afffff5 	bne	ce0 <mem+0x70>
     d08:	e3a00a05 	mov	r0, #20480	@ 0x5000
     d0c:	eb001047 	bl	4e30 <malloc>
     d10:	e50b0008 	str	r0, [fp, #-8]
     d14:	e51b3008 	ldr	r3, [fp, #-8]
     d18:	e3530000 	cmp	r3, #0
     d1c:	1a000005 	bne	d38 <mem+0xc8>
     d20:	e59f1040 	ldr	r1, [pc, #64]	@ d68 <mem+0xf8>
     d24:	e3a00001 	mov	r0, #1
     d28:	eb000f31 	bl	49f4 <printf>
     d2c:	e51b000c 	ldr	r0, [fp, #-12]
     d30:	eb000e4c 	bl	4668 <kill>
     d34:	eb000e15 	bl	4590 <exit>
     d38:	e51b0008 	ldr	r0, [fp, #-8]
     d3c:	eb000fba 	bl	4c2c <free>
     d40:	e59f1024 	ldr	r1, [pc, #36]	@ d6c <mem+0xfc>
     d44:	e3a00001 	mov	r0, #1
     d48:	eb000f29 	bl	49f4 <printf>
     d4c:	eb000e0f 	bl	4590 <exit>
     d50:	eb000e17 	bl	45b4 <wait>
     d54:	e1a00000 	nop			@ (mov r0, r0)
     d58:	e24bd004 	sub	sp, fp, #4
     d5c:	e8bd8800 	pop	{fp, pc}
     d60:	00005518 	.word	0x00005518
     d64:	00002711 	.word	0x00002711
     d68:	00005524 	.word	0x00005524
     d6c:	00005540 	.word	0x00005540

00000d70 <sharedfd>:
     d70:	e92d4800 	push	{fp, lr}
     d74:	e28db004 	add	fp, sp, #4
     d78:	e24dd028 	sub	sp, sp, #40	@ 0x28
     d7c:	e59f1208 	ldr	r1, [pc, #520]	@ f8c <sharedfd+0x21c>
     d80:	e3a00001 	mov	r0, #1
     d84:	eb000f1a 	bl	49f4 <printf>
     d88:	e59f0200 	ldr	r0, [pc, #512]	@ f90 <sharedfd+0x220>
     d8c:	eb000e59 	bl	46f8 <unlink>
     d90:	e59f11fc 	ldr	r1, [pc, #508]	@ f94 <sharedfd+0x224>
     d94:	e59f01f4 	ldr	r0, [pc, #500]	@ f90 <sharedfd+0x220>
     d98:	eb000e44 	bl	46b0 <open>
     d9c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     da0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     da4:	e3530000 	cmp	r3, #0
     da8:	aa000003 	bge	dbc <sharedfd+0x4c>
     dac:	e59f11e4 	ldr	r1, [pc, #484]	@ f98 <sharedfd+0x228>
     db0:	e3a00001 	mov	r0, #1
     db4:	eb000f0e 	bl	49f4 <printf>
     db8:	ea000071 	b	f84 <sharedfd+0x214>
     dbc:	eb000dea 	bl	456c <fork>
     dc0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e3530000 	cmp	r3, #0
     dcc:	1a000001 	bne	dd8 <sharedfd+0x68>
     dd0:	e3a01063 	mov	r1, #99	@ 0x63
     dd4:	ea000000 	b	ddc <sharedfd+0x6c>
     dd8:	e3a01070 	mov	r1, #112	@ 0x70
     ddc:	e24b3028 	sub	r3, fp, #40	@ 0x28
     de0:	e3a0200a 	mov	r2, #10
     de4:	e1a00003 	mov	r0, r3
     de8:	eb000cf6 	bl	41c8 <memset>
     dec:	e3a03000 	mov	r3, #0
     df0:	e50b3008 	str	r3, [fp, #-8]
     df4:	ea00000e 	b	e34 <sharedfd+0xc4>
     df8:	e24b3028 	sub	r3, fp, #40	@ 0x28
     dfc:	e3a0200a 	mov	r2, #10
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e08:	eb000e04 	bl	4620 <write>
     e0c:	e1a03000 	mov	r3, r0
     e10:	e353000a 	cmp	r3, #10
     e14:	0a000003 	beq	e28 <sharedfd+0xb8>
     e18:	e59f117c 	ldr	r1, [pc, #380]	@ f9c <sharedfd+0x22c>
     e1c:	e3a00001 	mov	r0, #1
     e20:	eb000ef3 	bl	49f4 <printf>
     e24:	ea000005 	b	e40 <sharedfd+0xd0>
     e28:	e51b3008 	ldr	r3, [fp, #-8]
     e2c:	e2833001 	add	r3, r3, #1
     e30:	e50b3008 	str	r3, [fp, #-8]
     e34:	e51b3008 	ldr	r3, [fp, #-8]
     e38:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
     e3c:	baffffed 	blt	df8 <sharedfd+0x88>
     e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     e44:	e3530000 	cmp	r3, #0
     e48:	1a000000 	bne	e50 <sharedfd+0xe0>
     e4c:	eb000dcf 	bl	4590 <exit>
     e50:	eb000dd7 	bl	45b4 <wait>
     e54:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     e58:	eb000df9 	bl	4644 <close>
     e5c:	e3a01000 	mov	r1, #0
     e60:	e59f0128 	ldr	r0, [pc, #296]	@ f90 <sharedfd+0x220>
     e64:	eb000e11 	bl	46b0 <open>
     e68:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     e6c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     e70:	e3530000 	cmp	r3, #0
     e74:	aa000003 	bge	e88 <sharedfd+0x118>
     e78:	e59f1120 	ldr	r1, [pc, #288]	@ fa0 <sharedfd+0x230>
     e7c:	e3a00001 	mov	r0, #1
     e80:	eb000edb 	bl	49f4 <printf>
     e84:	ea00003e 	b	f84 <sharedfd+0x214>
     e88:	e3a03000 	mov	r3, #0
     e8c:	e50b3010 	str	r3, [fp, #-16]
     e90:	e51b3010 	ldr	r3, [fp, #-16]
     e94:	e50b300c 	str	r3, [fp, #-12]
     e98:	ea00001a 	b	f08 <sharedfd+0x198>
     e9c:	e3a03000 	mov	r3, #0
     ea0:	e50b3008 	str	r3, [fp, #-8]
     ea4:	ea000014 	b	efc <sharedfd+0x18c>
     ea8:	e24b2028 	sub	r2, fp, #40	@ 0x28
     eac:	e51b3008 	ldr	r3, [fp, #-8]
     eb0:	e0823003 	add	r3, r2, r3
     eb4:	e5d33000 	ldrb	r3, [r3]
     eb8:	e3530063 	cmp	r3, #99	@ 0x63
     ebc:	1a000002 	bne	ecc <sharedfd+0x15c>
     ec0:	e51b300c 	ldr	r3, [fp, #-12]
     ec4:	e2833001 	add	r3, r3, #1
     ec8:	e50b300c 	str	r3, [fp, #-12]
     ecc:	e24b2028 	sub	r2, fp, #40	@ 0x28
     ed0:	e51b3008 	ldr	r3, [fp, #-8]
     ed4:	e0823003 	add	r3, r2, r3
     ed8:	e5d33000 	ldrb	r3, [r3]
     edc:	e3530070 	cmp	r3, #112	@ 0x70
     ee0:	1a000002 	bne	ef0 <sharedfd+0x180>
     ee4:	e51b3010 	ldr	r3, [fp, #-16]
     ee8:	e2833001 	add	r3, r3, #1
     eec:	e50b3010 	str	r3, [fp, #-16]
     ef0:	e51b3008 	ldr	r3, [fp, #-8]
     ef4:	e2833001 	add	r3, r3, #1
     ef8:	e50b3008 	str	r3, [fp, #-8]
     efc:	e51b3008 	ldr	r3, [fp, #-8]
     f00:	e3530009 	cmp	r3, #9
     f04:	9affffe7 	bls	ea8 <sharedfd+0x138>
     f08:	e24b3028 	sub	r3, fp, #40	@ 0x28
     f0c:	e3a0200a 	mov	r2, #10
     f10:	e1a01003 	mov	r1, r3
     f14:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f18:	eb000db7 	bl	45fc <read>
     f1c:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
     f20:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     f24:	e3530000 	cmp	r3, #0
     f28:	caffffdb 	bgt	e9c <sharedfd+0x12c>
     f2c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
     f30:	eb000dc3 	bl	4644 <close>
     f34:	e59f0054 	ldr	r0, [pc, #84]	@ f90 <sharedfd+0x220>
     f38:	eb000dee 	bl	46f8 <unlink>
     f3c:	e51b300c 	ldr	r3, [fp, #-12]
     f40:	e59f205c 	ldr	r2, [pc, #92]	@ fa4 <sharedfd+0x234>
     f44:	e1530002 	cmp	r3, r2
     f48:	1a000007 	bne	f6c <sharedfd+0x1fc>
     f4c:	e51b3010 	ldr	r3, [fp, #-16]
     f50:	e59f204c 	ldr	r2, [pc, #76]	@ fa4 <sharedfd+0x234>
     f54:	e1530002 	cmp	r3, r2
     f58:	1a000003 	bne	f6c <sharedfd+0x1fc>
     f5c:	e59f1044 	ldr	r1, [pc, #68]	@ fa8 <sharedfd+0x238>
     f60:	e3a00001 	mov	r0, #1
     f64:	eb000ea2 	bl	49f4 <printf>
     f68:	ea000005 	b	f84 <sharedfd+0x214>
     f6c:	e51b3010 	ldr	r3, [fp, #-16]
     f70:	e51b200c 	ldr	r2, [fp, #-12]
     f74:	e59f1030 	ldr	r1, [pc, #48]	@ fac <sharedfd+0x23c>
     f78:	e3a00001 	mov	r0, #1
     f7c:	eb000e9c 	bl	49f4 <printf>
     f80:	eb000d82 	bl	4590 <exit>
     f84:	e24bd004 	sub	sp, fp, #4
     f88:	e8bd8800 	pop	{fp, pc}
     f8c:	00005548 	.word	0x00005548
     f90:	00005558 	.word	0x00005558
     f94:	00000202 	.word	0x00000202
     f98:	00005564 	.word	0x00005564
     f9c:	00005590 	.word	0x00005590
     fa0:	000055b0 	.word	0x000055b0
     fa4:	00002710 	.word	0x00002710
     fa8:	000055dc 	.word	0x000055dc
     fac:	000055ec 	.word	0x000055ec

00000fb0 <twofiles>:
     fb0:	e92d4800 	push	{fp, lr}
     fb4:	e28db004 	add	fp, sp, #4
     fb8:	e24dd020 	sub	sp, sp, #32
     fbc:	e59f1264 	ldr	r1, [pc, #612]	@ 1228 <twofiles+0x278>
     fc0:	e3a00001 	mov	r0, #1
     fc4:	eb000e8a 	bl	49f4 <printf>
     fc8:	e59f025c 	ldr	r0, [pc, #604]	@ 122c <twofiles+0x27c>
     fcc:	eb000dc9 	bl	46f8 <unlink>
     fd0:	e59f0258 	ldr	r0, [pc, #600]	@ 1230 <twofiles+0x280>
     fd4:	eb000dc7 	bl	46f8 <unlink>
     fd8:	eb000d63 	bl	456c <fork>
     fdc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
     fe0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     fe4:	e3530000 	cmp	r3, #0
     fe8:	aa000003 	bge	ffc <twofiles+0x4c>
     fec:	e59f1240 	ldr	r1, [pc, #576]	@ 1234 <twofiles+0x284>
     ff0:	e3a00001 	mov	r0, #1
     ff4:	eb000e7e 	bl	49f4 <printf>
     ff8:	eb000d64 	bl	4590 <exit>
     ffc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1000:	e3530000 	cmp	r3, #0
    1004:	0a000001 	beq	1010 <twofiles+0x60>
    1008:	e59f321c 	ldr	r3, [pc, #540]	@ 122c <twofiles+0x27c>
    100c:	ea000000 	b	1014 <twofiles+0x64>
    1010:	e59f3218 	ldr	r3, [pc, #536]	@ 1230 <twofiles+0x280>
    1014:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    1018:	e59f1218 	ldr	r1, [pc, #536]	@ 1238 <twofiles+0x288>
    101c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
    1020:	eb000da2 	bl	46b0 <open>
    1024:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    1028:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    102c:	e3530000 	cmp	r3, #0
    1030:	aa000003 	bge	1044 <twofiles+0x94>
    1034:	e59f1200 	ldr	r1, [pc, #512]	@ 123c <twofiles+0x28c>
    1038:	e3a00001 	mov	r0, #1
    103c:	eb000e6c 	bl	49f4 <printf>
    1040:	eb000d52 	bl	4590 <exit>
    1044:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1048:	e3530000 	cmp	r3, #0
    104c:	0a000001 	beq	1058 <twofiles+0xa8>
    1050:	e3a03070 	mov	r3, #112	@ 0x70
    1054:	ea000000 	b	105c <twofiles+0xac>
    1058:	e3a03063 	mov	r3, #99	@ 0x63
    105c:	e3a02c02 	mov	r2, #512	@ 0x200
    1060:	e1a01003 	mov	r1, r3
    1064:	e59f01d4 	ldr	r0, [pc, #468]	@ 1240 <twofiles+0x290>
    1068:	eb000c56 	bl	41c8 <memset>
    106c:	e3a03000 	mov	r3, #0
    1070:	e50b3008 	str	r3, [fp, #-8]
    1074:	ea00000f 	b	10b8 <twofiles+0x108>
    1078:	e3a02f7d 	mov	r2, #500	@ 0x1f4
    107c:	e59f11bc 	ldr	r1, [pc, #444]	@ 1240 <twofiles+0x290>
    1080:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    1084:	eb000d65 	bl	4620 <write>
    1088:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    108c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1090:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    1094:	0a000004 	beq	10ac <twofiles+0xfc>
    1098:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    109c:	e59f11a0 	ldr	r1, [pc, #416]	@ 1244 <twofiles+0x294>
    10a0:	e3a00001 	mov	r0, #1
    10a4:	eb000e52 	bl	49f4 <printf>
    10a8:	eb000d38 	bl	4590 <exit>
    10ac:	e51b3008 	ldr	r3, [fp, #-8]
    10b0:	e2833001 	add	r3, r3, #1
    10b4:	e50b3008 	str	r3, [fp, #-8]
    10b8:	e51b3008 	ldr	r3, [fp, #-8]
    10bc:	e353000b 	cmp	r3, #11
    10c0:	daffffec 	ble	1078 <twofiles+0xc8>
    10c4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    10c8:	eb000d5d 	bl	4644 <close>
    10cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    10d0:	e3530000 	cmp	r3, #0
    10d4:	0a000003 	beq	10e8 <twofiles+0x138>
    10d8:	eb000d35 	bl	45b4 <wait>
    10dc:	e3a03000 	mov	r3, #0
    10e0:	e50b3008 	str	r3, [fp, #-8]
    10e4:	ea000042 	b	11f4 <twofiles+0x244>
    10e8:	eb000d28 	bl	4590 <exit>
    10ec:	e51b3008 	ldr	r3, [fp, #-8]
    10f0:	e3530000 	cmp	r3, #0
    10f4:	0a000001 	beq	1100 <twofiles+0x150>
    10f8:	e59f312c 	ldr	r3, [pc, #300]	@ 122c <twofiles+0x27c>
    10fc:	ea000000 	b	1104 <twofiles+0x154>
    1100:	e59f3128 	ldr	r3, [pc, #296]	@ 1230 <twofiles+0x280>
    1104:	e3a01000 	mov	r1, #0
    1108:	e1a00003 	mov	r0, r3
    110c:	eb000d67 	bl	46b0 <open>
    1110:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
    1114:	e3a03000 	mov	r3, #0
    1118:	e50b3010 	str	r3, [fp, #-16]
    111c:	ea00001e 	b	119c <twofiles+0x1ec>
    1120:	e3a03000 	mov	r3, #0
    1124:	e50b300c 	str	r3, [fp, #-12]
    1128:	ea000013 	b	117c <twofiles+0x1cc>
    112c:	e59f210c 	ldr	r2, [pc, #268]	@ 1240 <twofiles+0x290>
    1130:	e51b300c 	ldr	r3, [fp, #-12]
    1134:	e0823003 	add	r3, r2, r3
    1138:	e5d33000 	ldrb	r3, [r3]
    113c:	e1a02003 	mov	r2, r3
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e3530000 	cmp	r3, #0
    1148:	0a000001 	beq	1154 <twofiles+0x1a4>
    114c:	e3a03070 	mov	r3, #112	@ 0x70
    1150:	ea000000 	b	1158 <twofiles+0x1a8>
    1154:	e3a03063 	mov	r3, #99	@ 0x63
    1158:	e1530002 	cmp	r3, r2
    115c:	0a000003 	beq	1170 <twofiles+0x1c0>
    1160:	e59f10e0 	ldr	r1, [pc, #224]	@ 1248 <twofiles+0x298>
    1164:	e3a00001 	mov	r0, #1
    1168:	eb000e21 	bl	49f4 <printf>
    116c:	eb000d07 	bl	4590 <exit>
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e2833001 	add	r3, r3, #1
    1178:	e50b300c 	str	r3, [fp, #-12]
    117c:	e51b200c 	ldr	r2, [fp, #-12]
    1180:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1184:	e1520003 	cmp	r2, r3
    1188:	baffffe7 	blt	112c <twofiles+0x17c>
    118c:	e51b2010 	ldr	r2, [fp, #-16]
    1190:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    1194:	e0823003 	add	r3, r2, r3
    1198:	e50b3010 	str	r3, [fp, #-16]
    119c:	e3a02a02 	mov	r2, #8192	@ 0x2000
    11a0:	e59f1098 	ldr	r1, [pc, #152]	@ 1240 <twofiles+0x290>
    11a4:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11a8:	eb000d13 	bl	45fc <read>
    11ac:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    11b0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    11b4:	e3530000 	cmp	r3, #0
    11b8:	caffffd8 	bgt	1120 <twofiles+0x170>
    11bc:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
    11c0:	eb000d1f 	bl	4644 <close>
    11c4:	e51b3010 	ldr	r3, [fp, #-16]
    11c8:	e59f207c 	ldr	r2, [pc, #124]	@ 124c <twofiles+0x29c>
    11cc:	e1530002 	cmp	r3, r2
    11d0:	0a000004 	beq	11e8 <twofiles+0x238>
    11d4:	e51b2010 	ldr	r2, [fp, #-16]
    11d8:	e59f1070 	ldr	r1, [pc, #112]	@ 1250 <twofiles+0x2a0>
    11dc:	e3a00001 	mov	r0, #1
    11e0:	eb000e03 	bl	49f4 <printf>
    11e4:	eb000ce9 	bl	4590 <exit>
    11e8:	e51b3008 	ldr	r3, [fp, #-8]
    11ec:	e2833001 	add	r3, r3, #1
    11f0:	e50b3008 	str	r3, [fp, #-8]
    11f4:	e51b3008 	ldr	r3, [fp, #-8]
    11f8:	e3530001 	cmp	r3, #1
    11fc:	daffffba 	ble	10ec <twofiles+0x13c>
    1200:	e59f0024 	ldr	r0, [pc, #36]	@ 122c <twofiles+0x27c>
    1204:	eb000d3b 	bl	46f8 <unlink>
    1208:	e59f0020 	ldr	r0, [pc, #32]	@ 1230 <twofiles+0x280>
    120c:	eb000d39 	bl	46f8 <unlink>
    1210:	e59f103c 	ldr	r1, [pc, #60]	@ 1254 <twofiles+0x2a4>
    1214:	e3a00001 	mov	r0, #1
    1218:	eb000df5 	bl	49f4 <printf>
    121c:	e1a00000 	nop			@ (mov r0, r0)
    1220:	e24bd004 	sub	sp, fp, #4
    1224:	e8bd8800 	pop	{fp, pc}
    1228:	00005604 	.word	0x00005604
    122c:	00005614 	.word	0x00005614
    1230:	00005618 	.word	0x00005618
    1234:	000054e8 	.word	0x000054e8
    1238:	00000202 	.word	0x00000202
    123c:	0000561c 	.word	0x0000561c
    1240:	00006918 	.word	0x00006918
    1244:	0000562c 	.word	0x0000562c
    1248:	00005640 	.word	0x00005640
    124c:	00001770 	.word	0x00001770
    1250:	0000564c 	.word	0x0000564c
    1254:	00005660 	.word	0x00005660

00001258 <createdelete>:
    1258:	e92d4800 	push	{fp, lr}
    125c:	e28db004 	add	fp, sp, #4
    1260:	e24dd030 	sub	sp, sp, #48	@ 0x30
    1264:	e59f1348 	ldr	r1, [pc, #840]	@ 15b4 <createdelete+0x35c>
    1268:	e3a00001 	mov	r0, #1
    126c:	eb000de0 	bl	49f4 <printf>
    1270:	eb000cbd 	bl	456c <fork>
    1274:	e50b000c 	str	r0, [fp, #-12]
    1278:	e51b300c 	ldr	r3, [fp, #-12]
    127c:	e3530000 	cmp	r3, #0
    1280:	aa000003 	bge	1294 <createdelete+0x3c>
    1284:	e59f132c 	ldr	r1, [pc, #812]	@ 15b8 <createdelete+0x360>
    1288:	e3a00001 	mov	r0, #1
    128c:	eb000dd8 	bl	49f4 <printf>
    1290:	eb000cbe 	bl	4590 <exit>
    1294:	e51b300c 	ldr	r3, [fp, #-12]
    1298:	e3530000 	cmp	r3, #0
    129c:	0a000001 	beq	12a8 <createdelete+0x50>
    12a0:	e3a03070 	mov	r3, #112	@ 0x70
    12a4:	ea000000 	b	12ac <createdelete+0x54>
    12a8:	e3a03063 	mov	r3, #99	@ 0x63
    12ac:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    12b0:	e3a03000 	mov	r3, #0
    12b4:	e54b302e 	strb	r3, [fp, #-46]	@ 0xffffffd2
    12b8:	e3a03000 	mov	r3, #0
    12bc:	e50b3008 	str	r3, [fp, #-8]
    12c0:	ea00002e 	b	1380 <createdelete+0x128>
    12c4:	e51b3008 	ldr	r3, [fp, #-8]
    12c8:	e6ef3073 	uxtb	r3, r3
    12cc:	e2833030 	add	r3, r3, #48	@ 0x30
    12d0:	e6ef3073 	uxtb	r3, r3
    12d4:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    12d8:	e24b3030 	sub	r3, fp, #48	@ 0x30
    12dc:	e59f12d8 	ldr	r1, [pc, #728]	@ 15bc <createdelete+0x364>
    12e0:	e1a00003 	mov	r0, r3
    12e4:	eb000cf1 	bl	46b0 <open>
    12e8:	e50b0010 	str	r0, [fp, #-16]
    12ec:	e51b3010 	ldr	r3, [fp, #-16]
    12f0:	e3530000 	cmp	r3, #0
    12f4:	aa000003 	bge	1308 <createdelete+0xb0>
    12f8:	e59f12c0 	ldr	r1, [pc, #704]	@ 15c0 <createdelete+0x368>
    12fc:	e3a00001 	mov	r0, #1
    1300:	eb000dbb 	bl	49f4 <printf>
    1304:	eb000ca1 	bl	4590 <exit>
    1308:	e51b0010 	ldr	r0, [fp, #-16]
    130c:	eb000ccc 	bl	4644 <close>
    1310:	e51b3008 	ldr	r3, [fp, #-8]
    1314:	e3530000 	cmp	r3, #0
    1318:	da000015 	ble	1374 <createdelete+0x11c>
    131c:	e51b3008 	ldr	r3, [fp, #-8]
    1320:	e2033001 	and	r3, r3, #1
    1324:	e3530000 	cmp	r3, #0
    1328:	1a000011 	bne	1374 <createdelete+0x11c>
    132c:	e51b3008 	ldr	r3, [fp, #-8]
    1330:	e1a02fa3 	lsr	r2, r3, #31
    1334:	e0823003 	add	r3, r2, r3
    1338:	e1a030c3 	asr	r3, r3, #1
    133c:	e6ef3073 	uxtb	r3, r3
    1340:	e2833030 	add	r3, r3, #48	@ 0x30
    1344:	e6ef3073 	uxtb	r3, r3
    1348:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    134c:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1350:	e1a00003 	mov	r0, r3
    1354:	eb000ce7 	bl	46f8 <unlink>
    1358:	e1a03000 	mov	r3, r0
    135c:	e3530000 	cmp	r3, #0
    1360:	aa000003 	bge	1374 <createdelete+0x11c>
    1364:	e59f1258 	ldr	r1, [pc, #600]	@ 15c4 <createdelete+0x36c>
    1368:	e3a00001 	mov	r0, #1
    136c:	eb000da0 	bl	49f4 <printf>
    1370:	eb000c86 	bl	4590 <exit>
    1374:	e51b3008 	ldr	r3, [fp, #-8]
    1378:	e2833001 	add	r3, r3, #1
    137c:	e50b3008 	str	r3, [fp, #-8]
    1380:	e51b3008 	ldr	r3, [fp, #-8]
    1384:	e3530013 	cmp	r3, #19
    1388:	daffffcd 	ble	12c4 <createdelete+0x6c>
    138c:	e51b300c 	ldr	r3, [fp, #-12]
    1390:	e3530000 	cmp	r3, #0
    1394:	1a000000 	bne	139c <createdelete+0x144>
    1398:	eb000c7c 	bl	4590 <exit>
    139c:	eb000c84 	bl	45b4 <wait>
    13a0:	e3a03000 	mov	r3, #0
    13a4:	e50b3008 	str	r3, [fp, #-8]
    13a8:	ea000060 	b	1530 <createdelete+0x2d8>
    13ac:	e3a03070 	mov	r3, #112	@ 0x70
    13b0:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    13b4:	e51b3008 	ldr	r3, [fp, #-8]
    13b8:	e6ef3073 	uxtb	r3, r3
    13bc:	e2833030 	add	r3, r3, #48	@ 0x30
    13c0:	e6ef3073 	uxtb	r3, r3
    13c4:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    13c8:	e24b3030 	sub	r3, fp, #48	@ 0x30
    13cc:	e3a01000 	mov	r1, #0
    13d0:	e1a00003 	mov	r0, r3
    13d4:	eb000cb5 	bl	46b0 <open>
    13d8:	e50b0010 	str	r0, [fp, #-16]
    13dc:	e51b3008 	ldr	r3, [fp, #-8]
    13e0:	e3530000 	cmp	r3, #0
    13e4:	0a000002 	beq	13f4 <createdelete+0x19c>
    13e8:	e51b3008 	ldr	r3, [fp, #-8]
    13ec:	e3530009 	cmp	r3, #9
    13f0:	da000008 	ble	1418 <createdelete+0x1c0>
    13f4:	e51b3010 	ldr	r3, [fp, #-16]
    13f8:	e3530000 	cmp	r3, #0
    13fc:	aa000005 	bge	1418 <createdelete+0x1c0>
    1400:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1404:	e1a02003 	mov	r2, r3
    1408:	e59f11b8 	ldr	r1, [pc, #440]	@ 15c8 <createdelete+0x370>
    140c:	e3a00001 	mov	r0, #1
    1410:	eb000d77 	bl	49f4 <printf>
    1414:	eb000c5d 	bl	4590 <exit>
    1418:	e51b3008 	ldr	r3, [fp, #-8]
    141c:	e3530000 	cmp	r3, #0
    1420:	da00000b 	ble	1454 <createdelete+0x1fc>
    1424:	e51b3008 	ldr	r3, [fp, #-8]
    1428:	e3530009 	cmp	r3, #9
    142c:	ca000008 	bgt	1454 <createdelete+0x1fc>
    1430:	e51b3010 	ldr	r3, [fp, #-16]
    1434:	e3530000 	cmp	r3, #0
    1438:	ba000005 	blt	1454 <createdelete+0x1fc>
    143c:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1440:	e1a02003 	mov	r2, r3
    1444:	e59f1180 	ldr	r1, [pc, #384]	@ 15cc <createdelete+0x374>
    1448:	e3a00001 	mov	r0, #1
    144c:	eb000d68 	bl	49f4 <printf>
    1450:	eb000c4e 	bl	4590 <exit>
    1454:	e51b3010 	ldr	r3, [fp, #-16]
    1458:	e3530000 	cmp	r3, #0
    145c:	ba000001 	blt	1468 <createdelete+0x210>
    1460:	e51b0010 	ldr	r0, [fp, #-16]
    1464:	eb000c76 	bl	4644 <close>
    1468:	e3a03063 	mov	r3, #99	@ 0x63
    146c:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1470:	e51b3008 	ldr	r3, [fp, #-8]
    1474:	e6ef3073 	uxtb	r3, r3
    1478:	e2833030 	add	r3, r3, #48	@ 0x30
    147c:	e6ef3073 	uxtb	r3, r3
    1480:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1484:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1488:	e3a01000 	mov	r1, #0
    148c:	e1a00003 	mov	r0, r3
    1490:	eb000c86 	bl	46b0 <open>
    1494:	e50b0010 	str	r0, [fp, #-16]
    1498:	e51b3008 	ldr	r3, [fp, #-8]
    149c:	e3530000 	cmp	r3, #0
    14a0:	0a000002 	beq	14b0 <createdelete+0x258>
    14a4:	e51b3008 	ldr	r3, [fp, #-8]
    14a8:	e3530009 	cmp	r3, #9
    14ac:	da000008 	ble	14d4 <createdelete+0x27c>
    14b0:	e51b3010 	ldr	r3, [fp, #-16]
    14b4:	e3530000 	cmp	r3, #0
    14b8:	aa000005 	bge	14d4 <createdelete+0x27c>
    14bc:	e24b3030 	sub	r3, fp, #48	@ 0x30
    14c0:	e1a02003 	mov	r2, r3
    14c4:	e59f10fc 	ldr	r1, [pc, #252]	@ 15c8 <createdelete+0x370>
    14c8:	e3a00001 	mov	r0, #1
    14cc:	eb000d48 	bl	49f4 <printf>
    14d0:	eb000c2e 	bl	4590 <exit>
    14d4:	e51b3008 	ldr	r3, [fp, #-8]
    14d8:	e3530000 	cmp	r3, #0
    14dc:	da00000b 	ble	1510 <createdelete+0x2b8>
    14e0:	e51b3008 	ldr	r3, [fp, #-8]
    14e4:	e3530009 	cmp	r3, #9
    14e8:	ca000008 	bgt	1510 <createdelete+0x2b8>
    14ec:	e51b3010 	ldr	r3, [fp, #-16]
    14f0:	e3530000 	cmp	r3, #0
    14f4:	ba000005 	blt	1510 <createdelete+0x2b8>
    14f8:	e24b3030 	sub	r3, fp, #48	@ 0x30
    14fc:	e1a02003 	mov	r2, r3
    1500:	e59f10c4 	ldr	r1, [pc, #196]	@ 15cc <createdelete+0x374>
    1504:	e3a00001 	mov	r0, #1
    1508:	eb000d39 	bl	49f4 <printf>
    150c:	eb000c1f 	bl	4590 <exit>
    1510:	e51b3010 	ldr	r3, [fp, #-16]
    1514:	e3530000 	cmp	r3, #0
    1518:	ba000001 	blt	1524 <createdelete+0x2cc>
    151c:	e51b0010 	ldr	r0, [fp, #-16]
    1520:	eb000c47 	bl	4644 <close>
    1524:	e51b3008 	ldr	r3, [fp, #-8]
    1528:	e2833001 	add	r3, r3, #1
    152c:	e50b3008 	str	r3, [fp, #-8]
    1530:	e51b3008 	ldr	r3, [fp, #-8]
    1534:	e3530013 	cmp	r3, #19
    1538:	daffff9b 	ble	13ac <createdelete+0x154>
    153c:	e3a03000 	mov	r3, #0
    1540:	e50b3008 	str	r3, [fp, #-8]
    1544:	ea000011 	b	1590 <createdelete+0x338>
    1548:	e3a03070 	mov	r3, #112	@ 0x70
    154c:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1550:	e51b3008 	ldr	r3, [fp, #-8]
    1554:	e6ef3073 	uxtb	r3, r3
    1558:	e2833030 	add	r3, r3, #48	@ 0x30
    155c:	e6ef3073 	uxtb	r3, r3
    1560:	e54b302f 	strb	r3, [fp, #-47]	@ 0xffffffd1
    1564:	e24b3030 	sub	r3, fp, #48	@ 0x30
    1568:	e1a00003 	mov	r0, r3
    156c:	eb000c61 	bl	46f8 <unlink>
    1570:	e3a03063 	mov	r3, #99	@ 0x63
    1574:	e54b3030 	strb	r3, [fp, #-48]	@ 0xffffffd0
    1578:	e24b3030 	sub	r3, fp, #48	@ 0x30
    157c:	e1a00003 	mov	r0, r3
    1580:	eb000c5c 	bl	46f8 <unlink>
    1584:	e51b3008 	ldr	r3, [fp, #-8]
    1588:	e2833001 	add	r3, r3, #1
    158c:	e50b3008 	str	r3, [fp, #-8]
    1590:	e51b3008 	ldr	r3, [fp, #-8]
    1594:	e3530013 	cmp	r3, #19
    1598:	daffffea 	ble	1548 <createdelete+0x2f0>
    159c:	e59f102c 	ldr	r1, [pc, #44]	@ 15d0 <createdelete+0x378>
    15a0:	e3a00001 	mov	r0, #1
    15a4:	eb000d12 	bl	49f4 <printf>
    15a8:	e1a00000 	nop			@ (mov r0, r0)
    15ac:	e24bd004 	sub	sp, fp, #4
    15b0:	e8bd8800 	pop	{fp, pc}
    15b4:	00005670 	.word	0x00005670
    15b8:	000054e8 	.word	0x000054e8
    15bc:	00000202 	.word	0x00000202
    15c0:	0000561c 	.word	0x0000561c
    15c4:	00005684 	.word	0x00005684
    15c8:	00005694 	.word	0x00005694
    15cc:	000056b8 	.word	0x000056b8
    15d0:	000056d8 	.word	0x000056d8

000015d4 <unlinkread>:
    15d4:	e92d4800 	push	{fp, lr}
    15d8:	e28db004 	add	fp, sp, #4
    15dc:	e24dd008 	sub	sp, sp, #8
    15e0:	e59f1160 	ldr	r1, [pc, #352]	@ 1748 <unlinkread+0x174>
    15e4:	e3a00001 	mov	r0, #1
    15e8:	eb000d01 	bl	49f4 <printf>
    15ec:	e59f1158 	ldr	r1, [pc, #344]	@ 174c <unlinkread+0x178>
    15f0:	e59f0158 	ldr	r0, [pc, #344]	@ 1750 <unlinkread+0x17c>
    15f4:	eb000c2d 	bl	46b0 <open>
    15f8:	e50b0008 	str	r0, [fp, #-8]
    15fc:	e51b3008 	ldr	r3, [fp, #-8]
    1600:	e3530000 	cmp	r3, #0
    1604:	aa000003 	bge	1618 <unlinkread+0x44>
    1608:	e59f1144 	ldr	r1, [pc, #324]	@ 1754 <unlinkread+0x180>
    160c:	e3a00001 	mov	r0, #1
    1610:	eb000cf7 	bl	49f4 <printf>
    1614:	eb000bdd 	bl	4590 <exit>
    1618:	e3a02005 	mov	r2, #5
    161c:	e59f1134 	ldr	r1, [pc, #308]	@ 1758 <unlinkread+0x184>
    1620:	e51b0008 	ldr	r0, [fp, #-8]
    1624:	eb000bfd 	bl	4620 <write>
    1628:	e51b0008 	ldr	r0, [fp, #-8]
    162c:	eb000c04 	bl	4644 <close>
    1630:	e3a01002 	mov	r1, #2
    1634:	e59f0114 	ldr	r0, [pc, #276]	@ 1750 <unlinkread+0x17c>
    1638:	eb000c1c 	bl	46b0 <open>
    163c:	e50b0008 	str	r0, [fp, #-8]
    1640:	e51b3008 	ldr	r3, [fp, #-8]
    1644:	e3530000 	cmp	r3, #0
    1648:	aa000003 	bge	165c <unlinkread+0x88>
    164c:	e59f1108 	ldr	r1, [pc, #264]	@ 175c <unlinkread+0x188>
    1650:	e3a00001 	mov	r0, #1
    1654:	eb000ce6 	bl	49f4 <printf>
    1658:	eb000bcc 	bl	4590 <exit>
    165c:	e59f00ec 	ldr	r0, [pc, #236]	@ 1750 <unlinkread+0x17c>
    1660:	eb000c24 	bl	46f8 <unlink>
    1664:	e1a03000 	mov	r3, r0
    1668:	e3530000 	cmp	r3, #0
    166c:	0a000003 	beq	1680 <unlinkread+0xac>
    1670:	e59f10e8 	ldr	r1, [pc, #232]	@ 1760 <unlinkread+0x18c>
    1674:	e3a00001 	mov	r0, #1
    1678:	eb000cdd 	bl	49f4 <printf>
    167c:	eb000bc3 	bl	4590 <exit>
    1680:	e59f10c4 	ldr	r1, [pc, #196]	@ 174c <unlinkread+0x178>
    1684:	e59f00c4 	ldr	r0, [pc, #196]	@ 1750 <unlinkread+0x17c>
    1688:	eb000c08 	bl	46b0 <open>
    168c:	e50b000c 	str	r0, [fp, #-12]
    1690:	e3a02003 	mov	r2, #3
    1694:	e59f10c8 	ldr	r1, [pc, #200]	@ 1764 <unlinkread+0x190>
    1698:	e51b000c 	ldr	r0, [fp, #-12]
    169c:	eb000bdf 	bl	4620 <write>
    16a0:	e51b000c 	ldr	r0, [fp, #-12]
    16a4:	eb000be6 	bl	4644 <close>
    16a8:	e3a02a02 	mov	r2, #8192	@ 0x2000
    16ac:	e59f10b4 	ldr	r1, [pc, #180]	@ 1768 <unlinkread+0x194>
    16b0:	e51b0008 	ldr	r0, [fp, #-8]
    16b4:	eb000bd0 	bl	45fc <read>
    16b8:	e1a03000 	mov	r3, r0
    16bc:	e3530005 	cmp	r3, #5
    16c0:	0a000003 	beq	16d4 <unlinkread+0x100>
    16c4:	e59f10a0 	ldr	r1, [pc, #160]	@ 176c <unlinkread+0x198>
    16c8:	e3a00001 	mov	r0, #1
    16cc:	eb000cc8 	bl	49f4 <printf>
    16d0:	eb000bae 	bl	4590 <exit>
    16d4:	e59f308c 	ldr	r3, [pc, #140]	@ 1768 <unlinkread+0x194>
    16d8:	e5d33000 	ldrb	r3, [r3]
    16dc:	e3530068 	cmp	r3, #104	@ 0x68
    16e0:	0a000003 	beq	16f4 <unlinkread+0x120>
    16e4:	e59f1084 	ldr	r1, [pc, #132]	@ 1770 <unlinkread+0x19c>
    16e8:	e3a00001 	mov	r0, #1
    16ec:	eb000cc0 	bl	49f4 <printf>
    16f0:	eb000ba6 	bl	4590 <exit>
    16f4:	e3a0200a 	mov	r2, #10
    16f8:	e59f1068 	ldr	r1, [pc, #104]	@ 1768 <unlinkread+0x194>
    16fc:	e51b0008 	ldr	r0, [fp, #-8]
    1700:	eb000bc6 	bl	4620 <write>
    1704:	e1a03000 	mov	r3, r0
    1708:	e353000a 	cmp	r3, #10
    170c:	0a000003 	beq	1720 <unlinkread+0x14c>
    1710:	e59f105c 	ldr	r1, [pc, #92]	@ 1774 <unlinkread+0x1a0>
    1714:	e3a00001 	mov	r0, #1
    1718:	eb000cb5 	bl	49f4 <printf>
    171c:	eb000b9b 	bl	4590 <exit>
    1720:	e51b0008 	ldr	r0, [fp, #-8]
    1724:	eb000bc6 	bl	4644 <close>
    1728:	e59f0020 	ldr	r0, [pc, #32]	@ 1750 <unlinkread+0x17c>
    172c:	eb000bf1 	bl	46f8 <unlink>
    1730:	e59f1040 	ldr	r1, [pc, #64]	@ 1778 <unlinkread+0x1a4>
    1734:	e3a00001 	mov	r0, #1
    1738:	eb000cad 	bl	49f4 <printf>
    173c:	e1a00000 	nop			@ (mov r0, r0)
    1740:	e24bd004 	sub	sp, fp, #4
    1744:	e8bd8800 	pop	{fp, pc}
    1748:	000056ec 	.word	0x000056ec
    174c:	00000202 	.word	0x00000202
    1750:	00005700 	.word	0x00005700
    1754:	0000570c 	.word	0x0000570c
    1758:	00005728 	.word	0x00005728
    175c:	00005730 	.word	0x00005730
    1760:	00005748 	.word	0x00005748
    1764:	00005764 	.word	0x00005764
    1768:	00006918 	.word	0x00006918
    176c:	00005768 	.word	0x00005768
    1770:	00005780 	.word	0x00005780
    1774:	00005798 	.word	0x00005798
    1778:	000057b4 	.word	0x000057b4

0000177c <linktest>:
    177c:	e92d4800 	push	{fp, lr}
    1780:	e28db004 	add	fp, sp, #4
    1784:	e24dd008 	sub	sp, sp, #8
    1788:	e59f11c4 	ldr	r1, [pc, #452]	@ 1954 <linktest+0x1d8>
    178c:	e3a00001 	mov	r0, #1
    1790:	eb000c97 	bl	49f4 <printf>
    1794:	e59f01bc 	ldr	r0, [pc, #444]	@ 1958 <linktest+0x1dc>
    1798:	eb000bd6 	bl	46f8 <unlink>
    179c:	e59f01b8 	ldr	r0, [pc, #440]	@ 195c <linktest+0x1e0>
    17a0:	eb000bd4 	bl	46f8 <unlink>
    17a4:	e59f11b4 	ldr	r1, [pc, #436]	@ 1960 <linktest+0x1e4>
    17a8:	e59f01a8 	ldr	r0, [pc, #424]	@ 1958 <linktest+0x1dc>
    17ac:	eb000bbf 	bl	46b0 <open>
    17b0:	e50b0008 	str	r0, [fp, #-8]
    17b4:	e51b3008 	ldr	r3, [fp, #-8]
    17b8:	e3530000 	cmp	r3, #0
    17bc:	aa000003 	bge	17d0 <linktest+0x54>
    17c0:	e59f119c 	ldr	r1, [pc, #412]	@ 1964 <linktest+0x1e8>
    17c4:	e3a00001 	mov	r0, #1
    17c8:	eb000c89 	bl	49f4 <printf>
    17cc:	eb000b6f 	bl	4590 <exit>
    17d0:	e3a02005 	mov	r2, #5
    17d4:	e59f118c 	ldr	r1, [pc, #396]	@ 1968 <linktest+0x1ec>
    17d8:	e51b0008 	ldr	r0, [fp, #-8]
    17dc:	eb000b8f 	bl	4620 <write>
    17e0:	e1a03000 	mov	r3, r0
    17e4:	e3530005 	cmp	r3, #5
    17e8:	0a000003 	beq	17fc <linktest+0x80>
    17ec:	e59f1178 	ldr	r1, [pc, #376]	@ 196c <linktest+0x1f0>
    17f0:	e3a00001 	mov	r0, #1
    17f4:	eb000c7e 	bl	49f4 <printf>
    17f8:	eb000b64 	bl	4590 <exit>
    17fc:	e51b0008 	ldr	r0, [fp, #-8]
    1800:	eb000b8f 	bl	4644 <close>
    1804:	e59f1150 	ldr	r1, [pc, #336]	@ 195c <linktest+0x1e0>
    1808:	e59f0148 	ldr	r0, [pc, #328]	@ 1958 <linktest+0x1dc>
    180c:	eb000bcb 	bl	4740 <link>
    1810:	e1a03000 	mov	r3, r0
    1814:	e3530000 	cmp	r3, #0
    1818:	aa000003 	bge	182c <linktest+0xb0>
    181c:	e59f114c 	ldr	r1, [pc, #332]	@ 1970 <linktest+0x1f4>
    1820:	e3a00001 	mov	r0, #1
    1824:	eb000c72 	bl	49f4 <printf>
    1828:	eb000b58 	bl	4590 <exit>
    182c:	e59f0124 	ldr	r0, [pc, #292]	@ 1958 <linktest+0x1dc>
    1830:	eb000bb0 	bl	46f8 <unlink>
    1834:	e3a01000 	mov	r1, #0
    1838:	e59f0118 	ldr	r0, [pc, #280]	@ 1958 <linktest+0x1dc>
    183c:	eb000b9b 	bl	46b0 <open>
    1840:	e1a03000 	mov	r3, r0
    1844:	e3530000 	cmp	r3, #0
    1848:	ba000003 	blt	185c <linktest+0xe0>
    184c:	e59f1120 	ldr	r1, [pc, #288]	@ 1974 <linktest+0x1f8>
    1850:	e3a00001 	mov	r0, #1
    1854:	eb000c66 	bl	49f4 <printf>
    1858:	eb000b4c 	bl	4590 <exit>
    185c:	e3a01000 	mov	r1, #0
    1860:	e59f00f4 	ldr	r0, [pc, #244]	@ 195c <linktest+0x1e0>
    1864:	eb000b91 	bl	46b0 <open>
    1868:	e50b0008 	str	r0, [fp, #-8]
    186c:	e51b3008 	ldr	r3, [fp, #-8]
    1870:	e3530000 	cmp	r3, #0
    1874:	aa000003 	bge	1888 <linktest+0x10c>
    1878:	e59f10f8 	ldr	r1, [pc, #248]	@ 1978 <linktest+0x1fc>
    187c:	e3a00001 	mov	r0, #1
    1880:	eb000c5b 	bl	49f4 <printf>
    1884:	eb000b41 	bl	4590 <exit>
    1888:	e3a02a02 	mov	r2, #8192	@ 0x2000
    188c:	e59f10e8 	ldr	r1, [pc, #232]	@ 197c <linktest+0x200>
    1890:	e51b0008 	ldr	r0, [fp, #-8]
    1894:	eb000b58 	bl	45fc <read>
    1898:	e1a03000 	mov	r3, r0
    189c:	e3530005 	cmp	r3, #5
    18a0:	0a000003 	beq	18b4 <linktest+0x138>
    18a4:	e59f10d4 	ldr	r1, [pc, #212]	@ 1980 <linktest+0x204>
    18a8:	e3a00001 	mov	r0, #1
    18ac:	eb000c50 	bl	49f4 <printf>
    18b0:	eb000b36 	bl	4590 <exit>
    18b4:	e51b0008 	ldr	r0, [fp, #-8]
    18b8:	eb000b61 	bl	4644 <close>
    18bc:	e59f1098 	ldr	r1, [pc, #152]	@ 195c <linktest+0x1e0>
    18c0:	e59f0094 	ldr	r0, [pc, #148]	@ 195c <linktest+0x1e0>
    18c4:	eb000b9d 	bl	4740 <link>
    18c8:	e1a03000 	mov	r3, r0
    18cc:	e3530000 	cmp	r3, #0
    18d0:	ba000003 	blt	18e4 <linktest+0x168>
    18d4:	e59f10a8 	ldr	r1, [pc, #168]	@ 1984 <linktest+0x208>
    18d8:	e3a00001 	mov	r0, #1
    18dc:	eb000c44 	bl	49f4 <printf>
    18e0:	eb000b2a 	bl	4590 <exit>
    18e4:	e59f0070 	ldr	r0, [pc, #112]	@ 195c <linktest+0x1e0>
    18e8:	eb000b82 	bl	46f8 <unlink>
    18ec:	e59f1064 	ldr	r1, [pc, #100]	@ 1958 <linktest+0x1dc>
    18f0:	e59f0064 	ldr	r0, [pc, #100]	@ 195c <linktest+0x1e0>
    18f4:	eb000b91 	bl	4740 <link>
    18f8:	e1a03000 	mov	r3, r0
    18fc:	e3530000 	cmp	r3, #0
    1900:	ba000003 	blt	1914 <linktest+0x198>
    1904:	e59f107c 	ldr	r1, [pc, #124]	@ 1988 <linktest+0x20c>
    1908:	e3a00001 	mov	r0, #1
    190c:	eb000c38 	bl	49f4 <printf>
    1910:	eb000b1e 	bl	4590 <exit>
    1914:	e59f103c 	ldr	r1, [pc, #60]	@ 1958 <linktest+0x1dc>
    1918:	e59f006c 	ldr	r0, [pc, #108]	@ 198c <linktest+0x210>
    191c:	eb000b87 	bl	4740 <link>
    1920:	e1a03000 	mov	r3, r0
    1924:	e3530000 	cmp	r3, #0
    1928:	ba000003 	blt	193c <linktest+0x1c0>
    192c:	e59f105c 	ldr	r1, [pc, #92]	@ 1990 <linktest+0x214>
    1930:	e3a00001 	mov	r0, #1
    1934:	eb000c2e 	bl	49f4 <printf>
    1938:	eb000b14 	bl	4590 <exit>
    193c:	e59f1050 	ldr	r1, [pc, #80]	@ 1994 <linktest+0x218>
    1940:	e3a00001 	mov	r0, #1
    1944:	eb000c2a 	bl	49f4 <printf>
    1948:	e1a00000 	nop			@ (mov r0, r0)
    194c:	e24bd004 	sub	sp, fp, #4
    1950:	e8bd8800 	pop	{fp, pc}
    1954:	000057c4 	.word	0x000057c4
    1958:	000057d0 	.word	0x000057d0
    195c:	000057d4 	.word	0x000057d4
    1960:	00000202 	.word	0x00000202
    1964:	000057d8 	.word	0x000057d8
    1968:	00005728 	.word	0x00005728
    196c:	000057ec 	.word	0x000057ec
    1970:	00005800 	.word	0x00005800
    1974:	00005818 	.word	0x00005818
    1978:	00005840 	.word	0x00005840
    197c:	00006918 	.word	0x00006918
    1980:	00005854 	.word	0x00005854
    1984:	00005868 	.word	0x00005868
    1988:	00005888 	.word	0x00005888
    198c:	000058ac 	.word	0x000058ac
    1990:	000058b0 	.word	0x000058b0
    1994:	000058cc 	.word	0x000058cc

00001998 <concreate>:
    1998:	e92d4800 	push	{fp, lr}
    199c:	e28db004 	add	fp, sp, #4
    19a0:	e24dd050 	sub	sp, sp, #80	@ 0x50
    19a4:	e59f1420 	ldr	r1, [pc, #1056]	@ 1dcc <concreate+0x434>
    19a8:	e3a00001 	mov	r0, #1
    19ac:	eb000c10 	bl	49f4 <printf>
    19b0:	e3a03043 	mov	r3, #67	@ 0x43
    19b4:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    19b8:	e3a03000 	mov	r3, #0
    19bc:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    19c0:	e3a03000 	mov	r3, #0
    19c4:	e50b3008 	str	r3, [fp, #-8]
    19c8:	ea000048 	b	1af0 <concreate+0x158>
    19cc:	e51b3008 	ldr	r3, [fp, #-8]
    19d0:	e6ef3073 	uxtb	r3, r3
    19d4:	e2833030 	add	r3, r3, #48	@ 0x30
    19d8:	e6ef3073 	uxtb	r3, r3
    19dc:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    19e0:	e24b3018 	sub	r3, fp, #24
    19e4:	e1a00003 	mov	r0, r3
    19e8:	eb000b42 	bl	46f8 <unlink>
    19ec:	eb000ade 	bl	456c <fork>
    19f0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    19f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    19f8:	e3530000 	cmp	r3, #0
    19fc:	0a00000f 	beq	1a40 <concreate+0xa8>
    1a00:	e51b1008 	ldr	r1, [fp, #-8]
    1a04:	e59f33c4 	ldr	r3, [pc, #964]	@ 1dd0 <concreate+0x438>
    1a08:	e0c23193 	smull	r3, r2, r3, r1
    1a0c:	e1a03fc1 	asr	r3, r1, #31
    1a10:	e0422003 	sub	r2, r2, r3
    1a14:	e1a03002 	mov	r3, r2
    1a18:	e1a03083 	lsl	r3, r3, #1
    1a1c:	e0833002 	add	r3, r3, r2
    1a20:	e0412003 	sub	r2, r1, r3
    1a24:	e3520001 	cmp	r2, #1
    1a28:	1a000004 	bne	1a40 <concreate+0xa8>
    1a2c:	e24b3018 	sub	r3, fp, #24
    1a30:	e1a01003 	mov	r1, r3
    1a34:	e59f0398 	ldr	r0, [pc, #920]	@ 1dd4 <concreate+0x43c>
    1a38:	eb000b40 	bl	4740 <link>
    1a3c:	ea000023 	b	1ad0 <concreate+0x138>
    1a40:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1a44:	e3530000 	cmp	r3, #0
    1a48:	1a000010 	bne	1a90 <concreate+0xf8>
    1a4c:	e51b1008 	ldr	r1, [fp, #-8]
    1a50:	e59f3380 	ldr	r3, [pc, #896]	@ 1dd8 <concreate+0x440>
    1a54:	e0c32193 	smull	r2, r3, r3, r1
    1a58:	e1a020c3 	asr	r2, r3, #1
    1a5c:	e1a03fc1 	asr	r3, r1, #31
    1a60:	e0422003 	sub	r2, r2, r3
    1a64:	e1a03002 	mov	r3, r2
    1a68:	e1a03103 	lsl	r3, r3, #2
    1a6c:	e0833002 	add	r3, r3, r2
    1a70:	e0412003 	sub	r2, r1, r3
    1a74:	e3520001 	cmp	r2, #1
    1a78:	1a000004 	bne	1a90 <concreate+0xf8>
    1a7c:	e24b3018 	sub	r3, fp, #24
    1a80:	e1a01003 	mov	r1, r3
    1a84:	e59f0348 	ldr	r0, [pc, #840]	@ 1dd4 <concreate+0x43c>
    1a88:	eb000b2c 	bl	4740 <link>
    1a8c:	ea00000f 	b	1ad0 <concreate+0x138>
    1a90:	e24b3018 	sub	r3, fp, #24
    1a94:	e59f1340 	ldr	r1, [pc, #832]	@ 1ddc <concreate+0x444>
    1a98:	e1a00003 	mov	r0, r3
    1a9c:	eb000b03 	bl	46b0 <open>
    1aa0:	e50b0010 	str	r0, [fp, #-16]
    1aa4:	e51b3010 	ldr	r3, [fp, #-16]
    1aa8:	e3530000 	cmp	r3, #0
    1aac:	aa000005 	bge	1ac8 <concreate+0x130>
    1ab0:	e24b3018 	sub	r3, fp, #24
    1ab4:	e1a02003 	mov	r2, r3
    1ab8:	e59f1320 	ldr	r1, [pc, #800]	@ 1de0 <concreate+0x448>
    1abc:	e3a00001 	mov	r0, #1
    1ac0:	eb000bcb 	bl	49f4 <printf>
    1ac4:	eb000ab1 	bl	4590 <exit>
    1ac8:	e51b0010 	ldr	r0, [fp, #-16]
    1acc:	eb000adc 	bl	4644 <close>
    1ad0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ad4:	e3530000 	cmp	r3, #0
    1ad8:	1a000000 	bne	1ae0 <concreate+0x148>
    1adc:	eb000aab 	bl	4590 <exit>
    1ae0:	eb000ab3 	bl	45b4 <wait>
    1ae4:	e51b3008 	ldr	r3, [fp, #-8]
    1ae8:	e2833001 	add	r3, r3, #1
    1aec:	e50b3008 	str	r3, [fp, #-8]
    1af0:	e51b3008 	ldr	r3, [fp, #-8]
    1af4:	e3530027 	cmp	r3, #39	@ 0x27
    1af8:	daffffb3 	ble	19cc <concreate+0x34>
    1afc:	e24b3040 	sub	r3, fp, #64	@ 0x40
    1b00:	e3a02028 	mov	r2, #40	@ 0x28
    1b04:	e3a01000 	mov	r1, #0
    1b08:	e1a00003 	mov	r0, r3
    1b0c:	eb0009ad 	bl	41c8 <memset>
    1b10:	e3a01000 	mov	r1, #0
    1b14:	e59f02c8 	ldr	r0, [pc, #712]	@ 1de4 <concreate+0x44c>
    1b18:	eb000ae4 	bl	46b0 <open>
    1b1c:	e50b0010 	str	r0, [fp, #-16]
    1b20:	e3a03000 	mov	r3, #0
    1b24:	e50b300c 	str	r3, [fp, #-12]
    1b28:	ea00002f 	b	1bec <concreate+0x254>
    1b2c:	e15b35b0 	ldrh	r3, [fp, #-80]	@ 0xffffffb0
    1b30:	e3530000 	cmp	r3, #0
    1b34:	0a00002b 	beq	1be8 <concreate+0x250>
    1b38:	e55b304e 	ldrb	r3, [fp, #-78]	@ 0xffffffb2
    1b3c:	e3530043 	cmp	r3, #67	@ 0x43
    1b40:	1a000029 	bne	1bec <concreate+0x254>
    1b44:	e55b304c 	ldrb	r3, [fp, #-76]	@ 0xffffffb4
    1b48:	e3530000 	cmp	r3, #0
    1b4c:	1a000026 	bne	1bec <concreate+0x254>
    1b50:	e55b304d 	ldrb	r3, [fp, #-77]	@ 0xffffffb3
    1b54:	e2433030 	sub	r3, r3, #48	@ 0x30
    1b58:	e50b3008 	str	r3, [fp, #-8]
    1b5c:	e51b3008 	ldr	r3, [fp, #-8]
    1b60:	e3530000 	cmp	r3, #0
    1b64:	ba000002 	blt	1b74 <concreate+0x1dc>
    1b68:	e51b3008 	ldr	r3, [fp, #-8]
    1b6c:	e3530027 	cmp	r3, #39	@ 0x27
    1b70:	9a000006 	bls	1b90 <concreate+0x1f8>
    1b74:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1b78:	e2833002 	add	r3, r3, #2
    1b7c:	e1a02003 	mov	r2, r3
    1b80:	e59f1260 	ldr	r1, [pc, #608]	@ 1de8 <concreate+0x450>
    1b84:	e3a00001 	mov	r0, #1
    1b88:	eb000b99 	bl	49f4 <printf>
    1b8c:	eb000a7f 	bl	4590 <exit>
    1b90:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1b94:	e51b3008 	ldr	r3, [fp, #-8]
    1b98:	e0823003 	add	r3, r2, r3
    1b9c:	e5d33000 	ldrb	r3, [r3]
    1ba0:	e3530000 	cmp	r3, #0
    1ba4:	0a000006 	beq	1bc4 <concreate+0x22c>
    1ba8:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bac:	e2833002 	add	r3, r3, #2
    1bb0:	e1a02003 	mov	r2, r3
    1bb4:	e59f1230 	ldr	r1, [pc, #560]	@ 1dec <concreate+0x454>
    1bb8:	e3a00001 	mov	r0, #1
    1bbc:	eb000b8c 	bl	49f4 <printf>
    1bc0:	eb000a72 	bl	4590 <exit>
    1bc4:	e24b2040 	sub	r2, fp, #64	@ 0x40
    1bc8:	e51b3008 	ldr	r3, [fp, #-8]
    1bcc:	e0823003 	add	r3, r2, r3
    1bd0:	e3a02001 	mov	r2, #1
    1bd4:	e5c32000 	strb	r2, [r3]
    1bd8:	e51b300c 	ldr	r3, [fp, #-12]
    1bdc:	e2833001 	add	r3, r3, #1
    1be0:	e50b300c 	str	r3, [fp, #-12]
    1be4:	ea000000 	b	1bec <concreate+0x254>
    1be8:	e1a00000 	nop			@ (mov r0, r0)
    1bec:	e24b3050 	sub	r3, fp, #80	@ 0x50
    1bf0:	e3a02010 	mov	r2, #16
    1bf4:	e1a01003 	mov	r1, r3
    1bf8:	e51b0010 	ldr	r0, [fp, #-16]
    1bfc:	eb000a7e 	bl	45fc <read>
    1c00:	e1a03000 	mov	r3, r0
    1c04:	e3530000 	cmp	r3, #0
    1c08:	caffffc7 	bgt	1b2c <concreate+0x194>
    1c0c:	e51b0010 	ldr	r0, [fp, #-16]
    1c10:	eb000a8b 	bl	4644 <close>
    1c14:	e51b300c 	ldr	r3, [fp, #-12]
    1c18:	e3530028 	cmp	r3, #40	@ 0x28
    1c1c:	0a000003 	beq	1c30 <concreate+0x298>
    1c20:	e59f11c8 	ldr	r1, [pc, #456]	@ 1df0 <concreate+0x458>
    1c24:	e3a00001 	mov	r0, #1
    1c28:	eb000b71 	bl	49f4 <printf>
    1c2c:	eb000a57 	bl	4590 <exit>
    1c30:	e3a03000 	mov	r3, #0
    1c34:	e50b3008 	str	r3, [fp, #-8]
    1c38:	ea00005a 	b	1da8 <concreate+0x410>
    1c3c:	e51b3008 	ldr	r3, [fp, #-8]
    1c40:	e6ef3073 	uxtb	r3, r3
    1c44:	e2833030 	add	r3, r3, #48	@ 0x30
    1c48:	e6ef3073 	uxtb	r3, r3
    1c4c:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    1c50:	eb000a45 	bl	456c <fork>
    1c54:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    1c58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1c5c:	e3530000 	cmp	r3, #0
    1c60:	aa000003 	bge	1c74 <concreate+0x2dc>
    1c64:	e59f1188 	ldr	r1, [pc, #392]	@ 1df4 <concreate+0x45c>
    1c68:	e3a00001 	mov	r0, #1
    1c6c:	eb000b60 	bl	49f4 <printf>
    1c70:	eb000a46 	bl	4590 <exit>
    1c74:	e51b1008 	ldr	r1, [fp, #-8]
    1c78:	e59f3150 	ldr	r3, [pc, #336]	@ 1dd0 <concreate+0x438>
    1c7c:	e0c23193 	smull	r3, r2, r3, r1
    1c80:	e1a03fc1 	asr	r3, r1, #31
    1c84:	e0422003 	sub	r2, r2, r3
    1c88:	e1a03002 	mov	r3, r2
    1c8c:	e1a03083 	lsl	r3, r3, #1
    1c90:	e0833002 	add	r3, r3, r2
    1c94:	e0412003 	sub	r2, r1, r3
    1c98:	e3520000 	cmp	r2, #0
    1c9c:	1a000002 	bne	1cac <concreate+0x314>
    1ca0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1ca4:	e3530000 	cmp	r3, #0
    1ca8:	0a00000d 	beq	1ce4 <concreate+0x34c>
    1cac:	e51b1008 	ldr	r1, [fp, #-8]
    1cb0:	e59f3118 	ldr	r3, [pc, #280]	@ 1dd0 <concreate+0x438>
    1cb4:	e0c23193 	smull	r3, r2, r3, r1
    1cb8:	e1a03fc1 	asr	r3, r1, #31
    1cbc:	e0422003 	sub	r2, r2, r3
    1cc0:	e1a03002 	mov	r3, r2
    1cc4:	e1a03083 	lsl	r3, r3, #1
    1cc8:	e0833002 	add	r3, r3, r2
    1ccc:	e0412003 	sub	r2, r1, r3
    1cd0:	e3520001 	cmp	r2, #1
    1cd4:	1a00001f 	bne	1d58 <concreate+0x3c0>
    1cd8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1cdc:	e3530000 	cmp	r3, #0
    1ce0:	0a00001c 	beq	1d58 <concreate+0x3c0>
    1ce4:	e24b3018 	sub	r3, fp, #24
    1ce8:	e3a01000 	mov	r1, #0
    1cec:	e1a00003 	mov	r0, r3
    1cf0:	eb000a6e 	bl	46b0 <open>
    1cf4:	e1a03000 	mov	r3, r0
    1cf8:	e1a00003 	mov	r0, r3
    1cfc:	eb000a50 	bl	4644 <close>
    1d00:	e24b3018 	sub	r3, fp, #24
    1d04:	e3a01000 	mov	r1, #0
    1d08:	e1a00003 	mov	r0, r3
    1d0c:	eb000a67 	bl	46b0 <open>
    1d10:	e1a03000 	mov	r3, r0
    1d14:	e1a00003 	mov	r0, r3
    1d18:	eb000a49 	bl	4644 <close>
    1d1c:	e24b3018 	sub	r3, fp, #24
    1d20:	e3a01000 	mov	r1, #0
    1d24:	e1a00003 	mov	r0, r3
    1d28:	eb000a60 	bl	46b0 <open>
    1d2c:	e1a03000 	mov	r3, r0
    1d30:	e1a00003 	mov	r0, r3
    1d34:	eb000a42 	bl	4644 <close>
    1d38:	e24b3018 	sub	r3, fp, #24
    1d3c:	e3a01000 	mov	r1, #0
    1d40:	e1a00003 	mov	r0, r3
    1d44:	eb000a59 	bl	46b0 <open>
    1d48:	e1a03000 	mov	r3, r0
    1d4c:	e1a00003 	mov	r0, r3
    1d50:	eb000a3b 	bl	4644 <close>
    1d54:	ea00000b 	b	1d88 <concreate+0x3f0>
    1d58:	e24b3018 	sub	r3, fp, #24
    1d5c:	e1a00003 	mov	r0, r3
    1d60:	eb000a64 	bl	46f8 <unlink>
    1d64:	e24b3018 	sub	r3, fp, #24
    1d68:	e1a00003 	mov	r0, r3
    1d6c:	eb000a61 	bl	46f8 <unlink>
    1d70:	e24b3018 	sub	r3, fp, #24
    1d74:	e1a00003 	mov	r0, r3
    1d78:	eb000a5e 	bl	46f8 <unlink>
    1d7c:	e24b3018 	sub	r3, fp, #24
    1d80:	e1a00003 	mov	r0, r3
    1d84:	eb000a5b 	bl	46f8 <unlink>
    1d88:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    1d8c:	e3530000 	cmp	r3, #0
    1d90:	1a000000 	bne	1d98 <concreate+0x400>
    1d94:	eb0009fd 	bl	4590 <exit>
    1d98:	eb000a05 	bl	45b4 <wait>
    1d9c:	e51b3008 	ldr	r3, [fp, #-8]
    1da0:	e2833001 	add	r3, r3, #1
    1da4:	e50b3008 	str	r3, [fp, #-8]
    1da8:	e51b3008 	ldr	r3, [fp, #-8]
    1dac:	e3530027 	cmp	r3, #39	@ 0x27
    1db0:	daffffa1 	ble	1c3c <concreate+0x2a4>
    1db4:	e59f103c 	ldr	r1, [pc, #60]	@ 1df8 <concreate+0x460>
    1db8:	e3a00001 	mov	r0, #1
    1dbc:	eb000b0c 	bl	49f4 <printf>
    1dc0:	e1a00000 	nop			@ (mov r0, r0)
    1dc4:	e24bd004 	sub	sp, fp, #4
    1dc8:	e8bd8800 	pop	{fp, pc}
    1dcc:	000058dc 	.word	0x000058dc
    1dd0:	55555556 	.word	0x55555556
    1dd4:	000058ec 	.word	0x000058ec
    1dd8:	66666667 	.word	0x66666667
    1ddc:	00000202 	.word	0x00000202
    1de0:	000058f0 	.word	0x000058f0
    1de4:	000058ac 	.word	0x000058ac
    1de8:	0000590c 	.word	0x0000590c
    1dec:	00005928 	.word	0x00005928
    1df0:	00005948 	.word	0x00005948
    1df4:	000054e8 	.word	0x000054e8
    1df8:	0000597c 	.word	0x0000597c

00001dfc <linkunlink>:
    1dfc:	e92d4800 	push	{fp, lr}
    1e00:	e28db004 	add	fp, sp, #4
    1e04:	e24dd010 	sub	sp, sp, #16
    1e08:	e59f113c 	ldr	r1, [pc, #316]	@ 1f4c <linkunlink+0x150>
    1e0c:	e3a00001 	mov	r0, #1
    1e10:	eb000af7 	bl	49f4 <printf>
    1e14:	e59f0134 	ldr	r0, [pc, #308]	@ 1f50 <linkunlink+0x154>
    1e18:	eb000a36 	bl	46f8 <unlink>
    1e1c:	eb0009d2 	bl	456c <fork>
    1e20:	e50b0010 	str	r0, [fp, #-16]
    1e24:	e51b3010 	ldr	r3, [fp, #-16]
    1e28:	e3530000 	cmp	r3, #0
    1e2c:	aa000003 	bge	1e40 <linkunlink+0x44>
    1e30:	e59f111c 	ldr	r1, [pc, #284]	@ 1f54 <linkunlink+0x158>
    1e34:	e3a00001 	mov	r0, #1
    1e38:	eb000aed 	bl	49f4 <printf>
    1e3c:	eb0009d3 	bl	4590 <exit>
    1e40:	e51b3010 	ldr	r3, [fp, #-16]
    1e44:	e3530000 	cmp	r3, #0
    1e48:	0a000001 	beq	1e54 <linkunlink+0x58>
    1e4c:	e3a03001 	mov	r3, #1
    1e50:	ea000000 	b	1e58 <linkunlink+0x5c>
    1e54:	e3a03061 	mov	r3, #97	@ 0x61
    1e58:	e50b300c 	str	r3, [fp, #-12]
    1e5c:	e3a03000 	mov	r3, #0
    1e60:	e50b3008 	str	r3, [fp, #-8]
    1e64:	ea000029 	b	1f10 <linkunlink+0x114>
    1e68:	e51b300c 	ldr	r3, [fp, #-12]
    1e6c:	e59f20e4 	ldr	r2, [pc, #228]	@ 1f58 <linkunlink+0x15c>
    1e70:	e0030392 	mul	r3, r2, r3
    1e74:	e2833a03 	add	r3, r3, #12288	@ 0x3000
    1e78:	e2833039 	add	r3, r3, #57	@ 0x39
    1e7c:	e50b300c 	str	r3, [fp, #-12]
    1e80:	e51b100c 	ldr	r1, [fp, #-12]
    1e84:	e59f30d0 	ldr	r3, [pc, #208]	@ 1f5c <linkunlink+0x160>
    1e88:	e0832193 	umull	r2, r3, r3, r1
    1e8c:	e1a020a3 	lsr	r2, r3, #1
    1e90:	e1a03002 	mov	r3, r2
    1e94:	e1a03083 	lsl	r3, r3, #1
    1e98:	e0833002 	add	r3, r3, r2
    1e9c:	e0412003 	sub	r2, r1, r3
    1ea0:	e3520000 	cmp	r2, #0
    1ea4:	1a000006 	bne	1ec4 <linkunlink+0xc8>
    1ea8:	e59f10b0 	ldr	r1, [pc, #176]	@ 1f60 <linkunlink+0x164>
    1eac:	e59f009c 	ldr	r0, [pc, #156]	@ 1f50 <linkunlink+0x154>
    1eb0:	eb0009fe 	bl	46b0 <open>
    1eb4:	e1a03000 	mov	r3, r0
    1eb8:	e1a00003 	mov	r0, r3
    1ebc:	eb0009e0 	bl	4644 <close>
    1ec0:	ea00000f 	b	1f04 <linkunlink+0x108>
    1ec4:	e51b100c 	ldr	r1, [fp, #-12]
    1ec8:	e59f308c 	ldr	r3, [pc, #140]	@ 1f5c <linkunlink+0x160>
    1ecc:	e0832193 	umull	r2, r3, r3, r1
    1ed0:	e1a020a3 	lsr	r2, r3, #1
    1ed4:	e1a03002 	mov	r3, r2
    1ed8:	e1a03083 	lsl	r3, r3, #1
    1edc:	e0833002 	add	r3, r3, r2
    1ee0:	e0412003 	sub	r2, r1, r3
    1ee4:	e3520001 	cmp	r2, #1
    1ee8:	1a000003 	bne	1efc <linkunlink+0x100>
    1eec:	e59f105c 	ldr	r1, [pc, #92]	@ 1f50 <linkunlink+0x154>
    1ef0:	e59f006c 	ldr	r0, [pc, #108]	@ 1f64 <linkunlink+0x168>
    1ef4:	eb000a11 	bl	4740 <link>
    1ef8:	ea000001 	b	1f04 <linkunlink+0x108>
    1efc:	e59f004c 	ldr	r0, [pc, #76]	@ 1f50 <linkunlink+0x154>
    1f00:	eb0009fc 	bl	46f8 <unlink>
    1f04:	e51b3008 	ldr	r3, [fp, #-8]
    1f08:	e2833001 	add	r3, r3, #1
    1f0c:	e50b3008 	str	r3, [fp, #-8]
    1f10:	e51b3008 	ldr	r3, [fp, #-8]
    1f14:	e3530063 	cmp	r3, #99	@ 0x63
    1f18:	daffffd2 	ble	1e68 <linkunlink+0x6c>
    1f1c:	e51b3010 	ldr	r3, [fp, #-16]
    1f20:	e3530000 	cmp	r3, #0
    1f24:	0a000001 	beq	1f30 <linkunlink+0x134>
    1f28:	eb0009a1 	bl	45b4 <wait>
    1f2c:	ea000000 	b	1f34 <linkunlink+0x138>
    1f30:	eb000996 	bl	4590 <exit>
    1f34:	e59f102c 	ldr	r1, [pc, #44]	@ 1f68 <linkunlink+0x16c>
    1f38:	e3a00001 	mov	r0, #1
    1f3c:	eb000aac 	bl	49f4 <printf>
    1f40:	e1a00000 	nop			@ (mov r0, r0)
    1f44:	e24bd004 	sub	sp, fp, #4
    1f48:	e8bd8800 	pop	{fp, pc}
    1f4c:	0000598c 	.word	0x0000598c
    1f50:	00005498 	.word	0x00005498
    1f54:	000054e8 	.word	0x000054e8
    1f58:	41c64e6d 	.word	0x41c64e6d
    1f5c:	aaaaaaab 	.word	0xaaaaaaab
    1f60:	00000202 	.word	0x00000202
    1f64:	000059a0 	.word	0x000059a0
    1f68:	000059a4 	.word	0x000059a4

00001f6c <bigdir>:
    1f6c:	e92d4800 	push	{fp, lr}
    1f70:	e28db004 	add	fp, sp, #4
    1f74:	e24dd018 	sub	sp, sp, #24
    1f78:	e59f11b4 	ldr	r1, [pc, #436]	@ 2134 <bigdir+0x1c8>
    1f7c:	e3a00001 	mov	r0, #1
    1f80:	eb000a9b 	bl	49f4 <printf>
    1f84:	e59f01ac 	ldr	r0, [pc, #428]	@ 2138 <bigdir+0x1cc>
    1f88:	eb0009da 	bl	46f8 <unlink>
    1f8c:	e3a01c02 	mov	r1, #512	@ 0x200
    1f90:	e59f01a0 	ldr	r0, [pc, #416]	@ 2138 <bigdir+0x1cc>
    1f94:	eb0009c5 	bl	46b0 <open>
    1f98:	e50b000c 	str	r0, [fp, #-12]
    1f9c:	e51b300c 	ldr	r3, [fp, #-12]
    1fa0:	e3530000 	cmp	r3, #0
    1fa4:	aa000003 	bge	1fb8 <bigdir+0x4c>
    1fa8:	e59f118c 	ldr	r1, [pc, #396]	@ 213c <bigdir+0x1d0>
    1fac:	e3a00001 	mov	r0, #1
    1fb0:	eb000a8f 	bl	49f4 <printf>
    1fb4:	eb000975 	bl	4590 <exit>
    1fb8:	e51b000c 	ldr	r0, [fp, #-12]
    1fbc:	eb0009a0 	bl	4644 <close>
    1fc0:	e3a03000 	mov	r3, #0
    1fc4:	e50b3008 	str	r3, [fp, #-8]
    1fc8:	ea000024 	b	2060 <bigdir+0xf4>
    1fcc:	e3a03078 	mov	r3, #120	@ 0x78
    1fd0:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    1fd4:	e51b3008 	ldr	r3, [fp, #-8]
    1fd8:	e283203f 	add	r2, r3, #63	@ 0x3f
    1fdc:	e3530000 	cmp	r3, #0
    1fe0:	b1a03002 	movlt	r3, r2
    1fe4:	a1a03003 	movge	r3, r3
    1fe8:	e1a03343 	asr	r3, r3, #6
    1fec:	e6ef3073 	uxtb	r3, r3
    1ff0:	e2833030 	add	r3, r3, #48	@ 0x30
    1ff4:	e6ef3073 	uxtb	r3, r3
    1ff8:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    1ffc:	e51b3008 	ldr	r3, [fp, #-8]
    2000:	e2732000 	rsbs	r2, r3, #0
    2004:	e203303f 	and	r3, r3, #63	@ 0x3f
    2008:	e202203f 	and	r2, r2, #63	@ 0x3f
    200c:	52623000 	rsbpl	r3, r2, #0
    2010:	e6ef3073 	uxtb	r3, r3
    2014:	e2833030 	add	r3, r3, #48	@ 0x30
    2018:	e6ef3073 	uxtb	r3, r3
    201c:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    2020:	e3a03000 	mov	r3, #0
    2024:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    2028:	e24b3018 	sub	r3, fp, #24
    202c:	e1a01003 	mov	r1, r3
    2030:	e59f0100 	ldr	r0, [pc, #256]	@ 2138 <bigdir+0x1cc>
    2034:	eb0009c1 	bl	4740 <link>
    2038:	e1a03000 	mov	r3, r0
    203c:	e3530000 	cmp	r3, #0
    2040:	0a000003 	beq	2054 <bigdir+0xe8>
    2044:	e59f10f4 	ldr	r1, [pc, #244]	@ 2140 <bigdir+0x1d4>
    2048:	e3a00001 	mov	r0, #1
    204c:	eb000a68 	bl	49f4 <printf>
    2050:	eb00094e 	bl	4590 <exit>
    2054:	e51b3008 	ldr	r3, [fp, #-8]
    2058:	e2833001 	add	r3, r3, #1
    205c:	e50b3008 	str	r3, [fp, #-8]
    2060:	e51b3008 	ldr	r3, [fp, #-8]
    2064:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    2068:	baffffd7 	blt	1fcc <bigdir+0x60>
    206c:	e59f00c4 	ldr	r0, [pc, #196]	@ 2138 <bigdir+0x1cc>
    2070:	eb0009a0 	bl	46f8 <unlink>
    2074:	e3a03000 	mov	r3, #0
    2078:	e50b3008 	str	r3, [fp, #-8]
    207c:	ea000023 	b	2110 <bigdir+0x1a4>
    2080:	e3a03078 	mov	r3, #120	@ 0x78
    2084:	e54b3018 	strb	r3, [fp, #-24]	@ 0xffffffe8
    2088:	e51b3008 	ldr	r3, [fp, #-8]
    208c:	e283203f 	add	r2, r3, #63	@ 0x3f
    2090:	e3530000 	cmp	r3, #0
    2094:	b1a03002 	movlt	r3, r2
    2098:	a1a03003 	movge	r3, r3
    209c:	e1a03343 	asr	r3, r3, #6
    20a0:	e6ef3073 	uxtb	r3, r3
    20a4:	e2833030 	add	r3, r3, #48	@ 0x30
    20a8:	e6ef3073 	uxtb	r3, r3
    20ac:	e54b3017 	strb	r3, [fp, #-23]	@ 0xffffffe9
    20b0:	e51b3008 	ldr	r3, [fp, #-8]
    20b4:	e2732000 	rsbs	r2, r3, #0
    20b8:	e203303f 	and	r3, r3, #63	@ 0x3f
    20bc:	e202203f 	and	r2, r2, #63	@ 0x3f
    20c0:	52623000 	rsbpl	r3, r2, #0
    20c4:	e6ef3073 	uxtb	r3, r3
    20c8:	e2833030 	add	r3, r3, #48	@ 0x30
    20cc:	e6ef3073 	uxtb	r3, r3
    20d0:	e54b3016 	strb	r3, [fp, #-22]	@ 0xffffffea
    20d4:	e3a03000 	mov	r3, #0
    20d8:	e54b3015 	strb	r3, [fp, #-21]	@ 0xffffffeb
    20dc:	e24b3018 	sub	r3, fp, #24
    20e0:	e1a00003 	mov	r0, r3
    20e4:	eb000983 	bl	46f8 <unlink>
    20e8:	e1a03000 	mov	r3, r0
    20ec:	e3530000 	cmp	r3, #0
    20f0:	0a000003 	beq	2104 <bigdir+0x198>
    20f4:	e59f1048 	ldr	r1, [pc, #72]	@ 2144 <bigdir+0x1d8>
    20f8:	e3a00001 	mov	r0, #1
    20fc:	eb000a3c 	bl	49f4 <printf>
    2100:	eb000922 	bl	4590 <exit>
    2104:	e51b3008 	ldr	r3, [fp, #-8]
    2108:	e2833001 	add	r3, r3, #1
    210c:	e50b3008 	str	r3, [fp, #-8]
    2110:	e51b3008 	ldr	r3, [fp, #-8]
    2114:	e3530f7d 	cmp	r3, #500	@ 0x1f4
    2118:	baffffd8 	blt	2080 <bigdir+0x114>
    211c:	e59f1024 	ldr	r1, [pc, #36]	@ 2148 <bigdir+0x1dc>
    2120:	e3a00001 	mov	r0, #1
    2124:	eb000a32 	bl	49f4 <printf>
    2128:	e1a00000 	nop			@ (mov r0, r0)
    212c:	e24bd004 	sub	sp, fp, #4
    2130:	e8bd8800 	pop	{fp, pc}
    2134:	000059b4 	.word	0x000059b4
    2138:	000059c4 	.word	0x000059c4
    213c:	000059c8 	.word	0x000059c8
    2140:	000059e0 	.word	0x000059e0
    2144:	000059f4 	.word	0x000059f4
    2148:	00005a0c 	.word	0x00005a0c

0000214c <subdir>:
    214c:	e92d4800 	push	{fp, lr}
    2150:	e28db004 	add	fp, sp, #4
    2154:	e24dd008 	sub	sp, sp, #8
    2158:	e59f1608 	ldr	r1, [pc, #1544]	@ 2768 <subdir+0x61c>
    215c:	e3a00001 	mov	r0, #1
    2160:	eb000a23 	bl	49f4 <printf>
    2164:	e59f0600 	ldr	r0, [pc, #1536]	@ 276c <subdir+0x620>
    2168:	eb000962 	bl	46f8 <unlink>
    216c:	e59f05fc 	ldr	r0, [pc, #1532]	@ 2770 <subdir+0x624>
    2170:	eb00097b 	bl	4764 <mkdir>
    2174:	e1a03000 	mov	r3, r0
    2178:	e3530000 	cmp	r3, #0
    217c:	0a000003 	beq	2190 <subdir+0x44>
    2180:	e59f15ec 	ldr	r1, [pc, #1516]	@ 2774 <subdir+0x628>
    2184:	e3a00001 	mov	r0, #1
    2188:	eb000a19 	bl	49f4 <printf>
    218c:	eb0008ff 	bl	4590 <exit>
    2190:	e59f15e0 	ldr	r1, [pc, #1504]	@ 2778 <subdir+0x62c>
    2194:	e59f05e0 	ldr	r0, [pc, #1504]	@ 277c <subdir+0x630>
    2198:	eb000944 	bl	46b0 <open>
    219c:	e50b0008 	str	r0, [fp, #-8]
    21a0:	e51b3008 	ldr	r3, [fp, #-8]
    21a4:	e3530000 	cmp	r3, #0
    21a8:	aa000003 	bge	21bc <subdir+0x70>
    21ac:	e59f15cc 	ldr	r1, [pc, #1484]	@ 2780 <subdir+0x634>
    21b0:	e3a00001 	mov	r0, #1
    21b4:	eb000a0e 	bl	49f4 <printf>
    21b8:	eb0008f4 	bl	4590 <exit>
    21bc:	e3a02002 	mov	r2, #2
    21c0:	e59f15a4 	ldr	r1, [pc, #1444]	@ 276c <subdir+0x620>
    21c4:	e51b0008 	ldr	r0, [fp, #-8]
    21c8:	eb000914 	bl	4620 <write>
    21cc:	e51b0008 	ldr	r0, [fp, #-8]
    21d0:	eb00091b 	bl	4644 <close>
    21d4:	e59f0594 	ldr	r0, [pc, #1428]	@ 2770 <subdir+0x624>
    21d8:	eb000946 	bl	46f8 <unlink>
    21dc:	e1a03000 	mov	r3, r0
    21e0:	e3530000 	cmp	r3, #0
    21e4:	ba000003 	blt	21f8 <subdir+0xac>
    21e8:	e59f1594 	ldr	r1, [pc, #1428]	@ 2784 <subdir+0x638>
    21ec:	e3a00001 	mov	r0, #1
    21f0:	eb0009ff 	bl	49f4 <printf>
    21f4:	eb0008e5 	bl	4590 <exit>
    21f8:	e59f0588 	ldr	r0, [pc, #1416]	@ 2788 <subdir+0x63c>
    21fc:	eb000958 	bl	4764 <mkdir>
    2200:	e1a03000 	mov	r3, r0
    2204:	e3530000 	cmp	r3, #0
    2208:	0a000003 	beq	221c <subdir+0xd0>
    220c:	e59f1578 	ldr	r1, [pc, #1400]	@ 278c <subdir+0x640>
    2210:	e3a00001 	mov	r0, #1
    2214:	eb0009f6 	bl	49f4 <printf>
    2218:	eb0008dc 	bl	4590 <exit>
    221c:	e59f1554 	ldr	r1, [pc, #1364]	@ 2778 <subdir+0x62c>
    2220:	e59f0568 	ldr	r0, [pc, #1384]	@ 2790 <subdir+0x644>
    2224:	eb000921 	bl	46b0 <open>
    2228:	e50b0008 	str	r0, [fp, #-8]
    222c:	e51b3008 	ldr	r3, [fp, #-8]
    2230:	e3530000 	cmp	r3, #0
    2234:	aa000003 	bge	2248 <subdir+0xfc>
    2238:	e59f1554 	ldr	r1, [pc, #1364]	@ 2794 <subdir+0x648>
    223c:	e3a00001 	mov	r0, #1
    2240:	eb0009eb 	bl	49f4 <printf>
    2244:	eb0008d1 	bl	4590 <exit>
    2248:	e3a02002 	mov	r2, #2
    224c:	e59f1544 	ldr	r1, [pc, #1348]	@ 2798 <subdir+0x64c>
    2250:	e51b0008 	ldr	r0, [fp, #-8]
    2254:	eb0008f1 	bl	4620 <write>
    2258:	e51b0008 	ldr	r0, [fp, #-8]
    225c:	eb0008f8 	bl	4644 <close>
    2260:	e3a01000 	mov	r1, #0
    2264:	e59f0530 	ldr	r0, [pc, #1328]	@ 279c <subdir+0x650>
    2268:	eb000910 	bl	46b0 <open>
    226c:	e50b0008 	str	r0, [fp, #-8]
    2270:	e51b3008 	ldr	r3, [fp, #-8]
    2274:	e3530000 	cmp	r3, #0
    2278:	aa000003 	bge	228c <subdir+0x140>
    227c:	e59f151c 	ldr	r1, [pc, #1308]	@ 27a0 <subdir+0x654>
    2280:	e3a00001 	mov	r0, #1
    2284:	eb0009da 	bl	49f4 <printf>
    2288:	eb0008c0 	bl	4590 <exit>
    228c:	e3a02a02 	mov	r2, #8192	@ 0x2000
    2290:	e59f150c 	ldr	r1, [pc, #1292]	@ 27a4 <subdir+0x658>
    2294:	e51b0008 	ldr	r0, [fp, #-8]
    2298:	eb0008d7 	bl	45fc <read>
    229c:	e50b000c 	str	r0, [fp, #-12]
    22a0:	e51b300c 	ldr	r3, [fp, #-12]
    22a4:	e3530002 	cmp	r3, #2
    22a8:	1a000003 	bne	22bc <subdir+0x170>
    22ac:	e59f34f0 	ldr	r3, [pc, #1264]	@ 27a4 <subdir+0x658>
    22b0:	e5d33000 	ldrb	r3, [r3]
    22b4:	e3530066 	cmp	r3, #102	@ 0x66
    22b8:	0a000003 	beq	22cc <subdir+0x180>
    22bc:	e59f14e4 	ldr	r1, [pc, #1252]	@ 27a8 <subdir+0x65c>
    22c0:	e3a00001 	mov	r0, #1
    22c4:	eb0009ca 	bl	49f4 <printf>
    22c8:	eb0008b0 	bl	4590 <exit>
    22cc:	e51b0008 	ldr	r0, [fp, #-8]
    22d0:	eb0008db 	bl	4644 <close>
    22d4:	e59f14d0 	ldr	r1, [pc, #1232]	@ 27ac <subdir+0x660>
    22d8:	e59f04b0 	ldr	r0, [pc, #1200]	@ 2790 <subdir+0x644>
    22dc:	eb000917 	bl	4740 <link>
    22e0:	e1a03000 	mov	r3, r0
    22e4:	e3530000 	cmp	r3, #0
    22e8:	0a000003 	beq	22fc <subdir+0x1b0>
    22ec:	e59f14bc 	ldr	r1, [pc, #1212]	@ 27b0 <subdir+0x664>
    22f0:	e3a00001 	mov	r0, #1
    22f4:	eb0009be 	bl	49f4 <printf>
    22f8:	eb0008a4 	bl	4590 <exit>
    22fc:	e59f048c 	ldr	r0, [pc, #1164]	@ 2790 <subdir+0x644>
    2300:	eb0008fc 	bl	46f8 <unlink>
    2304:	e1a03000 	mov	r3, r0
    2308:	e3530000 	cmp	r3, #0
    230c:	0a000003 	beq	2320 <subdir+0x1d4>
    2310:	e59f149c 	ldr	r1, [pc, #1180]	@ 27b4 <subdir+0x668>
    2314:	e3a00001 	mov	r0, #1
    2318:	eb0009b5 	bl	49f4 <printf>
    231c:	eb00089b 	bl	4590 <exit>
    2320:	e3a01000 	mov	r1, #0
    2324:	e59f0464 	ldr	r0, [pc, #1124]	@ 2790 <subdir+0x644>
    2328:	eb0008e0 	bl	46b0 <open>
    232c:	e1a03000 	mov	r3, r0
    2330:	e3530000 	cmp	r3, #0
    2334:	ba000003 	blt	2348 <subdir+0x1fc>
    2338:	e59f1478 	ldr	r1, [pc, #1144]	@ 27b8 <subdir+0x66c>
    233c:	e3a00001 	mov	r0, #1
    2340:	eb0009ab 	bl	49f4 <printf>
    2344:	eb000891 	bl	4590 <exit>
    2348:	e59f0420 	ldr	r0, [pc, #1056]	@ 2770 <subdir+0x624>
    234c:	eb00090d 	bl	4788 <chdir>
    2350:	e1a03000 	mov	r3, r0
    2354:	e3530000 	cmp	r3, #0
    2358:	0a000003 	beq	236c <subdir+0x220>
    235c:	e59f1458 	ldr	r1, [pc, #1112]	@ 27bc <subdir+0x670>
    2360:	e3a00001 	mov	r0, #1
    2364:	eb0009a2 	bl	49f4 <printf>
    2368:	eb000888 	bl	4590 <exit>
    236c:	e59f044c 	ldr	r0, [pc, #1100]	@ 27c0 <subdir+0x674>
    2370:	eb000904 	bl	4788 <chdir>
    2374:	e1a03000 	mov	r3, r0
    2378:	e3530000 	cmp	r3, #0
    237c:	0a000003 	beq	2390 <subdir+0x244>
    2380:	e59f143c 	ldr	r1, [pc, #1084]	@ 27c4 <subdir+0x678>
    2384:	e3a00001 	mov	r0, #1
    2388:	eb000999 	bl	49f4 <printf>
    238c:	eb00087f 	bl	4590 <exit>
    2390:	e59f0430 	ldr	r0, [pc, #1072]	@ 27c8 <subdir+0x67c>
    2394:	eb0008fb 	bl	4788 <chdir>
    2398:	e1a03000 	mov	r3, r0
    239c:	e3530000 	cmp	r3, #0
    23a0:	0a000003 	beq	23b4 <subdir+0x268>
    23a4:	e59f1418 	ldr	r1, [pc, #1048]	@ 27c4 <subdir+0x678>
    23a8:	e3a00001 	mov	r0, #1
    23ac:	eb000990 	bl	49f4 <printf>
    23b0:	eb000876 	bl	4590 <exit>
    23b4:	e59f0410 	ldr	r0, [pc, #1040]	@ 27cc <subdir+0x680>
    23b8:	eb0008f2 	bl	4788 <chdir>
    23bc:	e1a03000 	mov	r3, r0
    23c0:	e3530000 	cmp	r3, #0
    23c4:	0a000003 	beq	23d8 <subdir+0x28c>
    23c8:	e59f1400 	ldr	r1, [pc, #1024]	@ 27d0 <subdir+0x684>
    23cc:	e3a00001 	mov	r0, #1
    23d0:	eb000987 	bl	49f4 <printf>
    23d4:	eb00086d 	bl	4590 <exit>
    23d8:	e3a01000 	mov	r1, #0
    23dc:	e59f03c8 	ldr	r0, [pc, #968]	@ 27ac <subdir+0x660>
    23e0:	eb0008b2 	bl	46b0 <open>
    23e4:	e50b0008 	str	r0, [fp, #-8]
    23e8:	e51b3008 	ldr	r3, [fp, #-8]
    23ec:	e3530000 	cmp	r3, #0
    23f0:	aa000003 	bge	2404 <subdir+0x2b8>
    23f4:	e59f13d8 	ldr	r1, [pc, #984]	@ 27d4 <subdir+0x688>
    23f8:	e3a00001 	mov	r0, #1
    23fc:	eb00097c 	bl	49f4 <printf>
    2400:	eb000862 	bl	4590 <exit>
    2404:	e3a02a02 	mov	r2, #8192	@ 0x2000
    2408:	e59f1394 	ldr	r1, [pc, #916]	@ 27a4 <subdir+0x658>
    240c:	e51b0008 	ldr	r0, [fp, #-8]
    2410:	eb000879 	bl	45fc <read>
    2414:	e1a03000 	mov	r3, r0
    2418:	e3530002 	cmp	r3, #2
    241c:	0a000003 	beq	2430 <subdir+0x2e4>
    2420:	e59f13b0 	ldr	r1, [pc, #944]	@ 27d8 <subdir+0x68c>
    2424:	e3a00001 	mov	r0, #1
    2428:	eb000971 	bl	49f4 <printf>
    242c:	eb000857 	bl	4590 <exit>
    2430:	e51b0008 	ldr	r0, [fp, #-8]
    2434:	eb000882 	bl	4644 <close>
    2438:	e3a01000 	mov	r1, #0
    243c:	e59f034c 	ldr	r0, [pc, #844]	@ 2790 <subdir+0x644>
    2440:	eb00089a 	bl	46b0 <open>
    2444:	e1a03000 	mov	r3, r0
    2448:	e3530000 	cmp	r3, #0
    244c:	ba000003 	blt	2460 <subdir+0x314>
    2450:	e59f1384 	ldr	r1, [pc, #900]	@ 27dc <subdir+0x690>
    2454:	e3a00001 	mov	r0, #1
    2458:	eb000965 	bl	49f4 <printf>
    245c:	eb00084b 	bl	4590 <exit>
    2460:	e59f1310 	ldr	r1, [pc, #784]	@ 2778 <subdir+0x62c>
    2464:	e59f0374 	ldr	r0, [pc, #884]	@ 27e0 <subdir+0x694>
    2468:	eb000890 	bl	46b0 <open>
    246c:	e1a03000 	mov	r3, r0
    2470:	e3530000 	cmp	r3, #0
    2474:	ba000003 	blt	2488 <subdir+0x33c>
    2478:	e59f1364 	ldr	r1, [pc, #868]	@ 27e4 <subdir+0x698>
    247c:	e3a00001 	mov	r0, #1
    2480:	eb00095b 	bl	49f4 <printf>
    2484:	eb000841 	bl	4590 <exit>
    2488:	e59f12e8 	ldr	r1, [pc, #744]	@ 2778 <subdir+0x62c>
    248c:	e59f0354 	ldr	r0, [pc, #852]	@ 27e8 <subdir+0x69c>
    2490:	eb000886 	bl	46b0 <open>
    2494:	e1a03000 	mov	r3, r0
    2498:	e3530000 	cmp	r3, #0
    249c:	ba000003 	blt	24b0 <subdir+0x364>
    24a0:	e59f1344 	ldr	r1, [pc, #836]	@ 27ec <subdir+0x6a0>
    24a4:	e3a00001 	mov	r0, #1
    24a8:	eb000951 	bl	49f4 <printf>
    24ac:	eb000837 	bl	4590 <exit>
    24b0:	e3a01c02 	mov	r1, #512	@ 0x200
    24b4:	e59f02b4 	ldr	r0, [pc, #692]	@ 2770 <subdir+0x624>
    24b8:	eb00087c 	bl	46b0 <open>
    24bc:	e1a03000 	mov	r3, r0
    24c0:	e3530000 	cmp	r3, #0
    24c4:	ba000003 	blt	24d8 <subdir+0x38c>
    24c8:	e59f1320 	ldr	r1, [pc, #800]	@ 27f0 <subdir+0x6a4>
    24cc:	e3a00001 	mov	r0, #1
    24d0:	eb000947 	bl	49f4 <printf>
    24d4:	eb00082d 	bl	4590 <exit>
    24d8:	e3a01002 	mov	r1, #2
    24dc:	e59f028c 	ldr	r0, [pc, #652]	@ 2770 <subdir+0x624>
    24e0:	eb000872 	bl	46b0 <open>
    24e4:	e1a03000 	mov	r3, r0
    24e8:	e3530000 	cmp	r3, #0
    24ec:	ba000003 	blt	2500 <subdir+0x3b4>
    24f0:	e59f12fc 	ldr	r1, [pc, #764]	@ 27f4 <subdir+0x6a8>
    24f4:	e3a00001 	mov	r0, #1
    24f8:	eb00093d 	bl	49f4 <printf>
    24fc:	eb000823 	bl	4590 <exit>
    2500:	e3a01001 	mov	r1, #1
    2504:	e59f0264 	ldr	r0, [pc, #612]	@ 2770 <subdir+0x624>
    2508:	eb000868 	bl	46b0 <open>
    250c:	e1a03000 	mov	r3, r0
    2510:	e3530000 	cmp	r3, #0
    2514:	ba000003 	blt	2528 <subdir+0x3dc>
    2518:	e59f12d8 	ldr	r1, [pc, #728]	@ 27f8 <subdir+0x6ac>
    251c:	e3a00001 	mov	r0, #1
    2520:	eb000933 	bl	49f4 <printf>
    2524:	eb000819 	bl	4590 <exit>
    2528:	e59f12cc 	ldr	r1, [pc, #716]	@ 27fc <subdir+0x6b0>
    252c:	e59f02ac 	ldr	r0, [pc, #684]	@ 27e0 <subdir+0x694>
    2530:	eb000882 	bl	4740 <link>
    2534:	e1a03000 	mov	r3, r0
    2538:	e3530000 	cmp	r3, #0
    253c:	1a000003 	bne	2550 <subdir+0x404>
    2540:	e59f12b8 	ldr	r1, [pc, #696]	@ 2800 <subdir+0x6b4>
    2544:	e3a00001 	mov	r0, #1
    2548:	eb000929 	bl	49f4 <printf>
    254c:	eb00080f 	bl	4590 <exit>
    2550:	e59f12a4 	ldr	r1, [pc, #676]	@ 27fc <subdir+0x6b0>
    2554:	e59f028c 	ldr	r0, [pc, #652]	@ 27e8 <subdir+0x69c>
    2558:	eb000878 	bl	4740 <link>
    255c:	e1a03000 	mov	r3, r0
    2560:	e3530000 	cmp	r3, #0
    2564:	1a000003 	bne	2578 <subdir+0x42c>
    2568:	e59f1294 	ldr	r1, [pc, #660]	@ 2804 <subdir+0x6b8>
    256c:	e3a00001 	mov	r0, #1
    2570:	eb00091f 	bl	49f4 <printf>
    2574:	eb000805 	bl	4590 <exit>
    2578:	e59f122c 	ldr	r1, [pc, #556]	@ 27ac <subdir+0x660>
    257c:	e59f01f8 	ldr	r0, [pc, #504]	@ 277c <subdir+0x630>
    2580:	eb00086e 	bl	4740 <link>
    2584:	e1a03000 	mov	r3, r0
    2588:	e3530000 	cmp	r3, #0
    258c:	1a000003 	bne	25a0 <subdir+0x454>
    2590:	e59f1270 	ldr	r1, [pc, #624]	@ 2808 <subdir+0x6bc>
    2594:	e3a00001 	mov	r0, #1
    2598:	eb000915 	bl	49f4 <printf>
    259c:	eb0007fb 	bl	4590 <exit>
    25a0:	e59f0238 	ldr	r0, [pc, #568]	@ 27e0 <subdir+0x694>
    25a4:	eb00086e 	bl	4764 <mkdir>
    25a8:	e1a03000 	mov	r3, r0
    25ac:	e3530000 	cmp	r3, #0
    25b0:	1a000003 	bne	25c4 <subdir+0x478>
    25b4:	e59f1250 	ldr	r1, [pc, #592]	@ 280c <subdir+0x6c0>
    25b8:	e3a00001 	mov	r0, #1
    25bc:	eb00090c 	bl	49f4 <printf>
    25c0:	eb0007f2 	bl	4590 <exit>
    25c4:	e59f021c 	ldr	r0, [pc, #540]	@ 27e8 <subdir+0x69c>
    25c8:	eb000865 	bl	4764 <mkdir>
    25cc:	e1a03000 	mov	r3, r0
    25d0:	e3530000 	cmp	r3, #0
    25d4:	1a000003 	bne	25e8 <subdir+0x49c>
    25d8:	e59f1230 	ldr	r1, [pc, #560]	@ 2810 <subdir+0x6c4>
    25dc:	e3a00001 	mov	r0, #1
    25e0:	eb000903 	bl	49f4 <printf>
    25e4:	eb0007e9 	bl	4590 <exit>
    25e8:	e59f01bc 	ldr	r0, [pc, #444]	@ 27ac <subdir+0x660>
    25ec:	eb00085c 	bl	4764 <mkdir>
    25f0:	e1a03000 	mov	r3, r0
    25f4:	e3530000 	cmp	r3, #0
    25f8:	1a000003 	bne	260c <subdir+0x4c0>
    25fc:	e59f1210 	ldr	r1, [pc, #528]	@ 2814 <subdir+0x6c8>
    2600:	e3a00001 	mov	r0, #1
    2604:	eb0008fa 	bl	49f4 <printf>
    2608:	eb0007e0 	bl	4590 <exit>
    260c:	e59f01d4 	ldr	r0, [pc, #468]	@ 27e8 <subdir+0x69c>
    2610:	eb000838 	bl	46f8 <unlink>
    2614:	e1a03000 	mov	r3, r0
    2618:	e3530000 	cmp	r3, #0
    261c:	1a000003 	bne	2630 <subdir+0x4e4>
    2620:	e59f11f0 	ldr	r1, [pc, #496]	@ 2818 <subdir+0x6cc>
    2624:	e3a00001 	mov	r0, #1
    2628:	eb0008f1 	bl	49f4 <printf>
    262c:	eb0007d7 	bl	4590 <exit>
    2630:	e59f01a8 	ldr	r0, [pc, #424]	@ 27e0 <subdir+0x694>
    2634:	eb00082f 	bl	46f8 <unlink>
    2638:	e1a03000 	mov	r3, r0
    263c:	e3530000 	cmp	r3, #0
    2640:	1a000003 	bne	2654 <subdir+0x508>
    2644:	e59f11d0 	ldr	r1, [pc, #464]	@ 281c <subdir+0x6d0>
    2648:	e3a00001 	mov	r0, #1
    264c:	eb0008e8 	bl	49f4 <printf>
    2650:	eb0007ce 	bl	4590 <exit>
    2654:	e59f0120 	ldr	r0, [pc, #288]	@ 277c <subdir+0x630>
    2658:	eb00084a 	bl	4788 <chdir>
    265c:	e1a03000 	mov	r3, r0
    2660:	e3530000 	cmp	r3, #0
    2664:	1a000003 	bne	2678 <subdir+0x52c>
    2668:	e59f11b0 	ldr	r1, [pc, #432]	@ 2820 <subdir+0x6d4>
    266c:	e3a00001 	mov	r0, #1
    2670:	eb0008df 	bl	49f4 <printf>
    2674:	eb0007c5 	bl	4590 <exit>
    2678:	e59f01a4 	ldr	r0, [pc, #420]	@ 2824 <subdir+0x6d8>
    267c:	eb000841 	bl	4788 <chdir>
    2680:	e1a03000 	mov	r3, r0
    2684:	e3530000 	cmp	r3, #0
    2688:	1a000003 	bne	269c <subdir+0x550>
    268c:	e59f1194 	ldr	r1, [pc, #404]	@ 2828 <subdir+0x6dc>
    2690:	e3a00001 	mov	r0, #1
    2694:	eb0008d6 	bl	49f4 <printf>
    2698:	eb0007bc 	bl	4590 <exit>
    269c:	e59f0108 	ldr	r0, [pc, #264]	@ 27ac <subdir+0x660>
    26a0:	eb000814 	bl	46f8 <unlink>
    26a4:	e1a03000 	mov	r3, r0
    26a8:	e3530000 	cmp	r3, #0
    26ac:	0a000003 	beq	26c0 <subdir+0x574>
    26b0:	e59f10fc 	ldr	r1, [pc, #252]	@ 27b4 <subdir+0x668>
    26b4:	e3a00001 	mov	r0, #1
    26b8:	eb0008cd 	bl	49f4 <printf>
    26bc:	eb0007b3 	bl	4590 <exit>
    26c0:	e59f00b4 	ldr	r0, [pc, #180]	@ 277c <subdir+0x630>
    26c4:	eb00080b 	bl	46f8 <unlink>
    26c8:	e1a03000 	mov	r3, r0
    26cc:	e3530000 	cmp	r3, #0
    26d0:	0a000003 	beq	26e4 <subdir+0x598>
    26d4:	e59f1150 	ldr	r1, [pc, #336]	@ 282c <subdir+0x6e0>
    26d8:	e3a00001 	mov	r0, #1
    26dc:	eb0008c4 	bl	49f4 <printf>
    26e0:	eb0007aa 	bl	4590 <exit>
    26e4:	e59f0084 	ldr	r0, [pc, #132]	@ 2770 <subdir+0x624>
    26e8:	eb000802 	bl	46f8 <unlink>
    26ec:	e1a03000 	mov	r3, r0
    26f0:	e3530000 	cmp	r3, #0
    26f4:	1a000003 	bne	2708 <subdir+0x5bc>
    26f8:	e59f1130 	ldr	r1, [pc, #304]	@ 2830 <subdir+0x6e4>
    26fc:	e3a00001 	mov	r0, #1
    2700:	eb0008bb 	bl	49f4 <printf>
    2704:	eb0007a1 	bl	4590 <exit>
    2708:	e59f0124 	ldr	r0, [pc, #292]	@ 2834 <subdir+0x6e8>
    270c:	eb0007f9 	bl	46f8 <unlink>
    2710:	e1a03000 	mov	r3, r0
    2714:	e3530000 	cmp	r3, #0
    2718:	aa000003 	bge	272c <subdir+0x5e0>
    271c:	e59f1114 	ldr	r1, [pc, #276]	@ 2838 <subdir+0x6ec>
    2720:	e3a00001 	mov	r0, #1
    2724:	eb0008b2 	bl	49f4 <printf>
    2728:	eb000798 	bl	4590 <exit>
    272c:	e59f003c 	ldr	r0, [pc, #60]	@ 2770 <subdir+0x624>
    2730:	eb0007f0 	bl	46f8 <unlink>
    2734:	e1a03000 	mov	r3, r0
    2738:	e3530000 	cmp	r3, #0
    273c:	aa000003 	bge	2750 <subdir+0x604>
    2740:	e59f10f4 	ldr	r1, [pc, #244]	@ 283c <subdir+0x6f0>
    2744:	e3a00001 	mov	r0, #1
    2748:	eb0008a9 	bl	49f4 <printf>
    274c:	eb00078f 	bl	4590 <exit>
    2750:	e59f10e8 	ldr	r1, [pc, #232]	@ 2840 <subdir+0x6f4>
    2754:	e3a00001 	mov	r0, #1
    2758:	eb0008a5 	bl	49f4 <printf>
    275c:	e1a00000 	nop			@ (mov r0, r0)
    2760:	e24bd004 	sub	sp, fp, #4
    2764:	e8bd8800 	pop	{fp, pc}
    2768:	00005a18 	.word	0x00005a18
    276c:	00005a28 	.word	0x00005a28
    2770:	00005a2c 	.word	0x00005a2c
    2774:	00005a30 	.word	0x00005a30
    2778:	00000202 	.word	0x00000202
    277c:	00005a48 	.word	0x00005a48
    2780:	00005a50 	.word	0x00005a50
    2784:	00005a68 	.word	0x00005a68
    2788:	00005a90 	.word	0x00005a90
    278c:	00005a98 	.word	0x00005a98
    2790:	00005ab4 	.word	0x00005ab4
    2794:	00005ac0 	.word	0x00005ac0
    2798:	00005ad8 	.word	0x00005ad8
    279c:	00005adc 	.word	0x00005adc
    27a0:	00005ae8 	.word	0x00005ae8
    27a4:	00006918 	.word	0x00006918
    27a8:	00005b04 	.word	0x00005b04
    27ac:	00005b20 	.word	0x00005b20
    27b0:	00005b2c 	.word	0x00005b2c
    27b4:	00005b50 	.word	0x00005b50
    27b8:	00005b68 	.word	0x00005b68
    27bc:	00005b8c 	.word	0x00005b8c
    27c0:	00005ba0 	.word	0x00005ba0
    27c4:	00005bac 	.word	0x00005bac
    27c8:	00005bc8 	.word	0x00005bc8
    27cc:	00005bd8 	.word	0x00005bd8
    27d0:	00005be0 	.word	0x00005be0
    27d4:	00005bf4 	.word	0x00005bf4
    27d8:	00005c0c 	.word	0x00005c0c
    27dc:	00005c28 	.word	0x00005c28
    27e0:	00005c50 	.word	0x00005c50
    27e4:	00005c5c 	.word	0x00005c5c
    27e8:	00005c78 	.word	0x00005c78
    27ec:	00005c84 	.word	0x00005c84
    27f0:	00005ca0 	.word	0x00005ca0
    27f4:	00005cb8 	.word	0x00005cb8
    27f8:	00005cd4 	.word	0x00005cd4
    27fc:	00005cf0 	.word	0x00005cf0
    2800:	00005cfc 	.word	0x00005cfc
    2804:	00005d20 	.word	0x00005d20
    2808:	00005d44 	.word	0x00005d44
    280c:	00005d68 	.word	0x00005d68
    2810:	00005d84 	.word	0x00005d84
    2814:	00005da0 	.word	0x00005da0
    2818:	00005dc0 	.word	0x00005dc0
    281c:	00005ddc 	.word	0x00005ddc
    2820:	00005df8 	.word	0x00005df8
    2824:	00005e10 	.word	0x00005e10
    2828:	00005e18 	.word	0x00005e18
    282c:	00005e30 	.word	0x00005e30
    2830:	00005e48 	.word	0x00005e48
    2834:	00005e68 	.word	0x00005e68
    2838:	00005e70 	.word	0x00005e70
    283c:	00005e88 	.word	0x00005e88
    2840:	00005e9c 	.word	0x00005e9c

00002844 <bigwrite>:
    2844:	e92d4800 	push	{fp, lr}
    2848:	e28db004 	add	fp, sp, #4
    284c:	e24dd010 	sub	sp, sp, #16
    2850:	e59f10e8 	ldr	r1, [pc, #232]	@ 2940 <bigwrite+0xfc>
    2854:	e3a00001 	mov	r0, #1
    2858:	eb000865 	bl	49f4 <printf>
    285c:	e59f00e0 	ldr	r0, [pc, #224]	@ 2944 <bigwrite+0x100>
    2860:	eb0007a4 	bl	46f8 <unlink>
    2864:	e59f30dc 	ldr	r3, [pc, #220]	@ 2948 <bigwrite+0x104>
    2868:	e50b3008 	str	r3, [fp, #-8]
    286c:	ea00002a 	b	291c <bigwrite+0xd8>
    2870:	e59f10d4 	ldr	r1, [pc, #212]	@ 294c <bigwrite+0x108>
    2874:	e59f00c8 	ldr	r0, [pc, #200]	@ 2944 <bigwrite+0x100>
    2878:	eb00078c 	bl	46b0 <open>
    287c:	e50b0010 	str	r0, [fp, #-16]
    2880:	e51b3010 	ldr	r3, [fp, #-16]
    2884:	e3530000 	cmp	r3, #0
    2888:	aa000003 	bge	289c <bigwrite+0x58>
    288c:	e59f10bc 	ldr	r1, [pc, #188]	@ 2950 <bigwrite+0x10c>
    2890:	e3a00001 	mov	r0, #1
    2894:	eb000856 	bl	49f4 <printf>
    2898:	eb00073c 	bl	4590 <exit>
    289c:	e3a03000 	mov	r3, #0
    28a0:	e50b300c 	str	r3, [fp, #-12]
    28a4:	ea000011 	b	28f0 <bigwrite+0xac>
    28a8:	e51b2008 	ldr	r2, [fp, #-8]
    28ac:	e59f10a0 	ldr	r1, [pc, #160]	@ 2954 <bigwrite+0x110>
    28b0:	e51b0010 	ldr	r0, [fp, #-16]
    28b4:	eb000759 	bl	4620 <write>
    28b8:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    28bc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    28c0:	e51b3008 	ldr	r3, [fp, #-8]
    28c4:	e1520003 	cmp	r2, r3
    28c8:	0a000005 	beq	28e4 <bigwrite+0xa0>
    28cc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    28d0:	e51b2008 	ldr	r2, [fp, #-8]
    28d4:	e59f107c 	ldr	r1, [pc, #124]	@ 2958 <bigwrite+0x114>
    28d8:	e3a00001 	mov	r0, #1
    28dc:	eb000844 	bl	49f4 <printf>
    28e0:	eb00072a 	bl	4590 <exit>
    28e4:	e51b300c 	ldr	r3, [fp, #-12]
    28e8:	e2833001 	add	r3, r3, #1
    28ec:	e50b300c 	str	r3, [fp, #-12]
    28f0:	e51b300c 	ldr	r3, [fp, #-12]
    28f4:	e3530001 	cmp	r3, #1
    28f8:	daffffea 	ble	28a8 <bigwrite+0x64>
    28fc:	e51b0010 	ldr	r0, [fp, #-16]
    2900:	eb00074f 	bl	4644 <close>
    2904:	e59f0038 	ldr	r0, [pc, #56]	@ 2944 <bigwrite+0x100>
    2908:	eb00077a 	bl	46f8 <unlink>
    290c:	e51b3008 	ldr	r3, [fp, #-8]
    2910:	e2833f75 	add	r3, r3, #468	@ 0x1d4
    2914:	e2833003 	add	r3, r3, #3
    2918:	e50b3008 	str	r3, [fp, #-8]
    291c:	e51b3008 	ldr	r3, [fp, #-8]
    2920:	e3530b06 	cmp	r3, #6144	@ 0x1800
    2924:	baffffd1 	blt	2870 <bigwrite+0x2c>
    2928:	e59f102c 	ldr	r1, [pc, #44]	@ 295c <bigwrite+0x118>
    292c:	e3a00001 	mov	r0, #1
    2930:	eb00082f 	bl	49f4 <printf>
    2934:	e1a00000 	nop			@ (mov r0, r0)
    2938:	e24bd004 	sub	sp, fp, #4
    293c:	e8bd8800 	pop	{fp, pc}
    2940:	00005ea8 	.word	0x00005ea8
    2944:	00005eb8 	.word	0x00005eb8
    2948:	000001f3 	.word	0x000001f3
    294c:	00000202 	.word	0x00000202
    2950:	00005ec4 	.word	0x00005ec4
    2954:	00006918 	.word	0x00006918
    2958:	00005edc 	.word	0x00005edc
    295c:	00005ef0 	.word	0x00005ef0

00002960 <bigfile>:
    2960:	e92d4800 	push	{fp, lr}
    2964:	e28db004 	add	fp, sp, #4
    2968:	e24dd010 	sub	sp, sp, #16
    296c:	e59f11f8 	ldr	r1, [pc, #504]	@ 2b6c <bigfile+0x20c>
    2970:	e3a00001 	mov	r0, #1
    2974:	eb00081e 	bl	49f4 <printf>
    2978:	e59f01f0 	ldr	r0, [pc, #496]	@ 2b70 <bigfile+0x210>
    297c:	eb00075d 	bl	46f8 <unlink>
    2980:	e59f11ec 	ldr	r1, [pc, #492]	@ 2b74 <bigfile+0x214>
    2984:	e59f01e4 	ldr	r0, [pc, #484]	@ 2b70 <bigfile+0x210>
    2988:	eb000748 	bl	46b0 <open>
    298c:	e50b0010 	str	r0, [fp, #-16]
    2990:	e51b3010 	ldr	r3, [fp, #-16]
    2994:	e3530000 	cmp	r3, #0
    2998:	aa000003 	bge	29ac <bigfile+0x4c>
    299c:	e59f11d4 	ldr	r1, [pc, #468]	@ 2b78 <bigfile+0x218>
    29a0:	e3a00001 	mov	r0, #1
    29a4:	eb000812 	bl	49f4 <printf>
    29a8:	eb0006f8 	bl	4590 <exit>
    29ac:	e3a03000 	mov	r3, #0
    29b0:	e50b3008 	str	r3, [fp, #-8]
    29b4:	ea000011 	b	2a00 <bigfile+0xa0>
    29b8:	e3a02f96 	mov	r2, #600	@ 0x258
    29bc:	e51b1008 	ldr	r1, [fp, #-8]
    29c0:	e59f01b4 	ldr	r0, [pc, #436]	@ 2b7c <bigfile+0x21c>
    29c4:	eb0005ff 	bl	41c8 <memset>
    29c8:	e3a02f96 	mov	r2, #600	@ 0x258
    29cc:	e59f11a8 	ldr	r1, [pc, #424]	@ 2b7c <bigfile+0x21c>
    29d0:	e51b0010 	ldr	r0, [fp, #-16]
    29d4:	eb000711 	bl	4620 <write>
    29d8:	e1a03000 	mov	r3, r0
    29dc:	e3530f96 	cmp	r3, #600	@ 0x258
    29e0:	0a000003 	beq	29f4 <bigfile+0x94>
    29e4:	e59f1194 	ldr	r1, [pc, #404]	@ 2b80 <bigfile+0x220>
    29e8:	e3a00001 	mov	r0, #1
    29ec:	eb000800 	bl	49f4 <printf>
    29f0:	eb0006e6 	bl	4590 <exit>
    29f4:	e51b3008 	ldr	r3, [fp, #-8]
    29f8:	e2833001 	add	r3, r3, #1
    29fc:	e50b3008 	str	r3, [fp, #-8]
    2a00:	e51b3008 	ldr	r3, [fp, #-8]
    2a04:	e3530013 	cmp	r3, #19
    2a08:	daffffea 	ble	29b8 <bigfile+0x58>
    2a0c:	e51b0010 	ldr	r0, [fp, #-16]
    2a10:	eb00070b 	bl	4644 <close>
    2a14:	e3a01000 	mov	r1, #0
    2a18:	e59f0150 	ldr	r0, [pc, #336]	@ 2b70 <bigfile+0x210>
    2a1c:	eb000723 	bl	46b0 <open>
    2a20:	e50b0010 	str	r0, [fp, #-16]
    2a24:	e51b3010 	ldr	r3, [fp, #-16]
    2a28:	e3530000 	cmp	r3, #0
    2a2c:	aa000003 	bge	2a40 <bigfile+0xe0>
    2a30:	e59f114c 	ldr	r1, [pc, #332]	@ 2b84 <bigfile+0x224>
    2a34:	e3a00001 	mov	r0, #1
    2a38:	eb0007ed 	bl	49f4 <printf>
    2a3c:	eb0006d3 	bl	4590 <exit>
    2a40:	e3a03000 	mov	r3, #0
    2a44:	e50b300c 	str	r3, [fp, #-12]
    2a48:	e3a03000 	mov	r3, #0
    2a4c:	e50b3008 	str	r3, [fp, #-8]
    2a50:	e3a02f4b 	mov	r2, #300	@ 0x12c
    2a54:	e59f1120 	ldr	r1, [pc, #288]	@ 2b7c <bigfile+0x21c>
    2a58:	e51b0010 	ldr	r0, [fp, #-16]
    2a5c:	eb0006e6 	bl	45fc <read>
    2a60:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    2a64:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a68:	e3530000 	cmp	r3, #0
    2a6c:	aa000003 	bge	2a80 <bigfile+0x120>
    2a70:	e59f1110 	ldr	r1, [pc, #272]	@ 2b88 <bigfile+0x228>
    2a74:	e3a00001 	mov	r0, #1
    2a78:	eb0007dd 	bl	49f4 <printf>
    2a7c:	eb0006c3 	bl	4590 <exit>
    2a80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a84:	e3530000 	cmp	r3, #0
    2a88:	0a000024 	beq	2b20 <bigfile+0x1c0>
    2a8c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2a90:	e3530f4b 	cmp	r3, #300	@ 0x12c
    2a94:	0a000003 	beq	2aa8 <bigfile+0x148>
    2a98:	e59f10ec 	ldr	r1, [pc, #236]	@ 2b8c <bigfile+0x22c>
    2a9c:	e3a00001 	mov	r0, #1
    2aa0:	eb0007d3 	bl	49f4 <printf>
    2aa4:	eb0006b9 	bl	4590 <exit>
    2aa8:	e59f30cc 	ldr	r3, [pc, #204]	@ 2b7c <bigfile+0x21c>
    2aac:	e5d33000 	ldrb	r3, [r3]
    2ab0:	e1a01003 	mov	r1, r3
    2ab4:	e51b3008 	ldr	r3, [fp, #-8]
    2ab8:	e1a02fa3 	lsr	r2, r3, #31
    2abc:	e0823003 	add	r3, r2, r3
    2ac0:	e1a030c3 	asr	r3, r3, #1
    2ac4:	e1510003 	cmp	r1, r3
    2ac8:	1a000008 	bne	2af0 <bigfile+0x190>
    2acc:	e59f30a8 	ldr	r3, [pc, #168]	@ 2b7c <bigfile+0x21c>
    2ad0:	e5d3312b 	ldrb	r3, [r3, #299]	@ 0x12b
    2ad4:	e1a01003 	mov	r1, r3
    2ad8:	e51b3008 	ldr	r3, [fp, #-8]
    2adc:	e1a02fa3 	lsr	r2, r3, #31
    2ae0:	e0823003 	add	r3, r2, r3
    2ae4:	e1a030c3 	asr	r3, r3, #1
    2ae8:	e1510003 	cmp	r1, r3
    2aec:	0a000003 	beq	2b00 <bigfile+0x1a0>
    2af0:	e59f1098 	ldr	r1, [pc, #152]	@ 2b90 <bigfile+0x230>
    2af4:	e3a00001 	mov	r0, #1
    2af8:	eb0007bd 	bl	49f4 <printf>
    2afc:	eb0006a3 	bl	4590 <exit>
    2b00:	e51b200c 	ldr	r2, [fp, #-12]
    2b04:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    2b08:	e0823003 	add	r3, r2, r3
    2b0c:	e50b300c 	str	r3, [fp, #-12]
    2b10:	e51b3008 	ldr	r3, [fp, #-8]
    2b14:	e2833001 	add	r3, r3, #1
    2b18:	e50b3008 	str	r3, [fp, #-8]
    2b1c:	eaffffcb 	b	2a50 <bigfile+0xf0>
    2b20:	e1a00000 	nop			@ (mov r0, r0)
    2b24:	e51b0010 	ldr	r0, [fp, #-16]
    2b28:	eb0006c5 	bl	4644 <close>
    2b2c:	e51b300c 	ldr	r3, [fp, #-12]
    2b30:	e59f205c 	ldr	r2, [pc, #92]	@ 2b94 <bigfile+0x234>
    2b34:	e1530002 	cmp	r3, r2
    2b38:	0a000003 	beq	2b4c <bigfile+0x1ec>
    2b3c:	e59f1054 	ldr	r1, [pc, #84]	@ 2b98 <bigfile+0x238>
    2b40:	e3a00001 	mov	r0, #1
    2b44:	eb0007aa 	bl	49f4 <printf>
    2b48:	eb000690 	bl	4590 <exit>
    2b4c:	e59f001c 	ldr	r0, [pc, #28]	@ 2b70 <bigfile+0x210>
    2b50:	eb0006e8 	bl	46f8 <unlink>
    2b54:	e59f1040 	ldr	r1, [pc, #64]	@ 2b9c <bigfile+0x23c>
    2b58:	e3a00001 	mov	r0, #1
    2b5c:	eb0007a4 	bl	49f4 <printf>
    2b60:	e1a00000 	nop			@ (mov r0, r0)
    2b64:	e24bd004 	sub	sp, fp, #4
    2b68:	e8bd8800 	pop	{fp, pc}
    2b6c:	00005f00 	.word	0x00005f00
    2b70:	00005f10 	.word	0x00005f10
    2b74:	00000202 	.word	0x00000202
    2b78:	00005f18 	.word	0x00005f18
    2b7c:	00006918 	.word	0x00006918
    2b80:	00005f30 	.word	0x00005f30
    2b84:	00005f48 	.word	0x00005f48
    2b88:	00005f60 	.word	0x00005f60
    2b8c:	00005f78 	.word	0x00005f78
    2b90:	00005f8c 	.word	0x00005f8c
    2b94:	00002ee0 	.word	0x00002ee0
    2b98:	00005fa8 	.word	0x00005fa8
    2b9c:	00005fc4 	.word	0x00005fc4

00002ba0 <fourteen>:
    2ba0:	e92d4800 	push	{fp, lr}
    2ba4:	e28db004 	add	fp, sp, #4
    2ba8:	e24dd008 	sub	sp, sp, #8
    2bac:	e59f1114 	ldr	r1, [pc, #276]	@ 2cc8 <fourteen+0x128>
    2bb0:	e3a00001 	mov	r0, #1
    2bb4:	eb00078e 	bl	49f4 <printf>
    2bb8:	e59f010c 	ldr	r0, [pc, #268]	@ 2ccc <fourteen+0x12c>
    2bbc:	eb0006e8 	bl	4764 <mkdir>
    2bc0:	e1a03000 	mov	r3, r0
    2bc4:	e3530000 	cmp	r3, #0
    2bc8:	0a000003 	beq	2bdc <fourteen+0x3c>
    2bcc:	e59f10fc 	ldr	r1, [pc, #252]	@ 2cd0 <fourteen+0x130>
    2bd0:	e3a00001 	mov	r0, #1
    2bd4:	eb000786 	bl	49f4 <printf>
    2bd8:	eb00066c 	bl	4590 <exit>
    2bdc:	e59f00f0 	ldr	r0, [pc, #240]	@ 2cd4 <fourteen+0x134>
    2be0:	eb0006df 	bl	4764 <mkdir>
    2be4:	e1a03000 	mov	r3, r0
    2be8:	e3530000 	cmp	r3, #0
    2bec:	0a000003 	beq	2c00 <fourteen+0x60>
    2bf0:	e59f10e0 	ldr	r1, [pc, #224]	@ 2cd8 <fourteen+0x138>
    2bf4:	e3a00001 	mov	r0, #1
    2bf8:	eb00077d 	bl	49f4 <printf>
    2bfc:	eb000663 	bl	4590 <exit>
    2c00:	e3a01c02 	mov	r1, #512	@ 0x200
    2c04:	e59f00d0 	ldr	r0, [pc, #208]	@ 2cdc <fourteen+0x13c>
    2c08:	eb0006a8 	bl	46b0 <open>
    2c0c:	e50b0008 	str	r0, [fp, #-8]
    2c10:	e51b3008 	ldr	r3, [fp, #-8]
    2c14:	e3530000 	cmp	r3, #0
    2c18:	aa000003 	bge	2c2c <fourteen+0x8c>
    2c1c:	e59f10bc 	ldr	r1, [pc, #188]	@ 2ce0 <fourteen+0x140>
    2c20:	e3a00001 	mov	r0, #1
    2c24:	eb000772 	bl	49f4 <printf>
    2c28:	eb000658 	bl	4590 <exit>
    2c2c:	e51b0008 	ldr	r0, [fp, #-8]
    2c30:	eb000683 	bl	4644 <close>
    2c34:	e3a01000 	mov	r1, #0
    2c38:	e59f00a4 	ldr	r0, [pc, #164]	@ 2ce4 <fourteen+0x144>
    2c3c:	eb00069b 	bl	46b0 <open>
    2c40:	e50b0008 	str	r0, [fp, #-8]
    2c44:	e51b3008 	ldr	r3, [fp, #-8]
    2c48:	e3530000 	cmp	r3, #0
    2c4c:	aa000003 	bge	2c60 <fourteen+0xc0>
    2c50:	e59f1090 	ldr	r1, [pc, #144]	@ 2ce8 <fourteen+0x148>
    2c54:	e3a00001 	mov	r0, #1
    2c58:	eb000765 	bl	49f4 <printf>
    2c5c:	eb00064b 	bl	4590 <exit>
    2c60:	e51b0008 	ldr	r0, [fp, #-8]
    2c64:	eb000676 	bl	4644 <close>
    2c68:	e59f007c 	ldr	r0, [pc, #124]	@ 2cec <fourteen+0x14c>
    2c6c:	eb0006bc 	bl	4764 <mkdir>
    2c70:	e1a03000 	mov	r3, r0
    2c74:	e3530000 	cmp	r3, #0
    2c78:	1a000003 	bne	2c8c <fourteen+0xec>
    2c7c:	e59f106c 	ldr	r1, [pc, #108]	@ 2cf0 <fourteen+0x150>
    2c80:	e3a00001 	mov	r0, #1
    2c84:	eb00075a 	bl	49f4 <printf>
    2c88:	eb000640 	bl	4590 <exit>
    2c8c:	e59f0060 	ldr	r0, [pc, #96]	@ 2cf4 <fourteen+0x154>
    2c90:	eb0006b3 	bl	4764 <mkdir>
    2c94:	e1a03000 	mov	r3, r0
    2c98:	e3530000 	cmp	r3, #0
    2c9c:	1a000003 	bne	2cb0 <fourteen+0x110>
    2ca0:	e59f1050 	ldr	r1, [pc, #80]	@ 2cf8 <fourteen+0x158>
    2ca4:	e3a00001 	mov	r0, #1
    2ca8:	eb000751 	bl	49f4 <printf>
    2cac:	eb000637 	bl	4590 <exit>
    2cb0:	e59f1044 	ldr	r1, [pc, #68]	@ 2cfc <fourteen+0x15c>
    2cb4:	e3a00001 	mov	r0, #1
    2cb8:	eb00074d 	bl	49f4 <printf>
    2cbc:	e1a00000 	nop			@ (mov r0, r0)
    2cc0:	e24bd004 	sub	sp, fp, #4
    2cc4:	e8bd8800 	pop	{fp, pc}
    2cc8:	00005fd8 	.word	0x00005fd8
    2ccc:	00005fe8 	.word	0x00005fe8
    2cd0:	00005ff8 	.word	0x00005ff8
    2cd4:	00006018 	.word	0x00006018
    2cd8:	00006038 	.word	0x00006038
    2cdc:	00006068 	.word	0x00006068
    2ce0:	00006098 	.word	0x00006098
    2ce4:	000060d8 	.word	0x000060d8
    2ce8:	00006108 	.word	0x00006108
    2cec:	00006144 	.word	0x00006144
    2cf0:	00006164 	.word	0x00006164
    2cf4:	00006194 	.word	0x00006194
    2cf8:	000061b4 	.word	0x000061b4
    2cfc:	000061e8 	.word	0x000061e8

00002d00 <rmdot>:
    2d00:	e92d4800 	push	{fp, lr}
    2d04:	e28db004 	add	fp, sp, #4
    2d08:	e59f1138 	ldr	r1, [pc, #312]	@ 2e48 <rmdot+0x148>
    2d0c:	e3a00001 	mov	r0, #1
    2d10:	eb000737 	bl	49f4 <printf>
    2d14:	e59f0130 	ldr	r0, [pc, #304]	@ 2e4c <rmdot+0x14c>
    2d18:	eb000691 	bl	4764 <mkdir>
    2d1c:	e1a03000 	mov	r3, r0
    2d20:	e3530000 	cmp	r3, #0
    2d24:	0a000003 	beq	2d38 <rmdot+0x38>
    2d28:	e59f1120 	ldr	r1, [pc, #288]	@ 2e50 <rmdot+0x150>
    2d2c:	e3a00001 	mov	r0, #1
    2d30:	eb00072f 	bl	49f4 <printf>
    2d34:	eb000615 	bl	4590 <exit>
    2d38:	e59f010c 	ldr	r0, [pc, #268]	@ 2e4c <rmdot+0x14c>
    2d3c:	eb000691 	bl	4788 <chdir>
    2d40:	e1a03000 	mov	r3, r0
    2d44:	e3530000 	cmp	r3, #0
    2d48:	0a000003 	beq	2d5c <rmdot+0x5c>
    2d4c:	e59f1100 	ldr	r1, [pc, #256]	@ 2e54 <rmdot+0x154>
    2d50:	e3a00001 	mov	r0, #1
    2d54:	eb000726 	bl	49f4 <printf>
    2d58:	eb00060c 	bl	4590 <exit>
    2d5c:	e59f00f4 	ldr	r0, [pc, #244]	@ 2e58 <rmdot+0x158>
    2d60:	eb000664 	bl	46f8 <unlink>
    2d64:	e1a03000 	mov	r3, r0
    2d68:	e3530000 	cmp	r3, #0
    2d6c:	1a000003 	bne	2d80 <rmdot+0x80>
    2d70:	e59f10e4 	ldr	r1, [pc, #228]	@ 2e5c <rmdot+0x15c>
    2d74:	e3a00001 	mov	r0, #1
    2d78:	eb00071d 	bl	49f4 <printf>
    2d7c:	eb000603 	bl	4590 <exit>
    2d80:	e59f00d8 	ldr	r0, [pc, #216]	@ 2e60 <rmdot+0x160>
    2d84:	eb00065b 	bl	46f8 <unlink>
    2d88:	e1a03000 	mov	r3, r0
    2d8c:	e3530000 	cmp	r3, #0
    2d90:	1a000003 	bne	2da4 <rmdot+0xa4>
    2d94:	e59f10c8 	ldr	r1, [pc, #200]	@ 2e64 <rmdot+0x164>
    2d98:	e3a00001 	mov	r0, #1
    2d9c:	eb000714 	bl	49f4 <printf>
    2da0:	eb0005fa 	bl	4590 <exit>
    2da4:	e59f00bc 	ldr	r0, [pc, #188]	@ 2e68 <rmdot+0x168>
    2da8:	eb000676 	bl	4788 <chdir>
    2dac:	e1a03000 	mov	r3, r0
    2db0:	e3530000 	cmp	r3, #0
    2db4:	0a000003 	beq	2dc8 <rmdot+0xc8>
    2db8:	e59f10ac 	ldr	r1, [pc, #172]	@ 2e6c <rmdot+0x16c>
    2dbc:	e3a00001 	mov	r0, #1
    2dc0:	eb00070b 	bl	49f4 <printf>
    2dc4:	eb0005f1 	bl	4590 <exit>
    2dc8:	e59f00a0 	ldr	r0, [pc, #160]	@ 2e70 <rmdot+0x170>
    2dcc:	eb000649 	bl	46f8 <unlink>
    2dd0:	e1a03000 	mov	r3, r0
    2dd4:	e3530000 	cmp	r3, #0
    2dd8:	1a000003 	bne	2dec <rmdot+0xec>
    2ddc:	e59f1090 	ldr	r1, [pc, #144]	@ 2e74 <rmdot+0x174>
    2de0:	e3a00001 	mov	r0, #1
    2de4:	eb000702 	bl	49f4 <printf>
    2de8:	eb0005e8 	bl	4590 <exit>
    2dec:	e59f0084 	ldr	r0, [pc, #132]	@ 2e78 <rmdot+0x178>
    2df0:	eb000640 	bl	46f8 <unlink>
    2df4:	e1a03000 	mov	r3, r0
    2df8:	e3530000 	cmp	r3, #0
    2dfc:	1a000003 	bne	2e10 <rmdot+0x110>
    2e00:	e59f1074 	ldr	r1, [pc, #116]	@ 2e7c <rmdot+0x17c>
    2e04:	e3a00001 	mov	r0, #1
    2e08:	eb0006f9 	bl	49f4 <printf>
    2e0c:	eb0005df 	bl	4590 <exit>
    2e10:	e59f0034 	ldr	r0, [pc, #52]	@ 2e4c <rmdot+0x14c>
    2e14:	eb000637 	bl	46f8 <unlink>
    2e18:	e1a03000 	mov	r3, r0
    2e1c:	e3530000 	cmp	r3, #0
    2e20:	0a000003 	beq	2e34 <rmdot+0x134>
    2e24:	e59f1054 	ldr	r1, [pc, #84]	@ 2e80 <rmdot+0x180>
    2e28:	e3a00001 	mov	r0, #1
    2e2c:	eb0006f0 	bl	49f4 <printf>
    2e30:	eb0005d6 	bl	4590 <exit>
    2e34:	e59f1048 	ldr	r1, [pc, #72]	@ 2e84 <rmdot+0x184>
    2e38:	e3a00001 	mov	r0, #1
    2e3c:	eb0006ec 	bl	49f4 <printf>
    2e40:	e1a00000 	nop			@ (mov r0, r0)
    2e44:	e8bd8800 	pop	{fp, pc}
    2e48:	000061f8 	.word	0x000061f8
    2e4c:	00006204 	.word	0x00006204
    2e50:	0000620c 	.word	0x0000620c
    2e54:	00006220 	.word	0x00006220
    2e58:	000058ac 	.word	0x000058ac
    2e5c:	00006234 	.word	0x00006234
    2e60:	000053dc 	.word	0x000053dc
    2e64:	00006244 	.word	0x00006244
    2e68:	00006254 	.word	0x00006254
    2e6c:	00006258 	.word	0x00006258
    2e70:	00006268 	.word	0x00006268
    2e74:	00006270 	.word	0x00006270
    2e78:	00006288 	.word	0x00006288
    2e7c:	00006290 	.word	0x00006290
    2e80:	000062a8 	.word	0x000062a8
    2e84:	000062c0 	.word	0x000062c0

00002e88 <dirfile>:
    2e88:	e92d4800 	push	{fp, lr}
    2e8c:	e28db004 	add	fp, sp, #4
    2e90:	e24dd008 	sub	sp, sp, #8
    2e94:	e59f11d0 	ldr	r1, [pc, #464]	@ 306c <dirfile+0x1e4>
    2e98:	e3a00001 	mov	r0, #1
    2e9c:	eb0006d4 	bl	49f4 <printf>
    2ea0:	e3a01c02 	mov	r1, #512	@ 0x200
    2ea4:	e59f01c4 	ldr	r0, [pc, #452]	@ 3070 <dirfile+0x1e8>
    2ea8:	eb000600 	bl	46b0 <open>
    2eac:	e50b0008 	str	r0, [fp, #-8]
    2eb0:	e51b3008 	ldr	r3, [fp, #-8]
    2eb4:	e3530000 	cmp	r3, #0
    2eb8:	aa000003 	bge	2ecc <dirfile+0x44>
    2ebc:	e59f11b0 	ldr	r1, [pc, #432]	@ 3074 <dirfile+0x1ec>
    2ec0:	e3a00001 	mov	r0, #1
    2ec4:	eb0006ca 	bl	49f4 <printf>
    2ec8:	eb0005b0 	bl	4590 <exit>
    2ecc:	e51b0008 	ldr	r0, [fp, #-8]
    2ed0:	eb0005db 	bl	4644 <close>
    2ed4:	e59f0194 	ldr	r0, [pc, #404]	@ 3070 <dirfile+0x1e8>
    2ed8:	eb00062a 	bl	4788 <chdir>
    2edc:	e1a03000 	mov	r3, r0
    2ee0:	e3530000 	cmp	r3, #0
    2ee4:	1a000003 	bne	2ef8 <dirfile+0x70>
    2ee8:	e59f1188 	ldr	r1, [pc, #392]	@ 3078 <dirfile+0x1f0>
    2eec:	e3a00001 	mov	r0, #1
    2ef0:	eb0006bf 	bl	49f4 <printf>
    2ef4:	eb0005a5 	bl	4590 <exit>
    2ef8:	e3a01000 	mov	r1, #0
    2efc:	e59f0178 	ldr	r0, [pc, #376]	@ 307c <dirfile+0x1f4>
    2f00:	eb0005ea 	bl	46b0 <open>
    2f04:	e50b0008 	str	r0, [fp, #-8]
    2f08:	e51b3008 	ldr	r3, [fp, #-8]
    2f0c:	e3530000 	cmp	r3, #0
    2f10:	ba000003 	blt	2f24 <dirfile+0x9c>
    2f14:	e59f1164 	ldr	r1, [pc, #356]	@ 3080 <dirfile+0x1f8>
    2f18:	e3a00001 	mov	r0, #1
    2f1c:	eb0006b4 	bl	49f4 <printf>
    2f20:	eb00059a 	bl	4590 <exit>
    2f24:	e3a01c02 	mov	r1, #512	@ 0x200
    2f28:	e59f014c 	ldr	r0, [pc, #332]	@ 307c <dirfile+0x1f4>
    2f2c:	eb0005df 	bl	46b0 <open>
    2f30:	e50b0008 	str	r0, [fp, #-8]
    2f34:	e51b3008 	ldr	r3, [fp, #-8]
    2f38:	e3530000 	cmp	r3, #0
    2f3c:	ba000003 	blt	2f50 <dirfile+0xc8>
    2f40:	e59f1138 	ldr	r1, [pc, #312]	@ 3080 <dirfile+0x1f8>
    2f44:	e3a00001 	mov	r0, #1
    2f48:	eb0006a9 	bl	49f4 <printf>
    2f4c:	eb00058f 	bl	4590 <exit>
    2f50:	e59f0124 	ldr	r0, [pc, #292]	@ 307c <dirfile+0x1f4>
    2f54:	eb000602 	bl	4764 <mkdir>
    2f58:	e1a03000 	mov	r3, r0
    2f5c:	e3530000 	cmp	r3, #0
    2f60:	1a000003 	bne	2f74 <dirfile+0xec>
    2f64:	e59f1118 	ldr	r1, [pc, #280]	@ 3084 <dirfile+0x1fc>
    2f68:	e3a00001 	mov	r0, #1
    2f6c:	eb0006a0 	bl	49f4 <printf>
    2f70:	eb000586 	bl	4590 <exit>
    2f74:	e59f0100 	ldr	r0, [pc, #256]	@ 307c <dirfile+0x1f4>
    2f78:	eb0005de 	bl	46f8 <unlink>
    2f7c:	e1a03000 	mov	r3, r0
    2f80:	e3530000 	cmp	r3, #0
    2f84:	1a000003 	bne	2f98 <dirfile+0x110>
    2f88:	e59f10f8 	ldr	r1, [pc, #248]	@ 3088 <dirfile+0x200>
    2f8c:	e3a00001 	mov	r0, #1
    2f90:	eb000697 	bl	49f4 <printf>
    2f94:	eb00057d 	bl	4590 <exit>
    2f98:	e59f10dc 	ldr	r1, [pc, #220]	@ 307c <dirfile+0x1f4>
    2f9c:	e59f00e8 	ldr	r0, [pc, #232]	@ 308c <dirfile+0x204>
    2fa0:	eb0005e6 	bl	4740 <link>
    2fa4:	e1a03000 	mov	r3, r0
    2fa8:	e3530000 	cmp	r3, #0
    2fac:	1a000003 	bne	2fc0 <dirfile+0x138>
    2fb0:	e59f10d8 	ldr	r1, [pc, #216]	@ 3090 <dirfile+0x208>
    2fb4:	e3a00001 	mov	r0, #1
    2fb8:	eb00068d 	bl	49f4 <printf>
    2fbc:	eb000573 	bl	4590 <exit>
    2fc0:	e59f00a8 	ldr	r0, [pc, #168]	@ 3070 <dirfile+0x1e8>
    2fc4:	eb0005cb 	bl	46f8 <unlink>
    2fc8:	e1a03000 	mov	r3, r0
    2fcc:	e3530000 	cmp	r3, #0
    2fd0:	0a000003 	beq	2fe4 <dirfile+0x15c>
    2fd4:	e59f10b8 	ldr	r1, [pc, #184]	@ 3094 <dirfile+0x20c>
    2fd8:	e3a00001 	mov	r0, #1
    2fdc:	eb000684 	bl	49f4 <printf>
    2fe0:	eb00056a 	bl	4590 <exit>
    2fe4:	e3a01002 	mov	r1, #2
    2fe8:	e59f00a8 	ldr	r0, [pc, #168]	@ 3098 <dirfile+0x210>
    2fec:	eb0005af 	bl	46b0 <open>
    2ff0:	e50b0008 	str	r0, [fp, #-8]
    2ff4:	e51b3008 	ldr	r3, [fp, #-8]
    2ff8:	e3530000 	cmp	r3, #0
    2ffc:	ba000003 	blt	3010 <dirfile+0x188>
    3000:	e59f1094 	ldr	r1, [pc, #148]	@ 309c <dirfile+0x214>
    3004:	e3a00001 	mov	r0, #1
    3008:	eb000679 	bl	49f4 <printf>
    300c:	eb00055f 	bl	4590 <exit>
    3010:	e3a01000 	mov	r1, #0
    3014:	e59f007c 	ldr	r0, [pc, #124]	@ 3098 <dirfile+0x210>
    3018:	eb0005a4 	bl	46b0 <open>
    301c:	e50b0008 	str	r0, [fp, #-8]
    3020:	e3a02001 	mov	r2, #1
    3024:	e59f1074 	ldr	r1, [pc, #116]	@ 30a0 <dirfile+0x218>
    3028:	e51b0008 	ldr	r0, [fp, #-8]
    302c:	eb00057b 	bl	4620 <write>
    3030:	e1a03000 	mov	r3, r0
    3034:	e3530000 	cmp	r3, #0
    3038:	da000003 	ble	304c <dirfile+0x1c4>
    303c:	e59f1060 	ldr	r1, [pc, #96]	@ 30a4 <dirfile+0x21c>
    3040:	e3a00001 	mov	r0, #1
    3044:	eb00066a 	bl	49f4 <printf>
    3048:	eb000550 	bl	4590 <exit>
    304c:	e51b0008 	ldr	r0, [fp, #-8]
    3050:	eb00057b 	bl	4644 <close>
    3054:	e59f104c 	ldr	r1, [pc, #76]	@ 30a8 <dirfile+0x220>
    3058:	e3a00001 	mov	r0, #1
    305c:	eb000664 	bl	49f4 <printf>
    3060:	e1a00000 	nop			@ (mov r0, r0)
    3064:	e24bd004 	sub	sp, fp, #4
    3068:	e8bd8800 	pop	{fp, pc}
    306c:	000062cc 	.word	0x000062cc
    3070:	000062dc 	.word	0x000062dc
    3074:	000062e4 	.word	0x000062e4
    3078:	000062fc 	.word	0x000062fc
    307c:	00006318 	.word	0x00006318
    3080:	00006324 	.word	0x00006324
    3084:	00006344 	.word	0x00006344
    3088:	00006364 	.word	0x00006364
    308c:	00006384 	.word	0x00006384
    3090:	0000638c 	.word	0x0000638c
    3094:	000063ac 	.word	0x000063ac
    3098:	000058ac 	.word	0x000058ac
    309c:	000063c4 	.word	0x000063c4
    30a0:	00005498 	.word	0x00005498
    30a4:	000063e4 	.word	0x000063e4
    30a8:	000063f8 	.word	0x000063f8

000030ac <iref>:
    30ac:	e92d4800 	push	{fp, lr}
    30b0:	e28db004 	add	fp, sp, #4
    30b4:	e24dd008 	sub	sp, sp, #8
    30b8:	e59f10f4 	ldr	r1, [pc, #244]	@ 31b4 <iref+0x108>
    30bc:	e3a00001 	mov	r0, #1
    30c0:	eb00064b 	bl	49f4 <printf>
    30c4:	e3a03000 	mov	r3, #0
    30c8:	e50b3008 	str	r3, [fp, #-8]
    30cc:	ea00002d 	b	3188 <iref+0xdc>
    30d0:	e59f00e0 	ldr	r0, [pc, #224]	@ 31b8 <iref+0x10c>
    30d4:	eb0005a2 	bl	4764 <mkdir>
    30d8:	e1a03000 	mov	r3, r0
    30dc:	e3530000 	cmp	r3, #0
    30e0:	0a000003 	beq	30f4 <iref+0x48>
    30e4:	e59f10d0 	ldr	r1, [pc, #208]	@ 31bc <iref+0x110>
    30e8:	e3a00001 	mov	r0, #1
    30ec:	eb000640 	bl	49f4 <printf>
    30f0:	eb000526 	bl	4590 <exit>
    30f4:	e59f00bc 	ldr	r0, [pc, #188]	@ 31b8 <iref+0x10c>
    30f8:	eb0005a2 	bl	4788 <chdir>
    30fc:	e1a03000 	mov	r3, r0
    3100:	e3530000 	cmp	r3, #0
    3104:	0a000003 	beq	3118 <iref+0x6c>
    3108:	e59f10b0 	ldr	r1, [pc, #176]	@ 31c0 <iref+0x114>
    310c:	e3a00001 	mov	r0, #1
    3110:	eb000637 	bl	49f4 <printf>
    3114:	eb00051d 	bl	4590 <exit>
    3118:	e59f00a4 	ldr	r0, [pc, #164]	@ 31c4 <iref+0x118>
    311c:	eb000590 	bl	4764 <mkdir>
    3120:	e59f109c 	ldr	r1, [pc, #156]	@ 31c4 <iref+0x118>
    3124:	e59f009c 	ldr	r0, [pc, #156]	@ 31c8 <iref+0x11c>
    3128:	eb000584 	bl	4740 <link>
    312c:	e3a01c02 	mov	r1, #512	@ 0x200
    3130:	e59f008c 	ldr	r0, [pc, #140]	@ 31c4 <iref+0x118>
    3134:	eb00055d 	bl	46b0 <open>
    3138:	e50b000c 	str	r0, [fp, #-12]
    313c:	e51b300c 	ldr	r3, [fp, #-12]
    3140:	e3530000 	cmp	r3, #0
    3144:	ba000001 	blt	3150 <iref+0xa4>
    3148:	e51b000c 	ldr	r0, [fp, #-12]
    314c:	eb00053c 	bl	4644 <close>
    3150:	e3a01c02 	mov	r1, #512	@ 0x200
    3154:	e59f0070 	ldr	r0, [pc, #112]	@ 31cc <iref+0x120>
    3158:	eb000554 	bl	46b0 <open>
    315c:	e50b000c 	str	r0, [fp, #-12]
    3160:	e51b300c 	ldr	r3, [fp, #-12]
    3164:	e3530000 	cmp	r3, #0
    3168:	ba000001 	blt	3174 <iref+0xc8>
    316c:	e51b000c 	ldr	r0, [fp, #-12]
    3170:	eb000533 	bl	4644 <close>
    3174:	e59f0050 	ldr	r0, [pc, #80]	@ 31cc <iref+0x120>
    3178:	eb00055e 	bl	46f8 <unlink>
    317c:	e51b3008 	ldr	r3, [fp, #-8]
    3180:	e2833001 	add	r3, r3, #1
    3184:	e50b3008 	str	r3, [fp, #-8]
    3188:	e51b3008 	ldr	r3, [fp, #-8]
    318c:	e3530032 	cmp	r3, #50	@ 0x32
    3190:	daffffce 	ble	30d0 <iref+0x24>
    3194:	e59f0034 	ldr	r0, [pc, #52]	@ 31d0 <iref+0x124>
    3198:	eb00057a 	bl	4788 <chdir>
    319c:	e59f1030 	ldr	r1, [pc, #48]	@ 31d4 <iref+0x128>
    31a0:	e3a00001 	mov	r0, #1
    31a4:	eb000612 	bl	49f4 <printf>
    31a8:	e1a00000 	nop			@ (mov r0, r0)
    31ac:	e24bd004 	sub	sp, fp, #4
    31b0:	e8bd8800 	pop	{fp, pc}
    31b4:	00006408 	.word	0x00006408
    31b8:	0000641c 	.word	0x0000641c
    31bc:	00006424 	.word	0x00006424
    31c0:	00006438 	.word	0x00006438
    31c4:	0000644c 	.word	0x0000644c
    31c8:	00006384 	.word	0x00006384
    31cc:	00006450 	.word	0x00006450
    31d0:	00006254 	.word	0x00006254
    31d4:	00006454 	.word	0x00006454

000031d8 <forktest>:
    31d8:	e92d4800 	push	{fp, lr}
    31dc:	e28db004 	add	fp, sp, #4
    31e0:	e24dd008 	sub	sp, sp, #8
    31e4:	e59f10e0 	ldr	r1, [pc, #224]	@ 32cc <forktest+0xf4>
    31e8:	e3a00001 	mov	r0, #1
    31ec:	eb000600 	bl	49f4 <printf>
    31f0:	e3a03000 	mov	r3, #0
    31f4:	e50b3008 	str	r3, [fp, #-8]
    31f8:	ea00000b 	b	322c <forktest+0x54>
    31fc:	eb0004da 	bl	456c <fork>
    3200:	e50b000c 	str	r0, [fp, #-12]
    3204:	e51b300c 	ldr	r3, [fp, #-12]
    3208:	e3530000 	cmp	r3, #0
    320c:	ba00000a 	blt	323c <forktest+0x64>
    3210:	e51b300c 	ldr	r3, [fp, #-12]
    3214:	e3530000 	cmp	r3, #0
    3218:	1a000000 	bne	3220 <forktest+0x48>
    321c:	eb0004db 	bl	4590 <exit>
    3220:	e51b3008 	ldr	r3, [fp, #-8]
    3224:	e2833001 	add	r3, r3, #1
    3228:	e50b3008 	str	r3, [fp, #-8]
    322c:	e51b3008 	ldr	r3, [fp, #-8]
    3230:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    3234:	bafffff0 	blt	31fc <forktest+0x24>
    3238:	ea000000 	b	3240 <forktest+0x68>
    323c:	e1a00000 	nop			@ (mov r0, r0)
    3240:	e51b3008 	ldr	r3, [fp, #-8]
    3244:	e3530ffa 	cmp	r3, #1000	@ 0x3e8
    3248:	1a00000e 	bne	3288 <forktest+0xb0>
    324c:	e59f107c 	ldr	r1, [pc, #124]	@ 32d0 <forktest+0xf8>
    3250:	e3a00001 	mov	r0, #1
    3254:	eb0005e6 	bl	49f4 <printf>
    3258:	eb0004cc 	bl	4590 <exit>
    325c:	eb0004d4 	bl	45b4 <wait>
    3260:	e1a03000 	mov	r3, r0
    3264:	e3530000 	cmp	r3, #0
    3268:	aa000003 	bge	327c <forktest+0xa4>
    326c:	e59f1060 	ldr	r1, [pc, #96]	@ 32d4 <forktest+0xfc>
    3270:	e3a00001 	mov	r0, #1
    3274:	eb0005de 	bl	49f4 <printf>
    3278:	eb0004c4 	bl	4590 <exit>
    327c:	e51b3008 	ldr	r3, [fp, #-8]
    3280:	e2433001 	sub	r3, r3, #1
    3284:	e50b3008 	str	r3, [fp, #-8]
    3288:	e51b3008 	ldr	r3, [fp, #-8]
    328c:	e3530000 	cmp	r3, #0
    3290:	cafffff1 	bgt	325c <forktest+0x84>
    3294:	eb0004c6 	bl	45b4 <wait>
    3298:	e1a03000 	mov	r3, r0
    329c:	e3730001 	cmn	r3, #1
    32a0:	0a000003 	beq	32b4 <forktest+0xdc>
    32a4:	e59f102c 	ldr	r1, [pc, #44]	@ 32d8 <forktest+0x100>
    32a8:	e3a00001 	mov	r0, #1
    32ac:	eb0005d0 	bl	49f4 <printf>
    32b0:	eb0004b6 	bl	4590 <exit>
    32b4:	e59f1020 	ldr	r1, [pc, #32]	@ 32dc <forktest+0x104>
    32b8:	e3a00001 	mov	r0, #1
    32bc:	eb0005cc 	bl	49f4 <printf>
    32c0:	e1a00000 	nop			@ (mov r0, r0)
    32c4:	e24bd004 	sub	sp, fp, #4
    32c8:	e8bd8800 	pop	{fp, pc}
    32cc:	00006468 	.word	0x00006468
    32d0:	00006474 	.word	0x00006474
    32d4:	00006498 	.word	0x00006498
    32d8:	000064ac 	.word	0x000064ac
    32dc:	000064c0 	.word	0x000064c0

000032e0 <sbrktest>:
    32e0:	e92d4800 	push	{fp, lr}
    32e4:	e28db004 	add	fp, sp, #4
    32e8:	e24dd068 	sub	sp, sp, #104	@ 0x68
    32ec:	e59f3554 	ldr	r3, [pc, #1364]	@ 3848 <sbrktest+0x568>
    32f0:	e5933000 	ldr	r3, [r3]
    32f4:	e59f1550 	ldr	r1, [pc, #1360]	@ 384c <sbrktest+0x56c>
    32f8:	e1a00003 	mov	r0, r3
    32fc:	eb0005bc 	bl	49f4 <printf>
    3300:	e3a00000 	mov	r0, #0
    3304:	eb00053a 	bl	47f4 <sbrk>
    3308:	e50b0010 	str	r0, [fp, #-16]
    330c:	e3a00000 	mov	r0, #0
    3310:	eb000537 	bl	47f4 <sbrk>
    3314:	e50b0008 	str	r0, [fp, #-8]
    3318:	e3a03000 	mov	r3, #0
    331c:	e50b300c 	str	r3, [fp, #-12]
    3320:	ea000018 	b	3388 <sbrktest+0xa8>
    3324:	e3a00001 	mov	r0, #1
    3328:	eb000531 	bl	47f4 <sbrk>
    332c:	e50b002c 	str	r0, [fp, #-44]	@ 0xffffffd4
    3330:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
    3334:	e51b3008 	ldr	r3, [fp, #-8]
    3338:	e1520003 	cmp	r2, r3
    333c:	0a000008 	beq	3364 <sbrktest+0x84>
    3340:	e59f3500 	ldr	r3, [pc, #1280]	@ 3848 <sbrktest+0x568>
    3344:	e5930000 	ldr	r0, [r3]
    3348:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    334c:	e58d3000 	str	r3, [sp]
    3350:	e51b3008 	ldr	r3, [fp, #-8]
    3354:	e51b200c 	ldr	r2, [fp, #-12]
    3358:	e59f14f0 	ldr	r1, [pc, #1264]	@ 3850 <sbrktest+0x570>
    335c:	eb0005a4 	bl	49f4 <printf>
    3360:	eb00048a 	bl	4590 <exit>
    3364:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3368:	e3a02001 	mov	r2, #1
    336c:	e5c32000 	strb	r2, [r3]
    3370:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    3374:	e2833001 	add	r3, r3, #1
    3378:	e50b3008 	str	r3, [fp, #-8]
    337c:	e51b300c 	ldr	r3, [fp, #-12]
    3380:	e2833001 	add	r3, r3, #1
    3384:	e50b300c 	str	r3, [fp, #-12]
    3388:	e51b300c 	ldr	r3, [fp, #-12]
    338c:	e59f24c0 	ldr	r2, [pc, #1216]	@ 3854 <sbrktest+0x574>
    3390:	e1530002 	cmp	r3, r2
    3394:	daffffe2 	ble	3324 <sbrktest+0x44>
    3398:	eb000473 	bl	456c <fork>
    339c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    33a0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    33a4:	e3530000 	cmp	r3, #0
    33a8:	aa000005 	bge	33c4 <sbrktest+0xe4>
    33ac:	e59f3494 	ldr	r3, [pc, #1172]	@ 3848 <sbrktest+0x568>
    33b0:	e5933000 	ldr	r3, [r3]
    33b4:	e59f149c 	ldr	r1, [pc, #1180]	@ 3858 <sbrktest+0x578>
    33b8:	e1a00003 	mov	r0, r3
    33bc:	eb00058c 	bl	49f4 <printf>
    33c0:	eb000472 	bl	4590 <exit>
    33c4:	e3a00001 	mov	r0, #1
    33c8:	eb000509 	bl	47f4 <sbrk>
    33cc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33d0:	e3a00001 	mov	r0, #1
    33d4:	eb000506 	bl	47f4 <sbrk>
    33d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    33dc:	e51b3008 	ldr	r3, [fp, #-8]
    33e0:	e2833001 	add	r3, r3, #1
    33e4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    33e8:	e1520003 	cmp	r2, r3
    33ec:	0a000005 	beq	3408 <sbrktest+0x128>
    33f0:	e59f3450 	ldr	r3, [pc, #1104]	@ 3848 <sbrktest+0x568>
    33f4:	e5933000 	ldr	r3, [r3]
    33f8:	e59f145c 	ldr	r1, [pc, #1116]	@ 385c <sbrktest+0x57c>
    33fc:	e1a00003 	mov	r0, r3
    3400:	eb00057b 	bl	49f4 <printf>
    3404:	eb000461 	bl	4590 <exit>
    3408:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    340c:	e3530000 	cmp	r3, #0
    3410:	1a000000 	bne	3418 <sbrktest+0x138>
    3414:	eb00045d 	bl	4590 <exit>
    3418:	eb000465 	bl	45b4 <wait>
    341c:	e3a00000 	mov	r0, #0
    3420:	eb0004f3 	bl	47f4 <sbrk>
    3424:	e50b0008 	str	r0, [fp, #-8]
    3428:	e51b3008 	ldr	r3, [fp, #-8]
    342c:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    3430:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    3434:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    3438:	e1a00003 	mov	r0, r3
    343c:	eb0004ec 	bl	47f4 <sbrk>
    3440:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
    3444:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
    3448:	e51b3008 	ldr	r3, [fp, #-8]
    344c:	e1520003 	cmp	r2, r3
    3450:	0a000005 	beq	346c <sbrktest+0x18c>
    3454:	e59f33ec 	ldr	r3, [pc, #1004]	@ 3848 <sbrktest+0x568>
    3458:	e5933000 	ldr	r3, [r3]
    345c:	e59f13fc 	ldr	r1, [pc, #1020]	@ 3860 <sbrktest+0x580>
    3460:	e1a00003 	mov	r0, r3
    3464:	eb000562 	bl	49f4 <printf>
    3468:	eb000448 	bl	4590 <exit>
    346c:	e59f33f0 	ldr	r3, [pc, #1008]	@ 3864 <sbrktest+0x584>
    3470:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
    3474:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    3478:	e3a02063 	mov	r2, #99	@ 0x63
    347c:	e5c32000 	strb	r2, [r3]
    3480:	e3a00000 	mov	r0, #0
    3484:	eb0004da 	bl	47f4 <sbrk>
    3488:	e50b0008 	str	r0, [fp, #-8]
    348c:	e59f03d4 	ldr	r0, [pc, #980]	@ 3868 <sbrktest+0x588>
    3490:	eb0004d7 	bl	47f4 <sbrk>
    3494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3498:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    349c:	e3730001 	cmn	r3, #1
    34a0:	1a000005 	bne	34bc <sbrktest+0x1dc>
    34a4:	e59f339c 	ldr	r3, [pc, #924]	@ 3848 <sbrktest+0x568>
    34a8:	e5933000 	ldr	r3, [r3]
    34ac:	e59f13b8 	ldr	r1, [pc, #952]	@ 386c <sbrktest+0x58c>
    34b0:	e1a00003 	mov	r0, r3
    34b4:	eb00054e 	bl	49f4 <printf>
    34b8:	eb000434 	bl	4590 <exit>
    34bc:	e3a00000 	mov	r0, #0
    34c0:	eb0004cb 	bl	47f4 <sbrk>
    34c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    34c8:	e51b3008 	ldr	r3, [fp, #-8]
    34cc:	e2433a01 	sub	r3, r3, #4096	@ 0x1000
    34d0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    34d4:	e1520003 	cmp	r2, r3
    34d8:	0a000006 	beq	34f8 <sbrktest+0x218>
    34dc:	e59f3364 	ldr	r3, [pc, #868]	@ 3848 <sbrktest+0x568>
    34e0:	e5930000 	ldr	r0, [r3]
    34e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    34e8:	e51b2008 	ldr	r2, [fp, #-8]
    34ec:	e59f137c 	ldr	r1, [pc, #892]	@ 3870 <sbrktest+0x590>
    34f0:	eb00053f 	bl	49f4 <printf>
    34f4:	eb000425 	bl	4590 <exit>
    34f8:	e3a00000 	mov	r0, #0
    34fc:	eb0004bc 	bl	47f4 <sbrk>
    3500:	e50b0008 	str	r0, [fp, #-8]
    3504:	e3a00a01 	mov	r0, #4096	@ 0x1000
    3508:	eb0004b9 	bl	47f4 <sbrk>
    350c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3510:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    3514:	e51b3008 	ldr	r3, [fp, #-8]
    3518:	e1520003 	cmp	r2, r3
    351c:	1a000006 	bne	353c <sbrktest+0x25c>
    3520:	e3a00000 	mov	r0, #0
    3524:	eb0004b2 	bl	47f4 <sbrk>
    3528:	e1a02000 	mov	r2, r0
    352c:	e51b3008 	ldr	r3, [fp, #-8]
    3530:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    3534:	e1520003 	cmp	r2, r3
    3538:	0a000006 	beq	3558 <sbrktest+0x278>
    353c:	e59f3304 	ldr	r3, [pc, #772]	@ 3848 <sbrktest+0x568>
    3540:	e5930000 	ldr	r0, [r3]
    3544:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3548:	e51b2008 	ldr	r2, [fp, #-8]
    354c:	e59f1320 	ldr	r1, [pc, #800]	@ 3874 <sbrktest+0x594>
    3550:	eb000527 	bl	49f4 <printf>
    3554:	eb00040d 	bl	4590 <exit>
    3558:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
    355c:	e5d33000 	ldrb	r3, [r3]
    3560:	e3530063 	cmp	r3, #99	@ 0x63
    3564:	1a000005 	bne	3580 <sbrktest+0x2a0>
    3568:	e59f32d8 	ldr	r3, [pc, #728]	@ 3848 <sbrktest+0x568>
    356c:	e5933000 	ldr	r3, [r3]
    3570:	e59f1300 	ldr	r1, [pc, #768]	@ 3878 <sbrktest+0x598>
    3574:	e1a00003 	mov	r0, r3
    3578:	eb00051d 	bl	49f4 <printf>
    357c:	eb000403 	bl	4590 <exit>
    3580:	e3a00000 	mov	r0, #0
    3584:	eb00049a 	bl	47f4 <sbrk>
    3588:	e50b0008 	str	r0, [fp, #-8]
    358c:	e3a00000 	mov	r0, #0
    3590:	eb000497 	bl	47f4 <sbrk>
    3594:	e1a02000 	mov	r2, r0
    3598:	e51b3010 	ldr	r3, [fp, #-16]
    359c:	e0433002 	sub	r3, r3, r2
    35a0:	e1a00003 	mov	r0, r3
    35a4:	eb000492 	bl	47f4 <sbrk>
    35a8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    35ac:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    35b0:	e51b3008 	ldr	r3, [fp, #-8]
    35b4:	e1520003 	cmp	r2, r3
    35b8:	0a000006 	beq	35d8 <sbrktest+0x2f8>
    35bc:	e59f3284 	ldr	r3, [pc, #644]	@ 3848 <sbrktest+0x568>
    35c0:	e5930000 	ldr	r0, [r3]
    35c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    35c8:	e51b2008 	ldr	r2, [fp, #-8]
    35cc:	e59f12a8 	ldr	r1, [pc, #680]	@ 387c <sbrktest+0x59c>
    35d0:	eb000507 	bl	49f4 <printf>
    35d4:	eb0003ed 	bl	4590 <exit>
    35d8:	e3a03102 	mov	r3, #-2147483648	@ 0x80000000
    35dc:	e50b3008 	str	r3, [fp, #-8]
    35e0:	ea00001e 	b	3660 <sbrktest+0x380>
    35e4:	eb000479 	bl	47d0 <getpid>
    35e8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    35ec:	eb0003de 	bl	456c <fork>
    35f0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    35f4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    35f8:	e3530000 	cmp	r3, #0
    35fc:	aa000005 	bge	3618 <sbrktest+0x338>
    3600:	e59f3240 	ldr	r3, [pc, #576]	@ 3848 <sbrktest+0x568>
    3604:	e5933000 	ldr	r3, [r3]
    3608:	e59f1270 	ldr	r1, [pc, #624]	@ 3880 <sbrktest+0x5a0>
    360c:	e1a00003 	mov	r0, r3
    3610:	eb0004f7 	bl	49f4 <printf>
    3614:	eb0003dd 	bl	4590 <exit>
    3618:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    361c:	e3530000 	cmp	r3, #0
    3620:	1a000009 	bne	364c <sbrktest+0x36c>
    3624:	e59f321c 	ldr	r3, [pc, #540]	@ 3848 <sbrktest+0x568>
    3628:	e5930000 	ldr	r0, [r3]
    362c:	e51b3008 	ldr	r3, [fp, #-8]
    3630:	e5d33000 	ldrb	r3, [r3]
    3634:	e51b2008 	ldr	r2, [fp, #-8]
    3638:	e59f1244 	ldr	r1, [pc, #580]	@ 3884 <sbrktest+0x5a4>
    363c:	eb0004ec 	bl	49f4 <printf>
    3640:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    3644:	eb000407 	bl	4668 <kill>
    3648:	eb0003d0 	bl	4590 <exit>
    364c:	eb0003d8 	bl	45b4 <wait>
    3650:	e51b3008 	ldr	r3, [fp, #-8]
    3654:	e2833cc3 	add	r3, r3, #49920	@ 0xc300
    3658:	e2833050 	add	r3, r3, #80	@ 0x50
    365c:	e50b3008 	str	r3, [fp, #-8]
    3660:	e51b3008 	ldr	r3, [fp, #-8]
    3664:	e59f221c 	ldr	r2, [pc, #540]	@ 3888 <sbrktest+0x5a8>
    3668:	e1530002 	cmp	r3, r2
    366c:	9affffdc 	bls	35e4 <sbrktest+0x304>
    3670:	e24b3034 	sub	r3, fp, #52	@ 0x34
    3674:	e1a00003 	mov	r0, r3
    3678:	eb0003d6 	bl	45d8 <pipe>
    367c:	e1a03000 	mov	r3, r0
    3680:	e3530000 	cmp	r3, #0
    3684:	0a000003 	beq	3698 <sbrktest+0x3b8>
    3688:	e59f11fc 	ldr	r1, [pc, #508]	@ 388c <sbrktest+0x5ac>
    368c:	e3a00001 	mov	r0, #1
    3690:	eb0004d7 	bl	49f4 <printf>
    3694:	eb0003bd 	bl	4590 <exit>
    3698:	e3a03000 	mov	r3, #0
    369c:	e50b300c 	str	r3, [fp, #-12]
    36a0:	ea00002a 	b	3750 <sbrktest+0x470>
    36a4:	eb0003b0 	bl	456c <fork>
    36a8:	e1a02000 	mov	r2, r0
    36ac:	e51b300c 	ldr	r3, [fp, #-12]
    36b0:	e1a03103 	lsl	r3, r3, #2
    36b4:	e2433004 	sub	r3, r3, #4
    36b8:	e083300b 	add	r3, r3, fp
    36bc:	e5032058 	str	r2, [r3, #-88]	@ 0xffffffa8
    36c0:	e51b300c 	ldr	r3, [fp, #-12]
    36c4:	e1a03103 	lsl	r3, r3, #2
    36c8:	e2433004 	sub	r3, r3, #4
    36cc:	e083300b 	add	r3, r3, fp
    36d0:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    36d4:	e3530000 	cmp	r3, #0
    36d8:	1a00000d 	bne	3714 <sbrktest+0x434>
    36dc:	e3a00000 	mov	r0, #0
    36e0:	eb000443 	bl	47f4 <sbrk>
    36e4:	e1a03000 	mov	r3, r0
    36e8:	e2633519 	rsb	r3, r3, #104857600	@ 0x6400000
    36ec:	e1a00003 	mov	r0, r3
    36f0:	eb00043f 	bl	47f4 <sbrk>
    36f4:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    36f8:	e3a02001 	mov	r2, #1
    36fc:	e59f118c 	ldr	r1, [pc, #396]	@ 3890 <sbrktest+0x5b0>
    3700:	e1a00003 	mov	r0, r3
    3704:	eb0003c5 	bl	4620 <write>
    3708:	e3a00ffa 	mov	r0, #1000	@ 0x3e8
    370c:	eb000441 	bl	4818 <sleep>
    3710:	eafffffc 	b	3708 <sbrktest+0x428>
    3714:	e51b300c 	ldr	r3, [fp, #-12]
    3718:	e1a03103 	lsl	r3, r3, #2
    371c:	e2433004 	sub	r3, r3, #4
    3720:	e083300b 	add	r3, r3, fp
    3724:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    3728:	e3730001 	cmn	r3, #1
    372c:	0a000004 	beq	3744 <sbrktest+0x464>
    3730:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    3734:	e24b105d 	sub	r1, fp, #93	@ 0x5d
    3738:	e3a02001 	mov	r2, #1
    373c:	e1a00003 	mov	r0, r3
    3740:	eb0003ad 	bl	45fc <read>
    3744:	e51b300c 	ldr	r3, [fp, #-12]
    3748:	e2833001 	add	r3, r3, #1
    374c:	e50b300c 	str	r3, [fp, #-12]
    3750:	e51b300c 	ldr	r3, [fp, #-12]
    3754:	e3530009 	cmp	r3, #9
    3758:	9affffd1 	bls	36a4 <sbrktest+0x3c4>
    375c:	e3a00a01 	mov	r0, #4096	@ 0x1000
    3760:	eb000423 	bl	47f4 <sbrk>
    3764:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3768:	e3a03000 	mov	r3, #0
    376c:	e50b300c 	str	r3, [fp, #-12]
    3770:	ea000013 	b	37c4 <sbrktest+0x4e4>
    3774:	e51b300c 	ldr	r3, [fp, #-12]
    3778:	e1a03103 	lsl	r3, r3, #2
    377c:	e2433004 	sub	r3, r3, #4
    3780:	e083300b 	add	r3, r3, fp
    3784:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    3788:	e3730001 	cmn	r3, #1
    378c:	0a000008 	beq	37b4 <sbrktest+0x4d4>
    3790:	e51b300c 	ldr	r3, [fp, #-12]
    3794:	e1a03103 	lsl	r3, r3, #2
    3798:	e2433004 	sub	r3, r3, #4
    379c:	e083300b 	add	r3, r3, fp
    37a0:	e5133058 	ldr	r3, [r3, #-88]	@ 0xffffffa8
    37a4:	e1a00003 	mov	r0, r3
    37a8:	eb0003ae 	bl	4668 <kill>
    37ac:	eb000380 	bl	45b4 <wait>
    37b0:	ea000000 	b	37b8 <sbrktest+0x4d8>
    37b4:	e1a00000 	nop			@ (mov r0, r0)
    37b8:	e51b300c 	ldr	r3, [fp, #-12]
    37bc:	e2833001 	add	r3, r3, #1
    37c0:	e50b300c 	str	r3, [fp, #-12]
    37c4:	e51b300c 	ldr	r3, [fp, #-12]
    37c8:	e3530009 	cmp	r3, #9
    37cc:	9affffe8 	bls	3774 <sbrktest+0x494>
    37d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    37d4:	e3730001 	cmn	r3, #1
    37d8:	1a000005 	bne	37f4 <sbrktest+0x514>
    37dc:	e59f3064 	ldr	r3, [pc, #100]	@ 3848 <sbrktest+0x568>
    37e0:	e5933000 	ldr	r3, [r3]
    37e4:	e59f10a8 	ldr	r1, [pc, #168]	@ 3894 <sbrktest+0x5b4>
    37e8:	e1a00003 	mov	r0, r3
    37ec:	eb000480 	bl	49f4 <printf>
    37f0:	eb000366 	bl	4590 <exit>
    37f4:	e3a00000 	mov	r0, #0
    37f8:	eb0003fd 	bl	47f4 <sbrk>
    37fc:	e1a02000 	mov	r2, r0
    3800:	e51b3010 	ldr	r3, [fp, #-16]
    3804:	e1530002 	cmp	r3, r2
    3808:	2a000006 	bcs	3828 <sbrktest+0x548>
    380c:	e3a00000 	mov	r0, #0
    3810:	eb0003f7 	bl	47f4 <sbrk>
    3814:	e1a02000 	mov	r2, r0
    3818:	e51b3010 	ldr	r3, [fp, #-16]
    381c:	e0433002 	sub	r3, r3, r2
    3820:	e1a00003 	mov	r0, r3
    3824:	eb0003f2 	bl	47f4 <sbrk>
    3828:	e59f3018 	ldr	r3, [pc, #24]	@ 3848 <sbrktest+0x568>
    382c:	e5933000 	ldr	r3, [r3]
    3830:	e59f1060 	ldr	r1, [pc, #96]	@ 3898 <sbrktest+0x5b8>
    3834:	e1a00003 	mov	r0, r3
    3838:	eb00046d 	bl	49f4 <printf>
    383c:	e1a00000 	nop			@ (mov r0, r0)
    3840:	e24bd004 	sub	sp, fp, #4
    3844:	e8bd8800 	pop	{fp, pc}
    3848:	000068fc 	.word	0x000068fc
    384c:	000064d0 	.word	0x000064d0
    3850:	000064dc 	.word	0x000064dc
    3854:	00001387 	.word	0x00001387
    3858:	000064f8 	.word	0x000064f8
    385c:	00006510 	.word	0x00006510
    3860:	0000652c 	.word	0x0000652c
    3864:	063fffff 	.word	0x063fffff
    3868:	fffff000 	.word	0xfffff000
    386c:	0000656c 	.word	0x0000656c
    3870:	00006588 	.word	0x00006588
    3874:	000065c0 	.word	0x000065c0
    3878:	000065e8 	.word	0x000065e8
    387c:	00006618 	.word	0x00006618
    3880:	000054e8 	.word	0x000054e8
    3884:	0000663c 	.word	0x0000663c
    3888:	801e847f 	.word	0x801e847f
    388c:	00005428 	.word	0x00005428
    3890:	00005498 	.word	0x00005498
    3894:	00006658 	.word	0x00006658
    3898:	00006674 	.word	0x00006674

0000389c <validateint>:
    389c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    38a0:	e28db000 	add	fp, sp, #0
    38a4:	e24dd00c 	sub	sp, sp, #12
    38a8:	e50b0008 	str	r0, [fp, #-8]
    38ac:	e1a00000 	nop			@ (mov r0, r0)
    38b0:	e28bd000 	add	sp, fp, #0
    38b4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    38b8:	e12fff1e 	bx	lr

000038bc <validatetest>:
    38bc:	e92d4800 	push	{fp, lr}
    38c0:	e28db004 	add	fp, sp, #4
    38c4:	e24dd010 	sub	sp, sp, #16
    38c8:	e59f30d0 	ldr	r3, [pc, #208]	@ 39a0 <validatetest+0xe4>
    38cc:	e5933000 	ldr	r3, [r3]
    38d0:	e59f10cc 	ldr	r1, [pc, #204]	@ 39a4 <validatetest+0xe8>
    38d4:	e1a00003 	mov	r0, r3
    38d8:	eb000445 	bl	49f4 <printf>
    38dc:	e59f30c4 	ldr	r3, [pc, #196]	@ 39a8 <validatetest+0xec>
    38e0:	e50b300c 	str	r3, [fp, #-12]
    38e4:	e3a03000 	mov	r3, #0
    38e8:	e50b3008 	str	r3, [fp, #-8]
    38ec:	ea00001f 	b	3970 <validatetest+0xb4>
    38f0:	eb00031d 	bl	456c <fork>
    38f4:	e50b0010 	str	r0, [fp, #-16]
    38f8:	e51b3010 	ldr	r3, [fp, #-16]
    38fc:	e3530000 	cmp	r3, #0
    3900:	1a000003 	bne	3914 <validatetest+0x58>
    3904:	e51b3008 	ldr	r3, [fp, #-8]
    3908:	e1a00003 	mov	r0, r3
    390c:	ebffffe2 	bl	389c <validateint>
    3910:	eb00031e 	bl	4590 <exit>
    3914:	e3a00000 	mov	r0, #0
    3918:	eb0003be 	bl	4818 <sleep>
    391c:	e3a00000 	mov	r0, #0
    3920:	eb0003bc 	bl	4818 <sleep>
    3924:	e51b0010 	ldr	r0, [fp, #-16]
    3928:	eb00034e 	bl	4668 <kill>
    392c:	eb000320 	bl	45b4 <wait>
    3930:	e51b3008 	ldr	r3, [fp, #-8]
    3934:	e1a01003 	mov	r1, r3
    3938:	e59f006c 	ldr	r0, [pc, #108]	@ 39ac <validatetest+0xf0>
    393c:	eb00037f 	bl	4740 <link>
    3940:	e1a03000 	mov	r3, r0
    3944:	e3730001 	cmn	r3, #1
    3948:	0a000005 	beq	3964 <validatetest+0xa8>
    394c:	e59f304c 	ldr	r3, [pc, #76]	@ 39a0 <validatetest+0xe4>
    3950:	e5933000 	ldr	r3, [r3]
    3954:	e59f1054 	ldr	r1, [pc, #84]	@ 39b0 <validatetest+0xf4>
    3958:	e1a00003 	mov	r0, r3
    395c:	eb000424 	bl	49f4 <printf>
    3960:	eb00030a 	bl	4590 <exit>
    3964:	e51b3008 	ldr	r3, [fp, #-8]
    3968:	e2833a01 	add	r3, r3, #4096	@ 0x1000
    396c:	e50b3008 	str	r3, [fp, #-8]
    3970:	e51b300c 	ldr	r3, [fp, #-12]
    3974:	e51b2008 	ldr	r2, [fp, #-8]
    3978:	e1520003 	cmp	r2, r3
    397c:	9affffdb 	bls	38f0 <validatetest+0x34>
    3980:	e59f3018 	ldr	r3, [pc, #24]	@ 39a0 <validatetest+0xe4>
    3984:	e5933000 	ldr	r3, [r3]
    3988:	e59f1024 	ldr	r1, [pc, #36]	@ 39b4 <validatetest+0xf8>
    398c:	e1a00003 	mov	r0, r3
    3990:	eb000417 	bl	49f4 <printf>
    3994:	e1a00000 	nop			@ (mov r0, r0)
    3998:	e24bd004 	sub	sp, fp, #4
    399c:	e8bd8800 	pop	{fp, pc}
    39a0:	000068fc 	.word	0x000068fc
    39a4:	00006684 	.word	0x00006684
    39a8:	00113000 	.word	0x00113000
    39ac:	00006694 	.word	0x00006694
    39b0:	000066a0 	.word	0x000066a0
    39b4:	000066bc 	.word	0x000066bc

000039b8 <bsstest>:
    39b8:	e92d4800 	push	{fp, lr}
    39bc:	e28db004 	add	fp, sp, #4
    39c0:	e24dd008 	sub	sp, sp, #8
    39c4:	e59f3084 	ldr	r3, [pc, #132]	@ 3a50 <bsstest+0x98>
    39c8:	e5933000 	ldr	r3, [r3]
    39cc:	e59f1080 	ldr	r1, [pc, #128]	@ 3a54 <bsstest+0x9c>
    39d0:	e1a00003 	mov	r0, r3
    39d4:	eb000406 	bl	49f4 <printf>
    39d8:	e3a03000 	mov	r3, #0
    39dc:	e50b3008 	str	r3, [fp, #-8]
    39e0:	ea00000e 	b	3a20 <bsstest+0x68>
    39e4:	e59f206c 	ldr	r2, [pc, #108]	@ 3a58 <bsstest+0xa0>
    39e8:	e51b3008 	ldr	r3, [fp, #-8]
    39ec:	e0823003 	add	r3, r2, r3
    39f0:	e5d33000 	ldrb	r3, [r3]
    39f4:	e3530000 	cmp	r3, #0
    39f8:	0a000005 	beq	3a14 <bsstest+0x5c>
    39fc:	e59f304c 	ldr	r3, [pc, #76]	@ 3a50 <bsstest+0x98>
    3a00:	e5933000 	ldr	r3, [r3]
    3a04:	e59f1050 	ldr	r1, [pc, #80]	@ 3a5c <bsstest+0xa4>
    3a08:	e1a00003 	mov	r0, r3
    3a0c:	eb0003f8 	bl	49f4 <printf>
    3a10:	eb0002de 	bl	4590 <exit>
    3a14:	e51b3008 	ldr	r3, [fp, #-8]
    3a18:	e2833001 	add	r3, r3, #1
    3a1c:	e50b3008 	str	r3, [fp, #-8]
    3a20:	e51b3008 	ldr	r3, [fp, #-8]
    3a24:	e59f2034 	ldr	r2, [pc, #52]	@ 3a60 <bsstest+0xa8>
    3a28:	e1530002 	cmp	r3, r2
    3a2c:	9affffec 	bls	39e4 <bsstest+0x2c>
    3a30:	e59f3018 	ldr	r3, [pc, #24]	@ 3a50 <bsstest+0x98>
    3a34:	e5933000 	ldr	r3, [r3]
    3a38:	e59f1024 	ldr	r1, [pc, #36]	@ 3a64 <bsstest+0xac>
    3a3c:	e1a00003 	mov	r0, r3
    3a40:	eb0003eb 	bl	49f4 <printf>
    3a44:	e1a00000 	nop			@ (mov r0, r0)
    3a48:	e24bd004 	sub	sp, fp, #4
    3a4c:	e8bd8800 	pop	{fp, pc}
    3a50:	000068fc 	.word	0x000068fc
    3a54:	000066cc 	.word	0x000066cc
    3a58:	0000891c 	.word	0x0000891c
    3a5c:	000066d8 	.word	0x000066d8
    3a60:	0000270f 	.word	0x0000270f
    3a64:	000066ec 	.word	0x000066ec

00003a68 <bigargtest>:
    3a68:	e92d4800 	push	{fp, lr}
    3a6c:	e28db004 	add	fp, sp, #4
    3a70:	e24dd010 	sub	sp, sp, #16
    3a74:	e59f011c 	ldr	r0, [pc, #284]	@ 3b98 <bigargtest+0x130>
    3a78:	eb00031e 	bl	46f8 <unlink>
    3a7c:	eb0002ba 	bl	456c <fork>
    3a80:	e50b000c 	str	r0, [fp, #-12]
    3a84:	e51b300c 	ldr	r3, [fp, #-12]
    3a88:	e3530000 	cmp	r3, #0
    3a8c:	1a000023 	bne	3b20 <bigargtest+0xb8>
    3a90:	e3a03000 	mov	r3, #0
    3a94:	e50b3008 	str	r3, [fp, #-8]
    3a98:	ea000006 	b	3ab8 <bigargtest+0x50>
    3a9c:	e59f20f8 	ldr	r2, [pc, #248]	@ 3b9c <bigargtest+0x134>
    3aa0:	e51b3008 	ldr	r3, [fp, #-8]
    3aa4:	e59f10f4 	ldr	r1, [pc, #244]	@ 3ba0 <bigargtest+0x138>
    3aa8:	e7821103 	str	r1, [r2, r3, lsl #2]
    3aac:	e51b3008 	ldr	r3, [fp, #-8]
    3ab0:	e2833001 	add	r3, r3, #1
    3ab4:	e50b3008 	str	r3, [fp, #-8]
    3ab8:	e51b3008 	ldr	r3, [fp, #-8]
    3abc:	e353001e 	cmp	r3, #30
    3ac0:	dafffff5 	ble	3a9c <bigargtest+0x34>
    3ac4:	e59f30d0 	ldr	r3, [pc, #208]	@ 3b9c <bigargtest+0x134>
    3ac8:	e3a02000 	mov	r2, #0
    3acc:	e583207c 	str	r2, [r3, #124]	@ 0x7c
    3ad0:	e59f30cc 	ldr	r3, [pc, #204]	@ 3ba4 <bigargtest+0x13c>
    3ad4:	e5933000 	ldr	r3, [r3]
    3ad8:	e59f10c8 	ldr	r1, [pc, #200]	@ 3ba8 <bigargtest+0x140>
    3adc:	e1a00003 	mov	r0, r3
    3ae0:	eb0003c3 	bl	49f4 <printf>
    3ae4:	e59f10b0 	ldr	r1, [pc, #176]	@ 3b9c <bigargtest+0x134>
    3ae8:	e59f00bc 	ldr	r0, [pc, #188]	@ 3bac <bigargtest+0x144>
    3aec:	eb0002e6 	bl	468c <exec>
    3af0:	e59f30ac 	ldr	r3, [pc, #172]	@ 3ba4 <bigargtest+0x13c>
    3af4:	e5933000 	ldr	r3, [r3]
    3af8:	e59f10b0 	ldr	r1, [pc, #176]	@ 3bb0 <bigargtest+0x148>
    3afc:	e1a00003 	mov	r0, r3
    3b00:	eb0003bb 	bl	49f4 <printf>
    3b04:	e3a01c02 	mov	r1, #512	@ 0x200
    3b08:	e59f0088 	ldr	r0, [pc, #136]	@ 3b98 <bigargtest+0x130>
    3b0c:	eb0002e7 	bl	46b0 <open>
    3b10:	e50b0010 	str	r0, [fp, #-16]
    3b14:	e51b0010 	ldr	r0, [fp, #-16]
    3b18:	eb0002c9 	bl	4644 <close>
    3b1c:	eb00029b 	bl	4590 <exit>
    3b20:	e51b300c 	ldr	r3, [fp, #-12]
    3b24:	e3530000 	cmp	r3, #0
    3b28:	aa000005 	bge	3b44 <bigargtest+0xdc>
    3b2c:	e59f3070 	ldr	r3, [pc, #112]	@ 3ba4 <bigargtest+0x13c>
    3b30:	e5933000 	ldr	r3, [r3]
    3b34:	e59f1078 	ldr	r1, [pc, #120]	@ 3bb4 <bigargtest+0x14c>
    3b38:	e1a00003 	mov	r0, r3
    3b3c:	eb0003ac 	bl	49f4 <printf>
    3b40:	eb000292 	bl	4590 <exit>
    3b44:	eb00029a 	bl	45b4 <wait>
    3b48:	e3a01000 	mov	r1, #0
    3b4c:	e59f0044 	ldr	r0, [pc, #68]	@ 3b98 <bigargtest+0x130>
    3b50:	eb0002d6 	bl	46b0 <open>
    3b54:	e50b0010 	str	r0, [fp, #-16]
    3b58:	e51b3010 	ldr	r3, [fp, #-16]
    3b5c:	e3530000 	cmp	r3, #0
    3b60:	aa000005 	bge	3b7c <bigargtest+0x114>
    3b64:	e59f3038 	ldr	r3, [pc, #56]	@ 3ba4 <bigargtest+0x13c>
    3b68:	e5933000 	ldr	r3, [r3]
    3b6c:	e59f1044 	ldr	r1, [pc, #68]	@ 3bb8 <bigargtest+0x150>
    3b70:	e1a00003 	mov	r0, r3
    3b74:	eb00039e 	bl	49f4 <printf>
    3b78:	eb000284 	bl	4590 <exit>
    3b7c:	e51b0010 	ldr	r0, [fp, #-16]
    3b80:	eb0002af 	bl	4644 <close>
    3b84:	e59f000c 	ldr	r0, [pc, #12]	@ 3b98 <bigargtest+0x130>
    3b88:	eb0002da 	bl	46f8 <unlink>
    3b8c:	e1a00000 	nop			@ (mov r0, r0)
    3b90:	e24bd004 	sub	sp, fp, #4
    3b94:	e8bd8800 	pop	{fp, pc}
    3b98:	000066fc 	.word	0x000066fc
    3b9c:	0000b02c 	.word	0x0000b02c
    3ba0:	00006708 	.word	0x00006708
    3ba4:	000068fc 	.word	0x000068fc
    3ba8:	000067e8 	.word	0x000067e8
    3bac:	000050b0 	.word	0x000050b0
    3bb0:	000067f8 	.word	0x000067f8
    3bb4:	00006808 	.word	0x00006808
    3bb8:	00006824 	.word	0x00006824

00003bbc <fsfull>:
    3bbc:	e92d4800 	push	{fp, lr}
    3bc0:	e28db004 	add	fp, sp, #4
    3bc4:	e24dd058 	sub	sp, sp, #88	@ 0x58
    3bc8:	e3a03000 	mov	r3, #0
    3bcc:	e50b300c 	str	r3, [fp, #-12]
    3bd0:	e59f1364 	ldr	r1, [pc, #868]	@ 3f3c <fsfull+0x380>
    3bd4:	e3a00001 	mov	r0, #1
    3bd8:	eb000385 	bl	49f4 <printf>
    3bdc:	e3a03000 	mov	r3, #0
    3be0:	e50b3008 	str	r3, [fp, #-8]
    3be4:	e3a03066 	mov	r3, #102	@ 0x66
    3be8:	e54b3058 	strb	r3, [fp, #-88]	@ 0xffffffa8
    3bec:	e51b3008 	ldr	r3, [fp, #-8]
    3bf0:	e59f2348 	ldr	r2, [pc, #840]	@ 3f40 <fsfull+0x384>
    3bf4:	e0c21392 	smull	r1, r2, r2, r3
    3bf8:	e1a02342 	asr	r2, r2, #6
    3bfc:	e1a03fc3 	asr	r3, r3, #31
    3c00:	e0423003 	sub	r3, r2, r3
    3c04:	e6ef3073 	uxtb	r3, r3
    3c08:	e2833030 	add	r3, r3, #48	@ 0x30
    3c0c:	e6ef3073 	uxtb	r3, r3
    3c10:	e54b3057 	strb	r3, [fp, #-87]	@ 0xffffffa9
    3c14:	e51b1008 	ldr	r1, [fp, #-8]
    3c18:	e59f3320 	ldr	r3, [pc, #800]	@ 3f40 <fsfull+0x384>
    3c1c:	e0c32193 	smull	r2, r3, r3, r1
    3c20:	e1a02343 	asr	r2, r3, #6
    3c24:	e1a03fc1 	asr	r3, r1, #31
    3c28:	e0422003 	sub	r2, r2, r3
    3c2c:	e1a03002 	mov	r3, r2
    3c30:	e1a03283 	lsl	r3, r3, #5
    3c34:	e0433002 	sub	r3, r3, r2
    3c38:	e1a03103 	lsl	r3, r3, #2
    3c3c:	e0833002 	add	r3, r3, r2
    3c40:	e1a03183 	lsl	r3, r3, #3
    3c44:	e0412003 	sub	r2, r1, r3
    3c48:	e59f32f4 	ldr	r3, [pc, #756]	@ 3f44 <fsfull+0x388>
    3c4c:	e0c31293 	smull	r1, r3, r3, r2
    3c50:	e1a012c3 	asr	r1, r3, #5
    3c54:	e1a03fc2 	asr	r3, r2, #31
    3c58:	e0413003 	sub	r3, r1, r3
    3c5c:	e6ef3073 	uxtb	r3, r3
    3c60:	e2833030 	add	r3, r3, #48	@ 0x30
    3c64:	e6ef3073 	uxtb	r3, r3
    3c68:	e54b3056 	strb	r3, [fp, #-86]	@ 0xffffffaa
    3c6c:	e51b1008 	ldr	r1, [fp, #-8]
    3c70:	e59f32cc 	ldr	r3, [pc, #716]	@ 3f44 <fsfull+0x388>
    3c74:	e0c32193 	smull	r2, r3, r3, r1
    3c78:	e1a022c3 	asr	r2, r3, #5
    3c7c:	e1a03fc1 	asr	r3, r1, #31
    3c80:	e0422003 	sub	r2, r2, r3
    3c84:	e1a03002 	mov	r3, r2
    3c88:	e1a03103 	lsl	r3, r3, #2
    3c8c:	e0833002 	add	r3, r3, r2
    3c90:	e1a02103 	lsl	r2, r3, #2
    3c94:	e0833002 	add	r3, r3, r2
    3c98:	e1a03103 	lsl	r3, r3, #2
    3c9c:	e0412003 	sub	r2, r1, r3
    3ca0:	e59f32a0 	ldr	r3, [pc, #672]	@ 3f48 <fsfull+0x38c>
    3ca4:	e0c31293 	smull	r1, r3, r3, r2
    3ca8:	e1a01143 	asr	r1, r3, #2
    3cac:	e1a03fc2 	asr	r3, r2, #31
    3cb0:	e0413003 	sub	r3, r1, r3
    3cb4:	e6ef3073 	uxtb	r3, r3
    3cb8:	e2833030 	add	r3, r3, #48	@ 0x30
    3cbc:	e6ef3073 	uxtb	r3, r3
    3cc0:	e54b3055 	strb	r3, [fp, #-85]	@ 0xffffffab
    3cc4:	e51b2008 	ldr	r2, [fp, #-8]
    3cc8:	e59f3278 	ldr	r3, [pc, #632]	@ 3f48 <fsfull+0x38c>
    3ccc:	e0c31293 	smull	r1, r3, r3, r2
    3cd0:	e1a01143 	asr	r1, r3, #2
    3cd4:	e1a03fc2 	asr	r3, r2, #31
    3cd8:	e0411003 	sub	r1, r1, r3
    3cdc:	e1a03001 	mov	r3, r1
    3ce0:	e1a03103 	lsl	r3, r3, #2
    3ce4:	e0833001 	add	r3, r3, r1
    3ce8:	e1a03083 	lsl	r3, r3, #1
    3cec:	e0421003 	sub	r1, r2, r3
    3cf0:	e6ef3071 	uxtb	r3, r1
    3cf4:	e2833030 	add	r3, r3, #48	@ 0x30
    3cf8:	e6ef3073 	uxtb	r3, r3
    3cfc:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3d00:	e3a03000 	mov	r3, #0
    3d04:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3d08:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d0c:	e1a02003 	mov	r2, r3
    3d10:	e59f1234 	ldr	r1, [pc, #564]	@ 3f4c <fsfull+0x390>
    3d14:	e3a00001 	mov	r0, #1
    3d18:	eb000335 	bl	49f4 <printf>
    3d1c:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d20:	e59f1228 	ldr	r1, [pc, #552]	@ 3f50 <fsfull+0x394>
    3d24:	e1a00003 	mov	r0, r3
    3d28:	eb000260 	bl	46b0 <open>
    3d2c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
    3d30:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    3d34:	e3530000 	cmp	r3, #0
    3d38:	aa000005 	bge	3d54 <fsfull+0x198>
    3d3c:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3d40:	e1a02003 	mov	r2, r3
    3d44:	e59f1208 	ldr	r1, [pc, #520]	@ 3f54 <fsfull+0x398>
    3d48:	e3a00001 	mov	r0, #1
    3d4c:	eb000328 	bl	49f4 <printf>
    3d50:	ea000020 	b	3dd8 <fsfull+0x21c>
    3d54:	e3a03000 	mov	r3, #0
    3d58:	e50b3010 	str	r3, [fp, #-16]
    3d5c:	e3a02c02 	mov	r2, #512	@ 0x200
    3d60:	e59f11f0 	ldr	r1, [pc, #496]	@ 3f58 <fsfull+0x39c>
    3d64:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    3d68:	eb00022c 	bl	4620 <write>
    3d6c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    3d70:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3d74:	e3530c02 	cmp	r3, #512	@ 0x200
    3d78:	ba000007 	blt	3d9c <fsfull+0x1e0>
    3d7c:	e51b2010 	ldr	r2, [fp, #-16]
    3d80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    3d84:	e0823003 	add	r3, r2, r3
    3d88:	e50b3010 	str	r3, [fp, #-16]
    3d8c:	e51b300c 	ldr	r3, [fp, #-12]
    3d90:	e2833001 	add	r3, r3, #1
    3d94:	e50b300c 	str	r3, [fp, #-12]
    3d98:	eaffffef 	b	3d5c <fsfull+0x1a0>
    3d9c:	e1a00000 	nop			@ (mov r0, r0)
    3da0:	e51b2010 	ldr	r2, [fp, #-16]
    3da4:	e59f11b0 	ldr	r1, [pc, #432]	@ 3f5c <fsfull+0x3a0>
    3da8:	e3a00001 	mov	r0, #1
    3dac:	eb000310 	bl	49f4 <printf>
    3db0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
    3db4:	eb000222 	bl	4644 <close>
    3db8:	e51b3010 	ldr	r3, [fp, #-16]
    3dbc:	e3530000 	cmp	r3, #0
    3dc0:	0a000003 	beq	3dd4 <fsfull+0x218>
    3dc4:	e51b3008 	ldr	r3, [fp, #-8]
    3dc8:	e2833001 	add	r3, r3, #1
    3dcc:	e50b3008 	str	r3, [fp, #-8]
    3dd0:	eaffff83 	b	3be4 <fsfull+0x28>
    3dd4:	e1a00000 	nop			@ (mov r0, r0)
    3dd8:	ea00004e 	b	3f18 <fsfull+0x35c>
    3ddc:	e3a03066 	mov	r3, #102	@ 0x66
    3de0:	e54b3058 	strb	r3, [fp, #-88]	@ 0xffffffa8
    3de4:	e51b3008 	ldr	r3, [fp, #-8]
    3de8:	e59f2150 	ldr	r2, [pc, #336]	@ 3f40 <fsfull+0x384>
    3dec:	e0c21392 	smull	r1, r2, r2, r3
    3df0:	e1a02342 	asr	r2, r2, #6
    3df4:	e1a03fc3 	asr	r3, r3, #31
    3df8:	e0423003 	sub	r3, r2, r3
    3dfc:	e6ef3073 	uxtb	r3, r3
    3e00:	e2833030 	add	r3, r3, #48	@ 0x30
    3e04:	e6ef3073 	uxtb	r3, r3
    3e08:	e54b3057 	strb	r3, [fp, #-87]	@ 0xffffffa9
    3e0c:	e51b1008 	ldr	r1, [fp, #-8]
    3e10:	e59f3128 	ldr	r3, [pc, #296]	@ 3f40 <fsfull+0x384>
    3e14:	e0c32193 	smull	r2, r3, r3, r1
    3e18:	e1a02343 	asr	r2, r3, #6
    3e1c:	e1a03fc1 	asr	r3, r1, #31
    3e20:	e0422003 	sub	r2, r2, r3
    3e24:	e1a03002 	mov	r3, r2
    3e28:	e1a03283 	lsl	r3, r3, #5
    3e2c:	e0433002 	sub	r3, r3, r2
    3e30:	e1a03103 	lsl	r3, r3, #2
    3e34:	e0833002 	add	r3, r3, r2
    3e38:	e1a03183 	lsl	r3, r3, #3
    3e3c:	e0412003 	sub	r2, r1, r3
    3e40:	e59f30fc 	ldr	r3, [pc, #252]	@ 3f44 <fsfull+0x388>
    3e44:	e0c31293 	smull	r1, r3, r3, r2
    3e48:	e1a012c3 	asr	r1, r3, #5
    3e4c:	e1a03fc2 	asr	r3, r2, #31
    3e50:	e0413003 	sub	r3, r1, r3
    3e54:	e6ef3073 	uxtb	r3, r3
    3e58:	e2833030 	add	r3, r3, #48	@ 0x30
    3e5c:	e6ef3073 	uxtb	r3, r3
    3e60:	e54b3056 	strb	r3, [fp, #-86]	@ 0xffffffaa
    3e64:	e51b1008 	ldr	r1, [fp, #-8]
    3e68:	e59f30d4 	ldr	r3, [pc, #212]	@ 3f44 <fsfull+0x388>
    3e6c:	e0c32193 	smull	r2, r3, r3, r1
    3e70:	e1a022c3 	asr	r2, r3, #5
    3e74:	e1a03fc1 	asr	r3, r1, #31
    3e78:	e0422003 	sub	r2, r2, r3
    3e7c:	e1a03002 	mov	r3, r2
    3e80:	e1a03103 	lsl	r3, r3, #2
    3e84:	e0833002 	add	r3, r3, r2
    3e88:	e1a02103 	lsl	r2, r3, #2
    3e8c:	e0833002 	add	r3, r3, r2
    3e90:	e1a03103 	lsl	r3, r3, #2
    3e94:	e0412003 	sub	r2, r1, r3
    3e98:	e59f30a8 	ldr	r3, [pc, #168]	@ 3f48 <fsfull+0x38c>
    3e9c:	e0c31293 	smull	r1, r3, r3, r2
    3ea0:	e1a01143 	asr	r1, r3, #2
    3ea4:	e1a03fc2 	asr	r3, r2, #31
    3ea8:	e0413003 	sub	r3, r1, r3
    3eac:	e6ef3073 	uxtb	r3, r3
    3eb0:	e2833030 	add	r3, r3, #48	@ 0x30
    3eb4:	e6ef3073 	uxtb	r3, r3
    3eb8:	e54b3055 	strb	r3, [fp, #-85]	@ 0xffffffab
    3ebc:	e51b2008 	ldr	r2, [fp, #-8]
    3ec0:	e59f3080 	ldr	r3, [pc, #128]	@ 3f48 <fsfull+0x38c>
    3ec4:	e0c31293 	smull	r1, r3, r3, r2
    3ec8:	e1a01143 	asr	r1, r3, #2
    3ecc:	e1a03fc2 	asr	r3, r2, #31
    3ed0:	e0411003 	sub	r1, r1, r3
    3ed4:	e1a03001 	mov	r3, r1
    3ed8:	e1a03103 	lsl	r3, r3, #2
    3edc:	e0833001 	add	r3, r3, r1
    3ee0:	e1a03083 	lsl	r3, r3, #1
    3ee4:	e0421003 	sub	r1, r2, r3
    3ee8:	e6ef3071 	uxtb	r3, r1
    3eec:	e2833030 	add	r3, r3, #48	@ 0x30
    3ef0:	e6ef3073 	uxtb	r3, r3
    3ef4:	e54b3054 	strb	r3, [fp, #-84]	@ 0xffffffac
    3ef8:	e3a03000 	mov	r3, #0
    3efc:	e54b3053 	strb	r3, [fp, #-83]	@ 0xffffffad
    3f00:	e24b3058 	sub	r3, fp, #88	@ 0x58
    3f04:	e1a00003 	mov	r0, r3
    3f08:	eb0001fa 	bl	46f8 <unlink>
    3f0c:	e51b3008 	ldr	r3, [fp, #-8]
    3f10:	e2433001 	sub	r3, r3, #1
    3f14:	e50b3008 	str	r3, [fp, #-8]
    3f18:	e51b3008 	ldr	r3, [fp, #-8]
    3f1c:	e3530000 	cmp	r3, #0
    3f20:	aaffffad 	bge	3ddc <fsfull+0x220>
    3f24:	e59f1034 	ldr	r1, [pc, #52]	@ 3f60 <fsfull+0x3a4>
    3f28:	e3a00001 	mov	r0, #1
    3f2c:	eb0002b0 	bl	49f4 <printf>
    3f30:	e1a00000 	nop			@ (mov r0, r0)
    3f34:	e24bd004 	sub	sp, fp, #4
    3f38:	e8bd8800 	pop	{fp, pc}
    3f3c:	0000683c 	.word	0x0000683c
    3f40:	10624dd3 	.word	0x10624dd3
    3f44:	51eb851f 	.word	0x51eb851f
    3f48:	66666667 	.word	0x66666667
    3f4c:	0000684c 	.word	0x0000684c
    3f50:	00000202 	.word	0x00000202
    3f54:	00006858 	.word	0x00006858
    3f58:	00006918 	.word	0x00006918
    3f5c:	00006868 	.word	0x00006868
    3f60:	00006878 	.word	0x00006878

00003f64 <rand>:
    3f64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    3f68:	e28db000 	add	fp, sp, #0
    3f6c:	e59f3030 	ldr	r3, [pc, #48]	@ 3fa4 <rand+0x40>
    3f70:	e5933000 	ldr	r3, [r3]
    3f74:	e59f202c 	ldr	r2, [pc, #44]	@ 3fa8 <rand+0x44>
    3f78:	e0020392 	mul	r2, r2, r3
    3f7c:	e59f3028 	ldr	r3, [pc, #40]	@ 3fac <rand+0x48>
    3f80:	e0823003 	add	r3, r2, r3
    3f84:	e59f2018 	ldr	r2, [pc, #24]	@ 3fa4 <rand+0x40>
    3f88:	e5823000 	str	r3, [r2]
    3f8c:	e59f3010 	ldr	r3, [pc, #16]	@ 3fa4 <rand+0x40>
    3f90:	e5933000 	ldr	r3, [r3]
    3f94:	e1a00003 	mov	r0, r3
    3f98:	e28bd000 	add	sp, fp, #0
    3f9c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    3fa0:	e12fff1e 	bx	lr
    3fa4:	00006900 	.word	0x00006900
    3fa8:	0019660d 	.word	0x0019660d
    3fac:	3c6ef35f 	.word	0x3c6ef35f

00003fb0 <main>:
    3fb0:	e92d4800 	push	{fp, lr}
    3fb4:	e28db004 	add	fp, sp, #4
    3fb8:	e24dd008 	sub	sp, sp, #8
    3fbc:	e50b0008 	str	r0, [fp, #-8]
    3fc0:	e50b100c 	str	r1, [fp, #-12]
    3fc4:	e59f10bc 	ldr	r1, [pc, #188]	@ 4088 <main+0xd8>
    3fc8:	e3a00001 	mov	r0, #1
    3fcc:	eb000288 	bl	49f4 <printf>
    3fd0:	e3a01000 	mov	r1, #0
    3fd4:	e59f00b0 	ldr	r0, [pc, #176]	@ 408c <main+0xdc>
    3fd8:	eb0001b4 	bl	46b0 <open>
    3fdc:	e1a03000 	mov	r3, r0
    3fe0:	e3530000 	cmp	r3, #0
    3fe4:	ba000003 	blt	3ff8 <main+0x48>
    3fe8:	e59f10a0 	ldr	r1, [pc, #160]	@ 4090 <main+0xe0>
    3fec:	e3a00001 	mov	r0, #1
    3ff0:	eb00027f 	bl	49f4 <printf>
    3ff4:	eb000165 	bl	4590 <exit>
    3ff8:	e3a01c02 	mov	r1, #512	@ 0x200
    3ffc:	e59f0088 	ldr	r0, [pc, #136]	@ 408c <main+0xdc>
    4000:	eb0001aa 	bl	46b0 <open>
    4004:	e1a03000 	mov	r3, r0
    4008:	e1a00003 	mov	r0, r3
    400c:	eb00018c 	bl	4644 <close>
    4010:	ebfffe94 	bl	3a68 <bigargtest>
    4014:	ebfffa0a 	bl	2844 <bigwrite>
    4018:	ebfffe92 	bl	3a68 <bigargtest>
    401c:	ebfffe65 	bl	39b8 <bsstest>
    4020:	ebfffcae 	bl	32e0 <sbrktest>
    4024:	ebfffe24 	bl	38bc <validatetest>
    4028:	ebffeff4 	bl	0 <opentest>
    402c:	ebfff026 	bl	cc <writetest>
    4030:	ebfff0b9 	bl	31c <writetest1>
    4034:	ebfff148 	bl	55c <createtest>
    4038:	ebfff30c 	bl	c70 <mem>
    403c:	ebfff1e9 	bl	7e8 <pipe1>
    4040:	ebfff2e0 	bl	bc8 <exitwait>
    4044:	ebfffb2d 	bl	2d00 <rmdot>
    4048:	ebfffad4 	bl	2ba0 <fourteen>
    404c:	ebfffa43 	bl	2960 <bigfile>
    4050:	ebfff83d 	bl	214c <subdir>
    4054:	ebfff64f 	bl	1998 <concreate>
    4058:	ebfff767 	bl	1dfc <linkunlink>
    405c:	ebfff5c6 	bl	177c <linktest>
    4060:	ebfff55b 	bl	15d4 <unlinkread>
    4064:	ebfff47b 	bl	1258 <createdelete>
    4068:	ebfff3d0 	bl	fb0 <twofiles>
    406c:	ebfff33f 	bl	d70 <sharedfd>
    4070:	ebfffb84 	bl	2e88 <dirfile>
    4074:	ebfffc0c 	bl	30ac <iref>
    4078:	ebfffc56 	bl	31d8 <forktest>
    407c:	ebfff7ba 	bl	1f6c <bigdir>
    4080:	ebfff1be 	bl	780 <exectest>
    4084:	eb000141 	bl	4590 <exit>
    4088:	00006890 	.word	0x00006890
    408c:	000068a4 	.word	0x000068a4
    4090:	000068b4 	.word	0x000068b4

00004094 <strcpy>:
    4094:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4098:	e28db000 	add	fp, sp, #0
    409c:	e24dd014 	sub	sp, sp, #20
    40a0:	e50b0010 	str	r0, [fp, #-16]
    40a4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    40a8:	e51b3010 	ldr	r3, [fp, #-16]
    40ac:	e50b3008 	str	r3, [fp, #-8]
    40b0:	e1a00000 	nop			@ (mov r0, r0)
    40b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    40b8:	e2823001 	add	r3, r2, #1
    40bc:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    40c0:	e51b3010 	ldr	r3, [fp, #-16]
    40c4:	e2831001 	add	r1, r3, #1
    40c8:	e50b1010 	str	r1, [fp, #-16]
    40cc:	e5d22000 	ldrb	r2, [r2]
    40d0:	e5c32000 	strb	r2, [r3]
    40d4:	e5d33000 	ldrb	r3, [r3]
    40d8:	e3530000 	cmp	r3, #0
    40dc:	1afffff4 	bne	40b4 <strcpy+0x20>
    40e0:	e51b3008 	ldr	r3, [fp, #-8]
    40e4:	e1a00003 	mov	r0, r3
    40e8:	e28bd000 	add	sp, fp, #0
    40ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    40f0:	e12fff1e 	bx	lr

000040f4 <strcmp>:
    40f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    40f8:	e28db000 	add	fp, sp, #0
    40fc:	e24dd00c 	sub	sp, sp, #12
    4100:	e50b0008 	str	r0, [fp, #-8]
    4104:	e50b100c 	str	r1, [fp, #-12]
    4108:	ea000005 	b	4124 <strcmp+0x30>
    410c:	e51b3008 	ldr	r3, [fp, #-8]
    4110:	e2833001 	add	r3, r3, #1
    4114:	e50b3008 	str	r3, [fp, #-8]
    4118:	e51b300c 	ldr	r3, [fp, #-12]
    411c:	e2833001 	add	r3, r3, #1
    4120:	e50b300c 	str	r3, [fp, #-12]
    4124:	e51b3008 	ldr	r3, [fp, #-8]
    4128:	e5d33000 	ldrb	r3, [r3]
    412c:	e3530000 	cmp	r3, #0
    4130:	0a000005 	beq	414c <strcmp+0x58>
    4134:	e51b3008 	ldr	r3, [fp, #-8]
    4138:	e5d32000 	ldrb	r2, [r3]
    413c:	e51b300c 	ldr	r3, [fp, #-12]
    4140:	e5d33000 	ldrb	r3, [r3]
    4144:	e1520003 	cmp	r2, r3
    4148:	0affffef 	beq	410c <strcmp+0x18>
    414c:	e51b3008 	ldr	r3, [fp, #-8]
    4150:	e5d33000 	ldrb	r3, [r3]
    4154:	e1a02003 	mov	r2, r3
    4158:	e51b300c 	ldr	r3, [fp, #-12]
    415c:	e5d33000 	ldrb	r3, [r3]
    4160:	e0423003 	sub	r3, r2, r3
    4164:	e1a00003 	mov	r0, r3
    4168:	e28bd000 	add	sp, fp, #0
    416c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4170:	e12fff1e 	bx	lr

00004174 <strlen>:
    4174:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4178:	e28db000 	add	fp, sp, #0
    417c:	e24dd014 	sub	sp, sp, #20
    4180:	e50b0010 	str	r0, [fp, #-16]
    4184:	e3a03000 	mov	r3, #0
    4188:	e50b3008 	str	r3, [fp, #-8]
    418c:	ea000002 	b	419c <strlen+0x28>
    4190:	e51b3008 	ldr	r3, [fp, #-8]
    4194:	e2833001 	add	r3, r3, #1
    4198:	e50b3008 	str	r3, [fp, #-8]
    419c:	e51b3008 	ldr	r3, [fp, #-8]
    41a0:	e51b2010 	ldr	r2, [fp, #-16]
    41a4:	e0823003 	add	r3, r2, r3
    41a8:	e5d33000 	ldrb	r3, [r3]
    41ac:	e3530000 	cmp	r3, #0
    41b0:	1afffff6 	bne	4190 <strlen+0x1c>
    41b4:	e51b3008 	ldr	r3, [fp, #-8]
    41b8:	e1a00003 	mov	r0, r3
    41bc:	e28bd000 	add	sp, fp, #0
    41c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    41c4:	e12fff1e 	bx	lr

000041c8 <memset>:
    41c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    41cc:	e28db000 	add	fp, sp, #0
    41d0:	e24dd024 	sub	sp, sp, #36	@ 0x24
    41d4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    41d8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    41dc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
    41e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    41e4:	e50b3008 	str	r3, [fp, #-8]
    41e8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    41ec:	e54b300d 	strb	r3, [fp, #-13]
    41f0:	e55b200d 	ldrb	r2, [fp, #-13]
    41f4:	e1a03002 	mov	r3, r2
    41f8:	e1a03403 	lsl	r3, r3, #8
    41fc:	e0833002 	add	r3, r3, r2
    4200:	e1a03803 	lsl	r3, r3, #16
    4204:	e1a02003 	mov	r2, r3
    4208:	e55b300d 	ldrb	r3, [fp, #-13]
    420c:	e1a03403 	lsl	r3, r3, #8
    4210:	e1822003 	orr	r2, r2, r3
    4214:	e55b300d 	ldrb	r3, [fp, #-13]
    4218:	e1823003 	orr	r3, r2, r3
    421c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4220:	ea000008 	b	4248 <memset+0x80>
    4224:	e51b3008 	ldr	r3, [fp, #-8]
    4228:	e55b200d 	ldrb	r2, [fp, #-13]
    422c:	e5c32000 	strb	r2, [r3]
    4230:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4234:	e2433001 	sub	r3, r3, #1
    4238:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    423c:	e51b3008 	ldr	r3, [fp, #-8]
    4240:	e2833001 	add	r3, r3, #1
    4244:	e50b3008 	str	r3, [fp, #-8]
    4248:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    424c:	e3530000 	cmp	r3, #0
    4250:	0a000003 	beq	4264 <memset+0x9c>
    4254:	e51b3008 	ldr	r3, [fp, #-8]
    4258:	e2033003 	and	r3, r3, #3
    425c:	e3530000 	cmp	r3, #0
    4260:	1affffef 	bne	4224 <memset+0x5c>
    4264:	e51b3008 	ldr	r3, [fp, #-8]
    4268:	e50b300c 	str	r3, [fp, #-12]
    426c:	ea000008 	b	4294 <memset+0xcc>
    4270:	e51b300c 	ldr	r3, [fp, #-12]
    4274:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
    4278:	e5832000 	str	r2, [r3]
    427c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4280:	e2433004 	sub	r3, r3, #4
    4284:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    4288:	e51b300c 	ldr	r3, [fp, #-12]
    428c:	e2833004 	add	r3, r3, #4
    4290:	e50b300c 	str	r3, [fp, #-12]
    4294:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    4298:	e3530003 	cmp	r3, #3
    429c:	8afffff3 	bhi	4270 <memset+0xa8>
    42a0:	e51b300c 	ldr	r3, [fp, #-12]
    42a4:	e50b3008 	str	r3, [fp, #-8]
    42a8:	ea000008 	b	42d0 <memset+0x108>
    42ac:	e51b3008 	ldr	r3, [fp, #-8]
    42b0:	e55b200d 	ldrb	r2, [fp, #-13]
    42b4:	e5c32000 	strb	r2, [r3]
    42b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    42bc:	e2433001 	sub	r3, r3, #1
    42c0:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
    42c4:	e51b3008 	ldr	r3, [fp, #-8]
    42c8:	e2833001 	add	r3, r3, #1
    42cc:	e50b3008 	str	r3, [fp, #-8]
    42d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
    42d4:	e3530000 	cmp	r3, #0
    42d8:	1afffff3 	bne	42ac <memset+0xe4>
    42dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    42e0:	e1a00003 	mov	r0, r3
    42e4:	e28bd000 	add	sp, fp, #0
    42e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    42ec:	e12fff1e 	bx	lr

000042f0 <strchr>:
    42f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    42f4:	e28db000 	add	fp, sp, #0
    42f8:	e24dd00c 	sub	sp, sp, #12
    42fc:	e50b0008 	str	r0, [fp, #-8]
    4300:	e1a03001 	mov	r3, r1
    4304:	e54b3009 	strb	r3, [fp, #-9]
    4308:	ea000009 	b	4334 <strchr+0x44>
    430c:	e51b3008 	ldr	r3, [fp, #-8]
    4310:	e5d33000 	ldrb	r3, [r3]
    4314:	e55b2009 	ldrb	r2, [fp, #-9]
    4318:	e1520003 	cmp	r2, r3
    431c:	1a000001 	bne	4328 <strchr+0x38>
    4320:	e51b3008 	ldr	r3, [fp, #-8]
    4324:	ea000007 	b	4348 <strchr+0x58>
    4328:	e51b3008 	ldr	r3, [fp, #-8]
    432c:	e2833001 	add	r3, r3, #1
    4330:	e50b3008 	str	r3, [fp, #-8]
    4334:	e51b3008 	ldr	r3, [fp, #-8]
    4338:	e5d33000 	ldrb	r3, [r3]
    433c:	e3530000 	cmp	r3, #0
    4340:	1afffff1 	bne	430c <strchr+0x1c>
    4344:	e3a03000 	mov	r3, #0
    4348:	e1a00003 	mov	r0, r3
    434c:	e28bd000 	add	sp, fp, #0
    4350:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4354:	e12fff1e 	bx	lr

00004358 <gets>:
    4358:	e92d4800 	push	{fp, lr}
    435c:	e28db004 	add	fp, sp, #4
    4360:	e24dd018 	sub	sp, sp, #24
    4364:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    4368:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
    436c:	e3a03000 	mov	r3, #0
    4370:	e50b3008 	str	r3, [fp, #-8]
    4374:	ea000016 	b	43d4 <gets+0x7c>
    4378:	e24b300d 	sub	r3, fp, #13
    437c:	e3a02001 	mov	r2, #1
    4380:	e1a01003 	mov	r1, r3
    4384:	e3a00000 	mov	r0, #0
    4388:	eb00009b 	bl	45fc <read>
    438c:	e50b000c 	str	r0, [fp, #-12]
    4390:	e51b300c 	ldr	r3, [fp, #-12]
    4394:	e3530000 	cmp	r3, #0
    4398:	da000013 	ble	43ec <gets+0x94>
    439c:	e51b3008 	ldr	r3, [fp, #-8]
    43a0:	e2832001 	add	r2, r3, #1
    43a4:	e50b2008 	str	r2, [fp, #-8]
    43a8:	e1a02003 	mov	r2, r3
    43ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    43b0:	e0833002 	add	r3, r3, r2
    43b4:	e55b200d 	ldrb	r2, [fp, #-13]
    43b8:	e5c32000 	strb	r2, [r3]
    43bc:	e55b300d 	ldrb	r3, [fp, #-13]
    43c0:	e353000a 	cmp	r3, #10
    43c4:	0a000009 	beq	43f0 <gets+0x98>
    43c8:	e55b300d 	ldrb	r3, [fp, #-13]
    43cc:	e353000d 	cmp	r3, #13
    43d0:	0a000006 	beq	43f0 <gets+0x98>
    43d4:	e51b3008 	ldr	r3, [fp, #-8]
    43d8:	e2833001 	add	r3, r3, #1
    43dc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
    43e0:	e1520003 	cmp	r2, r3
    43e4:	caffffe3 	bgt	4378 <gets+0x20>
    43e8:	ea000000 	b	43f0 <gets+0x98>
    43ec:	e1a00000 	nop			@ (mov r0, r0)
    43f0:	e51b3008 	ldr	r3, [fp, #-8]
    43f4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
    43f8:	e0823003 	add	r3, r2, r3
    43fc:	e3a02000 	mov	r2, #0
    4400:	e5c32000 	strb	r2, [r3]
    4404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4408:	e1a00003 	mov	r0, r3
    440c:	e24bd004 	sub	sp, fp, #4
    4410:	e8bd8800 	pop	{fp, pc}

00004414 <stat>:
    4414:	e92d4800 	push	{fp, lr}
    4418:	e28db004 	add	fp, sp, #4
    441c:	e24dd010 	sub	sp, sp, #16
    4420:	e50b0010 	str	r0, [fp, #-16]
    4424:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    4428:	e3a01000 	mov	r1, #0
    442c:	e51b0010 	ldr	r0, [fp, #-16]
    4430:	eb00009e 	bl	46b0 <open>
    4434:	e50b0008 	str	r0, [fp, #-8]
    4438:	e51b3008 	ldr	r3, [fp, #-8]
    443c:	e3530000 	cmp	r3, #0
    4440:	aa000001 	bge	444c <stat+0x38>
    4444:	e3e03000 	mvn	r3, #0
    4448:	ea000006 	b	4468 <stat+0x54>
    444c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
    4450:	e51b0008 	ldr	r0, [fp, #-8]
    4454:	eb0000b0 	bl	471c <fstat>
    4458:	e50b000c 	str	r0, [fp, #-12]
    445c:	e51b0008 	ldr	r0, [fp, #-8]
    4460:	eb000077 	bl	4644 <close>
    4464:	e51b300c 	ldr	r3, [fp, #-12]
    4468:	e1a00003 	mov	r0, r3
    446c:	e24bd004 	sub	sp, fp, #4
    4470:	e8bd8800 	pop	{fp, pc}

00004474 <atoi>:
    4474:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4478:	e28db000 	add	fp, sp, #0
    447c:	e24dd014 	sub	sp, sp, #20
    4480:	e50b0010 	str	r0, [fp, #-16]
    4484:	e3a03000 	mov	r3, #0
    4488:	e50b3008 	str	r3, [fp, #-8]
    448c:	ea00000c 	b	44c4 <atoi+0x50>
    4490:	e51b2008 	ldr	r2, [fp, #-8]
    4494:	e1a03002 	mov	r3, r2
    4498:	e1a03103 	lsl	r3, r3, #2
    449c:	e0833002 	add	r3, r3, r2
    44a0:	e1a03083 	lsl	r3, r3, #1
    44a4:	e1a01003 	mov	r1, r3
    44a8:	e51b3010 	ldr	r3, [fp, #-16]
    44ac:	e2832001 	add	r2, r3, #1
    44b0:	e50b2010 	str	r2, [fp, #-16]
    44b4:	e5d33000 	ldrb	r3, [r3]
    44b8:	e0813003 	add	r3, r1, r3
    44bc:	e2433030 	sub	r3, r3, #48	@ 0x30
    44c0:	e50b3008 	str	r3, [fp, #-8]
    44c4:	e51b3010 	ldr	r3, [fp, #-16]
    44c8:	e5d33000 	ldrb	r3, [r3]
    44cc:	e353002f 	cmp	r3, #47	@ 0x2f
    44d0:	9a000003 	bls	44e4 <atoi+0x70>
    44d4:	e51b3010 	ldr	r3, [fp, #-16]
    44d8:	e5d33000 	ldrb	r3, [r3]
    44dc:	e3530039 	cmp	r3, #57	@ 0x39
    44e0:	9affffea 	bls	4490 <atoi+0x1c>
    44e4:	e51b3008 	ldr	r3, [fp, #-8]
    44e8:	e1a00003 	mov	r0, r3
    44ec:	e28bd000 	add	sp, fp, #0
    44f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    44f4:	e12fff1e 	bx	lr

000044f8 <memmove>:
    44f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    44fc:	e28db000 	add	fp, sp, #0
    4500:	e24dd01c 	sub	sp, sp, #28
    4504:	e50b0010 	str	r0, [fp, #-16]
    4508:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
    450c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    4510:	e51b3010 	ldr	r3, [fp, #-16]
    4514:	e50b3008 	str	r3, [fp, #-8]
    4518:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    451c:	e50b300c 	str	r3, [fp, #-12]
    4520:	ea000007 	b	4544 <memmove+0x4c>
    4524:	e51b200c 	ldr	r2, [fp, #-12]
    4528:	e2823001 	add	r3, r2, #1
    452c:	e50b300c 	str	r3, [fp, #-12]
    4530:	e51b3008 	ldr	r3, [fp, #-8]
    4534:	e2831001 	add	r1, r3, #1
    4538:	e50b1008 	str	r1, [fp, #-8]
    453c:	e5d22000 	ldrb	r2, [r2]
    4540:	e5c32000 	strb	r2, [r3]
    4544:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4548:	e2432001 	sub	r2, r3, #1
    454c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
    4550:	e3530000 	cmp	r3, #0
    4554:	cafffff2 	bgt	4524 <memmove+0x2c>
    4558:	e51b3010 	ldr	r3, [fp, #-16]
    455c:	e1a00003 	mov	r0, r3
    4560:	e28bd000 	add	sp, fp, #0
    4564:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4568:	e12fff1e 	bx	lr

0000456c <fork>:
    456c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4570:	e1a04003 	mov	r4, r3
    4574:	e1a03002 	mov	r3, r2
    4578:	e1a02001 	mov	r2, r1
    457c:	e1a01000 	mov	r1, r0
    4580:	e3a00001 	mov	r0, #1
    4584:	ef000000 	svc	0x00000000
    4588:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    458c:	e12fff1e 	bx	lr

00004590 <exit>:
    4590:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4594:	e1a04003 	mov	r4, r3
    4598:	e1a03002 	mov	r3, r2
    459c:	e1a02001 	mov	r2, r1
    45a0:	e1a01000 	mov	r1, r0
    45a4:	e3a00002 	mov	r0, #2
    45a8:	ef000000 	svc	0x00000000
    45ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45b0:	e12fff1e 	bx	lr

000045b4 <wait>:
    45b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    45b8:	e1a04003 	mov	r4, r3
    45bc:	e1a03002 	mov	r3, r2
    45c0:	e1a02001 	mov	r2, r1
    45c4:	e1a01000 	mov	r1, r0
    45c8:	e3a00003 	mov	r0, #3
    45cc:	ef000000 	svc	0x00000000
    45d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45d4:	e12fff1e 	bx	lr

000045d8 <pipe>:
    45d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    45dc:	e1a04003 	mov	r4, r3
    45e0:	e1a03002 	mov	r3, r2
    45e4:	e1a02001 	mov	r2, r1
    45e8:	e1a01000 	mov	r1, r0
    45ec:	e3a00004 	mov	r0, #4
    45f0:	ef000000 	svc	0x00000000
    45f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    45f8:	e12fff1e 	bx	lr

000045fc <read>:
    45fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4600:	e1a04003 	mov	r4, r3
    4604:	e1a03002 	mov	r3, r2
    4608:	e1a02001 	mov	r2, r1
    460c:	e1a01000 	mov	r1, r0
    4610:	e3a00005 	mov	r0, #5
    4614:	ef000000 	svc	0x00000000
    4618:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    461c:	e12fff1e 	bx	lr

00004620 <write>:
    4620:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4624:	e1a04003 	mov	r4, r3
    4628:	e1a03002 	mov	r3, r2
    462c:	e1a02001 	mov	r2, r1
    4630:	e1a01000 	mov	r1, r0
    4634:	e3a00010 	mov	r0, #16
    4638:	ef000000 	svc	0x00000000
    463c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4640:	e12fff1e 	bx	lr

00004644 <close>:
    4644:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4648:	e1a04003 	mov	r4, r3
    464c:	e1a03002 	mov	r3, r2
    4650:	e1a02001 	mov	r2, r1
    4654:	e1a01000 	mov	r1, r0
    4658:	e3a00015 	mov	r0, #21
    465c:	ef000000 	svc	0x00000000
    4660:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4664:	e12fff1e 	bx	lr

00004668 <kill>:
    4668:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    466c:	e1a04003 	mov	r4, r3
    4670:	e1a03002 	mov	r3, r2
    4674:	e1a02001 	mov	r2, r1
    4678:	e1a01000 	mov	r1, r0
    467c:	e3a00006 	mov	r0, #6
    4680:	ef000000 	svc	0x00000000
    4684:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4688:	e12fff1e 	bx	lr

0000468c <exec>:
    468c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4690:	e1a04003 	mov	r4, r3
    4694:	e1a03002 	mov	r3, r2
    4698:	e1a02001 	mov	r2, r1
    469c:	e1a01000 	mov	r1, r0
    46a0:	e3a00007 	mov	r0, #7
    46a4:	ef000000 	svc	0x00000000
    46a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    46ac:	e12fff1e 	bx	lr

000046b0 <open>:
    46b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46b4:	e1a04003 	mov	r4, r3
    46b8:	e1a03002 	mov	r3, r2
    46bc:	e1a02001 	mov	r2, r1
    46c0:	e1a01000 	mov	r1, r0
    46c4:	e3a0000f 	mov	r0, #15
    46c8:	ef000000 	svc	0x00000000
    46cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    46d0:	e12fff1e 	bx	lr

000046d4 <mknod>:
    46d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46d8:	e1a04003 	mov	r4, r3
    46dc:	e1a03002 	mov	r3, r2
    46e0:	e1a02001 	mov	r2, r1
    46e4:	e1a01000 	mov	r1, r0
    46e8:	e3a00011 	mov	r0, #17
    46ec:	ef000000 	svc	0x00000000
    46f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    46f4:	e12fff1e 	bx	lr

000046f8 <unlink>:
    46f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    46fc:	e1a04003 	mov	r4, r3
    4700:	e1a03002 	mov	r3, r2
    4704:	e1a02001 	mov	r2, r1
    4708:	e1a01000 	mov	r1, r0
    470c:	e3a00012 	mov	r0, #18
    4710:	ef000000 	svc	0x00000000
    4714:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4718:	e12fff1e 	bx	lr

0000471c <fstat>:
    471c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4720:	e1a04003 	mov	r4, r3
    4724:	e1a03002 	mov	r3, r2
    4728:	e1a02001 	mov	r2, r1
    472c:	e1a01000 	mov	r1, r0
    4730:	e3a00008 	mov	r0, #8
    4734:	ef000000 	svc	0x00000000
    4738:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    473c:	e12fff1e 	bx	lr

00004740 <link>:
    4740:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4744:	e1a04003 	mov	r4, r3
    4748:	e1a03002 	mov	r3, r2
    474c:	e1a02001 	mov	r2, r1
    4750:	e1a01000 	mov	r1, r0
    4754:	e3a00013 	mov	r0, #19
    4758:	ef000000 	svc	0x00000000
    475c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4760:	e12fff1e 	bx	lr

00004764 <mkdir>:
    4764:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4768:	e1a04003 	mov	r4, r3
    476c:	e1a03002 	mov	r3, r2
    4770:	e1a02001 	mov	r2, r1
    4774:	e1a01000 	mov	r1, r0
    4778:	e3a00014 	mov	r0, #20
    477c:	ef000000 	svc	0x00000000
    4780:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4784:	e12fff1e 	bx	lr

00004788 <chdir>:
    4788:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    478c:	e1a04003 	mov	r4, r3
    4790:	e1a03002 	mov	r3, r2
    4794:	e1a02001 	mov	r2, r1
    4798:	e1a01000 	mov	r1, r0
    479c:	e3a00009 	mov	r0, #9
    47a0:	ef000000 	svc	0x00000000
    47a4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    47a8:	e12fff1e 	bx	lr

000047ac <dup>:
    47ac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47b0:	e1a04003 	mov	r4, r3
    47b4:	e1a03002 	mov	r3, r2
    47b8:	e1a02001 	mov	r2, r1
    47bc:	e1a01000 	mov	r1, r0
    47c0:	e3a0000a 	mov	r0, #10
    47c4:	ef000000 	svc	0x00000000
    47c8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    47cc:	e12fff1e 	bx	lr

000047d0 <getpid>:
    47d0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47d4:	e1a04003 	mov	r4, r3
    47d8:	e1a03002 	mov	r3, r2
    47dc:	e1a02001 	mov	r2, r1
    47e0:	e1a01000 	mov	r1, r0
    47e4:	e3a0000b 	mov	r0, #11
    47e8:	ef000000 	svc	0x00000000
    47ec:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    47f0:	e12fff1e 	bx	lr

000047f4 <sbrk>:
    47f4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    47f8:	e1a04003 	mov	r4, r3
    47fc:	e1a03002 	mov	r3, r2
    4800:	e1a02001 	mov	r2, r1
    4804:	e1a01000 	mov	r1, r0
    4808:	e3a0000c 	mov	r0, #12
    480c:	ef000000 	svc	0x00000000
    4810:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4814:	e12fff1e 	bx	lr

00004818 <sleep>:
    4818:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    481c:	e1a04003 	mov	r4, r3
    4820:	e1a03002 	mov	r3, r2
    4824:	e1a02001 	mov	r2, r1
    4828:	e1a01000 	mov	r1, r0
    482c:	e3a0000d 	mov	r0, #13
    4830:	ef000000 	svc	0x00000000
    4834:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4838:	e12fff1e 	bx	lr

0000483c <uptime>:
    483c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4840:	e1a04003 	mov	r4, r3
    4844:	e1a03002 	mov	r3, r2
    4848:	e1a02001 	mov	r2, r1
    484c:	e1a01000 	mov	r1, r0
    4850:	e3a0000e 	mov	r0, #14
    4854:	ef000000 	svc	0x00000000
    4858:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    485c:	e12fff1e 	bx	lr

00004860 <ps>:
    4860:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
    4864:	e1a04003 	mov	r4, r3
    4868:	e1a03002 	mov	r3, r2
    486c:	e1a02001 	mov	r2, r1
    4870:	e1a01000 	mov	r1, r0
    4874:	e3a00016 	mov	r0, #22
    4878:	ef000000 	svc	0x00000000
    487c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
    4880:	e12fff1e 	bx	lr

00004884 <putc>:
    4884:	e92d4800 	push	{fp, lr}
    4888:	e28db004 	add	fp, sp, #4
    488c:	e24dd008 	sub	sp, sp, #8
    4890:	e50b0008 	str	r0, [fp, #-8]
    4894:	e1a03001 	mov	r3, r1
    4898:	e54b3009 	strb	r3, [fp, #-9]
    489c:	e24b3009 	sub	r3, fp, #9
    48a0:	e3a02001 	mov	r2, #1
    48a4:	e1a01003 	mov	r1, r3
    48a8:	e51b0008 	ldr	r0, [fp, #-8]
    48ac:	ebffff5b 	bl	4620 <write>
    48b0:	e1a00000 	nop			@ (mov r0, r0)
    48b4:	e24bd004 	sub	sp, fp, #4
    48b8:	e8bd8800 	pop	{fp, pc}

000048bc <printint>:
    48bc:	e92d4800 	push	{fp, lr}
    48c0:	e28db004 	add	fp, sp, #4
    48c4:	e24dd030 	sub	sp, sp, #48	@ 0x30
    48c8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
    48cc:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
    48d0:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
    48d4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
    48d8:	e3a03000 	mov	r3, #0
    48dc:	e50b300c 	str	r3, [fp, #-12]
    48e0:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
    48e4:	e3530000 	cmp	r3, #0
    48e8:	0a000008 	beq	4910 <printint+0x54>
    48ec:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    48f0:	e3530000 	cmp	r3, #0
    48f4:	aa000005 	bge	4910 <printint+0x54>
    48f8:	e3a03001 	mov	r3, #1
    48fc:	e50b300c 	str	r3, [fp, #-12]
    4900:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    4904:	e2633000 	rsb	r3, r3, #0
    4908:	e50b3010 	str	r3, [fp, #-16]
    490c:	ea000001 	b	4918 <printint+0x5c>
    4910:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
    4914:	e50b3010 	str	r3, [fp, #-16]
    4918:	e3a03000 	mov	r3, #0
    491c:	e50b3008 	str	r3, [fp, #-8]
    4920:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
    4924:	e51b3010 	ldr	r3, [fp, #-16]
    4928:	e1a01002 	mov	r1, r2
    492c:	e1a00003 	mov	r0, r3
    4930:	eb0001d5 	bl	508c <__aeabi_uidivmod>
    4934:	e1a03001 	mov	r3, r1
    4938:	e1a01003 	mov	r1, r3
    493c:	e51b3008 	ldr	r3, [fp, #-8]
    4940:	e2832001 	add	r2, r3, #1
    4944:	e50b2008 	str	r2, [fp, #-8]
    4948:	e59f20a0 	ldr	r2, [pc, #160]	@ 49f0 <printint+0x134>
    494c:	e7d22001 	ldrb	r2, [r2, r1]
    4950:	e2433004 	sub	r3, r3, #4
    4954:	e083300b 	add	r3, r3, fp
    4958:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    495c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
    4960:	e1a01003 	mov	r1, r3
    4964:	e51b0010 	ldr	r0, [fp, #-16]
    4968:	eb00018a 	bl	4f98 <__udivsi3>
    496c:	e1a03000 	mov	r3, r0
    4970:	e50b3010 	str	r3, [fp, #-16]
    4974:	e51b3010 	ldr	r3, [fp, #-16]
    4978:	e3530000 	cmp	r3, #0
    497c:	1affffe7 	bne	4920 <printint+0x64>
    4980:	e51b300c 	ldr	r3, [fp, #-12]
    4984:	e3530000 	cmp	r3, #0
    4988:	0a00000e 	beq	49c8 <printint+0x10c>
    498c:	e51b3008 	ldr	r3, [fp, #-8]
    4990:	e2832001 	add	r2, r3, #1
    4994:	e50b2008 	str	r2, [fp, #-8]
    4998:	e2433004 	sub	r3, r3, #4
    499c:	e083300b 	add	r3, r3, fp
    49a0:	e3a0202d 	mov	r2, #45	@ 0x2d
    49a4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
    49a8:	ea000006 	b	49c8 <printint+0x10c>
    49ac:	e24b2020 	sub	r2, fp, #32
    49b0:	e51b3008 	ldr	r3, [fp, #-8]
    49b4:	e0823003 	add	r3, r2, r3
    49b8:	e5d33000 	ldrb	r3, [r3]
    49bc:	e1a01003 	mov	r1, r3
    49c0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
    49c4:	ebffffae 	bl	4884 <putc>
    49c8:	e51b3008 	ldr	r3, [fp, #-8]
    49cc:	e2433001 	sub	r3, r3, #1
    49d0:	e50b3008 	str	r3, [fp, #-8]
    49d4:	e51b3008 	ldr	r3, [fp, #-8]
    49d8:	e3530000 	cmp	r3, #0
    49dc:	aafffff2 	bge	49ac <printint+0xf0>
    49e0:	e1a00000 	nop			@ (mov r0, r0)
    49e4:	e1a00000 	nop			@ (mov r0, r0)
    49e8:	e24bd004 	sub	sp, fp, #4
    49ec:	e8bd8800 	pop	{fp, pc}
    49f0:	00006904 	.word	0x00006904

000049f4 <printf>:
    49f4:	e92d000e 	push	{r1, r2, r3}
    49f8:	e92d4800 	push	{fp, lr}
    49fc:	e28db004 	add	fp, sp, #4
    4a00:	e24dd024 	sub	sp, sp, #36	@ 0x24
    4a04:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
    4a08:	e3a03000 	mov	r3, #0
    4a0c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4a10:	e28b3008 	add	r3, fp, #8
    4a14:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4a18:	e3a03000 	mov	r3, #0
    4a1c:	e50b3010 	str	r3, [fp, #-16]
    4a20:	ea000074 	b	4bf8 <printf+0x204>
    4a24:	e59b2004 	ldr	r2, [fp, #4]
    4a28:	e51b3010 	ldr	r3, [fp, #-16]
    4a2c:	e0823003 	add	r3, r2, r3
    4a30:	e5d33000 	ldrb	r3, [r3]
    4a34:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
    4a38:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    4a3c:	e3530000 	cmp	r3, #0
    4a40:	1a00000b 	bne	4a74 <printf+0x80>
    4a44:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4a48:	e3530025 	cmp	r3, #37	@ 0x25
    4a4c:	1a000002 	bne	4a5c <printf+0x68>
    4a50:	e3a03025 	mov	r3, #37	@ 0x25
    4a54:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4a58:	ea000063 	b	4bec <printf+0x1f8>
    4a5c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4a60:	e6ef3073 	uxtb	r3, r3
    4a64:	e1a01003 	mov	r1, r3
    4a68:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4a6c:	ebffff84 	bl	4884 <putc>
    4a70:	ea00005d 	b	4bec <printf+0x1f8>
    4a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
    4a78:	e3530025 	cmp	r3, #37	@ 0x25
    4a7c:	1a00005a 	bne	4bec <printf+0x1f8>
    4a80:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4a84:	e3530064 	cmp	r3, #100	@ 0x64
    4a88:	1a00000a 	bne	4ab8 <printf+0xc4>
    4a8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4a90:	e5933000 	ldr	r3, [r3]
    4a94:	e1a01003 	mov	r1, r3
    4a98:	e3a03001 	mov	r3, #1
    4a9c:	e3a0200a 	mov	r2, #10
    4aa0:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4aa4:	ebffff84 	bl	48bc <printint>
    4aa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4aac:	e2833004 	add	r3, r3, #4
    4ab0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4ab4:	ea00004a 	b	4be4 <printf+0x1f0>
    4ab8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4abc:	e3530078 	cmp	r3, #120	@ 0x78
    4ac0:	0a000002 	beq	4ad0 <printf+0xdc>
    4ac4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4ac8:	e3530070 	cmp	r3, #112	@ 0x70
    4acc:	1a00000a 	bne	4afc <printf+0x108>
    4ad0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4ad4:	e5933000 	ldr	r3, [r3]
    4ad8:	e1a01003 	mov	r1, r3
    4adc:	e3a03000 	mov	r3, #0
    4ae0:	e3a02010 	mov	r2, #16
    4ae4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4ae8:	ebffff73 	bl	48bc <printint>
    4aec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4af0:	e2833004 	add	r3, r3, #4
    4af4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4af8:	ea000039 	b	4be4 <printf+0x1f0>
    4afc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b00:	e3530073 	cmp	r3, #115	@ 0x73
    4b04:	1a000018 	bne	4b6c <printf+0x178>
    4b08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b0c:	e5933000 	ldr	r3, [r3]
    4b10:	e50b300c 	str	r3, [fp, #-12]
    4b14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b18:	e2833004 	add	r3, r3, #4
    4b1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4b20:	e51b300c 	ldr	r3, [fp, #-12]
    4b24:	e3530000 	cmp	r3, #0
    4b28:	1a00000a 	bne	4b58 <printf+0x164>
    4b2c:	e59f30f4 	ldr	r3, [pc, #244]	@ 4c28 <printf+0x234>
    4b30:	e50b300c 	str	r3, [fp, #-12]
    4b34:	ea000007 	b	4b58 <printf+0x164>
    4b38:	e51b300c 	ldr	r3, [fp, #-12]
    4b3c:	e5d33000 	ldrb	r3, [r3]
    4b40:	e1a01003 	mov	r1, r3
    4b44:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4b48:	ebffff4d 	bl	4884 <putc>
    4b4c:	e51b300c 	ldr	r3, [fp, #-12]
    4b50:	e2833001 	add	r3, r3, #1
    4b54:	e50b300c 	str	r3, [fp, #-12]
    4b58:	e51b300c 	ldr	r3, [fp, #-12]
    4b5c:	e5d33000 	ldrb	r3, [r3]
    4b60:	e3530000 	cmp	r3, #0
    4b64:	1afffff3 	bne	4b38 <printf+0x144>
    4b68:	ea00001d 	b	4be4 <printf+0x1f0>
    4b6c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4b70:	e3530063 	cmp	r3, #99	@ 0x63
    4b74:	1a000009 	bne	4ba0 <printf+0x1ac>
    4b78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b7c:	e5933000 	ldr	r3, [r3]
    4b80:	e6ef3073 	uxtb	r3, r3
    4b84:	e1a01003 	mov	r1, r3
    4b88:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4b8c:	ebffff3c 	bl	4884 <putc>
    4b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4b94:	e2833004 	add	r3, r3, #4
    4b98:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
    4b9c:	ea000010 	b	4be4 <printf+0x1f0>
    4ba0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4ba4:	e3530025 	cmp	r3, #37	@ 0x25
    4ba8:	1a000005 	bne	4bc4 <printf+0x1d0>
    4bac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4bb0:	e6ef3073 	uxtb	r3, r3
    4bb4:	e1a01003 	mov	r1, r3
    4bb8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4bbc:	ebffff30 	bl	4884 <putc>
    4bc0:	ea000007 	b	4be4 <printf+0x1f0>
    4bc4:	e3a01025 	mov	r1, #37	@ 0x25
    4bc8:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4bcc:	ebffff2c 	bl	4884 <putc>
    4bd0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
    4bd4:	e6ef3073 	uxtb	r3, r3
    4bd8:	e1a01003 	mov	r1, r3
    4bdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
    4be0:	ebffff27 	bl	4884 <putc>
    4be4:	e3a03000 	mov	r3, #0
    4be8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
    4bec:	e51b3010 	ldr	r3, [fp, #-16]
    4bf0:	e2833001 	add	r3, r3, #1
    4bf4:	e50b3010 	str	r3, [fp, #-16]
    4bf8:	e59b2004 	ldr	r2, [fp, #4]
    4bfc:	e51b3010 	ldr	r3, [fp, #-16]
    4c00:	e0823003 	add	r3, r2, r3
    4c04:	e5d33000 	ldrb	r3, [r3]
    4c08:	e3530000 	cmp	r3, #0
    4c0c:	1affff84 	bne	4a24 <printf+0x30>
    4c10:	e1a00000 	nop			@ (mov r0, r0)
    4c14:	e1a00000 	nop			@ (mov r0, r0)
    4c18:	e24bd004 	sub	sp, fp, #4
    4c1c:	e8bd4800 	pop	{fp, lr}
    4c20:	e28dd00c 	add	sp, sp, #12
    4c24:	e12fff1e 	bx	lr
    4c28:	000068e0 	.word	0x000068e0

00004c2c <free>:
    4c2c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
    4c30:	e28db000 	add	fp, sp, #0
    4c34:	e24dd014 	sub	sp, sp, #20
    4c38:	e50b0010 	str	r0, [fp, #-16]
    4c3c:	e51b3010 	ldr	r3, [fp, #-16]
    4c40:	e2433008 	sub	r3, r3, #8
    4c44:	e50b300c 	str	r3, [fp, #-12]
    4c48:	e59f3154 	ldr	r3, [pc, #340]	@ 4da4 <free+0x178>
    4c4c:	e5933000 	ldr	r3, [r3]
    4c50:	e50b3008 	str	r3, [fp, #-8]
    4c54:	ea000010 	b	4c9c <free+0x70>
    4c58:	e51b3008 	ldr	r3, [fp, #-8]
    4c5c:	e5933000 	ldr	r3, [r3]
    4c60:	e51b2008 	ldr	r2, [fp, #-8]
    4c64:	e1520003 	cmp	r2, r3
    4c68:	3a000008 	bcc	4c90 <free+0x64>
    4c6c:	e51b200c 	ldr	r2, [fp, #-12]
    4c70:	e51b3008 	ldr	r3, [fp, #-8]
    4c74:	e1520003 	cmp	r2, r3
    4c78:	8a000010 	bhi	4cc0 <free+0x94>
    4c7c:	e51b3008 	ldr	r3, [fp, #-8]
    4c80:	e5933000 	ldr	r3, [r3]
    4c84:	e51b200c 	ldr	r2, [fp, #-12]
    4c88:	e1520003 	cmp	r2, r3
    4c8c:	3a00000b 	bcc	4cc0 <free+0x94>
    4c90:	e51b3008 	ldr	r3, [fp, #-8]
    4c94:	e5933000 	ldr	r3, [r3]
    4c98:	e50b3008 	str	r3, [fp, #-8]
    4c9c:	e51b200c 	ldr	r2, [fp, #-12]
    4ca0:	e51b3008 	ldr	r3, [fp, #-8]
    4ca4:	e1520003 	cmp	r2, r3
    4ca8:	9affffea 	bls	4c58 <free+0x2c>
    4cac:	e51b3008 	ldr	r3, [fp, #-8]
    4cb0:	e5933000 	ldr	r3, [r3]
    4cb4:	e51b200c 	ldr	r2, [fp, #-12]
    4cb8:	e1520003 	cmp	r2, r3
    4cbc:	2affffe5 	bcs	4c58 <free+0x2c>
    4cc0:	e51b300c 	ldr	r3, [fp, #-12]
    4cc4:	e5933004 	ldr	r3, [r3, #4]
    4cc8:	e1a03183 	lsl	r3, r3, #3
    4ccc:	e51b200c 	ldr	r2, [fp, #-12]
    4cd0:	e0822003 	add	r2, r2, r3
    4cd4:	e51b3008 	ldr	r3, [fp, #-8]
    4cd8:	e5933000 	ldr	r3, [r3]
    4cdc:	e1520003 	cmp	r2, r3
    4ce0:	1a00000d 	bne	4d1c <free+0xf0>
    4ce4:	e51b300c 	ldr	r3, [fp, #-12]
    4ce8:	e5932004 	ldr	r2, [r3, #4]
    4cec:	e51b3008 	ldr	r3, [fp, #-8]
    4cf0:	e5933000 	ldr	r3, [r3]
    4cf4:	e5933004 	ldr	r3, [r3, #4]
    4cf8:	e0822003 	add	r2, r2, r3
    4cfc:	e51b300c 	ldr	r3, [fp, #-12]
    4d00:	e5832004 	str	r2, [r3, #4]
    4d04:	e51b3008 	ldr	r3, [fp, #-8]
    4d08:	e5933000 	ldr	r3, [r3]
    4d0c:	e5932000 	ldr	r2, [r3]
    4d10:	e51b300c 	ldr	r3, [fp, #-12]
    4d14:	e5832000 	str	r2, [r3]
    4d18:	ea000003 	b	4d2c <free+0x100>
    4d1c:	e51b3008 	ldr	r3, [fp, #-8]
    4d20:	e5932000 	ldr	r2, [r3]
    4d24:	e51b300c 	ldr	r3, [fp, #-12]
    4d28:	e5832000 	str	r2, [r3]
    4d2c:	e51b3008 	ldr	r3, [fp, #-8]
    4d30:	e5933004 	ldr	r3, [r3, #4]
    4d34:	e1a03183 	lsl	r3, r3, #3
    4d38:	e51b2008 	ldr	r2, [fp, #-8]
    4d3c:	e0823003 	add	r3, r2, r3
    4d40:	e51b200c 	ldr	r2, [fp, #-12]
    4d44:	e1520003 	cmp	r2, r3
    4d48:	1a00000b 	bne	4d7c <free+0x150>
    4d4c:	e51b3008 	ldr	r3, [fp, #-8]
    4d50:	e5932004 	ldr	r2, [r3, #4]
    4d54:	e51b300c 	ldr	r3, [fp, #-12]
    4d58:	e5933004 	ldr	r3, [r3, #4]
    4d5c:	e0822003 	add	r2, r2, r3
    4d60:	e51b3008 	ldr	r3, [fp, #-8]
    4d64:	e5832004 	str	r2, [r3, #4]
    4d68:	e51b300c 	ldr	r3, [fp, #-12]
    4d6c:	e5932000 	ldr	r2, [r3]
    4d70:	e51b3008 	ldr	r3, [fp, #-8]
    4d74:	e5832000 	str	r2, [r3]
    4d78:	ea000002 	b	4d88 <free+0x15c>
    4d7c:	e51b3008 	ldr	r3, [fp, #-8]
    4d80:	e51b200c 	ldr	r2, [fp, #-12]
    4d84:	e5832000 	str	r2, [r3]
    4d88:	e59f2014 	ldr	r2, [pc, #20]	@ 4da4 <free+0x178>
    4d8c:	e51b3008 	ldr	r3, [fp, #-8]
    4d90:	e5823000 	str	r3, [r2]
    4d94:	e1a00000 	nop			@ (mov r0, r0)
    4d98:	e28bd000 	add	sp, fp, #0
    4d9c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
    4da0:	e12fff1e 	bx	lr
    4da4:	0000b0b4 	.word	0x0000b0b4

00004da8 <morecore>:
    4da8:	e92d4800 	push	{fp, lr}
    4dac:	e28db004 	add	fp, sp, #4
    4db0:	e24dd010 	sub	sp, sp, #16
    4db4:	e50b0010 	str	r0, [fp, #-16]
    4db8:	e51b3010 	ldr	r3, [fp, #-16]
    4dbc:	e3530a01 	cmp	r3, #4096	@ 0x1000
    4dc0:	2a000001 	bcs	4dcc <morecore+0x24>
    4dc4:	e3a03a01 	mov	r3, #4096	@ 0x1000
    4dc8:	e50b3010 	str	r3, [fp, #-16]
    4dcc:	e51b3010 	ldr	r3, [fp, #-16]
    4dd0:	e1a03183 	lsl	r3, r3, #3
    4dd4:	e1a00003 	mov	r0, r3
    4dd8:	ebfffe85 	bl	47f4 <sbrk>
    4ddc:	e50b0008 	str	r0, [fp, #-8]
    4de0:	e51b3008 	ldr	r3, [fp, #-8]
    4de4:	e3730001 	cmn	r3, #1
    4de8:	1a000001 	bne	4df4 <morecore+0x4c>
    4dec:	e3a03000 	mov	r3, #0
    4df0:	ea00000a 	b	4e20 <morecore+0x78>
    4df4:	e51b3008 	ldr	r3, [fp, #-8]
    4df8:	e50b300c 	str	r3, [fp, #-12]
    4dfc:	e51b300c 	ldr	r3, [fp, #-12]
    4e00:	e51b2010 	ldr	r2, [fp, #-16]
    4e04:	e5832004 	str	r2, [r3, #4]
    4e08:	e51b300c 	ldr	r3, [fp, #-12]
    4e0c:	e2833008 	add	r3, r3, #8
    4e10:	e1a00003 	mov	r0, r3
    4e14:	ebffff84 	bl	4c2c <free>
    4e18:	e59f300c 	ldr	r3, [pc, #12]	@ 4e2c <morecore+0x84>
    4e1c:	e5933000 	ldr	r3, [r3]
    4e20:	e1a00003 	mov	r0, r3
    4e24:	e24bd004 	sub	sp, fp, #4
    4e28:	e8bd8800 	pop	{fp, pc}
    4e2c:	0000b0b4 	.word	0x0000b0b4

00004e30 <malloc>:
    4e30:	e92d4800 	push	{fp, lr}
    4e34:	e28db004 	add	fp, sp, #4
    4e38:	e24dd018 	sub	sp, sp, #24
    4e3c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    4e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    4e44:	e2833007 	add	r3, r3, #7
    4e48:	e1a031a3 	lsr	r3, r3, #3
    4e4c:	e2833001 	add	r3, r3, #1
    4e50:	e50b3010 	str	r3, [fp, #-16]
    4e54:	e59f3134 	ldr	r3, [pc, #308]	@ 4f90 <malloc+0x160>
    4e58:	e5933000 	ldr	r3, [r3]
    4e5c:	e50b300c 	str	r3, [fp, #-12]
    4e60:	e51b300c 	ldr	r3, [fp, #-12]
    4e64:	e3530000 	cmp	r3, #0
    4e68:	1a00000b 	bne	4e9c <malloc+0x6c>
    4e6c:	e59f3120 	ldr	r3, [pc, #288]	@ 4f94 <malloc+0x164>
    4e70:	e50b300c 	str	r3, [fp, #-12]
    4e74:	e59f2114 	ldr	r2, [pc, #276]	@ 4f90 <malloc+0x160>
    4e78:	e51b300c 	ldr	r3, [fp, #-12]
    4e7c:	e5823000 	str	r3, [r2]
    4e80:	e59f3108 	ldr	r3, [pc, #264]	@ 4f90 <malloc+0x160>
    4e84:	e5933000 	ldr	r3, [r3]
    4e88:	e59f2104 	ldr	r2, [pc, #260]	@ 4f94 <malloc+0x164>
    4e8c:	e5823000 	str	r3, [r2]
    4e90:	e59f30fc 	ldr	r3, [pc, #252]	@ 4f94 <malloc+0x164>
    4e94:	e3a02000 	mov	r2, #0
    4e98:	e5832004 	str	r2, [r3, #4]
    4e9c:	e51b300c 	ldr	r3, [fp, #-12]
    4ea0:	e5933000 	ldr	r3, [r3]
    4ea4:	e50b3008 	str	r3, [fp, #-8]
    4ea8:	e51b3008 	ldr	r3, [fp, #-8]
    4eac:	e5933004 	ldr	r3, [r3, #4]
    4eb0:	e51b2010 	ldr	r2, [fp, #-16]
    4eb4:	e1520003 	cmp	r2, r3
    4eb8:	8a00001e 	bhi	4f38 <malloc+0x108>
    4ebc:	e51b3008 	ldr	r3, [fp, #-8]
    4ec0:	e5933004 	ldr	r3, [r3, #4]
    4ec4:	e51b2010 	ldr	r2, [fp, #-16]
    4ec8:	e1520003 	cmp	r2, r3
    4ecc:	1a000004 	bne	4ee4 <malloc+0xb4>
    4ed0:	e51b3008 	ldr	r3, [fp, #-8]
    4ed4:	e5932000 	ldr	r2, [r3]
    4ed8:	e51b300c 	ldr	r3, [fp, #-12]
    4edc:	e5832000 	str	r2, [r3]
    4ee0:	ea00000e 	b	4f20 <malloc+0xf0>
    4ee4:	e51b3008 	ldr	r3, [fp, #-8]
    4ee8:	e5932004 	ldr	r2, [r3, #4]
    4eec:	e51b3010 	ldr	r3, [fp, #-16]
    4ef0:	e0422003 	sub	r2, r2, r3
    4ef4:	e51b3008 	ldr	r3, [fp, #-8]
    4ef8:	e5832004 	str	r2, [r3, #4]
    4efc:	e51b3008 	ldr	r3, [fp, #-8]
    4f00:	e5933004 	ldr	r3, [r3, #4]
    4f04:	e1a03183 	lsl	r3, r3, #3
    4f08:	e51b2008 	ldr	r2, [fp, #-8]
    4f0c:	e0823003 	add	r3, r2, r3
    4f10:	e50b3008 	str	r3, [fp, #-8]
    4f14:	e51b3008 	ldr	r3, [fp, #-8]
    4f18:	e51b2010 	ldr	r2, [fp, #-16]
    4f1c:	e5832004 	str	r2, [r3, #4]
    4f20:	e59f2068 	ldr	r2, [pc, #104]	@ 4f90 <malloc+0x160>
    4f24:	e51b300c 	ldr	r3, [fp, #-12]
    4f28:	e5823000 	str	r3, [r2]
    4f2c:	e51b3008 	ldr	r3, [fp, #-8]
    4f30:	e2833008 	add	r3, r3, #8
    4f34:	ea000012 	b	4f84 <malloc+0x154>
    4f38:	e59f3050 	ldr	r3, [pc, #80]	@ 4f90 <malloc+0x160>
    4f3c:	e5933000 	ldr	r3, [r3]
    4f40:	e51b2008 	ldr	r2, [fp, #-8]
    4f44:	e1520003 	cmp	r2, r3
    4f48:	1a000007 	bne	4f6c <malloc+0x13c>
    4f4c:	e51b0010 	ldr	r0, [fp, #-16]
    4f50:	ebffff94 	bl	4da8 <morecore>
    4f54:	e50b0008 	str	r0, [fp, #-8]
    4f58:	e51b3008 	ldr	r3, [fp, #-8]
    4f5c:	e3530000 	cmp	r3, #0
    4f60:	1a000001 	bne	4f6c <malloc+0x13c>
    4f64:	e3a03000 	mov	r3, #0
    4f68:	ea000005 	b	4f84 <malloc+0x154>
    4f6c:	e51b3008 	ldr	r3, [fp, #-8]
    4f70:	e50b300c 	str	r3, [fp, #-12]
    4f74:	e51b3008 	ldr	r3, [fp, #-8]
    4f78:	e5933000 	ldr	r3, [r3]
    4f7c:	e50b3008 	str	r3, [fp, #-8]
    4f80:	eaffffc8 	b	4ea8 <malloc+0x78>
    4f84:	e1a00003 	mov	r0, r3
    4f88:	e24bd004 	sub	sp, fp, #4
    4f8c:	e8bd8800 	pop	{fp, pc}
    4f90:	0000b0b4 	.word	0x0000b0b4
    4f94:	0000b0ac 	.word	0x0000b0ac

00004f98 <__udivsi3>:
    4f98:	e2512001 	subs	r2, r1, #1
    4f9c:	012fff1e 	bxeq	lr
    4fa0:	3a000036 	bcc	5080 <__udivsi3+0xe8>
    4fa4:	e1500001 	cmp	r0, r1
    4fa8:	9a000022 	bls	5038 <__udivsi3+0xa0>
    4fac:	e1110002 	tst	r1, r2
    4fb0:	0a000023 	beq	5044 <__udivsi3+0xac>
    4fb4:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    4fb8:	01a01181 	lsleq	r1, r1, #3
    4fbc:	03a03008 	moveq	r3, #8
    4fc0:	13a03001 	movne	r3, #1
    4fc4:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    4fc8:	31510000 	cmpcc	r1, r0
    4fcc:	31a01201 	lslcc	r1, r1, #4
    4fd0:	31a03203 	lslcc	r3, r3, #4
    4fd4:	3afffffa 	bcc	4fc4 <__udivsi3+0x2c>
    4fd8:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    4fdc:	31510000 	cmpcc	r1, r0
    4fe0:	31a01081 	lslcc	r1, r1, #1
    4fe4:	31a03083 	lslcc	r3, r3, #1
    4fe8:	3afffffa 	bcc	4fd8 <__udivsi3+0x40>
    4fec:	e3a02000 	mov	r2, #0
    4ff0:	e1500001 	cmp	r0, r1
    4ff4:	20400001 	subcs	r0, r0, r1
    4ff8:	21822003 	orrcs	r2, r2, r3
    4ffc:	e15000a1 	cmp	r0, r1, lsr #1
    5000:	204000a1 	subcs	r0, r0, r1, lsr #1
    5004:	218220a3 	orrcs	r2, r2, r3, lsr #1
    5008:	e1500121 	cmp	r0, r1, lsr #2
    500c:	20400121 	subcs	r0, r0, r1, lsr #2
    5010:	21822123 	orrcs	r2, r2, r3, lsr #2
    5014:	e15001a1 	cmp	r0, r1, lsr #3
    5018:	204001a1 	subcs	r0, r0, r1, lsr #3
    501c:	218221a3 	orrcs	r2, r2, r3, lsr #3
    5020:	e3500000 	cmp	r0, #0
    5024:	11b03223 	lsrsne	r3, r3, #4
    5028:	11a01221 	lsrne	r1, r1, #4
    502c:	1affffef 	bne	4ff0 <__udivsi3+0x58>
    5030:	e1a00002 	mov	r0, r2
    5034:	e12fff1e 	bx	lr
    5038:	03a00001 	moveq	r0, #1
    503c:	13a00000 	movne	r0, #0
    5040:	e12fff1e 	bx	lr
    5044:	e3510801 	cmp	r1, #65536	@ 0x10000
    5048:	21a01821 	lsrcs	r1, r1, #16
    504c:	23a02010 	movcs	r2, #16
    5050:	33a02000 	movcc	r2, #0
    5054:	e3510c01 	cmp	r1, #256	@ 0x100
    5058:	21a01421 	lsrcs	r1, r1, #8
    505c:	22822008 	addcs	r2, r2, #8
    5060:	e3510010 	cmp	r1, #16
    5064:	21a01221 	lsrcs	r1, r1, #4
    5068:	22822004 	addcs	r2, r2, #4
    506c:	e3510004 	cmp	r1, #4
    5070:	82822003 	addhi	r2, r2, #3
    5074:	908220a1 	addls	r2, r2, r1, lsr #1
    5078:	e1a00230 	lsr	r0, r0, r2
    507c:	e12fff1e 	bx	lr
    5080:	e3500000 	cmp	r0, #0
    5084:	13e00000 	mvnne	r0, #0
    5088:	ea000007 	b	50ac <__aeabi_idiv0>

0000508c <__aeabi_uidivmod>:
    508c:	e3510000 	cmp	r1, #0
    5090:	0afffffa 	beq	5080 <__udivsi3+0xe8>
    5094:	e92d4003 	push	{r0, r1, lr}
    5098:	ebffffbe 	bl	4f98 <__udivsi3>
    509c:	e8bd4006 	pop	{r1, r2, lr}
    50a0:	e0030092 	mul	r3, r2, r0
    50a4:	e0411003 	sub	r1, r1, r3
    50a8:	e12fff1e 	bx	lr

000050ac <__aeabi_idiv0>:
    50ac:	e12fff1e 	bx	lr
