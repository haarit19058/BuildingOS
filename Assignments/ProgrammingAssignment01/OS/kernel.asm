
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b0000 	.word	0x800b0000
   10408:	800aa0dc 	.word	0x800aa0dc

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b0000 	.word	0x800b0000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	8002481c 	.word	0x8002481c
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800ad614 	.word	0x800ad614

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000502 	bl	80021aac <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb0004f0 	bl	80021aac <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	800294f4 	.word	0x800294f4
80020720:	800ad614 	.word	0x800ad614
80020724:	8002950c 	.word	0x8002950c
80020728:	80029520 	.word	0x80029520

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	80029534 	.word	0x80029534
800208a0:	80029538 	.word	0x80029538

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb001583 	bl	80025ef8 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	80029544 	.word	0x80029544
800209a0:	800aa0dc 	.word	0x800aa0dc
800209a4:	800ab600 	.word	0x800ab600
800209a8:	800aa110 	.word	0x800aa110

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb00155d 	bl	80025f40 <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb00154d 	bl	80025f6c <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001416 	bl	80025aa4 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb001526 	bl	80025f6c <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003eb 	bl	80021aac <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800aa0dc 	.word	0x800aa0dc
80020b0c:	800ab600 	.word	0x800ab600
80020b10:	8002954c 	.word	0x8002954c

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000f7e 	bl	80024950 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003c6 	bl	80021aac <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000f68 	bl	80024950 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	80029560 	.word	0x80029560

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003b0 	bl	80021aac <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0014d3 	bl	80025f40 <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb0013de 	bl	80025bf8 <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb0014b9 	bl	80025f6c <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	80029568 	.word	0x80029568
80020c94:	800aa0dc 	.word	0x800aa0dc
80020c98:	800ab600 	.word	0x800ab600

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ab818 	.word	0x800ab818

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ab818 	.word	0x800ab818

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ab818 	.word	0x800ab818

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb00144a 	bl	80025ef8 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	80029570 	.word	0x80029570
80020dd8:	800ab818 	.word	0x800ab818

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ab818 	.word	0x800ab818
80020f7c:	800ab858 	.word	0x800ab858
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002ad 	bl	80021aac <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ab818 	.word	0x800ab818
8002111c:	80029578 	.word	0x80029578
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb00023e 	bl	80021aac <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ab818 	.word	0x800ab818
8002126c:	80029588 	.word	0x80029588
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb0001f6 	bl	80021aac <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ab818 	.word	0x800ab818
80021360:	80029598 	.word	0x80029598

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ab818 	.word	0x800ab818
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb000195 	bl	80021aac <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb0012b8 	bl	80025f40 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0012be 	bl	80025f6c <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	800295b0 	.word	0x800295b0
80021484:	800ab818 	.word	0x800ab818

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb00016f 	bl	80021aac <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	800295d0 	.word	0x800295d0

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000134 	bl	80021aac <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb001257 	bl	80025f40 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb00125d 	bl	80025f6c <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	800295e4 	.word	0x800295e4
80021604:	800ab818 	.word	0x800ab818

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000d6 	bl	80021aac <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	80029614 	.word	0x80029614

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb001eeb 	bl	80029388 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb001ea0 	bl	80029294 <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000a9 	bl	80021b10 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002a000 	.word	0x8002a000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f31f0 	ldr	r3, [pc, #496]	@ 80021a9c <cprintf+0x208>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f01d8 	ldr	r0, [pc, #472]	@ 80021a9c <cprintf+0x208>
800218c0:	eb00119e 	bl	80025f40 <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f01c8 	ldr	r0, [pc, #456]	@ 80021aa0 <cprintf+0x20c>
800218d4:	eb000074 	bl	80021aac <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea000057 	b	80021a4c <cprintf+0x1b8>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000083 	bl	80021b10 <consputc>
80021900:	ea00004e 	b	80021a40 <cprintf+0x1ac>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a00004f 	beq	80021a70 <cprintf+0x1dc>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a000038 	beq	80021a20 <cprintf+0x18c>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba000038 	blt	80021a2c <cprintf+0x198>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000035 	bgt	80021a2c <cprintf+0x198>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000032 	blt	80021a2c <cprintf+0x198>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2432064 	sub	r2, r3, #100	@ 0x64
80021968:	e59f3134 	ldr	r3, [pc, #308]	@ 80021aa4 <cprintf+0x210>
8002196c:	e3520014 	cmp	r2, #20
80021970:	8a00002d 	bhi	80021a2c <cprintf+0x198>
80021974:	e793f102 	ldr	pc, [r3, r2, lsl #2]
80021978:	e1a00000 	nop			@ (mov r0, r0)
8002197c:	e51b300c 	ldr	r3, [fp, #-12]
80021980:	e2832004 	add	r2, r3, #4
80021984:	e50b200c 	str	r2, [fp, #-12]
80021988:	e5933000 	ldr	r3, [r3]
8002198c:	e3a02001 	mov	r2, #1
80021990:	e3a0100a 	mov	r1, #10
80021994:	e1a00003 	mov	r0, r3
80021998:	ebffff71 	bl	80021764 <printint>
8002199c:	ea000027 	b	80021a40 <cprintf+0x1ac>
800219a0:	e51b300c 	ldr	r3, [fp, #-12]
800219a4:	e2832004 	add	r2, r3, #4
800219a8:	e50b200c 	str	r2, [fp, #-12]
800219ac:	e5933000 	ldr	r3, [r3]
800219b0:	e3a02000 	mov	r2, #0
800219b4:	e3a01010 	mov	r1, #16
800219b8:	e1a00003 	mov	r0, r3
800219bc:	ebffff68 	bl	80021764 <printint>
800219c0:	ea00001e 	b	80021a40 <cprintf+0x1ac>
800219c4:	e51b300c 	ldr	r3, [fp, #-12]
800219c8:	e2832004 	add	r2, r3, #4
800219cc:	e50b200c 	str	r2, [fp, #-12]
800219d0:	e5933000 	ldr	r3, [r3]
800219d4:	e50b3010 	str	r3, [fp, #-16]
800219d8:	e51b3010 	ldr	r3, [fp, #-16]
800219dc:	e3530000 	cmp	r3, #0
800219e0:	1a000009 	bne	80021a0c <cprintf+0x178>
800219e4:	e59f30bc 	ldr	r3, [pc, #188]	@ 80021aa8 <cprintf+0x214>
800219e8:	e50b3010 	str	r3, [fp, #-16]
800219ec:	ea000006 	b	80021a0c <cprintf+0x178>
800219f0:	e51b3010 	ldr	r3, [fp, #-16]
800219f4:	e5d33000 	ldrb	r3, [r3]
800219f8:	e1a00003 	mov	r0, r3
800219fc:	eb000043 	bl	80021b10 <consputc>
80021a00:	e51b3010 	ldr	r3, [fp, #-16]
80021a04:	e2833001 	add	r3, r3, #1
80021a08:	e50b3010 	str	r3, [fp, #-16]
80021a0c:	e51b3010 	ldr	r3, [fp, #-16]
80021a10:	e5d33000 	ldrb	r3, [r3]
80021a14:	e3530000 	cmp	r3, #0
80021a18:	1afffff4 	bne	800219f0 <cprintf+0x15c>
80021a1c:	ea000007 	b	80021a40 <cprintf+0x1ac>
80021a20:	e3a00025 	mov	r0, #37	@ 0x25
80021a24:	eb000039 	bl	80021b10 <consputc>
80021a28:	ea000004 	b	80021a40 <cprintf+0x1ac>
80021a2c:	e3a00025 	mov	r0, #37	@ 0x25
80021a30:	eb000036 	bl	80021b10 <consputc>
80021a34:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a38:	eb000034 	bl	80021b10 <consputc>
80021a3c:	e1a00000 	nop			@ (mov r0, r0)
80021a40:	e51b3008 	ldr	r3, [fp, #-8]
80021a44:	e2833001 	add	r3, r3, #1
80021a48:	e50b3008 	str	r3, [fp, #-8]
80021a4c:	e59b2004 	ldr	r2, [fp, #4]
80021a50:	e51b3008 	ldr	r3, [fp, #-8]
80021a54:	e0823003 	add	r3, r2, r3
80021a58:	e5d33000 	ldrb	r3, [r3]
80021a5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a64:	e3530000 	cmp	r3, #0
80021a68:	1affff9f 	bne	800218ec <cprintf+0x58>
80021a6c:	ea000000 	b	80021a74 <cprintf+0x1e0>
80021a70:	e1a00000 	nop			@ (mov r0, r0)
80021a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021a78:	e3530000 	cmp	r3, #0
80021a7c:	0a000001 	beq	80021a88 <cprintf+0x1f4>
80021a80:	e59f0014 	ldr	r0, [pc, #20]	@ 80021a9c <cprintf+0x208>
80021a84:	eb001138 	bl	80025f6c <release>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e24bd004 	sub	sp, fp, #4
80021a90:	e8bd4800 	pop	{fp, lr}
80021a94:	e28dd010 	add	sp, sp, #16
80021a98:	e12fff1e 	bx	lr
80021a9c:	800ab894 	.word	0x800ab894
80021aa0:	80029624 	.word	0x80029624
80021aa4:	80029638 	.word	0x80029638
80021aa8:	80029630 	.word	0x80029630

80021aac <panic>:
80021aac:	e92d4800 	push	{fp, lr}
80021ab0:	e28db004 	add	fp, sp, #4
80021ab4:	e24dd008 	sub	sp, sp, #8
80021ab8:	e50b0008 	str	r0, [fp, #-8]
80021abc:	ebfffa9f 	bl	80020540 <cli>
80021ac0:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b00 <panic+0x54>
80021ac4:	e3a02000 	mov	r2, #0
80021ac8:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021acc:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b04 <panic+0x58>
80021ad0:	e5933000 	ldr	r3, [r3]
80021ad4:	e5d33000 	ldrb	r3, [r3]
80021ad8:	e1a01003 	mov	r1, r3
80021adc:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b08 <panic+0x5c>
80021ae0:	ebffff6b 	bl	80021894 <cprintf>
80021ae4:	e51b0008 	ldr	r0, [fp, #-8]
80021ae8:	ebfffb47 	bl	8002080c <show_callstk>
80021aec:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b0c <panic+0x60>
80021af0:	e3a02001 	mov	r2, #1
80021af4:	e5832000 	str	r2, [r3]
80021af8:	e1a00000 	nop			@ (mov r0, r0)
80021afc:	eafffffd 	b	80021af8 <panic+0x4c>
80021b00:	800ab894 	.word	0x800ab894
80021b04:	800ad614 	.word	0x800ad614
80021b08:	8002968c 	.word	0x8002968c
80021b0c:	800ab890 	.word	0x800ab890

80021b10 <consputc>:
80021b10:	e92d4800 	push	{fp, lr}
80021b14:	e28db004 	add	fp, sp, #4
80021b18:	e24dd008 	sub	sp, sp, #8
80021b1c:	e50b0008 	str	r0, [fp, #-8]
80021b20:	e59f3050 	ldr	r3, [pc, #80]	@ 80021b78 <consputc+0x68>
80021b24:	e5933000 	ldr	r3, [r3]
80021b28:	e3530000 	cmp	r3, #0
80021b2c:	0a000002 	beq	80021b3c <consputc+0x2c>
80021b30:	ebfffa82 	bl	80020540 <cli>
80021b34:	e1a00000 	nop			@ (mov r0, r0)
80021b38:	eafffffd 	b	80021b34 <consputc+0x24>
80021b3c:	e51b3008 	ldr	r3, [fp, #-8]
80021b40:	e3530c01 	cmp	r3, #256	@ 0x100
80021b44:	1a000006 	bne	80021b64 <consputc+0x54>
80021b48:	e3a00008 	mov	r0, #8
80021b4c:	eb001cc0 	bl	80028e54 <uartputc>
80021b50:	e3a00020 	mov	r0, #32
80021b54:	eb001cbe 	bl	80028e54 <uartputc>
80021b58:	e3a00008 	mov	r0, #8
80021b5c:	eb001cbc 	bl	80028e54 <uartputc>
80021b60:	ea000001 	b	80021b6c <consputc+0x5c>
80021b64:	e51b0008 	ldr	r0, [fp, #-8]
80021b68:	eb001cb9 	bl	80028e54 <uartputc>
80021b6c:	e1a00000 	nop			@ (mov r0, r0)
80021b70:	e24bd004 	sub	sp, fp, #4
80021b74:	e8bd8800 	pop	{fp, pc}
80021b78:	800ab890 	.word	0x800ab890

80021b7c <consoleintr>:
80021b7c:	e92d4800 	push	{fp, lr}
80021b80:	e28db004 	add	fp, sp, #4
80021b84:	e24ddf8a 	sub	sp, sp, #552	@ 0x228
80021b88:	e50b0228 	str	r0, [fp, #-552]	@ 0xfffffdd8
80021b8c:	e59f042c 	ldr	r0, [pc, #1068]	@ 80021fc0 <consoleintr+0x444>
80021b90:	eb0010ea 	bl	80025f40 <acquire>
80021b94:	ea0000fe 	b	80021f94 <consoleintr+0x418>
80021b98:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021b9c:	e3530015 	cmp	r3, #21
80021ba0:	ca000009 	bgt	80021bcc <consoleintr+0x50>
80021ba4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ba8:	e3530008 	cmp	r3, #8
80021bac:	ba0000bf 	blt	80021eb0 <consoleintr+0x334>
80021bb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021bb4:	e2432008 	sub	r2, r3, #8
80021bb8:	e59f3404 	ldr	r3, [pc, #1028]	@ 80021fc4 <consoleintr+0x448>
80021bbc:	e352000d 	cmp	r2, #13
80021bc0:	8a0000ba 	bhi	80021eb0 <consoleintr+0x334>
80021bc4:	e793f102 	ldr	pc, [r3, r2, lsl #2]
80021bc8:	e1a00000 	nop			@ (mov r0, r0)
80021bcc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021bd0:	e353007f 	cmp	r3, #127	@ 0x7f
80021bd4:	0a00001a 	beq	80021c44 <consoleintr+0xc8>
80021bd8:	ea0000b4 	b	80021eb0 <consoleintr+0x334>
80021bdc:	eb00103f 	bl	80025ce0 <procdump>
80021be0:	ea0000eb 	b	80021f94 <consoleintr+0x418>
80021be4:	e59f33d4 	ldr	r3, [pc, #980]	@ 80021fc0 <consoleintr+0x444>
80021be8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021bec:	e2433001 	sub	r3, r3, #1
80021bf0:	e59f23c8 	ldr	r2, [pc, #968]	@ 80021fc0 <consoleintr+0x444>
80021bf4:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021bf8:	e3a00c01 	mov	r0, #256	@ 0x100
80021bfc:	ebffffc3 	bl	80021b10 <consputc>
80021c00:	e59f33b8 	ldr	r3, [pc, #952]	@ 80021fc0 <consoleintr+0x444>
80021c04:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c08:	e59f33b0 	ldr	r3, [pc, #944]	@ 80021fc0 <consoleintr+0x444>
80021c0c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c10:	e1520003 	cmp	r2, r3
80021c14:	0a0000d9 	beq	80021f80 <consoleintr+0x404>
80021c18:	e59f33a0 	ldr	r3, [pc, #928]	@ 80021fc0 <consoleintr+0x444>
80021c1c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c20:	e2433001 	sub	r3, r3, #1
80021c24:	e1a03b83 	lsl	r3, r3, #23
80021c28:	e1a03ba3 	lsr	r3, r3, #23
80021c2c:	e59f238c 	ldr	r2, [pc, #908]	@ 80021fc0 <consoleintr+0x444>
80021c30:	e0823003 	add	r3, r2, r3
80021c34:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c38:	e353000a 	cmp	r3, #10
80021c3c:	1affffe8 	bne	80021be4 <consoleintr+0x68>
80021c40:	ea0000ce 	b	80021f80 <consoleintr+0x404>
80021c44:	e59f3374 	ldr	r3, [pc, #884]	@ 80021fc0 <consoleintr+0x444>
80021c48:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c4c:	e59f336c 	ldr	r3, [pc, #876]	@ 80021fc0 <consoleintr+0x444>
80021c50:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c54:	e1520003 	cmp	r2, r3
80021c58:	0a0000ca 	beq	80021f88 <consoleintr+0x40c>
80021c5c:	e59f335c 	ldr	r3, [pc, #860]	@ 80021fc0 <consoleintr+0x444>
80021c60:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c64:	e2433001 	sub	r3, r3, #1
80021c68:	e59f2350 	ldr	r2, [pc, #848]	@ 80021fc0 <consoleintr+0x444>
80021c6c:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c70:	e3a00c01 	mov	r0, #256	@ 0x100
80021c74:	ebffffa5 	bl	80021b10 <consputc>
80021c78:	ea0000c2 	b	80021f88 <consoleintr+0x40c>
80021c7c:	e59f333c 	ldr	r3, [pc, #828]	@ 80021fc0 <consoleintr+0x444>
80021c80:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c84:	e50b3008 	str	r3, [fp, #-8]
80021c88:	ea000002 	b	80021c98 <consoleintr+0x11c>
80021c8c:	e51b3008 	ldr	r3, [fp, #-8]
80021c90:	e2433001 	sub	r3, r3, #1
80021c94:	e50b3008 	str	r3, [fp, #-8]
80021c98:	e59f3320 	ldr	r3, [pc, #800]	@ 80021fc0 <consoleintr+0x444>
80021c9c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80021ca0:	e51b3008 	ldr	r3, [fp, #-8]
80021ca4:	e1520003 	cmp	r2, r3
80021ca8:	2a00000c 	bcs	80021ce0 <consoleintr+0x164>
80021cac:	e51b3008 	ldr	r3, [fp, #-8]
80021cb0:	e2433001 	sub	r3, r3, #1
80021cb4:	e2732000 	rsbs	r2, r3, #0
80021cb8:	e1a03b83 	lsl	r3, r3, #23
80021cbc:	e1a03ba3 	lsr	r3, r3, #23
80021cc0:	e1a02b82 	lsl	r2, r2, #23
80021cc4:	e1a02ba2 	lsr	r2, r2, #23
80021cc8:	52623000 	rsbpl	r3, r2, #0
80021ccc:	e59f22ec 	ldr	r2, [pc, #748]	@ 80021fc0 <consoleintr+0x444>
80021cd0:	e0823003 	add	r3, r2, r3
80021cd4:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021cd8:	e3530020 	cmp	r3, #32
80021cdc:	1affffea 	bne	80021c8c <consoleintr+0x110>
80021ce0:	e59f32d8 	ldr	r3, [pc, #728]	@ 80021fc0 <consoleintr+0x444>
80021ce4:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021ce8:	e51b3008 	ldr	r3, [fp, #-8]
80021cec:	e0423003 	sub	r3, r2, r3
80021cf0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80021cf4:	e3a03000 	mov	r3, #0
80021cf8:	e50b300c 	str	r3, [fp, #-12]
80021cfc:	ea000013 	b	80021d50 <consoleintr+0x1d4>
80021d00:	e51b2008 	ldr	r2, [fp, #-8]
80021d04:	e51b300c 	ldr	r3, [fp, #-12]
80021d08:	e0823003 	add	r3, r2, r3
80021d0c:	e2732000 	rsbs	r2, r3, #0
80021d10:	e1a03b83 	lsl	r3, r3, #23
80021d14:	e1a03ba3 	lsr	r3, r3, #23
80021d18:	e1a02b82 	lsl	r2, r2, #23
80021d1c:	e1a02ba2 	lsr	r2, r2, #23
80021d20:	52623000 	rsbpl	r3, r2, #0
80021d24:	e59f2294 	ldr	r2, [pc, #660]	@ 80021fc0 <consoleintr+0x444>
80021d28:	e0823003 	add	r3, r2, r3
80021d2c:	e5d31034 	ldrb	r1, [r3, #52]	@ 0x34
80021d30:	e24b2f89 	sub	r2, fp, #548	@ 0x224
80021d34:	e51b300c 	ldr	r3, [fp, #-12]
80021d38:	e0823003 	add	r3, r2, r3
80021d3c:	e1a02001 	mov	r2, r1
80021d40:	e5c32000 	strb	r2, [r3]
80021d44:	e51b300c 	ldr	r3, [fp, #-12]
80021d48:	e2833001 	add	r3, r3, #1
80021d4c:	e50b300c 	str	r3, [fp, #-12]
80021d50:	e51b200c 	ldr	r2, [fp, #-12]
80021d54:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d58:	e1520003 	cmp	r2, r3
80021d5c:	baffffe7 	blt	80021d00 <consoleintr+0x184>
80021d60:	e24b2f89 	sub	r2, fp, #548	@ 0x224
80021d64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d68:	e0823003 	add	r3, r2, r3
80021d6c:	e3a02000 	mov	r2, #0
80021d70:	e5c32000 	strb	r2, [r3]
80021d74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021d78:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021d7c:	e24b2024 	sub	r2, fp, #36	@ 0x24
80021d80:	e24b3f89 	sub	r3, fp, #548	@ 0x224
80021d84:	e1a01002 	mov	r1, r2
80021d88:	e1a00003 	mov	r0, r3
80021d8c:	eb001c71 	bl	80028f58 <auto_complete>
80021d90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021d94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021d98:	e3530001 	cmp	r3, #1
80021d9c:	1a000026 	bne	80021e3c <consoleintr+0x2c0>
80021da0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021da4:	e50b3010 	str	r3, [fp, #-16]
80021da8:	ea000019 	b	80021e14 <consoleintr+0x298>
80021dac:	e51b2008 	ldr	r2, [fp, #-8]
80021db0:	e51b3010 	ldr	r3, [fp, #-16]
80021db4:	e0823003 	add	r3, r2, r3
80021db8:	e2732000 	rsbs	r2, r3, #0
80021dbc:	e1a03b83 	lsl	r3, r3, #23
80021dc0:	e1a03ba3 	lsr	r3, r3, #23
80021dc4:	e1a02b82 	lsl	r2, r2, #23
80021dc8:	e1a02ba2 	lsr	r2, r2, #23
80021dcc:	52623000 	rsbpl	r3, r2, #0
80021dd0:	e24b1f89 	sub	r1, fp, #548	@ 0x224
80021dd4:	e51b2010 	ldr	r2, [fp, #-16]
80021dd8:	e0812002 	add	r2, r1, r2
80021ddc:	e5d21000 	ldrb	r1, [r2]
80021de0:	e59f21d8 	ldr	r2, [pc, #472]	@ 80021fc0 <consoleintr+0x444>
80021de4:	e0823003 	add	r3, r2, r3
80021de8:	e1a02001 	mov	r2, r1
80021dec:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021df0:	e24b2f89 	sub	r2, fp, #548	@ 0x224
80021df4:	e51b3010 	ldr	r3, [fp, #-16]
80021df8:	e0823003 	add	r3, r2, r3
80021dfc:	e5d33000 	ldrb	r3, [r3]
80021e00:	e1a00003 	mov	r0, r3
80021e04:	ebffff41 	bl	80021b10 <consputc>
80021e08:	e51b3010 	ldr	r3, [fp, #-16]
80021e0c:	e2833001 	add	r3, r3, #1
80021e10:	e50b3010 	str	r3, [fp, #-16]
80021e14:	e51b2010 	ldr	r2, [fp, #-16]
80021e18:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021e1c:	e1520003 	cmp	r2, r3
80021e20:	3affffe1 	bcc	80021dac <consoleintr+0x230>
80021e24:	e51b2008 	ldr	r2, [fp, #-8]
80021e28:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021e2c:	e0823003 	add	r3, r2, r3
80021e30:	e59f2188 	ldr	r2, [pc, #392]	@ 80021fc0 <consoleintr+0x444>
80021e34:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021e38:	ea000055 	b	80021f94 <consoleintr+0x418>
80021e3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80021e40:	e3530001 	cmp	r3, #1
80021e44:	da000016 	ble	80021ea4 <consoleintr+0x328>
80021e48:	e59f0178 	ldr	r0, [pc, #376]	@ 80021fc8 <consoleintr+0x44c>
80021e4c:	ebfffe90 	bl	80021894 <cprintf>
80021e50:	e59f3168 	ldr	r3, [pc, #360]	@ 80021fc0 <consoleintr+0x444>
80021e54:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021e5c:	ea00000a 	b	80021e8c <consoleintr+0x310>
80021e60:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021e64:	e1a03b83 	lsl	r3, r3, #23
80021e68:	e1a03ba3 	lsr	r3, r3, #23
80021e6c:	e59f214c 	ldr	r2, [pc, #332]	@ 80021fc0 <consoleintr+0x444>
80021e70:	e0823003 	add	r3, r2, r3
80021e74:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021e78:	e1a00003 	mov	r0, r3
80021e7c:	ebffff23 	bl	80021b10 <consputc>
80021e80:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021e84:	e2833001 	add	r3, r3, #1
80021e88:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021e8c:	e59f312c 	ldr	r3, [pc, #300]	@ 80021fc0 <consoleintr+0x444>
80021e90:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021e94:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021e98:	e1520003 	cmp	r2, r3
80021e9c:	3affffef 	bcc	80021e60 <consoleintr+0x2e4>
80021ea0:	ea00003b 	b	80021f94 <consoleintr+0x418>
80021ea4:	e3a00007 	mov	r0, #7
80021ea8:	ebffff18 	bl	80021b10 <consputc>
80021eac:	ea000038 	b	80021f94 <consoleintr+0x418>
80021eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021eb4:	e3530000 	cmp	r3, #0
80021eb8:	0a000034 	beq	80021f90 <consoleintr+0x414>
80021ebc:	e59f30fc 	ldr	r3, [pc, #252]	@ 80021fc0 <consoleintr+0x444>
80021ec0:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021ec4:	e59f30f4 	ldr	r3, [pc, #244]	@ 80021fc0 <consoleintr+0x444>
80021ec8:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021ecc:	e0423003 	sub	r3, r2, r3
80021ed0:	e3530c02 	cmp	r3, #512	@ 0x200
80021ed4:	2a00002d 	bcs	80021f90 <consoleintr+0x414>
80021ed8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021edc:	e353000d 	cmp	r3, #13
80021ee0:	0a000001 	beq	80021eec <consoleintr+0x370>
80021ee4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ee8:	ea000000 	b	80021ef0 <consoleintr+0x374>
80021eec:	e3a0300a 	mov	r3, #10
80021ef0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021ef4:	e59f30c4 	ldr	r3, [pc, #196]	@ 80021fc0 <consoleintr+0x444>
80021ef8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021efc:	e2832001 	add	r2, r3, #1
80021f00:	e59f10b8 	ldr	r1, [pc, #184]	@ 80021fc0 <consoleintr+0x444>
80021f04:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021f08:	e1a03b83 	lsl	r3, r3, #23
80021f0c:	e1a03ba3 	lsr	r3, r3, #23
80021f10:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80021f14:	e6ef1072 	uxtb	r1, r2
80021f18:	e59f20a0 	ldr	r2, [pc, #160]	@ 80021fc0 <consoleintr+0x444>
80021f1c:	e0823003 	add	r3, r2, r3
80021f20:	e1a02001 	mov	r2, r1
80021f24:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021f28:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021f2c:	ebfffef7 	bl	80021b10 <consputc>
80021f30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f34:	e353000a 	cmp	r3, #10
80021f38:	0a000009 	beq	80021f64 <consoleintr+0x3e8>
80021f3c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f40:	e3530004 	cmp	r3, #4
80021f44:	0a000006 	beq	80021f64 <consoleintr+0x3e8>
80021f48:	e59f3070 	ldr	r3, [pc, #112]	@ 80021fc0 <consoleintr+0x444>
80021f4c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021f50:	e59f3068 	ldr	r3, [pc, #104]	@ 80021fc0 <consoleintr+0x444>
80021f54:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021f58:	e2833c02 	add	r3, r3, #512	@ 0x200
80021f5c:	e1520003 	cmp	r2, r3
80021f60:	1a00000a 	bne	80021f90 <consoleintr+0x414>
80021f64:	e59f3054 	ldr	r3, [pc, #84]	@ 80021fc0 <consoleintr+0x444>
80021f68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021f6c:	e59f204c 	ldr	r2, [pc, #76]	@ 80021fc0 <consoleintr+0x444>
80021f70:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021f74:	e59f0050 	ldr	r0, [pc, #80]	@ 80021fcc <consoleintr+0x450>
80021f78:	eb000f1e 	bl	80025bf8 <wakeup>
80021f7c:	ea000003 	b	80021f90 <consoleintr+0x414>
80021f80:	e1a00000 	nop			@ (mov r0, r0)
80021f84:	ea000002 	b	80021f94 <consoleintr+0x418>
80021f88:	e1a00000 	nop			@ (mov r0, r0)
80021f8c:	ea000000 	b	80021f94 <consoleintr+0x418>
80021f90:	e1a00000 	nop			@ (mov r0, r0)
80021f94:	e51b3228 	ldr	r3, [fp, #-552]	@ 0xfffffdd8
80021f98:	e12fff33 	blx	r3
80021f9c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021fa0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021fa4:	e3530000 	cmp	r3, #0
80021fa8:	aafffefa 	bge	80021b98 <consoleintr+0x1c>
80021fac:	e59f000c 	ldr	r0, [pc, #12]	@ 80021fc0 <consoleintr+0x444>
80021fb0:	eb000fed 	bl	80025f6c <release>
80021fb4:	e1a00000 	nop			@ (mov r0, r0)
80021fb8:	e24bd004 	sub	sp, fp, #4
80021fbc:	e8bd8800 	pop	{fp, pc}
80021fc0:	800ab8cc 	.word	0x800ab8cc
80021fc4:	800296a0 	.word	0x800296a0
80021fc8:	8002969c 	.word	0x8002969c
80021fcc:	800abb00 	.word	0x800abb00

80021fd0 <consoleread>:
80021fd0:	e92d4800 	push	{fp, lr}
80021fd4:	e28db004 	add	fp, sp, #4
80021fd8:	e24dd018 	sub	sp, sp, #24
80021fdc:	e50b0010 	str	r0, [fp, #-16]
80021fe0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021fe4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021fe8:	e51b0010 	ldr	r0, [fp, #-16]
80021fec:	eb000534 	bl	800234c4 <iunlock>
80021ff0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021ff4:	e50b3008 	str	r3, [fp, #-8]
80021ff8:	e59f0128 	ldr	r0, [pc, #296]	@ 80022128 <consoleread+0x158>
80021ffc:	eb000fcf 	bl	80025f40 <acquire>
80022000:	ea000037 	b	800220e4 <consoleread+0x114>
80022004:	e59f3120 	ldr	r3, [pc, #288]	@ 8002212c <consoleread+0x15c>
80022008:	e5933000 	ldr	r3, [r3]
8002200c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80022010:	e3530000 	cmp	r3, #0
80022014:	0a000005 	beq	80022030 <consoleread+0x60>
80022018:	e59f0108 	ldr	r0, [pc, #264]	@ 80022128 <consoleread+0x158>
8002201c:	eb000fd2 	bl	80025f6c <release>
80022020:	e51b0010 	ldr	r0, [fp, #-16]
80022024:	eb0004c2 	bl	80023334 <ilock>
80022028:	e3e03000 	mvn	r3, #0
8002202c:	ea00003a 	b	8002211c <consoleread+0x14c>
80022030:	e59f10f0 	ldr	r1, [pc, #240]	@ 80022128 <consoleread+0x158>
80022034:	e59f00f4 	ldr	r0, [pc, #244]	@ 80022130 <consoleread+0x160>
80022038:	eb000e99 	bl	80025aa4 <sleep>
8002203c:	e59f30e4 	ldr	r3, [pc, #228]	@ 80022128 <consoleread+0x158>
80022040:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80022044:	e59f30dc 	ldr	r3, [pc, #220]	@ 80022128 <consoleread+0x158>
80022048:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
8002204c:	e1520003 	cmp	r2, r3
80022050:	0affffeb 	beq	80022004 <consoleread+0x34>
80022054:	e59f30cc 	ldr	r3, [pc, #204]	@ 80022128 <consoleread+0x158>
80022058:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
8002205c:	e2832001 	add	r2, r3, #1
80022060:	e59f10c0 	ldr	r1, [pc, #192]	@ 80022128 <consoleread+0x158>
80022064:	e5812234 	str	r2, [r1, #564]	@ 0x234
80022068:	e1a03b83 	lsl	r3, r3, #23
8002206c:	e1a03ba3 	lsr	r3, r3, #23
80022070:	e59f20b0 	ldr	r2, [pc, #176]	@ 80022128 <consoleread+0x158>
80022074:	e0823003 	add	r3, r2, r3
80022078:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
8002207c:	e50b300c 	str	r3, [fp, #-12]
80022080:	e51b300c 	ldr	r3, [fp, #-12]
80022084:	e3530004 	cmp	r3, #4
80022088:	1a000009 	bne	800220b4 <consoleread+0xe4>
8002208c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022090:	e51b2008 	ldr	r2, [fp, #-8]
80022094:	e1520003 	cmp	r2, r3
80022098:	9a000015 	bls	800220f4 <consoleread+0x124>
8002209c:	e59f3084 	ldr	r3, [pc, #132]	@ 80022128 <consoleread+0x158>
800220a0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
800220a4:	e2433001 	sub	r3, r3, #1
800220a8:	e59f2078 	ldr	r2, [pc, #120]	@ 80022128 <consoleread+0x158>
800220ac:	e5823234 	str	r3, [r2, #564]	@ 0x234
800220b0:	ea00000f 	b	800220f4 <consoleread+0x124>
800220b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800220b8:	e2832001 	add	r2, r3, #1
800220bc:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
800220c0:	e51b200c 	ldr	r2, [fp, #-12]
800220c4:	e6ef2072 	uxtb	r2, r2
800220c8:	e5c32000 	strb	r2, [r3]
800220cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800220d0:	e2433001 	sub	r3, r3, #1
800220d4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800220d8:	e51b300c 	ldr	r3, [fp, #-12]
800220dc:	e353000a 	cmp	r3, #10
800220e0:	0a000005 	beq	800220fc <consoleread+0x12c>
800220e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800220e8:	e3530000 	cmp	r3, #0
800220ec:	caffffd2 	bgt	8002203c <consoleread+0x6c>
800220f0:	ea000002 	b	80022100 <consoleread+0x130>
800220f4:	e1a00000 	nop			@ (mov r0, r0)
800220f8:	ea000000 	b	80022100 <consoleread+0x130>
800220fc:	e1a00000 	nop			@ (mov r0, r0)
80022100:	e59f0020 	ldr	r0, [pc, #32]	@ 80022128 <consoleread+0x158>
80022104:	eb000f98 	bl	80025f6c <release>
80022108:	e51b0010 	ldr	r0, [fp, #-16]
8002210c:	eb000488 	bl	80023334 <ilock>
80022110:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022114:	e51b2008 	ldr	r2, [fp, #-8]
80022118:	e0423003 	sub	r3, r2, r3
8002211c:	e1a00003 	mov	r0, r3
80022120:	e24bd004 	sub	sp, fp, #4
80022124:	e8bd8800 	pop	{fp, pc}
80022128:	800ab8cc 	.word	0x800ab8cc
8002212c:	800af658 	.word	0x800af658
80022130:	800abb00 	.word	0x800abb00

80022134 <consolewrite>:
80022134:	e92d4800 	push	{fp, lr}
80022138:	e28db004 	add	fp, sp, #4
8002213c:	e24dd018 	sub	sp, sp, #24
80022140:	e50b0010 	str	r0, [fp, #-16]
80022144:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022148:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
8002214c:	e51b0010 	ldr	r0, [fp, #-16]
80022150:	eb0004db 	bl	800234c4 <iunlock>
80022154:	e59f0060 	ldr	r0, [pc, #96]	@ 800221bc <consolewrite+0x88>
80022158:	eb000f78 	bl	80025f40 <acquire>
8002215c:	e3a03000 	mov	r3, #0
80022160:	e50b3008 	str	r3, [fp, #-8]
80022164:	ea000008 	b	8002218c <consolewrite+0x58>
80022168:	e51b3008 	ldr	r3, [fp, #-8]
8002216c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022170:	e0823003 	add	r3, r2, r3
80022174:	e5d33000 	ldrb	r3, [r3]
80022178:	e1a00003 	mov	r0, r3
8002217c:	ebfffe63 	bl	80021b10 <consputc>
80022180:	e51b3008 	ldr	r3, [fp, #-8]
80022184:	e2833001 	add	r3, r3, #1
80022188:	e50b3008 	str	r3, [fp, #-8]
8002218c:	e51b2008 	ldr	r2, [fp, #-8]
80022190:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022194:	e1520003 	cmp	r2, r3
80022198:	bafffff2 	blt	80022168 <consolewrite+0x34>
8002219c:	e59f0018 	ldr	r0, [pc, #24]	@ 800221bc <consolewrite+0x88>
800221a0:	eb000f71 	bl	80025f6c <release>
800221a4:	e51b0010 	ldr	r0, [fp, #-16]
800221a8:	eb000461 	bl	80023334 <ilock>
800221ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800221b0:	e1a00003 	mov	r0, r3
800221b4:	e24bd004 	sub	sp, fp, #4
800221b8:	e8bd8800 	pop	{fp, pc}
800221bc:	800ab894 	.word	0x800ab894

800221c0 <consoleinit>:
800221c0:	e92d4800 	push	{fp, lr}
800221c4:	e28db004 	add	fp, sp, #4
800221c8:	e59f103c 	ldr	r1, [pc, #60]	@ 8002220c <consoleinit+0x4c>
800221cc:	e59f003c 	ldr	r0, [pc, #60]	@ 80022210 <consoleinit+0x50>
800221d0:	eb000f48 	bl	80025ef8 <initlock>
800221d4:	e59f1038 	ldr	r1, [pc, #56]	@ 80022214 <consoleinit+0x54>
800221d8:	e59f0038 	ldr	r0, [pc, #56]	@ 80022218 <consoleinit+0x58>
800221dc:	eb000f45 	bl	80025ef8 <initlock>
800221e0:	e59f3034 	ldr	r3, [pc, #52]	@ 8002221c <consoleinit+0x5c>
800221e4:	e59f2034 	ldr	r2, [pc, #52]	@ 80022220 <consoleinit+0x60>
800221e8:	e583200c 	str	r2, [r3, #12]
800221ec:	e59f3028 	ldr	r3, [pc, #40]	@ 8002221c <consoleinit+0x5c>
800221f0:	e59f202c 	ldr	r2, [pc, #44]	@ 80022224 <consoleinit+0x64>
800221f4:	e5832008 	str	r2, [r3, #8]
800221f8:	e59f3010 	ldr	r3, [pc, #16]	@ 80022210 <consoleinit+0x50>
800221fc:	e3a02001 	mov	r2, #1
80022200:	e5832034 	str	r2, [r3, #52]	@ 0x34
80022204:	e1a00000 	nop			@ (mov r0, r0)
80022208:	e8bd8800 	pop	{fp, pc}
8002220c:	800296d8 	.word	0x800296d8
80022210:	800ab894 	.word	0x800ab894
80022214:	800296e0 	.word	0x800296e0
80022218:	800ab8cc 	.word	0x800ab8cc
8002221c:	800abb0c 	.word	0x800abb0c
80022220:	80022134 	.word	0x80022134
80022224:	80021fd0 	.word	0x80021fd0

80022228 <exec>:
80022228:	e92d4810 	push	{r4, fp, lr}
8002222c:	e28db008 	add	fp, sp, #8
80022230:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80022234:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022238:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
8002223c:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
80022240:	eb00080e 	bl	80024280 <namei>
80022244:	e50b0010 	str	r0, [fp, #-16]
80022248:	e51b3010 	ldr	r3, [fp, #-16]
8002224c:	e3530000 	cmp	r3, #0
80022250:	1a000001 	bne	8002225c <exec+0x34>
80022254:	e3e03000 	mvn	r3, #0
80022258:	ea000120 	b	800226e0 <exec+0x4b8>
8002225c:	e51b0010 	ldr	r0, [fp, #-16]
80022260:	eb000433 	bl	80023334 <ilock>
80022264:	e24b1068 	sub	r1, fp, #104	@ 0x68
80022268:	e3a03034 	mov	r3, #52	@ 0x34
8002226c:	e3a02000 	mov	r2, #0
80022270:	e51b0010 	ldr	r0, [fp, #-16]
80022274:	eb0005da 	bl	800239e4 <readi>
80022278:	e1a03000 	mov	r3, r0
8002227c:	e3530033 	cmp	r3, #51	@ 0x33
80022280:	9a0000f6 	bls	80022660 <exec+0x438>
80022284:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
80022288:	e59f245c 	ldr	r2, [pc, #1116]	@ 800226ec <exec+0x4c4>
8002228c:	e1530002 	cmp	r3, r2
80022290:	1a0000f4 	bne	80022668 <exec+0x440>
80022294:	e3a03000 	mov	r3, #0
80022298:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002229c:	eb0016f0 	bl	80027e64 <kpt_alloc>
800222a0:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800222a4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800222a8:	e3530000 	cmp	r3, #0
800222ac:	0a0000ef 	beq	80022670 <exec+0x448>
800222b0:	e3a03000 	mov	r3, #0
800222b4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800222b8:	e3a03000 	mov	r3, #0
800222bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800222c0:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
800222c4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800222c8:	ea00002e 	b	80022388 <exec+0x160>
800222cc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800222d0:	e24b1088 	sub	r1, fp, #136	@ 0x88
800222d4:	e3a03020 	mov	r3, #32
800222d8:	e51b0010 	ldr	r0, [fp, #-16]
800222dc:	eb0005c0 	bl	800239e4 <readi>
800222e0:	e1a03000 	mov	r3, r0
800222e4:	e3530020 	cmp	r3, #32
800222e8:	1a0000e2 	bne	80022678 <exec+0x450>
800222ec:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
800222f0:	e3530001 	cmp	r3, #1
800222f4:	1a00001c 	bne	8002236c <exec+0x144>
800222f8:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
800222fc:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022300:	e1520003 	cmp	r2, r3
80022304:	3a0000dd 	bcc	80022680 <exec+0x458>
80022308:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
8002230c:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
80022310:	e0823003 	add	r3, r2, r3
80022314:	e1a02003 	mov	r2, r3
80022318:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002231c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022320:	eb0017fb 	bl	80028314 <allocuvm>
80022324:	e1a03000 	mov	r3, r0
80022328:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002232c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022330:	e3530000 	cmp	r3, #0
80022334:	0a0000d3 	beq	80022688 <exec+0x460>
80022338:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
8002233c:	e1a01003 	mov	r1, r3
80022340:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
80022344:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022348:	e58d3000 	str	r3, [sp]
8002234c:	e1a03002 	mov	r3, r2
80022350:	e51b2010 	ldr	r2, [fp, #-16]
80022354:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022358:	eb0017a1 	bl	800281e4 <loaduvm>
8002235c:	e1a03000 	mov	r3, r0
80022360:	e3530000 	cmp	r3, #0
80022364:	ba0000c9 	blt	80022690 <exec+0x468>
80022368:	ea000000 	b	80022370 <exec+0x148>
8002236c:	e1a00000 	nop			@ (mov r0, r0)
80022370:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022374:	e2833001 	add	r3, r3, #1
80022378:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
8002237c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022380:	e2833020 	add	r3, r3, #32
80022384:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022388:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
8002238c:	e1a02003 	mov	r2, r3
80022390:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022394:	e1530002 	cmp	r3, r2
80022398:	baffffcb 	blt	800222cc <exec+0xa4>
8002239c:	e51b0010 	ldr	r0, [fp, #-16]
800223a0:	eb0004a4 	bl	80023638 <iunlockput>
800223a4:	e3a03000 	mov	r3, #0
800223a8:	e50b3010 	str	r3, [fp, #-16]
800223ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800223b0:	e2833eff 	add	r3, r3, #4080	@ 0xff0
800223b4:	e283300f 	add	r3, r3, #15
800223b8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800223bc:	e3c3300f 	bic	r3, r3, #15
800223c0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800223c4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800223c8:	e2833a02 	add	r3, r3, #8192	@ 0x2000
800223cc:	e1a02003 	mov	r2, r3
800223d0:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800223d4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800223d8:	eb0017cd 	bl	80028314 <allocuvm>
800223dc:	e1a03000 	mov	r3, r0
800223e0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800223e4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800223e8:	e3530000 	cmp	r3, #0
800223ec:	0a0000a9 	beq	80022698 <exec+0x470>
800223f0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800223f4:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
800223f8:	e1a01003 	mov	r1, r3
800223fc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022400:	eb001878 	bl	800285e8 <clearpteu>
80022404:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022408:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002240c:	e3a03000 	mov	r3, #0
80022410:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80022414:	ea00002e 	b	800224d4 <exec+0x2ac>
80022418:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002241c:	e353001f 	cmp	r3, #31
80022420:	8a00009e 	bhi	800226a0 <exec+0x478>
80022424:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022428:	e1a03103 	lsl	r3, r3, #2
8002242c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022430:	e0823003 	add	r3, r2, r3
80022434:	e5933000 	ldr	r3, [r3]
80022438:	e1a00003 	mov	r0, r3
8002243c:	ebfff82a 	bl	800204ec <strlen>
80022440:	e1a03000 	mov	r3, r0
80022444:	e1a02003 	mov	r2, r3
80022448:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
8002244c:	e0433002 	sub	r3, r3, r2
80022450:	e2433001 	sub	r3, r3, #1
80022454:	e3c33003 	bic	r3, r3, #3
80022458:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
8002245c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022460:	e1a03103 	lsl	r3, r3, #2
80022464:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022468:	e0823003 	add	r3, r2, r3
8002246c:	e5934000 	ldr	r4, [r3]
80022470:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022474:	e1a03103 	lsl	r3, r3, #2
80022478:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
8002247c:	e0823003 	add	r3, r2, r3
80022480:	e5933000 	ldr	r3, [r3]
80022484:	e1a00003 	mov	r0, r3
80022488:	ebfff817 	bl	800204ec <strlen>
8002248c:	e1a03000 	mov	r3, r0
80022490:	e2833001 	add	r3, r3, #1
80022494:	e1a02004 	mov	r2, r4
80022498:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002249c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800224a0:	eb0018e5 	bl	8002883c <copyout>
800224a4:	e1a03000 	mov	r3, r0
800224a8:	e3530000 	cmp	r3, #0
800224ac:	ba00007d 	blt	800226a8 <exec+0x480>
800224b0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224b4:	e1a03103 	lsl	r3, r3, #2
800224b8:	e243300c 	sub	r3, r3, #12
800224bc:	e083300b 	add	r3, r3, fp
800224c0:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
800224c4:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
800224c8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224cc:	e2833001 	add	r3, r3, #1
800224d0:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800224d4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224d8:	e1a03103 	lsl	r3, r3, #2
800224dc:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800224e0:	e0823003 	add	r3, r2, r3
800224e4:	e5933000 	ldr	r3, [r3]
800224e8:	e3530000 	cmp	r3, #0
800224ec:	1affffc9 	bne	80022418 <exec+0x1f0>
800224f0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800224f4:	e1a03103 	lsl	r3, r3, #2
800224f8:	e243300c 	sub	r3, r3, #12
800224fc:	e083300b 	add	r3, r3, fp
80022500:	e3a02000 	mov	r2, #0
80022504:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022508:	e59f31e0 	ldr	r3, [pc, #480]	@ 800226f0 <exec+0x4c8>
8002250c:	e5933000 	ldr	r3, [r3]
80022510:	e593301c 	ldr	r3, [r3, #28]
80022514:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80022518:	e5832010 	str	r2, [r3, #16]
8002251c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022520:	e2833001 	add	r3, r3, #1
80022524:	e1a02103 	lsl	r2, r3, #2
80022528:	e59f31c0 	ldr	r3, [pc, #448]	@ 800226f0 <exec+0x4c8>
8002252c:	e5933000 	ldr	r3, [r3]
80022530:	e593301c 	ldr	r3, [r3, #28]
80022534:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022538:	e0412002 	sub	r2, r1, r2
8002253c:	e5832014 	str	r2, [r3, #20]
80022540:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022544:	e2833001 	add	r3, r3, #1
80022548:	e1a03103 	lsl	r3, r3, #2
8002254c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022550:	e0423003 	sub	r3, r2, r3
80022554:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022558:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002255c:	e2833001 	add	r3, r3, #1
80022560:	e1a03103 	lsl	r3, r3, #2
80022564:	e24b2f46 	sub	r2, fp, #280	@ 0x118
80022568:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
8002256c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022570:	eb0018b1 	bl	8002883c <copyout>
80022574:	e1a03000 	mov	r3, r0
80022578:	e3530000 	cmp	r3, #0
8002257c:	ba00004b 	blt	800226b0 <exec+0x488>
80022580:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
80022584:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022588:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002258c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022590:	ea000009 	b	800225bc <exec+0x394>
80022594:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022598:	e5d33000 	ldrb	r3, [r3]
8002259c:	e353002f 	cmp	r3, #47	@ 0x2f
800225a0:	1a000002 	bne	800225b0 <exec+0x388>
800225a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800225a8:	e2833001 	add	r3, r3, #1
800225ac:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800225b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800225b4:	e2833001 	add	r3, r3, #1
800225b8:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
800225bc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800225c0:	e5d33000 	ldrb	r3, [r3]
800225c4:	e3530000 	cmp	r3, #0
800225c8:	1afffff1 	bne	80022594 <exec+0x36c>
800225cc:	e59f311c 	ldr	r3, [pc, #284]	@ 800226f0 <exec+0x4c8>
800225d0:	e5933000 	ldr	r3, [r3]
800225d4:	e2833070 	add	r3, r3, #112	@ 0x70
800225d8:	e3a02010 	mov	r2, #16
800225dc:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800225e0:	e1a00003 	mov	r0, r3
800225e4:	ebfff799 	bl	80020450 <safestrcpy>
800225e8:	e59f3100 	ldr	r3, [pc, #256]	@ 800226f0 <exec+0x4c8>
800225ec:	e5933000 	ldr	r3, [r3]
800225f0:	e5933008 	ldr	r3, [r3, #8]
800225f4:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
800225f8:	e59f30f0 	ldr	r3, [pc, #240]	@ 800226f0 <exec+0x4c8>
800225fc:	e5933000 	ldr	r3, [r3]
80022600:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022604:	e5832008 	str	r2, [r3, #8]
80022608:	e59f30e0 	ldr	r3, [pc, #224]	@ 800226f0 <exec+0x4c8>
8002260c:	e5933000 	ldr	r3, [r3]
80022610:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80022614:	e5832004 	str	r2, [r3, #4]
80022618:	e59f30d0 	ldr	r3, [pc, #208]	@ 800226f0 <exec+0x4c8>
8002261c:	e5933000 	ldr	r3, [r3]
80022620:	e593301c 	ldr	r3, [r3, #28]
80022624:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
80022628:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002262c:	e59f30bc 	ldr	r3, [pc, #188]	@ 800226f0 <exec+0x4c8>
80022630:	e5933000 	ldr	r3, [r3]
80022634:	e593301c 	ldr	r3, [r3, #28]
80022638:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002263c:	e5832000 	str	r2, [r3]
80022640:	e59f30a8 	ldr	r3, [pc, #168]	@ 800226f0 <exec+0x4c8>
80022644:	e5933000 	ldr	r3, [r3]
80022648:	e1a00003 	mov	r0, r3
8002264c:	eb0016ab 	bl	80028100 <switchuvm>
80022650:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
80022654:	eb0017b3 	bl	80028528 <freevm>
80022658:	e3a03000 	mov	r3, #0
8002265c:	ea00001f 	b	800226e0 <exec+0x4b8>
80022660:	e1a00000 	nop			@ (mov r0, r0)
80022664:	ea000012 	b	800226b4 <exec+0x48c>
80022668:	e1a00000 	nop			@ (mov r0, r0)
8002266c:	ea000010 	b	800226b4 <exec+0x48c>
80022670:	e1a00000 	nop			@ (mov r0, r0)
80022674:	ea00000e 	b	800226b4 <exec+0x48c>
80022678:	e1a00000 	nop			@ (mov r0, r0)
8002267c:	ea00000c 	b	800226b4 <exec+0x48c>
80022680:	e1a00000 	nop			@ (mov r0, r0)
80022684:	ea00000a 	b	800226b4 <exec+0x48c>
80022688:	e1a00000 	nop			@ (mov r0, r0)
8002268c:	ea000008 	b	800226b4 <exec+0x48c>
80022690:	e1a00000 	nop			@ (mov r0, r0)
80022694:	ea000006 	b	800226b4 <exec+0x48c>
80022698:	e1a00000 	nop			@ (mov r0, r0)
8002269c:	ea000004 	b	800226b4 <exec+0x48c>
800226a0:	e1a00000 	nop			@ (mov r0, r0)
800226a4:	ea000002 	b	800226b4 <exec+0x48c>
800226a8:	e1a00000 	nop			@ (mov r0, r0)
800226ac:	ea000000 	b	800226b4 <exec+0x48c>
800226b0:	e1a00000 	nop			@ (mov r0, r0)
800226b4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800226b8:	e3530000 	cmp	r3, #0
800226bc:	0a000001 	beq	800226c8 <exec+0x4a0>
800226c0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800226c4:	eb001797 	bl	80028528 <freevm>
800226c8:	e51b3010 	ldr	r3, [fp, #-16]
800226cc:	e3530000 	cmp	r3, #0
800226d0:	0a000001 	beq	800226dc <exec+0x4b4>
800226d4:	e51b0010 	ldr	r0, [fp, #-16]
800226d8:	eb0003d6 	bl	80023638 <iunlockput>
800226dc:	e3e03000 	mvn	r3, #0
800226e0:	e1a00003 	mov	r0, r3
800226e4:	e24bd008 	sub	sp, fp, #8
800226e8:	e8bd8810 	pop	{r4, fp, pc}
800226ec:	464c457f 	.word	0x464c457f
800226f0:	800af658 	.word	0x800af658

800226f4 <fileinit>:
800226f4:	e92d4800 	push	{fp, lr}
800226f8:	e28db004 	add	fp, sp, #4
800226fc:	e59f100c 	ldr	r1, [pc, #12]	@ 80022710 <fileinit+0x1c>
80022700:	e59f000c 	ldr	r0, [pc, #12]	@ 80022714 <fileinit+0x20>
80022704:	eb000dfb 	bl	80025ef8 <initlock>
80022708:	e1a00000 	nop			@ (mov r0, r0)
8002270c:	e8bd8800 	pop	{fp, pc}
80022710:	800296e8 	.word	0x800296e8
80022714:	800abb5c 	.word	0x800abb5c

80022718 <filealloc>:
80022718:	e92d4800 	push	{fp, lr}
8002271c:	e28db004 	add	fp, sp, #4
80022720:	e24dd008 	sub	sp, sp, #8
80022724:	e59f006c 	ldr	r0, [pc, #108]	@ 80022798 <filealloc+0x80>
80022728:	eb000e04 	bl	80025f40 <acquire>
8002272c:	e59f3068 	ldr	r3, [pc, #104]	@ 8002279c <filealloc+0x84>
80022730:	e50b3008 	str	r3, [fp, #-8]
80022734:	ea00000d 	b	80022770 <filealloc+0x58>
80022738:	e51b3008 	ldr	r3, [fp, #-8]
8002273c:	e5933004 	ldr	r3, [r3, #4]
80022740:	e3530000 	cmp	r3, #0
80022744:	1a000006 	bne	80022764 <filealloc+0x4c>
80022748:	e51b3008 	ldr	r3, [fp, #-8]
8002274c:	e3a02001 	mov	r2, #1
80022750:	e5832004 	str	r2, [r3, #4]
80022754:	e59f003c 	ldr	r0, [pc, #60]	@ 80022798 <filealloc+0x80>
80022758:	eb000e03 	bl	80025f6c <release>
8002275c:	e51b3008 	ldr	r3, [fp, #-8]
80022760:	ea000009 	b	8002278c <filealloc+0x74>
80022764:	e51b3008 	ldr	r3, [fp, #-8]
80022768:	e2833018 	add	r3, r3, #24
8002276c:	e50b3008 	str	r3, [fp, #-8]
80022770:	e59f2028 	ldr	r2, [pc, #40]	@ 800227a0 <filealloc+0x88>
80022774:	e51b3008 	ldr	r3, [fp, #-8]
80022778:	e1530002 	cmp	r3, r2
8002277c:	3affffed 	bcc	80022738 <filealloc+0x20>
80022780:	e59f0010 	ldr	r0, [pc, #16]	@ 80022798 <filealloc+0x80>
80022784:	eb000df8 	bl	80025f6c <release>
80022788:	e3a03000 	mov	r3, #0
8002278c:	e1a00003 	mov	r0, r3
80022790:	e24bd004 	sub	sp, fp, #4
80022794:	e8bd8800 	pop	{fp, pc}
80022798:	800abb5c 	.word	0x800abb5c
8002279c:	800abb90 	.word	0x800abb90
800227a0:	800ac4f0 	.word	0x800ac4f0

800227a4 <filedup>:
800227a4:	e92d4800 	push	{fp, lr}
800227a8:	e28db004 	add	fp, sp, #4
800227ac:	e24dd008 	sub	sp, sp, #8
800227b0:	e50b0008 	str	r0, [fp, #-8]
800227b4:	e59f0044 	ldr	r0, [pc, #68]	@ 80022800 <filedup+0x5c>
800227b8:	eb000de0 	bl	80025f40 <acquire>
800227bc:	e51b3008 	ldr	r3, [fp, #-8]
800227c0:	e5933004 	ldr	r3, [r3, #4]
800227c4:	e3530000 	cmp	r3, #0
800227c8:	ca000001 	bgt	800227d4 <filedup+0x30>
800227cc:	e59f0030 	ldr	r0, [pc, #48]	@ 80022804 <filedup+0x60>
800227d0:	ebfffcb5 	bl	80021aac <panic>
800227d4:	e51b3008 	ldr	r3, [fp, #-8]
800227d8:	e5933004 	ldr	r3, [r3, #4]
800227dc:	e2832001 	add	r2, r3, #1
800227e0:	e51b3008 	ldr	r3, [fp, #-8]
800227e4:	e5832004 	str	r2, [r3, #4]
800227e8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022800 <filedup+0x5c>
800227ec:	eb000dde 	bl	80025f6c <release>
800227f0:	e51b3008 	ldr	r3, [fp, #-8]
800227f4:	e1a00003 	mov	r0, r3
800227f8:	e24bd004 	sub	sp, fp, #4
800227fc:	e8bd8800 	pop	{fp, pc}
80022800:	800abb5c 	.word	0x800abb5c
80022804:	800296f0 	.word	0x800296f0

80022808 <fileclose>:
80022808:	e92d4800 	push	{fp, lr}
8002280c:	e28db004 	add	fp, sp, #4
80022810:	e24dd020 	sub	sp, sp, #32
80022814:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80022818:	e59f00d0 	ldr	r0, [pc, #208]	@ 800228f0 <fileclose+0xe8>
8002281c:	eb000dc7 	bl	80025f40 <acquire>
80022820:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022824:	e5933004 	ldr	r3, [r3, #4]
80022828:	e3530000 	cmp	r3, #0
8002282c:	ca000001 	bgt	80022838 <fileclose+0x30>
80022830:	e59f00bc 	ldr	r0, [pc, #188]	@ 800228f4 <fileclose+0xec>
80022834:	ebfffc9c 	bl	80021aac <panic>
80022838:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002283c:	e5933004 	ldr	r3, [r3, #4]
80022840:	e2432001 	sub	r2, r3, #1
80022844:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022848:	e5832004 	str	r2, [r3, #4]
8002284c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022850:	e5933004 	ldr	r3, [r3, #4]
80022854:	e3530000 	cmp	r3, #0
80022858:	da000002 	ble	80022868 <fileclose+0x60>
8002285c:	e59f008c 	ldr	r0, [pc, #140]	@ 800228f0 <fileclose+0xe8>
80022860:	eb000dc1 	bl	80025f6c <release>
80022864:	ea00001f 	b	800228e8 <fileclose+0xe0>
80022868:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002286c:	e24bc01c 	sub	ip, fp, #28
80022870:	e1a0e003 	mov	lr, r3
80022874:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022878:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
8002287c:	e89e0003 	ldm	lr, {r0, r1}
80022880:	e88c0003 	stm	ip, {r0, r1}
80022884:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022888:	e3a02000 	mov	r2, #0
8002288c:	e5832004 	str	r2, [r3, #4]
80022890:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022894:	e3a02000 	mov	r2, #0
80022898:	e5c32000 	strb	r2, [r3]
8002289c:	e59f004c 	ldr	r0, [pc, #76]	@ 800228f0 <fileclose+0xe8>
800228a0:	eb000db1 	bl	80025f6c <release>
800228a4:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800228a8:	e3530001 	cmp	r3, #1
800228ac:	1a000005 	bne	800228c8 <fileclose+0xc0>
800228b0:	e51b3010 	ldr	r3, [fp, #-16]
800228b4:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
800228b8:	e1a01002 	mov	r1, r2
800228bc:	e1a00003 	mov	r0, r3
800228c0:	eb0008e8 	bl	80024c68 <pipeclose>
800228c4:	ea000007 	b	800228e8 <fileclose+0xe0>
800228c8:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
800228cc:	e3530002 	cmp	r3, #2
800228d0:	1a000004 	bne	800228e8 <fileclose+0xe0>
800228d4:	eb000742 	bl	800245e4 <begin_trans>
800228d8:	e51b300c 	ldr	r3, [fp, #-12]
800228dc:	e1a00003 	mov	r0, r3
800228e0:	eb000319 	bl	8002354c <iput>
800228e4:	eb000752 	bl	80024634 <commit_trans>
800228e8:	e24bd004 	sub	sp, fp, #4
800228ec:	e8bd8800 	pop	{fp, pc}
800228f0:	800abb5c 	.word	0x800abb5c
800228f4:	800296f8 	.word	0x800296f8

800228f8 <filestat>:
800228f8:	e92d4800 	push	{fp, lr}
800228fc:	e28db004 	add	fp, sp, #4
80022900:	e24dd008 	sub	sp, sp, #8
80022904:	e50b0008 	str	r0, [fp, #-8]
80022908:	e50b100c 	str	r1, [fp, #-12]
8002290c:	e51b3008 	ldr	r3, [fp, #-8]
80022910:	e5d33000 	ldrb	r3, [r3]
80022914:	e3530002 	cmp	r3, #2
80022918:	1a00000e 	bne	80022958 <filestat+0x60>
8002291c:	e51b3008 	ldr	r3, [fp, #-8]
80022920:	e5933010 	ldr	r3, [r3, #16]
80022924:	e1a00003 	mov	r0, r3
80022928:	eb000281 	bl	80023334 <ilock>
8002292c:	e51b3008 	ldr	r3, [fp, #-8]
80022930:	e5933010 	ldr	r3, [r3, #16]
80022934:	e51b100c 	ldr	r1, [fp, #-12]
80022938:	e1a00003 	mov	r0, r3
8002293c:	eb00040a 	bl	8002396c <stati>
80022940:	e51b3008 	ldr	r3, [fp, #-8]
80022944:	e5933010 	ldr	r3, [r3, #16]
80022948:	e1a00003 	mov	r0, r3
8002294c:	eb0002dc 	bl	800234c4 <iunlock>
80022950:	e3a03000 	mov	r3, #0
80022954:	ea000000 	b	8002295c <filestat+0x64>
80022958:	e3e03000 	mvn	r3, #0
8002295c:	e1a00003 	mov	r0, r3
80022960:	e24bd004 	sub	sp, fp, #4
80022964:	e8bd8800 	pop	{fp, pc}

80022968 <fileread>:
80022968:	e92d4800 	push	{fp, lr}
8002296c:	e28db004 	add	fp, sp, #4
80022970:	e24dd018 	sub	sp, sp, #24
80022974:	e50b0010 	str	r0, [fp, #-16]
80022978:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002297c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022980:	e51b3010 	ldr	r3, [fp, #-16]
80022984:	e5d33008 	ldrb	r3, [r3, #8]
80022988:	e3530000 	cmp	r3, #0
8002298c:	1a000001 	bne	80022998 <fileread+0x30>
80022990:	e3e03000 	mvn	r3, #0
80022994:	ea00002c 	b	80022a4c <fileread+0xe4>
80022998:	e51b3010 	ldr	r3, [fp, #-16]
8002299c:	e5d33000 	ldrb	r3, [r3]
800229a0:	e3530001 	cmp	r3, #1
800229a4:	1a000007 	bne	800229c8 <fileread+0x60>
800229a8:	e51b3010 	ldr	r3, [fp, #-16]
800229ac:	e593300c 	ldr	r3, [r3, #12]
800229b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800229b4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800229b8:	e1a00003 	mov	r0, r3
800229bc:	eb000923 	bl	80024e50 <piperead>
800229c0:	e1a03000 	mov	r3, r0
800229c4:	ea000020 	b	80022a4c <fileread+0xe4>
800229c8:	e51b3010 	ldr	r3, [fp, #-16]
800229cc:	e5d33000 	ldrb	r3, [r3]
800229d0:	e3530002 	cmp	r3, #2
800229d4:	1a00001a 	bne	80022a44 <fileread+0xdc>
800229d8:	e51b3010 	ldr	r3, [fp, #-16]
800229dc:	e5933010 	ldr	r3, [r3, #16]
800229e0:	e1a00003 	mov	r0, r3
800229e4:	eb000252 	bl	80023334 <ilock>
800229e8:	e51b3010 	ldr	r3, [fp, #-16]
800229ec:	e5930010 	ldr	r0, [r3, #16]
800229f0:	e51b3010 	ldr	r3, [fp, #-16]
800229f4:	e5932014 	ldr	r2, [r3, #20]
800229f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800229fc:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022a00:	eb0003f7 	bl	800239e4 <readi>
80022a04:	e50b0008 	str	r0, [fp, #-8]
80022a08:	e51b3008 	ldr	r3, [fp, #-8]
80022a0c:	e3530000 	cmp	r3, #0
80022a10:	da000005 	ble	80022a2c <fileread+0xc4>
80022a14:	e51b3010 	ldr	r3, [fp, #-16]
80022a18:	e5932014 	ldr	r2, [r3, #20]
80022a1c:	e51b3008 	ldr	r3, [fp, #-8]
80022a20:	e0822003 	add	r2, r2, r3
80022a24:	e51b3010 	ldr	r3, [fp, #-16]
80022a28:	e5832014 	str	r2, [r3, #20]
80022a2c:	e51b3010 	ldr	r3, [fp, #-16]
80022a30:	e5933010 	ldr	r3, [r3, #16]
80022a34:	e1a00003 	mov	r0, r3
80022a38:	eb0002a1 	bl	800234c4 <iunlock>
80022a3c:	e51b3008 	ldr	r3, [fp, #-8]
80022a40:	ea000001 	b	80022a4c <fileread+0xe4>
80022a44:	e59f000c 	ldr	r0, [pc, #12]	@ 80022a58 <fileread+0xf0>
80022a48:	ebfffc17 	bl	80021aac <panic>
80022a4c:	e1a00003 	mov	r0, r3
80022a50:	e24bd004 	sub	sp, fp, #4
80022a54:	e8bd8800 	pop	{fp, pc}
80022a58:	80029704 	.word	0x80029704

80022a5c <filewrite>:
80022a5c:	e92d4800 	push	{fp, lr}
80022a60:	e28db004 	add	fp, sp, #4
80022a64:	e24dd020 	sub	sp, sp, #32
80022a68:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022a6c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022a70:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80022a74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a78:	e5d33009 	ldrb	r3, [r3, #9]
80022a7c:	e3530000 	cmp	r3, #0
80022a80:	1a000001 	bne	80022a8c <filewrite+0x30>
80022a84:	e3e03000 	mvn	r3, #0
80022a88:	ea000058 	b	80022bf0 <filewrite+0x194>
80022a8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022a90:	e5d33000 	ldrb	r3, [r3]
80022a94:	e3530001 	cmp	r3, #1
80022a98:	1a000007 	bne	80022abc <filewrite+0x60>
80022a9c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022aa0:	e593300c 	ldr	r3, [r3, #12]
80022aa4:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022aa8:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022aac:	e1a00003 	mov	r0, r3
80022ab0:	eb00089f 	bl	80024d34 <pipewrite>
80022ab4:	e1a03000 	mov	r3, r0
80022ab8:	ea00004c 	b	80022bf0 <filewrite+0x194>
80022abc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022ac0:	e5d33000 	ldrb	r3, [r3]
80022ac4:	e3530002 	cmp	r3, #2
80022ac8:	1a000046 	bne	80022be8 <filewrite+0x18c>
80022acc:	e3a03c06 	mov	r3, #1536	@ 0x600
80022ad0:	e50b3010 	str	r3, [fp, #-16]
80022ad4:	e3a03000 	mov	r3, #0
80022ad8:	e50b3008 	str	r3, [fp, #-8]
80022adc:	ea000033 	b	80022bb0 <filewrite+0x154>
80022ae0:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022ae4:	e51b3008 	ldr	r3, [fp, #-8]
80022ae8:	e0423003 	sub	r3, r2, r3
80022aec:	e50b300c 	str	r3, [fp, #-12]
80022af0:	e51b200c 	ldr	r2, [fp, #-12]
80022af4:	e51b3010 	ldr	r3, [fp, #-16]
80022af8:	e1520003 	cmp	r2, r3
80022afc:	da000001 	ble	80022b08 <filewrite+0xac>
80022b00:	e51b3010 	ldr	r3, [fp, #-16]
80022b04:	e50b300c 	str	r3, [fp, #-12]
80022b08:	eb0006b5 	bl	800245e4 <begin_trans>
80022b0c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b10:	e5933010 	ldr	r3, [r3, #16]
80022b14:	e1a00003 	mov	r0, r3
80022b18:	eb000205 	bl	80023334 <ilock>
80022b1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b20:	e5930010 	ldr	r0, [r3, #16]
80022b24:	e51b3008 	ldr	r3, [fp, #-8]
80022b28:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80022b2c:	e0821003 	add	r1, r2, r3
80022b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b34:	e5932014 	ldr	r2, [r3, #20]
80022b38:	e51b300c 	ldr	r3, [fp, #-12]
80022b3c:	eb000423 	bl	80023bd0 <writei>
80022b40:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80022b44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b48:	e3530000 	cmp	r3, #0
80022b4c:	da000005 	ble	80022b68 <filewrite+0x10c>
80022b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b54:	e5932014 	ldr	r2, [r3, #20]
80022b58:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b5c:	e0822003 	add	r2, r2, r3
80022b60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b64:	e5832014 	str	r2, [r3, #20]
80022b68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022b6c:	e5933010 	ldr	r3, [r3, #16]
80022b70:	e1a00003 	mov	r0, r3
80022b74:	eb000252 	bl	800234c4 <iunlock>
80022b78:	eb0006ad 	bl	80024634 <commit_trans>
80022b7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b80:	e3530000 	cmp	r3, #0
80022b84:	ba00000e 	blt	80022bc4 <filewrite+0x168>
80022b88:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022b8c:	e51b300c 	ldr	r3, [fp, #-12]
80022b90:	e1520003 	cmp	r2, r3
80022b94:	0a000001 	beq	80022ba0 <filewrite+0x144>
80022b98:	e59f005c 	ldr	r0, [pc, #92]	@ 80022bfc <filewrite+0x1a0>
80022b9c:	ebfffbc2 	bl	80021aac <panic>
80022ba0:	e51b2008 	ldr	r2, [fp, #-8]
80022ba4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022ba8:	e0823003 	add	r3, r2, r3
80022bac:	e50b3008 	str	r3, [fp, #-8]
80022bb0:	e51b2008 	ldr	r2, [fp, #-8]
80022bb4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022bb8:	e1520003 	cmp	r2, r3
80022bbc:	baffffc7 	blt	80022ae0 <filewrite+0x84>
80022bc0:	ea000000 	b	80022bc8 <filewrite+0x16c>
80022bc4:	e1a00000 	nop			@ (mov r0, r0)
80022bc8:	e51b2008 	ldr	r2, [fp, #-8]
80022bcc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022bd0:	e1520003 	cmp	r2, r3
80022bd4:	1a000001 	bne	80022be0 <filewrite+0x184>
80022bd8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022bdc:	ea000003 	b	80022bf0 <filewrite+0x194>
80022be0:	e3e03000 	mvn	r3, #0
80022be4:	ea000001 	b	80022bf0 <filewrite+0x194>
80022be8:	e59f0010 	ldr	r0, [pc, #16]	@ 80022c00 <filewrite+0x1a4>
80022bec:	ebfffbae 	bl	80021aac <panic>
80022bf0:	e1a00003 	mov	r0, r3
80022bf4:	e24bd004 	sub	sp, fp, #4
80022bf8:	e8bd8800 	pop	{fp, pc}
80022bfc:	80029710 	.word	0x80029710
80022c00:	80029720 	.word	0x80029720

80022c04 <readsb>:
80022c04:	e92d4800 	push	{fp, lr}
80022c08:	e28db004 	add	fp, sp, #4
80022c0c:	e24dd010 	sub	sp, sp, #16
80022c10:	e50b0010 	str	r0, [fp, #-16]
80022c14:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022c18:	e51b3010 	ldr	r3, [fp, #-16]
80022c1c:	e3a01001 	mov	r1, #1
80022c20:	e1a00003 	mov	r0, r3
80022c24:	ebfff7ba 	bl	80020b14 <bread>
80022c28:	e50b0008 	str	r0, [fp, #-8]
80022c2c:	e51b3008 	ldr	r3, [fp, #-8]
80022c30:	e2833018 	add	r3, r3, #24
80022c34:	e3a02010 	mov	r2, #16
80022c38:	e1a01003 	mov	r1, r3
80022c3c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022c40:	ebfff560 	bl	800201c8 <memmove>
80022c44:	e51b0008 	ldr	r0, [fp, #-8]
80022c48:	ebfff7db 	bl	80020bbc <brelse>
80022c4c:	e1a00000 	nop			@ (mov r0, r0)
80022c50:	e24bd004 	sub	sp, fp, #4
80022c54:	e8bd8800 	pop	{fp, pc}

80022c58 <bzero>:
80022c58:	e92d4800 	push	{fp, lr}
80022c5c:	e28db004 	add	fp, sp, #4
80022c60:	e24dd010 	sub	sp, sp, #16
80022c64:	e50b0010 	str	r0, [fp, #-16]
80022c68:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022c6c:	e51b3010 	ldr	r3, [fp, #-16]
80022c70:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022c74:	e1a01002 	mov	r1, r2
80022c78:	e1a00003 	mov	r0, r3
80022c7c:	ebfff7a4 	bl	80020b14 <bread>
80022c80:	e50b0008 	str	r0, [fp, #-8]
80022c84:	e51b3008 	ldr	r3, [fp, #-8]
80022c88:	e2833018 	add	r3, r3, #24
80022c8c:	e3a02c02 	mov	r2, #512	@ 0x200
80022c90:	e3a01000 	mov	r1, #0
80022c94:	e1a00003 	mov	r0, r3
80022c98:	ebfff4d8 	bl	80020000 <memset>
80022c9c:	e51b0008 	ldr	r0, [fp, #-8]
80022ca0:	eb00067b 	bl	80024694 <log_write>
80022ca4:	e51b0008 	ldr	r0, [fp, #-8]
80022ca8:	ebfff7c3 	bl	80020bbc <brelse>
80022cac:	e1a00000 	nop			@ (mov r0, r0)
80022cb0:	e24bd004 	sub	sp, fp, #4
80022cb4:	e8bd8800 	pop	{fp, pc}

80022cb8 <balloc>:
80022cb8:	e92d4800 	push	{fp, lr}
80022cbc:	e28db004 	add	fp, sp, #4
80022cc0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022cc4:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022cc8:	e3a03000 	mov	r3, #0
80022ccc:	e50b3010 	str	r3, [fp, #-16]
80022cd0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022cd4:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022cd8:	e1a01002 	mov	r1, r2
80022cdc:	e1a00003 	mov	r0, r3
80022ce0:	ebffffc7 	bl	80022c04 <readsb>
80022ce4:	e3a03000 	mov	r3, #0
80022ce8:	e50b3008 	str	r3, [fp, #-8]
80022cec:	ea000059 	b	80022e58 <balloc+0x1a0>
80022cf0:	e51b3008 	ldr	r3, [fp, #-8]
80022cf4:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022cf8:	e282200f 	add	r2, r2, #15
80022cfc:	e3530000 	cmp	r3, #0
80022d00:	b1a03002 	movlt	r3, r2
80022d04:	a1a03003 	movge	r3, r3
80022d08:	e1a03643 	asr	r3, r3, #12
80022d0c:	e1a02003 	mov	r2, r3
80022d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022d14:	e1a031a3 	lsr	r3, r3, #3
80022d18:	e0823003 	add	r3, r2, r3
80022d1c:	e2833003 	add	r3, r3, #3
80022d20:	e1a01003 	mov	r1, r3
80022d24:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022d28:	ebfff779 	bl	80020b14 <bread>
80022d2c:	e50b0010 	str	r0, [fp, #-16]
80022d30:	e3a03000 	mov	r3, #0
80022d34:	e50b300c 	str	r3, [fp, #-12]
80022d38:	ea000037 	b	80022e1c <balloc+0x164>
80022d3c:	e51b300c 	ldr	r3, [fp, #-12]
80022d40:	e2033007 	and	r3, r3, #7
80022d44:	e3a02001 	mov	r2, #1
80022d48:	e1a03312 	lsl	r3, r2, r3
80022d4c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022d50:	e51b300c 	ldr	r3, [fp, #-12]
80022d54:	e2832007 	add	r2, r3, #7
80022d58:	e3530000 	cmp	r3, #0
80022d5c:	b1a03002 	movlt	r3, r2
80022d60:	a1a03003 	movge	r3, r3
80022d64:	e1a031c3 	asr	r3, r3, #3
80022d68:	e1a02003 	mov	r2, r3
80022d6c:	e51b3010 	ldr	r3, [fp, #-16]
80022d70:	e0833002 	add	r3, r3, r2
80022d74:	e5d33018 	ldrb	r3, [r3, #24]
80022d78:	e1a02003 	mov	r2, r3
80022d7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022d80:	e0033002 	and	r3, r3, r2
80022d84:	e3530000 	cmp	r3, #0
80022d88:	1a000020 	bne	80022e10 <balloc+0x158>
80022d8c:	e51b300c 	ldr	r3, [fp, #-12]
80022d90:	e2832007 	add	r2, r3, #7
80022d94:	e3530000 	cmp	r3, #0
80022d98:	b1a03002 	movlt	r3, r2
80022d9c:	a1a03003 	movge	r3, r3
80022da0:	e1a031c3 	asr	r3, r3, #3
80022da4:	e51b2010 	ldr	r2, [fp, #-16]
80022da8:	e0822003 	add	r2, r2, r3
80022dac:	e5d22018 	ldrb	r2, [r2, #24]
80022db0:	e6af1072 	sxtb	r1, r2
80022db4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022db8:	e6af2072 	sxtb	r2, r2
80022dbc:	e1812002 	orr	r2, r1, r2
80022dc0:	e6af2072 	sxtb	r2, r2
80022dc4:	e6ef1072 	uxtb	r1, r2
80022dc8:	e51b2010 	ldr	r2, [fp, #-16]
80022dcc:	e0823003 	add	r3, r2, r3
80022dd0:	e1a02001 	mov	r2, r1
80022dd4:	e5c32018 	strb	r2, [r3, #24]
80022dd8:	e51b0010 	ldr	r0, [fp, #-16]
80022ddc:	eb00062c 	bl	80024694 <log_write>
80022de0:	e51b0010 	ldr	r0, [fp, #-16]
80022de4:	ebfff774 	bl	80020bbc <brelse>
80022de8:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022dec:	e51b2008 	ldr	r2, [fp, #-8]
80022df0:	e51b300c 	ldr	r3, [fp, #-12]
80022df4:	e0823003 	add	r3, r2, r3
80022df8:	e1a01003 	mov	r1, r3
80022dfc:	ebffff95 	bl	80022c58 <bzero>
80022e00:	e51b2008 	ldr	r2, [fp, #-8]
80022e04:	e51b300c 	ldr	r3, [fp, #-12]
80022e08:	e0823003 	add	r3, r2, r3
80022e0c:	ea000017 	b	80022e70 <balloc+0x1b8>
80022e10:	e51b300c 	ldr	r3, [fp, #-12]
80022e14:	e2833001 	add	r3, r3, #1
80022e18:	e50b300c 	str	r3, [fp, #-12]
80022e1c:	e51b300c 	ldr	r3, [fp, #-12]
80022e20:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022e24:	aa000006 	bge	80022e44 <balloc+0x18c>
80022e28:	e51b2008 	ldr	r2, [fp, #-8]
80022e2c:	e51b300c 	ldr	r3, [fp, #-12]
80022e30:	e0823003 	add	r3, r2, r3
80022e34:	e1a02003 	mov	r2, r3
80022e38:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022e3c:	e1520003 	cmp	r2, r3
80022e40:	3affffbd 	bcc	80022d3c <balloc+0x84>
80022e44:	e51b0010 	ldr	r0, [fp, #-16]
80022e48:	ebfff75b 	bl	80020bbc <brelse>
80022e4c:	e51b3008 	ldr	r3, [fp, #-8]
80022e50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022e54:	e50b3008 	str	r3, [fp, #-8]
80022e58:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022e5c:	e51b3008 	ldr	r3, [fp, #-8]
80022e60:	e1520003 	cmp	r2, r3
80022e64:	8affffa1 	bhi	80022cf0 <balloc+0x38>
80022e68:	e59f000c 	ldr	r0, [pc, #12]	@ 80022e7c <balloc+0x1c4>
80022e6c:	ebfffb0e 	bl	80021aac <panic>
80022e70:	e1a00003 	mov	r0, r3
80022e74:	e24bd004 	sub	sp, fp, #4
80022e78:	e8bd8800 	pop	{fp, pc}
80022e7c:	8002972c 	.word	0x8002972c

80022e80 <bfree>:
80022e80:	e92d4800 	push	{fp, lr}
80022e84:	e28db004 	add	fp, sp, #4
80022e88:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022e8c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022e90:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022e94:	e24b3020 	sub	r3, fp, #32
80022e98:	e1a01003 	mov	r1, r3
80022e9c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ea0:	ebffff57 	bl	80022c04 <readsb>
80022ea4:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022ea8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022eac:	e1a02623 	lsr	r2, r3, #12
80022eb0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022eb4:	e1a031a3 	lsr	r3, r3, #3
80022eb8:	e0823003 	add	r3, r2, r3
80022ebc:	e2833003 	add	r3, r3, #3
80022ec0:	e1a01003 	mov	r1, r3
80022ec4:	ebfff712 	bl	80020b14 <bread>
80022ec8:	e50b0008 	str	r0, [fp, #-8]
80022ecc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022ed0:	e1a03a03 	lsl	r3, r3, #20
80022ed4:	e1a03a23 	lsr	r3, r3, #20
80022ed8:	e50b300c 	str	r3, [fp, #-12]
80022edc:	e51b300c 	ldr	r3, [fp, #-12]
80022ee0:	e2033007 	and	r3, r3, #7
80022ee4:	e3a02001 	mov	r2, #1
80022ee8:	e1a03312 	lsl	r3, r2, r3
80022eec:	e50b3010 	str	r3, [fp, #-16]
80022ef0:	e51b300c 	ldr	r3, [fp, #-12]
80022ef4:	e2832007 	add	r2, r3, #7
80022ef8:	e3530000 	cmp	r3, #0
80022efc:	b1a03002 	movlt	r3, r2
80022f00:	a1a03003 	movge	r3, r3
80022f04:	e1a031c3 	asr	r3, r3, #3
80022f08:	e1a02003 	mov	r2, r3
80022f0c:	e51b3008 	ldr	r3, [fp, #-8]
80022f10:	e0833002 	add	r3, r3, r2
80022f14:	e5d33018 	ldrb	r3, [r3, #24]
80022f18:	e1a02003 	mov	r2, r3
80022f1c:	e51b3010 	ldr	r3, [fp, #-16]
80022f20:	e0033002 	and	r3, r3, r2
80022f24:	e3530000 	cmp	r3, #0
80022f28:	1a000001 	bne	80022f34 <bfree+0xb4>
80022f2c:	e59f0070 	ldr	r0, [pc, #112]	@ 80022fa4 <bfree+0x124>
80022f30:	ebfffadd 	bl	80021aac <panic>
80022f34:	e51b300c 	ldr	r3, [fp, #-12]
80022f38:	e2832007 	add	r2, r3, #7
80022f3c:	e3530000 	cmp	r3, #0
80022f40:	b1a03002 	movlt	r3, r2
80022f44:	a1a03003 	movge	r3, r3
80022f48:	e1a031c3 	asr	r3, r3, #3
80022f4c:	e51b2008 	ldr	r2, [fp, #-8]
80022f50:	e0822003 	add	r2, r2, r3
80022f54:	e5d22018 	ldrb	r2, [r2, #24]
80022f58:	e6af1072 	sxtb	r1, r2
80022f5c:	e51b2010 	ldr	r2, [fp, #-16]
80022f60:	e6af2072 	sxtb	r2, r2
80022f64:	e1e02002 	mvn	r2, r2
80022f68:	e6af2072 	sxtb	r2, r2
80022f6c:	e0022001 	and	r2, r2, r1
80022f70:	e6af2072 	sxtb	r2, r2
80022f74:	e6ef1072 	uxtb	r1, r2
80022f78:	e51b2008 	ldr	r2, [fp, #-8]
80022f7c:	e0823003 	add	r3, r2, r3
80022f80:	e1a02001 	mov	r2, r1
80022f84:	e5c32018 	strb	r2, [r3, #24]
80022f88:	e51b0008 	ldr	r0, [fp, #-8]
80022f8c:	eb0005c0 	bl	80024694 <log_write>
80022f90:	e51b0008 	ldr	r0, [fp, #-8]
80022f94:	ebfff708 	bl	80020bbc <brelse>
80022f98:	e1a00000 	nop			@ (mov r0, r0)
80022f9c:	e24bd004 	sub	sp, fp, #4
80022fa0:	e8bd8800 	pop	{fp, pc}
80022fa4:	80029744 	.word	0x80029744

80022fa8 <iinit>:
80022fa8:	e92d4800 	push	{fp, lr}
80022fac:	e28db004 	add	fp, sp, #4
80022fb0:	e59f100c 	ldr	r1, [pc, #12]	@ 80022fc4 <iinit+0x1c>
80022fb4:	e59f000c 	ldr	r0, [pc, #12]	@ 80022fc8 <iinit+0x20>
80022fb8:	eb000bce 	bl	80025ef8 <initlock>
80022fbc:	e1a00000 	nop			@ (mov r0, r0)
80022fc0:	e8bd8800 	pop	{fp, pc}
80022fc4:	80029758 	.word	0x80029758
80022fc8:	800ac4f0 	.word	0x800ac4f0

80022fcc <ialloc>:
80022fcc:	e92d4800 	push	{fp, lr}
80022fd0:	e28db004 	add	fp, sp, #4
80022fd4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022fd8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022fdc:	e1a03001 	mov	r3, r1
80022fe0:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022fe4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022fe8:	e24b2020 	sub	r2, fp, #32
80022fec:	e1a01002 	mov	r1, r2
80022ff0:	e1a00003 	mov	r0, r3
80022ff4:	ebffff02 	bl	80022c04 <readsb>
80022ff8:	e3a03001 	mov	r3, #1
80022ffc:	e50b3008 	str	r3, [fp, #-8]
80023000:	ea000027 	b	800230a4 <ialloc+0xd8>
80023004:	e51b3008 	ldr	r3, [fp, #-8]
80023008:	e1a031a3 	lsr	r3, r3, #3
8002300c:	e2833002 	add	r3, r3, #2
80023010:	e1a01003 	mov	r1, r3
80023014:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023018:	ebfff6bd 	bl	80020b14 <bread>
8002301c:	e50b000c 	str	r0, [fp, #-12]
80023020:	e51b300c 	ldr	r3, [fp, #-12]
80023024:	e2832018 	add	r2, r3, #24
80023028:	e51b3008 	ldr	r3, [fp, #-8]
8002302c:	e2033007 	and	r3, r3, #7
80023030:	e1a03303 	lsl	r3, r3, #6
80023034:	e0823003 	add	r3, r2, r3
80023038:	e50b3010 	str	r3, [fp, #-16]
8002303c:	e51b3010 	ldr	r3, [fp, #-16]
80023040:	e1d330f0 	ldrsh	r3, [r3]
80023044:	e3530000 	cmp	r3, #0
80023048:	1a000010 	bne	80023090 <ialloc+0xc4>
8002304c:	e3a02040 	mov	r2, #64	@ 0x40
80023050:	e3a01000 	mov	r1, #0
80023054:	e51b0010 	ldr	r0, [fp, #-16]
80023058:	ebfff3e8 	bl	80020000 <memset>
8002305c:	e51b3010 	ldr	r3, [fp, #-16]
80023060:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80023064:	e1c320b0 	strh	r2, [r3]
80023068:	e51b000c 	ldr	r0, [fp, #-12]
8002306c:	eb000588 	bl	80024694 <log_write>
80023070:	e51b000c 	ldr	r0, [fp, #-12]
80023074:	ebfff6d0 	bl	80020bbc <brelse>
80023078:	e51b3008 	ldr	r3, [fp, #-8]
8002307c:	e1a01003 	mov	r1, r3
80023080:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80023084:	eb000048 	bl	800231ac <iget>
80023088:	e1a03000 	mov	r3, r0
8002308c:	ea00000a 	b	800230bc <ialloc+0xf0>
80023090:	e51b000c 	ldr	r0, [fp, #-12]
80023094:	ebfff6c8 	bl	80020bbc <brelse>
80023098:	e51b3008 	ldr	r3, [fp, #-8]
8002309c:	e2833001 	add	r3, r3, #1
800230a0:	e50b3008 	str	r3, [fp, #-8]
800230a4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800230a8:	e51b3008 	ldr	r3, [fp, #-8]
800230ac:	e1520003 	cmp	r2, r3
800230b0:	8affffd3 	bhi	80023004 <ialloc+0x38>
800230b4:	e59f000c 	ldr	r0, [pc, #12]	@ 800230c8 <ialloc+0xfc>
800230b8:	ebfffa7b 	bl	80021aac <panic>
800230bc:	e1a00003 	mov	r0, r3
800230c0:	e24bd004 	sub	sp, fp, #4
800230c4:	e8bd8800 	pop	{fp, pc}
800230c8:	80029760 	.word	0x80029760

800230cc <iupdate>:
800230cc:	e92d4800 	push	{fp, lr}
800230d0:	e28db004 	add	fp, sp, #4
800230d4:	e24dd010 	sub	sp, sp, #16
800230d8:	e50b0010 	str	r0, [fp, #-16]
800230dc:	e51b3010 	ldr	r3, [fp, #-16]
800230e0:	e5932000 	ldr	r2, [r3]
800230e4:	e51b3010 	ldr	r3, [fp, #-16]
800230e8:	e5933004 	ldr	r3, [r3, #4]
800230ec:	e1a031a3 	lsr	r3, r3, #3
800230f0:	e2833002 	add	r3, r3, #2
800230f4:	e1a01003 	mov	r1, r3
800230f8:	e1a00002 	mov	r0, r2
800230fc:	ebfff684 	bl	80020b14 <bread>
80023100:	e50b0008 	str	r0, [fp, #-8]
80023104:	e51b3008 	ldr	r3, [fp, #-8]
80023108:	e2832018 	add	r2, r3, #24
8002310c:	e51b3010 	ldr	r3, [fp, #-16]
80023110:	e5933004 	ldr	r3, [r3, #4]
80023114:	e2033007 	and	r3, r3, #7
80023118:	e1a03303 	lsl	r3, r3, #6
8002311c:	e0823003 	add	r3, r2, r3
80023120:	e50b300c 	str	r3, [fp, #-12]
80023124:	e51b3010 	ldr	r3, [fp, #-16]
80023128:	e1d321f0 	ldrsh	r2, [r3, #16]
8002312c:	e51b300c 	ldr	r3, [fp, #-12]
80023130:	e1c320b0 	strh	r2, [r3]
80023134:	e51b3010 	ldr	r3, [fp, #-16]
80023138:	e1d321f2 	ldrsh	r2, [r3, #18]
8002313c:	e51b300c 	ldr	r3, [fp, #-12]
80023140:	e1c320b2 	strh	r2, [r3, #2]
80023144:	e51b3010 	ldr	r3, [fp, #-16]
80023148:	e1d321f4 	ldrsh	r2, [r3, #20]
8002314c:	e51b300c 	ldr	r3, [fp, #-12]
80023150:	e1c320b4 	strh	r2, [r3, #4]
80023154:	e51b3010 	ldr	r3, [fp, #-16]
80023158:	e1d321f6 	ldrsh	r2, [r3, #22]
8002315c:	e51b300c 	ldr	r3, [fp, #-12]
80023160:	e1c320b6 	strh	r2, [r3, #6]
80023164:	e51b3010 	ldr	r3, [fp, #-16]
80023168:	e5932018 	ldr	r2, [r3, #24]
8002316c:	e51b300c 	ldr	r3, [fp, #-12]
80023170:	e5832008 	str	r2, [r3, #8]
80023174:	e51b300c 	ldr	r3, [fp, #-12]
80023178:	e283000c 	add	r0, r3, #12
8002317c:	e51b3010 	ldr	r3, [fp, #-16]
80023180:	e283301c 	add	r3, r3, #28
80023184:	e3a02034 	mov	r2, #52	@ 0x34
80023188:	e1a01003 	mov	r1, r3
8002318c:	ebfff40d 	bl	800201c8 <memmove>
80023190:	e51b0008 	ldr	r0, [fp, #-8]
80023194:	eb00053e 	bl	80024694 <log_write>
80023198:	e51b0008 	ldr	r0, [fp, #-8]
8002319c:	ebfff686 	bl	80020bbc <brelse>
800231a0:	e1a00000 	nop			@ (mov r0, r0)
800231a4:	e24bd004 	sub	sp, fp, #4
800231a8:	e8bd8800 	pop	{fp, pc}

800231ac <iget>:
800231ac:	e92d4800 	push	{fp, lr}
800231b0:	e28db004 	add	fp, sp, #4
800231b4:	e24dd010 	sub	sp, sp, #16
800231b8:	e50b0010 	str	r0, [fp, #-16]
800231bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800231c0:	e59f0114 	ldr	r0, [pc, #276]	@ 800232dc <iget+0x130>
800231c4:	eb000b5d 	bl	80025f40 <acquire>
800231c8:	e3a03000 	mov	r3, #0
800231cc:	e50b300c 	str	r3, [fp, #-12]
800231d0:	e59f3108 	ldr	r3, [pc, #264]	@ 800232e0 <iget+0x134>
800231d4:	e50b3008 	str	r3, [fp, #-8]
800231d8:	ea000022 	b	80023268 <iget+0xbc>
800231dc:	e51b3008 	ldr	r3, [fp, #-8]
800231e0:	e5933008 	ldr	r3, [r3, #8]
800231e4:	e3530000 	cmp	r3, #0
800231e8:	da000012 	ble	80023238 <iget+0x8c>
800231ec:	e51b3008 	ldr	r3, [fp, #-8]
800231f0:	e5933000 	ldr	r3, [r3]
800231f4:	e51b2010 	ldr	r2, [fp, #-16]
800231f8:	e1520003 	cmp	r2, r3
800231fc:	1a00000d 	bne	80023238 <iget+0x8c>
80023200:	e51b3008 	ldr	r3, [fp, #-8]
80023204:	e5933004 	ldr	r3, [r3, #4]
80023208:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002320c:	e1520003 	cmp	r2, r3
80023210:	1a000008 	bne	80023238 <iget+0x8c>
80023214:	e51b3008 	ldr	r3, [fp, #-8]
80023218:	e5933008 	ldr	r3, [r3, #8]
8002321c:	e2832001 	add	r2, r3, #1
80023220:	e51b3008 	ldr	r3, [fp, #-8]
80023224:	e5832008 	str	r2, [r3, #8]
80023228:	e59f00ac 	ldr	r0, [pc, #172]	@ 800232dc <iget+0x130>
8002322c:	eb000b4e 	bl	80025f6c <release>
80023230:	e51b3008 	ldr	r3, [fp, #-8]
80023234:	ea000025 	b	800232d0 <iget+0x124>
80023238:	e51b300c 	ldr	r3, [fp, #-12]
8002323c:	e3530000 	cmp	r3, #0
80023240:	1a000005 	bne	8002325c <iget+0xb0>
80023244:	e51b3008 	ldr	r3, [fp, #-8]
80023248:	e5933008 	ldr	r3, [r3, #8]
8002324c:	e3530000 	cmp	r3, #0
80023250:	1a000001 	bne	8002325c <iget+0xb0>
80023254:	e51b3008 	ldr	r3, [fp, #-8]
80023258:	e50b300c 	str	r3, [fp, #-12]
8002325c:	e51b3008 	ldr	r3, [fp, #-8]
80023260:	e2833050 	add	r3, r3, #80	@ 0x50
80023264:	e50b3008 	str	r3, [fp, #-8]
80023268:	e51b3008 	ldr	r3, [fp, #-8]
8002326c:	e59f2070 	ldr	r2, [pc, #112]	@ 800232e4 <iget+0x138>
80023270:	e1530002 	cmp	r3, r2
80023274:	3affffd8 	bcc	800231dc <iget+0x30>
80023278:	e51b300c 	ldr	r3, [fp, #-12]
8002327c:	e3530000 	cmp	r3, #0
80023280:	1a000001 	bne	8002328c <iget+0xe0>
80023284:	e59f005c 	ldr	r0, [pc, #92]	@ 800232e8 <iget+0x13c>
80023288:	ebfffa07 	bl	80021aac <panic>
8002328c:	e51b300c 	ldr	r3, [fp, #-12]
80023290:	e50b3008 	str	r3, [fp, #-8]
80023294:	e51b3008 	ldr	r3, [fp, #-8]
80023298:	e51b2010 	ldr	r2, [fp, #-16]
8002329c:	e5832000 	str	r2, [r3]
800232a0:	e51b3008 	ldr	r3, [fp, #-8]
800232a4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800232a8:	e5832004 	str	r2, [r3, #4]
800232ac:	e51b3008 	ldr	r3, [fp, #-8]
800232b0:	e3a02001 	mov	r2, #1
800232b4:	e5832008 	str	r2, [r3, #8]
800232b8:	e51b3008 	ldr	r3, [fp, #-8]
800232bc:	e3a02000 	mov	r2, #0
800232c0:	e583200c 	str	r2, [r3, #12]
800232c4:	e59f0010 	ldr	r0, [pc, #16]	@ 800232dc <iget+0x130>
800232c8:	eb000b27 	bl	80025f6c <release>
800232cc:	e51b3008 	ldr	r3, [fp, #-8]
800232d0:	e1a00003 	mov	r0, r3
800232d4:	e24bd004 	sub	sp, fp, #4
800232d8:	e8bd8800 	pop	{fp, pc}
800232dc:	800ac4f0 	.word	0x800ac4f0
800232e0:	800ac524 	.word	0x800ac524
800232e4:	800ad4c4 	.word	0x800ad4c4
800232e8:	80029774 	.word	0x80029774

800232ec <idup>:
800232ec:	e92d4800 	push	{fp, lr}
800232f0:	e28db004 	add	fp, sp, #4
800232f4:	e24dd008 	sub	sp, sp, #8
800232f8:	e50b0008 	str	r0, [fp, #-8]
800232fc:	e59f002c 	ldr	r0, [pc, #44]	@ 80023330 <idup+0x44>
80023300:	eb000b0e 	bl	80025f40 <acquire>
80023304:	e51b3008 	ldr	r3, [fp, #-8]
80023308:	e5933008 	ldr	r3, [r3, #8]
8002330c:	e2832001 	add	r2, r3, #1
80023310:	e51b3008 	ldr	r3, [fp, #-8]
80023314:	e5832008 	str	r2, [r3, #8]
80023318:	e59f0010 	ldr	r0, [pc, #16]	@ 80023330 <idup+0x44>
8002331c:	eb000b12 	bl	80025f6c <release>
80023320:	e51b3008 	ldr	r3, [fp, #-8]
80023324:	e1a00003 	mov	r0, r3
80023328:	e24bd004 	sub	sp, fp, #4
8002332c:	e8bd8800 	pop	{fp, pc}
80023330:	800ac4f0 	.word	0x800ac4f0

80023334 <ilock>:
80023334:	e92d4800 	push	{fp, lr}
80023338:	e28db004 	add	fp, sp, #4
8002333c:	e24dd010 	sub	sp, sp, #16
80023340:	e50b0010 	str	r0, [fp, #-16]
80023344:	e51b3010 	ldr	r3, [fp, #-16]
80023348:	e3530000 	cmp	r3, #0
8002334c:	0a000003 	beq	80023360 <ilock+0x2c>
80023350:	e51b3010 	ldr	r3, [fp, #-16]
80023354:	e5933008 	ldr	r3, [r3, #8]
80023358:	e3530000 	cmp	r3, #0
8002335c:	ca000001 	bgt	80023368 <ilock+0x34>
80023360:	e59f0150 	ldr	r0, [pc, #336]	@ 800234b8 <ilock+0x184>
80023364:	ebfff9d0 	bl	80021aac <panic>
80023368:	e59f014c 	ldr	r0, [pc, #332]	@ 800234bc <ilock+0x188>
8002336c:	eb000af3 	bl	80025f40 <acquire>
80023370:	ea000002 	b	80023380 <ilock+0x4c>
80023374:	e59f1140 	ldr	r1, [pc, #320]	@ 800234bc <ilock+0x188>
80023378:	e51b0010 	ldr	r0, [fp, #-16]
8002337c:	eb0009c8 	bl	80025aa4 <sleep>
80023380:	e51b3010 	ldr	r3, [fp, #-16]
80023384:	e593300c 	ldr	r3, [r3, #12]
80023388:	e2033001 	and	r3, r3, #1
8002338c:	e3530000 	cmp	r3, #0
80023390:	1afffff7 	bne	80023374 <ilock+0x40>
80023394:	e51b3010 	ldr	r3, [fp, #-16]
80023398:	e593300c 	ldr	r3, [r3, #12]
8002339c:	e3832001 	orr	r2, r3, #1
800233a0:	e51b3010 	ldr	r3, [fp, #-16]
800233a4:	e583200c 	str	r2, [r3, #12]
800233a8:	e59f010c 	ldr	r0, [pc, #268]	@ 800234bc <ilock+0x188>
800233ac:	eb000aee 	bl	80025f6c <release>
800233b0:	e51b3010 	ldr	r3, [fp, #-16]
800233b4:	e593300c 	ldr	r3, [r3, #12]
800233b8:	e2033002 	and	r3, r3, #2
800233bc:	e3530000 	cmp	r3, #0
800233c0:	1a000039 	bne	800234ac <ilock+0x178>
800233c4:	e51b3010 	ldr	r3, [fp, #-16]
800233c8:	e5932000 	ldr	r2, [r3]
800233cc:	e51b3010 	ldr	r3, [fp, #-16]
800233d0:	e5933004 	ldr	r3, [r3, #4]
800233d4:	e1a031a3 	lsr	r3, r3, #3
800233d8:	e2833002 	add	r3, r3, #2
800233dc:	e1a01003 	mov	r1, r3
800233e0:	e1a00002 	mov	r0, r2
800233e4:	ebfff5ca 	bl	80020b14 <bread>
800233e8:	e50b0008 	str	r0, [fp, #-8]
800233ec:	e51b3008 	ldr	r3, [fp, #-8]
800233f0:	e2832018 	add	r2, r3, #24
800233f4:	e51b3010 	ldr	r3, [fp, #-16]
800233f8:	e5933004 	ldr	r3, [r3, #4]
800233fc:	e2033007 	and	r3, r3, #7
80023400:	e1a03303 	lsl	r3, r3, #6
80023404:	e0823003 	add	r3, r2, r3
80023408:	e50b300c 	str	r3, [fp, #-12]
8002340c:	e51b300c 	ldr	r3, [fp, #-12]
80023410:	e1d320f0 	ldrsh	r2, [r3]
80023414:	e51b3010 	ldr	r3, [fp, #-16]
80023418:	e1c321b0 	strh	r2, [r3, #16]
8002341c:	e51b300c 	ldr	r3, [fp, #-12]
80023420:	e1d320f2 	ldrsh	r2, [r3, #2]
80023424:	e51b3010 	ldr	r3, [fp, #-16]
80023428:	e1c321b2 	strh	r2, [r3, #18]
8002342c:	e51b300c 	ldr	r3, [fp, #-12]
80023430:	e1d320f4 	ldrsh	r2, [r3, #4]
80023434:	e51b3010 	ldr	r3, [fp, #-16]
80023438:	e1c321b4 	strh	r2, [r3, #20]
8002343c:	e51b300c 	ldr	r3, [fp, #-12]
80023440:	e1d320f6 	ldrsh	r2, [r3, #6]
80023444:	e51b3010 	ldr	r3, [fp, #-16]
80023448:	e1c321b6 	strh	r2, [r3, #22]
8002344c:	e51b300c 	ldr	r3, [fp, #-12]
80023450:	e5932008 	ldr	r2, [r3, #8]
80023454:	e51b3010 	ldr	r3, [fp, #-16]
80023458:	e5832018 	str	r2, [r3, #24]
8002345c:	e51b3010 	ldr	r3, [fp, #-16]
80023460:	e283001c 	add	r0, r3, #28
80023464:	e51b300c 	ldr	r3, [fp, #-12]
80023468:	e283300c 	add	r3, r3, #12
8002346c:	e3a02034 	mov	r2, #52	@ 0x34
80023470:	e1a01003 	mov	r1, r3
80023474:	ebfff353 	bl	800201c8 <memmove>
80023478:	e51b0008 	ldr	r0, [fp, #-8]
8002347c:	ebfff5ce 	bl	80020bbc <brelse>
80023480:	e51b3010 	ldr	r3, [fp, #-16]
80023484:	e593300c 	ldr	r3, [r3, #12]
80023488:	e3832002 	orr	r2, r3, #2
8002348c:	e51b3010 	ldr	r3, [fp, #-16]
80023490:	e583200c 	str	r2, [r3, #12]
80023494:	e51b3010 	ldr	r3, [fp, #-16]
80023498:	e1d331f0 	ldrsh	r3, [r3, #16]
8002349c:	e3530000 	cmp	r3, #0
800234a0:	1a000001 	bne	800234ac <ilock+0x178>
800234a4:	e59f0014 	ldr	r0, [pc, #20]	@ 800234c0 <ilock+0x18c>
800234a8:	ebfff97f 	bl	80021aac <panic>
800234ac:	e1a00000 	nop			@ (mov r0, r0)
800234b0:	e24bd004 	sub	sp, fp, #4
800234b4:	e8bd8800 	pop	{fp, pc}
800234b8:	80029784 	.word	0x80029784
800234bc:	800ac4f0 	.word	0x800ac4f0
800234c0:	8002978c 	.word	0x8002978c

800234c4 <iunlock>:
800234c4:	e92d4800 	push	{fp, lr}
800234c8:	e28db004 	add	fp, sp, #4
800234cc:	e24dd008 	sub	sp, sp, #8
800234d0:	e50b0008 	str	r0, [fp, #-8]
800234d4:	e51b3008 	ldr	r3, [fp, #-8]
800234d8:	e3530000 	cmp	r3, #0
800234dc:	0a000008 	beq	80023504 <iunlock+0x40>
800234e0:	e51b3008 	ldr	r3, [fp, #-8]
800234e4:	e593300c 	ldr	r3, [r3, #12]
800234e8:	e2033001 	and	r3, r3, #1
800234ec:	e3530000 	cmp	r3, #0
800234f0:	0a000003 	beq	80023504 <iunlock+0x40>
800234f4:	e51b3008 	ldr	r3, [fp, #-8]
800234f8:	e5933008 	ldr	r3, [r3, #8]
800234fc:	e3530000 	cmp	r3, #0
80023500:	ca000001 	bgt	8002350c <iunlock+0x48>
80023504:	e59f0038 	ldr	r0, [pc, #56]	@ 80023544 <iunlock+0x80>
80023508:	ebfff967 	bl	80021aac <panic>
8002350c:	e59f0034 	ldr	r0, [pc, #52]	@ 80023548 <iunlock+0x84>
80023510:	eb000a8a 	bl	80025f40 <acquire>
80023514:	e51b3008 	ldr	r3, [fp, #-8]
80023518:	e593300c 	ldr	r3, [r3, #12]
8002351c:	e3c32001 	bic	r2, r3, #1
80023520:	e51b3008 	ldr	r3, [fp, #-8]
80023524:	e583200c 	str	r2, [r3, #12]
80023528:	e51b0008 	ldr	r0, [fp, #-8]
8002352c:	eb0009b1 	bl	80025bf8 <wakeup>
80023530:	e59f0010 	ldr	r0, [pc, #16]	@ 80023548 <iunlock+0x84>
80023534:	eb000a8c 	bl	80025f6c <release>
80023538:	e1a00000 	nop			@ (mov r0, r0)
8002353c:	e24bd004 	sub	sp, fp, #4
80023540:	e8bd8800 	pop	{fp, pc}
80023544:	8002979c 	.word	0x8002979c
80023548:	800ac4f0 	.word	0x800ac4f0

8002354c <iput>:
8002354c:	e92d4800 	push	{fp, lr}
80023550:	e28db004 	add	fp, sp, #4
80023554:	e24dd008 	sub	sp, sp, #8
80023558:	e50b0008 	str	r0, [fp, #-8]
8002355c:	e59f00cc 	ldr	r0, [pc, #204]	@ 80023630 <iput+0xe4>
80023560:	eb000a76 	bl	80025f40 <acquire>
80023564:	e51b3008 	ldr	r3, [fp, #-8]
80023568:	e5933008 	ldr	r3, [r3, #8]
8002356c:	e3530001 	cmp	r3, #1
80023570:	1a000024 	bne	80023608 <iput+0xbc>
80023574:	e51b3008 	ldr	r3, [fp, #-8]
80023578:	e593300c 	ldr	r3, [r3, #12]
8002357c:	e2033002 	and	r3, r3, #2
80023580:	e3530000 	cmp	r3, #0
80023584:	0a00001f 	beq	80023608 <iput+0xbc>
80023588:	e51b3008 	ldr	r3, [fp, #-8]
8002358c:	e1d331f6 	ldrsh	r3, [r3, #22]
80023590:	e3530000 	cmp	r3, #0
80023594:	1a00001b 	bne	80023608 <iput+0xbc>
80023598:	e51b3008 	ldr	r3, [fp, #-8]
8002359c:	e593300c 	ldr	r3, [r3, #12]
800235a0:	e2033001 	and	r3, r3, #1
800235a4:	e3530000 	cmp	r3, #0
800235a8:	0a000001 	beq	800235b4 <iput+0x68>
800235ac:	e59f0080 	ldr	r0, [pc, #128]	@ 80023634 <iput+0xe8>
800235b0:	ebfff93d 	bl	80021aac <panic>
800235b4:	e51b3008 	ldr	r3, [fp, #-8]
800235b8:	e593300c 	ldr	r3, [r3, #12]
800235bc:	e3832001 	orr	r2, r3, #1
800235c0:	e51b3008 	ldr	r3, [fp, #-8]
800235c4:	e583200c 	str	r2, [r3, #12]
800235c8:	e59f0060 	ldr	r0, [pc, #96]	@ 80023630 <iput+0xe4>
800235cc:	eb000a66 	bl	80025f6c <release>
800235d0:	e51b0008 	ldr	r0, [fp, #-8]
800235d4:	eb00007f 	bl	800237d8 <itrunc>
800235d8:	e51b3008 	ldr	r3, [fp, #-8]
800235dc:	e3a02000 	mov	r2, #0
800235e0:	e1c321b0 	strh	r2, [r3, #16]
800235e4:	e51b0008 	ldr	r0, [fp, #-8]
800235e8:	ebfffeb7 	bl	800230cc <iupdate>
800235ec:	e59f003c 	ldr	r0, [pc, #60]	@ 80023630 <iput+0xe4>
800235f0:	eb000a52 	bl	80025f40 <acquire>
800235f4:	e51b3008 	ldr	r3, [fp, #-8]
800235f8:	e3a02000 	mov	r2, #0
800235fc:	e583200c 	str	r2, [r3, #12]
80023600:	e51b0008 	ldr	r0, [fp, #-8]
80023604:	eb00097b 	bl	80025bf8 <wakeup>
80023608:	e51b3008 	ldr	r3, [fp, #-8]
8002360c:	e5933008 	ldr	r3, [r3, #8]
80023610:	e2432001 	sub	r2, r3, #1
80023614:	e51b3008 	ldr	r3, [fp, #-8]
80023618:	e5832008 	str	r2, [r3, #8]
8002361c:	e59f000c 	ldr	r0, [pc, #12]	@ 80023630 <iput+0xe4>
80023620:	eb000a51 	bl	80025f6c <release>
80023624:	e1a00000 	nop			@ (mov r0, r0)
80023628:	e24bd004 	sub	sp, fp, #4
8002362c:	e8bd8800 	pop	{fp, pc}
80023630:	800ac4f0 	.word	0x800ac4f0
80023634:	800297a4 	.word	0x800297a4

80023638 <iunlockput>:
80023638:	e92d4800 	push	{fp, lr}
8002363c:	e28db004 	add	fp, sp, #4
80023640:	e24dd008 	sub	sp, sp, #8
80023644:	e50b0008 	str	r0, [fp, #-8]
80023648:	e51b0008 	ldr	r0, [fp, #-8]
8002364c:	ebffff9c 	bl	800234c4 <iunlock>
80023650:	e51b0008 	ldr	r0, [fp, #-8]
80023654:	ebffffbc 	bl	8002354c <iput>
80023658:	e1a00000 	nop			@ (mov r0, r0)
8002365c:	e24bd004 	sub	sp, fp, #4
80023660:	e8bd8800 	pop	{fp, pc}

80023664 <bmap>:
80023664:	e92d4800 	push	{fp, lr}
80023668:	e28db004 	add	fp, sp, #4
8002366c:	e24dd018 	sub	sp, sp, #24
80023670:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80023674:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80023678:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002367c:	e353000b 	cmp	r3, #11
80023680:	8a000017 	bhi	800236e4 <bmap+0x80>
80023684:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023688:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002368c:	e2833006 	add	r3, r3, #6
80023690:	e1a03103 	lsl	r3, r3, #2
80023694:	e0823003 	add	r3, r2, r3
80023698:	e5933004 	ldr	r3, [r3, #4]
8002369c:	e50b3008 	str	r3, [fp, #-8]
800236a0:	e51b3008 	ldr	r3, [fp, #-8]
800236a4:	e3530000 	cmp	r3, #0
800236a8:	1a00000b 	bne	800236dc <bmap+0x78>
800236ac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236b0:	e5933000 	ldr	r3, [r3]
800236b4:	e1a00003 	mov	r0, r3
800236b8:	ebfffd7e 	bl	80022cb8 <balloc>
800236bc:	e50b0008 	str	r0, [fp, #-8]
800236c0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800236c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236c8:	e2833006 	add	r3, r3, #6
800236cc:	e1a03103 	lsl	r3, r3, #2
800236d0:	e0823003 	add	r3, r2, r3
800236d4:	e51b2008 	ldr	r2, [fp, #-8]
800236d8:	e5832004 	str	r2, [r3, #4]
800236dc:	e51b3008 	ldr	r3, [fp, #-8]
800236e0:	ea000038 	b	800237c8 <bmap+0x164>
800236e4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236e8:	e243300c 	sub	r3, r3, #12
800236ec:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800236f0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800236f4:	e353007f 	cmp	r3, #127	@ 0x7f
800236f8:	8a000030 	bhi	800237c0 <bmap+0x15c>
800236fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023700:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023704:	e50b3008 	str	r3, [fp, #-8]
80023708:	e51b3008 	ldr	r3, [fp, #-8]
8002370c:	e3530000 	cmp	r3, #0
80023710:	1a000007 	bne	80023734 <bmap+0xd0>
80023714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023718:	e5933000 	ldr	r3, [r3]
8002371c:	e1a00003 	mov	r0, r3
80023720:	ebfffd64 	bl	80022cb8 <balloc>
80023724:	e50b0008 	str	r0, [fp, #-8]
80023728:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002372c:	e51b2008 	ldr	r2, [fp, #-8]
80023730:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023734:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023738:	e5933000 	ldr	r3, [r3]
8002373c:	e51b1008 	ldr	r1, [fp, #-8]
80023740:	e1a00003 	mov	r0, r3
80023744:	ebfff4f2 	bl	80020b14 <bread>
80023748:	e50b000c 	str	r0, [fp, #-12]
8002374c:	e51b300c 	ldr	r3, [fp, #-12]
80023750:	e2833018 	add	r3, r3, #24
80023754:	e50b3010 	str	r3, [fp, #-16]
80023758:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002375c:	e1a03103 	lsl	r3, r3, #2
80023760:	e51b2010 	ldr	r2, [fp, #-16]
80023764:	e0823003 	add	r3, r2, r3
80023768:	e5933000 	ldr	r3, [r3]
8002376c:	e50b3008 	str	r3, [fp, #-8]
80023770:	e51b3008 	ldr	r3, [fp, #-8]
80023774:	e3530000 	cmp	r3, #0
80023778:	1a00000c 	bne	800237b0 <bmap+0x14c>
8002377c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023780:	e5933000 	ldr	r3, [r3]
80023784:	e1a00003 	mov	r0, r3
80023788:	ebfffd4a 	bl	80022cb8 <balloc>
8002378c:	e50b0008 	str	r0, [fp, #-8]
80023790:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023794:	e1a03103 	lsl	r3, r3, #2
80023798:	e51b2010 	ldr	r2, [fp, #-16]
8002379c:	e0823003 	add	r3, r2, r3
800237a0:	e51b2008 	ldr	r2, [fp, #-8]
800237a4:	e5832000 	str	r2, [r3]
800237a8:	e51b000c 	ldr	r0, [fp, #-12]
800237ac:	eb0003b8 	bl	80024694 <log_write>
800237b0:	e51b000c 	ldr	r0, [fp, #-12]
800237b4:	ebfff500 	bl	80020bbc <brelse>
800237b8:	e51b3008 	ldr	r3, [fp, #-8]
800237bc:	ea000001 	b	800237c8 <bmap+0x164>
800237c0:	e59f000c 	ldr	r0, [pc, #12]	@ 800237d4 <bmap+0x170>
800237c4:	ebfff8b8 	bl	80021aac <panic>
800237c8:	e1a00003 	mov	r0, r3
800237cc:	e24bd004 	sub	sp, fp, #4
800237d0:	e8bd8800 	pop	{fp, pc}
800237d4:	800297b0 	.word	0x800297b0

800237d8 <itrunc>:
800237d8:	e92d4800 	push	{fp, lr}
800237dc:	e28db004 	add	fp, sp, #4
800237e0:	e24dd018 	sub	sp, sp, #24
800237e4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800237e8:	e3a03000 	mov	r3, #0
800237ec:	e50b3008 	str	r3, [fp, #-8]
800237f0:	ea00001c 	b	80023868 <itrunc+0x90>
800237f4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800237f8:	e51b3008 	ldr	r3, [fp, #-8]
800237fc:	e2833006 	add	r3, r3, #6
80023800:	e1a03103 	lsl	r3, r3, #2
80023804:	e0823003 	add	r3, r2, r3
80023808:	e5933004 	ldr	r3, [r3, #4]
8002380c:	e3530000 	cmp	r3, #0
80023810:	0a000011 	beq	8002385c <itrunc+0x84>
80023814:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023818:	e5933000 	ldr	r3, [r3]
8002381c:	e1a00003 	mov	r0, r3
80023820:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023824:	e51b3008 	ldr	r3, [fp, #-8]
80023828:	e2833006 	add	r3, r3, #6
8002382c:	e1a03103 	lsl	r3, r3, #2
80023830:	e0823003 	add	r3, r2, r3
80023834:	e5933004 	ldr	r3, [r3, #4]
80023838:	e1a01003 	mov	r1, r3
8002383c:	ebfffd8f 	bl	80022e80 <bfree>
80023840:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023844:	e51b3008 	ldr	r3, [fp, #-8]
80023848:	e2833006 	add	r3, r3, #6
8002384c:	e1a03103 	lsl	r3, r3, #2
80023850:	e0823003 	add	r3, r2, r3
80023854:	e3a02000 	mov	r2, #0
80023858:	e5832004 	str	r2, [r3, #4]
8002385c:	e51b3008 	ldr	r3, [fp, #-8]
80023860:	e2833001 	add	r3, r3, #1
80023864:	e50b3008 	str	r3, [fp, #-8]
80023868:	e51b3008 	ldr	r3, [fp, #-8]
8002386c:	e353000b 	cmp	r3, #11
80023870:	daffffdf 	ble	800237f4 <itrunc+0x1c>
80023874:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023878:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002387c:	e3530000 	cmp	r3, #0
80023880:	0a000031 	beq	8002394c <itrunc+0x174>
80023884:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023888:	e5932000 	ldr	r2, [r3]
8002388c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023890:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023894:	e1a01003 	mov	r1, r3
80023898:	e1a00002 	mov	r0, r2
8002389c:	ebfff49c 	bl	80020b14 <bread>
800238a0:	e50b0010 	str	r0, [fp, #-16]
800238a4:	e51b3010 	ldr	r3, [fp, #-16]
800238a8:	e2833018 	add	r3, r3, #24
800238ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800238b0:	e3a03000 	mov	r3, #0
800238b4:	e50b300c 	str	r3, [fp, #-12]
800238b8:	ea000013 	b	8002390c <itrunc+0x134>
800238bc:	e51b300c 	ldr	r3, [fp, #-12]
800238c0:	e1a03103 	lsl	r3, r3, #2
800238c4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800238c8:	e0823003 	add	r3, r2, r3
800238cc:	e5933000 	ldr	r3, [r3]
800238d0:	e3530000 	cmp	r3, #0
800238d4:	0a000009 	beq	80023900 <itrunc+0x128>
800238d8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800238dc:	e5933000 	ldr	r3, [r3]
800238e0:	e1a00003 	mov	r0, r3
800238e4:	e51b300c 	ldr	r3, [fp, #-12]
800238e8:	e1a03103 	lsl	r3, r3, #2
800238ec:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800238f0:	e0823003 	add	r3, r2, r3
800238f4:	e5933000 	ldr	r3, [r3]
800238f8:	e1a01003 	mov	r1, r3
800238fc:	ebfffd5f 	bl	80022e80 <bfree>
80023900:	e51b300c 	ldr	r3, [fp, #-12]
80023904:	e2833001 	add	r3, r3, #1
80023908:	e50b300c 	str	r3, [fp, #-12]
8002390c:	e51b300c 	ldr	r3, [fp, #-12]
80023910:	e353007f 	cmp	r3, #127	@ 0x7f
80023914:	9affffe8 	bls	800238bc <itrunc+0xe4>
80023918:	e51b0010 	ldr	r0, [fp, #-16]
8002391c:	ebfff4a6 	bl	80020bbc <brelse>
80023920:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023924:	e5933000 	ldr	r3, [r3]
80023928:	e1a02003 	mov	r2, r3
8002392c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023930:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023934:	e1a01003 	mov	r1, r3
80023938:	e1a00002 	mov	r0, r2
8002393c:	ebfffd4f 	bl	80022e80 <bfree>
80023940:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023944:	e3a02000 	mov	r2, #0
80023948:	e583204c 	str	r2, [r3, #76]	@ 0x4c
8002394c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023950:	e3a02000 	mov	r2, #0
80023954:	e5832018 	str	r2, [r3, #24]
80023958:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002395c:	ebfffdda 	bl	800230cc <iupdate>
80023960:	e1a00000 	nop			@ (mov r0, r0)
80023964:	e24bd004 	sub	sp, fp, #4
80023968:	e8bd8800 	pop	{fp, pc}

8002396c <stati>:
8002396c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023970:	e28db000 	add	fp, sp, #0
80023974:	e24dd00c 	sub	sp, sp, #12
80023978:	e50b0008 	str	r0, [fp, #-8]
8002397c:	e50b100c 	str	r1, [fp, #-12]
80023980:	e51b3008 	ldr	r3, [fp, #-8]
80023984:	e5933000 	ldr	r3, [r3]
80023988:	e1a02003 	mov	r2, r3
8002398c:	e51b300c 	ldr	r3, [fp, #-12]
80023990:	e5832004 	str	r2, [r3, #4]
80023994:	e51b3008 	ldr	r3, [fp, #-8]
80023998:	e5932004 	ldr	r2, [r3, #4]
8002399c:	e51b300c 	ldr	r3, [fp, #-12]
800239a0:	e5832008 	str	r2, [r3, #8]
800239a4:	e51b3008 	ldr	r3, [fp, #-8]
800239a8:	e1d321f0 	ldrsh	r2, [r3, #16]
800239ac:	e51b300c 	ldr	r3, [fp, #-12]
800239b0:	e1c320b0 	strh	r2, [r3]
800239b4:	e51b3008 	ldr	r3, [fp, #-8]
800239b8:	e1d321f6 	ldrsh	r2, [r3, #22]
800239bc:	e51b300c 	ldr	r3, [fp, #-12]
800239c0:	e1c320bc 	strh	r2, [r3, #12]
800239c4:	e51b3008 	ldr	r3, [fp, #-8]
800239c8:	e5932018 	ldr	r2, [r3, #24]
800239cc:	e51b300c 	ldr	r3, [fp, #-12]
800239d0:	e5832010 	str	r2, [r3, #16]
800239d4:	e1a00000 	nop			@ (mov r0, r0)
800239d8:	e28bd000 	add	sp, fp, #0
800239dc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800239e0:	e12fff1e 	bx	lr

800239e4 <readi>:
800239e4:	e92d4810 	push	{r4, fp, lr}
800239e8:	e28db008 	add	fp, sp, #8
800239ec:	e24dd024 	sub	sp, sp, #36	@ 0x24
800239f0:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800239f4:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800239f8:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800239fc:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023a00:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a04:	e1d331f0 	ldrsh	r3, [r3, #16]
80023a08:	e3530003 	cmp	r3, #3
80023a0c:	1a00001b 	bne	80023a80 <readi+0x9c>
80023a10:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a14:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a18:	e3530000 	cmp	r3, #0
80023a1c:	ba00000a 	blt	80023a4c <readi+0x68>
80023a20:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a24:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a28:	e3530009 	cmp	r3, #9
80023a2c:	ca000006 	bgt	80023a4c <readi+0x68>
80023a30:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a34:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a38:	e1a02003 	mov	r2, r3
80023a3c:	e59f3188 	ldr	r3, [pc, #392]	@ 80023bcc <readi+0x1e8>
80023a40:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023a44:	e3530000 	cmp	r3, #0
80023a48:	1a000001 	bne	80023a54 <readi+0x70>
80023a4c:	e3e03000 	mvn	r3, #0
80023a50:	ea00005a 	b	80023bc0 <readi+0x1dc>
80023a54:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a58:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a5c:	e1a02003 	mov	r2, r3
80023a60:	e59f3164 	ldr	r3, [pc, #356]	@ 80023bcc <readi+0x1e8>
80023a64:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023a68:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023a6c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023a70:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a74:	e12fff33 	blx	r3
80023a78:	e1a03000 	mov	r3, r0
80023a7c:	ea00004f 	b	80023bc0 <readi+0x1dc>
80023a80:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a84:	e5933018 	ldr	r3, [r3, #24]
80023a88:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a8c:	e1520003 	cmp	r2, r3
80023a90:	8a000005 	bhi	80023aac <readi+0xc8>
80023a94:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a9c:	e0823003 	add	r3, r2, r3
80023aa0:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023aa4:	e1520003 	cmp	r2, r3
80023aa8:	9a000001 	bls	80023ab4 <readi+0xd0>
80023aac:	e3e03000 	mvn	r3, #0
80023ab0:	ea000042 	b	80023bc0 <readi+0x1dc>
80023ab4:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023ab8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023abc:	e0822003 	add	r2, r2, r3
80023ac0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ac4:	e5933018 	ldr	r3, [r3, #24]
80023ac8:	e1520003 	cmp	r2, r3
80023acc:	9a000004 	bls	80023ae4 <readi+0x100>
80023ad0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ad4:	e5932018 	ldr	r2, [r3, #24]
80023ad8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023adc:	e0423003 	sub	r3, r2, r3
80023ae0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023ae4:	e3a03000 	mov	r3, #0
80023ae8:	e50b3010 	str	r3, [fp, #-16]
80023aec:	ea00002e 	b	80023bac <readi+0x1c8>
80023af0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023af4:	e5934000 	ldr	r4, [r3]
80023af8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023afc:	e1a034a3 	lsr	r3, r3, #9
80023b00:	e1a01003 	mov	r1, r3
80023b04:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b08:	ebfffed5 	bl	80023664 <bmap>
80023b0c:	e1a03000 	mov	r3, r0
80023b10:	e1a01003 	mov	r1, r3
80023b14:	e1a00004 	mov	r0, r4
80023b18:	ebfff3fd 	bl	80020b14 <bread>
80023b1c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023b20:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b24:	e1a03b83 	lsl	r3, r3, #23
80023b28:	e1a03ba3 	lsr	r3, r3, #23
80023b2c:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023b30:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023b34:	e51b3010 	ldr	r3, [fp, #-16]
80023b38:	e0413003 	sub	r3, r1, r3
80023b3c:	e1520003 	cmp	r2, r3
80023b40:	31a03002 	movcc	r3, r2
80023b44:	21a03003 	movcs	r3, r3
80023b48:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023b4c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023b50:	e2832018 	add	r2, r3, #24
80023b54:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b58:	e1a03b83 	lsl	r3, r3, #23
80023b5c:	e1a03ba3 	lsr	r3, r3, #23
80023b60:	e0823003 	add	r3, r2, r3
80023b64:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023b68:	e1a01003 	mov	r1, r3
80023b6c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023b70:	ebfff194 	bl	800201c8 <memmove>
80023b74:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b78:	ebfff40f 	bl	80020bbc <brelse>
80023b7c:	e51b2010 	ldr	r2, [fp, #-16]
80023b80:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b84:	e0823003 	add	r3, r2, r3
80023b88:	e50b3010 	str	r3, [fp, #-16]
80023b8c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b90:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b94:	e0823003 	add	r3, r2, r3
80023b98:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023b9c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023ba0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023ba4:	e0823003 	add	r3, r2, r3
80023ba8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023bac:	e51b2010 	ldr	r2, [fp, #-16]
80023bb0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bb4:	e1520003 	cmp	r2, r3
80023bb8:	3affffcc 	bcc	80023af0 <readi+0x10c>
80023bbc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023bc0:	e1a00003 	mov	r0, r3
80023bc4:	e24bd008 	sub	sp, fp, #8
80023bc8:	e8bd8810 	pop	{r4, fp, pc}
80023bcc:	800abb0c 	.word	0x800abb0c

80023bd0 <writei>:
80023bd0:	e92d4810 	push	{r4, fp, lr}
80023bd4:	e28db008 	add	fp, sp, #8
80023bd8:	e24dd024 	sub	sp, sp, #36	@ 0x24
80023bdc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023be0:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023be4:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023be8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80023bec:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023bf0:	e1d331f0 	ldrsh	r3, [r3, #16]
80023bf4:	e3530003 	cmp	r3, #3
80023bf8:	1a00001d 	bne	80023c74 <writei+0xa4>
80023bfc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c00:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c04:	e3530000 	cmp	r3, #0
80023c08:	ba00000b 	blt	80023c3c <writei+0x6c>
80023c0c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c10:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c14:	e3530009 	cmp	r3, #9
80023c18:	ca000007 	bgt	80023c3c <writei+0x6c>
80023c1c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c20:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c24:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023de8 <writei+0x218>
80023c28:	e1a03183 	lsl	r3, r3, #3
80023c2c:	e0823003 	add	r3, r2, r3
80023c30:	e5933004 	ldr	r3, [r3, #4]
80023c34:	e3530000 	cmp	r3, #0
80023c38:	1a000001 	bne	80023c44 <writei+0x74>
80023c3c:	e3e03000 	mvn	r3, #0
80023c40:	ea000065 	b	80023ddc <writei+0x20c>
80023c44:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c48:	e1d331f2 	ldrsh	r3, [r3, #18]
80023c4c:	e59f2194 	ldr	r2, [pc, #404]	@ 80023de8 <writei+0x218>
80023c50:	e1a03183 	lsl	r3, r3, #3
80023c54:	e0823003 	add	r3, r2, r3
80023c58:	e5933004 	ldr	r3, [r3, #4]
80023c5c:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023c60:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023c64:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c68:	e12fff33 	blx	r3
80023c6c:	e1a03000 	mov	r3, r0
80023c70:	ea000059 	b	80023ddc <writei+0x20c>
80023c74:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c78:	e5933018 	ldr	r3, [r3, #24]
80023c7c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c80:	e1520003 	cmp	r2, r3
80023c84:	8a000005 	bhi	80023ca0 <writei+0xd0>
80023c88:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c8c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023c90:	e0823003 	add	r3, r2, r3
80023c94:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023c98:	e1520003 	cmp	r2, r3
80023c9c:	9a000001 	bls	80023ca8 <writei+0xd8>
80023ca0:	e3e03000 	mvn	r3, #0
80023ca4:	ea00004c 	b	80023ddc <writei+0x20c>
80023ca8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023cac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023cb0:	e0823003 	add	r3, r2, r3
80023cb4:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023cb8:	9a000001 	bls	80023cc4 <writei+0xf4>
80023cbc:	e3e03000 	mvn	r3, #0
80023cc0:	ea000045 	b	80023ddc <writei+0x20c>
80023cc4:	e3a03000 	mov	r3, #0
80023cc8:	e50b3010 	str	r3, [fp, #-16]
80023ccc:	ea000030 	b	80023d94 <writei+0x1c4>
80023cd0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cd4:	e5934000 	ldr	r4, [r3]
80023cd8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023cdc:	e1a034a3 	lsr	r3, r3, #9
80023ce0:	e1a01003 	mov	r1, r3
80023ce4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ce8:	ebfffe5d 	bl	80023664 <bmap>
80023cec:	e1a03000 	mov	r3, r0
80023cf0:	e1a01003 	mov	r1, r3
80023cf4:	e1a00004 	mov	r0, r4
80023cf8:	ebfff385 	bl	80020b14 <bread>
80023cfc:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023d00:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d04:	e1a03b83 	lsl	r3, r3, #23
80023d08:	e1a03ba3 	lsr	r3, r3, #23
80023d0c:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023d10:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023d14:	e51b3010 	ldr	r3, [fp, #-16]
80023d18:	e0413003 	sub	r3, r1, r3
80023d1c:	e1520003 	cmp	r2, r3
80023d20:	31a03002 	movcc	r3, r2
80023d24:	21a03003 	movcs	r3, r3
80023d28:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023d2c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023d30:	e2832018 	add	r2, r3, #24
80023d34:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023d38:	e1a03b83 	lsl	r3, r3, #23
80023d3c:	e1a03ba3 	lsr	r3, r3, #23
80023d40:	e0823003 	add	r3, r2, r3
80023d44:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023d48:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023d4c:	e1a00003 	mov	r0, r3
80023d50:	ebfff11c 	bl	800201c8 <memmove>
80023d54:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023d58:	eb00024d 	bl	80024694 <log_write>
80023d5c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023d60:	ebfff395 	bl	80020bbc <brelse>
80023d64:	e51b2010 	ldr	r2, [fp, #-16]
80023d68:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d6c:	e0823003 	add	r3, r2, r3
80023d70:	e50b3010 	str	r3, [fp, #-16]
80023d74:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023d78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d7c:	e0823003 	add	r3, r2, r3
80023d80:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023d84:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023d88:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023d8c:	e0823003 	add	r3, r2, r3
80023d90:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023d94:	e51b2010 	ldr	r2, [fp, #-16]
80023d98:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023d9c:	e1520003 	cmp	r2, r3
80023da0:	3affffca 	bcc	80023cd0 <writei+0x100>
80023da4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023da8:	e3530000 	cmp	r3, #0
80023dac:	0a000009 	beq	80023dd8 <writei+0x208>
80023db0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023db4:	e5933018 	ldr	r3, [r3, #24]
80023db8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023dbc:	e1520003 	cmp	r2, r3
80023dc0:	9a000004 	bls	80023dd8 <writei+0x208>
80023dc4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023dc8:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023dcc:	e5832018 	str	r2, [r3, #24]
80023dd0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023dd4:	ebfffcbc 	bl	800230cc <iupdate>
80023dd8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ddc:	e1a00003 	mov	r0, r3
80023de0:	e24bd008 	sub	sp, fp, #8
80023de4:	e8bd8810 	pop	{r4, fp, pc}
80023de8:	800abb0c 	.word	0x800abb0c

80023dec <namecmp>:
80023dec:	e92d4800 	push	{fp, lr}
80023df0:	e28db004 	add	fp, sp, #4
80023df4:	e24dd008 	sub	sp, sp, #8
80023df8:	e50b0008 	str	r0, [fp, #-8]
80023dfc:	e50b100c 	str	r1, [fp, #-12]
80023e00:	e3a0200e 	mov	r2, #14
80023e04:	e51b100c 	ldr	r1, [fp, #-12]
80023e08:	e51b0008 	ldr	r0, [fp, #-8]
80023e0c:	ebfff13a 	bl	800202fc <strncmp>
80023e10:	e1a03000 	mov	r3, r0
80023e14:	e1a00003 	mov	r0, r3
80023e18:	e24bd004 	sub	sp, fp, #4
80023e1c:	e8bd8800 	pop	{fp, pc}

80023e20 <dirlookup>:
80023e20:	e92d4800 	push	{fp, lr}
80023e24:	e28db004 	add	fp, sp, #4
80023e28:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023e2c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023e30:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023e34:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023e38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023e3c:	e1d331f0 	ldrsh	r3, [r3, #16]
80023e40:	e3530001 	cmp	r3, #1
80023e44:	0a000001 	beq	80023e50 <dirlookup+0x30>
80023e48:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023f20 <dirlookup+0x100>
80023e4c:	ebfff716 	bl	80021aac <panic>
80023e50:	e3a03000 	mov	r3, #0
80023e54:	e50b3008 	str	r3, [fp, #-8]
80023e58:	ea000027 	b	80023efc <dirlookup+0xdc>
80023e5c:	e24b101c 	sub	r1, fp, #28
80023e60:	e3a03010 	mov	r3, #16
80023e64:	e51b2008 	ldr	r2, [fp, #-8]
80023e68:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023e6c:	ebfffedc 	bl	800239e4 <readi>
80023e70:	e1a03000 	mov	r3, r0
80023e74:	e3530010 	cmp	r3, #16
80023e78:	0a000001 	beq	80023e84 <dirlookup+0x64>
80023e7c:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023f24 <dirlookup+0x104>
80023e80:	ebfff709 	bl	80021aac <panic>
80023e84:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023e88:	e3530000 	cmp	r3, #0
80023e8c:	0a000016 	beq	80023eec <dirlookup+0xcc>
80023e90:	e24b301c 	sub	r3, fp, #28
80023e94:	e2833002 	add	r3, r3, #2
80023e98:	e1a01003 	mov	r1, r3
80023e9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023ea0:	ebffffd1 	bl	80023dec <namecmp>
80023ea4:	e1a03000 	mov	r3, r0
80023ea8:	e3530000 	cmp	r3, #0
80023eac:	1a00000f 	bne	80023ef0 <dirlookup+0xd0>
80023eb0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023eb4:	e3530000 	cmp	r3, #0
80023eb8:	0a000002 	beq	80023ec8 <dirlookup+0xa8>
80023ebc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ec0:	e51b2008 	ldr	r2, [fp, #-8]
80023ec4:	e5832000 	str	r2, [r3]
80023ec8:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023ecc:	e50b300c 	str	r3, [fp, #-12]
80023ed0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023ed4:	e5933000 	ldr	r3, [r3]
80023ed8:	e51b100c 	ldr	r1, [fp, #-12]
80023edc:	e1a00003 	mov	r0, r3
80023ee0:	ebfffcb1 	bl	800231ac <iget>
80023ee4:	e1a03000 	mov	r3, r0
80023ee8:	ea000009 	b	80023f14 <dirlookup+0xf4>
80023eec:	e1a00000 	nop			@ (mov r0, r0)
80023ef0:	e51b3008 	ldr	r3, [fp, #-8]
80023ef4:	e2833010 	add	r3, r3, #16
80023ef8:	e50b3008 	str	r3, [fp, #-8]
80023efc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023f00:	e5933018 	ldr	r3, [r3, #24]
80023f04:	e51b2008 	ldr	r2, [fp, #-8]
80023f08:	e1520003 	cmp	r2, r3
80023f0c:	3affffd2 	bcc	80023e5c <dirlookup+0x3c>
80023f10:	e3a03000 	mov	r3, #0
80023f14:	e1a00003 	mov	r0, r3
80023f18:	e24bd004 	sub	sp, fp, #4
80023f1c:	e8bd8800 	pop	{fp, pc}
80023f20:	800297c4 	.word	0x800297c4
80023f24:	800297d8 	.word	0x800297d8

80023f28 <dirlink>:
80023f28:	e92d4800 	push	{fp, lr}
80023f2c:	e28db004 	add	fp, sp, #4
80023f30:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023f34:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023f38:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023f3c:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023f40:	e3a02000 	mov	r2, #0
80023f44:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023f48:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f4c:	ebffffb3 	bl	80023e20 <dirlookup>
80023f50:	e50b000c 	str	r0, [fp, #-12]
80023f54:	e51b300c 	ldr	r3, [fp, #-12]
80023f58:	e3530000 	cmp	r3, #0
80023f5c:	0a000003 	beq	80023f70 <dirlink+0x48>
80023f60:	e51b000c 	ldr	r0, [fp, #-12]
80023f64:	ebfffd78 	bl	8002354c <iput>
80023f68:	e3e03000 	mvn	r3, #0
80023f6c:	ea00002d 	b	80024028 <dirlink+0x100>
80023f70:	e3a03000 	mov	r3, #0
80023f74:	e50b3008 	str	r3, [fp, #-8]
80023f78:	ea00000f 	b	80023fbc <dirlink+0x94>
80023f7c:	e51b2008 	ldr	r2, [fp, #-8]
80023f80:	e24b101c 	sub	r1, fp, #28
80023f84:	e3a03010 	mov	r3, #16
80023f88:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023f8c:	ebfffe94 	bl	800239e4 <readi>
80023f90:	e1a03000 	mov	r3, r0
80023f94:	e3530010 	cmp	r3, #16
80023f98:	0a000001 	beq	80023fa4 <dirlink+0x7c>
80023f9c:	e59f0090 	ldr	r0, [pc, #144]	@ 80024034 <dirlink+0x10c>
80023fa0:	ebfff6c1 	bl	80021aac <panic>
80023fa4:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023fa8:	e3530000 	cmp	r3, #0
80023fac:	0a000008 	beq	80023fd4 <dirlink+0xac>
80023fb0:	e51b3008 	ldr	r3, [fp, #-8]
80023fb4:	e2833010 	add	r3, r3, #16
80023fb8:	e50b3008 	str	r3, [fp, #-8]
80023fbc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023fc0:	e5932018 	ldr	r2, [r3, #24]
80023fc4:	e51b3008 	ldr	r3, [fp, #-8]
80023fc8:	e1520003 	cmp	r2, r3
80023fcc:	8affffea 	bhi	80023f7c <dirlink+0x54>
80023fd0:	ea000000 	b	80023fd8 <dirlink+0xb0>
80023fd4:	e1a00000 	nop			@ (mov r0, r0)
80023fd8:	e24b301c 	sub	r3, fp, #28
80023fdc:	e2833002 	add	r3, r3, #2
80023fe0:	e3a0200e 	mov	r2, #14
80023fe4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023fe8:	e1a00003 	mov	r0, r3
80023fec:	ebfff0ee 	bl	800203ac <strncpy>
80023ff0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023ff4:	e6ff3073 	uxth	r3, r3
80023ff8:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023ffc:	e51b2008 	ldr	r2, [fp, #-8]
80024000:	e24b101c 	sub	r1, fp, #28
80024004:	e3a03010 	mov	r3, #16
80024008:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002400c:	ebfffeef 	bl	80023bd0 <writei>
80024010:	e1a03000 	mov	r3, r0
80024014:	e3530010 	cmp	r3, #16
80024018:	0a000001 	beq	80024024 <dirlink+0xfc>
8002401c:	e59f0014 	ldr	r0, [pc, #20]	@ 80024038 <dirlink+0x110>
80024020:	ebfff6a1 	bl	80021aac <panic>
80024024:	e3a03000 	mov	r3, #0
80024028:	e1a00003 	mov	r0, r3
8002402c:	e24bd004 	sub	sp, fp, #4
80024030:	e8bd8800 	pop	{fp, pc}
80024034:	800297d8 	.word	0x800297d8
80024038:	800297e8 	.word	0x800297e8

8002403c <skipelem>:
8002403c:	e92d4800 	push	{fp, lr}
80024040:	e28db004 	add	fp, sp, #4
80024044:	e24dd010 	sub	sp, sp, #16
80024048:	e50b0010 	str	r0, [fp, #-16]
8002404c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024050:	ea000002 	b	80024060 <skipelem+0x24>
80024054:	e51b3010 	ldr	r3, [fp, #-16]
80024058:	e2833001 	add	r3, r3, #1
8002405c:	e50b3010 	str	r3, [fp, #-16]
80024060:	e51b3010 	ldr	r3, [fp, #-16]
80024064:	e5d33000 	ldrb	r3, [r3]
80024068:	e353002f 	cmp	r3, #47	@ 0x2f
8002406c:	0afffff8 	beq	80024054 <skipelem+0x18>
80024070:	e51b3010 	ldr	r3, [fp, #-16]
80024074:	e5d33000 	ldrb	r3, [r3]
80024078:	e3530000 	cmp	r3, #0
8002407c:	1a000001 	bne	80024088 <skipelem+0x4c>
80024080:	e3a03000 	mov	r3, #0
80024084:	ea00002c 	b	8002413c <skipelem+0x100>
80024088:	e51b3010 	ldr	r3, [fp, #-16]
8002408c:	e50b3008 	str	r3, [fp, #-8]
80024090:	ea000002 	b	800240a0 <skipelem+0x64>
80024094:	e51b3010 	ldr	r3, [fp, #-16]
80024098:	e2833001 	add	r3, r3, #1
8002409c:	e50b3010 	str	r3, [fp, #-16]
800240a0:	e51b3010 	ldr	r3, [fp, #-16]
800240a4:	e5d33000 	ldrb	r3, [r3]
800240a8:	e353002f 	cmp	r3, #47	@ 0x2f
800240ac:	0a000003 	beq	800240c0 <skipelem+0x84>
800240b0:	e51b3010 	ldr	r3, [fp, #-16]
800240b4:	e5d33000 	ldrb	r3, [r3]
800240b8:	e3530000 	cmp	r3, #0
800240bc:	1afffff4 	bne	80024094 <skipelem+0x58>
800240c0:	e51b2010 	ldr	r2, [fp, #-16]
800240c4:	e51b3008 	ldr	r3, [fp, #-8]
800240c8:	e0423003 	sub	r3, r2, r3
800240cc:	e50b300c 	str	r3, [fp, #-12]
800240d0:	e51b300c 	ldr	r3, [fp, #-12]
800240d4:	e353000d 	cmp	r3, #13
800240d8:	da000004 	ble	800240f0 <skipelem+0xb4>
800240dc:	e3a0200e 	mov	r2, #14
800240e0:	e51b1008 	ldr	r1, [fp, #-8]
800240e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800240e8:	ebfff036 	bl	800201c8 <memmove>
800240ec:	ea00000d 	b	80024128 <skipelem+0xec>
800240f0:	e51b300c 	ldr	r3, [fp, #-12]
800240f4:	e1a02003 	mov	r2, r3
800240f8:	e51b1008 	ldr	r1, [fp, #-8]
800240fc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80024100:	ebfff030 	bl	800201c8 <memmove>
80024104:	e51b300c 	ldr	r3, [fp, #-12]
80024108:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002410c:	e0823003 	add	r3, r2, r3
80024110:	e3a02000 	mov	r2, #0
80024114:	e5c32000 	strb	r2, [r3]
80024118:	ea000002 	b	80024128 <skipelem+0xec>
8002411c:	e51b3010 	ldr	r3, [fp, #-16]
80024120:	e2833001 	add	r3, r3, #1
80024124:	e50b3010 	str	r3, [fp, #-16]
80024128:	e51b3010 	ldr	r3, [fp, #-16]
8002412c:	e5d33000 	ldrb	r3, [r3]
80024130:	e353002f 	cmp	r3, #47	@ 0x2f
80024134:	0afffff8 	beq	8002411c <skipelem+0xe0>
80024138:	e51b3010 	ldr	r3, [fp, #-16]
8002413c:	e1a00003 	mov	r0, r3
80024140:	e24bd004 	sub	sp, fp, #4
80024144:	e8bd8800 	pop	{fp, pc}

80024148 <namex>:
80024148:	e92d4800 	push	{fp, lr}
8002414c:	e28db004 	add	fp, sp, #4
80024150:	e24dd018 	sub	sp, sp, #24
80024154:	e50b0010 	str	r0, [fp, #-16]
80024158:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002415c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024160:	e51b3010 	ldr	r3, [fp, #-16]
80024164:	e5d33000 	ldrb	r3, [r3]
80024168:	e353002f 	cmp	r3, #47	@ 0x2f
8002416c:	1a000004 	bne	80024184 <namex+0x3c>
80024170:	e3a01001 	mov	r1, #1
80024174:	e3a00001 	mov	r0, #1
80024178:	ebfffc0b 	bl	800231ac <iget>
8002417c:	e50b0008 	str	r0, [fp, #-8]
80024180:	ea00002b 	b	80024234 <namex+0xec>
80024184:	e59f30f0 	ldr	r3, [pc, #240]	@ 8002427c <namex+0x134>
80024188:	e5933000 	ldr	r3, [r3]
8002418c:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
80024190:	e1a00003 	mov	r0, r3
80024194:	ebfffc54 	bl	800232ec <idup>
80024198:	e50b0008 	str	r0, [fp, #-8]
8002419c:	ea000024 	b	80024234 <namex+0xec>
800241a0:	e51b0008 	ldr	r0, [fp, #-8]
800241a4:	ebfffc62 	bl	80023334 <ilock>
800241a8:	e51b3008 	ldr	r3, [fp, #-8]
800241ac:	e1d331f0 	ldrsh	r3, [r3, #16]
800241b0:	e3530001 	cmp	r3, #1
800241b4:	0a000003 	beq	800241c8 <namex+0x80>
800241b8:	e51b0008 	ldr	r0, [fp, #-8]
800241bc:	ebfffd1d 	bl	80023638 <iunlockput>
800241c0:	e3a03000 	mov	r3, #0
800241c4:	ea000029 	b	80024270 <namex+0x128>
800241c8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800241cc:	e3530000 	cmp	r3, #0
800241d0:	0a000007 	beq	800241f4 <namex+0xac>
800241d4:	e51b3010 	ldr	r3, [fp, #-16]
800241d8:	e5d33000 	ldrb	r3, [r3]
800241dc:	e3530000 	cmp	r3, #0
800241e0:	1a000003 	bne	800241f4 <namex+0xac>
800241e4:	e51b0008 	ldr	r0, [fp, #-8]
800241e8:	ebfffcb5 	bl	800234c4 <iunlock>
800241ec:	e51b3008 	ldr	r3, [fp, #-8]
800241f0:	ea00001e 	b	80024270 <namex+0x128>
800241f4:	e3a02000 	mov	r2, #0
800241f8:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800241fc:	e51b0008 	ldr	r0, [fp, #-8]
80024200:	ebffff06 	bl	80023e20 <dirlookup>
80024204:	e50b000c 	str	r0, [fp, #-12]
80024208:	e51b300c 	ldr	r3, [fp, #-12]
8002420c:	e3530000 	cmp	r3, #0
80024210:	1a000003 	bne	80024224 <namex+0xdc>
80024214:	e51b0008 	ldr	r0, [fp, #-8]
80024218:	ebfffd06 	bl	80023638 <iunlockput>
8002421c:	e3a03000 	mov	r3, #0
80024220:	ea000012 	b	80024270 <namex+0x128>
80024224:	e51b0008 	ldr	r0, [fp, #-8]
80024228:	ebfffd02 	bl	80023638 <iunlockput>
8002422c:	e51b300c 	ldr	r3, [fp, #-12]
80024230:	e50b3008 	str	r3, [fp, #-8]
80024234:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024238:	e51b0010 	ldr	r0, [fp, #-16]
8002423c:	ebffff7e 	bl	8002403c <skipelem>
80024240:	e50b0010 	str	r0, [fp, #-16]
80024244:	e51b3010 	ldr	r3, [fp, #-16]
80024248:	e3530000 	cmp	r3, #0
8002424c:	1affffd3 	bne	800241a0 <namex+0x58>
80024250:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024254:	e3530000 	cmp	r3, #0
80024258:	0a000003 	beq	8002426c <namex+0x124>
8002425c:	e51b0008 	ldr	r0, [fp, #-8]
80024260:	ebfffcb9 	bl	8002354c <iput>
80024264:	e3a03000 	mov	r3, #0
80024268:	ea000000 	b	80024270 <namex+0x128>
8002426c:	e51b3008 	ldr	r3, [fp, #-8]
80024270:	e1a00003 	mov	r0, r3
80024274:	e24bd004 	sub	sp, fp, #4
80024278:	e8bd8800 	pop	{fp, pc}
8002427c:	800af658 	.word	0x800af658

80024280 <namei>:
80024280:	e92d4800 	push	{fp, lr}
80024284:	e28db004 	add	fp, sp, #4
80024288:	e24dd018 	sub	sp, sp, #24
8002428c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80024290:	e24b3014 	sub	r3, fp, #20
80024294:	e1a02003 	mov	r2, r3
80024298:	e3a01000 	mov	r1, #0
8002429c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800242a0:	ebffffa8 	bl	80024148 <namex>
800242a4:	e1a03000 	mov	r3, r0
800242a8:	e1a00003 	mov	r0, r3
800242ac:	e24bd004 	sub	sp, fp, #4
800242b0:	e8bd8800 	pop	{fp, pc}

800242b4 <nameiparent>:
800242b4:	e92d4800 	push	{fp, lr}
800242b8:	e28db004 	add	fp, sp, #4
800242bc:	e24dd008 	sub	sp, sp, #8
800242c0:	e50b0008 	str	r0, [fp, #-8]
800242c4:	e50b100c 	str	r1, [fp, #-12]
800242c8:	e51b200c 	ldr	r2, [fp, #-12]
800242cc:	e3a01001 	mov	r1, #1
800242d0:	e51b0008 	ldr	r0, [fp, #-8]
800242d4:	ebffff9b 	bl	80024148 <namex>
800242d8:	e1a03000 	mov	r3, r0
800242dc:	e1a00003 	mov	r0, r3
800242e0:	e24bd004 	sub	sp, fp, #4
800242e4:	e8bd8800 	pop	{fp, pc}

800242e8 <initlog>:
800242e8:	e92d4800 	push	{fp, lr}
800242ec:	e28db004 	add	fp, sp, #4
800242f0:	e24dd010 	sub	sp, sp, #16
800242f4:	e59f1058 	ldr	r1, [pc, #88]	@ 80024354 <initlog+0x6c>
800242f8:	e59f0058 	ldr	r0, [pc, #88]	@ 80024358 <initlog+0x70>
800242fc:	eb0006fd 	bl	80025ef8 <initlock>
80024300:	e24b3014 	sub	r3, fp, #20
80024304:	e1a01003 	mov	r1, r3
80024308:	e3a00001 	mov	r0, #1
8002430c:	ebfffa3c 	bl	80022c04 <readsb>
80024310:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024314:	e51b3008 	ldr	r3, [fp, #-8]
80024318:	e0423003 	sub	r3, r2, r3
8002431c:	e1a02003 	mov	r2, r3
80024320:	e59f3030 	ldr	r3, [pc, #48]	@ 80024358 <initlog+0x70>
80024324:	e5832034 	str	r2, [r3, #52]	@ 0x34
80024328:	e51b3008 	ldr	r3, [fp, #-8]
8002432c:	e1a02003 	mov	r2, r3
80024330:	e59f3020 	ldr	r3, [pc, #32]	@ 80024358 <initlog+0x70>
80024334:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024338:	e59f3018 	ldr	r3, [pc, #24]	@ 80024358 <initlog+0x70>
8002433c:	e3a02001 	mov	r2, #1
80024340:	e5832040 	str	r2, [r3, #64]	@ 0x40
80024344:	eb00009b 	bl	800245b8 <recover_from_log>
80024348:	e1a00000 	nop			@ (mov r0, r0)
8002434c:	e24bd004 	sub	sp, fp, #4
80024350:	e8bd8800 	pop	{fp, pc}
80024354:	800297f0 	.word	0x800297f0
80024358:	800ad4c4 	.word	0x800ad4c4

8002435c <install_trans>:
8002435c:	e92d4800 	push	{fp, lr}
80024360:	e28db004 	add	fp, sp, #4
80024364:	e24dd010 	sub	sp, sp, #16
80024368:	e3a03000 	mov	r3, #0
8002436c:	e50b3008 	str	r3, [fp, #-8]
80024370:	ea000026 	b	80024410 <install_trans+0xb4>
80024374:	e59f30b8 	ldr	r3, [pc, #184]	@ 80024434 <install_trans+0xd8>
80024378:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002437c:	e1a00003 	mov	r0, r3
80024380:	e59f30ac 	ldr	r3, [pc, #172]	@ 80024434 <install_trans+0xd8>
80024384:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024388:	e51b3008 	ldr	r3, [fp, #-8]
8002438c:	e0823003 	add	r3, r2, r3
80024390:	e2833001 	add	r3, r3, #1
80024394:	e1a01003 	mov	r1, r3
80024398:	ebfff1dd 	bl	80020b14 <bread>
8002439c:	e50b000c 	str	r0, [fp, #-12]
800243a0:	e59f308c 	ldr	r3, [pc, #140]	@ 80024434 <install_trans+0xd8>
800243a4:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800243a8:	e1a00003 	mov	r0, r3
800243ac:	e59f2080 	ldr	r2, [pc, #128]	@ 80024434 <install_trans+0xd8>
800243b0:	e51b3008 	ldr	r3, [fp, #-8]
800243b4:	e2833010 	add	r3, r3, #16
800243b8:	e1a03103 	lsl	r3, r3, #2
800243bc:	e0823003 	add	r3, r2, r3
800243c0:	e5933008 	ldr	r3, [r3, #8]
800243c4:	e1a01003 	mov	r1, r3
800243c8:	ebfff1d1 	bl	80020b14 <bread>
800243cc:	e50b0010 	str	r0, [fp, #-16]
800243d0:	e51b3010 	ldr	r3, [fp, #-16]
800243d4:	e2830018 	add	r0, r3, #24
800243d8:	e51b300c 	ldr	r3, [fp, #-12]
800243dc:	e2833018 	add	r3, r3, #24
800243e0:	e3a02c02 	mov	r2, #512	@ 0x200
800243e4:	e1a01003 	mov	r1, r3
800243e8:	ebffef76 	bl	800201c8 <memmove>
800243ec:	e51b0010 	ldr	r0, [fp, #-16]
800243f0:	ebfff1db 	bl	80020b64 <bwrite>
800243f4:	e51b000c 	ldr	r0, [fp, #-12]
800243f8:	ebfff1ef 	bl	80020bbc <brelse>
800243fc:	e51b0010 	ldr	r0, [fp, #-16]
80024400:	ebfff1ed 	bl	80020bbc <brelse>
80024404:	e51b3008 	ldr	r3, [fp, #-8]
80024408:	e2833001 	add	r3, r3, #1
8002440c:	e50b3008 	str	r3, [fp, #-8]
80024410:	e59f301c 	ldr	r3, [pc, #28]	@ 80024434 <install_trans+0xd8>
80024414:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024418:	e51b2008 	ldr	r2, [fp, #-8]
8002441c:	e1520003 	cmp	r2, r3
80024420:	baffffd3 	blt	80024374 <install_trans+0x18>
80024424:	e1a00000 	nop			@ (mov r0, r0)
80024428:	e1a00000 	nop			@ (mov r0, r0)
8002442c:	e24bd004 	sub	sp, fp, #4
80024430:	e8bd8800 	pop	{fp, pc}
80024434:	800ad4c4 	.word	0x800ad4c4

80024438 <read_head>:
80024438:	e92d4800 	push	{fp, lr}
8002443c:	e28db004 	add	fp, sp, #4
80024440:	e24dd010 	sub	sp, sp, #16
80024444:	e59f30a4 	ldr	r3, [pc, #164]	@ 800244f0 <read_head+0xb8>
80024448:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
8002444c:	e1a02003 	mov	r2, r3
80024450:	e59f3098 	ldr	r3, [pc, #152]	@ 800244f0 <read_head+0xb8>
80024454:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024458:	e1a01003 	mov	r1, r3
8002445c:	e1a00002 	mov	r0, r2
80024460:	ebfff1ab 	bl	80020b14 <bread>
80024464:	e50b000c 	str	r0, [fp, #-12]
80024468:	e51b300c 	ldr	r3, [fp, #-12]
8002446c:	e2833018 	add	r3, r3, #24
80024470:	e50b3010 	str	r3, [fp, #-16]
80024474:	e51b3010 	ldr	r3, [fp, #-16]
80024478:	e5933000 	ldr	r3, [r3]
8002447c:	e59f206c 	ldr	r2, [pc, #108]	@ 800244f0 <read_head+0xb8>
80024480:	e5823044 	str	r3, [r2, #68]	@ 0x44
80024484:	e3a03000 	mov	r3, #0
80024488:	e50b3008 	str	r3, [fp, #-8]
8002448c:	ea00000d 	b	800244c8 <read_head+0x90>
80024490:	e51b2010 	ldr	r2, [fp, #-16]
80024494:	e51b3008 	ldr	r3, [fp, #-8]
80024498:	e1a03103 	lsl	r3, r3, #2
8002449c:	e0823003 	add	r3, r2, r3
800244a0:	e5932004 	ldr	r2, [r3, #4]
800244a4:	e59f1044 	ldr	r1, [pc, #68]	@ 800244f0 <read_head+0xb8>
800244a8:	e51b3008 	ldr	r3, [fp, #-8]
800244ac:	e2833010 	add	r3, r3, #16
800244b0:	e1a03103 	lsl	r3, r3, #2
800244b4:	e0813003 	add	r3, r1, r3
800244b8:	e5832008 	str	r2, [r3, #8]
800244bc:	e51b3008 	ldr	r3, [fp, #-8]
800244c0:	e2833001 	add	r3, r3, #1
800244c4:	e50b3008 	str	r3, [fp, #-8]
800244c8:	e59f3020 	ldr	r3, [pc, #32]	@ 800244f0 <read_head+0xb8>
800244cc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800244d0:	e51b2008 	ldr	r2, [fp, #-8]
800244d4:	e1520003 	cmp	r2, r3
800244d8:	baffffec 	blt	80024490 <read_head+0x58>
800244dc:	e51b000c 	ldr	r0, [fp, #-12]
800244e0:	ebfff1b5 	bl	80020bbc <brelse>
800244e4:	e1a00000 	nop			@ (mov r0, r0)
800244e8:	e24bd004 	sub	sp, fp, #4
800244ec:	e8bd8800 	pop	{fp, pc}
800244f0:	800ad4c4 	.word	0x800ad4c4

800244f4 <write_head>:
800244f4:	e92d4800 	push	{fp, lr}
800244f8:	e28db004 	add	fp, sp, #4
800244fc:	e24dd010 	sub	sp, sp, #16
80024500:	e59f30ac 	ldr	r3, [pc, #172]	@ 800245b4 <write_head+0xc0>
80024504:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024508:	e1a02003 	mov	r2, r3
8002450c:	e59f30a0 	ldr	r3, [pc, #160]	@ 800245b4 <write_head+0xc0>
80024510:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024514:	e1a01003 	mov	r1, r3
80024518:	e1a00002 	mov	r0, r2
8002451c:	ebfff17c 	bl	80020b14 <bread>
80024520:	e50b000c 	str	r0, [fp, #-12]
80024524:	e51b300c 	ldr	r3, [fp, #-12]
80024528:	e2833018 	add	r3, r3, #24
8002452c:	e50b3010 	str	r3, [fp, #-16]
80024530:	e59f307c 	ldr	r3, [pc, #124]	@ 800245b4 <write_head+0xc0>
80024534:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024538:	e51b3010 	ldr	r3, [fp, #-16]
8002453c:	e5832000 	str	r2, [r3]
80024540:	e3a03000 	mov	r3, #0
80024544:	e50b3008 	str	r3, [fp, #-8]
80024548:	ea00000d 	b	80024584 <write_head+0x90>
8002454c:	e59f2060 	ldr	r2, [pc, #96]	@ 800245b4 <write_head+0xc0>
80024550:	e51b3008 	ldr	r3, [fp, #-8]
80024554:	e2833010 	add	r3, r3, #16
80024558:	e1a03103 	lsl	r3, r3, #2
8002455c:	e0823003 	add	r3, r2, r3
80024560:	e5932008 	ldr	r2, [r3, #8]
80024564:	e51b1010 	ldr	r1, [fp, #-16]
80024568:	e51b3008 	ldr	r3, [fp, #-8]
8002456c:	e1a03103 	lsl	r3, r3, #2
80024570:	e0813003 	add	r3, r1, r3
80024574:	e5832004 	str	r2, [r3, #4]
80024578:	e51b3008 	ldr	r3, [fp, #-8]
8002457c:	e2833001 	add	r3, r3, #1
80024580:	e50b3008 	str	r3, [fp, #-8]
80024584:	e59f3028 	ldr	r3, [pc, #40]	@ 800245b4 <write_head+0xc0>
80024588:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002458c:	e51b2008 	ldr	r2, [fp, #-8]
80024590:	e1520003 	cmp	r2, r3
80024594:	baffffec 	blt	8002454c <write_head+0x58>
80024598:	e51b000c 	ldr	r0, [fp, #-12]
8002459c:	ebfff170 	bl	80020b64 <bwrite>
800245a0:	e51b000c 	ldr	r0, [fp, #-12]
800245a4:	ebfff184 	bl	80020bbc <brelse>
800245a8:	e1a00000 	nop			@ (mov r0, r0)
800245ac:	e24bd004 	sub	sp, fp, #4
800245b0:	e8bd8800 	pop	{fp, pc}
800245b4:	800ad4c4 	.word	0x800ad4c4

800245b8 <recover_from_log>:
800245b8:	e92d4800 	push	{fp, lr}
800245bc:	e28db004 	add	fp, sp, #4
800245c0:	ebffff9c 	bl	80024438 <read_head>
800245c4:	ebffff64 	bl	8002435c <install_trans>
800245c8:	e59f3010 	ldr	r3, [pc, #16]	@ 800245e0 <recover_from_log+0x28>
800245cc:	e3a02000 	mov	r2, #0
800245d0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800245d4:	ebffffc6 	bl	800244f4 <write_head>
800245d8:	e1a00000 	nop			@ (mov r0, r0)
800245dc:	e8bd8800 	pop	{fp, pc}
800245e0:	800ad4c4 	.word	0x800ad4c4

800245e4 <begin_trans>:
800245e4:	e92d4800 	push	{fp, lr}
800245e8:	e28db004 	add	fp, sp, #4
800245ec:	e59f003c 	ldr	r0, [pc, #60]	@ 80024630 <begin_trans+0x4c>
800245f0:	eb000652 	bl	80025f40 <acquire>
800245f4:	ea000002 	b	80024604 <begin_trans+0x20>
800245f8:	e59f1030 	ldr	r1, [pc, #48]	@ 80024630 <begin_trans+0x4c>
800245fc:	e59f002c 	ldr	r0, [pc, #44]	@ 80024630 <begin_trans+0x4c>
80024600:	eb000527 	bl	80025aa4 <sleep>
80024604:	e59f3024 	ldr	r3, [pc, #36]	@ 80024630 <begin_trans+0x4c>
80024608:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
8002460c:	e3530000 	cmp	r3, #0
80024610:	1afffff8 	bne	800245f8 <begin_trans+0x14>
80024614:	e59f3014 	ldr	r3, [pc, #20]	@ 80024630 <begin_trans+0x4c>
80024618:	e3a02001 	mov	r2, #1
8002461c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024620:	e59f0008 	ldr	r0, [pc, #8]	@ 80024630 <begin_trans+0x4c>
80024624:	eb000650 	bl	80025f6c <release>
80024628:	e1a00000 	nop			@ (mov r0, r0)
8002462c:	e8bd8800 	pop	{fp, pc}
80024630:	800ad4c4 	.word	0x800ad4c4

80024634 <commit_trans>:
80024634:	e92d4800 	push	{fp, lr}
80024638:	e28db004 	add	fp, sp, #4
8002463c:	e59f304c 	ldr	r3, [pc, #76]	@ 80024690 <commit_trans+0x5c>
80024640:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024644:	e3530000 	cmp	r3, #0
80024648:	da000005 	ble	80024664 <commit_trans+0x30>
8002464c:	ebffffa8 	bl	800244f4 <write_head>
80024650:	ebffff41 	bl	8002435c <install_trans>
80024654:	e59f3034 	ldr	r3, [pc, #52]	@ 80024690 <commit_trans+0x5c>
80024658:	e3a02000 	mov	r2, #0
8002465c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024660:	ebffffa3 	bl	800244f4 <write_head>
80024664:	e59f0024 	ldr	r0, [pc, #36]	@ 80024690 <commit_trans+0x5c>
80024668:	eb000634 	bl	80025f40 <acquire>
8002466c:	e59f301c 	ldr	r3, [pc, #28]	@ 80024690 <commit_trans+0x5c>
80024670:	e3a02000 	mov	r2, #0
80024674:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024678:	e59f0010 	ldr	r0, [pc, #16]	@ 80024690 <commit_trans+0x5c>
8002467c:	eb00055d 	bl	80025bf8 <wakeup>
80024680:	e59f0008 	ldr	r0, [pc, #8]	@ 80024690 <commit_trans+0x5c>
80024684:	eb000638 	bl	80025f6c <release>
80024688:	e1a00000 	nop			@ (mov r0, r0)
8002468c:	e8bd8800 	pop	{fp, pc}
80024690:	800ad4c4 	.word	0x800ad4c4

80024694 <log_write>:
80024694:	e92d4800 	push	{fp, lr}
80024698:	e28db004 	add	fp, sp, #4
8002469c:	e24dd010 	sub	sp, sp, #16
800246a0:	e50b0010 	str	r0, [fp, #-16]
800246a4:	e59f3164 	ldr	r3, [pc, #356]	@ 80024810 <log_write+0x17c>
800246a8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800246ac:	e3530009 	cmp	r3, #9
800246b0:	ca000006 	bgt	800246d0 <log_write+0x3c>
800246b4:	e59f3154 	ldr	r3, [pc, #340]	@ 80024810 <log_write+0x17c>
800246b8:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
800246bc:	e59f314c 	ldr	r3, [pc, #332]	@ 80024810 <log_write+0x17c>
800246c0:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
800246c4:	e2433001 	sub	r3, r3, #1
800246c8:	e1520003 	cmp	r2, r3
800246cc:	ba000001 	blt	800246d8 <log_write+0x44>
800246d0:	e59f013c 	ldr	r0, [pc, #316]	@ 80024814 <log_write+0x180>
800246d4:	ebfff4f4 	bl	80021aac <panic>
800246d8:	e59f3130 	ldr	r3, [pc, #304]	@ 80024810 <log_write+0x17c>
800246dc:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800246e0:	e3530000 	cmp	r3, #0
800246e4:	1a000001 	bne	800246f0 <log_write+0x5c>
800246e8:	e59f0128 	ldr	r0, [pc, #296]	@ 80024818 <log_write+0x184>
800246ec:	ebfff4ee 	bl	80021aac <panic>
800246f0:	e3a03000 	mov	r3, #0
800246f4:	e50b3008 	str	r3, [fp, #-8]
800246f8:	ea00000d 	b	80024734 <log_write+0xa0>
800246fc:	e59f210c 	ldr	r2, [pc, #268]	@ 80024810 <log_write+0x17c>
80024700:	e51b3008 	ldr	r3, [fp, #-8]
80024704:	e2833010 	add	r3, r3, #16
80024708:	e1a03103 	lsl	r3, r3, #2
8002470c:	e0823003 	add	r3, r2, r3
80024710:	e5933008 	ldr	r3, [r3, #8]
80024714:	e1a02003 	mov	r2, r3
80024718:	e51b3010 	ldr	r3, [fp, #-16]
8002471c:	e5933008 	ldr	r3, [r3, #8]
80024720:	e1520003 	cmp	r2, r3
80024724:	0a000008 	beq	8002474c <log_write+0xb8>
80024728:	e51b3008 	ldr	r3, [fp, #-8]
8002472c:	e2833001 	add	r3, r3, #1
80024730:	e50b3008 	str	r3, [fp, #-8]
80024734:	e59f30d4 	ldr	r3, [pc, #212]	@ 80024810 <log_write+0x17c>
80024738:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002473c:	e51b2008 	ldr	r2, [fp, #-8]
80024740:	e1520003 	cmp	r2, r3
80024744:	baffffec 	blt	800246fc <log_write+0x68>
80024748:	ea000000 	b	80024750 <log_write+0xbc>
8002474c:	e1a00000 	nop			@ (mov r0, r0)
80024750:	e51b3010 	ldr	r3, [fp, #-16]
80024754:	e5933008 	ldr	r3, [r3, #8]
80024758:	e1a01003 	mov	r1, r3
8002475c:	e59f20ac 	ldr	r2, [pc, #172]	@ 80024810 <log_write+0x17c>
80024760:	e51b3008 	ldr	r3, [fp, #-8]
80024764:	e2833010 	add	r3, r3, #16
80024768:	e1a03103 	lsl	r3, r3, #2
8002476c:	e0823003 	add	r3, r2, r3
80024770:	e5831008 	str	r1, [r3, #8]
80024774:	e51b3010 	ldr	r3, [fp, #-16]
80024778:	e5930004 	ldr	r0, [r3, #4]
8002477c:	e59f308c 	ldr	r3, [pc, #140]	@ 80024810 <log_write+0x17c>
80024780:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024784:	e51b3008 	ldr	r3, [fp, #-8]
80024788:	e0823003 	add	r3, r2, r3
8002478c:	e2833001 	add	r3, r3, #1
80024790:	e1a01003 	mov	r1, r3
80024794:	ebfff0de 	bl	80020b14 <bread>
80024798:	e50b000c 	str	r0, [fp, #-12]
8002479c:	e51b300c 	ldr	r3, [fp, #-12]
800247a0:	e2830018 	add	r0, r3, #24
800247a4:	e51b3010 	ldr	r3, [fp, #-16]
800247a8:	e2833018 	add	r3, r3, #24
800247ac:	e3a02c02 	mov	r2, #512	@ 0x200
800247b0:	e1a01003 	mov	r1, r3
800247b4:	ebffee83 	bl	800201c8 <memmove>
800247b8:	e51b000c 	ldr	r0, [fp, #-12]
800247bc:	ebfff0e8 	bl	80020b64 <bwrite>
800247c0:	e51b000c 	ldr	r0, [fp, #-12]
800247c4:	ebfff0fc 	bl	80020bbc <brelse>
800247c8:	e59f3040 	ldr	r3, [pc, #64]	@ 80024810 <log_write+0x17c>
800247cc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800247d0:	e51b2008 	ldr	r2, [fp, #-8]
800247d4:	e1520003 	cmp	r2, r3
800247d8:	1a000004 	bne	800247f0 <log_write+0x15c>
800247dc:	e59f302c 	ldr	r3, [pc, #44]	@ 80024810 <log_write+0x17c>
800247e0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800247e4:	e2833001 	add	r3, r3, #1
800247e8:	e59f2020 	ldr	r2, [pc, #32]	@ 80024810 <log_write+0x17c>
800247ec:	e5823044 	str	r3, [r2, #68]	@ 0x44
800247f0:	e51b3010 	ldr	r3, [fp, #-16]
800247f4:	e5933000 	ldr	r3, [r3]
800247f8:	e3832004 	orr	r2, r3, #4
800247fc:	e51b3010 	ldr	r3, [fp, #-16]
80024800:	e5832000 	str	r2, [r3]
80024804:	e1a00000 	nop			@ (mov r0, r0)
80024808:	e24bd004 	sub	sp, fp, #4
8002480c:	e8bd8800 	pop	{fp, pc}
80024810:	800ad4c4 	.word	0x800ad4c4
80024814:	800297f4 	.word	0x800297f4
80024818:	8002980c 	.word	0x8002980c

8002481c <kmain>:
8002481c:	e92d4800 	push	{fp, lr}
80024820:	e28db004 	add	fp, sp, #4
80024824:	e24dd008 	sub	sp, sp, #8
80024828:	e59f30a4 	ldr	r3, [pc, #164]	@ 800248d4 <kmain+0xb8>
8002482c:	e59f20a4 	ldr	r2, [pc, #164]	@ 800248d8 <kmain+0xbc>
80024830:	e5832000 	str	r2, [r3]
80024834:	e59f00a0 	ldr	r0, [pc, #160]	@ 800248dc <kmain+0xc0>
80024838:	eb001146 	bl	80028d58 <uart_init>
8002483c:	e59f309c 	ldr	r3, [pc, #156]	@ 800248e0 <kmain+0xc4>
80024840:	e50b3008 	str	r3, [fp, #-8]
80024844:	eb000d3e 	bl	80027d44 <init_vmm>
80024848:	e59f3094 	ldr	r3, [pc, #148]	@ 800248e4 <kmain+0xc8>
8002484c:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024850:	e2833003 	add	r3, r3, #3
80024854:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024858:	e3c33003 	bic	r3, r3, #3
8002485c:	e51b1008 	ldr	r1, [fp, #-8]
80024860:	e1a00003 	mov	r0, r3
80024864:	eb000d6a 	bl	80027e14 <kpt_freerange>
80024868:	e51b3008 	ldr	r3, [fp, #-8]
8002486c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024870:	e59f1070 	ldr	r1, [pc, #112]	@ 800248e8 <kmain+0xcc>
80024874:	e1a00003 	mov	r0, r3
80024878:	eb000d65 	bl	80027e14 <kpt_freerange>
8002487c:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024880:	e3a00601 	mov	r0, #1048576	@ 0x100000
80024884:	eb00102a 	bl	80028934 <paging_init>
80024888:	ebfff14a 	bl	80020db8 <kmem_init>
8002488c:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024890:	e59f0050 	ldr	r0, [pc, #80]	@ 800248e8 <kmain+0xcc>
80024894:	ebfff150 	bl	80020ddc <kmem_init2>
80024898:	eb000c2d 	bl	80027954 <trap_init>
8002489c:	e59f0048 	ldr	r0, [pc, #72]	@ 800248ec <kmain+0xd0>
800248a0:	eb001044 	bl	800289b8 <pic_init>
800248a4:	eb00115c 	bl	80028e1c <uart_enable_rx>
800248a8:	ebfff644 	bl	800221c0 <consoleinit>
800248ac:	eb0001b7 	bl	80024f90 <pinit>
800248b0:	ebfff006 	bl	800208d0 <binit>
800248b4:	ebfff78e 	bl	800226f4 <fileinit>
800248b8:	ebfff9ba 	bl	80022fa8 <iinit>
800248bc:	eb00000b 	bl	800248f0 <ideinit>
800248c0:	e3a0000a 	mov	r0, #10
800248c4:	eb0010ce 	bl	80028c04 <timer_init>
800248c8:	ebffef2a 	bl	80020578 <sti>
800248cc:	eb000224 	bl	80025164 <userinit>
800248d0:	eb0003e9 	bl	8002587c <scheduler>
800248d4:	800ad614 	.word	0x800ad614
800248d8:	800ad534 	.word	0x800ad534
800248dc:	901f1000 	.word	0x901f1000
800248e0:	800f0000 	.word	0x800f0000
800248e4:	800b0000 	.word	0x800b0000
800248e8:	80100000 	.word	0x80100000
800248ec:	90140000 	.word	0x90140000

800248f0 <ideinit>:
800248f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800248f4:	e28db000 	add	fp, sp, #0
800248f8:	e59f3028 	ldr	r3, [pc, #40]	@ 80024928 <ideinit+0x38>
800248fc:	e59f2028 	ldr	r2, [pc, #40]	@ 8002492c <ideinit+0x3c>
80024900:	e5832000 	str	r2, [r3]
80024904:	e59f3024 	ldr	r3, [pc, #36]	@ 80024930 <ideinit+0x40>
80024908:	e1a034a3 	lsr	r3, r3, #9
8002490c:	e1a02003 	mov	r2, r3
80024910:	e59f301c 	ldr	r3, [pc, #28]	@ 80024934 <ideinit+0x44>
80024914:	e5832000 	str	r2, [r3]
80024918:	e1a00000 	nop			@ (mov r0, r0)
8002491c:	e28bd000 	add	sp, fp, #0
80024920:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024924:	e12fff1e 	bx	lr
80024928:	800ad61c 	.word	0x800ad61c
8002492c:	8002a0dc 	.word	0x8002a0dc
80024930:	00080000 	.word	0x00080000
80024934:	800ad618 	.word	0x800ad618

80024938 <ideintr>:
80024938:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002493c:	e28db000 	add	fp, sp, #0
80024940:	e1a00000 	nop			@ (mov r0, r0)
80024944:	e28bd000 	add	sp, fp, #0
80024948:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002494c:	e12fff1e 	bx	lr

80024950 <iderw>:
80024950:	e92d4800 	push	{fp, lr}
80024954:	e28db004 	add	fp, sp, #4
80024958:	e24dd010 	sub	sp, sp, #16
8002495c:	e50b0010 	str	r0, [fp, #-16]
80024960:	e51b3010 	ldr	r3, [fp, #-16]
80024964:	e5933000 	ldr	r3, [r3]
80024968:	e2033001 	and	r3, r3, #1
8002496c:	e3530000 	cmp	r3, #0
80024970:	1a000001 	bne	8002497c <iderw+0x2c>
80024974:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024a68 <iderw+0x118>
80024978:	ebfff44b 	bl	80021aac <panic>
8002497c:	e51b3010 	ldr	r3, [fp, #-16]
80024980:	e5933000 	ldr	r3, [r3]
80024984:	e2033006 	and	r3, r3, #6
80024988:	e3530002 	cmp	r3, #2
8002498c:	1a000001 	bne	80024998 <iderw+0x48>
80024990:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024a6c <iderw+0x11c>
80024994:	ebfff444 	bl	80021aac <panic>
80024998:	e51b3010 	ldr	r3, [fp, #-16]
8002499c:	e5933004 	ldr	r3, [r3, #4]
800249a0:	e3530001 	cmp	r3, #1
800249a4:	0a000001 	beq	800249b0 <iderw+0x60>
800249a8:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024a70 <iderw+0x120>
800249ac:	ebfff43e 	bl	80021aac <panic>
800249b0:	e51b3010 	ldr	r3, [fp, #-16]
800249b4:	e5933008 	ldr	r3, [r3, #8]
800249b8:	e59f20b4 	ldr	r2, [pc, #180]	@ 80024a74 <iderw+0x124>
800249bc:	e5922000 	ldr	r2, [r2]
800249c0:	e1530002 	cmp	r3, r2
800249c4:	3a000001 	bcc	800249d0 <iderw+0x80>
800249c8:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024a78 <iderw+0x128>
800249cc:	ebfff436 	bl	80021aac <panic>
800249d0:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024a7c <iderw+0x12c>
800249d4:	e5932000 	ldr	r2, [r3]
800249d8:	e51b3010 	ldr	r3, [fp, #-16]
800249dc:	e5933008 	ldr	r3, [r3, #8]
800249e0:	e1a03483 	lsl	r3, r3, #9
800249e4:	e0823003 	add	r3, r2, r3
800249e8:	e50b3008 	str	r3, [fp, #-8]
800249ec:	e51b3010 	ldr	r3, [fp, #-16]
800249f0:	e5933000 	ldr	r3, [r3]
800249f4:	e2033004 	and	r3, r3, #4
800249f8:	e3530000 	cmp	r3, #0
800249fc:	0a00000b 	beq	80024a30 <iderw+0xe0>
80024a00:	e51b3010 	ldr	r3, [fp, #-16]
80024a04:	e5933000 	ldr	r3, [r3]
80024a08:	e3c32004 	bic	r2, r3, #4
80024a0c:	e51b3010 	ldr	r3, [fp, #-16]
80024a10:	e5832000 	str	r2, [r3]
80024a14:	e51b3010 	ldr	r3, [fp, #-16]
80024a18:	e2833018 	add	r3, r3, #24
80024a1c:	e3a02c02 	mov	r2, #512	@ 0x200
80024a20:	e1a01003 	mov	r1, r3
80024a24:	e51b0008 	ldr	r0, [fp, #-8]
80024a28:	ebffede6 	bl	800201c8 <memmove>
80024a2c:	ea000005 	b	80024a48 <iderw+0xf8>
80024a30:	e51b3010 	ldr	r3, [fp, #-16]
80024a34:	e2833018 	add	r3, r3, #24
80024a38:	e3a02c02 	mov	r2, #512	@ 0x200
80024a3c:	e51b1008 	ldr	r1, [fp, #-8]
80024a40:	e1a00003 	mov	r0, r3
80024a44:	ebffeddf 	bl	800201c8 <memmove>
80024a48:	e51b3010 	ldr	r3, [fp, #-16]
80024a4c:	e5933000 	ldr	r3, [r3]
80024a50:	e3832002 	orr	r2, r3, #2
80024a54:	e51b3010 	ldr	r3, [fp, #-16]
80024a58:	e5832000 	str	r2, [r3]
80024a5c:	e1a00000 	nop			@ (mov r0, r0)
80024a60:	e24bd004 	sub	sp, fp, #4
80024a64:	e8bd8800 	pop	{fp, pc}
80024a68:	80029824 	.word	0x80029824
80024a6c:	80029838 	.word	0x80029838
80024a70:	80029850 	.word	0x80029850
80024a74:	800ad618 	.word	0x800ad618
80024a78:	80029870 	.word	0x80029870
80024a7c:	800ad61c 	.word	0x800ad61c

80024a80 <pipealloc>:
80024a80:	e92d4800 	push	{fp, lr}
80024a84:	e28db004 	add	fp, sp, #4
80024a88:	e24dd010 	sub	sp, sp, #16
80024a8c:	e50b0010 	str	r0, [fp, #-16]
80024a90:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024a94:	e3a03000 	mov	r3, #0
80024a98:	e50b3008 	str	r3, [fp, #-8]
80024a9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aa0:	e3a02000 	mov	r2, #0
80024aa4:	e5832000 	str	r2, [r3]
80024aa8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aac:	e5932000 	ldr	r2, [r3]
80024ab0:	e51b3010 	ldr	r3, [fp, #-16]
80024ab4:	e5832000 	str	r2, [r3]
80024ab8:	ebfff716 	bl	80022718 <filealloc>
80024abc:	e1a02000 	mov	r2, r0
80024ac0:	e51b3010 	ldr	r3, [fp, #-16]
80024ac4:	e5832000 	str	r2, [r3]
80024ac8:	e51b3010 	ldr	r3, [fp, #-16]
80024acc:	e5933000 	ldr	r3, [r3]
80024ad0:	e3530000 	cmp	r3, #0
80024ad4:	0a000042 	beq	80024be4 <pipealloc+0x164>
80024ad8:	ebfff70e 	bl	80022718 <filealloc>
80024adc:	e1a02000 	mov	r2, r0
80024ae0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ae4:	e5832000 	str	r2, [r3]
80024ae8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024aec:	e5933000 	ldr	r3, [r3]
80024af0:	e3530000 	cmp	r3, #0
80024af4:	0a00003a 	beq	80024be4 <pipealloc+0x164>
80024af8:	e3a00f91 	mov	r0, #580	@ 0x244
80024afc:	ebfff2d2 	bl	8002164c <get_order>
80024b00:	e1a03000 	mov	r3, r0
80024b04:	e1a00003 	mov	r0, r3
80024b08:	ebfff245 	bl	80021424 <kmalloc>
80024b0c:	e50b0008 	str	r0, [fp, #-8]
80024b10:	e51b3008 	ldr	r3, [fp, #-8]
80024b14:	e3530000 	cmp	r3, #0
80024b18:	0a000033 	beq	80024bec <pipealloc+0x16c>
80024b1c:	e51b3008 	ldr	r3, [fp, #-8]
80024b20:	e3a02001 	mov	r2, #1
80024b24:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024b28:	e51b3008 	ldr	r3, [fp, #-8]
80024b2c:	e3a02001 	mov	r2, #1
80024b30:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024b34:	e51b3008 	ldr	r3, [fp, #-8]
80024b38:	e3a02000 	mov	r2, #0
80024b3c:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024b40:	e51b3008 	ldr	r3, [fp, #-8]
80024b44:	e3a02000 	mov	r2, #0
80024b48:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024b4c:	e51b3008 	ldr	r3, [fp, #-8]
80024b50:	e59f110c 	ldr	r1, [pc, #268]	@ 80024c64 <pipealloc+0x1e4>
80024b54:	e1a00003 	mov	r0, r3
80024b58:	eb0004e6 	bl	80025ef8 <initlock>
80024b5c:	e51b3010 	ldr	r3, [fp, #-16]
80024b60:	e5933000 	ldr	r3, [r3]
80024b64:	e3a02001 	mov	r2, #1
80024b68:	e5c32000 	strb	r2, [r3]
80024b6c:	e51b3010 	ldr	r3, [fp, #-16]
80024b70:	e5933000 	ldr	r3, [r3]
80024b74:	e3a02001 	mov	r2, #1
80024b78:	e5c32008 	strb	r2, [r3, #8]
80024b7c:	e51b3010 	ldr	r3, [fp, #-16]
80024b80:	e5933000 	ldr	r3, [r3]
80024b84:	e3a02000 	mov	r2, #0
80024b88:	e5c32009 	strb	r2, [r3, #9]
80024b8c:	e51b3010 	ldr	r3, [fp, #-16]
80024b90:	e5933000 	ldr	r3, [r3]
80024b94:	e51b2008 	ldr	r2, [fp, #-8]
80024b98:	e583200c 	str	r2, [r3, #12]
80024b9c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024ba0:	e5933000 	ldr	r3, [r3]
80024ba4:	e3a02001 	mov	r2, #1
80024ba8:	e5c32000 	strb	r2, [r3]
80024bac:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bb0:	e5933000 	ldr	r3, [r3]
80024bb4:	e3a02000 	mov	r2, #0
80024bb8:	e5c32008 	strb	r2, [r3, #8]
80024bbc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bc0:	e5933000 	ldr	r3, [r3]
80024bc4:	e3a02001 	mov	r2, #1
80024bc8:	e5c32009 	strb	r2, [r3, #9]
80024bcc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024bd0:	e5933000 	ldr	r3, [r3]
80024bd4:	e51b2008 	ldr	r2, [fp, #-8]
80024bd8:	e583200c 	str	r2, [r3, #12]
80024bdc:	e3a03000 	mov	r3, #0
80024be0:	ea00001c 	b	80024c58 <pipealloc+0x1d8>
80024be4:	e1a00000 	nop			@ (mov r0, r0)
80024be8:	ea000000 	b	80024bf0 <pipealloc+0x170>
80024bec:	e1a00000 	nop			@ (mov r0, r0)
80024bf0:	e51b3008 	ldr	r3, [fp, #-8]
80024bf4:	e3530000 	cmp	r3, #0
80024bf8:	0a000005 	beq	80024c14 <pipealloc+0x194>
80024bfc:	e3a00f91 	mov	r0, #580	@ 0x244
80024c00:	ebfff291 	bl	8002164c <get_order>
80024c04:	e1a03000 	mov	r3, r0
80024c08:	e1a01003 	mov	r1, r3
80024c0c:	e51b0008 	ldr	r0, [fp, #-8]
80024c10:	ebfff25a 	bl	80021580 <kfree>
80024c14:	e51b3010 	ldr	r3, [fp, #-16]
80024c18:	e5933000 	ldr	r3, [r3]
80024c1c:	e3530000 	cmp	r3, #0
80024c20:	0a000003 	beq	80024c34 <pipealloc+0x1b4>
80024c24:	e51b3010 	ldr	r3, [fp, #-16]
80024c28:	e5933000 	ldr	r3, [r3]
80024c2c:	e1a00003 	mov	r0, r3
80024c30:	ebfff6f4 	bl	80022808 <fileclose>
80024c34:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c38:	e5933000 	ldr	r3, [r3]
80024c3c:	e3530000 	cmp	r3, #0
80024c40:	0a000003 	beq	80024c54 <pipealloc+0x1d4>
80024c44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024c48:	e5933000 	ldr	r3, [r3]
80024c4c:	e1a00003 	mov	r0, r3
80024c50:	ebfff6ec 	bl	80022808 <fileclose>
80024c54:	e3e03000 	mvn	r3, #0
80024c58:	e1a00003 	mov	r0, r3
80024c5c:	e24bd004 	sub	sp, fp, #4
80024c60:	e8bd8800 	pop	{fp, pc}
80024c64:	8002988c 	.word	0x8002988c

80024c68 <pipeclose>:
80024c68:	e92d4800 	push	{fp, lr}
80024c6c:	e28db004 	add	fp, sp, #4
80024c70:	e24dd008 	sub	sp, sp, #8
80024c74:	e50b0008 	str	r0, [fp, #-8]
80024c78:	e50b100c 	str	r1, [fp, #-12]
80024c7c:	e51b3008 	ldr	r3, [fp, #-8]
80024c80:	e1a00003 	mov	r0, r3
80024c84:	eb0004ad 	bl	80025f40 <acquire>
80024c88:	e51b300c 	ldr	r3, [fp, #-12]
80024c8c:	e3530000 	cmp	r3, #0
80024c90:	0a000007 	beq	80024cb4 <pipeclose+0x4c>
80024c94:	e51b3008 	ldr	r3, [fp, #-8]
80024c98:	e3a02000 	mov	r2, #0
80024c9c:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024ca0:	e51b3008 	ldr	r3, [fp, #-8]
80024ca4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024ca8:	e1a00003 	mov	r0, r3
80024cac:	eb0003d1 	bl	80025bf8 <wakeup>
80024cb0:	ea000006 	b	80024cd0 <pipeclose+0x68>
80024cb4:	e51b3008 	ldr	r3, [fp, #-8]
80024cb8:	e3a02000 	mov	r2, #0
80024cbc:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024cc0:	e51b3008 	ldr	r3, [fp, #-8]
80024cc4:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024cc8:	e1a00003 	mov	r0, r3
80024ccc:	eb0003c9 	bl	80025bf8 <wakeup>
80024cd0:	e51b3008 	ldr	r3, [fp, #-8]
80024cd4:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024cd8:	e3530000 	cmp	r3, #0
80024cdc:	1a00000d 	bne	80024d18 <pipeclose+0xb0>
80024ce0:	e51b3008 	ldr	r3, [fp, #-8]
80024ce4:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024ce8:	e3530000 	cmp	r3, #0
80024cec:	1a000009 	bne	80024d18 <pipeclose+0xb0>
80024cf0:	e51b3008 	ldr	r3, [fp, #-8]
80024cf4:	e1a00003 	mov	r0, r3
80024cf8:	eb00049b 	bl	80025f6c <release>
80024cfc:	e3a00f91 	mov	r0, #580	@ 0x244
80024d00:	ebfff251 	bl	8002164c <get_order>
80024d04:	e1a03000 	mov	r3, r0
80024d08:	e1a01003 	mov	r1, r3
80024d0c:	e51b0008 	ldr	r0, [fp, #-8]
80024d10:	ebfff21a 	bl	80021580 <kfree>
80024d14:	ea000003 	b	80024d28 <pipeclose+0xc0>
80024d18:	e51b3008 	ldr	r3, [fp, #-8]
80024d1c:	e1a00003 	mov	r0, r3
80024d20:	eb000491 	bl	80025f6c <release>
80024d24:	e1a00000 	nop			@ (mov r0, r0)
80024d28:	e1a00000 	nop			@ (mov r0, r0)
80024d2c:	e24bd004 	sub	sp, fp, #4
80024d30:	e8bd8800 	pop	{fp, pc}

80024d34 <pipewrite>:
80024d34:	e92d4800 	push	{fp, lr}
80024d38:	e28db004 	add	fp, sp, #4
80024d3c:	e24dd018 	sub	sp, sp, #24
80024d40:	e50b0010 	str	r0, [fp, #-16]
80024d44:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024d48:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024d4c:	e51b3010 	ldr	r3, [fp, #-16]
80024d50:	e1a00003 	mov	r0, r3
80024d54:	eb000479 	bl	80025f40 <acquire>
80024d58:	e3a03000 	mov	r3, #0
80024d5c:	e50b3008 	str	r3, [fp, #-8]
80024d60:	ea00002b 	b	80024e14 <pipewrite+0xe0>
80024d64:	e51b3010 	ldr	r3, [fp, #-16]
80024d68:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024d6c:	e3530000 	cmp	r3, #0
80024d70:	1a000004 	bne	80024d88 <pipewrite+0x54>
80024d74:	e51b3010 	ldr	r3, [fp, #-16]
80024d78:	e1a00003 	mov	r0, r3
80024d7c:	eb00047a 	bl	80025f6c <release>
80024d80:	e3e03000 	mvn	r3, #0
80024d84:	ea00002e 	b	80024e44 <pipewrite+0x110>
80024d88:	e51b3010 	ldr	r3, [fp, #-16]
80024d8c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024d90:	e1a00003 	mov	r0, r3
80024d94:	eb000397 	bl	80025bf8 <wakeup>
80024d98:	e51b3010 	ldr	r3, [fp, #-16]
80024d9c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024da0:	e51b2010 	ldr	r2, [fp, #-16]
80024da4:	e1a01002 	mov	r1, r2
80024da8:	e1a00003 	mov	r0, r3
80024dac:	eb00033c 	bl	80025aa4 <sleep>
80024db0:	e51b3010 	ldr	r3, [fp, #-16]
80024db4:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024db8:	e51b3010 	ldr	r3, [fp, #-16]
80024dbc:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024dc0:	e2833c02 	add	r3, r3, #512	@ 0x200
80024dc4:	e1520003 	cmp	r2, r3
80024dc8:	0affffe5 	beq	80024d64 <pipewrite+0x30>
80024dcc:	e51b3008 	ldr	r3, [fp, #-8]
80024dd0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024dd4:	e0822003 	add	r2, r2, r3
80024dd8:	e51b3010 	ldr	r3, [fp, #-16]
80024ddc:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024de0:	e2830001 	add	r0, r3, #1
80024de4:	e51b1010 	ldr	r1, [fp, #-16]
80024de8:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024dec:	e1a03b83 	lsl	r3, r3, #23
80024df0:	e1a03ba3 	lsr	r3, r3, #23
80024df4:	e5d21000 	ldrb	r1, [r2]
80024df8:	e51b2010 	ldr	r2, [fp, #-16]
80024dfc:	e0823003 	add	r3, r2, r3
80024e00:	e1a02001 	mov	r2, r1
80024e04:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024e08:	e51b3008 	ldr	r3, [fp, #-8]
80024e0c:	e2833001 	add	r3, r3, #1
80024e10:	e50b3008 	str	r3, [fp, #-8]
80024e14:	e51b2008 	ldr	r2, [fp, #-8]
80024e18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024e1c:	e1520003 	cmp	r2, r3
80024e20:	baffffe2 	blt	80024db0 <pipewrite+0x7c>
80024e24:	e51b3010 	ldr	r3, [fp, #-16]
80024e28:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024e2c:	e1a00003 	mov	r0, r3
80024e30:	eb000370 	bl	80025bf8 <wakeup>
80024e34:	e51b3010 	ldr	r3, [fp, #-16]
80024e38:	e1a00003 	mov	r0, r3
80024e3c:	eb00044a 	bl	80025f6c <release>
80024e40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024e44:	e1a00003 	mov	r0, r3
80024e48:	e24bd004 	sub	sp, fp, #4
80024e4c:	e8bd8800 	pop	{fp, pc}

80024e50 <piperead>:
80024e50:	e92d4800 	push	{fp, lr}
80024e54:	e28db004 	add	fp, sp, #4
80024e58:	e24dd018 	sub	sp, sp, #24
80024e5c:	e50b0010 	str	r0, [fp, #-16]
80024e60:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024e64:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024e68:	e51b3010 	ldr	r3, [fp, #-16]
80024e6c:	e1a00003 	mov	r0, r3
80024e70:	eb000432 	bl	80025f40 <acquire>
80024e74:	ea00000f 	b	80024eb8 <piperead+0x68>
80024e78:	e59f310c 	ldr	r3, [pc, #268]	@ 80024f8c <piperead+0x13c>
80024e7c:	e5933000 	ldr	r3, [r3]
80024e80:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80024e84:	e3530000 	cmp	r3, #0
80024e88:	0a000004 	beq	80024ea0 <piperead+0x50>
80024e8c:	e51b3010 	ldr	r3, [fp, #-16]
80024e90:	e1a00003 	mov	r0, r3
80024e94:	eb000434 	bl	80025f6c <release>
80024e98:	e3e03000 	mvn	r3, #0
80024e9c:	ea000037 	b	80024f80 <piperead+0x130>
80024ea0:	e51b3010 	ldr	r3, [fp, #-16]
80024ea4:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024ea8:	e51b2010 	ldr	r2, [fp, #-16]
80024eac:	e1a01002 	mov	r1, r2
80024eb0:	e1a00003 	mov	r0, r3
80024eb4:	eb0002fa 	bl	80025aa4 <sleep>
80024eb8:	e51b3010 	ldr	r3, [fp, #-16]
80024ebc:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024ec0:	e51b3010 	ldr	r3, [fp, #-16]
80024ec4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024ec8:	e1520003 	cmp	r2, r3
80024ecc:	1a000003 	bne	80024ee0 <piperead+0x90>
80024ed0:	e51b3010 	ldr	r3, [fp, #-16]
80024ed4:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024ed8:	e3530000 	cmp	r3, #0
80024edc:	1affffe5 	bne	80024e78 <piperead+0x28>
80024ee0:	e3a03000 	mov	r3, #0
80024ee4:	e50b3008 	str	r3, [fp, #-8]
80024ee8:	ea000016 	b	80024f48 <piperead+0xf8>
80024eec:	e51b3010 	ldr	r3, [fp, #-16]
80024ef0:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024ef4:	e51b3010 	ldr	r3, [fp, #-16]
80024ef8:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024efc:	e1520003 	cmp	r2, r3
80024f00:	0a000015 	beq	80024f5c <piperead+0x10c>
80024f04:	e51b3010 	ldr	r3, [fp, #-16]
80024f08:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024f0c:	e2831001 	add	r1, r3, #1
80024f10:	e51b2010 	ldr	r2, [fp, #-16]
80024f14:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024f18:	e1a03b83 	lsl	r3, r3, #23
80024f1c:	e1a03ba3 	lsr	r3, r3, #23
80024f20:	e51b2008 	ldr	r2, [fp, #-8]
80024f24:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024f28:	e0812002 	add	r2, r1, r2
80024f2c:	e51b1010 	ldr	r1, [fp, #-16]
80024f30:	e0813003 	add	r3, r1, r3
80024f34:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024f38:	e5c23000 	strb	r3, [r2]
80024f3c:	e51b3008 	ldr	r3, [fp, #-8]
80024f40:	e2833001 	add	r3, r3, #1
80024f44:	e50b3008 	str	r3, [fp, #-8]
80024f48:	e51b2008 	ldr	r2, [fp, #-8]
80024f4c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024f50:	e1520003 	cmp	r2, r3
80024f54:	baffffe4 	blt	80024eec <piperead+0x9c>
80024f58:	ea000000 	b	80024f60 <piperead+0x110>
80024f5c:	e1a00000 	nop			@ (mov r0, r0)
80024f60:	e51b3010 	ldr	r3, [fp, #-16]
80024f64:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024f68:	e1a00003 	mov	r0, r3
80024f6c:	eb000321 	bl	80025bf8 <wakeup>
80024f70:	e51b3010 	ldr	r3, [fp, #-16]
80024f74:	e1a00003 	mov	r0, r3
80024f78:	eb0003fb 	bl	80025f6c <release>
80024f7c:	e51b3008 	ldr	r3, [fp, #-8]
80024f80:	e1a00003 	mov	r0, r3
80024f84:	e24bd004 	sub	sp, fp, #4
80024f88:	e8bd8800 	pop	{fp, pc}
80024f8c:	800af658 	.word	0x800af658

80024f90 <pinit>:
80024f90:	e92d4800 	push	{fp, lr}
80024f94:	e28db004 	add	fp, sp, #4
80024f98:	e59f100c 	ldr	r1, [pc, #12]	@ 80024fac <pinit+0x1c>
80024f9c:	e59f000c 	ldr	r0, [pc, #12]	@ 80024fb0 <pinit+0x20>
80024fa0:	eb0003d4 	bl	80025ef8 <initlock>
80024fa4:	e1a00000 	nop			@ (mov r0, r0)
80024fa8:	e8bd8800 	pop	{fp, pc}
80024fac:	80029894 	.word	0x80029894
80024fb0:	800ad620 	.word	0x800ad620

80024fb4 <allocproc>:
80024fb4:	e92d4800 	push	{fp, lr}
80024fb8:	e28db004 	add	fp, sp, #4
80024fbc:	e24dd008 	sub	sp, sp, #8
80024fc0:	e59f0170 	ldr	r0, [pc, #368]	@ 80025138 <allocproc+0x184>
80024fc4:	eb0003dd 	bl	80025f40 <acquire>
80024fc8:	e59f316c 	ldr	r3, [pc, #364]	@ 8002513c <allocproc+0x188>
80024fcc:	e50b3008 	str	r3, [fp, #-8]
80024fd0:	ea000006 	b	80024ff0 <allocproc+0x3c>
80024fd4:	e51b3008 	ldr	r3, [fp, #-8]
80024fd8:	e5d33010 	ldrb	r3, [r3, #16]
80024fdc:	e3530000 	cmp	r3, #0
80024fe0:	0a00000a 	beq	80025010 <allocproc+0x5c>
80024fe4:	e51b3008 	ldr	r3, [fp, #-8]
80024fe8:	e2833080 	add	r3, r3, #128	@ 0x80
80024fec:	e50b3008 	str	r3, [fp, #-8]
80024ff0:	e51b3008 	ldr	r3, [fp, #-8]
80024ff4:	e59f2144 	ldr	r2, [pc, #324]	@ 80025140 <allocproc+0x18c>
80024ff8:	e1530002 	cmp	r3, r2
80024ffc:	3afffff4 	bcc	80024fd4 <allocproc+0x20>
80025000:	e59f0130 	ldr	r0, [pc, #304]	@ 80025138 <allocproc+0x184>
80025004:	eb0003d8 	bl	80025f6c <release>
80025008:	e3a03000 	mov	r3, #0
8002500c:	ea000046 	b	8002512c <allocproc+0x178>
80025010:	e1a00000 	nop			@ (mov r0, r0)
80025014:	e51b3008 	ldr	r3, [fp, #-8]
80025018:	e3a02000 	mov	r2, #0
8002501c:	e5832000 	str	r2, [r3]
80025020:	e51b3008 	ldr	r3, [fp, #-8]
80025024:	e3a02001 	mov	r2, #1
80025028:	e5c32010 	strb	r2, [r3, #16]
8002502c:	e59f3110 	ldr	r3, [pc, #272]	@ 80025144 <allocproc+0x190>
80025030:	e5933000 	ldr	r3, [r3]
80025034:	e2832001 	add	r2, r3, #1
80025038:	e59f1104 	ldr	r1, [pc, #260]	@ 80025144 <allocproc+0x190>
8002503c:	e5812000 	str	r2, [r1]
80025040:	e51b2008 	ldr	r2, [fp, #-8]
80025044:	e5823014 	str	r3, [r2, #20]
80025048:	e59f00e8 	ldr	r0, [pc, #232]	@ 80025138 <allocproc+0x184>
8002504c:	eb0003c6 	bl	80025f6c <release>
80025050:	ebfff176 	bl	80021630 <alloc_page>
80025054:	e1a02000 	mov	r2, r0
80025058:	e51b3008 	ldr	r3, [fp, #-8]
8002505c:	e583200c 	str	r2, [r3, #12]
80025060:	e51b3008 	ldr	r3, [fp, #-8]
80025064:	e593300c 	ldr	r3, [r3, #12]
80025068:	e3530000 	cmp	r3, #0
8002506c:	1a000004 	bne	80025084 <allocproc+0xd0>
80025070:	e51b3008 	ldr	r3, [fp, #-8]
80025074:	e3a02000 	mov	r2, #0
80025078:	e5c32010 	strb	r2, [r3, #16]
8002507c:	e3a03000 	mov	r3, #0
80025080:	ea000029 	b	8002512c <allocproc+0x178>
80025084:	e51b3008 	ldr	r3, [fp, #-8]
80025088:	e593300c 	ldr	r3, [r3, #12]
8002508c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80025090:	e50b300c 	str	r3, [fp, #-12]
80025094:	e51b300c 	ldr	r3, [fp, #-12]
80025098:	e2433048 	sub	r3, r3, #72	@ 0x48
8002509c:	e50b300c 	str	r3, [fp, #-12]
800250a0:	e51b3008 	ldr	r3, [fp, #-8]
800250a4:	e51b200c 	ldr	r2, [fp, #-12]
800250a8:	e583201c 	str	r2, [r3, #28]
800250ac:	e51b300c 	ldr	r3, [fp, #-12]
800250b0:	e2433004 	sub	r3, r3, #4
800250b4:	e50b300c 	str	r3, [fp, #-12]
800250b8:	e59f2088 	ldr	r2, [pc, #136]	@ 80025148 <allocproc+0x194>
800250bc:	e51b300c 	ldr	r3, [fp, #-12]
800250c0:	e5832000 	str	r2, [r3]
800250c4:	e51b300c 	ldr	r3, [fp, #-12]
800250c8:	e2433004 	sub	r3, r3, #4
800250cc:	e50b300c 	str	r3, [fp, #-12]
800250d0:	e51b3008 	ldr	r3, [fp, #-8]
800250d4:	e593300c 	ldr	r3, [r3, #12]
800250d8:	e2832a01 	add	r2, r3, #4096	@ 0x1000
800250dc:	e51b300c 	ldr	r3, [fp, #-12]
800250e0:	e5832000 	str	r2, [r3]
800250e4:	e51b300c 	ldr	r3, [fp, #-12]
800250e8:	e2433028 	sub	r3, r3, #40	@ 0x28
800250ec:	e50b300c 	str	r3, [fp, #-12]
800250f0:	e51b3008 	ldr	r3, [fp, #-8]
800250f4:	e51b200c 	ldr	r2, [fp, #-12]
800250f8:	e5832020 	str	r2, [r3, #32]
800250fc:	e51b3008 	ldr	r3, [fp, #-8]
80025100:	e5933020 	ldr	r3, [r3, #32]
80025104:	e3a02028 	mov	r2, #40	@ 0x28
80025108:	e3a01000 	mov	r1, #0
8002510c:	e1a00003 	mov	r0, r3
80025110:	ebffebba 	bl	80020000 <memset>
80025114:	e59f2030 	ldr	r2, [pc, #48]	@ 8002514c <allocproc+0x198>
80025118:	e51b3008 	ldr	r3, [fp, #-8]
8002511c:	e5933020 	ldr	r3, [r3, #32]
80025120:	e2822004 	add	r2, r2, #4
80025124:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025128:	e51b3008 	ldr	r3, [fp, #-8]
8002512c:	e1a00003 	mov	r0, r3
80025130:	e24bd004 	sub	sp, fp, #4
80025134:	e8bd8800 	pop	{fp, pc}
80025138:	800ad620 	.word	0x800ad620
8002513c:	800ad654 	.word	0x800ad654
80025140:	800af654 	.word	0x800af654
80025144:	8002a014 	.word	0x8002a014
80025148:	80027604 	.word	0x80027604
8002514c:	80025a64 	.word	0x80025a64

80025150 <error_init>:
80025150:	e92d4800 	push	{fp, lr}
80025154:	e28db004 	add	fp, sp, #4
80025158:	e59f0000 	ldr	r0, [pc]	@ 80025160 <error_init+0x10>
8002515c:	ebfff252 	bl	80021aac <panic>
80025160:	8002989c 	.word	0x8002989c

80025164 <userinit>:
80025164:	e92d4810 	push	{r4, fp, lr}
80025168:	e28db008 	add	fp, sp, #8
8002516c:	e24dd00c 	sub	sp, sp, #12
80025170:	ebffff8f 	bl	80024fb4 <allocproc>
80025174:	e50b0010 	str	r0, [fp, #-16]
80025178:	e59f210c 	ldr	r2, [pc, #268]	@ 8002528c <userinit+0x128>
8002517c:	e51b3010 	ldr	r3, [fp, #-16]
80025180:	e5823000 	str	r3, [r2]
80025184:	e51b3010 	ldr	r3, [fp, #-16]
80025188:	e3a02000 	mov	r2, #0
8002518c:	e5832018 	str	r2, [r3, #24]
80025190:	eb000b33 	bl	80027e64 <kpt_alloc>
80025194:	e1a02000 	mov	r2, r0
80025198:	e51b3010 	ldr	r3, [fp, #-16]
8002519c:	e5832008 	str	r2, [r3, #8]
800251a0:	e51b3010 	ldr	r3, [fp, #-16]
800251a4:	e5933008 	ldr	r3, [r3, #8]
800251a8:	e3530000 	cmp	r3, #0
800251ac:	1a000001 	bne	800251b8 <userinit+0x54>
800251b0:	e59f00d8 	ldr	r0, [pc, #216]	@ 80025290 <userinit+0x12c>
800251b4:	ebfff23c 	bl	80021aac <panic>
800251b8:	e51b3010 	ldr	r3, [fp, #-16]
800251bc:	e5933008 	ldr	r3, [r3, #8]
800251c0:	e59f20cc 	ldr	r2, [pc, #204]	@ 80025294 <userinit+0x130>
800251c4:	e59f10cc 	ldr	r1, [pc, #204]	@ 80025298 <userinit+0x134>
800251c8:	e1a00003 	mov	r0, r3
800251cc:	eb000be2 	bl	8002815c <inituvm>
800251d0:	e51b3010 	ldr	r3, [fp, #-16]
800251d4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800251d8:	e5832004 	str	r2, [r3, #4]
800251dc:	e51b3010 	ldr	r3, [fp, #-16]
800251e0:	e593301c 	ldr	r3, [r3, #28]
800251e4:	e3a02048 	mov	r2, #72	@ 0x48
800251e8:	e3a01000 	mov	r1, #0
800251ec:	e1a00003 	mov	r0, r3
800251f0:	ebffeb82 	bl	80020000 <memset>
800251f4:	e51b3010 	ldr	r3, [fp, #-16]
800251f8:	e593301c 	ldr	r3, [r3, #28]
800251fc:	e59f2098 	ldr	r2, [pc, #152]	@ 8002529c <userinit+0x138>
80025200:	e5832008 	str	r2, [r3, #8]
80025204:	e51b3010 	ldr	r3, [fp, #-16]
80025208:	e593401c 	ldr	r4, [r3, #28]
8002520c:	ebffece7 	bl	800205b0 <spsr_usr>
80025210:	e1a03000 	mov	r3, r0
80025214:	e584300c 	str	r3, [r4, #12]
80025218:	e51b3010 	ldr	r3, [fp, #-16]
8002521c:	e593301c 	ldr	r3, [r3, #28]
80025220:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025224:	e5832000 	str	r2, [r3]
80025228:	e51b3010 	ldr	r3, [fp, #-16]
8002522c:	e593301c 	ldr	r3, [r3, #28]
80025230:	e3a02000 	mov	r2, #0
80025234:	e5832004 	str	r2, [r3, #4]
80025238:	e51b3010 	ldr	r3, [fp, #-16]
8002523c:	e593301c 	ldr	r3, [r3, #28]
80025240:	e3a02000 	mov	r2, #0
80025244:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025248:	e51b3010 	ldr	r3, [fp, #-16]
8002524c:	e2833070 	add	r3, r3, #112	@ 0x70
80025250:	e3a02010 	mov	r2, #16
80025254:	e59f1044 	ldr	r1, [pc, #68]	@ 800252a0 <userinit+0x13c>
80025258:	e1a00003 	mov	r0, r3
8002525c:	ebffec7b 	bl	80020450 <safestrcpy>
80025260:	e59f003c 	ldr	r0, [pc, #60]	@ 800252a4 <userinit+0x140>
80025264:	ebfffc05 	bl	80024280 <namei>
80025268:	e1a02000 	mov	r2, r0
8002526c:	e51b3010 	ldr	r3, [fp, #-16]
80025270:	e583206c 	str	r2, [r3, #108]	@ 0x6c
80025274:	e51b3010 	ldr	r3, [fp, #-16]
80025278:	e3a02003 	mov	r2, #3
8002527c:	e5c32010 	strb	r2, [r3, #16]
80025280:	e1a00000 	nop			@ (mov r0, r0)
80025284:	e24bd008 	sub	sp, fp, #8
80025288:	e8bd8810 	pop	{r4, fp, pc}
8002528c:	800af654 	.word	0x800af654
80025290:	800298bc 	.word	0x800298bc
80025294:	00000034 	.word	0x00000034
80025298:	8002a0a8 	.word	0x8002a0a8
8002529c:	80025150 	.word	0x80025150
800252a0:	800298d8 	.word	0x800298d8
800252a4:	800298e4 	.word	0x800298e4

800252a8 <growproc>:
800252a8:	e92d4800 	push	{fp, lr}
800252ac:	e28db004 	add	fp, sp, #4
800252b0:	e24dd010 	sub	sp, sp, #16
800252b4:	e50b0010 	str	r0, [fp, #-16]
800252b8:	e59f30d0 	ldr	r3, [pc, #208]	@ 80025390 <growproc+0xe8>
800252bc:	e5933000 	ldr	r3, [r3]
800252c0:	e5933004 	ldr	r3, [r3, #4]
800252c4:	e50b3008 	str	r3, [fp, #-8]
800252c8:	e51b3010 	ldr	r3, [fp, #-16]
800252cc:	e3530000 	cmp	r3, #0
800252d0:	da00000f 	ble	80025314 <growproc+0x6c>
800252d4:	e59f30b4 	ldr	r3, [pc, #180]	@ 80025390 <growproc+0xe8>
800252d8:	e5933000 	ldr	r3, [r3]
800252dc:	e5930008 	ldr	r0, [r3, #8]
800252e0:	e51b2010 	ldr	r2, [fp, #-16]
800252e4:	e51b3008 	ldr	r3, [fp, #-8]
800252e8:	e0823003 	add	r3, r2, r3
800252ec:	e1a02003 	mov	r2, r3
800252f0:	e51b1008 	ldr	r1, [fp, #-8]
800252f4:	eb000c06 	bl	80028314 <allocuvm>
800252f8:	e1a03000 	mov	r3, r0
800252fc:	e50b3008 	str	r3, [fp, #-8]
80025300:	e51b3008 	ldr	r3, [fp, #-8]
80025304:	e3530000 	cmp	r3, #0
80025308:	1a000014 	bne	80025360 <growproc+0xb8>
8002530c:	e3e03000 	mvn	r3, #0
80025310:	ea00001b 	b	80025384 <growproc+0xdc>
80025314:	e51b3010 	ldr	r3, [fp, #-16]
80025318:	e3530000 	cmp	r3, #0
8002531c:	aa00000f 	bge	80025360 <growproc+0xb8>
80025320:	e59f3068 	ldr	r3, [pc, #104]	@ 80025390 <growproc+0xe8>
80025324:	e5933000 	ldr	r3, [r3]
80025328:	e5930008 	ldr	r0, [r3, #8]
8002532c:	e51b2010 	ldr	r2, [fp, #-16]
80025330:	e51b3008 	ldr	r3, [fp, #-8]
80025334:	e0823003 	add	r3, r2, r3
80025338:	e1a02003 	mov	r2, r3
8002533c:	e51b1008 	ldr	r1, [fp, #-8]
80025340:	eb000c32 	bl	80028410 <deallocuvm>
80025344:	e1a03000 	mov	r3, r0
80025348:	e50b3008 	str	r3, [fp, #-8]
8002534c:	e51b3008 	ldr	r3, [fp, #-8]
80025350:	e3530000 	cmp	r3, #0
80025354:	1a000001 	bne	80025360 <growproc+0xb8>
80025358:	e3e03000 	mvn	r3, #0
8002535c:	ea000008 	b	80025384 <growproc+0xdc>
80025360:	e59f3028 	ldr	r3, [pc, #40]	@ 80025390 <growproc+0xe8>
80025364:	e5933000 	ldr	r3, [r3]
80025368:	e51b2008 	ldr	r2, [fp, #-8]
8002536c:	e5832004 	str	r2, [r3, #4]
80025370:	e59f3018 	ldr	r3, [pc, #24]	@ 80025390 <growproc+0xe8>
80025374:	e5933000 	ldr	r3, [r3]
80025378:	e1a00003 	mov	r0, r3
8002537c:	eb000b5f 	bl	80028100 <switchuvm>
80025380:	e3a03000 	mov	r3, #0
80025384:	e1a00003 	mov	r0, r3
80025388:	e24bd004 	sub	sp, fp, #4
8002538c:	e8bd8800 	pop	{fp, pc}
80025390:	800af658 	.word	0x800af658

80025394 <fork>:
80025394:	e92d4800 	push	{fp, lr}
80025398:	e28db004 	add	fp, sp, #4
8002539c:	e24dd010 	sub	sp, sp, #16
800253a0:	ebffff03 	bl	80024fb4 <allocproc>
800253a4:	e50b000c 	str	r0, [fp, #-12]
800253a8:	e51b300c 	ldr	r3, [fp, #-12]
800253ac:	e3530000 	cmp	r3, #0
800253b0:	1a000001 	bne	800253bc <fork+0x28>
800253b4:	e3e03000 	mvn	r3, #0
800253b8:	ea00006b 	b	8002556c <fork+0x1d8>
800253bc:	e59f31b4 	ldr	r3, [pc, #436]	@ 80025578 <fork+0x1e4>
800253c0:	e5933000 	ldr	r3, [r3]
800253c4:	e5932008 	ldr	r2, [r3, #8]
800253c8:	e59f31a8 	ldr	r3, [pc, #424]	@ 80025578 <fork+0x1e4>
800253cc:	e5933000 	ldr	r3, [r3]
800253d0:	e5933004 	ldr	r3, [r3, #4]
800253d4:	e1a01003 	mov	r1, r3
800253d8:	e1a00002 	mov	r0, r2
800253dc:	eb000c9a 	bl	8002864c <copyuvm>
800253e0:	e1a02000 	mov	r2, r0
800253e4:	e51b300c 	ldr	r3, [fp, #-12]
800253e8:	e5832008 	str	r2, [r3, #8]
800253ec:	e51b300c 	ldr	r3, [fp, #-12]
800253f0:	e5933008 	ldr	r3, [r3, #8]
800253f4:	e3530000 	cmp	r3, #0
800253f8:	1a00000b 	bne	8002542c <fork+0x98>
800253fc:	e51b300c 	ldr	r3, [fp, #-12]
80025400:	e593300c 	ldr	r3, [r3, #12]
80025404:	e1a00003 	mov	r0, r3
80025408:	ebfff07e 	bl	80021608 <free_page>
8002540c:	e51b300c 	ldr	r3, [fp, #-12]
80025410:	e3a02000 	mov	r2, #0
80025414:	e583200c 	str	r2, [r3, #12]
80025418:	e51b300c 	ldr	r3, [fp, #-12]
8002541c:	e3a02000 	mov	r2, #0
80025420:	e5c32010 	strb	r2, [r3, #16]
80025424:	e3e03000 	mvn	r3, #0
80025428:	ea00004f 	b	8002556c <fork+0x1d8>
8002542c:	e59f3144 	ldr	r3, [pc, #324]	@ 80025578 <fork+0x1e4>
80025430:	e5933000 	ldr	r3, [r3]
80025434:	e5932004 	ldr	r2, [r3, #4]
80025438:	e51b300c 	ldr	r3, [fp, #-12]
8002543c:	e5832004 	str	r2, [r3, #4]
80025440:	e59f3130 	ldr	r3, [pc, #304]	@ 80025578 <fork+0x1e4>
80025444:	e5932000 	ldr	r2, [r3]
80025448:	e51b300c 	ldr	r3, [fp, #-12]
8002544c:	e5832018 	str	r2, [r3, #24]
80025450:	e59f3120 	ldr	r3, [pc, #288]	@ 80025578 <fork+0x1e4>
80025454:	e5933000 	ldr	r3, [r3]
80025458:	e593201c 	ldr	r2, [r3, #28]
8002545c:	e51b300c 	ldr	r3, [fp, #-12]
80025460:	e593301c 	ldr	r3, [r3, #28]
80025464:	e1a00003 	mov	r0, r3
80025468:	e1a01002 	mov	r1, r2
8002546c:	e3a03048 	mov	r3, #72	@ 0x48
80025470:	e1a02003 	mov	r2, r3
80025474:	ebffeb92 	bl	800202c4 <memcpy>
80025478:	e51b300c 	ldr	r3, [fp, #-12]
8002547c:	e593301c 	ldr	r3, [r3, #28]
80025480:	e3a02000 	mov	r2, #0
80025484:	e5832010 	str	r2, [r3, #16]
80025488:	e3a03000 	mov	r3, #0
8002548c:	e50b3008 	str	r3, [fp, #-8]
80025490:	ea00001b 	b	80025504 <fork+0x170>
80025494:	e59f30dc 	ldr	r3, [pc, #220]	@ 80025578 <fork+0x1e4>
80025498:	e5932000 	ldr	r2, [r3]
8002549c:	e51b3008 	ldr	r3, [fp, #-8]
800254a0:	e283300a 	add	r3, r3, #10
800254a4:	e1a03103 	lsl	r3, r3, #2
800254a8:	e0823003 	add	r3, r2, r3
800254ac:	e5933004 	ldr	r3, [r3, #4]
800254b0:	e3530000 	cmp	r3, #0
800254b4:	0a00000f 	beq	800254f8 <fork+0x164>
800254b8:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025578 <fork+0x1e4>
800254bc:	e5932000 	ldr	r2, [r3]
800254c0:	e51b3008 	ldr	r3, [fp, #-8]
800254c4:	e283300a 	add	r3, r3, #10
800254c8:	e1a03103 	lsl	r3, r3, #2
800254cc:	e0823003 	add	r3, r2, r3
800254d0:	e5933004 	ldr	r3, [r3, #4]
800254d4:	e1a00003 	mov	r0, r3
800254d8:	ebfff4b1 	bl	800227a4 <filedup>
800254dc:	e1a01000 	mov	r1, r0
800254e0:	e51b200c 	ldr	r2, [fp, #-12]
800254e4:	e51b3008 	ldr	r3, [fp, #-8]
800254e8:	e283300a 	add	r3, r3, #10
800254ec:	e1a03103 	lsl	r3, r3, #2
800254f0:	e0823003 	add	r3, r2, r3
800254f4:	e5831004 	str	r1, [r3, #4]
800254f8:	e51b3008 	ldr	r3, [fp, #-8]
800254fc:	e2833001 	add	r3, r3, #1
80025500:	e50b3008 	str	r3, [fp, #-8]
80025504:	e51b3008 	ldr	r3, [fp, #-8]
80025508:	e353000f 	cmp	r3, #15
8002550c:	daffffe0 	ble	80025494 <fork+0x100>
80025510:	e59f3060 	ldr	r3, [pc, #96]	@ 80025578 <fork+0x1e4>
80025514:	e5933000 	ldr	r3, [r3]
80025518:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
8002551c:	e1a00003 	mov	r0, r3
80025520:	ebfff771 	bl	800232ec <idup>
80025524:	e1a02000 	mov	r2, r0
80025528:	e51b300c 	ldr	r3, [fp, #-12]
8002552c:	e583206c 	str	r2, [r3, #108]	@ 0x6c
80025530:	e51b300c 	ldr	r3, [fp, #-12]
80025534:	e5933014 	ldr	r3, [r3, #20]
80025538:	e50b3010 	str	r3, [fp, #-16]
8002553c:	e51b300c 	ldr	r3, [fp, #-12]
80025540:	e3a02003 	mov	r2, #3
80025544:	e5c32010 	strb	r2, [r3, #16]
80025548:	e51b300c 	ldr	r3, [fp, #-12]
8002554c:	e2830070 	add	r0, r3, #112	@ 0x70
80025550:	e59f3020 	ldr	r3, [pc, #32]	@ 80025578 <fork+0x1e4>
80025554:	e5933000 	ldr	r3, [r3]
80025558:	e2833070 	add	r3, r3, #112	@ 0x70
8002555c:	e3a02010 	mov	r2, #16
80025560:	e1a01003 	mov	r1, r3
80025564:	ebffebb9 	bl	80020450 <safestrcpy>
80025568:	e51b3010 	ldr	r3, [fp, #-16]
8002556c:	e1a00003 	mov	r0, r3
80025570:	e24bd004 	sub	sp, fp, #4
80025574:	e8bd8800 	pop	{fp, pc}
80025578:	800af658 	.word	0x800af658

8002557c <exit>:
8002557c:	e92d4800 	push	{fp, lr}
80025580:	e28db004 	add	fp, sp, #4
80025584:	e24dd008 	sub	sp, sp, #8
80025588:	e59f3170 	ldr	r3, [pc, #368]	@ 80025700 <exit+0x184>
8002558c:	e5932000 	ldr	r2, [r3]
80025590:	e59f316c 	ldr	r3, [pc, #364]	@ 80025704 <exit+0x188>
80025594:	e5933000 	ldr	r3, [r3]
80025598:	e1520003 	cmp	r2, r3
8002559c:	1a000001 	bne	800255a8 <exit+0x2c>
800255a0:	e59f0160 	ldr	r0, [pc, #352]	@ 80025708 <exit+0x18c>
800255a4:	ebfff140 	bl	80021aac <panic>
800255a8:	e3a03000 	mov	r3, #0
800255ac:	e50b300c 	str	r3, [fp, #-12]
800255b0:	ea00001c 	b	80025628 <exit+0xac>
800255b4:	e59f3144 	ldr	r3, [pc, #324]	@ 80025700 <exit+0x184>
800255b8:	e5932000 	ldr	r2, [r3]
800255bc:	e51b300c 	ldr	r3, [fp, #-12]
800255c0:	e283300a 	add	r3, r3, #10
800255c4:	e1a03103 	lsl	r3, r3, #2
800255c8:	e0823003 	add	r3, r2, r3
800255cc:	e5933004 	ldr	r3, [r3, #4]
800255d0:	e3530000 	cmp	r3, #0
800255d4:	0a000010 	beq	8002561c <exit+0xa0>
800255d8:	e59f3120 	ldr	r3, [pc, #288]	@ 80025700 <exit+0x184>
800255dc:	e5932000 	ldr	r2, [r3]
800255e0:	e51b300c 	ldr	r3, [fp, #-12]
800255e4:	e283300a 	add	r3, r3, #10
800255e8:	e1a03103 	lsl	r3, r3, #2
800255ec:	e0823003 	add	r3, r2, r3
800255f0:	e5933004 	ldr	r3, [r3, #4]
800255f4:	e1a00003 	mov	r0, r3
800255f8:	ebfff482 	bl	80022808 <fileclose>
800255fc:	e59f30fc 	ldr	r3, [pc, #252]	@ 80025700 <exit+0x184>
80025600:	e5932000 	ldr	r2, [r3]
80025604:	e51b300c 	ldr	r3, [fp, #-12]
80025608:	e283300a 	add	r3, r3, #10
8002560c:	e1a03103 	lsl	r3, r3, #2
80025610:	e0823003 	add	r3, r2, r3
80025614:	e3a02000 	mov	r2, #0
80025618:	e5832004 	str	r2, [r3, #4]
8002561c:	e51b300c 	ldr	r3, [fp, #-12]
80025620:	e2833001 	add	r3, r3, #1
80025624:	e50b300c 	str	r3, [fp, #-12]
80025628:	e51b300c 	ldr	r3, [fp, #-12]
8002562c:	e353000f 	cmp	r3, #15
80025630:	daffffdf 	ble	800255b4 <exit+0x38>
80025634:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025700 <exit+0x184>
80025638:	e5933000 	ldr	r3, [r3]
8002563c:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
80025640:	e1a00003 	mov	r0, r3
80025644:	ebfff7c0 	bl	8002354c <iput>
80025648:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025700 <exit+0x184>
8002564c:	e5933000 	ldr	r3, [r3]
80025650:	e3a02000 	mov	r2, #0
80025654:	e583206c 	str	r2, [r3, #108]	@ 0x6c
80025658:	e59f00ac 	ldr	r0, [pc, #172]	@ 8002570c <exit+0x190>
8002565c:	eb000237 	bl	80025f40 <acquire>
80025660:	e59f3098 	ldr	r3, [pc, #152]	@ 80025700 <exit+0x184>
80025664:	e5933000 	ldr	r3, [r3]
80025668:	e5933018 	ldr	r3, [r3, #24]
8002566c:	e1a00003 	mov	r0, r3
80025670:	eb00013f 	bl	80025b74 <wakeup1>
80025674:	e59f3094 	ldr	r3, [pc, #148]	@ 80025710 <exit+0x194>
80025678:	e50b3008 	str	r3, [fp, #-8]
8002567c:	ea000014 	b	800256d4 <exit+0x158>
80025680:	e51b3008 	ldr	r3, [fp, #-8]
80025684:	e5932018 	ldr	r2, [r3, #24]
80025688:	e59f3070 	ldr	r3, [pc, #112]	@ 80025700 <exit+0x184>
8002568c:	e5933000 	ldr	r3, [r3]
80025690:	e1520003 	cmp	r2, r3
80025694:	1a00000b 	bne	800256c8 <exit+0x14c>
80025698:	e59f3064 	ldr	r3, [pc, #100]	@ 80025704 <exit+0x188>
8002569c:	e5932000 	ldr	r2, [r3]
800256a0:	e51b3008 	ldr	r3, [fp, #-8]
800256a4:	e5832018 	str	r2, [r3, #24]
800256a8:	e51b3008 	ldr	r3, [fp, #-8]
800256ac:	e5d33010 	ldrb	r3, [r3, #16]
800256b0:	e3530005 	cmp	r3, #5
800256b4:	1a000003 	bne	800256c8 <exit+0x14c>
800256b8:	e59f3044 	ldr	r3, [pc, #68]	@ 80025704 <exit+0x188>
800256bc:	e5933000 	ldr	r3, [r3]
800256c0:	e1a00003 	mov	r0, r3
800256c4:	eb00012a 	bl	80025b74 <wakeup1>
800256c8:	e51b3008 	ldr	r3, [fp, #-8]
800256cc:	e2833080 	add	r3, r3, #128	@ 0x80
800256d0:	e50b3008 	str	r3, [fp, #-8]
800256d4:	e51b3008 	ldr	r3, [fp, #-8]
800256d8:	e59f2034 	ldr	r2, [pc, #52]	@ 80025714 <exit+0x198>
800256dc:	e1530002 	cmp	r3, r2
800256e0:	3affffe6 	bcc	80025680 <exit+0x104>
800256e4:	e59f3014 	ldr	r3, [pc, #20]	@ 80025700 <exit+0x184>
800256e8:	e5933000 	ldr	r3, [r3]
800256ec:	e3a02005 	mov	r2, #5
800256f0:	e5c32010 	strb	r2, [r3, #16]
800256f4:	eb000092 	bl	80025944 <sched>
800256f8:	e59f0018 	ldr	r0, [pc, #24]	@ 80025718 <exit+0x19c>
800256fc:	ebfff0ea 	bl	80021aac <panic>
80025700:	800af658 	.word	0x800af658
80025704:	800af654 	.word	0x800af654
80025708:	800298e8 	.word	0x800298e8
8002570c:	800ad620 	.word	0x800ad620
80025710:	800ad654 	.word	0x800ad654
80025714:	800af654 	.word	0x800af654
80025718:	800298f8 	.word	0x800298f8

8002571c <wait>:
8002571c:	e92d4800 	push	{fp, lr}
80025720:	e28db004 	add	fp, sp, #4
80025724:	e24dd010 	sub	sp, sp, #16
80025728:	e59f013c 	ldr	r0, [pc, #316]	@ 8002586c <wait+0x150>
8002572c:	eb000203 	bl	80025f40 <acquire>
80025730:	e3a03000 	mov	r3, #0
80025734:	e50b300c 	str	r3, [fp, #-12]
80025738:	e59f3130 	ldr	r3, [pc, #304]	@ 80025870 <wait+0x154>
8002573c:	e50b3008 	str	r3, [fp, #-8]
80025740:	ea000030 	b	80025808 <wait+0xec>
80025744:	e51b3008 	ldr	r3, [fp, #-8]
80025748:	e5932018 	ldr	r2, [r3, #24]
8002574c:	e59f3120 	ldr	r3, [pc, #288]	@ 80025874 <wait+0x158>
80025750:	e5933000 	ldr	r3, [r3]
80025754:	e1520003 	cmp	r2, r3
80025758:	1a000026 	bne	800257f8 <wait+0xdc>
8002575c:	e3a03001 	mov	r3, #1
80025760:	e50b300c 	str	r3, [fp, #-12]
80025764:	e51b3008 	ldr	r3, [fp, #-8]
80025768:	e5d33010 	ldrb	r3, [r3, #16]
8002576c:	e3530005 	cmp	r3, #5
80025770:	1a000021 	bne	800257fc <wait+0xe0>
80025774:	e51b3008 	ldr	r3, [fp, #-8]
80025778:	e5933014 	ldr	r3, [r3, #20]
8002577c:	e50b3010 	str	r3, [fp, #-16]
80025780:	e51b3008 	ldr	r3, [fp, #-8]
80025784:	e593300c 	ldr	r3, [r3, #12]
80025788:	e1a00003 	mov	r0, r3
8002578c:	ebffef9d 	bl	80021608 <free_page>
80025790:	e51b3008 	ldr	r3, [fp, #-8]
80025794:	e3a02000 	mov	r2, #0
80025798:	e583200c 	str	r2, [r3, #12]
8002579c:	e51b3008 	ldr	r3, [fp, #-8]
800257a0:	e5933008 	ldr	r3, [r3, #8]
800257a4:	e1a00003 	mov	r0, r3
800257a8:	eb000b5e 	bl	80028528 <freevm>
800257ac:	e51b3008 	ldr	r3, [fp, #-8]
800257b0:	e3a02000 	mov	r2, #0
800257b4:	e5c32010 	strb	r2, [r3, #16]
800257b8:	e51b3008 	ldr	r3, [fp, #-8]
800257bc:	e3a02000 	mov	r2, #0
800257c0:	e5832014 	str	r2, [r3, #20]
800257c4:	e51b3008 	ldr	r3, [fp, #-8]
800257c8:	e3a02000 	mov	r2, #0
800257cc:	e5832018 	str	r2, [r3, #24]
800257d0:	e51b3008 	ldr	r3, [fp, #-8]
800257d4:	e3a02000 	mov	r2, #0
800257d8:	e5c32070 	strb	r2, [r3, #112]	@ 0x70
800257dc:	e51b3008 	ldr	r3, [fp, #-8]
800257e0:	e3a02000 	mov	r2, #0
800257e4:	e5832028 	str	r2, [r3, #40]	@ 0x28
800257e8:	e59f007c 	ldr	r0, [pc, #124]	@ 8002586c <wait+0x150>
800257ec:	eb0001de 	bl	80025f6c <release>
800257f0:	e51b3010 	ldr	r3, [fp, #-16]
800257f4:	ea000019 	b	80025860 <wait+0x144>
800257f8:	e1a00000 	nop			@ (mov r0, r0)
800257fc:	e51b3008 	ldr	r3, [fp, #-8]
80025800:	e2833080 	add	r3, r3, #128	@ 0x80
80025804:	e50b3008 	str	r3, [fp, #-8]
80025808:	e51b3008 	ldr	r3, [fp, #-8]
8002580c:	e59f2064 	ldr	r2, [pc, #100]	@ 80025878 <wait+0x15c>
80025810:	e1530002 	cmp	r3, r2
80025814:	3affffca 	bcc	80025744 <wait+0x28>
80025818:	e51b300c 	ldr	r3, [fp, #-12]
8002581c:	e3530000 	cmp	r3, #0
80025820:	0a000004 	beq	80025838 <wait+0x11c>
80025824:	e59f3048 	ldr	r3, [pc, #72]	@ 80025874 <wait+0x158>
80025828:	e5933000 	ldr	r3, [r3]
8002582c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80025830:	e3530000 	cmp	r3, #0
80025834:	0a000003 	beq	80025848 <wait+0x12c>
80025838:	e59f002c 	ldr	r0, [pc, #44]	@ 8002586c <wait+0x150>
8002583c:	eb0001ca 	bl	80025f6c <release>
80025840:	e3e03000 	mvn	r3, #0
80025844:	ea000005 	b	80025860 <wait+0x144>
80025848:	e59f3024 	ldr	r3, [pc, #36]	@ 80025874 <wait+0x158>
8002584c:	e5933000 	ldr	r3, [r3]
80025850:	e59f1014 	ldr	r1, [pc, #20]	@ 8002586c <wait+0x150>
80025854:	e1a00003 	mov	r0, r3
80025858:	eb000091 	bl	80025aa4 <sleep>
8002585c:	eaffffb3 	b	80025730 <wait+0x14>
80025860:	e1a00003 	mov	r0, r3
80025864:	e24bd004 	sub	sp, fp, #4
80025868:	e8bd8800 	pop	{fp, pc}
8002586c:	800ad620 	.word	0x800ad620
80025870:	800ad654 	.word	0x800ad654
80025874:	800af658 	.word	0x800af658
80025878:	800af654 	.word	0x800af654

8002587c <scheduler>:
8002587c:	e92d4800 	push	{fp, lr}
80025880:	e28db004 	add	fp, sp, #4
80025884:	e24dd008 	sub	sp, sp, #8
80025888:	ebffeb3a 	bl	80020578 <sti>
8002588c:	e59f009c 	ldr	r0, [pc, #156]	@ 80025930 <scheduler+0xb4>
80025890:	eb0001aa 	bl	80025f40 <acquire>
80025894:	e59f3098 	ldr	r3, [pc, #152]	@ 80025934 <scheduler+0xb8>
80025898:	e50b3008 	str	r3, [fp, #-8]
8002589c:	ea00001c 	b	80025914 <scheduler+0x98>
800258a0:	e51b3008 	ldr	r3, [fp, #-8]
800258a4:	e5d33010 	ldrb	r3, [r3, #16]
800258a8:	e3530003 	cmp	r3, #3
800258ac:	1a000014 	bne	80025904 <scheduler+0x88>
800258b0:	e59f2080 	ldr	r2, [pc, #128]	@ 80025938 <scheduler+0xbc>
800258b4:	e51b3008 	ldr	r3, [fp, #-8]
800258b8:	e5823000 	str	r3, [r2]
800258bc:	e51b0008 	ldr	r0, [fp, #-8]
800258c0:	eb000a0e 	bl	80028100 <switchuvm>
800258c4:	e51b3008 	ldr	r3, [fp, #-8]
800258c8:	e3a02004 	mov	r2, #4
800258cc:	e5c32010 	strb	r2, [r3, #16]
800258d0:	e59f3064 	ldr	r3, [pc, #100]	@ 8002593c <scheduler+0xc0>
800258d4:	e5933000 	ldr	r3, [r3]
800258d8:	e2832004 	add	r2, r3, #4
800258dc:	e59f3054 	ldr	r3, [pc, #84]	@ 80025938 <scheduler+0xbc>
800258e0:	e5933000 	ldr	r3, [r3]
800258e4:	e5933020 	ldr	r3, [r3, #32]
800258e8:	e1a01003 	mov	r1, r3
800258ec:	e1a00002 	mov	r0, r2
800258f0:	eb0001b2 	bl	80025fc0 <swtch>
800258f4:	e59f303c 	ldr	r3, [pc, #60]	@ 80025938 <scheduler+0xbc>
800258f8:	e3a02000 	mov	r2, #0
800258fc:	e5832000 	str	r2, [r3]
80025900:	ea000000 	b	80025908 <scheduler+0x8c>
80025904:	e1a00000 	nop			@ (mov r0, r0)
80025908:	e51b3008 	ldr	r3, [fp, #-8]
8002590c:	e2833080 	add	r3, r3, #128	@ 0x80
80025910:	e50b3008 	str	r3, [fp, #-8]
80025914:	e51b3008 	ldr	r3, [fp, #-8]
80025918:	e59f2020 	ldr	r2, [pc, #32]	@ 80025940 <scheduler+0xc4>
8002591c:	e1530002 	cmp	r3, r2
80025920:	3affffde 	bcc	800258a0 <scheduler+0x24>
80025924:	e59f0004 	ldr	r0, [pc, #4]	@ 80025930 <scheduler+0xb4>
80025928:	eb00018f 	bl	80025f6c <release>
8002592c:	eaffffd5 	b	80025888 <scheduler+0xc>
80025930:	800ad620 	.word	0x800ad620
80025934:	800ad654 	.word	0x800ad654
80025938:	800af658 	.word	0x800af658
8002593c:	800ad614 	.word	0x800ad614
80025940:	800af654 	.word	0x800af654

80025944 <sched>:
80025944:	e92d4800 	push	{fp, lr}
80025948:	e28db004 	add	fp, sp, #4
8002594c:	e24dd008 	sub	sp, sp, #8
80025950:	e59f00b4 	ldr	r0, [pc, #180]	@ 80025a0c <sched+0xc8>
80025954:	eb00018f 	bl	80025f98 <holding>
80025958:	e1a03000 	mov	r3, r0
8002595c:	e3530000 	cmp	r3, #0
80025960:	1a000001 	bne	8002596c <sched+0x28>
80025964:	e59f00a4 	ldr	r0, [pc, #164]	@ 80025a10 <sched+0xcc>
80025968:	ebfff04f 	bl	80021aac <panic>
8002596c:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025a14 <sched+0xd0>
80025970:	e5933000 	ldr	r3, [r3]
80025974:	e593300c 	ldr	r3, [r3, #12]
80025978:	e3530001 	cmp	r3, #1
8002597c:	0a000001 	beq	80025988 <sched+0x44>
80025980:	e59f0090 	ldr	r0, [pc, #144]	@ 80025a18 <sched+0xd4>
80025984:	ebfff048 	bl	80021aac <panic>
80025988:	e59f308c 	ldr	r3, [pc, #140]	@ 80025a1c <sched+0xd8>
8002598c:	e5933000 	ldr	r3, [r3]
80025990:	e5d33010 	ldrb	r3, [r3, #16]
80025994:	e3530004 	cmp	r3, #4
80025998:	1a000001 	bne	800259a4 <sched+0x60>
8002599c:	e59f007c 	ldr	r0, [pc, #124]	@ 80025a20 <sched+0xdc>
800259a0:	ebfff041 	bl	80021aac <panic>
800259a4:	ebffeb11 	bl	800205f0 <int_enabled>
800259a8:	e1a03000 	mov	r3, r0
800259ac:	e3530000 	cmp	r3, #0
800259b0:	0a000001 	beq	800259bc <sched+0x78>
800259b4:	e59f0068 	ldr	r0, [pc, #104]	@ 80025a24 <sched+0xe0>
800259b8:	ebfff03b 	bl	80021aac <panic>
800259bc:	e59f3050 	ldr	r3, [pc, #80]	@ 80025a14 <sched+0xd0>
800259c0:	e5933000 	ldr	r3, [r3]
800259c4:	e5933010 	ldr	r3, [r3, #16]
800259c8:	e50b3008 	str	r3, [fp, #-8]
800259cc:	e59f3048 	ldr	r3, [pc, #72]	@ 80025a1c <sched+0xd8>
800259d0:	e5933000 	ldr	r3, [r3]
800259d4:	e2832020 	add	r2, r3, #32
800259d8:	e59f3034 	ldr	r3, [pc, #52]	@ 80025a14 <sched+0xd0>
800259dc:	e5933000 	ldr	r3, [r3]
800259e0:	e5933004 	ldr	r3, [r3, #4]
800259e4:	e1a01003 	mov	r1, r3
800259e8:	e1a00002 	mov	r0, r2
800259ec:	eb000173 	bl	80025fc0 <swtch>
800259f0:	e59f301c 	ldr	r3, [pc, #28]	@ 80025a14 <sched+0xd0>
800259f4:	e5933000 	ldr	r3, [r3]
800259f8:	e51b2008 	ldr	r2, [fp, #-8]
800259fc:	e5832010 	str	r2, [r3, #16]
80025a00:	e1a00000 	nop			@ (mov r0, r0)
80025a04:	e24bd004 	sub	sp, fp, #4
80025a08:	e8bd8800 	pop	{fp, pc}
80025a0c:	800ad620 	.word	0x800ad620
80025a10:	80029904 	.word	0x80029904
80025a14:	800ad614 	.word	0x800ad614
80025a18:	80029918 	.word	0x80029918
80025a1c:	800af658 	.word	0x800af658
80025a20:	80029924 	.word	0x80029924
80025a24:	80029934 	.word	0x80029934

80025a28 <yield>:
80025a28:	e92d4800 	push	{fp, lr}
80025a2c:	e28db004 	add	fp, sp, #4
80025a30:	e59f0024 	ldr	r0, [pc, #36]	@ 80025a5c <yield+0x34>
80025a34:	eb000141 	bl	80025f40 <acquire>
80025a38:	e59f3020 	ldr	r3, [pc, #32]	@ 80025a60 <yield+0x38>
80025a3c:	e5933000 	ldr	r3, [r3]
80025a40:	e3a02003 	mov	r2, #3
80025a44:	e5c32010 	strb	r2, [r3, #16]
80025a48:	ebffffbd 	bl	80025944 <sched>
80025a4c:	e59f0008 	ldr	r0, [pc, #8]	@ 80025a5c <yield+0x34>
80025a50:	eb000145 	bl	80025f6c <release>
80025a54:	e1a00000 	nop			@ (mov r0, r0)
80025a58:	e8bd8800 	pop	{fp, pc}
80025a5c:	800ad620 	.word	0x800ad620
80025a60:	800af658 	.word	0x800af658

80025a64 <forkret>:
80025a64:	e92d4800 	push	{fp, lr}
80025a68:	e28db004 	add	fp, sp, #4
80025a6c:	e59f0028 	ldr	r0, [pc, #40]	@ 80025a9c <forkret+0x38>
80025a70:	eb00013d 	bl	80025f6c <release>
80025a74:	e59f3024 	ldr	r3, [pc, #36]	@ 80025aa0 <forkret+0x3c>
80025a78:	e5933000 	ldr	r3, [r3]
80025a7c:	e3530000 	cmp	r3, #0
80025a80:	0a000003 	beq	80025a94 <forkret+0x30>
80025a84:	e59f3014 	ldr	r3, [pc, #20]	@ 80025aa0 <forkret+0x3c>
80025a88:	e3a02000 	mov	r2, #0
80025a8c:	e5832000 	str	r2, [r3]
80025a90:	ebfffa14 	bl	800242e8 <initlog>
80025a94:	e1a00000 	nop			@ (mov r0, r0)
80025a98:	e8bd8800 	pop	{fp, pc}
80025a9c:	800ad620 	.word	0x800ad620
80025aa0:	8002a018 	.word	0x8002a018

80025aa4 <sleep>:
80025aa4:	e92d4800 	push	{fp, lr}
80025aa8:	e28db004 	add	fp, sp, #4
80025aac:	e24dd008 	sub	sp, sp, #8
80025ab0:	e50b0008 	str	r0, [fp, #-8]
80025ab4:	e50b100c 	str	r1, [fp, #-12]
80025ab8:	e59f30a4 	ldr	r3, [pc, #164]	@ 80025b64 <sleep+0xc0>
80025abc:	e5933000 	ldr	r3, [r3]
80025ac0:	e3530000 	cmp	r3, #0
80025ac4:	1a000001 	bne	80025ad0 <sleep+0x2c>
80025ac8:	e59f0098 	ldr	r0, [pc, #152]	@ 80025b68 <sleep+0xc4>
80025acc:	ebffeff6 	bl	80021aac <panic>
80025ad0:	e51b300c 	ldr	r3, [fp, #-12]
80025ad4:	e3530000 	cmp	r3, #0
80025ad8:	1a000001 	bne	80025ae4 <sleep+0x40>
80025adc:	e59f0088 	ldr	r0, [pc, #136]	@ 80025b6c <sleep+0xc8>
80025ae0:	ebffeff1 	bl	80021aac <panic>
80025ae4:	e51b300c 	ldr	r3, [fp, #-12]
80025ae8:	e59f2080 	ldr	r2, [pc, #128]	@ 80025b70 <sleep+0xcc>
80025aec:	e1530002 	cmp	r3, r2
80025af0:	0a000003 	beq	80025b04 <sleep+0x60>
80025af4:	e59f0074 	ldr	r0, [pc, #116]	@ 80025b70 <sleep+0xcc>
80025af8:	eb000110 	bl	80025f40 <acquire>
80025afc:	e51b000c 	ldr	r0, [fp, #-12]
80025b00:	eb000119 	bl	80025f6c <release>
80025b04:	e59f3058 	ldr	r3, [pc, #88]	@ 80025b64 <sleep+0xc0>
80025b08:	e5933000 	ldr	r3, [r3]
80025b0c:	e51b2008 	ldr	r2, [fp, #-8]
80025b10:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025b14:	e59f3048 	ldr	r3, [pc, #72]	@ 80025b64 <sleep+0xc0>
80025b18:	e5933000 	ldr	r3, [r3]
80025b1c:	e3a02002 	mov	r2, #2
80025b20:	e5c32010 	strb	r2, [r3, #16]
80025b24:	ebffff86 	bl	80025944 <sched>
80025b28:	e59f3034 	ldr	r3, [pc, #52]	@ 80025b64 <sleep+0xc0>
80025b2c:	e5933000 	ldr	r3, [r3]
80025b30:	e3a02000 	mov	r2, #0
80025b34:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025b38:	e51b300c 	ldr	r3, [fp, #-12]
80025b3c:	e59f202c 	ldr	r2, [pc, #44]	@ 80025b70 <sleep+0xcc>
80025b40:	e1530002 	cmp	r3, r2
80025b44:	0a000003 	beq	80025b58 <sleep+0xb4>
80025b48:	e59f0020 	ldr	r0, [pc, #32]	@ 80025b70 <sleep+0xcc>
80025b4c:	eb000106 	bl	80025f6c <release>
80025b50:	e51b000c 	ldr	r0, [fp, #-12]
80025b54:	eb0000f9 	bl	80025f40 <acquire>
80025b58:	e1a00000 	nop			@ (mov r0, r0)
80025b5c:	e24bd004 	sub	sp, fp, #4
80025b60:	e8bd8800 	pop	{fp, pc}
80025b64:	800af658 	.word	0x800af658
80025b68:	80029948 	.word	0x80029948
80025b6c:	80029950 	.word	0x80029950
80025b70:	800ad620 	.word	0x800ad620

80025b74 <wakeup1>:
80025b74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025b78:	e28db000 	add	fp, sp, #0
80025b7c:	e24dd014 	sub	sp, sp, #20
80025b80:	e50b0010 	str	r0, [fp, #-16]
80025b84:	e59f3064 	ldr	r3, [pc, #100]	@ 80025bf0 <wakeup1+0x7c>
80025b88:	e50b3008 	str	r3, [fp, #-8]
80025b8c:	ea00000e 	b	80025bcc <wakeup1+0x58>
80025b90:	e51b3008 	ldr	r3, [fp, #-8]
80025b94:	e5d33010 	ldrb	r3, [r3, #16]
80025b98:	e3530002 	cmp	r3, #2
80025b9c:	1a000007 	bne	80025bc0 <wakeup1+0x4c>
80025ba0:	e51b3008 	ldr	r3, [fp, #-8]
80025ba4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025ba8:	e51b2010 	ldr	r2, [fp, #-16]
80025bac:	e1520003 	cmp	r2, r3
80025bb0:	1a000002 	bne	80025bc0 <wakeup1+0x4c>
80025bb4:	e51b3008 	ldr	r3, [fp, #-8]
80025bb8:	e3a02003 	mov	r2, #3
80025bbc:	e5c32010 	strb	r2, [r3, #16]
80025bc0:	e51b3008 	ldr	r3, [fp, #-8]
80025bc4:	e2833080 	add	r3, r3, #128	@ 0x80
80025bc8:	e50b3008 	str	r3, [fp, #-8]
80025bcc:	e51b3008 	ldr	r3, [fp, #-8]
80025bd0:	e59f201c 	ldr	r2, [pc, #28]	@ 80025bf4 <wakeup1+0x80>
80025bd4:	e1530002 	cmp	r3, r2
80025bd8:	3affffec 	bcc	80025b90 <wakeup1+0x1c>
80025bdc:	e1a00000 	nop			@ (mov r0, r0)
80025be0:	e1a00000 	nop			@ (mov r0, r0)
80025be4:	e28bd000 	add	sp, fp, #0
80025be8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025bec:	e12fff1e 	bx	lr
80025bf0:	800ad654 	.word	0x800ad654
80025bf4:	800af654 	.word	0x800af654

80025bf8 <wakeup>:
80025bf8:	e92d4800 	push	{fp, lr}
80025bfc:	e28db004 	add	fp, sp, #4
80025c00:	e24dd008 	sub	sp, sp, #8
80025c04:	e50b0008 	str	r0, [fp, #-8]
80025c08:	e59f001c 	ldr	r0, [pc, #28]	@ 80025c2c <wakeup+0x34>
80025c0c:	eb0000cb 	bl	80025f40 <acquire>
80025c10:	e51b0008 	ldr	r0, [fp, #-8]
80025c14:	ebffffd6 	bl	80025b74 <wakeup1>
80025c18:	e59f000c 	ldr	r0, [pc, #12]	@ 80025c2c <wakeup+0x34>
80025c1c:	eb0000d2 	bl	80025f6c <release>
80025c20:	e1a00000 	nop			@ (mov r0, r0)
80025c24:	e24bd004 	sub	sp, fp, #4
80025c28:	e8bd8800 	pop	{fp, pc}
80025c2c:	800ad620 	.word	0x800ad620

80025c30 <kill>:
80025c30:	e92d4800 	push	{fp, lr}
80025c34:	e28db004 	add	fp, sp, #4
80025c38:	e24dd010 	sub	sp, sp, #16
80025c3c:	e50b0010 	str	r0, [fp, #-16]
80025c40:	e59f008c 	ldr	r0, [pc, #140]	@ 80025cd4 <kill+0xa4>
80025c44:	eb0000bd 	bl	80025f40 <acquire>
80025c48:	e59f3088 	ldr	r3, [pc, #136]	@ 80025cd8 <kill+0xa8>
80025c4c:	e50b3008 	str	r3, [fp, #-8]
80025c50:	ea000015 	b	80025cac <kill+0x7c>
80025c54:	e51b3008 	ldr	r3, [fp, #-8]
80025c58:	e5933014 	ldr	r3, [r3, #20]
80025c5c:	e51b2010 	ldr	r2, [fp, #-16]
80025c60:	e1520003 	cmp	r2, r3
80025c64:	1a00000d 	bne	80025ca0 <kill+0x70>
80025c68:	e51b3008 	ldr	r3, [fp, #-8]
80025c6c:	e3a02001 	mov	r2, #1
80025c70:	e5832028 	str	r2, [r3, #40]	@ 0x28
80025c74:	e51b3008 	ldr	r3, [fp, #-8]
80025c78:	e5d33010 	ldrb	r3, [r3, #16]
80025c7c:	e3530002 	cmp	r3, #2
80025c80:	1a000002 	bne	80025c90 <kill+0x60>
80025c84:	e51b3008 	ldr	r3, [fp, #-8]
80025c88:	e3a02003 	mov	r2, #3
80025c8c:	e5c32010 	strb	r2, [r3, #16]
80025c90:	e59f003c 	ldr	r0, [pc, #60]	@ 80025cd4 <kill+0xa4>
80025c94:	eb0000b4 	bl	80025f6c <release>
80025c98:	e3a03000 	mov	r3, #0
80025c9c:	ea000009 	b	80025cc8 <kill+0x98>
80025ca0:	e51b3008 	ldr	r3, [fp, #-8]
80025ca4:	e2833080 	add	r3, r3, #128	@ 0x80
80025ca8:	e50b3008 	str	r3, [fp, #-8]
80025cac:	e51b3008 	ldr	r3, [fp, #-8]
80025cb0:	e59f2024 	ldr	r2, [pc, #36]	@ 80025cdc <kill+0xac>
80025cb4:	e1530002 	cmp	r3, r2
80025cb8:	3affffe5 	bcc	80025c54 <kill+0x24>
80025cbc:	e59f0010 	ldr	r0, [pc, #16]	@ 80025cd4 <kill+0xa4>
80025cc0:	eb0000a9 	bl	80025f6c <release>
80025cc4:	e3e03000 	mvn	r3, #0
80025cc8:	e1a00003 	mov	r0, r3
80025ccc:	e24bd004 	sub	sp, fp, #4
80025cd0:	e8bd8800 	pop	{fp, pc}
80025cd4:	800ad620 	.word	0x800ad620
80025cd8:	800ad654 	.word	0x800ad654
80025cdc:	800af654 	.word	0x800af654

80025ce0 <procdump>:
80025ce0:	e92d4800 	push	{fp, lr}
80025ce4:	e28db004 	add	fp, sp, #4
80025ce8:	e24dd008 	sub	sp, sp, #8
80025cec:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025dac <procdump+0xcc>
80025cf0:	e50b3008 	str	r3, [fp, #-8]
80025cf4:	ea000023 	b	80025d88 <procdump+0xa8>
80025cf8:	e51b3008 	ldr	r3, [fp, #-8]
80025cfc:	e5d33010 	ldrb	r3, [r3, #16]
80025d00:	e3530000 	cmp	r3, #0
80025d04:	0a00001b 	beq	80025d78 <procdump+0x98>
80025d08:	e51b3008 	ldr	r3, [fp, #-8]
80025d0c:	e5d33010 	ldrb	r3, [r3, #16]
80025d10:	e3530005 	cmp	r3, #5
80025d14:	8a00000d 	bhi	80025d50 <procdump+0x70>
80025d18:	e51b3008 	ldr	r3, [fp, #-8]
80025d1c:	e5d33010 	ldrb	r3, [r3, #16]
80025d20:	e1a02003 	mov	r2, r3
80025d24:	e59f3084 	ldr	r3, [pc, #132]	@ 80025db0 <procdump+0xd0>
80025d28:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025d2c:	e3530000 	cmp	r3, #0
80025d30:	0a000006 	beq	80025d50 <procdump+0x70>
80025d34:	e51b3008 	ldr	r3, [fp, #-8]
80025d38:	e5d33010 	ldrb	r3, [r3, #16]
80025d3c:	e1a02003 	mov	r2, r3
80025d40:	e59f3068 	ldr	r3, [pc, #104]	@ 80025db0 <procdump+0xd0>
80025d44:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025d48:	e50b300c 	str	r3, [fp, #-12]
80025d4c:	ea000001 	b	80025d58 <procdump+0x78>
80025d50:	e59f305c 	ldr	r3, [pc, #92]	@ 80025db4 <procdump+0xd4>
80025d54:	e50b300c 	str	r3, [fp, #-12]
80025d58:	e51b3008 	ldr	r3, [fp, #-8]
80025d5c:	e5931014 	ldr	r1, [r3, #20]
80025d60:	e51b3008 	ldr	r3, [fp, #-8]
80025d64:	e2833070 	add	r3, r3, #112	@ 0x70
80025d68:	e51b200c 	ldr	r2, [fp, #-12]
80025d6c:	e59f0044 	ldr	r0, [pc, #68]	@ 80025db8 <procdump+0xd8>
80025d70:	ebffeec7 	bl	80021894 <cprintf>
80025d74:	ea000000 	b	80025d7c <procdump+0x9c>
80025d78:	e1a00000 	nop			@ (mov r0, r0)
80025d7c:	e51b3008 	ldr	r3, [fp, #-8]
80025d80:	e2833080 	add	r3, r3, #128	@ 0x80
80025d84:	e50b3008 	str	r3, [fp, #-8]
80025d88:	e51b3008 	ldr	r3, [fp, #-8]
80025d8c:	e59f2028 	ldr	r2, [pc, #40]	@ 80025dbc <procdump+0xdc>
80025d90:	e1530002 	cmp	r3, r2
80025d94:	3affffd7 	bcc	80025cf8 <procdump+0x18>
80025d98:	e59f0020 	ldr	r0, [pc, #32]	@ 80025dc0 <procdump+0xe0>
80025d9c:	ebffea9a 	bl	8002080c <show_callstk>
80025da0:	e1a00000 	nop			@ (mov r0, r0)
80025da4:	e24bd004 	sub	sp, fp, #4
80025da8:	e8bd8800 	pop	{fp, pc}
80025dac:	800ad654 	.word	0x800ad654
80025db0:	8002a01c 	.word	0x8002a01c
80025db4:	80029964 	.word	0x80029964
80025db8:	80029968 	.word	0x80029968
80025dbc:	800af654 	.word	0x800af654
80025dc0:	80029974 	.word	0x80029974

80025dc4 <ps>:
80025dc4:	e92d4800 	push	{fp, lr}
80025dc8:	e28db004 	add	fp, sp, #4
80025dcc:	e24dd018 	sub	sp, sp, #24
80025dd0:	e59f0104 	ldr	r0, [pc, #260]	@ 80025edc <ps+0x118>
80025dd4:	eb000059 	bl	80025f40 <acquire>
80025dd8:	e59f0100 	ldr	r0, [pc, #256]	@ 80025ee0 <ps+0x11c>
80025ddc:	ebffeeac 	bl	80021894 <cprintf>
80025de0:	e59f30fc 	ldr	r3, [pc, #252]	@ 80025ee4 <ps+0x120>
80025de4:	e50b3008 	str	r3, [fp, #-8]
80025de8:	ea000032 	b	80025eb8 <ps+0xf4>
80025dec:	e51b3008 	ldr	r3, [fp, #-8]
80025df0:	e5d33010 	ldrb	r3, [r3, #16]
80025df4:	e3530000 	cmp	r3, #0
80025df8:	0a00002a 	beq	80025ea8 <ps+0xe4>
80025dfc:	e51b3008 	ldr	r3, [fp, #-8]
80025e00:	e5d33010 	ldrb	r3, [r3, #16]
80025e04:	e3530005 	cmp	r3, #5
80025e08:	8a00000d 	bhi	80025e44 <ps+0x80>
80025e0c:	e51b3008 	ldr	r3, [fp, #-8]
80025e10:	e5d33010 	ldrb	r3, [r3, #16]
80025e14:	e1a02003 	mov	r2, r3
80025e18:	e59f30c8 	ldr	r3, [pc, #200]	@ 80025ee8 <ps+0x124>
80025e1c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025e20:	e3530000 	cmp	r3, #0
80025e24:	0a000006 	beq	80025e44 <ps+0x80>
80025e28:	e51b3008 	ldr	r3, [fp, #-8]
80025e2c:	e5d33010 	ldrb	r3, [r3, #16]
80025e30:	e1a02003 	mov	r2, r3
80025e34:	e59f30ac 	ldr	r3, [pc, #172]	@ 80025ee8 <ps+0x124>
80025e38:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025e3c:	e50b300c 	str	r3, [fp, #-12]
80025e40:	ea000001 	b	80025e4c <ps+0x88>
80025e44:	e59f30a0 	ldr	r3, [pc, #160]	@ 80025eec <ps+0x128>
80025e48:	e50b300c 	str	r3, [fp, #-12]
80025e4c:	e51b3008 	ldr	r3, [fp, #-8]
80025e50:	e5933018 	ldr	r3, [r3, #24]
80025e54:	e3530000 	cmp	r3, #0
80025e58:	0a000003 	beq	80025e6c <ps+0xa8>
80025e5c:	e51b3008 	ldr	r3, [fp, #-8]
80025e60:	e5933018 	ldr	r3, [r3, #24]
80025e64:	e5933014 	ldr	r3, [r3, #20]
80025e68:	ea000000 	b	80025e70 <ps+0xac>
80025e6c:	e3e03000 	mvn	r3, #0
80025e70:	e50b3010 	str	r3, [fp, #-16]
80025e74:	e51b3008 	ldr	r3, [fp, #-8]
80025e78:	e5931014 	ldr	r1, [r3, #20]
80025e7c:	e51b3008 	ldr	r3, [fp, #-8]
80025e80:	e2833070 	add	r3, r3, #112	@ 0x70
80025e84:	e51b2008 	ldr	r2, [fp, #-8]
80025e88:	e5922000 	ldr	r2, [r2]
80025e8c:	e58d2004 	str	r2, [sp, #4]
80025e90:	e58d3000 	str	r3, [sp]
80025e94:	e51b300c 	ldr	r3, [fp, #-12]
80025e98:	e51b2010 	ldr	r2, [fp, #-16]
80025e9c:	e59f004c 	ldr	r0, [pc, #76]	@ 80025ef0 <ps+0x12c>
80025ea0:	ebffee7b 	bl	80021894 <cprintf>
80025ea4:	ea000000 	b	80025eac <ps+0xe8>
80025ea8:	e1a00000 	nop			@ (mov r0, r0)
80025eac:	e51b3008 	ldr	r3, [fp, #-8]
80025eb0:	e2833080 	add	r3, r3, #128	@ 0x80
80025eb4:	e50b3008 	str	r3, [fp, #-8]
80025eb8:	e51b3008 	ldr	r3, [fp, #-8]
80025ebc:	e59f2030 	ldr	r2, [pc, #48]	@ 80025ef4 <ps+0x130>
80025ec0:	e1530002 	cmp	r3, r2
80025ec4:	3affffc8 	bcc	80025dec <ps+0x28>
80025ec8:	e59f000c 	ldr	r0, [pc, #12]	@ 80025edc <ps+0x118>
80025ecc:	eb000026 	bl	80025f6c <release>
80025ed0:	e1a00000 	nop			@ (mov r0, r0)
80025ed4:	e24bd004 	sub	sp, fp, #4
80025ed8:	e8bd8800 	pop	{fp, pc}
80025edc:	800ad620 	.word	0x800ad620
80025ee0:	80029980 	.word	0x80029980
80025ee4:	800ad654 	.word	0x800ad654
80025ee8:	8002a034 	.word	0x8002a034
80025eec:	80029964 	.word	0x80029964
80025ef0:	800299a8 	.word	0x800299a8
80025ef4:	800af654 	.word	0x800af654

80025ef8 <initlock>:
80025ef8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025efc:	e28db000 	add	fp, sp, #0
80025f00:	e24dd00c 	sub	sp, sp, #12
80025f04:	e50b0008 	str	r0, [fp, #-8]
80025f08:	e50b100c 	str	r1, [fp, #-12]
80025f0c:	e51b3008 	ldr	r3, [fp, #-8]
80025f10:	e51b200c 	ldr	r2, [fp, #-12]
80025f14:	e5832004 	str	r2, [r3, #4]
80025f18:	e51b3008 	ldr	r3, [fp, #-8]
80025f1c:	e3a02000 	mov	r2, #0
80025f20:	e5832000 	str	r2, [r3]
80025f24:	e51b3008 	ldr	r3, [fp, #-8]
80025f28:	e3a02000 	mov	r2, #0
80025f2c:	e5832008 	str	r2, [r3, #8]
80025f30:	e1a00000 	nop			@ (mov r0, r0)
80025f34:	e28bd000 	add	sp, fp, #0
80025f38:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025f3c:	e12fff1e 	bx	lr

80025f40 <acquire>:
80025f40:	e92d4800 	push	{fp, lr}
80025f44:	e28db004 	add	fp, sp, #4
80025f48:	e24dd008 	sub	sp, sp, #8
80025f4c:	e50b0008 	str	r0, [fp, #-8]
80025f50:	ebffe9b5 	bl	8002062c <pushcli>
80025f54:	e51b3008 	ldr	r3, [fp, #-8]
80025f58:	e3a02001 	mov	r2, #1
80025f5c:	e5832000 	str	r2, [r3]
80025f60:	e1a00000 	nop			@ (mov r0, r0)
80025f64:	e24bd004 	sub	sp, fp, #4
80025f68:	e8bd8800 	pop	{fp, pc}

80025f6c <release>:
80025f6c:	e92d4800 	push	{fp, lr}
80025f70:	e28db004 	add	fp, sp, #4
80025f74:	e24dd008 	sub	sp, sp, #8
80025f78:	e50b0008 	str	r0, [fp, #-8]
80025f7c:	e51b3008 	ldr	r3, [fp, #-8]
80025f80:	e3a02000 	mov	r2, #0
80025f84:	e5832000 	str	r2, [r3]
80025f88:	ebffe9bc 	bl	80020680 <popcli>
80025f8c:	e1a00000 	nop			@ (mov r0, r0)
80025f90:	e24bd004 	sub	sp, fp, #4
80025f94:	e8bd8800 	pop	{fp, pc}

80025f98 <holding>:
80025f98:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025f9c:	e28db000 	add	fp, sp, #0
80025fa0:	e24dd00c 	sub	sp, sp, #12
80025fa4:	e50b0008 	str	r0, [fp, #-8]
80025fa8:	e51b3008 	ldr	r3, [fp, #-8]
80025fac:	e5933000 	ldr	r3, [r3]
80025fb0:	e1a00003 	mov	r0, r3
80025fb4:	e28bd000 	add	sp, fp, #0
80025fb8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025fbc:	e12fff1e 	bx	lr

80025fc0 <swtch>:
80025fc0:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025fc4:	e580d000 	str	sp, [r0]
80025fc8:	e1a0d001 	mov	sp, r1
80025fcc:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025fd0:	e12fff1e 	bx	lr

80025fd4 <fetchint>:
80025fd4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025fd8:	e28db000 	add	fp, sp, #0
80025fdc:	e24dd00c 	sub	sp, sp, #12
80025fe0:	e50b0008 	str	r0, [fp, #-8]
80025fe4:	e50b100c 	str	r1, [fp, #-12]
80025fe8:	e59f3058 	ldr	r3, [pc, #88]	@ 80026048 <fetchint+0x74>
80025fec:	e5933000 	ldr	r3, [r3]
80025ff0:	e5933004 	ldr	r3, [r3, #4]
80025ff4:	e51b2008 	ldr	r2, [fp, #-8]
80025ff8:	e1520003 	cmp	r2, r3
80025ffc:	2a000006 	bcs	8002601c <fetchint+0x48>
80026000:	e51b3008 	ldr	r3, [fp, #-8]
80026004:	e2832004 	add	r2, r3, #4
80026008:	e59f3038 	ldr	r3, [pc, #56]	@ 80026048 <fetchint+0x74>
8002600c:	e5933000 	ldr	r3, [r3]
80026010:	e5933004 	ldr	r3, [r3, #4]
80026014:	e1520003 	cmp	r2, r3
80026018:	9a000001 	bls	80026024 <fetchint+0x50>
8002601c:	e3e03000 	mvn	r3, #0
80026020:	ea000004 	b	80026038 <fetchint+0x64>
80026024:	e51b3008 	ldr	r3, [fp, #-8]
80026028:	e5932000 	ldr	r2, [r3]
8002602c:	e51b300c 	ldr	r3, [fp, #-12]
80026030:	e5832000 	str	r2, [r3]
80026034:	e3a03000 	mov	r3, #0
80026038:	e1a00003 	mov	r0, r3
8002603c:	e28bd000 	add	sp, fp, #0
80026040:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026044:	e12fff1e 	bx	lr
80026048:	800af658 	.word	0x800af658

8002604c <fetchstr>:
8002604c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026050:	e28db000 	add	fp, sp, #0
80026054:	e24dd014 	sub	sp, sp, #20
80026058:	e50b0010 	str	r0, [fp, #-16]
8002605c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026060:	e59f3098 	ldr	r3, [pc, #152]	@ 80026100 <fetchstr+0xb4>
80026064:	e5933000 	ldr	r3, [r3]
80026068:	e5933004 	ldr	r3, [r3, #4]
8002606c:	e51b2010 	ldr	r2, [fp, #-16]
80026070:	e1520003 	cmp	r2, r3
80026074:	3a000001 	bcc	80026080 <fetchstr+0x34>
80026078:	e3e03000 	mvn	r3, #0
8002607c:	ea00001b 	b	800260f0 <fetchstr+0xa4>
80026080:	e51b2010 	ldr	r2, [fp, #-16]
80026084:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026088:	e5832000 	str	r2, [r3]
8002608c:	e59f306c 	ldr	r3, [pc, #108]	@ 80026100 <fetchstr+0xb4>
80026090:	e5933000 	ldr	r3, [r3]
80026094:	e5933004 	ldr	r3, [r3, #4]
80026098:	e50b300c 	str	r3, [fp, #-12]
8002609c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800260a0:	e5933000 	ldr	r3, [r3]
800260a4:	e50b3008 	str	r3, [fp, #-8]
800260a8:	ea00000b 	b	800260dc <fetchstr+0x90>
800260ac:	e51b3008 	ldr	r3, [fp, #-8]
800260b0:	e5d33000 	ldrb	r3, [r3]
800260b4:	e3530000 	cmp	r3, #0
800260b8:	1a000004 	bne	800260d0 <fetchstr+0x84>
800260bc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800260c0:	e5933000 	ldr	r3, [r3]
800260c4:	e51b2008 	ldr	r2, [fp, #-8]
800260c8:	e0423003 	sub	r3, r2, r3
800260cc:	ea000007 	b	800260f0 <fetchstr+0xa4>
800260d0:	e51b3008 	ldr	r3, [fp, #-8]
800260d4:	e2833001 	add	r3, r3, #1
800260d8:	e50b3008 	str	r3, [fp, #-8]
800260dc:	e51b2008 	ldr	r2, [fp, #-8]
800260e0:	e51b300c 	ldr	r3, [fp, #-12]
800260e4:	e1520003 	cmp	r2, r3
800260e8:	3affffef 	bcc	800260ac <fetchstr+0x60>
800260ec:	e3e03000 	mvn	r3, #0
800260f0:	e1a00003 	mov	r0, r3
800260f4:	e28bd000 	add	sp, fp, #0
800260f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800260fc:	e12fff1e 	bx	lr
80026100:	800af658 	.word	0x800af658

80026104 <argint>:
80026104:	e92d4800 	push	{fp, lr}
80026108:	e28db004 	add	fp, sp, #4
8002610c:	e24dd008 	sub	sp, sp, #8
80026110:	e50b0008 	str	r0, [fp, #-8]
80026114:	e50b100c 	str	r1, [fp, #-12]
80026118:	e51b3008 	ldr	r3, [fp, #-8]
8002611c:	e3530003 	cmp	r3, #3
80026120:	da000001 	ble	8002612c <argint+0x28>
80026124:	e59f003c 	ldr	r0, [pc, #60]	@ 80026168 <argint+0x64>
80026128:	ebffee5f 	bl	80021aac <panic>
8002612c:	e59f3038 	ldr	r3, [pc, #56]	@ 8002616c <argint+0x68>
80026130:	e5933000 	ldr	r3, [r3]
80026134:	e593301c 	ldr	r3, [r3, #28]
80026138:	e2832014 	add	r2, r3, #20
8002613c:	e51b3008 	ldr	r3, [fp, #-8]
80026140:	e1a03103 	lsl	r3, r3, #2
80026144:	e0823003 	add	r3, r2, r3
80026148:	e5933000 	ldr	r3, [r3]
8002614c:	e1a02003 	mov	r2, r3
80026150:	e51b300c 	ldr	r3, [fp, #-12]
80026154:	e5832000 	str	r2, [r3]
80026158:	e3a03000 	mov	r3, #0
8002615c:	e1a00003 	mov	r0, r3
80026160:	e24bd004 	sub	sp, fp, #4
80026164:	e8bd8800 	pop	{fp, pc}
80026168:	800299f0 	.word	0x800299f0
8002616c:	800af658 	.word	0x800af658

80026170 <argptr>:
80026170:	e92d4800 	push	{fp, lr}
80026174:	e28db004 	add	fp, sp, #4
80026178:	e24dd018 	sub	sp, sp, #24
8002617c:	e50b0010 	str	r0, [fp, #-16]
80026180:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026184:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026188:	e24b3008 	sub	r3, fp, #8
8002618c:	e1a01003 	mov	r1, r3
80026190:	e51b0010 	ldr	r0, [fp, #-16]
80026194:	ebffffda 	bl	80026104 <argint>
80026198:	e1a03000 	mov	r3, r0
8002619c:	e3530000 	cmp	r3, #0
800261a0:	aa000001 	bge	800261ac <argptr+0x3c>
800261a4:	e3e03000 	mvn	r3, #0
800261a8:	ea000015 	b	80026204 <argptr+0x94>
800261ac:	e59f305c 	ldr	r3, [pc, #92]	@ 80026210 <argptr+0xa0>
800261b0:	e5933000 	ldr	r3, [r3]
800261b4:	e5933004 	ldr	r3, [r3, #4]
800261b8:	e51b2008 	ldr	r2, [fp, #-8]
800261bc:	e1530002 	cmp	r3, r2
800261c0:	9a000008 	bls	800261e8 <argptr+0x78>
800261c4:	e51b3008 	ldr	r3, [fp, #-8]
800261c8:	e1a02003 	mov	r2, r3
800261cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800261d0:	e0822003 	add	r2, r2, r3
800261d4:	e59f3034 	ldr	r3, [pc, #52]	@ 80026210 <argptr+0xa0>
800261d8:	e5933000 	ldr	r3, [r3]
800261dc:	e5933004 	ldr	r3, [r3, #4]
800261e0:	e1520003 	cmp	r2, r3
800261e4:	9a000001 	bls	800261f0 <argptr+0x80>
800261e8:	e3e03000 	mvn	r3, #0
800261ec:	ea000004 	b	80026204 <argptr+0x94>
800261f0:	e51b3008 	ldr	r3, [fp, #-8]
800261f4:	e1a02003 	mov	r2, r3
800261f8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800261fc:	e5832000 	str	r2, [r3]
80026200:	e3a03000 	mov	r3, #0
80026204:	e1a00003 	mov	r0, r3
80026208:	e24bd004 	sub	sp, fp, #4
8002620c:	e8bd8800 	pop	{fp, pc}
80026210:	800af658 	.word	0x800af658

80026214 <argstr>:
80026214:	e92d4800 	push	{fp, lr}
80026218:	e28db004 	add	fp, sp, #4
8002621c:	e24dd010 	sub	sp, sp, #16
80026220:	e50b0010 	str	r0, [fp, #-16]
80026224:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026228:	e24b3008 	sub	r3, fp, #8
8002622c:	e1a01003 	mov	r1, r3
80026230:	e51b0010 	ldr	r0, [fp, #-16]
80026234:	ebffffb2 	bl	80026104 <argint>
80026238:	e1a03000 	mov	r3, r0
8002623c:	e3530000 	cmp	r3, #0
80026240:	aa000001 	bge	8002624c <argstr+0x38>
80026244:	e3e03000 	mvn	r3, #0
80026248:	ea000004 	b	80026260 <argstr+0x4c>
8002624c:	e51b3008 	ldr	r3, [fp, #-8]
80026250:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80026254:	e1a00003 	mov	r0, r3
80026258:	ebffff7b 	bl	8002604c <fetchstr>
8002625c:	e1a03000 	mov	r3, r0
80026260:	e1a00003 	mov	r0, r3
80026264:	e24bd004 	sub	sp, fp, #4
80026268:	e8bd8800 	pop	{fp, pc}

8002626c <syscall>:
8002626c:	e92d4800 	push	{fp, lr}
80026270:	e28db004 	add	fp, sp, #4
80026274:	e24dd008 	sub	sp, sp, #8
80026278:	e59f30cc 	ldr	r3, [pc, #204]	@ 8002634c <syscall+0xe0>
8002627c:	e5933000 	ldr	r3, [r3]
80026280:	e593301c 	ldr	r3, [r3, #28]
80026284:	e5933010 	ldr	r3, [r3, #16]
80026288:	e50b3008 	str	r3, [fp, #-8]
8002628c:	e51b3008 	ldr	r3, [fp, #-8]
80026290:	e3530000 	cmp	r3, #0
80026294:	da00001a 	ble	80026304 <syscall+0x98>
80026298:	e51b3008 	ldr	r3, [fp, #-8]
8002629c:	e3530017 	cmp	r3, #23
800262a0:	8a000017 	bhi	80026304 <syscall+0x98>
800262a4:	e59f20a4 	ldr	r2, [pc, #164]	@ 80026350 <syscall+0xe4>
800262a8:	e51b3008 	ldr	r3, [fp, #-8]
800262ac:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800262b0:	e3530000 	cmp	r3, #0
800262b4:	0a000012 	beq	80026304 <syscall+0x98>
800262b8:	e59f2090 	ldr	r2, [pc, #144]	@ 80026350 <syscall+0xe4>
800262bc:	e51b3008 	ldr	r3, [fp, #-8]
800262c0:	e7923103 	ldr	r3, [r2, r3, lsl #2]
800262c4:	e12fff33 	blx	r3
800262c8:	e50b000c 	str	r0, [fp, #-12]
800262cc:	e59f3078 	ldr	r3, [pc, #120]	@ 8002634c <syscall+0xe0>
800262d0:	e5933000 	ldr	r3, [r3]
800262d4:	e5932000 	ldr	r2, [r3]
800262d8:	e2822001 	add	r2, r2, #1
800262dc:	e5832000 	str	r2, [r3]
800262e0:	e51b3008 	ldr	r3, [fp, #-8]
800262e4:	e3530007 	cmp	r3, #7
800262e8:	0a000014 	beq	80026340 <syscall+0xd4>
800262ec:	e59f3058 	ldr	r3, [pc, #88]	@ 8002634c <syscall+0xe0>
800262f0:	e5933000 	ldr	r3, [r3]
800262f4:	e593301c 	ldr	r3, [r3, #28]
800262f8:	e51b200c 	ldr	r2, [fp, #-12]
800262fc:	e5832010 	str	r2, [r3, #16]
80026300:	ea00000e 	b	80026340 <syscall+0xd4>
80026304:	e59f3040 	ldr	r3, [pc, #64]	@ 8002634c <syscall+0xe0>
80026308:	e5933000 	ldr	r3, [r3]
8002630c:	e5931014 	ldr	r1, [r3, #20]
80026310:	e59f3034 	ldr	r3, [pc, #52]	@ 8002634c <syscall+0xe0>
80026314:	e5933000 	ldr	r3, [r3]
80026318:	e2832070 	add	r2, r3, #112	@ 0x70
8002631c:	e51b3008 	ldr	r3, [fp, #-8]
80026320:	e59f002c 	ldr	r0, [pc, #44]	@ 80026354 <syscall+0xe8>
80026324:	ebffed5a 	bl	80021894 <cprintf>
80026328:	e59f301c 	ldr	r3, [pc, #28]	@ 8002634c <syscall+0xe0>
8002632c:	e5933000 	ldr	r3, [r3]
80026330:	e593301c 	ldr	r3, [r3, #28]
80026334:	e3e02000 	mvn	r2, #0
80026338:	e5832010 	str	r2, [r3, #16]
8002633c:	e1a00000 	nop			@ (mov r0, r0)
80026340:	e1a00000 	nop			@ (mov r0, r0)
80026344:	e24bd004 	sub	sp, fp, #4
80026348:	e8bd8800 	pop	{fp, pc}
8002634c:	800af658 	.word	0x800af658
80026350:	8002a04c 	.word	0x8002a04c
80026354:	80029a14 	.word	0x80029a14

80026358 <argfd>:
80026358:	e92d4800 	push	{fp, lr}
8002635c:	e28db004 	add	fp, sp, #4
80026360:	e24dd018 	sub	sp, sp, #24
80026364:	e50b0010 	str	r0, [fp, #-16]
80026368:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002636c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026370:	e24b300c 	sub	r3, fp, #12
80026374:	e1a01003 	mov	r1, r3
80026378:	e51b0010 	ldr	r0, [fp, #-16]
8002637c:	ebffff60 	bl	80026104 <argint>
80026380:	e1a03000 	mov	r3, r0
80026384:	e3530000 	cmp	r3, #0
80026388:	aa000001 	bge	80026394 <argfd+0x3c>
8002638c:	e3e03000 	mvn	r3, #0
80026390:	ea00001f 	b	80026414 <argfd+0xbc>
80026394:	e51b300c 	ldr	r3, [fp, #-12]
80026398:	e3530000 	cmp	r3, #0
8002639c:	ba00000d 	blt	800263d8 <argfd+0x80>
800263a0:	e51b300c 	ldr	r3, [fp, #-12]
800263a4:	e353000f 	cmp	r3, #15
800263a8:	ca00000a 	bgt	800263d8 <argfd+0x80>
800263ac:	e59f306c 	ldr	r3, [pc, #108]	@ 80026420 <argfd+0xc8>
800263b0:	e5932000 	ldr	r2, [r3]
800263b4:	e51b300c 	ldr	r3, [fp, #-12]
800263b8:	e283300a 	add	r3, r3, #10
800263bc:	e1a03103 	lsl	r3, r3, #2
800263c0:	e0823003 	add	r3, r2, r3
800263c4:	e5933004 	ldr	r3, [r3, #4]
800263c8:	e50b3008 	str	r3, [fp, #-8]
800263cc:	e51b3008 	ldr	r3, [fp, #-8]
800263d0:	e3530000 	cmp	r3, #0
800263d4:	1a000001 	bne	800263e0 <argfd+0x88>
800263d8:	e3e03000 	mvn	r3, #0
800263dc:	ea00000c 	b	80026414 <argfd+0xbc>
800263e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263e4:	e3530000 	cmp	r3, #0
800263e8:	0a000002 	beq	800263f8 <argfd+0xa0>
800263ec:	e51b200c 	ldr	r2, [fp, #-12]
800263f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800263f4:	e5832000 	str	r2, [r3]
800263f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800263fc:	e3530000 	cmp	r3, #0
80026400:	0a000002 	beq	80026410 <argfd+0xb8>
80026404:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026408:	e51b2008 	ldr	r2, [fp, #-8]
8002640c:	e5832000 	str	r2, [r3]
80026410:	e3a03000 	mov	r3, #0
80026414:	e1a00003 	mov	r0, r3
80026418:	e24bd004 	sub	sp, fp, #4
8002641c:	e8bd8800 	pop	{fp, pc}
80026420:	800af658 	.word	0x800af658

80026424 <fdalloc>:
80026424:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80026428:	e28db000 	add	fp, sp, #0
8002642c:	e24dd014 	sub	sp, sp, #20
80026430:	e50b0010 	str	r0, [fp, #-16]
80026434:	e3a03000 	mov	r3, #0
80026438:	e50b3008 	str	r3, [fp, #-8]
8002643c:	ea000015 	b	80026498 <fdalloc+0x74>
80026440:	e59f3070 	ldr	r3, [pc, #112]	@ 800264b8 <fdalloc+0x94>
80026444:	e5932000 	ldr	r2, [r3]
80026448:	e51b3008 	ldr	r3, [fp, #-8]
8002644c:	e283300a 	add	r3, r3, #10
80026450:	e1a03103 	lsl	r3, r3, #2
80026454:	e0823003 	add	r3, r2, r3
80026458:	e5933004 	ldr	r3, [r3, #4]
8002645c:	e3530000 	cmp	r3, #0
80026460:	1a000009 	bne	8002648c <fdalloc+0x68>
80026464:	e59f304c 	ldr	r3, [pc, #76]	@ 800264b8 <fdalloc+0x94>
80026468:	e5932000 	ldr	r2, [r3]
8002646c:	e51b3008 	ldr	r3, [fp, #-8]
80026470:	e283300a 	add	r3, r3, #10
80026474:	e1a03103 	lsl	r3, r3, #2
80026478:	e0823003 	add	r3, r2, r3
8002647c:	e51b2010 	ldr	r2, [fp, #-16]
80026480:	e5832004 	str	r2, [r3, #4]
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	ea000006 	b	800264a8 <fdalloc+0x84>
8002648c:	e51b3008 	ldr	r3, [fp, #-8]
80026490:	e2833001 	add	r3, r3, #1
80026494:	e50b3008 	str	r3, [fp, #-8]
80026498:	e51b3008 	ldr	r3, [fp, #-8]
8002649c:	e353000f 	cmp	r3, #15
800264a0:	daffffe6 	ble	80026440 <fdalloc+0x1c>
800264a4:	e3e03000 	mvn	r3, #0
800264a8:	e1a00003 	mov	r0, r3
800264ac:	e28bd000 	add	sp, fp, #0
800264b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800264b4:	e12fff1e 	bx	lr
800264b8:	800af658 	.word	0x800af658

800264bc <sys_dup>:
800264bc:	e92d4800 	push	{fp, lr}
800264c0:	e28db004 	add	fp, sp, #4
800264c4:	e24dd008 	sub	sp, sp, #8
800264c8:	e24b300c 	sub	r3, fp, #12
800264cc:	e1a02003 	mov	r2, r3
800264d0:	e3a01000 	mov	r1, #0
800264d4:	e3a00000 	mov	r0, #0
800264d8:	ebffff9e 	bl	80026358 <argfd>
800264dc:	e1a03000 	mov	r3, r0
800264e0:	e3530000 	cmp	r3, #0
800264e4:	aa000001 	bge	800264f0 <sys_dup+0x34>
800264e8:	e3e03000 	mvn	r3, #0
800264ec:	ea00000c 	b	80026524 <sys_dup+0x68>
800264f0:	e51b300c 	ldr	r3, [fp, #-12]
800264f4:	e1a00003 	mov	r0, r3
800264f8:	ebffffc9 	bl	80026424 <fdalloc>
800264fc:	e50b0008 	str	r0, [fp, #-8]
80026500:	e51b3008 	ldr	r3, [fp, #-8]
80026504:	e3530000 	cmp	r3, #0
80026508:	aa000001 	bge	80026514 <sys_dup+0x58>
8002650c:	e3e03000 	mvn	r3, #0
80026510:	ea000003 	b	80026524 <sys_dup+0x68>
80026514:	e51b300c 	ldr	r3, [fp, #-12]
80026518:	e1a00003 	mov	r0, r3
8002651c:	ebfff0a0 	bl	800227a4 <filedup>
80026520:	e51b3008 	ldr	r3, [fp, #-8]
80026524:	e1a00003 	mov	r0, r3
80026528:	e24bd004 	sub	sp, fp, #4
8002652c:	e8bd8800 	pop	{fp, pc}

80026530 <sys_read>:
80026530:	e92d4800 	push	{fp, lr}
80026534:	e28db004 	add	fp, sp, #4
80026538:	e24dd010 	sub	sp, sp, #16
8002653c:	e24b3008 	sub	r3, fp, #8
80026540:	e1a02003 	mov	r2, r3
80026544:	e3a01000 	mov	r1, #0
80026548:	e3a00000 	mov	r0, #0
8002654c:	ebffff81 	bl	80026358 <argfd>
80026550:	e1a03000 	mov	r3, r0
80026554:	e3530000 	cmp	r3, #0
80026558:	ba00000e 	blt	80026598 <sys_read+0x68>
8002655c:	e24b300c 	sub	r3, fp, #12
80026560:	e1a01003 	mov	r1, r3
80026564:	e3a00002 	mov	r0, #2
80026568:	ebfffee5 	bl	80026104 <argint>
8002656c:	e1a03000 	mov	r3, r0
80026570:	e3530000 	cmp	r3, #0
80026574:	ba000007 	blt	80026598 <sys_read+0x68>
80026578:	e51b200c 	ldr	r2, [fp, #-12]
8002657c:	e24b3010 	sub	r3, fp, #16
80026580:	e1a01003 	mov	r1, r3
80026584:	e3a00001 	mov	r0, #1
80026588:	ebfffef8 	bl	80026170 <argptr>
8002658c:	e1a03000 	mov	r3, r0
80026590:	e3530000 	cmp	r3, #0
80026594:	aa000001 	bge	800265a0 <sys_read+0x70>
80026598:	e3e03000 	mvn	r3, #0
8002659c:	ea000005 	b	800265b8 <sys_read+0x88>
800265a0:	e51b3008 	ldr	r3, [fp, #-8]
800265a4:	e51b1010 	ldr	r1, [fp, #-16]
800265a8:	e51b200c 	ldr	r2, [fp, #-12]
800265ac:	e1a00003 	mov	r0, r3
800265b0:	ebfff0ec 	bl	80022968 <fileread>
800265b4:	e1a03000 	mov	r3, r0
800265b8:	e1a00003 	mov	r0, r3
800265bc:	e24bd004 	sub	sp, fp, #4
800265c0:	e8bd8800 	pop	{fp, pc}

800265c4 <sys_write>:
800265c4:	e92d4800 	push	{fp, lr}
800265c8:	e28db004 	add	fp, sp, #4
800265cc:	e24dd010 	sub	sp, sp, #16
800265d0:	e24b3008 	sub	r3, fp, #8
800265d4:	e1a02003 	mov	r2, r3
800265d8:	e3a01000 	mov	r1, #0
800265dc:	e3a00000 	mov	r0, #0
800265e0:	ebffff5c 	bl	80026358 <argfd>
800265e4:	e1a03000 	mov	r3, r0
800265e8:	e3530000 	cmp	r3, #0
800265ec:	ba00000e 	blt	8002662c <sys_write+0x68>
800265f0:	e24b300c 	sub	r3, fp, #12
800265f4:	e1a01003 	mov	r1, r3
800265f8:	e3a00002 	mov	r0, #2
800265fc:	ebfffec0 	bl	80026104 <argint>
80026600:	e1a03000 	mov	r3, r0
80026604:	e3530000 	cmp	r3, #0
80026608:	ba000007 	blt	8002662c <sys_write+0x68>
8002660c:	e51b200c 	ldr	r2, [fp, #-12]
80026610:	e24b3010 	sub	r3, fp, #16
80026614:	e1a01003 	mov	r1, r3
80026618:	e3a00001 	mov	r0, #1
8002661c:	ebfffed3 	bl	80026170 <argptr>
80026620:	e1a03000 	mov	r3, r0
80026624:	e3530000 	cmp	r3, #0
80026628:	aa000001 	bge	80026634 <sys_write+0x70>
8002662c:	e3e03000 	mvn	r3, #0
80026630:	ea000005 	b	8002664c <sys_write+0x88>
80026634:	e51b3008 	ldr	r3, [fp, #-8]
80026638:	e51b1010 	ldr	r1, [fp, #-16]
8002663c:	e51b200c 	ldr	r2, [fp, #-12]
80026640:	e1a00003 	mov	r0, r3
80026644:	ebfff104 	bl	80022a5c <filewrite>
80026648:	e1a03000 	mov	r3, r0
8002664c:	e1a00003 	mov	r0, r3
80026650:	e24bd004 	sub	sp, fp, #4
80026654:	e8bd8800 	pop	{fp, pc}

80026658 <sys_close>:
80026658:	e92d4800 	push	{fp, lr}
8002665c:	e28db004 	add	fp, sp, #4
80026660:	e24dd008 	sub	sp, sp, #8
80026664:	e24b200c 	sub	r2, fp, #12
80026668:	e24b3008 	sub	r3, fp, #8
8002666c:	e1a01003 	mov	r1, r3
80026670:	e3a00000 	mov	r0, #0
80026674:	ebffff37 	bl	80026358 <argfd>
80026678:	e1a03000 	mov	r3, r0
8002667c:	e3530000 	cmp	r3, #0
80026680:	aa000001 	bge	8002668c <sys_close+0x34>
80026684:	e3e03000 	mvn	r3, #0
80026688:	ea00000b 	b	800266bc <sys_close+0x64>
8002668c:	e59f3034 	ldr	r3, [pc, #52]	@ 800266c8 <sys_close+0x70>
80026690:	e5932000 	ldr	r2, [r3]
80026694:	e51b3008 	ldr	r3, [fp, #-8]
80026698:	e283300a 	add	r3, r3, #10
8002669c:	e1a03103 	lsl	r3, r3, #2
800266a0:	e0823003 	add	r3, r2, r3
800266a4:	e3a02000 	mov	r2, #0
800266a8:	e5832004 	str	r2, [r3, #4]
800266ac:	e51b300c 	ldr	r3, [fp, #-12]
800266b0:	e1a00003 	mov	r0, r3
800266b4:	ebfff053 	bl	80022808 <fileclose>
800266b8:	e3a03000 	mov	r3, #0
800266bc:	e1a00003 	mov	r0, r3
800266c0:	e24bd004 	sub	sp, fp, #4
800266c4:	e8bd8800 	pop	{fp, pc}
800266c8:	800af658 	.word	0x800af658

800266cc <sys_fstat>:
800266cc:	e92d4800 	push	{fp, lr}
800266d0:	e28db004 	add	fp, sp, #4
800266d4:	e24dd008 	sub	sp, sp, #8
800266d8:	e24b3008 	sub	r3, fp, #8
800266dc:	e1a02003 	mov	r2, r3
800266e0:	e3a01000 	mov	r1, #0
800266e4:	e3a00000 	mov	r0, #0
800266e8:	ebffff1a 	bl	80026358 <argfd>
800266ec:	e1a03000 	mov	r3, r0
800266f0:	e3530000 	cmp	r3, #0
800266f4:	ba000007 	blt	80026718 <sys_fstat+0x4c>
800266f8:	e24b300c 	sub	r3, fp, #12
800266fc:	e3a02014 	mov	r2, #20
80026700:	e1a01003 	mov	r1, r3
80026704:	e3a00001 	mov	r0, #1
80026708:	ebfffe98 	bl	80026170 <argptr>
8002670c:	e1a03000 	mov	r3, r0
80026710:	e3530000 	cmp	r3, #0
80026714:	aa000001 	bge	80026720 <sys_fstat+0x54>
80026718:	e3e03000 	mvn	r3, #0
8002671c:	ea000005 	b	80026738 <sys_fstat+0x6c>
80026720:	e51b3008 	ldr	r3, [fp, #-8]
80026724:	e51b200c 	ldr	r2, [fp, #-12]
80026728:	e1a01002 	mov	r1, r2
8002672c:	e1a00003 	mov	r0, r3
80026730:	ebfff070 	bl	800228f8 <filestat>
80026734:	e1a03000 	mov	r3, r0
80026738:	e1a00003 	mov	r0, r3
8002673c:	e24bd004 	sub	sp, fp, #4
80026740:	e8bd8800 	pop	{fp, pc}

80026744 <sys_link>:
80026744:	e92d4800 	push	{fp, lr}
80026748:	e28db004 	add	fp, sp, #4
8002674c:	e24dd020 	sub	sp, sp, #32
80026750:	e24b3024 	sub	r3, fp, #36	@ 0x24
80026754:	e1a01003 	mov	r1, r3
80026758:	e3a00000 	mov	r0, #0
8002675c:	ebfffeac 	bl	80026214 <argstr>
80026760:	e1a03000 	mov	r3, r0
80026764:	e3530000 	cmp	r3, #0
80026768:	ba000006 	blt	80026788 <sys_link+0x44>
8002676c:	e24b3020 	sub	r3, fp, #32
80026770:	e1a01003 	mov	r1, r3
80026774:	e3a00001 	mov	r0, #1
80026778:	ebfffea5 	bl	80026214 <argstr>
8002677c:	e1a03000 	mov	r3, r0
80026780:	e3530000 	cmp	r3, #0
80026784:	aa000001 	bge	80026790 <sys_link+0x4c>
80026788:	e3e03000 	mvn	r3, #0
8002678c:	ea000055 	b	800268e8 <sys_link+0x1a4>
80026790:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80026794:	e1a00003 	mov	r0, r3
80026798:	ebfff6b8 	bl	80024280 <namei>
8002679c:	e50b0008 	str	r0, [fp, #-8]
800267a0:	e51b3008 	ldr	r3, [fp, #-8]
800267a4:	e3530000 	cmp	r3, #0
800267a8:	1a000001 	bne	800267b4 <sys_link+0x70>
800267ac:	e3e03000 	mvn	r3, #0
800267b0:	ea00004c 	b	800268e8 <sys_link+0x1a4>
800267b4:	ebfff78a 	bl	800245e4 <begin_trans>
800267b8:	e51b0008 	ldr	r0, [fp, #-8]
800267bc:	ebfff2dc 	bl	80023334 <ilock>
800267c0:	e51b3008 	ldr	r3, [fp, #-8]
800267c4:	e1d331f0 	ldrsh	r3, [r3, #16]
800267c8:	e3530001 	cmp	r3, #1
800267cc:	1a000004 	bne	800267e4 <sys_link+0xa0>
800267d0:	e51b0008 	ldr	r0, [fp, #-8]
800267d4:	ebfff397 	bl	80023638 <iunlockput>
800267d8:	ebfff795 	bl	80024634 <commit_trans>
800267dc:	e3e03000 	mvn	r3, #0
800267e0:	ea000040 	b	800268e8 <sys_link+0x1a4>
800267e4:	e51b3008 	ldr	r3, [fp, #-8]
800267e8:	e1d331f6 	ldrsh	r3, [r3, #22]
800267ec:	e6ff3073 	uxth	r3, r3
800267f0:	e2833001 	add	r3, r3, #1
800267f4:	e6ff3073 	uxth	r3, r3
800267f8:	e6bf2073 	sxth	r2, r3
800267fc:	e51b3008 	ldr	r3, [fp, #-8]
80026800:	e1c321b6 	strh	r2, [r3, #22]
80026804:	e51b0008 	ldr	r0, [fp, #-8]
80026808:	ebfff22f 	bl	800230cc <iupdate>
8002680c:	e51b0008 	ldr	r0, [fp, #-8]
80026810:	ebfff32b 	bl	800234c4 <iunlock>
80026814:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026818:	e24b201c 	sub	r2, fp, #28
8002681c:	e1a01002 	mov	r1, r2
80026820:	e1a00003 	mov	r0, r3
80026824:	ebfff6a2 	bl	800242b4 <nameiparent>
80026828:	e50b000c 	str	r0, [fp, #-12]
8002682c:	e51b300c 	ldr	r3, [fp, #-12]
80026830:	e3530000 	cmp	r3, #0
80026834:	0a00001a 	beq	800268a4 <sys_link+0x160>
80026838:	e51b000c 	ldr	r0, [fp, #-12]
8002683c:	ebfff2bc 	bl	80023334 <ilock>
80026840:	e51b300c 	ldr	r3, [fp, #-12]
80026844:	e5932000 	ldr	r2, [r3]
80026848:	e51b3008 	ldr	r3, [fp, #-8]
8002684c:	e5933000 	ldr	r3, [r3]
80026850:	e1520003 	cmp	r2, r3
80026854:	1a000008 	bne	8002687c <sys_link+0x138>
80026858:	e51b3008 	ldr	r3, [fp, #-8]
8002685c:	e5932004 	ldr	r2, [r3, #4]
80026860:	e24b301c 	sub	r3, fp, #28
80026864:	e1a01003 	mov	r1, r3
80026868:	e51b000c 	ldr	r0, [fp, #-12]
8002686c:	ebfff5ad 	bl	80023f28 <dirlink>
80026870:	e1a03000 	mov	r3, r0
80026874:	e3530000 	cmp	r3, #0
80026878:	aa000002 	bge	80026888 <sys_link+0x144>
8002687c:	e51b000c 	ldr	r0, [fp, #-12]
80026880:	ebfff36c 	bl	80023638 <iunlockput>
80026884:	ea000007 	b	800268a8 <sys_link+0x164>
80026888:	e51b000c 	ldr	r0, [fp, #-12]
8002688c:	ebfff369 	bl	80023638 <iunlockput>
80026890:	e51b0008 	ldr	r0, [fp, #-8]
80026894:	ebfff32c 	bl	8002354c <iput>
80026898:	ebfff765 	bl	80024634 <commit_trans>
8002689c:	e3a03000 	mov	r3, #0
800268a0:	ea000010 	b	800268e8 <sys_link+0x1a4>
800268a4:	e1a00000 	nop			@ (mov r0, r0)
800268a8:	e51b0008 	ldr	r0, [fp, #-8]
800268ac:	ebfff2a0 	bl	80023334 <ilock>
800268b0:	e51b3008 	ldr	r3, [fp, #-8]
800268b4:	e1d331f6 	ldrsh	r3, [r3, #22]
800268b8:	e6ff3073 	uxth	r3, r3
800268bc:	e2433001 	sub	r3, r3, #1
800268c0:	e6ff3073 	uxth	r3, r3
800268c4:	e6bf2073 	sxth	r2, r3
800268c8:	e51b3008 	ldr	r3, [fp, #-8]
800268cc:	e1c321b6 	strh	r2, [r3, #22]
800268d0:	e51b0008 	ldr	r0, [fp, #-8]
800268d4:	ebfff1fc 	bl	800230cc <iupdate>
800268d8:	e51b0008 	ldr	r0, [fp, #-8]
800268dc:	ebfff355 	bl	80023638 <iunlockput>
800268e0:	ebfff753 	bl	80024634 <commit_trans>
800268e4:	e3e03000 	mvn	r3, #0
800268e8:	e1a00003 	mov	r0, r3
800268ec:	e24bd004 	sub	sp, fp, #4
800268f0:	e8bd8800 	pop	{fp, pc}

800268f4 <isdirempty>:
800268f4:	e92d4800 	push	{fp, lr}
800268f8:	e28db004 	add	fp, sp, #4
800268fc:	e24dd020 	sub	sp, sp, #32
80026900:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026904:	e3a03020 	mov	r3, #32
80026908:	e50b3008 	str	r3, [fp, #-8]
8002690c:	ea000011 	b	80026958 <isdirempty+0x64>
80026910:	e51b2008 	ldr	r2, [fp, #-8]
80026914:	e24b1018 	sub	r1, fp, #24
80026918:	e3a03010 	mov	r3, #16
8002691c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80026920:	ebfff42f 	bl	800239e4 <readi>
80026924:	e1a03000 	mov	r3, r0
80026928:	e3530010 	cmp	r3, #16
8002692c:	0a000001 	beq	80026938 <isdirempty+0x44>
80026930:	e59f0044 	ldr	r0, [pc, #68]	@ 8002697c <isdirempty+0x88>
80026934:	ebffec5c 	bl	80021aac <panic>
80026938:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
8002693c:	e3530000 	cmp	r3, #0
80026940:	0a000001 	beq	8002694c <isdirempty+0x58>
80026944:	e3a03000 	mov	r3, #0
80026948:	ea000008 	b	80026970 <isdirempty+0x7c>
8002694c:	e51b3008 	ldr	r3, [fp, #-8]
80026950:	e2833010 	add	r3, r3, #16
80026954:	e50b3008 	str	r3, [fp, #-8]
80026958:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002695c:	e5932018 	ldr	r2, [r3, #24]
80026960:	e51b3008 	ldr	r3, [fp, #-8]
80026964:	e1520003 	cmp	r2, r3
80026968:	8affffe8 	bhi	80026910 <isdirempty+0x1c>
8002696c:	e3a03001 	mov	r3, #1
80026970:	e1a00003 	mov	r0, r3
80026974:	e24bd004 	sub	sp, fp, #4
80026978:	e8bd8800 	pop	{fp, pc}
8002697c:	80029a30 	.word	0x80029a30

80026980 <sys_unlink>:
80026980:	e92d4800 	push	{fp, lr}
80026984:	e28db004 	add	fp, sp, #4
80026988:	e24dd030 	sub	sp, sp, #48	@ 0x30
8002698c:	e24b3030 	sub	r3, fp, #48	@ 0x30
80026990:	e1a01003 	mov	r1, r3
80026994:	e3a00000 	mov	r0, #0
80026998:	ebfffe1d 	bl	80026214 <argstr>
8002699c:	e1a03000 	mov	r3, r0
800269a0:	e3530000 	cmp	r3, #0
800269a4:	aa000001 	bge	800269b0 <sys_unlink+0x30>
800269a8:	e3e03000 	mvn	r3, #0
800269ac:	ea00006d 	b	80026b68 <sys_unlink+0x1e8>
800269b0:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
800269b4:	e24b202c 	sub	r2, fp, #44	@ 0x2c
800269b8:	e1a01002 	mov	r1, r2
800269bc:	e1a00003 	mov	r0, r3
800269c0:	ebfff63b 	bl	800242b4 <nameiparent>
800269c4:	e50b0008 	str	r0, [fp, #-8]
800269c8:	e51b3008 	ldr	r3, [fp, #-8]
800269cc:	e3530000 	cmp	r3, #0
800269d0:	1a000001 	bne	800269dc <sys_unlink+0x5c>
800269d4:	e3e03000 	mvn	r3, #0
800269d8:	ea000062 	b	80026b68 <sys_unlink+0x1e8>
800269dc:	ebfff700 	bl	800245e4 <begin_trans>
800269e0:	e51b0008 	ldr	r0, [fp, #-8]
800269e4:	ebfff252 	bl	80023334 <ilock>
800269e8:	e24b302c 	sub	r3, fp, #44	@ 0x2c
800269ec:	e59f1180 	ldr	r1, [pc, #384]	@ 80026b74 <sys_unlink+0x1f4>
800269f0:	e1a00003 	mov	r0, r3
800269f4:	ebfff4fc 	bl	80023dec <namecmp>
800269f8:	e1a03000 	mov	r3, r0
800269fc:	e3530000 	cmp	r3, #0
80026a00:	0a000051 	beq	80026b4c <sys_unlink+0x1cc>
80026a04:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026a08:	e59f1168 	ldr	r1, [pc, #360]	@ 80026b78 <sys_unlink+0x1f8>
80026a0c:	e1a00003 	mov	r0, r3
80026a10:	ebfff4f5 	bl	80023dec <namecmp>
80026a14:	e1a03000 	mov	r3, r0
80026a18:	e3530000 	cmp	r3, #0
80026a1c:	0a00004a 	beq	80026b4c <sys_unlink+0x1cc>
80026a20:	e24b2034 	sub	r2, fp, #52	@ 0x34
80026a24:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026a28:	e1a01003 	mov	r1, r3
80026a2c:	e51b0008 	ldr	r0, [fp, #-8]
80026a30:	ebfff4fa 	bl	80023e20 <dirlookup>
80026a34:	e50b000c 	str	r0, [fp, #-12]
80026a38:	e51b300c 	ldr	r3, [fp, #-12]
80026a3c:	e3530000 	cmp	r3, #0
80026a40:	0a000043 	beq	80026b54 <sys_unlink+0x1d4>
80026a44:	e51b000c 	ldr	r0, [fp, #-12]
80026a48:	ebfff239 	bl	80023334 <ilock>
80026a4c:	e51b300c 	ldr	r3, [fp, #-12]
80026a50:	e1d331f6 	ldrsh	r3, [r3, #22]
80026a54:	e3530000 	cmp	r3, #0
80026a58:	ca000001 	bgt	80026a64 <sys_unlink+0xe4>
80026a5c:	e59f0118 	ldr	r0, [pc, #280]	@ 80026b7c <sys_unlink+0x1fc>
80026a60:	ebffec11 	bl	80021aac <panic>
80026a64:	e51b300c 	ldr	r3, [fp, #-12]
80026a68:	e1d331f0 	ldrsh	r3, [r3, #16]
80026a6c:	e3530001 	cmp	r3, #1
80026a70:	1a000007 	bne	80026a94 <sys_unlink+0x114>
80026a74:	e51b000c 	ldr	r0, [fp, #-12]
80026a78:	ebffff9d 	bl	800268f4 <isdirempty>
80026a7c:	e1a03000 	mov	r3, r0
80026a80:	e3530000 	cmp	r3, #0
80026a84:	1a000002 	bne	80026a94 <sys_unlink+0x114>
80026a88:	e51b000c 	ldr	r0, [fp, #-12]
80026a8c:	ebfff2e9 	bl	80023638 <iunlockput>
80026a90:	ea000030 	b	80026b58 <sys_unlink+0x1d8>
80026a94:	e24b301c 	sub	r3, fp, #28
80026a98:	e3a02010 	mov	r2, #16
80026a9c:	e3a01000 	mov	r1, #0
80026aa0:	e1a00003 	mov	r0, r3
80026aa4:	ebffe555 	bl	80020000 <memset>
80026aa8:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026aac:	e24b101c 	sub	r1, fp, #28
80026ab0:	e3a03010 	mov	r3, #16
80026ab4:	e51b0008 	ldr	r0, [fp, #-8]
80026ab8:	ebfff444 	bl	80023bd0 <writei>
80026abc:	e1a03000 	mov	r3, r0
80026ac0:	e3530010 	cmp	r3, #16
80026ac4:	0a000001 	beq	80026ad0 <sys_unlink+0x150>
80026ac8:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026b80 <sys_unlink+0x200>
80026acc:	ebffebf6 	bl	80021aac <panic>
80026ad0:	e51b300c 	ldr	r3, [fp, #-12]
80026ad4:	e1d331f0 	ldrsh	r3, [r3, #16]
80026ad8:	e3530001 	cmp	r3, #1
80026adc:	1a000009 	bne	80026b08 <sys_unlink+0x188>
80026ae0:	e51b3008 	ldr	r3, [fp, #-8]
80026ae4:	e1d331f6 	ldrsh	r3, [r3, #22]
80026ae8:	e6ff3073 	uxth	r3, r3
80026aec:	e2433001 	sub	r3, r3, #1
80026af0:	e6ff3073 	uxth	r3, r3
80026af4:	e6bf2073 	sxth	r2, r3
80026af8:	e51b3008 	ldr	r3, [fp, #-8]
80026afc:	e1c321b6 	strh	r2, [r3, #22]
80026b00:	e51b0008 	ldr	r0, [fp, #-8]
80026b04:	ebfff170 	bl	800230cc <iupdate>
80026b08:	e51b0008 	ldr	r0, [fp, #-8]
80026b0c:	ebfff2c9 	bl	80023638 <iunlockput>
80026b10:	e51b300c 	ldr	r3, [fp, #-12]
80026b14:	e1d331f6 	ldrsh	r3, [r3, #22]
80026b18:	e6ff3073 	uxth	r3, r3
80026b1c:	e2433001 	sub	r3, r3, #1
80026b20:	e6ff3073 	uxth	r3, r3
80026b24:	e6bf2073 	sxth	r2, r3
80026b28:	e51b300c 	ldr	r3, [fp, #-12]
80026b2c:	e1c321b6 	strh	r2, [r3, #22]
80026b30:	e51b000c 	ldr	r0, [fp, #-12]
80026b34:	ebfff164 	bl	800230cc <iupdate>
80026b38:	e51b000c 	ldr	r0, [fp, #-12]
80026b3c:	ebfff2bd 	bl	80023638 <iunlockput>
80026b40:	ebfff6bb 	bl	80024634 <commit_trans>
80026b44:	e3a03000 	mov	r3, #0
80026b48:	ea000006 	b	80026b68 <sys_unlink+0x1e8>
80026b4c:	e1a00000 	nop			@ (mov r0, r0)
80026b50:	ea000000 	b	80026b58 <sys_unlink+0x1d8>
80026b54:	e1a00000 	nop			@ (mov r0, r0)
80026b58:	e51b0008 	ldr	r0, [fp, #-8]
80026b5c:	ebfff2b5 	bl	80023638 <iunlockput>
80026b60:	ebfff6b3 	bl	80024634 <commit_trans>
80026b64:	e3e03000 	mvn	r3, #0
80026b68:	e1a00003 	mov	r0, r3
80026b6c:	e24bd004 	sub	sp, fp, #4
80026b70:	e8bd8800 	pop	{fp, pc}
80026b74:	80029a44 	.word	0x80029a44
80026b78:	80029a48 	.word	0x80029a48
80026b7c:	80029a4c 	.word	0x80029a4c
80026b80:	80029a60 	.word	0x80029a60

80026b84 <create>:
80026b84:	e92d4800 	push	{fp, lr}
80026b88:	e28db004 	add	fp, sp, #4
80026b8c:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026b90:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80026b94:	e1a00001 	mov	r0, r1
80026b98:	e1a01002 	mov	r1, r2
80026b9c:	e1a02003 	mov	r2, r3
80026ba0:	e1a03000 	mov	r3, r0
80026ba4:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026ba8:	e1a03001 	mov	r3, r1
80026bac:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026bb0:	e1a03002 	mov	r3, r2
80026bb4:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026bb8:	e24b3020 	sub	r3, fp, #32
80026bbc:	e1a01003 	mov	r1, r3
80026bc0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80026bc4:	ebfff5ba 	bl	800242b4 <nameiparent>
80026bc8:	e50b0008 	str	r0, [fp, #-8]
80026bcc:	e51b3008 	ldr	r3, [fp, #-8]
80026bd0:	e3530000 	cmp	r3, #0
80026bd4:	1a000001 	bne	80026be0 <create+0x5c>
80026bd8:	e3a03000 	mov	r3, #0
80026bdc:	ea000063 	b	80026d70 <create+0x1ec>
80026be0:	e51b0008 	ldr	r0, [fp, #-8]
80026be4:	ebfff1d2 	bl	80023334 <ilock>
80026be8:	e24b2010 	sub	r2, fp, #16
80026bec:	e24b3020 	sub	r3, fp, #32
80026bf0:	e1a01003 	mov	r1, r3
80026bf4:	e51b0008 	ldr	r0, [fp, #-8]
80026bf8:	ebfff488 	bl	80023e20 <dirlookup>
80026bfc:	e50b000c 	str	r0, [fp, #-12]
80026c00:	e51b300c 	ldr	r3, [fp, #-12]
80026c04:	e3530000 	cmp	r3, #0
80026c08:	0a000010 	beq	80026c50 <create+0xcc>
80026c0c:	e51b0008 	ldr	r0, [fp, #-8]
80026c10:	ebfff288 	bl	80023638 <iunlockput>
80026c14:	e51b000c 	ldr	r0, [fp, #-12]
80026c18:	ebfff1c5 	bl	80023334 <ilock>
80026c1c:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026c20:	e3530002 	cmp	r3, #2
80026c24:	1a000005 	bne	80026c40 <create+0xbc>
80026c28:	e51b300c 	ldr	r3, [fp, #-12]
80026c2c:	e1d331f0 	ldrsh	r3, [r3, #16]
80026c30:	e3530002 	cmp	r3, #2
80026c34:	1a000001 	bne	80026c40 <create+0xbc>
80026c38:	e51b300c 	ldr	r3, [fp, #-12]
80026c3c:	ea00004b 	b	80026d70 <create+0x1ec>
80026c40:	e51b000c 	ldr	r0, [fp, #-12]
80026c44:	ebfff27b 	bl	80023638 <iunlockput>
80026c48:	e3a03000 	mov	r3, #0
80026c4c:	ea000047 	b	80026d70 <create+0x1ec>
80026c50:	e51b3008 	ldr	r3, [fp, #-8]
80026c54:	e5933000 	ldr	r3, [r3]
80026c58:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80026c5c:	e1a01002 	mov	r1, r2
80026c60:	e1a00003 	mov	r0, r3
80026c64:	ebfff0d8 	bl	80022fcc <ialloc>
80026c68:	e50b000c 	str	r0, [fp, #-12]
80026c6c:	e51b300c 	ldr	r3, [fp, #-12]
80026c70:	e3530000 	cmp	r3, #0
80026c74:	1a000001 	bne	80026c80 <create+0xfc>
80026c78:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026d7c <create+0x1f8>
80026c7c:	ebffeb8a 	bl	80021aac <panic>
80026c80:	e51b000c 	ldr	r0, [fp, #-12]
80026c84:	ebfff1aa 	bl	80023334 <ilock>
80026c88:	e51b300c 	ldr	r3, [fp, #-12]
80026c8c:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80026c90:	e1c321b2 	strh	r2, [r3, #18]
80026c94:	e51b300c 	ldr	r3, [fp, #-12]
80026c98:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80026c9c:	e1c321b4 	strh	r2, [r3, #20]
80026ca0:	e51b300c 	ldr	r3, [fp, #-12]
80026ca4:	e3a02001 	mov	r2, #1
80026ca8:	e1c321b6 	strh	r2, [r3, #22]
80026cac:	e51b000c 	ldr	r0, [fp, #-12]
80026cb0:	ebfff105 	bl	800230cc <iupdate>
80026cb4:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026cb8:	e3530001 	cmp	r3, #1
80026cbc:	1a00001d 	bne	80026d38 <create+0x1b4>
80026cc0:	e51b3008 	ldr	r3, [fp, #-8]
80026cc4:	e1d331f6 	ldrsh	r3, [r3, #22]
80026cc8:	e6ff3073 	uxth	r3, r3
80026ccc:	e2833001 	add	r3, r3, #1
80026cd0:	e6ff3073 	uxth	r3, r3
80026cd4:	e6bf2073 	sxth	r2, r3
80026cd8:	e51b3008 	ldr	r3, [fp, #-8]
80026cdc:	e1c321b6 	strh	r2, [r3, #22]
80026ce0:	e51b0008 	ldr	r0, [fp, #-8]
80026ce4:	ebfff0f8 	bl	800230cc <iupdate>
80026ce8:	e51b300c 	ldr	r3, [fp, #-12]
80026cec:	e5933004 	ldr	r3, [r3, #4]
80026cf0:	e1a02003 	mov	r2, r3
80026cf4:	e59f1084 	ldr	r1, [pc, #132]	@ 80026d80 <create+0x1fc>
80026cf8:	e51b000c 	ldr	r0, [fp, #-12]
80026cfc:	ebfff489 	bl	80023f28 <dirlink>
80026d00:	e1a03000 	mov	r3, r0
80026d04:	e3530000 	cmp	r3, #0
80026d08:	ba000008 	blt	80026d30 <create+0x1ac>
80026d0c:	e51b3008 	ldr	r3, [fp, #-8]
80026d10:	e5933004 	ldr	r3, [r3, #4]
80026d14:	e1a02003 	mov	r2, r3
80026d18:	e59f1064 	ldr	r1, [pc, #100]	@ 80026d84 <create+0x200>
80026d1c:	e51b000c 	ldr	r0, [fp, #-12]
80026d20:	ebfff480 	bl	80023f28 <dirlink>
80026d24:	e1a03000 	mov	r3, r0
80026d28:	e3530000 	cmp	r3, #0
80026d2c:	aa000001 	bge	80026d38 <create+0x1b4>
80026d30:	e59f0050 	ldr	r0, [pc, #80]	@ 80026d88 <create+0x204>
80026d34:	ebffeb5c 	bl	80021aac <panic>
80026d38:	e51b300c 	ldr	r3, [fp, #-12]
80026d3c:	e5932004 	ldr	r2, [r3, #4]
80026d40:	e24b3020 	sub	r3, fp, #32
80026d44:	e1a01003 	mov	r1, r3
80026d48:	e51b0008 	ldr	r0, [fp, #-8]
80026d4c:	ebfff475 	bl	80023f28 <dirlink>
80026d50:	e1a03000 	mov	r3, r0
80026d54:	e3530000 	cmp	r3, #0
80026d58:	aa000001 	bge	80026d64 <create+0x1e0>
80026d5c:	e59f0028 	ldr	r0, [pc, #40]	@ 80026d8c <create+0x208>
80026d60:	ebffeb51 	bl	80021aac <panic>
80026d64:	e51b0008 	ldr	r0, [fp, #-8]
80026d68:	ebfff232 	bl	80023638 <iunlockput>
80026d6c:	e51b300c 	ldr	r3, [fp, #-12]
80026d70:	e1a00003 	mov	r0, r3
80026d74:	e24bd004 	sub	sp, fp, #4
80026d78:	e8bd8800 	pop	{fp, pc}
80026d7c:	80029a70 	.word	0x80029a70
80026d80:	80029a44 	.word	0x80029a44
80026d84:	80029a48 	.word	0x80029a48
80026d88:	80029a80 	.word	0x80029a80
80026d8c:	80029a8c 	.word	0x80029a8c

80026d90 <sys_open>:
80026d90:	e92d4800 	push	{fp, lr}
80026d94:	e28db004 	add	fp, sp, #4
80026d98:	e24dd018 	sub	sp, sp, #24
80026d9c:	e24b3014 	sub	r3, fp, #20
80026da0:	e1a01003 	mov	r1, r3
80026da4:	e3a00000 	mov	r0, #0
80026da8:	ebfffd19 	bl	80026214 <argstr>
80026dac:	e1a03000 	mov	r3, r0
80026db0:	e3530000 	cmp	r3, #0
80026db4:	ba000006 	blt	80026dd4 <sys_open+0x44>
80026db8:	e24b3018 	sub	r3, fp, #24
80026dbc:	e1a01003 	mov	r1, r3
80026dc0:	e3a00001 	mov	r0, #1
80026dc4:	ebfffcce 	bl	80026104 <argint>
80026dc8:	e1a03000 	mov	r3, r0
80026dcc:	e3530000 	cmp	r3, #0
80026dd0:	aa000001 	bge	80026ddc <sys_open+0x4c>
80026dd4:	e3e03000 	mvn	r3, #0
80026dd8:	ea00005d 	b	80026f54 <sys_open+0x1c4>
80026ddc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026de0:	e2033c02 	and	r3, r3, #512	@ 0x200
80026de4:	e3530000 	cmp	r3, #0
80026de8:	0a00000c 	beq	80026e20 <sys_open+0x90>
80026dec:	ebfff5fc 	bl	800245e4 <begin_trans>
80026df0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80026df4:	e3a03000 	mov	r3, #0
80026df8:	e3a02000 	mov	r2, #0
80026dfc:	e3a01002 	mov	r1, #2
80026e00:	ebffff5f 	bl	80026b84 <create>
80026e04:	e50b0008 	str	r0, [fp, #-8]
80026e08:	ebfff609 	bl	80024634 <commit_trans>
80026e0c:	e51b3008 	ldr	r3, [fp, #-8]
80026e10:	e3530000 	cmp	r3, #0
80026e14:	1a000017 	bne	80026e78 <sys_open+0xe8>
80026e18:	e3e03000 	mvn	r3, #0
80026e1c:	ea00004c 	b	80026f54 <sys_open+0x1c4>
80026e20:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026e24:	e1a00003 	mov	r0, r3
80026e28:	ebfff514 	bl	80024280 <namei>
80026e2c:	e50b0008 	str	r0, [fp, #-8]
80026e30:	e51b3008 	ldr	r3, [fp, #-8]
80026e34:	e3530000 	cmp	r3, #0
80026e38:	1a000001 	bne	80026e44 <sys_open+0xb4>
80026e3c:	e3e03000 	mvn	r3, #0
80026e40:	ea000043 	b	80026f54 <sys_open+0x1c4>
80026e44:	e51b0008 	ldr	r0, [fp, #-8]
80026e48:	ebfff139 	bl	80023334 <ilock>
80026e4c:	e51b3008 	ldr	r3, [fp, #-8]
80026e50:	e1d331f0 	ldrsh	r3, [r3, #16]
80026e54:	e3530001 	cmp	r3, #1
80026e58:	1a000006 	bne	80026e78 <sys_open+0xe8>
80026e5c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e60:	e3530000 	cmp	r3, #0
80026e64:	0a000003 	beq	80026e78 <sys_open+0xe8>
80026e68:	e51b0008 	ldr	r0, [fp, #-8]
80026e6c:	ebfff1f1 	bl	80023638 <iunlockput>
80026e70:	e3e03000 	mvn	r3, #0
80026e74:	ea000036 	b	80026f54 <sys_open+0x1c4>
80026e78:	ebffee26 	bl	80022718 <filealloc>
80026e7c:	e50b000c 	str	r0, [fp, #-12]
80026e80:	e51b300c 	ldr	r3, [fp, #-12]
80026e84:	e3530000 	cmp	r3, #0
80026e88:	0a000005 	beq	80026ea4 <sys_open+0x114>
80026e8c:	e51b000c 	ldr	r0, [fp, #-12]
80026e90:	ebfffd63 	bl	80026424 <fdalloc>
80026e94:	e50b0010 	str	r0, [fp, #-16]
80026e98:	e51b3010 	ldr	r3, [fp, #-16]
80026e9c:	e3530000 	cmp	r3, #0
80026ea0:	aa000008 	bge	80026ec8 <sys_open+0x138>
80026ea4:	e51b300c 	ldr	r3, [fp, #-12]
80026ea8:	e3530000 	cmp	r3, #0
80026eac:	0a000001 	beq	80026eb8 <sys_open+0x128>
80026eb0:	e51b000c 	ldr	r0, [fp, #-12]
80026eb4:	ebffee53 	bl	80022808 <fileclose>
80026eb8:	e51b0008 	ldr	r0, [fp, #-8]
80026ebc:	ebfff1dd 	bl	80023638 <iunlockput>
80026ec0:	e3e03000 	mvn	r3, #0
80026ec4:	ea000022 	b	80026f54 <sys_open+0x1c4>
80026ec8:	e51b0008 	ldr	r0, [fp, #-8]
80026ecc:	ebfff17c 	bl	800234c4 <iunlock>
80026ed0:	e51b300c 	ldr	r3, [fp, #-12]
80026ed4:	e3a02002 	mov	r2, #2
80026ed8:	e5c32000 	strb	r2, [r3]
80026edc:	e51b300c 	ldr	r3, [fp, #-12]
80026ee0:	e51b2008 	ldr	r2, [fp, #-8]
80026ee4:	e5832010 	str	r2, [r3, #16]
80026ee8:	e51b300c 	ldr	r3, [fp, #-12]
80026eec:	e3a02000 	mov	r2, #0
80026ef0:	e5832014 	str	r2, [r3, #20]
80026ef4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026ef8:	e2033001 	and	r3, r3, #1
80026efc:	e3530000 	cmp	r3, #0
80026f00:	03a03001 	moveq	r3, #1
80026f04:	13a03000 	movne	r3, #0
80026f08:	e6ef3073 	uxtb	r3, r3
80026f0c:	e1a02003 	mov	r2, r3
80026f10:	e51b300c 	ldr	r3, [fp, #-12]
80026f14:	e5c32008 	strb	r2, [r3, #8]
80026f18:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026f1c:	e2033001 	and	r3, r3, #1
80026f20:	e3530000 	cmp	r3, #0
80026f24:	1a000003 	bne	80026f38 <sys_open+0x1a8>
80026f28:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026f2c:	e2033002 	and	r3, r3, #2
80026f30:	e3530000 	cmp	r3, #0
80026f34:	0a000001 	beq	80026f40 <sys_open+0x1b0>
80026f38:	e3a03001 	mov	r3, #1
80026f3c:	ea000000 	b	80026f44 <sys_open+0x1b4>
80026f40:	e3a03000 	mov	r3, #0
80026f44:	e6ef2073 	uxtb	r2, r3
80026f48:	e51b300c 	ldr	r3, [fp, #-12]
80026f4c:	e5c32009 	strb	r2, [r3, #9]
80026f50:	e51b3010 	ldr	r3, [fp, #-16]
80026f54:	e1a00003 	mov	r0, r3
80026f58:	e24bd004 	sub	sp, fp, #4
80026f5c:	e8bd8800 	pop	{fp, pc}

80026f60 <sys_mkdir>:
80026f60:	e92d4800 	push	{fp, lr}
80026f64:	e28db004 	add	fp, sp, #4
80026f68:	e24dd008 	sub	sp, sp, #8
80026f6c:	ebfff59c 	bl	800245e4 <begin_trans>
80026f70:	e24b300c 	sub	r3, fp, #12
80026f74:	e1a01003 	mov	r1, r3
80026f78:	e3a00000 	mov	r0, #0
80026f7c:	ebfffca4 	bl	80026214 <argstr>
80026f80:	e1a03000 	mov	r3, r0
80026f84:	e3530000 	cmp	r3, #0
80026f88:	ba000008 	blt	80026fb0 <sys_mkdir+0x50>
80026f8c:	e51b000c 	ldr	r0, [fp, #-12]
80026f90:	e3a03000 	mov	r3, #0
80026f94:	e3a02000 	mov	r2, #0
80026f98:	e3a01001 	mov	r1, #1
80026f9c:	ebfffef8 	bl	80026b84 <create>
80026fa0:	e50b0008 	str	r0, [fp, #-8]
80026fa4:	e51b3008 	ldr	r3, [fp, #-8]
80026fa8:	e3530000 	cmp	r3, #0
80026fac:	1a000002 	bne	80026fbc <sys_mkdir+0x5c>
80026fb0:	ebfff59f 	bl	80024634 <commit_trans>
80026fb4:	e3e03000 	mvn	r3, #0
80026fb8:	ea000003 	b	80026fcc <sys_mkdir+0x6c>
80026fbc:	e51b0008 	ldr	r0, [fp, #-8]
80026fc0:	ebfff19c 	bl	80023638 <iunlockput>
80026fc4:	ebfff59a 	bl	80024634 <commit_trans>
80026fc8:	e3a03000 	mov	r3, #0
80026fcc:	e1a00003 	mov	r0, r3
80026fd0:	e24bd004 	sub	sp, fp, #4
80026fd4:	e8bd8800 	pop	{fp, pc}

80026fd8 <sys_mknod>:
80026fd8:	e92d4800 	push	{fp, lr}
80026fdc:	e28db004 	add	fp, sp, #4
80026fe0:	e24dd018 	sub	sp, sp, #24
80026fe4:	ebfff57e 	bl	800245e4 <begin_trans>
80026fe8:	e24b3010 	sub	r3, fp, #16
80026fec:	e1a01003 	mov	r1, r3
80026ff0:	e3a00000 	mov	r0, #0
80026ff4:	ebfffc86 	bl	80026214 <argstr>
80026ff8:	e50b0008 	str	r0, [fp, #-8]
80026ffc:	e51b3008 	ldr	r3, [fp, #-8]
80027000:	e3530000 	cmp	r3, #0
80027004:	ba000018 	blt	8002706c <sys_mknod+0x94>
80027008:	e24b3014 	sub	r3, fp, #20
8002700c:	e1a01003 	mov	r1, r3
80027010:	e3a00001 	mov	r0, #1
80027014:	ebfffc3a 	bl	80026104 <argint>
80027018:	e1a03000 	mov	r3, r0
8002701c:	e3530000 	cmp	r3, #0
80027020:	ba000011 	blt	8002706c <sys_mknod+0x94>
80027024:	e24b3018 	sub	r3, fp, #24
80027028:	e1a01003 	mov	r1, r3
8002702c:	e3a00002 	mov	r0, #2
80027030:	ebfffc33 	bl	80026104 <argint>
80027034:	e1a03000 	mov	r3, r0
80027038:	e3530000 	cmp	r3, #0
8002703c:	ba00000a 	blt	8002706c <sys_mknod+0x94>
80027040:	e51b0010 	ldr	r0, [fp, #-16]
80027044:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027048:	e6bf2073 	sxth	r2, r3
8002704c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027050:	e6bf3073 	sxth	r3, r3
80027054:	e3a01003 	mov	r1, #3
80027058:	ebfffec9 	bl	80026b84 <create>
8002705c:	e50b000c 	str	r0, [fp, #-12]
80027060:	e51b300c 	ldr	r3, [fp, #-12]
80027064:	e3530000 	cmp	r3, #0
80027068:	1a000002 	bne	80027078 <sys_mknod+0xa0>
8002706c:	ebfff570 	bl	80024634 <commit_trans>
80027070:	e3e03000 	mvn	r3, #0
80027074:	ea000003 	b	80027088 <sys_mknod+0xb0>
80027078:	e51b000c 	ldr	r0, [fp, #-12]
8002707c:	ebfff16d 	bl	80023638 <iunlockput>
80027080:	ebfff56b 	bl	80024634 <commit_trans>
80027084:	e3a03000 	mov	r3, #0
80027088:	e1a00003 	mov	r0, r3
8002708c:	e24bd004 	sub	sp, fp, #4
80027090:	e8bd8800 	pop	{fp, pc}

80027094 <sys_chdir>:
80027094:	e92d4800 	push	{fp, lr}
80027098:	e28db004 	add	fp, sp, #4
8002709c:	e24dd008 	sub	sp, sp, #8
800270a0:	e24b300c 	sub	r3, fp, #12
800270a4:	e1a01003 	mov	r1, r3
800270a8:	e3a00000 	mov	r0, #0
800270ac:	ebfffc58 	bl	80026214 <argstr>
800270b0:	e1a03000 	mov	r3, r0
800270b4:	e3530000 	cmp	r3, #0
800270b8:	ba000006 	blt	800270d8 <sys_chdir+0x44>
800270bc:	e51b300c 	ldr	r3, [fp, #-12]
800270c0:	e1a00003 	mov	r0, r3
800270c4:	ebfff46d 	bl	80024280 <namei>
800270c8:	e50b0008 	str	r0, [fp, #-8]
800270cc:	e51b3008 	ldr	r3, [fp, #-8]
800270d0:	e3530000 	cmp	r3, #0
800270d4:	1a000001 	bne	800270e0 <sys_chdir+0x4c>
800270d8:	e3e03000 	mvn	r3, #0
800270dc:	ea000015 	b	80027138 <sys_chdir+0xa4>
800270e0:	e51b0008 	ldr	r0, [fp, #-8]
800270e4:	ebfff092 	bl	80023334 <ilock>
800270e8:	e51b3008 	ldr	r3, [fp, #-8]
800270ec:	e1d331f0 	ldrsh	r3, [r3, #16]
800270f0:	e3530001 	cmp	r3, #1
800270f4:	0a000003 	beq	80027108 <sys_chdir+0x74>
800270f8:	e51b0008 	ldr	r0, [fp, #-8]
800270fc:	ebfff14d 	bl	80023638 <iunlockput>
80027100:	e3e03000 	mvn	r3, #0
80027104:	ea00000b 	b	80027138 <sys_chdir+0xa4>
80027108:	e51b0008 	ldr	r0, [fp, #-8]
8002710c:	ebfff0ec 	bl	800234c4 <iunlock>
80027110:	e59f302c 	ldr	r3, [pc, #44]	@ 80027144 <sys_chdir+0xb0>
80027114:	e5933000 	ldr	r3, [r3]
80027118:	e593306c 	ldr	r3, [r3, #108]	@ 0x6c
8002711c:	e1a00003 	mov	r0, r3
80027120:	ebfff109 	bl	8002354c <iput>
80027124:	e59f3018 	ldr	r3, [pc, #24]	@ 80027144 <sys_chdir+0xb0>
80027128:	e5933000 	ldr	r3, [r3]
8002712c:	e51b2008 	ldr	r2, [fp, #-8]
80027130:	e583206c 	str	r2, [r3, #108]	@ 0x6c
80027134:	e3a03000 	mov	r3, #0
80027138:	e1a00003 	mov	r0, r3
8002713c:	e24bd004 	sub	sp, fp, #4
80027140:	e8bd8800 	pop	{fp, pc}
80027144:	800af658 	.word	0x800af658

80027148 <sys_exec>:
80027148:	e92d4800 	push	{fp, lr}
8002714c:	e28db004 	add	fp, sp, #4
80027150:	e24dd090 	sub	sp, sp, #144	@ 0x90
80027154:	e24b300c 	sub	r3, fp, #12
80027158:	e1a01003 	mov	r1, r3
8002715c:	e3a00000 	mov	r0, #0
80027160:	ebfffc2b 	bl	80026214 <argstr>
80027164:	e1a03000 	mov	r3, r0
80027168:	e3530000 	cmp	r3, #0
8002716c:	ba000006 	blt	8002718c <sys_exec+0x44>
80027170:	e24b3090 	sub	r3, fp, #144	@ 0x90
80027174:	e1a01003 	mov	r1, r3
80027178:	e3a00001 	mov	r0, #1
8002717c:	ebfffbe0 	bl	80026104 <argint>
80027180:	e1a03000 	mov	r3, r0
80027184:	e3530000 	cmp	r3, #0
80027188:	aa000001 	bge	80027194 <sys_exec+0x4c>
8002718c:	e3e03000 	mvn	r3, #0
80027190:	ea00003a 	b	80027280 <sys_exec+0x138>
80027194:	e24b308c 	sub	r3, fp, #140	@ 0x8c
80027198:	e3a02080 	mov	r2, #128	@ 0x80
8002719c:	e3a01000 	mov	r1, #0
800271a0:	e1a00003 	mov	r0, r3
800271a4:	ebffe395 	bl	80020000 <memset>
800271a8:	e3a03000 	mov	r3, #0
800271ac:	e50b3008 	str	r3, [fp, #-8]
800271b0:	e51b3008 	ldr	r3, [fp, #-8]
800271b4:	e353001f 	cmp	r3, #31
800271b8:	9a000001 	bls	800271c4 <sys_exec+0x7c>
800271bc:	e3e03000 	mvn	r3, #0
800271c0:	ea00002e 	b	80027280 <sys_exec+0x138>
800271c4:	e51b3008 	ldr	r3, [fp, #-8]
800271c8:	e1a03103 	lsl	r3, r3, #2
800271cc:	e1a02003 	mov	r2, r3
800271d0:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
800271d4:	e0823003 	add	r3, r2, r3
800271d8:	e24b2094 	sub	r2, fp, #148	@ 0x94
800271dc:	e1a01002 	mov	r1, r2
800271e0:	e1a00003 	mov	r0, r3
800271e4:	ebfffb7a 	bl	80025fd4 <fetchint>
800271e8:	e1a03000 	mov	r3, r0
800271ec:	e3530000 	cmp	r3, #0
800271f0:	aa000001 	bge	800271fc <sys_exec+0xb4>
800271f4:	e3e03000 	mvn	r3, #0
800271f8:	ea000020 	b	80027280 <sys_exec+0x138>
800271fc:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
80027200:	e3530000 	cmp	r3, #0
80027204:	1a00000d 	bne	80027240 <sys_exec+0xf8>
80027208:	e51b3008 	ldr	r3, [fp, #-8]
8002720c:	e1a03103 	lsl	r3, r3, #2
80027210:	e2433004 	sub	r3, r3, #4
80027214:	e083300b 	add	r3, r3, fp
80027218:	e3a02000 	mov	r2, #0
8002721c:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
80027220:	e1a00000 	nop			@ (mov r0, r0)
80027224:	e51b300c 	ldr	r3, [fp, #-12]
80027228:	e24b208c 	sub	r2, fp, #140	@ 0x8c
8002722c:	e1a01002 	mov	r1, r2
80027230:	e1a00003 	mov	r0, r3
80027234:	ebffebfb 	bl	80022228 <exec>
80027238:	e1a03000 	mov	r3, r0
8002723c:	ea00000f 	b	80027280 <sys_exec+0x138>
80027240:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
80027244:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027248:	e51b3008 	ldr	r3, [fp, #-8]
8002724c:	e1a03103 	lsl	r3, r3, #2
80027250:	e0823003 	add	r3, r2, r3
80027254:	e1a01003 	mov	r1, r3
80027258:	ebfffb7b 	bl	8002604c <fetchstr>
8002725c:	e1a03000 	mov	r3, r0
80027260:	e3530000 	cmp	r3, #0
80027264:	aa000001 	bge	80027270 <sys_exec+0x128>
80027268:	e3e03000 	mvn	r3, #0
8002726c:	ea000003 	b	80027280 <sys_exec+0x138>
80027270:	e51b3008 	ldr	r3, [fp, #-8]
80027274:	e2833001 	add	r3, r3, #1
80027278:	e50b3008 	str	r3, [fp, #-8]
8002727c:	eaffffcb 	b	800271b0 <sys_exec+0x68>
80027280:	e1a00003 	mov	r0, r3
80027284:	e24bd004 	sub	sp, fp, #4
80027288:	e8bd8800 	pop	{fp, pc}

8002728c <sys_pipe>:
8002728c:	e92d4800 	push	{fp, lr}
80027290:	e28db004 	add	fp, sp, #4
80027294:	e24dd018 	sub	sp, sp, #24
80027298:	e24b3010 	sub	r3, fp, #16
8002729c:	e3a02008 	mov	r2, #8
800272a0:	e1a01003 	mov	r1, r3
800272a4:	e3a00000 	mov	r0, #0
800272a8:	ebfffbb0 	bl	80026170 <argptr>
800272ac:	e1a03000 	mov	r3, r0
800272b0:	e3530000 	cmp	r3, #0
800272b4:	aa000001 	bge	800272c0 <sys_pipe+0x34>
800272b8:	e3e03000 	mvn	r3, #0
800272bc:	ea000034 	b	80027394 <sys_pipe+0x108>
800272c0:	e24b2018 	sub	r2, fp, #24
800272c4:	e24b3014 	sub	r3, fp, #20
800272c8:	e1a01002 	mov	r1, r2
800272cc:	e1a00003 	mov	r0, r3
800272d0:	ebfff5ea 	bl	80024a80 <pipealloc>
800272d4:	e1a03000 	mov	r3, r0
800272d8:	e3530000 	cmp	r3, #0
800272dc:	aa000001 	bge	800272e8 <sys_pipe+0x5c>
800272e0:	e3e03000 	mvn	r3, #0
800272e4:	ea00002a 	b	80027394 <sys_pipe+0x108>
800272e8:	e3e03000 	mvn	r3, #0
800272ec:	e50b3008 	str	r3, [fp, #-8]
800272f0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800272f4:	e1a00003 	mov	r0, r3
800272f8:	ebfffc49 	bl	80026424 <fdalloc>
800272fc:	e50b0008 	str	r0, [fp, #-8]
80027300:	e51b3008 	ldr	r3, [fp, #-8]
80027304:	e3530000 	cmp	r3, #0
80027308:	ba000006 	blt	80027328 <sys_pipe+0x9c>
8002730c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027310:	e1a00003 	mov	r0, r3
80027314:	ebfffc42 	bl	80026424 <fdalloc>
80027318:	e50b000c 	str	r0, [fp, #-12]
8002731c:	e51b300c 	ldr	r3, [fp, #-12]
80027320:	e3530000 	cmp	r3, #0
80027324:	aa000012 	bge	80027374 <sys_pipe+0xe8>
80027328:	e51b3008 	ldr	r3, [fp, #-8]
8002732c:	e3530000 	cmp	r3, #0
80027330:	ba000007 	blt	80027354 <sys_pipe+0xc8>
80027334:	e59f3064 	ldr	r3, [pc, #100]	@ 800273a0 <sys_pipe+0x114>
80027338:	e5932000 	ldr	r2, [r3]
8002733c:	e51b3008 	ldr	r3, [fp, #-8]
80027340:	e283300a 	add	r3, r3, #10
80027344:	e1a03103 	lsl	r3, r3, #2
80027348:	e0823003 	add	r3, r2, r3
8002734c:	e3a02000 	mov	r2, #0
80027350:	e5832004 	str	r2, [r3, #4]
80027354:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027358:	e1a00003 	mov	r0, r3
8002735c:	ebffed29 	bl	80022808 <fileclose>
80027360:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027364:	e1a00003 	mov	r0, r3
80027368:	ebffed26 	bl	80022808 <fileclose>
8002736c:	e3e03000 	mvn	r3, #0
80027370:	ea000007 	b	80027394 <sys_pipe+0x108>
80027374:	e51b3010 	ldr	r3, [fp, #-16]
80027378:	e51b2008 	ldr	r2, [fp, #-8]
8002737c:	e5832000 	str	r2, [r3]
80027380:	e51b3010 	ldr	r3, [fp, #-16]
80027384:	e2833004 	add	r3, r3, #4
80027388:	e51b200c 	ldr	r2, [fp, #-12]
8002738c:	e5832000 	str	r2, [r3]
80027390:	e3a03000 	mov	r3, #0
80027394:	e1a00003 	mov	r0, r3
80027398:	e24bd004 	sub	sp, fp, #4
8002739c:	e8bd8800 	pop	{fp, pc}
800273a0:	800af658 	.word	0x800af658

800273a4 <sys_fork>:
800273a4:	e92d4800 	push	{fp, lr}
800273a8:	e28db004 	add	fp, sp, #4
800273ac:	ebfff7f8 	bl	80025394 <fork>
800273b0:	e1a03000 	mov	r3, r0
800273b4:	e1a00003 	mov	r0, r3
800273b8:	e8bd8800 	pop	{fp, pc}

800273bc <sys_exit>:
800273bc:	e92d4800 	push	{fp, lr}
800273c0:	e28db004 	add	fp, sp, #4
800273c4:	ebfff86c 	bl	8002557c <exit>
800273c8:	e3a03000 	mov	r3, #0
800273cc:	e1a00003 	mov	r0, r3
800273d0:	e8bd8800 	pop	{fp, pc}

800273d4 <sys_wait>:
800273d4:	e92d4800 	push	{fp, lr}
800273d8:	e28db004 	add	fp, sp, #4
800273dc:	ebfff8ce 	bl	8002571c <wait>
800273e0:	e1a03000 	mov	r3, r0
800273e4:	e1a00003 	mov	r0, r3
800273e8:	e8bd8800 	pop	{fp, pc}

800273ec <sys_kill>:
800273ec:	e92d4800 	push	{fp, lr}
800273f0:	e28db004 	add	fp, sp, #4
800273f4:	e24dd008 	sub	sp, sp, #8
800273f8:	e24b3008 	sub	r3, fp, #8
800273fc:	e1a01003 	mov	r1, r3
80027400:	e3a00000 	mov	r0, #0
80027404:	ebfffb3e 	bl	80026104 <argint>
80027408:	e1a03000 	mov	r3, r0
8002740c:	e3530000 	cmp	r3, #0
80027410:	aa000001 	bge	8002741c <sys_kill+0x30>
80027414:	e3e03000 	mvn	r3, #0
80027418:	ea000003 	b	8002742c <sys_kill+0x40>
8002741c:	e51b3008 	ldr	r3, [fp, #-8]
80027420:	e1a00003 	mov	r0, r3
80027424:	ebfffa01 	bl	80025c30 <kill>
80027428:	e1a03000 	mov	r3, r0
8002742c:	e1a00003 	mov	r0, r3
80027430:	e24bd004 	sub	sp, fp, #4
80027434:	e8bd8800 	pop	{fp, pc}

80027438 <sys_getpid>:
80027438:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002743c:	e28db000 	add	fp, sp, #0
80027440:	e59f3014 	ldr	r3, [pc, #20]	@ 8002745c <sys_getpid+0x24>
80027444:	e5933000 	ldr	r3, [r3]
80027448:	e5933014 	ldr	r3, [r3, #20]
8002744c:	e1a00003 	mov	r0, r3
80027450:	e28bd000 	add	sp, fp, #0
80027454:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027458:	e12fff1e 	bx	lr
8002745c:	800af658 	.word	0x800af658

80027460 <sys_sbrk>:
80027460:	e92d4800 	push	{fp, lr}
80027464:	e28db004 	add	fp, sp, #4
80027468:	e24dd008 	sub	sp, sp, #8
8002746c:	e24b300c 	sub	r3, fp, #12
80027470:	e1a01003 	mov	r1, r3
80027474:	e3a00000 	mov	r0, #0
80027478:	ebfffb21 	bl	80026104 <argint>
8002747c:	e1a03000 	mov	r3, r0
80027480:	e3530000 	cmp	r3, #0
80027484:	aa000001 	bge	80027490 <sys_sbrk+0x30>
80027488:	e3e03000 	mvn	r3, #0
8002748c:	ea00000c 	b	800274c4 <sys_sbrk+0x64>
80027490:	e59f3038 	ldr	r3, [pc, #56]	@ 800274d0 <sys_sbrk+0x70>
80027494:	e5933000 	ldr	r3, [r3]
80027498:	e5933004 	ldr	r3, [r3, #4]
8002749c:	e50b3008 	str	r3, [fp, #-8]
800274a0:	e51b300c 	ldr	r3, [fp, #-12]
800274a4:	e1a00003 	mov	r0, r3
800274a8:	ebfff77e 	bl	800252a8 <growproc>
800274ac:	e1a03000 	mov	r3, r0
800274b0:	e3530000 	cmp	r3, #0
800274b4:	aa000001 	bge	800274c0 <sys_sbrk+0x60>
800274b8:	e3e03000 	mvn	r3, #0
800274bc:	ea000000 	b	800274c4 <sys_sbrk+0x64>
800274c0:	e51b3008 	ldr	r3, [fp, #-8]
800274c4:	e1a00003 	mov	r0, r3
800274c8:	e24bd004 	sub	sp, fp, #4
800274cc:	e8bd8800 	pop	{fp, pc}
800274d0:	800af658 	.word	0x800af658

800274d4 <sys_sleep>:
800274d4:	e92d4800 	push	{fp, lr}
800274d8:	e28db004 	add	fp, sp, #4
800274dc:	e24dd008 	sub	sp, sp, #8
800274e0:	e24b300c 	sub	r3, fp, #12
800274e4:	e1a01003 	mov	r1, r3
800274e8:	e3a00000 	mov	r0, #0
800274ec:	ebfffb04 	bl	80026104 <argint>
800274f0:	e1a03000 	mov	r3, r0
800274f4:	e3530000 	cmp	r3, #0
800274f8:	aa000001 	bge	80027504 <sys_sleep+0x30>
800274fc:	e3e03000 	mvn	r3, #0
80027500:	ea00001b 	b	80027574 <sys_sleep+0xa0>
80027504:	e59f0074 	ldr	r0, [pc, #116]	@ 80027580 <sys_sleep+0xac>
80027508:	ebfffa8c 	bl	80025f40 <acquire>
8002750c:	e59f3070 	ldr	r3, [pc, #112]	@ 80027584 <sys_sleep+0xb0>
80027510:	e5933000 	ldr	r3, [r3]
80027514:	e50b3008 	str	r3, [fp, #-8]
80027518:	ea00000b 	b	8002754c <sys_sleep+0x78>
8002751c:	e59f3064 	ldr	r3, [pc, #100]	@ 80027588 <sys_sleep+0xb4>
80027520:	e5933000 	ldr	r3, [r3]
80027524:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80027528:	e3530000 	cmp	r3, #0
8002752c:	0a000003 	beq	80027540 <sys_sleep+0x6c>
80027530:	e59f0048 	ldr	r0, [pc, #72]	@ 80027580 <sys_sleep+0xac>
80027534:	ebfffa8c 	bl	80025f6c <release>
80027538:	e3e03000 	mvn	r3, #0
8002753c:	ea00000c 	b	80027574 <sys_sleep+0xa0>
80027540:	e59f1038 	ldr	r1, [pc, #56]	@ 80027580 <sys_sleep+0xac>
80027544:	e59f0038 	ldr	r0, [pc, #56]	@ 80027584 <sys_sleep+0xb0>
80027548:	ebfff955 	bl	80025aa4 <sleep>
8002754c:	e59f3030 	ldr	r3, [pc, #48]	@ 80027584 <sys_sleep+0xb0>
80027550:	e5932000 	ldr	r2, [r3]
80027554:	e51b3008 	ldr	r3, [fp, #-8]
80027558:	e0423003 	sub	r3, r2, r3
8002755c:	e51b200c 	ldr	r2, [fp, #-12]
80027560:	e1530002 	cmp	r3, r2
80027564:	3affffec 	bcc	8002751c <sys_sleep+0x48>
80027568:	e59f0010 	ldr	r0, [pc, #16]	@ 80027580 <sys_sleep+0xac>
8002756c:	ebfffa7e 	bl	80025f6c <release>
80027570:	e3a03000 	mov	r3, #0
80027574:	e1a00003 	mov	r0, r3
80027578:	e24bd004 	sub	sp, fp, #4
8002757c:	e8bd8800 	pop	{fp, pc}
80027580:	800af71c 	.word	0x800af71c
80027584:	800af750 	.word	0x800af750
80027588:	800af658 	.word	0x800af658

8002758c <sys_uptime>:
8002758c:	e92d4800 	push	{fp, lr}
80027590:	e28db004 	add	fp, sp, #4
80027594:	e24dd008 	sub	sp, sp, #8
80027598:	e59f0024 	ldr	r0, [pc, #36]	@ 800275c4 <sys_uptime+0x38>
8002759c:	ebfffa67 	bl	80025f40 <acquire>
800275a0:	e59f3020 	ldr	r3, [pc, #32]	@ 800275c8 <sys_uptime+0x3c>
800275a4:	e5933000 	ldr	r3, [r3]
800275a8:	e50b3008 	str	r3, [fp, #-8]
800275ac:	e59f0010 	ldr	r0, [pc, #16]	@ 800275c4 <sys_uptime+0x38>
800275b0:	ebfffa6d 	bl	80025f6c <release>
800275b4:	e51b3008 	ldr	r3, [fp, #-8]
800275b8:	e1a00003 	mov	r0, r3
800275bc:	e24bd004 	sub	sp, fp, #4
800275c0:	e8bd8800 	pop	{fp, pc}
800275c4:	800af71c 	.word	0x800af71c
800275c8:	800af750 	.word	0x800af750

800275cc <sys_ps>:
800275cc:	e92d4800 	push	{fp, lr}
800275d0:	e28db004 	add	fp, sp, #4
800275d4:	ebfff9fa 	bl	80025dc4 <ps>
800275d8:	e3a03000 	mov	r3, #0
800275dc:	e1a00003 	mov	r0, r3
800275e0:	e8bd8800 	pop	{fp, pc}

800275e4 <trap_swi>:
800275e4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800275e8:	e14f2000 	mrs	r2, SPSR
800275ec:	e92d0004 	stmfd	sp!, {r2}
800275f0:	e92d4000 	stmfd	sp!, {lr}
800275f4:	e94d6000 	stmdb	sp, {sp, lr}^
800275f8:	e24dd008 	sub	sp, sp, #8
800275fc:	e1a0000d 	mov	r0, sp
80027600:	eb000054 	bl	80027758 <swi_handler>

80027604 <trapret>:
80027604:	e8dd6000 	ldm	sp, {sp, lr}^
80027608:	e28dd008 	add	sp, sp, #8
8002760c:	e8bd4000 	ldmfd	sp!, {lr}
80027610:	e8bd0004 	ldmfd	sp!, {r2}
80027614:	e16ff002 	msr	SPSR_fsxc, r2
80027618:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

8002761c <trap_irq>:
8002761c:	e24ee004 	sub	lr, lr, #4
80027620:	e92d4007 	push	{r0, r1, r2, lr}
80027624:	e14f1000 	mrs	r1, SPSR
80027628:	e1a0000d 	mov	r0, sp
8002762c:	e28dd010 	add	sp, sp, #16
80027630:	e10f2000 	mrs	r2, CPSR
80027634:	e3c2201f 	bic	r2, r2, #31
80027638:	e3822013 	orr	r2, r2, #19
8002763c:	e12ff002 	msr	CPSR_fsxc, r2
80027640:	e590200c 	ldr	r2, [r0, #12]
80027644:	e92d0004 	stmfd	sp!, {r2}
80027648:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
8002764c:	e8900038 	ldm	r0, {r3, r4, r5}
80027650:	e92d0038 	push	{r3, r4, r5}
80027654:	e92d0002 	stmfd	sp!, {r1}
80027658:	e92d4000 	stmfd	sp!, {lr}
8002765c:	e94d6000 	stmdb	sp, {sp, lr}^
80027660:	e24dd008 	sub	sp, sp, #8
80027664:	e1a0000d 	mov	r0, sp
80027668:	eb000047 	bl	8002778c <irq_handler>
8002766c:	eaffffe4 	b	80027604 <trapret>

80027670 <trap_reset>:
80027670:	e3a0e000 	mov	lr, #0
80027674:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027678:	e14f2000 	mrs	r2, SPSR
8002767c:	e92d0004 	stmfd	sp!, {r2}
80027680:	e92d4000 	stmfd	sp!, {lr}
80027684:	e94d6000 	stmdb	sp, {sp, lr}^
80027688:	e24dd008 	sub	sp, sp, #8
8002768c:	e1a0000d 	mov	r0, sp
80027690:	eb00004f 	bl	800277d4 <reset_handler>
80027694:	eafffffe 	b	80027694 <trap_reset+0x24>

80027698 <trap_und>:
80027698:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002769c:	e14f2000 	mrs	r2, SPSR
800276a0:	e92d0004 	stmfd	sp!, {r2}
800276a4:	e92d4000 	stmfd	sp!, {lr}
800276a8:	e94d6000 	stmdb	sp, {sp, lr}^
800276ac:	e24dd008 	sub	sp, sp, #8
800276b0:	e1a0000d 	mov	r0, sp
800276b4:	eb000054 	bl	8002780c <und_handler>
800276b8:	eafffffe 	b	800276b8 <trap_und+0x20>

800276bc <trap_iabort>:
800276bc:	e24ee004 	sub	lr, lr, #4
800276c0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800276c4:	e14f2000 	mrs	r2, SPSR
800276c8:	e92d0004 	stmfd	sp!, {r2}
800276cc:	e92d4000 	stmfd	sp!, {lr}
800276d0:	e94d6000 	stmdb	sp, {sp, lr}^
800276d4:	e24dd008 	sub	sp, sp, #8
800276d8:	e1a0000d 	mov	r0, sp
800276dc:	eb00006d 	bl	80027898 <iabort_handler>
800276e0:	eafffffe 	b	800276e0 <trap_iabort+0x24>

800276e4 <trap_dabort>:
800276e4:	e24ee008 	sub	lr, lr, #8
800276e8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800276ec:	e14f2000 	mrs	r2, SPSR
800276f0:	e92d0004 	stmfd	sp!, {r2}
800276f4:	e92d4000 	stmfd	sp!, {lr}
800276f8:	e94d6000 	stmdb	sp, {sp, lr}^
800276fc:	e24dd008 	sub	sp, sp, #8
80027700:	e1a0000d 	mov	r0, sp
80027704:	eb00004e 	bl	80027844 <dabort_handler>
80027708:	eafffffe 	b	80027708 <trap_dabort+0x24>

8002770c <trap_na>:
8002770c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027710:	e14f2000 	mrs	r2, SPSR
80027714:	e92d0004 	stmfd	sp!, {r2}
80027718:	e92d4000 	stmfd	sp!, {lr}
8002771c:	e94d6000 	stmdb	sp, {sp, lr}^
80027720:	e24dd008 	sub	sp, sp, #8
80027724:	e1a0000d 	mov	r0, sp
80027728:	eb00006d 	bl	800278e4 <na_handler>
8002772c:	eafffffe 	b	8002772c <trap_na+0x20>

80027730 <trap_fiq>:
80027730:	e24ee004 	sub	lr, lr, #4
80027734:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027738:	e14f2000 	mrs	r2, SPSR
8002773c:	e92d0004 	stmfd	sp!, {r2}
80027740:	e92d4000 	stmfd	sp!, {lr}
80027744:	e94d6000 	stmdb	sp, {sp, lr}^
80027748:	e24dd008 	sub	sp, sp, #8
8002774c:	e1a0000d 	mov	r0, sp
80027750:	eb000071 	bl	8002791c <fiq_handler>
80027754:	eafffffe 	b	80027754 <trap_fiq+0x24>

80027758 <swi_handler>:
80027758:	e92d4800 	push	{fp, lr}
8002775c:	e28db004 	add	fp, sp, #4
80027760:	e24dd008 	sub	sp, sp, #8
80027764:	e50b0008 	str	r0, [fp, #-8]
80027768:	e59f3018 	ldr	r3, [pc, #24]	@ 80027788 <swi_handler+0x30>
8002776c:	e5933000 	ldr	r3, [r3]
80027770:	e51b2008 	ldr	r2, [fp, #-8]
80027774:	e583201c 	str	r2, [r3, #28]
80027778:	ebfffabb 	bl	8002626c <syscall>
8002777c:	e1a00000 	nop			@ (mov r0, r0)
80027780:	e24bd004 	sub	sp, fp, #4
80027784:	e8bd8800 	pop	{fp, pc}
80027788:	800af658 	.word	0x800af658

8002778c <irq_handler>:
8002778c:	e92d4800 	push	{fp, lr}
80027790:	e28db004 	add	fp, sp, #4
80027794:	e24dd008 	sub	sp, sp, #8
80027798:	e50b0008 	str	r0, [fp, #-8]
8002779c:	e59f302c 	ldr	r3, [pc, #44]	@ 800277d0 <irq_handler+0x44>
800277a0:	e5933000 	ldr	r3, [r3]
800277a4:	e3530000 	cmp	r3, #0
800277a8:	0a000003 	beq	800277bc <irq_handler+0x30>
800277ac:	e59f301c 	ldr	r3, [pc, #28]	@ 800277d0 <irq_handler+0x44>
800277b0:	e5933000 	ldr	r3, [r3]
800277b4:	e51b2008 	ldr	r2, [fp, #-8]
800277b8:	e583201c 	str	r2, [r3, #28]
800277bc:	e51b0008 	ldr	r0, [fp, #-8]
800277c0:	eb0004d9 	bl	80028b2c <pic_dispatch>
800277c4:	e1a00000 	nop			@ (mov r0, r0)
800277c8:	e24bd004 	sub	sp, fp, #4
800277cc:	e8bd8800 	pop	{fp, pc}
800277d0:	800af658 	.word	0x800af658

800277d4 <reset_handler>:
800277d4:	e92d4800 	push	{fp, lr}
800277d8:	e28db004 	add	fp, sp, #4
800277dc:	e24dd008 	sub	sp, sp, #8
800277e0:	e50b0008 	str	r0, [fp, #-8]
800277e4:	ebffe355 	bl	80020540 <cli>
800277e8:	e51b3008 	ldr	r3, [fp, #-8]
800277ec:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800277f0:	e1a01003 	mov	r1, r3
800277f4:	e59f000c 	ldr	r0, [pc, #12]	@ 80027808 <reset_handler+0x34>
800277f8:	ebffe825 	bl	80021894 <cprintf>
800277fc:	e1a00000 	nop			@ (mov r0, r0)
80027800:	e24bd004 	sub	sp, fp, #4
80027804:	e8bd8800 	pop	{fp, pc}
80027808:	80029a9c 	.word	0x80029a9c

8002780c <und_handler>:
8002780c:	e92d4800 	push	{fp, lr}
80027810:	e28db004 	add	fp, sp, #4
80027814:	e24dd008 	sub	sp, sp, #8
80027818:	e50b0008 	str	r0, [fp, #-8]
8002781c:	ebffe347 	bl	80020540 <cli>
80027820:	e51b3008 	ldr	r3, [fp, #-8]
80027824:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027828:	e1a01003 	mov	r1, r3
8002782c:	e59f000c 	ldr	r0, [pc, #12]	@ 80027840 <und_handler+0x34>
80027830:	ebffe817 	bl	80021894 <cprintf>
80027834:	e1a00000 	nop			@ (mov r0, r0)
80027838:	e24bd004 	sub	sp, fp, #4
8002783c:	e8bd8800 	pop	{fp, pc}
80027840:	80029ab0 	.word	0x80029ab0

80027844 <dabort_handler>:
80027844:	e92d4800 	push	{fp, lr}
80027848:	e28db004 	add	fp, sp, #4
8002784c:	e24dd010 	sub	sp, sp, #16
80027850:	e50b0010 	str	r0, [fp, #-16]
80027854:	ebffe339 	bl	80020540 <cli>
80027858:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
8002785c:	e50b3008 	str	r3, [fp, #-8]
80027860:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027864:	e50b300c 	str	r3, [fp, #-12]
80027868:	e51b3010 	ldr	r3, [fp, #-16]
8002786c:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80027870:	e51b3008 	ldr	r3, [fp, #-8]
80027874:	e51b200c 	ldr	r2, [fp, #-12]
80027878:	e59f0014 	ldr	r0, [pc, #20]	@ 80027894 <dabort_handler+0x50>
8002787c:	ebffe804 	bl	80021894 <cprintf>
80027880:	e51b0010 	ldr	r0, [fp, #-16]
80027884:	eb0000b3 	bl	80027b58 <dump_trapframe>
80027888:	e1a00000 	nop			@ (mov r0, r0)
8002788c:	e24bd004 	sub	sp, fp, #4
80027890:	e8bd8800 	pop	{fp, pc}
80027894:	80029ac0 	.word	0x80029ac0

80027898 <iabort_handler>:
80027898:	e92d4800 	push	{fp, lr}
8002789c:	e28db004 	add	fp, sp, #4
800278a0:	e24dd010 	sub	sp, sp, #16
800278a4:	e50b0010 	str	r0, [fp, #-16]
800278a8:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
800278ac:	e50b3008 	str	r3, [fp, #-8]
800278b0:	ebffe322 	bl	80020540 <cli>
800278b4:	e51b3010 	ldr	r3, [fp, #-16]
800278b8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800278bc:	e51b2008 	ldr	r2, [fp, #-8]
800278c0:	e1a01003 	mov	r1, r3
800278c4:	e59f0014 	ldr	r0, [pc, #20]	@ 800278e0 <iabort_handler+0x48>
800278c8:	ebffe7f1 	bl	80021894 <cprintf>
800278cc:	e51b0010 	ldr	r0, [fp, #-16]
800278d0:	eb0000a0 	bl	80027b58 <dump_trapframe>
800278d4:	e1a00000 	nop			@ (mov r0, r0)
800278d8:	e24bd004 	sub	sp, fp, #4
800278dc:	e8bd8800 	pop	{fp, pc}
800278e0:	80029b00 	.word	0x80029b00

800278e4 <na_handler>:
800278e4:	e92d4800 	push	{fp, lr}
800278e8:	e28db004 	add	fp, sp, #4
800278ec:	e24dd008 	sub	sp, sp, #8
800278f0:	e50b0008 	str	r0, [fp, #-8]
800278f4:	ebffe311 	bl	80020540 <cli>
800278f8:	e51b3008 	ldr	r3, [fp, #-8]
800278fc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027900:	e1a01003 	mov	r1, r3
80027904:	e59f000c 	ldr	r0, [pc, #12]	@ 80027918 <na_handler+0x34>
80027908:	ebffe7e1 	bl	80021894 <cprintf>
8002790c:	e1a00000 	nop			@ (mov r0, r0)
80027910:	e24bd004 	sub	sp, fp, #4
80027914:	e8bd8800 	pop	{fp, pc}
80027918:	80029b28 	.word	0x80029b28

8002791c <fiq_handler>:
8002791c:	e92d4800 	push	{fp, lr}
80027920:	e28db004 	add	fp, sp, #4
80027924:	e24dd008 	sub	sp, sp, #8
80027928:	e50b0008 	str	r0, [fp, #-8]
8002792c:	ebffe303 	bl	80020540 <cli>
80027930:	e51b3008 	ldr	r3, [fp, #-8]
80027934:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027938:	e1a01003 	mov	r1, r3
8002793c:	e59f000c 	ldr	r0, [pc, #12]	@ 80027950 <fiq_handler+0x34>
80027940:	ebffe7d3 	bl	80021894 <cprintf>
80027944:	e1a00000 	nop			@ (mov r0, r0)
80027948:	e24bd004 	sub	sp, fp, #4
8002794c:	e8bd8800 	pop	{fp, pc}
80027950:	80029b38 	.word	0x80029b38

80027954 <trap_init>:
80027954:	e92d4800 	push	{fp, lr}
80027958:	e28db004 	add	fp, sp, #4
8002795c:	e24dd020 	sub	sp, sp, #32
80027960:	e59f31c0 	ldr	r3, [pc, #448]	@ 80027b28 <trap_init+0x1d4>
80027964:	e24bc020 	sub	ip, fp, #32
80027968:	e893000f 	ldm	r3, {r0, r1, r2, r3}
8002796c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027970:	e59f31b4 	ldr	r3, [pc, #436]	@ 80027b2c <trap_init+0x1d8>
80027974:	e50b300c 	str	r3, [fp, #-12]
80027978:	e59f31b0 	ldr	r3, [pc, #432]	@ 80027b30 <trap_init+0x1dc>
8002797c:	e5933000 	ldr	r3, [r3]
80027980:	e3832018 	orr	r2, r3, #24
80027984:	e51b300c 	ldr	r3, [fp, #-12]
80027988:	e5832000 	str	r2, [r3]
8002798c:	e59f319c 	ldr	r3, [pc, #412]	@ 80027b30 <trap_init+0x1dc>
80027990:	e5932000 	ldr	r2, [r3]
80027994:	e51b300c 	ldr	r3, [fp, #-12]
80027998:	e2833004 	add	r3, r3, #4
8002799c:	e3822018 	orr	r2, r2, #24
800279a0:	e5832000 	str	r2, [r3]
800279a4:	e59f3184 	ldr	r3, [pc, #388]	@ 80027b30 <trap_init+0x1dc>
800279a8:	e5932000 	ldr	r2, [r3]
800279ac:	e51b300c 	ldr	r3, [fp, #-12]
800279b0:	e2833008 	add	r3, r3, #8
800279b4:	e3822018 	orr	r2, r2, #24
800279b8:	e5832000 	str	r2, [r3]
800279bc:	e59f316c 	ldr	r3, [pc, #364]	@ 80027b30 <trap_init+0x1dc>
800279c0:	e5932000 	ldr	r2, [r3]
800279c4:	e51b300c 	ldr	r3, [fp, #-12]
800279c8:	e283300c 	add	r3, r3, #12
800279cc:	e3822018 	orr	r2, r2, #24
800279d0:	e5832000 	str	r2, [r3]
800279d4:	e59f3154 	ldr	r3, [pc, #340]	@ 80027b30 <trap_init+0x1dc>
800279d8:	e5932000 	ldr	r2, [r3]
800279dc:	e51b300c 	ldr	r3, [fp, #-12]
800279e0:	e2833010 	add	r3, r3, #16
800279e4:	e3822018 	orr	r2, r2, #24
800279e8:	e5832000 	str	r2, [r3]
800279ec:	e59f313c 	ldr	r3, [pc, #316]	@ 80027b30 <trap_init+0x1dc>
800279f0:	e5932000 	ldr	r2, [r3]
800279f4:	e51b300c 	ldr	r3, [fp, #-12]
800279f8:	e2833014 	add	r3, r3, #20
800279fc:	e3822018 	orr	r2, r2, #24
80027a00:	e5832000 	str	r2, [r3]
80027a04:	e59f3124 	ldr	r3, [pc, #292]	@ 80027b30 <trap_init+0x1dc>
80027a08:	e5932000 	ldr	r2, [r3]
80027a0c:	e51b300c 	ldr	r3, [fp, #-12]
80027a10:	e2833018 	add	r3, r3, #24
80027a14:	e3822018 	orr	r2, r2, #24
80027a18:	e5832000 	str	r2, [r3]
80027a1c:	e59f310c 	ldr	r3, [pc, #268]	@ 80027b30 <trap_init+0x1dc>
80027a20:	e5932000 	ldr	r2, [r3]
80027a24:	e51b300c 	ldr	r3, [fp, #-12]
80027a28:	e283301c 	add	r3, r3, #28
80027a2c:	e3822018 	orr	r2, r2, #24
80027a30:	e5832000 	str	r2, [r3]
80027a34:	e51b300c 	ldr	r3, [fp, #-12]
80027a38:	e2833020 	add	r3, r3, #32
80027a3c:	e59f20f0 	ldr	r2, [pc, #240]	@ 80027b34 <trap_init+0x1e0>
80027a40:	e5832000 	str	r2, [r3]
80027a44:	e51b300c 	ldr	r3, [fp, #-12]
80027a48:	e2833024 	add	r3, r3, #36	@ 0x24
80027a4c:	e59f20e4 	ldr	r2, [pc, #228]	@ 80027b38 <trap_init+0x1e4>
80027a50:	e5832000 	str	r2, [r3]
80027a54:	e51b300c 	ldr	r3, [fp, #-12]
80027a58:	e2833028 	add	r3, r3, #40	@ 0x28
80027a5c:	e59f20d8 	ldr	r2, [pc, #216]	@ 80027b3c <trap_init+0x1e8>
80027a60:	e5832000 	str	r2, [r3]
80027a64:	e51b300c 	ldr	r3, [fp, #-12]
80027a68:	e283302c 	add	r3, r3, #44	@ 0x2c
80027a6c:	e59f20cc 	ldr	r2, [pc, #204]	@ 80027b40 <trap_init+0x1ec>
80027a70:	e5832000 	str	r2, [r3]
80027a74:	e51b300c 	ldr	r3, [fp, #-12]
80027a78:	e2833030 	add	r3, r3, #48	@ 0x30
80027a7c:	e59f20c0 	ldr	r2, [pc, #192]	@ 80027b44 <trap_init+0x1f0>
80027a80:	e5832000 	str	r2, [r3]
80027a84:	e51b300c 	ldr	r3, [fp, #-12]
80027a88:	e2833034 	add	r3, r3, #52	@ 0x34
80027a8c:	e59f20b4 	ldr	r2, [pc, #180]	@ 80027b48 <trap_init+0x1f4>
80027a90:	e5832000 	str	r2, [r3]
80027a94:	e51b300c 	ldr	r3, [fp, #-12]
80027a98:	e2833038 	add	r3, r3, #56	@ 0x38
80027a9c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80027b4c <trap_init+0x1f8>
80027aa0:	e5832000 	str	r2, [r3]
80027aa4:	e51b300c 	ldr	r3, [fp, #-12]
80027aa8:	e283303c 	add	r3, r3, #60	@ 0x3c
80027aac:	e59f209c 	ldr	r2, [pc, #156]	@ 80027b50 <trap_init+0x1fc>
80027ab0:	e5832000 	str	r2, [r3]
80027ab4:	e3a03000 	mov	r3, #0
80027ab8:	e50b3008 	str	r3, [fp, #-8]
80027abc:	ea000012 	b	80027b0c <trap_init+0x1b8>
80027ac0:	ebffe6da 	bl	80021630 <alloc_page>
80027ac4:	e50b0010 	str	r0, [fp, #-16]
80027ac8:	e51b3010 	ldr	r3, [fp, #-16]
80027acc:	e3530000 	cmp	r3, #0
80027ad0:	1a000001 	bne	80027adc <trap_init+0x188>
80027ad4:	e59f0078 	ldr	r0, [pc, #120]	@ 80027b54 <trap_init+0x200>
80027ad8:	ebffe7f3 	bl	80021aac <panic>
80027adc:	e51b3008 	ldr	r3, [fp, #-8]
80027ae0:	e1a03103 	lsl	r3, r3, #2
80027ae4:	e2433004 	sub	r3, r3, #4
80027ae8:	e083300b 	add	r3, r3, fp
80027aec:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80027af0:	e51b2010 	ldr	r2, [fp, #-16]
80027af4:	e1a01002 	mov	r1, r2
80027af8:	e1a00003 	mov	r0, r3
80027afc:	ebffe368 	bl	800208a4 <set_stk>
80027b00:	e51b3008 	ldr	r3, [fp, #-8]
80027b04:	e2833001 	add	r3, r3, #1
80027b08:	e50b3008 	str	r3, [fp, #-8]
80027b0c:	e51b3008 	ldr	r3, [fp, #-8]
80027b10:	e3530003 	cmp	r3, #3
80027b14:	9affffe9 	bls	80027ac0 <trap_init+0x16c>
80027b18:	e1a00000 	nop			@ (mov r0, r0)
80027b1c:	e1a00000 	nop			@ (mov r0, r0)
80027b20:	e24bd004 	sub	sp, fp, #4
80027b24:	e8bd8800 	pop	{fp, pc}
80027b28:	80029b70 	.word	0x80029b70
80027b2c:	ffff0000 	.word	0xffff0000
80027b30:	80029c80 	.word	0x80029c80
80027b34:	80027670 	.word	0x80027670
80027b38:	80027698 	.word	0x80027698
80027b3c:	800275e4 	.word	0x800275e4
80027b40:	800276bc 	.word	0x800276bc
80027b44:	800276e4 	.word	0x800276e4
80027b48:	8002770c 	.word	0x8002770c
80027b4c:	8002761c 	.word	0x8002761c
80027b50:	80027730 	.word	0x80027730
80027b54:	80029b48 	.word	0x80029b48

80027b58 <dump_trapframe>:
80027b58:	e92d4800 	push	{fp, lr}
80027b5c:	e28db004 	add	fp, sp, #4
80027b60:	e24dd008 	sub	sp, sp, #8
80027b64:	e50b0008 	str	r0, [fp, #-8]
80027b68:	e51b3008 	ldr	r3, [fp, #-8]
80027b6c:	e5933008 	ldr	r3, [r3, #8]
80027b70:	e1a01003 	mov	r1, r3
80027b74:	e59f0138 	ldr	r0, [pc, #312]	@ 80027cb4 <dump_trapframe+0x15c>
80027b78:	ebffe745 	bl	80021894 <cprintf>
80027b7c:	e51b3008 	ldr	r3, [fp, #-8]
80027b80:	e593300c 	ldr	r3, [r3, #12]
80027b84:	e1a01003 	mov	r1, r3
80027b88:	e59f0128 	ldr	r0, [pc, #296]	@ 80027cb8 <dump_trapframe+0x160>
80027b8c:	ebffe740 	bl	80021894 <cprintf>
80027b90:	e51b3008 	ldr	r3, [fp, #-8]
80027b94:	e5933010 	ldr	r3, [r3, #16]
80027b98:	e1a01003 	mov	r1, r3
80027b9c:	e59f0118 	ldr	r0, [pc, #280]	@ 80027cbc <dump_trapframe+0x164>
80027ba0:	ebffe73b 	bl	80021894 <cprintf>
80027ba4:	e51b3008 	ldr	r3, [fp, #-8]
80027ba8:	e5933014 	ldr	r3, [r3, #20]
80027bac:	e1a01003 	mov	r1, r3
80027bb0:	e59f0108 	ldr	r0, [pc, #264]	@ 80027cc0 <dump_trapframe+0x168>
80027bb4:	ebffe736 	bl	80021894 <cprintf>
80027bb8:	e51b3008 	ldr	r3, [fp, #-8]
80027bbc:	e5933018 	ldr	r3, [r3, #24]
80027bc0:	e1a01003 	mov	r1, r3
80027bc4:	e59f00f8 	ldr	r0, [pc, #248]	@ 80027cc4 <dump_trapframe+0x16c>
80027bc8:	ebffe731 	bl	80021894 <cprintf>
80027bcc:	e51b3008 	ldr	r3, [fp, #-8]
80027bd0:	e593301c 	ldr	r3, [r3, #28]
80027bd4:	e1a01003 	mov	r1, r3
80027bd8:	e59f00e8 	ldr	r0, [pc, #232]	@ 80027cc8 <dump_trapframe+0x170>
80027bdc:	ebffe72c 	bl	80021894 <cprintf>
80027be0:	e51b3008 	ldr	r3, [fp, #-8]
80027be4:	e5933020 	ldr	r3, [r3, #32]
80027be8:	e1a01003 	mov	r1, r3
80027bec:	e59f00d8 	ldr	r0, [pc, #216]	@ 80027ccc <dump_trapframe+0x174>
80027bf0:	ebffe727 	bl	80021894 <cprintf>
80027bf4:	e51b3008 	ldr	r3, [fp, #-8]
80027bf8:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80027bfc:	e1a01003 	mov	r1, r3
80027c00:	e59f00c8 	ldr	r0, [pc, #200]	@ 80027cd0 <dump_trapframe+0x178>
80027c04:	ebffe722 	bl	80021894 <cprintf>
80027c08:	e51b3008 	ldr	r3, [fp, #-8]
80027c0c:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80027c10:	e1a01003 	mov	r1, r3
80027c14:	e59f00b8 	ldr	r0, [pc, #184]	@ 80027cd4 <dump_trapframe+0x17c>
80027c18:	ebffe71d 	bl	80021894 <cprintf>
80027c1c:	e51b3008 	ldr	r3, [fp, #-8]
80027c20:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80027c24:	e1a01003 	mov	r1, r3
80027c28:	e59f00a8 	ldr	r0, [pc, #168]	@ 80027cd8 <dump_trapframe+0x180>
80027c2c:	ebffe718 	bl	80021894 <cprintf>
80027c30:	e51b3008 	ldr	r3, [fp, #-8]
80027c34:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80027c38:	e1a01003 	mov	r1, r3
80027c3c:	e59f0098 	ldr	r0, [pc, #152]	@ 80027cdc <dump_trapframe+0x184>
80027c40:	ebffe713 	bl	80021894 <cprintf>
80027c44:	e51b3008 	ldr	r3, [fp, #-8]
80027c48:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027c4c:	e1a01003 	mov	r1, r3
80027c50:	e59f0088 	ldr	r0, [pc, #136]	@ 80027ce0 <dump_trapframe+0x188>
80027c54:	ebffe70e 	bl	80021894 <cprintf>
80027c58:	e51b3008 	ldr	r3, [fp, #-8]
80027c5c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80027c60:	e1a01003 	mov	r1, r3
80027c64:	e59f0078 	ldr	r0, [pc, #120]	@ 80027ce4 <dump_trapframe+0x18c>
80027c68:	ebffe709 	bl	80021894 <cprintf>
80027c6c:	e51b3008 	ldr	r3, [fp, #-8]
80027c70:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80027c74:	e1a01003 	mov	r1, r3
80027c78:	e59f0068 	ldr	r0, [pc, #104]	@ 80027ce8 <dump_trapframe+0x190>
80027c7c:	ebffe704 	bl	80021894 <cprintf>
80027c80:	e51b3008 	ldr	r3, [fp, #-8]
80027c84:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80027c88:	e1a01003 	mov	r1, r3
80027c8c:	e59f0058 	ldr	r0, [pc, #88]	@ 80027cec <dump_trapframe+0x194>
80027c90:	ebffe6ff 	bl	80021894 <cprintf>
80027c94:	e51b3008 	ldr	r3, [fp, #-8]
80027c98:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027c9c:	e1a01003 	mov	r1, r3
80027ca0:	e59f0048 	ldr	r0, [pc, #72]	@ 80027cf0 <dump_trapframe+0x198>
80027ca4:	ebffe6fa 	bl	80021894 <cprintf>
80027ca8:	e1a00000 	nop			@ (mov r0, r0)
80027cac:	e24bd004 	sub	sp, fp, #4
80027cb0:	e8bd8800 	pop	{fp, pc}
80027cb4:	80029b80 	.word	0x80029b80
80027cb8:	80029b90 	.word	0x80029b90
80027cbc:	80029ba0 	.word	0x80029ba0
80027cc0:	80029bb0 	.word	0x80029bb0
80027cc4:	80029bc0 	.word	0x80029bc0
80027cc8:	80029bd0 	.word	0x80029bd0
80027ccc:	80029be0 	.word	0x80029be0
80027cd0:	80029bf0 	.word	0x80029bf0
80027cd4:	80029c00 	.word	0x80029c00
80027cd8:	80029c10 	.word	0x80029c10
80027cdc:	80029c20 	.word	0x80029c20
80027ce0:	80029c30 	.word	0x80029c30
80027ce4:	80029c40 	.word	0x80029c40
80027ce8:	80029c50 	.word	0x80029c50
80027cec:	80029c60 	.word	0x80029c60
80027cf0:	80029c70 	.word	0x80029c70

80027cf4 <v2p>:
80027cf4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027cf8:	e28db000 	add	fp, sp, #0
80027cfc:	e24dd00c 	sub	sp, sp, #12
80027d00:	e50b0008 	str	r0, [fp, #-8]
80027d04:	e51b3008 	ldr	r3, [fp, #-8]
80027d08:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027d0c:	e1a00003 	mov	r0, r3
80027d10:	e28bd000 	add	sp, fp, #0
80027d14:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027d18:	e12fff1e 	bx	lr

80027d1c <p2v>:
80027d1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027d20:	e28db000 	add	fp, sp, #0
80027d24:	e24dd00c 	sub	sp, sp, #12
80027d28:	e50b0008 	str	r0, [fp, #-8]
80027d2c:	e51b3008 	ldr	r3, [fp, #-8]
80027d30:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027d34:	e1a00003 	mov	r0, r3
80027d38:	e28bd000 	add	sp, fp, #0
80027d3c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027d40:	e12fff1e 	bx	lr

80027d44 <init_vmm>:
80027d44:	e92d4800 	push	{fp, lr}
80027d48:	e28db004 	add	fp, sp, #4
80027d4c:	e59f1018 	ldr	r1, [pc, #24]	@ 80027d6c <init_vmm+0x28>
80027d50:	e59f0018 	ldr	r0, [pc, #24]	@ 80027d70 <init_vmm+0x2c>
80027d54:	ebfff867 	bl	80025ef8 <initlock>
80027d58:	e59f3010 	ldr	r3, [pc, #16]	@ 80027d70 <init_vmm+0x2c>
80027d5c:	e3a02000 	mov	r2, #0
80027d60:	e5832034 	str	r2, [r3, #52]	@ 0x34
80027d64:	e1a00000 	nop			@ (mov r0, r0)
80027d68:	e8bd8800 	pop	{fp, pc}
80027d6c:	80029c84 	.word	0x80029c84
80027d70:	800af660 	.word	0x800af660

80027d74 <_kpt_free>:
80027d74:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027d78:	e28db000 	add	fp, sp, #0
80027d7c:	e24dd014 	sub	sp, sp, #20
80027d80:	e50b0010 	str	r0, [fp, #-16]
80027d84:	e51b3010 	ldr	r3, [fp, #-16]
80027d88:	e50b3008 	str	r3, [fp, #-8]
80027d8c:	e59f3024 	ldr	r3, [pc, #36]	@ 80027db8 <_kpt_free+0x44>
80027d90:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80027d94:	e51b3008 	ldr	r3, [fp, #-8]
80027d98:	e5832000 	str	r2, [r3]
80027d9c:	e59f2014 	ldr	r2, [pc, #20]	@ 80027db8 <_kpt_free+0x44>
80027da0:	e51b3008 	ldr	r3, [fp, #-8]
80027da4:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027da8:	e1a00000 	nop			@ (mov r0, r0)
80027dac:	e28bd000 	add	sp, fp, #0
80027db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027db4:	e12fff1e 	bx	lr
80027db8:	800af660 	.word	0x800af660

80027dbc <kpt_free>:
80027dbc:	e92d4800 	push	{fp, lr}
80027dc0:	e28db004 	add	fp, sp, #4
80027dc4:	e24dd008 	sub	sp, sp, #8
80027dc8:	e50b0008 	str	r0, [fp, #-8]
80027dcc:	e51b3008 	ldr	r3, [fp, #-8]
80027dd0:	e59f2034 	ldr	r2, [pc, #52]	@ 80027e0c <kpt_free+0x50>
80027dd4:	e1530002 	cmp	r3, r2
80027dd8:	9a000003 	bls	80027dec <kpt_free+0x30>
80027ddc:	e3a0100a 	mov	r1, #10
80027de0:	e51b0008 	ldr	r0, [fp, #-8]
80027de4:	ebffe5e5 	bl	80021580 <kfree>
80027de8:	ea000005 	b	80027e04 <kpt_free+0x48>
80027dec:	e59f001c 	ldr	r0, [pc, #28]	@ 80027e10 <kpt_free+0x54>
80027df0:	ebfff852 	bl	80025f40 <acquire>
80027df4:	e51b0008 	ldr	r0, [fp, #-8]
80027df8:	ebffffdd 	bl	80027d74 <_kpt_free>
80027dfc:	e59f000c 	ldr	r0, [pc, #12]	@ 80027e10 <kpt_free+0x54>
80027e00:	ebfff859 	bl	80025f6c <release>
80027e04:	e24bd004 	sub	sp, fp, #4
80027e08:	e8bd8800 	pop	{fp, pc}
80027e0c:	800fffff 	.word	0x800fffff
80027e10:	800af660 	.word	0x800af660

80027e14 <kpt_freerange>:
80027e14:	e92d4800 	push	{fp, lr}
80027e18:	e28db004 	add	fp, sp, #4
80027e1c:	e24dd008 	sub	sp, sp, #8
80027e20:	e50b0008 	str	r0, [fp, #-8]
80027e24:	e50b100c 	str	r1, [fp, #-12]
80027e28:	ea000005 	b	80027e44 <kpt_freerange+0x30>
80027e2c:	e51b3008 	ldr	r3, [fp, #-8]
80027e30:	e1a00003 	mov	r0, r3
80027e34:	ebffffce 	bl	80027d74 <_kpt_free>
80027e38:	e51b3008 	ldr	r3, [fp, #-8]
80027e3c:	e2833b01 	add	r3, r3, #1024	@ 0x400
80027e40:	e50b3008 	str	r3, [fp, #-8]
80027e44:	e51b2008 	ldr	r2, [fp, #-8]
80027e48:	e51b300c 	ldr	r3, [fp, #-12]
80027e4c:	e1520003 	cmp	r2, r3
80027e50:	3afffff5 	bcc	80027e2c <kpt_freerange+0x18>
80027e54:	e1a00000 	nop			@ (mov r0, r0)
80027e58:	e1a00000 	nop			@ (mov r0, r0)
80027e5c:	e24bd004 	sub	sp, fp, #4
80027e60:	e8bd8800 	pop	{fp, pc}

80027e64 <kpt_alloc>:
80027e64:	e92d4800 	push	{fp, lr}
80027e68:	e28db004 	add	fp, sp, #4
80027e6c:	e24dd008 	sub	sp, sp, #8
80027e70:	e59f007c 	ldr	r0, [pc, #124]	@ 80027ef4 <kpt_alloc+0x90>
80027e74:	ebfff831 	bl	80025f40 <acquire>
80027e78:	e59f3074 	ldr	r3, [pc, #116]	@ 80027ef4 <kpt_alloc+0x90>
80027e7c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027e80:	e50b3008 	str	r3, [fp, #-8]
80027e84:	e51b3008 	ldr	r3, [fp, #-8]
80027e88:	e3530000 	cmp	r3, #0
80027e8c:	0a000003 	beq	80027ea0 <kpt_alloc+0x3c>
80027e90:	e51b3008 	ldr	r3, [fp, #-8]
80027e94:	e5933000 	ldr	r3, [r3]
80027e98:	e59f2054 	ldr	r2, [pc, #84]	@ 80027ef4 <kpt_alloc+0x90>
80027e9c:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027ea0:	e59f004c 	ldr	r0, [pc, #76]	@ 80027ef4 <kpt_alloc+0x90>
80027ea4:	ebfff830 	bl	80025f6c <release>
80027ea8:	e51b3008 	ldr	r3, [fp, #-8]
80027eac:	e3530000 	cmp	r3, #0
80027eb0:	1a000007 	bne	80027ed4 <kpt_alloc+0x70>
80027eb4:	e3a0000a 	mov	r0, #10
80027eb8:	ebffe559 	bl	80021424 <kmalloc>
80027ebc:	e50b0008 	str	r0, [fp, #-8]
80027ec0:	e51b3008 	ldr	r3, [fp, #-8]
80027ec4:	e3530000 	cmp	r3, #0
80027ec8:	1a000001 	bne	80027ed4 <kpt_alloc+0x70>
80027ecc:	e59f0024 	ldr	r0, [pc, #36]	@ 80027ef8 <kpt_alloc+0x94>
80027ed0:	ebffe6f5 	bl	80021aac <panic>
80027ed4:	e3a02b01 	mov	r2, #1024	@ 0x400
80027ed8:	e3a01000 	mov	r1, #0
80027edc:	e51b0008 	ldr	r0, [fp, #-8]
80027ee0:	ebffe046 	bl	80020000 <memset>
80027ee4:	e51b3008 	ldr	r3, [fp, #-8]
80027ee8:	e1a00003 	mov	r0, r3
80027eec:	e24bd004 	sub	sp, fp, #4
80027ef0:	e8bd8800 	pop	{fp, pc}
80027ef4:	800af660 	.word	0x800af660
80027ef8:	80029c88 	.word	0x80029c88

80027efc <walkpgdir>:
80027efc:	e92d4800 	push	{fp, lr}
80027f00:	e28db004 	add	fp, sp, #4
80027f04:	e24dd018 	sub	sp, sp, #24
80027f08:	e50b0010 	str	r0, [fp, #-16]
80027f0c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80027f10:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80027f14:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027f18:	e1a03a23 	lsr	r3, r3, #20
80027f1c:	e1a03103 	lsl	r3, r3, #2
80027f20:	e51b2010 	ldr	r2, [fp, #-16]
80027f24:	e0823003 	add	r3, r2, r3
80027f28:	e50b300c 	str	r3, [fp, #-12]
80027f2c:	e51b300c 	ldr	r3, [fp, #-12]
80027f30:	e5933000 	ldr	r3, [r3]
80027f34:	e2033003 	and	r3, r3, #3
80027f38:	e3530000 	cmp	r3, #0
80027f3c:	0a000007 	beq	80027f60 <walkpgdir+0x64>
80027f40:	e51b300c 	ldr	r3, [fp, #-12]
80027f44:	e5933000 	ldr	r3, [r3]
80027f48:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80027f4c:	e3c33003 	bic	r3, r3, #3
80027f50:	e1a00003 	mov	r0, r3
80027f54:	ebffff70 	bl	80027d1c <p2v>
80027f58:	e50b0008 	str	r0, [fp, #-8]
80027f5c:	ea000013 	b	80027fb0 <walkpgdir+0xb4>
80027f60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80027f64:	e3530000 	cmp	r3, #0
80027f68:	0a000004 	beq	80027f80 <walkpgdir+0x84>
80027f6c:	ebffffbc 	bl	80027e64 <kpt_alloc>
80027f70:	e50b0008 	str	r0, [fp, #-8]
80027f74:	e51b3008 	ldr	r3, [fp, #-8]
80027f78:	e3530000 	cmp	r3, #0
80027f7c:	1a000001 	bne	80027f88 <walkpgdir+0x8c>
80027f80:	e3a03000 	mov	r3, #0
80027f84:	ea00000f 	b	80027fc8 <walkpgdir+0xcc>
80027f88:	e3a02b01 	mov	r2, #1024	@ 0x400
80027f8c:	e3a01000 	mov	r1, #0
80027f90:	e51b0008 	ldr	r0, [fp, #-8]
80027f94:	ebffe019 	bl	80020000 <memset>
80027f98:	e51b0008 	ldr	r0, [fp, #-8]
80027f9c:	ebffff54 	bl	80027cf4 <v2p>
80027fa0:	e1a03000 	mov	r3, r0
80027fa4:	e3832001 	orr	r2, r3, #1
80027fa8:	e51b300c 	ldr	r3, [fp, #-12]
80027fac:	e5832000 	str	r2, [r3]
80027fb0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027fb4:	e1a03623 	lsr	r3, r3, #12
80027fb8:	e6ef3073 	uxtb	r3, r3
80027fbc:	e1a03103 	lsl	r3, r3, #2
80027fc0:	e51b2008 	ldr	r2, [fp, #-8]
80027fc4:	e0823003 	add	r3, r2, r3
80027fc8:	e1a00003 	mov	r0, r3
80027fcc:	e24bd004 	sub	sp, fp, #4
80027fd0:	e8bd8800 	pop	{fp, pc}

80027fd4 <mappages>:
80027fd4:	e92d4800 	push	{fp, lr}
80027fd8:	e28db004 	add	fp, sp, #4
80027fdc:	e24dd020 	sub	sp, sp, #32
80027fe0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80027fe4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80027fe8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80027fec:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80027ff0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80027ff4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80027ff8:	e3c3300f 	bic	r3, r3, #15
80027ffc:	e50b3008 	str	r3, [fp, #-8]
80028000:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028004:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028008:	e0823003 	add	r3, r2, r3
8002800c:	e2433001 	sub	r3, r3, #1
80028010:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028014:	e3c3300f 	bic	r3, r3, #15
80028018:	e50b300c 	str	r3, [fp, #-12]
8002801c:	e3a02001 	mov	r2, #1
80028020:	e51b1008 	ldr	r1, [fp, #-8]
80028024:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028028:	ebffffb3 	bl	80027efc <walkpgdir>
8002802c:	e50b0010 	str	r0, [fp, #-16]
80028030:	e51b3010 	ldr	r3, [fp, #-16]
80028034:	e3530000 	cmp	r3, #0
80028038:	1a000001 	bne	80028044 <mappages+0x70>
8002803c:	e3e03000 	mvn	r3, #0
80028040:	ea00001b 	b	800280b4 <mappages+0xe0>
80028044:	e51b3010 	ldr	r3, [fp, #-16]
80028048:	e5933000 	ldr	r3, [r3]
8002804c:	e2033003 	and	r3, r3, #3
80028050:	e3530000 	cmp	r3, #0
80028054:	0a000001 	beq	80028060 <mappages+0x8c>
80028058:	e59f0060 	ldr	r0, [pc, #96]	@ 800280c0 <mappages+0xec>
8002805c:	ebffe692 	bl	80021aac <panic>
80028060:	e59b3004 	ldr	r3, [fp, #4]
80028064:	e1a03203 	lsl	r3, r3, #4
80028068:	e2032030 	and	r2, r3, #48	@ 0x30
8002806c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028070:	e1823003 	orr	r3, r2, r3
80028074:	e383200e 	orr	r2, r3, #14
80028078:	e51b3010 	ldr	r3, [fp, #-16]
8002807c:	e5832000 	str	r2, [r3]
80028080:	e51b2008 	ldr	r2, [fp, #-8]
80028084:	e51b300c 	ldr	r3, [fp, #-12]
80028088:	e1520003 	cmp	r2, r3
8002808c:	0a000006 	beq	800280ac <mappages+0xd8>
80028090:	e51b3008 	ldr	r3, [fp, #-8]
80028094:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028098:	e50b3008 	str	r3, [fp, #-8]
8002809c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800280a0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800280a4:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800280a8:	eaffffdb 	b	8002801c <mappages+0x48>
800280ac:	e1a00000 	nop			@ (mov r0, r0)
800280b0:	e3a03000 	mov	r3, #0
800280b4:	e1a00003 	mov	r0, r3
800280b8:	e24bd004 	sub	sp, fp, #4
800280bc:	e8bd8800 	pop	{fp, pc}
800280c0:	80029c98 	.word	0x80029c98

800280c4 <flush_tlb>:
800280c4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800280c8:	e28db000 	add	fp, sp, #0
800280cc:	e24dd00c 	sub	sp, sp, #12
800280d0:	e3a03000 	mov	r3, #0
800280d4:	e50b3008 	str	r3, [fp, #-8]
800280d8:	e51b3008 	ldr	r3, [fp, #-8]
800280dc:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800280e0:	e51b3008 	ldr	r3, [fp, #-8]
800280e4:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
800280e8:	e51b3008 	ldr	r3, [fp, #-8]
800280ec:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
800280f0:	e1a00000 	nop			@ (mov r0, r0)
800280f4:	e28bd000 	add	sp, fp, #0
800280f8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800280fc:	e12fff1e 	bx	lr

80028100 <switchuvm>:
80028100:	e92d4800 	push	{fp, lr}
80028104:	e28db004 	add	fp, sp, #4
80028108:	e24dd010 	sub	sp, sp, #16
8002810c:	e50b0010 	str	r0, [fp, #-16]
80028110:	ebffe145 	bl	8002062c <pushcli>
80028114:	e51b3010 	ldr	r3, [fp, #-16]
80028118:	e5933008 	ldr	r3, [r3, #8]
8002811c:	e3530000 	cmp	r3, #0
80028120:	1a000001 	bne	8002812c <switchuvm+0x2c>
80028124:	e59f002c 	ldr	r0, [pc, #44]	@ 80028158 <switchuvm+0x58>
80028128:	ebffe65f 	bl	80021aac <panic>
8002812c:	e51b3010 	ldr	r3, [fp, #-16]
80028130:	e5933008 	ldr	r3, [r3, #8]
80028134:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028138:	e50b3008 	str	r3, [fp, #-8]
8002813c:	e51b3008 	ldr	r3, [fp, #-8]
80028140:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028144:	ebffffde 	bl	800280c4 <flush_tlb>
80028148:	ebffe14c 	bl	80020680 <popcli>
8002814c:	e1a00000 	nop			@ (mov r0, r0)
80028150:	e24bd004 	sub	sp, fp, #4
80028154:	e8bd8800 	pop	{fp, pc}
80028158:	80029ca0 	.word	0x80029ca0

8002815c <inituvm>:
8002815c:	e92d4800 	push	{fp, lr}
80028160:	e28db004 	add	fp, sp, #4
80028164:	e24dd020 	sub	sp, sp, #32
80028168:	e50b0010 	str	r0, [fp, #-16]
8002816c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028170:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028174:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028178:	e3530a01 	cmp	r3, #4096	@ 0x1000
8002817c:	3a000001 	bcc	80028188 <inituvm+0x2c>
80028180:	e59f0058 	ldr	r0, [pc, #88]	@ 800281e0 <inituvm+0x84>
80028184:	ebffe648 	bl	80021aac <panic>
80028188:	ebffe528 	bl	80021630 <alloc_page>
8002818c:	e50b0008 	str	r0, [fp, #-8]
80028190:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028194:	e3a01000 	mov	r1, #0
80028198:	e51b0008 	ldr	r0, [fp, #-8]
8002819c:	ebffdf97 	bl	80020000 <memset>
800281a0:	e51b0008 	ldr	r0, [fp, #-8]
800281a4:	ebfffed2 	bl	80027cf4 <v2p>
800281a8:	e1a03000 	mov	r3, r0
800281ac:	e3a02003 	mov	r2, #3
800281b0:	e58d2000 	str	r2, [sp]
800281b4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800281b8:	e3a01000 	mov	r1, #0
800281bc:	e51b0010 	ldr	r0, [fp, #-16]
800281c0:	ebffff83 	bl	80027fd4 <mappages>
800281c4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800281c8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800281cc:	e51b0008 	ldr	r0, [fp, #-8]
800281d0:	ebffdffc 	bl	800201c8 <memmove>
800281d4:	e1a00000 	nop			@ (mov r0, r0)
800281d8:	e24bd004 	sub	sp, fp, #4
800281dc:	e8bd8800 	pop	{fp, pc}
800281e0:	80029cb4 	.word	0x80029cb4

800281e4 <loaduvm>:
800281e4:	e92d4800 	push	{fp, lr}
800281e8:	e28db004 	add	fp, sp, #4
800281ec:	e24dd020 	sub	sp, sp, #32
800281f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800281f4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800281f8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800281fc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028200:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028204:	e1a03a03 	lsl	r3, r3, #20
80028208:	e1a03a23 	lsr	r3, r3, #20
8002820c:	e3530000 	cmp	r3, #0
80028210:	0a000001 	beq	8002821c <loaduvm+0x38>
80028214:	e59f00f0 	ldr	r0, [pc, #240]	@ 8002830c <loaduvm+0x128>
80028218:	ebffe623 	bl	80021aac <panic>
8002821c:	e3a03000 	mov	r3, #0
80028220:	e50b3008 	str	r3, [fp, #-8]
80028224:	ea000030 	b	800282ec <loaduvm+0x108>
80028228:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
8002822c:	e51b3008 	ldr	r3, [fp, #-8]
80028230:	e0823003 	add	r3, r2, r3
80028234:	e3a02000 	mov	r2, #0
80028238:	e1a01003 	mov	r1, r3
8002823c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028240:	ebffff2d 	bl	80027efc <walkpgdir>
80028244:	e50b0010 	str	r0, [fp, #-16]
80028248:	e51b3010 	ldr	r3, [fp, #-16]
8002824c:	e3530000 	cmp	r3, #0
80028250:	1a000001 	bne	8002825c <loaduvm+0x78>
80028254:	e59f00b4 	ldr	r0, [pc, #180]	@ 80028310 <loaduvm+0x12c>
80028258:	ebffe613 	bl	80021aac <panic>
8002825c:	e51b3010 	ldr	r3, [fp, #-16]
80028260:	e5933000 	ldr	r3, [r3]
80028264:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028268:	e3c3300f 	bic	r3, r3, #15
8002826c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028270:	e59b2004 	ldr	r2, [fp, #4]
80028274:	e51b3008 	ldr	r3, [fp, #-8]
80028278:	e0423003 	sub	r3, r2, r3
8002827c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028280:	2a000004 	bcs	80028298 <loaduvm+0xb4>
80028284:	e59b2004 	ldr	r2, [fp, #4]
80028288:	e51b3008 	ldr	r3, [fp, #-8]
8002828c:	e0423003 	sub	r3, r2, r3
80028290:	e50b300c 	str	r3, [fp, #-12]
80028294:	ea000001 	b	800282a0 <loaduvm+0xbc>
80028298:	e3a03a01 	mov	r3, #4096	@ 0x1000
8002829c:	e50b300c 	str	r3, [fp, #-12]
800282a0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800282a4:	ebfffe9c 	bl	80027d1c <p2v>
800282a8:	e1a01000 	mov	r1, r0
800282ac:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800282b0:	e51b3008 	ldr	r3, [fp, #-8]
800282b4:	e0822003 	add	r2, r2, r3
800282b8:	e51b300c 	ldr	r3, [fp, #-12]
800282bc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800282c0:	ebffedc7 	bl	800239e4 <readi>
800282c4:	e1a03000 	mov	r3, r0
800282c8:	e1a02003 	mov	r2, r3
800282cc:	e51b300c 	ldr	r3, [fp, #-12]
800282d0:	e1530002 	cmp	r3, r2
800282d4:	0a000001 	beq	800282e0 <loaduvm+0xfc>
800282d8:	e3e03000 	mvn	r3, #0
800282dc:	ea000007 	b	80028300 <loaduvm+0x11c>
800282e0:	e51b3008 	ldr	r3, [fp, #-8]
800282e4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800282e8:	e50b3008 	str	r3, [fp, #-8]
800282ec:	e51b2008 	ldr	r2, [fp, #-8]
800282f0:	e59b3004 	ldr	r3, [fp, #4]
800282f4:	e1520003 	cmp	r2, r3
800282f8:	3affffca 	bcc	80028228 <loaduvm+0x44>
800282fc:	e3a03000 	mov	r3, #0
80028300:	e1a00003 	mov	r0, r3
80028304:	e24bd004 	sub	sp, fp, #4
80028308:	e8bd8800 	pop	{fp, pc}
8002830c:	80029cd0 	.word	0x80029cd0
80028310:	80029cf4 	.word	0x80029cf4

80028314 <allocuvm>:
80028314:	e92d4810 	push	{r4, fp, lr}
80028318:	e28db008 	add	fp, sp, #8
8002831c:	e24dd024 	sub	sp, sp, #36	@ 0x24
80028320:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028324:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028328:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002832c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028330:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028334:	9a000001 	bls	80028340 <allocuvm+0x2c>
80028338:	e3a03000 	mov	r3, #0
8002833c:	ea00002f 	b	80028400 <allocuvm+0xec>
80028340:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028344:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028348:	e1520003 	cmp	r2, r3
8002834c:	2a000001 	bcs	80028358 <allocuvm+0x44>
80028350:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028354:	ea000029 	b	80028400 <allocuvm+0xec>
80028358:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002835c:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028360:	e283300f 	add	r3, r3, #15
80028364:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028368:	e3c3300f 	bic	r3, r3, #15
8002836c:	e50b3010 	str	r3, [fp, #-16]
80028370:	ea00001d 	b	800283ec <allocuvm+0xd8>
80028374:	ebffe4ad 	bl	80021630 <alloc_page>
80028378:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002837c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028380:	e3530000 	cmp	r3, #0
80028384:	1a000007 	bne	800283a8 <allocuvm+0x94>
80028388:	e59f007c 	ldr	r0, [pc, #124]	@ 8002840c <allocuvm+0xf8>
8002838c:	ebffe540 	bl	80021894 <cprintf>
80028390:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028394:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
80028398:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002839c:	eb00001b 	bl	80028410 <deallocuvm>
800283a0:	e3a03000 	mov	r3, #0
800283a4:	ea000015 	b	80028400 <allocuvm+0xec>
800283a8:	e3a02a01 	mov	r2, #4096	@ 0x1000
800283ac:	e3a01000 	mov	r1, #0
800283b0:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800283b4:	ebffdf11 	bl	80020000 <memset>
800283b8:	e51b4010 	ldr	r4, [fp, #-16]
800283bc:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800283c0:	ebfffe4b 	bl	80027cf4 <v2p>
800283c4:	e1a03000 	mov	r3, r0
800283c8:	e3a02003 	mov	r2, #3
800283cc:	e58d2000 	str	r2, [sp]
800283d0:	e3a02a01 	mov	r2, #4096	@ 0x1000
800283d4:	e1a01004 	mov	r1, r4
800283d8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800283dc:	ebfffefc 	bl	80027fd4 <mappages>
800283e0:	e51b3010 	ldr	r3, [fp, #-16]
800283e4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800283e8:	e50b3010 	str	r3, [fp, #-16]
800283ec:	e51b2010 	ldr	r2, [fp, #-16]
800283f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800283f4:	e1520003 	cmp	r2, r3
800283f8:	3affffdd 	bcc	80028374 <allocuvm+0x60>
800283fc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028400:	e1a00003 	mov	r0, r3
80028404:	e24bd008 	sub	sp, fp, #8
80028408:	e8bd8810 	pop	{r4, fp, pc}
8002840c:	80029d14 	.word	0x80029d14

80028410 <deallocuvm>:
80028410:	e92d4800 	push	{fp, lr}
80028414:	e28db004 	add	fp, sp, #4
80028418:	e24dd020 	sub	sp, sp, #32
8002841c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028420:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028424:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028428:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002842c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028430:	e1520003 	cmp	r2, r3
80028434:	3a000001 	bcc	80028440 <deallocuvm+0x30>
80028438:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002843c:	ea000035 	b	80028518 <deallocuvm+0x108>
80028440:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028444:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028448:	e283300f 	add	r3, r3, #15
8002844c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028450:	e3c3300f 	bic	r3, r3, #15
80028454:	e50b3008 	str	r3, [fp, #-8]
80028458:	ea000029 	b	80028504 <deallocuvm+0xf4>
8002845c:	e51b3008 	ldr	r3, [fp, #-8]
80028460:	e3a02000 	mov	r2, #0
80028464:	e1a01003 	mov	r1, r3
80028468:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002846c:	ebfffea2 	bl	80027efc <walkpgdir>
80028470:	e50b000c 	str	r0, [fp, #-12]
80028474:	e51b300c 	ldr	r3, [fp, #-12]
80028478:	e3530000 	cmp	r3, #0
8002847c:	1a000006 	bne	8002849c <deallocuvm+0x8c>
80028480:	e51b3008 	ldr	r3, [fp, #-8]
80028484:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
80028488:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
8002848c:	e1a03a23 	lsr	r3, r3, #20
80028490:	e1a03a03 	lsl	r3, r3, #20
80028494:	e50b3008 	str	r3, [fp, #-8]
80028498:	ea000016 	b	800284f8 <deallocuvm+0xe8>
8002849c:	e51b300c 	ldr	r3, [fp, #-12]
800284a0:	e5933000 	ldr	r3, [r3]
800284a4:	e2033003 	and	r3, r3, #3
800284a8:	e3530000 	cmp	r3, #0
800284ac:	0a000011 	beq	800284f8 <deallocuvm+0xe8>
800284b0:	e51b300c 	ldr	r3, [fp, #-12]
800284b4:	e5933000 	ldr	r3, [r3]
800284b8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800284bc:	e3c3300f 	bic	r3, r3, #15
800284c0:	e50b3010 	str	r3, [fp, #-16]
800284c4:	e51b3010 	ldr	r3, [fp, #-16]
800284c8:	e3530000 	cmp	r3, #0
800284cc:	1a000001 	bne	800284d8 <deallocuvm+0xc8>
800284d0:	e59f004c 	ldr	r0, [pc, #76]	@ 80028524 <deallocuvm+0x114>
800284d4:	ebffe574 	bl	80021aac <panic>
800284d8:	e51b0010 	ldr	r0, [fp, #-16]
800284dc:	ebfffe0e 	bl	80027d1c <p2v>
800284e0:	e1a03000 	mov	r3, r0
800284e4:	e1a00003 	mov	r0, r3
800284e8:	ebffe446 	bl	80021608 <free_page>
800284ec:	e51b300c 	ldr	r3, [fp, #-12]
800284f0:	e3a02000 	mov	r2, #0
800284f4:	e5832000 	str	r2, [r3]
800284f8:	e51b3008 	ldr	r3, [fp, #-8]
800284fc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028500:	e50b3008 	str	r3, [fp, #-8]
80028504:	e51b2008 	ldr	r2, [fp, #-8]
80028508:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002850c:	e1520003 	cmp	r2, r3
80028510:	3affffd1 	bcc	8002845c <deallocuvm+0x4c>
80028514:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028518:	e1a00003 	mov	r0, r3
8002851c:	e24bd004 	sub	sp, fp, #4
80028520:	e8bd8800 	pop	{fp, pc}
80028524:	80029d2c 	.word	0x80029d2c

80028528 <freevm>:
80028528:	e92d4800 	push	{fp, lr}
8002852c:	e28db004 	add	fp, sp, #4
80028530:	e24dd010 	sub	sp, sp, #16
80028534:	e50b0010 	str	r0, [fp, #-16]
80028538:	e51b3010 	ldr	r3, [fp, #-16]
8002853c:	e3530000 	cmp	r3, #0
80028540:	1a000001 	bne	8002854c <freevm+0x24>
80028544:	e59f0098 	ldr	r0, [pc, #152]	@ 800285e4 <freevm+0xbc>
80028548:	ebffe557 	bl	80021aac <panic>
8002854c:	e3a02000 	mov	r2, #0
80028550:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028554:	e51b0010 	ldr	r0, [fp, #-16]
80028558:	ebffffac 	bl	80028410 <deallocuvm>
8002855c:	e3a03000 	mov	r3, #0
80028560:	e50b3008 	str	r3, [fp, #-8]
80028564:	ea000016 	b	800285c4 <freevm+0x9c>
80028568:	e51b3008 	ldr	r3, [fp, #-8]
8002856c:	e1a03103 	lsl	r3, r3, #2
80028570:	e51b2010 	ldr	r2, [fp, #-16]
80028574:	e0823003 	add	r3, r2, r3
80028578:	e5933000 	ldr	r3, [r3]
8002857c:	e2033003 	and	r3, r3, #3
80028580:	e3530000 	cmp	r3, #0
80028584:	0a00000b 	beq	800285b8 <freevm+0x90>
80028588:	e51b3008 	ldr	r3, [fp, #-8]
8002858c:	e1a03103 	lsl	r3, r3, #2
80028590:	e51b2010 	ldr	r2, [fp, #-16]
80028594:	e0823003 	add	r3, r2, r3
80028598:	e5933000 	ldr	r3, [r3]
8002859c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
800285a0:	e3c33003 	bic	r3, r3, #3
800285a4:	e1a00003 	mov	r0, r3
800285a8:	ebfffddb 	bl	80027d1c <p2v>
800285ac:	e50b000c 	str	r0, [fp, #-12]
800285b0:	e51b000c 	ldr	r0, [fp, #-12]
800285b4:	ebfffe00 	bl	80027dbc <kpt_free>
800285b8:	e51b3008 	ldr	r3, [fp, #-8]
800285bc:	e2833001 	add	r3, r3, #1
800285c0:	e50b3008 	str	r3, [fp, #-8]
800285c4:	e51b3008 	ldr	r3, [fp, #-8]
800285c8:	e35300ff 	cmp	r3, #255	@ 0xff
800285cc:	9affffe5 	bls	80028568 <freevm+0x40>
800285d0:	e51b0010 	ldr	r0, [fp, #-16]
800285d4:	ebfffdf8 	bl	80027dbc <kpt_free>
800285d8:	e1a00000 	nop			@ (mov r0, r0)
800285dc:	e24bd004 	sub	sp, fp, #4
800285e0:	e8bd8800 	pop	{fp, pc}
800285e4:	80029d38 	.word	0x80029d38

800285e8 <clearpteu>:
800285e8:	e92d4800 	push	{fp, lr}
800285ec:	e28db004 	add	fp, sp, #4
800285f0:	e24dd010 	sub	sp, sp, #16
800285f4:	e50b0010 	str	r0, [fp, #-16]
800285f8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800285fc:	e3a02000 	mov	r2, #0
80028600:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80028604:	e51b0010 	ldr	r0, [fp, #-16]
80028608:	ebfffe3b 	bl	80027efc <walkpgdir>
8002860c:	e50b0008 	str	r0, [fp, #-8]
80028610:	e51b3008 	ldr	r3, [fp, #-8]
80028614:	e3530000 	cmp	r3, #0
80028618:	1a000001 	bne	80028624 <clearpteu+0x3c>
8002861c:	e59f0024 	ldr	r0, [pc, #36]	@ 80028648 <clearpteu+0x60>
80028620:	ebffe521 	bl	80021aac <panic>
80028624:	e51b3008 	ldr	r3, [fp, #-8]
80028628:	e5933000 	ldr	r3, [r3]
8002862c:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028630:	e3832010 	orr	r2, r3, #16
80028634:	e51b3008 	ldr	r3, [fp, #-8]
80028638:	e5832000 	str	r2, [r3]
8002863c:	e1a00000 	nop			@ (mov r0, r0)
80028640:	e24bd004 	sub	sp, fp, #4
80028644:	e8bd8800 	pop	{fp, pc}
80028648:	80029d4c 	.word	0x80029d4c

8002864c <copyuvm>:
8002864c:	e92d4810 	push	{r4, fp, lr}
80028650:	e28db008 	add	fp, sp, #8
80028654:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
80028658:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
8002865c:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028660:	ebfffdff 	bl	80027e64 <kpt_alloc>
80028664:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028668:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002866c:	e3530000 	cmp	r3, #0
80028670:	1a000001 	bne	8002867c <copyuvm+0x30>
80028674:	e3a03000 	mov	r3, #0
80028678:	ea000047 	b	8002879c <copyuvm+0x150>
8002867c:	e3a03000 	mov	r3, #0
80028680:	e50b3010 	str	r3, [fp, #-16]
80028684:	ea000038 	b	8002876c <copyuvm+0x120>
80028688:	e51b3010 	ldr	r3, [fp, #-16]
8002868c:	e3a02000 	mov	r2, #0
80028690:	e1a01003 	mov	r1, r3
80028694:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80028698:	ebfffe17 	bl	80027efc <walkpgdir>
8002869c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800286a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800286a4:	e3530000 	cmp	r3, #0
800286a8:	1a000001 	bne	800286b4 <copyuvm+0x68>
800286ac:	e59f00f4 	ldr	r0, [pc, #244]	@ 800287a8 <copyuvm+0x15c>
800286b0:	ebffe4fd 	bl	80021aac <panic>
800286b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800286b8:	e5933000 	ldr	r3, [r3]
800286bc:	e2033003 	and	r3, r3, #3
800286c0:	e3530000 	cmp	r3, #0
800286c4:	1a000001 	bne	800286d0 <copyuvm+0x84>
800286c8:	e59f00dc 	ldr	r0, [pc, #220]	@ 800287ac <copyuvm+0x160>
800286cc:	ebffe4f6 	bl	80021aac <panic>
800286d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800286d4:	e5933000 	ldr	r3, [r3]
800286d8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800286dc:	e3c3300f 	bic	r3, r3, #15
800286e0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800286e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800286e8:	e5933000 	ldr	r3, [r3]
800286ec:	e1a03223 	lsr	r3, r3, #4
800286f0:	e2033003 	and	r3, r3, #3
800286f4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800286f8:	ebffe3cc 	bl	80021630 <alloc_page>
800286fc:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028700:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028704:	e3530000 	cmp	r3, #0
80028708:	0a00001d 	beq	80028784 <copyuvm+0x138>
8002870c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80028710:	ebfffd81 	bl	80027d1c <p2v>
80028714:	e1a03000 	mov	r3, r0
80028718:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002871c:	e1a01003 	mov	r1, r3
80028720:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028724:	ebffdea7 	bl	800201c8 <memmove>
80028728:	e51b4010 	ldr	r4, [fp, #-16]
8002872c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028730:	ebfffd6f 	bl	80027cf4 <v2p>
80028734:	e1a02000 	mov	r2, r0
80028738:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002873c:	e58d3000 	str	r3, [sp]
80028740:	e1a03002 	mov	r3, r2
80028744:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028748:	e1a01004 	mov	r1, r4
8002874c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028750:	ebfffe1f 	bl	80027fd4 <mappages>
80028754:	e1a03000 	mov	r3, r0
80028758:	e3530000 	cmp	r3, #0
8002875c:	ba00000a 	blt	8002878c <copyuvm+0x140>
80028760:	e51b3010 	ldr	r3, [fp, #-16]
80028764:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028768:	e50b3010 	str	r3, [fp, #-16]
8002876c:	e51b2010 	ldr	r2, [fp, #-16]
80028770:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028774:	e1520003 	cmp	r2, r3
80028778:	3affffc2 	bcc	80028688 <copyuvm+0x3c>
8002877c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028780:	ea000005 	b	8002879c <copyuvm+0x150>
80028784:	e1a00000 	nop			@ (mov r0, r0)
80028788:	ea000000 	b	80028790 <copyuvm+0x144>
8002878c:	e1a00000 	nop			@ (mov r0, r0)
80028790:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028794:	ebffff63 	bl	80028528 <freevm>
80028798:	e3a03000 	mov	r3, #0
8002879c:	e1a00003 	mov	r0, r3
800287a0:	e24bd008 	sub	sp, fp, #8
800287a4:	e8bd8810 	pop	{r4, fp, pc}
800287a8:	80029d58 	.word	0x80029d58
800287ac:	80029d74 	.word	0x80029d74

800287b0 <uva2ka>:
800287b0:	e92d4800 	push	{fp, lr}
800287b4:	e28db004 	add	fp, sp, #4
800287b8:	e24dd010 	sub	sp, sp, #16
800287bc:	e50b0010 	str	r0, [fp, #-16]
800287c0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800287c4:	e3a02000 	mov	r2, #0
800287c8:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800287cc:	e51b0010 	ldr	r0, [fp, #-16]
800287d0:	ebfffdc9 	bl	80027efc <walkpgdir>
800287d4:	e50b0008 	str	r0, [fp, #-8]
800287d8:	e51b3008 	ldr	r3, [fp, #-8]
800287dc:	e5933000 	ldr	r3, [r3]
800287e0:	e2033003 	and	r3, r3, #3
800287e4:	e3530000 	cmp	r3, #0
800287e8:	1a000001 	bne	800287f4 <uva2ka+0x44>
800287ec:	e3a03000 	mov	r3, #0
800287f0:	ea00000e 	b	80028830 <uva2ka+0x80>
800287f4:	e51b3008 	ldr	r3, [fp, #-8]
800287f8:	e5933000 	ldr	r3, [r3]
800287fc:	e2033030 	and	r3, r3, #48	@ 0x30
80028800:	e3530030 	cmp	r3, #48	@ 0x30
80028804:	0a000001 	beq	80028810 <uva2ka+0x60>
80028808:	e3a03000 	mov	r3, #0
8002880c:	ea000007 	b	80028830 <uva2ka+0x80>
80028810:	e51b3008 	ldr	r3, [fp, #-8]
80028814:	e5933000 	ldr	r3, [r3]
80028818:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002881c:	e3c3300f 	bic	r3, r3, #15
80028820:	e1a00003 	mov	r0, r3
80028824:	ebfffd3c 	bl	80027d1c <p2v>
80028828:	e1a03000 	mov	r3, r0
8002882c:	e1a00000 	nop			@ (mov r0, r0)
80028830:	e1a00003 	mov	r0, r3
80028834:	e24bd004 	sub	sp, fp, #4
80028838:	e8bd8800 	pop	{fp, pc}

8002883c <copyout>:
8002883c:	e92d4800 	push	{fp, lr}
80028840:	e28db004 	add	fp, sp, #4
80028844:	e24dd020 	sub	sp, sp, #32
80028848:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002884c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028850:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028854:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028858:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002885c:	e50b3008 	str	r3, [fp, #-8]
80028860:	ea00002c 	b	80028918 <copyout+0xdc>
80028864:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028868:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002886c:	e3c3300f 	bic	r3, r3, #15
80028870:	e50b3010 	str	r3, [fp, #-16]
80028874:	e51b3010 	ldr	r3, [fp, #-16]
80028878:	e1a01003 	mov	r1, r3
8002887c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028880:	ebffffca 	bl	800287b0 <uva2ka>
80028884:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028888:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002888c:	e3530000 	cmp	r3, #0
80028890:	1a000001 	bne	8002889c <copyout+0x60>
80028894:	e3e03000 	mvn	r3, #0
80028898:	ea000022 	b	80028928 <copyout+0xec>
8002889c:	e51b2010 	ldr	r2, [fp, #-16]
800288a0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800288a4:	e0423003 	sub	r3, r2, r3
800288a8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800288ac:	e50b300c 	str	r3, [fp, #-12]
800288b0:	e51b200c 	ldr	r2, [fp, #-12]
800288b4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800288b8:	e1520003 	cmp	r2, r3
800288bc:	9a000001 	bls	800288c8 <copyout+0x8c>
800288c0:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800288c4:	e50b300c 	str	r3, [fp, #-12]
800288c8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800288cc:	e51b3010 	ldr	r3, [fp, #-16]
800288d0:	e0423003 	sub	r3, r2, r3
800288d4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800288d8:	e0823003 	add	r3, r2, r3
800288dc:	e51b200c 	ldr	r2, [fp, #-12]
800288e0:	e51b1008 	ldr	r1, [fp, #-8]
800288e4:	e1a00003 	mov	r0, r3
800288e8:	ebffde36 	bl	800201c8 <memmove>
800288ec:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800288f0:	e51b300c 	ldr	r3, [fp, #-12]
800288f4:	e0423003 	sub	r3, r2, r3
800288f8:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800288fc:	e51b2008 	ldr	r2, [fp, #-8]
80028900:	e51b300c 	ldr	r3, [fp, #-12]
80028904:	e0823003 	add	r3, r2, r3
80028908:	e50b3008 	str	r3, [fp, #-8]
8002890c:	e51b3010 	ldr	r3, [fp, #-16]
80028910:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028914:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028918:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
8002891c:	e3530000 	cmp	r3, #0
80028920:	1affffcf 	bne	80028864 <copyout+0x28>
80028924:	e3a03000 	mov	r3, #0
80028928:	e1a00003 	mov	r0, r3
8002892c:	e24bd004 	sub	sp, fp, #4
80028930:	e8bd8800 	pop	{fp, pc}

80028934 <paging_init>:
80028934:	e92d4800 	push	{fp, lr}
80028938:	e28db004 	add	fp, sp, #4
8002893c:	e24dd010 	sub	sp, sp, #16
80028940:	e50b0008 	str	r0, [fp, #-8]
80028944:	e50b100c 	str	r1, [fp, #-12]
80028948:	e59f0034 	ldr	r0, [pc, #52]	@ 80028984 <paging_init+0x50>
8002894c:	e51b3008 	ldr	r3, [fp, #-8]
80028950:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028954:	e1a01003 	mov	r1, r3
80028958:	e51b200c 	ldr	r2, [fp, #-12]
8002895c:	e51b3008 	ldr	r3, [fp, #-8]
80028960:	e0422003 	sub	r2, r2, r3
80028964:	e3a03003 	mov	r3, #3
80028968:	e58d3000 	str	r3, [sp]
8002896c:	e51b3008 	ldr	r3, [fp, #-8]
80028970:	ebfffd97 	bl	80027fd4 <mappages>
80028974:	ebfffdd2 	bl	800280c4 <flush_tlb>
80028978:	e1a00000 	nop			@ (mov r0, r0)
8002897c:	e24bd004 	sub	sp, fp, #4
80028980:	e8bd8800 	pop	{fp, pc}
80028984:	80014000 	.word	0x80014000

80028988 <default_isr>:
80028988:	e92d4800 	push	{fp, lr}
8002898c:	e28db004 	add	fp, sp, #4
80028990:	e24dd008 	sub	sp, sp, #8
80028994:	e50b0008 	str	r0, [fp, #-8]
80028998:	e50b100c 	str	r1, [fp, #-12]
8002899c:	e51b100c 	ldr	r1, [fp, #-12]
800289a0:	e59f000c 	ldr	r0, [pc, #12]	@ 800289b4 <default_isr+0x2c>
800289a4:	ebffe3ba 	bl	80021894 <cprintf>
800289a8:	e1a00000 	nop			@ (mov r0, r0)
800289ac:	e24bd004 	sub	sp, fp, #4
800289b0:	e8bd8800 	pop	{fp, pc}
800289b4:	80029d90 	.word	0x80029d90

800289b8 <pic_init>:
800289b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800289bc:	e28db000 	add	fp, sp, #0
800289c0:	e24dd014 	sub	sp, sp, #20
800289c4:	e50b0010 	str	r0, [fp, #-16]
800289c8:	e59f2060 	ldr	r2, [pc, #96]	@ 80028a30 <pic_init+0x78>
800289cc:	e51b3010 	ldr	r3, [fp, #-16]
800289d0:	e5823000 	str	r3, [r2]
800289d4:	e59f3054 	ldr	r3, [pc, #84]	@ 80028a30 <pic_init+0x78>
800289d8:	e5933000 	ldr	r3, [r3]
800289dc:	e2833014 	add	r3, r3, #20
800289e0:	e3e02000 	mvn	r2, #0
800289e4:	e5832000 	str	r2, [r3]
800289e8:	e3a03000 	mov	r3, #0
800289ec:	e50b3008 	str	r3, [fp, #-8]
800289f0:	ea000006 	b	80028a10 <pic_init+0x58>
800289f4:	e59f2038 	ldr	r2, [pc, #56]	@ 80028a34 <pic_init+0x7c>
800289f8:	e51b3008 	ldr	r3, [fp, #-8]
800289fc:	e59f1034 	ldr	r1, [pc, #52]	@ 80028a38 <pic_init+0x80>
80028a00:	e7821103 	str	r1, [r2, r3, lsl #2]
80028a04:	e51b3008 	ldr	r3, [fp, #-8]
80028a08:	e2833001 	add	r3, r3, #1
80028a0c:	e50b3008 	str	r3, [fp, #-8]
80028a10:	e51b3008 	ldr	r3, [fp, #-8]
80028a14:	e353001f 	cmp	r3, #31
80028a18:	dafffff5 	ble	800289f4 <pic_init+0x3c>
80028a1c:	e1a00000 	nop			@ (mov r0, r0)
80028a20:	e1a00000 	nop			@ (mov r0, r0)
80028a24:	e28bd000 	add	sp, fp, #0
80028a28:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028a2c:	e12fff1e 	bx	lr
80028a30:	800af698 	.word	0x800af698
80028a34:	800af69c 	.word	0x800af69c
80028a38:	80028988 	.word	0x80028988

80028a3c <pic_enable>:
80028a3c:	e92d4800 	push	{fp, lr}
80028a40:	e28db004 	add	fp, sp, #4
80028a44:	e24dd008 	sub	sp, sp, #8
80028a48:	e50b0008 	str	r0, [fp, #-8]
80028a4c:	e50b100c 	str	r1, [fp, #-12]
80028a50:	e51b3008 	ldr	r3, [fp, #-8]
80028a54:	e3530000 	cmp	r3, #0
80028a58:	ba000002 	blt	80028a68 <pic_enable+0x2c>
80028a5c:	e51b3008 	ldr	r3, [fp, #-8]
80028a60:	e353001f 	cmp	r3, #31
80028a64:	da000001 	ble	80028a70 <pic_enable+0x34>
80028a68:	e59f0038 	ldr	r0, [pc, #56]	@ 80028aa8 <pic_enable+0x6c>
80028a6c:	ebffe40e 	bl	80021aac <panic>
80028a70:	e59f1034 	ldr	r1, [pc, #52]	@ 80028aac <pic_enable+0x70>
80028a74:	e51b3008 	ldr	r3, [fp, #-8]
80028a78:	e51b200c 	ldr	r2, [fp, #-12]
80028a7c:	e7812103 	str	r2, [r1, r3, lsl #2]
80028a80:	e3a02001 	mov	r2, #1
80028a84:	e51b3008 	ldr	r3, [fp, #-8]
80028a88:	e1a02312 	lsl	r2, r2, r3
80028a8c:	e59f301c 	ldr	r3, [pc, #28]	@ 80028ab0 <pic_enable+0x74>
80028a90:	e5933000 	ldr	r3, [r3]
80028a94:	e2833010 	add	r3, r3, #16
80028a98:	e5832000 	str	r2, [r3]
80028a9c:	e1a00000 	nop			@ (mov r0, r0)
80028aa0:	e24bd004 	sub	sp, fp, #4
80028aa4:	e8bd8800 	pop	{fp, pc}
80028aa8:	80029dac 	.word	0x80029dac
80028aac:	800af69c 	.word	0x800af69c
80028ab0:	800af698 	.word	0x800af698

80028ab4 <pic_disable>:
80028ab4:	e92d4800 	push	{fp, lr}
80028ab8:	e28db004 	add	fp, sp, #4
80028abc:	e24dd008 	sub	sp, sp, #8
80028ac0:	e50b0008 	str	r0, [fp, #-8]
80028ac4:	e51b3008 	ldr	r3, [fp, #-8]
80028ac8:	e3530000 	cmp	r3, #0
80028acc:	ba000002 	blt	80028adc <pic_disable+0x28>
80028ad0:	e51b3008 	ldr	r3, [fp, #-8]
80028ad4:	e353001f 	cmp	r3, #31
80028ad8:	da000001 	ble	80028ae4 <pic_disable+0x30>
80028adc:	e59f0038 	ldr	r0, [pc, #56]	@ 80028b1c <pic_disable+0x68>
80028ae0:	ebffe3f1 	bl	80021aac <panic>
80028ae4:	e3a02001 	mov	r2, #1
80028ae8:	e51b3008 	ldr	r3, [fp, #-8]
80028aec:	e1a02312 	lsl	r2, r2, r3
80028af0:	e59f3028 	ldr	r3, [pc, #40]	@ 80028b20 <pic_disable+0x6c>
80028af4:	e5933000 	ldr	r3, [r3]
80028af8:	e2833014 	add	r3, r3, #20
80028afc:	e5832000 	str	r2, [r3]
80028b00:	e59f201c 	ldr	r2, [pc, #28]	@ 80028b24 <pic_disable+0x70>
80028b04:	e51b3008 	ldr	r3, [fp, #-8]
80028b08:	e59f1018 	ldr	r1, [pc, #24]	@ 80028b28 <pic_disable+0x74>
80028b0c:	e7821103 	str	r1, [r2, r3, lsl #2]
80028b10:	e1a00000 	nop			@ (mov r0, r0)
80028b14:	e24bd004 	sub	sp, fp, #4
80028b18:	e8bd8800 	pop	{fp, pc}
80028b1c:	80029dac 	.word	0x80029dac
80028b20:	800af698 	.word	0x800af698
80028b24:	800af69c 	.word	0x800af69c
80028b28:	80028988 	.word	0x80028988

80028b2c <pic_dispatch>:
80028b2c:	e92d4800 	push	{fp, lr}
80028b30:	e28db004 	add	fp, sp, #4
80028b34:	e24dd010 	sub	sp, sp, #16
80028b38:	e50b0010 	str	r0, [fp, #-16]
80028b3c:	e59f3080 	ldr	r3, [pc, #128]	@ 80028bc4 <pic_dispatch+0x98>
80028b40:	e5933000 	ldr	r3, [r3]
80028b44:	e5933000 	ldr	r3, [r3]
80028b48:	e50b300c 	str	r3, [fp, #-12]
80028b4c:	e3a03000 	mov	r3, #0
80028b50:	e50b3008 	str	r3, [fp, #-8]
80028b54:	ea000010 	b	80028b9c <pic_dispatch+0x70>
80028b58:	e3a02001 	mov	r2, #1
80028b5c:	e51b3008 	ldr	r3, [fp, #-8]
80028b60:	e1a03312 	lsl	r3, r2, r3
80028b64:	e1a02003 	mov	r2, r3
80028b68:	e51b300c 	ldr	r3, [fp, #-12]
80028b6c:	e0033002 	and	r3, r3, r2
80028b70:	e3530000 	cmp	r3, #0
80028b74:	0a000005 	beq	80028b90 <pic_dispatch+0x64>
80028b78:	e59f2048 	ldr	r2, [pc, #72]	@ 80028bc8 <pic_dispatch+0x9c>
80028b7c:	e51b3008 	ldr	r3, [fp, #-8]
80028b80:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80028b84:	e51b1008 	ldr	r1, [fp, #-8]
80028b88:	e51b0010 	ldr	r0, [fp, #-16]
80028b8c:	e12fff33 	blx	r3
80028b90:	e51b3008 	ldr	r3, [fp, #-8]
80028b94:	e2833001 	add	r3, r3, #1
80028b98:	e50b3008 	str	r3, [fp, #-8]
80028b9c:	e51b3008 	ldr	r3, [fp, #-8]
80028ba0:	e353001f 	cmp	r3, #31
80028ba4:	daffffeb 	ble	80028b58 <pic_dispatch+0x2c>
80028ba8:	e59f3014 	ldr	r3, [pc, #20]	@ 80028bc4 <pic_dispatch+0x98>
80028bac:	e5933000 	ldr	r3, [r3]
80028bb0:	e5933000 	ldr	r3, [r3]
80028bb4:	e50b300c 	str	r3, [fp, #-12]
80028bb8:	e1a00000 	nop			@ (mov r0, r0)
80028bbc:	e24bd004 	sub	sp, fp, #4
80028bc0:	e8bd8800 	pop	{fp, pc}
80028bc4:	800af698 	.word	0x800af698
80028bc8:	800af69c 	.word	0x800af69c

80028bcc <ack_timer>:
80028bcc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028bd0:	e28db000 	add	fp, sp, #0
80028bd4:	e24dd00c 	sub	sp, sp, #12
80028bd8:	e59f3020 	ldr	r3, [pc, #32]	@ 80028c00 <ack_timer+0x34>
80028bdc:	e50b3008 	str	r3, [fp, #-8]
80028be0:	e51b3008 	ldr	r3, [fp, #-8]
80028be4:	e283300c 	add	r3, r3, #12
80028be8:	e3a02001 	mov	r2, #1
80028bec:	e5832000 	str	r2, [r3]
80028bf0:	e1a00000 	nop			@ (mov r0, r0)
80028bf4:	e28bd000 	add	sp, fp, #0
80028bf8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028bfc:	e12fff1e 	bx	lr
80028c00:	901e2000 	.word	0x901e2000

80028c04 <timer_init>:
80028c04:	e92d4800 	push	{fp, lr}
80028c08:	e28db004 	add	fp, sp, #4
80028c0c:	e24dd010 	sub	sp, sp, #16
80028c10:	e50b0010 	str	r0, [fp, #-16]
80028c14:	e59f305c 	ldr	r3, [pc, #92]	@ 80028c78 <timer_init+0x74>
80028c18:	e50b3008 	str	r3, [fp, #-8]
80028c1c:	e51b3010 	ldr	r3, [fp, #-16]
80028c20:	e59f2054 	ldr	r2, [pc, #84]	@ 80028c7c <timer_init+0x78>
80028c24:	e5823000 	str	r3, [r2]
80028c28:	e59f1050 	ldr	r1, [pc, #80]	@ 80028c80 <timer_init+0x7c>
80028c2c:	e59f0050 	ldr	r0, [pc, #80]	@ 80028c84 <timer_init+0x80>
80028c30:	ebfff4b0 	bl	80025ef8 <initlock>
80028c34:	e51b1010 	ldr	r1, [fp, #-16]
80028c38:	e59f0048 	ldr	r0, [pc, #72]	@ 80028c88 <timer_init+0x84>
80028c3c:	eb0001d9 	bl	800293a8 <__divsi3>
80028c40:	e1a03000 	mov	r3, r0
80028c44:	e1a02003 	mov	r2, r3
80028c48:	e51b3008 	ldr	r3, [fp, #-8]
80028c4c:	e5832000 	str	r2, [r3]
80028c50:	e51b3008 	ldr	r3, [fp, #-8]
80028c54:	e2833008 	add	r3, r3, #8
80028c58:	e3a020e2 	mov	r2, #226	@ 0xe2
80028c5c:	e5832000 	str	r2, [r3]
80028c60:	e59f1024 	ldr	r1, [pc, #36]	@ 80028c8c <timer_init+0x88>
80028c64:	e3a00004 	mov	r0, #4
80028c68:	ebffff73 	bl	80028a3c <pic_enable>
80028c6c:	e1a00000 	nop			@ (mov r0, r0)
80028c70:	e24bd004 	sub	sp, fp, #4
80028c74:	e8bd8800 	pop	{fp, pc}
80028c78:	901e2000 	.word	0x901e2000
80028c7c:	800af754 	.word	0x800af754
80028c80:	80029dc8 	.word	0x80029dc8
80028c84:	800af71c 	.word	0x800af71c
80028c88:	000f4240 	.word	0x000f4240
80028c8c:	80028c90 	.word	0x80028c90

80028c90 <isr_timer>:
80028c90:	e92d4800 	push	{fp, lr}
80028c94:	e28db004 	add	fp, sp, #4
80028c98:	e24dd008 	sub	sp, sp, #8
80028c9c:	e50b0008 	str	r0, [fp, #-8]
80028ca0:	e50b100c 	str	r1, [fp, #-12]
80028ca4:	e59f0034 	ldr	r0, [pc, #52]	@ 80028ce0 <isr_timer+0x50>
80028ca8:	ebfff4a4 	bl	80025f40 <acquire>
80028cac:	e59f3030 	ldr	r3, [pc, #48]	@ 80028ce4 <isr_timer+0x54>
80028cb0:	e5933000 	ldr	r3, [r3]
80028cb4:	e2833001 	add	r3, r3, #1
80028cb8:	e59f2024 	ldr	r2, [pc, #36]	@ 80028ce4 <isr_timer+0x54>
80028cbc:	e5823000 	str	r3, [r2]
80028cc0:	e59f001c 	ldr	r0, [pc, #28]	@ 80028ce4 <isr_timer+0x54>
80028cc4:	ebfff3cb 	bl	80025bf8 <wakeup>
80028cc8:	e59f0010 	ldr	r0, [pc, #16]	@ 80028ce0 <isr_timer+0x50>
80028ccc:	ebfff4a6 	bl	80025f6c <release>
80028cd0:	ebffffbd 	bl	80028bcc <ack_timer>
80028cd4:	e1a00000 	nop			@ (mov r0, r0)
80028cd8:	e24bd004 	sub	sp, fp, #4
80028cdc:	e8bd8800 	pop	{fp, pc}
80028ce0:	800af71c 	.word	0x800af71c
80028ce4:	800af750 	.word	0x800af750

80028ce8 <micro_delay>:
80028ce8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028cec:	e28db000 	add	fp, sp, #0
80028cf0:	e24dd014 	sub	sp, sp, #20
80028cf4:	e50b0010 	str	r0, [fp, #-16]
80028cf8:	e59f3054 	ldr	r3, [pc, #84]	@ 80028d54 <micro_delay+0x6c>
80028cfc:	e50b3008 	str	r3, [fp, #-8]
80028d00:	e51b3008 	ldr	r3, [fp, #-8]
80028d04:	e2833008 	add	r3, r3, #8
80028d08:	e3a02082 	mov	r2, #130	@ 0x82
80028d0c:	e5832000 	str	r2, [r3]
80028d10:	e51b2010 	ldr	r2, [fp, #-16]
80028d14:	e51b3008 	ldr	r3, [fp, #-8]
80028d18:	e5832000 	str	r2, [r3]
80028d1c:	e1a00000 	nop			@ (mov r0, r0)
80028d20:	e51b3008 	ldr	r3, [fp, #-8]
80028d24:	e2833004 	add	r3, r3, #4
80028d28:	e5933000 	ldr	r3, [r3]
80028d2c:	e3530000 	cmp	r3, #0
80028d30:	cafffffa 	bgt	80028d20 <micro_delay+0x38>
80028d34:	e51b3008 	ldr	r3, [fp, #-8]
80028d38:	e2833008 	add	r3, r3, #8
80028d3c:	e3a02000 	mov	r2, #0
80028d40:	e5832000 	str	r2, [r3]
80028d44:	e1a00000 	nop			@ (mov r0, r0)
80028d48:	e28bd000 	add	sp, fp, #0
80028d4c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028d50:	e12fff1e 	bx	lr
80028d54:	901e2020 	.word	0x901e2020

80028d58 <uart_init>:
80028d58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028d5c:	e28db000 	add	fp, sp, #0
80028d60:	e24dd014 	sub	sp, sp, #20
80028d64:	e50b0010 	str	r0, [fp, #-16]
80028d68:	e59f20a4 	ldr	r2, [pc, #164]	@ 80028e14 <uart_init+0xbc>
80028d6c:	e51b3010 	ldr	r3, [fp, #-16]
80028d70:	e5823000 	str	r3, [r2]
80028d74:	e59f3098 	ldr	r3, [pc, #152]	@ 80028e14 <uart_init+0xbc>
80028d78:	e5933000 	ldr	r3, [r3]
80028d7c:	e2833024 	add	r3, r3, #36	@ 0x24
80028d80:	e3a0204e 	mov	r2, #78	@ 0x4e
80028d84:	e5832000 	str	r2, [r3]
80028d88:	e3a03c96 	mov	r3, #38400	@ 0x9600
80028d8c:	e50b3008 	str	r3, [fp, #-8]
80028d90:	e51b3008 	ldr	r3, [fp, #-8]
80028d94:	e2833e96 	add	r3, r3, #2400	@ 0x960
80028d98:	e1a02103 	lsl	r2, r3, #2
80028d9c:	e59f3070 	ldr	r3, [pc, #112]	@ 80028e14 <uart_init+0xbc>
80028da0:	e5933000 	ldr	r3, [r3]
80028da4:	e2833028 	add	r3, r3, #40	@ 0x28
80028da8:	e59f1068 	ldr	r1, [pc, #104]	@ 80028e18 <uart_init+0xc0>
80028dac:	e0821291 	umull	r1, r2, r1, r2
80028db0:	e1a025a2 	lsr	r2, r2, #11
80028db4:	e5832000 	str	r2, [r3]
80028db8:	e59f3054 	ldr	r3, [pc, #84]	@ 80028e14 <uart_init+0xbc>
80028dbc:	e5933000 	ldr	r3, [r3]
80028dc0:	e2833030 	add	r3, r3, #48	@ 0x30
80028dc4:	e5933000 	ldr	r3, [r3]
80028dc8:	e59f2044 	ldr	r2, [pc, #68]	@ 80028e14 <uart_init+0xbc>
80028dcc:	e5922000 	ldr	r2, [r2]
80028dd0:	e2822030 	add	r2, r2, #48	@ 0x30
80028dd4:	e3833c03 	orr	r3, r3, #768	@ 0x300
80028dd8:	e3833001 	orr	r3, r3, #1
80028ddc:	e5823000 	str	r3, [r2]
80028de0:	e59f302c 	ldr	r3, [pc, #44]	@ 80028e14 <uart_init+0xbc>
80028de4:	e5933000 	ldr	r3, [r3]
80028de8:	e283302c 	add	r3, r3, #44	@ 0x2c
80028dec:	e5932000 	ldr	r2, [r3]
80028df0:	e59f301c 	ldr	r3, [pc, #28]	@ 80028e14 <uart_init+0xbc>
80028df4:	e5933000 	ldr	r3, [r3]
80028df8:	e283302c 	add	r3, r3, #44	@ 0x2c
80028dfc:	e3822010 	orr	r2, r2, #16
80028e00:	e5832000 	str	r2, [r3]
80028e04:	e1a00000 	nop			@ (mov r0, r0)
80028e08:	e28bd000 	add	sp, fp, #0
80028e0c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028e10:	e12fff1e 	bx	lr
80028e14:	800af758 	.word	0x800af758
80028e18:	1b4e81b5 	.word	0x1b4e81b5

80028e1c <uart_enable_rx>:
80028e1c:	e92d4800 	push	{fp, lr}
80028e20:	e28db004 	add	fp, sp, #4
80028e24:	e59f3020 	ldr	r3, [pc, #32]	@ 80028e4c <uart_enable_rx+0x30>
80028e28:	e5933000 	ldr	r3, [r3]
80028e2c:	e2833038 	add	r3, r3, #56	@ 0x38
80028e30:	e3a02010 	mov	r2, #16
80028e34:	e5832000 	str	r2, [r3]
80028e38:	e59f1010 	ldr	r1, [pc, #16]	@ 80028e50 <uart_enable_rx+0x34>
80028e3c:	e3a0000c 	mov	r0, #12
80028e40:	ebfffefd 	bl	80028a3c <pic_enable>
80028e44:	e1a00000 	nop			@ (mov r0, r0)
80028e48:	e8bd8800 	pop	{fp, pc}
80028e4c:	800af758 	.word	0x800af758
80028e50:	80028ef8 	.word	0x80028ef8

80028e54 <uartputc>:
80028e54:	e92d4800 	push	{fp, lr}
80028e58:	e28db004 	add	fp, sp, #4
80028e5c:	e24dd008 	sub	sp, sp, #8
80028e60:	e50b0008 	str	r0, [fp, #-8]
80028e64:	ea000001 	b	80028e70 <uartputc+0x1c>
80028e68:	e3a0000a 	mov	r0, #10
80028e6c:	ebffff9d 	bl	80028ce8 <micro_delay>
80028e70:	e59f3030 	ldr	r3, [pc, #48]	@ 80028ea8 <uartputc+0x54>
80028e74:	e5933000 	ldr	r3, [r3]
80028e78:	e2833018 	add	r3, r3, #24
80028e7c:	e5933000 	ldr	r3, [r3]
80028e80:	e2033020 	and	r3, r3, #32
80028e84:	e3530000 	cmp	r3, #0
80028e88:	1afffff6 	bne	80028e68 <uartputc+0x14>
80028e8c:	e59f3014 	ldr	r3, [pc, #20]	@ 80028ea8 <uartputc+0x54>
80028e90:	e5933000 	ldr	r3, [r3]
80028e94:	e51b2008 	ldr	r2, [fp, #-8]
80028e98:	e5832000 	str	r2, [r3]
80028e9c:	e1a00000 	nop			@ (mov r0, r0)
80028ea0:	e24bd004 	sub	sp, fp, #4
80028ea4:	e8bd8800 	pop	{fp, pc}
80028ea8:	800af758 	.word	0x800af758

80028eac <uartgetc>:
80028eac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028eb0:	e28db000 	add	fp, sp, #0
80028eb4:	e59f3038 	ldr	r3, [pc, #56]	@ 80028ef4 <uartgetc+0x48>
80028eb8:	e5933000 	ldr	r3, [r3]
80028ebc:	e2833018 	add	r3, r3, #24
80028ec0:	e5933000 	ldr	r3, [r3]
80028ec4:	e2033010 	and	r3, r3, #16
80028ec8:	e3530000 	cmp	r3, #0
80028ecc:	0a000001 	beq	80028ed8 <uartgetc+0x2c>
80028ed0:	e3e03000 	mvn	r3, #0
80028ed4:	ea000002 	b	80028ee4 <uartgetc+0x38>
80028ed8:	e59f3014 	ldr	r3, [pc, #20]	@ 80028ef4 <uartgetc+0x48>
80028edc:	e5933000 	ldr	r3, [r3]
80028ee0:	e5933000 	ldr	r3, [r3]
80028ee4:	e1a00003 	mov	r0, r3
80028ee8:	e28bd000 	add	sp, fp, #0
80028eec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028ef0:	e12fff1e 	bx	lr
80028ef4:	800af758 	.word	0x800af758

80028ef8 <isr_uart>:
80028ef8:	e92d4800 	push	{fp, lr}
80028efc:	e28db004 	add	fp, sp, #4
80028f00:	e24dd008 	sub	sp, sp, #8
80028f04:	e50b0008 	str	r0, [fp, #-8]
80028f08:	e50b100c 	str	r1, [fp, #-12]
80028f0c:	e59f303c 	ldr	r3, [pc, #60]	@ 80028f50 <isr_uart+0x58>
80028f10:	e5933000 	ldr	r3, [r3]
80028f14:	e2833040 	add	r3, r3, #64	@ 0x40
80028f18:	e5933000 	ldr	r3, [r3]
80028f1c:	e2033010 	and	r3, r3, #16
80028f20:	e3530000 	cmp	r3, #0
80028f24:	0a000001 	beq	80028f30 <isr_uart+0x38>
80028f28:	e59f0024 	ldr	r0, [pc, #36]	@ 80028f54 <isr_uart+0x5c>
80028f2c:	ebffe312 	bl	80021b7c <consoleintr>
80028f30:	e59f3018 	ldr	r3, [pc, #24]	@ 80028f50 <isr_uart+0x58>
80028f34:	e5933000 	ldr	r3, [r3]
80028f38:	e2833044 	add	r3, r3, #68	@ 0x44
80028f3c:	e3a02030 	mov	r2, #48	@ 0x30
80028f40:	e5832000 	str	r2, [r3]
80028f44:	e1a00000 	nop			@ (mov r0, r0)
80028f48:	e24bd004 	sub	sp, fp, #4
80028f4c:	e8bd8800 	pop	{fp, pc}
80028f50:	800af758 	.word	0x800af758
80028f54:	80028eac 	.word	0x80028eac

80028f58 <auto_complete>:
80028f58:	e92d4800 	push	{fp, lr}
80028f5c:	e28db004 	add	fp, sp, #4
80028f60:	e24ddf5a 	sub	sp, sp, #360	@ 0x168
80028f64:	e50b0168 	str	r0, [fp, #-360]	@ 0xfffffe98
80028f68:	e50b116c 	str	r1, [fp, #-364]	@ 0xfffffe94
80028f6c:	e3a03000 	mov	r3, #0
80028f70:	e50b300c 	str	r3, [fp, #-12]
80028f74:	e59f0308 	ldr	r0, [pc, #776]	@ 80029284 <auto_complete+0x32c>
80028f78:	ebffecc0 	bl	80024280 <namei>
80028f7c:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
80028f80:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028f84:	e3530000 	cmp	r3, #0
80028f88:	1a000003 	bne	80028f9c <auto_complete+0x44>
80028f8c:	e59f02f4 	ldr	r0, [pc, #756]	@ 80029288 <auto_complete+0x330>
80028f90:	ebffe23f 	bl	80021894 <cprintf>
80028f94:	e3a03000 	mov	r3, #0
80028f98:	ea0000b6 	b	80029278 <auto_complete+0x320>
80028f9c:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028fa0:	ebffe8e3 	bl	80023334 <ilock>
80028fa4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028fa8:	e1d331f0 	ldrsh	r3, [r3, #16]
80028fac:	e3530001 	cmp	r3, #1
80028fb0:	0a000003 	beq	80028fc4 <auto_complete+0x6c>
80028fb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028fb8:	ebffe99e 	bl	80023638 <iunlockput>
80028fbc:	e3a03000 	mov	r3, #0
80028fc0:	ea0000ac 	b	80029278 <auto_complete+0x320>
80028fc4:	e3a03000 	mov	r3, #0
80028fc8:	e50b3008 	str	r3, [fp, #-8]
80028fcc:	ea000042 	b	800290dc <auto_complete+0x184>
80028fd0:	e24b1038 	sub	r1, fp, #56	@ 0x38
80028fd4:	e3a03010 	mov	r3, #16
80028fd8:	e51b2008 	ldr	r2, [fp, #-8]
80028fdc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028fe0:	ebffea7f 	bl	800239e4 <readi>
80028fe4:	e1a03000 	mov	r3, r0
80028fe8:	e3530010 	cmp	r3, #16
80028fec:	1a000041 	bne	800290f8 <auto_complete+0x1a0>
80028ff0:	e15b33b8 	ldrh	r3, [fp, #-56]	@ 0xffffffc8
80028ff4:	e3530000 	cmp	r3, #0
80028ff8:	0a000033 	beq	800290cc <auto_complete+0x174>
80028ffc:	e51b300c 	ldr	r3, [fp, #-12]
80029000:	e3530013 	cmp	r3, #19
80029004:	ca000031 	bgt	800290d0 <auto_complete+0x178>
80029008:	e3a0300e 	mov	r3, #14
8002900c:	e50b3010 	str	r3, [fp, #-16]
80029010:	ea000002 	b	80029020 <auto_complete+0xc8>
80029014:	e51b3010 	ldr	r3, [fp, #-16]
80029018:	e2433001 	sub	r3, r3, #1
8002901c:	e50b3010 	str	r3, [fp, #-16]
80029020:	e51b3010 	ldr	r3, [fp, #-16]
80029024:	e3530000 	cmp	r3, #0
80029028:	da00000d 	ble	80029064 <auto_complete+0x10c>
8002902c:	e51b3010 	ldr	r3, [fp, #-16]
80029030:	e2433001 	sub	r3, r3, #1
80029034:	e2433004 	sub	r3, r3, #4
80029038:	e083300b 	add	r3, r3, fp
8002903c:	e5533032 	ldrb	r3, [r3, #-50]	@ 0xffffffce
80029040:	e3530020 	cmp	r3, #32
80029044:	0afffff2 	beq	80029014 <auto_complete+0xbc>
80029048:	e51b3010 	ldr	r3, [fp, #-16]
8002904c:	e2433001 	sub	r3, r3, #1
80029050:	e2433004 	sub	r3, r3, #4
80029054:	e083300b 	add	r3, r3, fp
80029058:	e5533032 	ldrb	r3, [r3, #-50]	@ 0xffffffce
8002905c:	e3530000 	cmp	r3, #0
80029060:	0affffeb 	beq	80029014 <auto_complete+0xbc>
80029064:	e24b1f59 	sub	r1, fp, #356	@ 0x164
80029068:	e51b200c 	ldr	r2, [fp, #-12]
8002906c:	e1a03002 	mov	r3, r2
80029070:	e1a03203 	lsl	r3, r3, #4
80029074:	e0433002 	sub	r3, r3, r2
80029078:	e0810003 	add	r0, r1, r3
8002907c:	e51b2010 	ldr	r2, [fp, #-16]
80029080:	e24b3038 	sub	r3, fp, #56	@ 0x38
80029084:	e2833002 	add	r3, r3, #2
80029088:	e1a01003 	mov	r1, r3
8002908c:	ebffdc4d 	bl	800201c8 <memmove>
80029090:	e51b200c 	ldr	r2, [fp, #-12]
80029094:	e1a03002 	mov	r3, r2
80029098:	e1a03203 	lsl	r3, r3, #4
8002909c:	e0433002 	sub	r3, r3, r2
800290a0:	e2433004 	sub	r3, r3, #4
800290a4:	e083200b 	add	r2, r3, fp
800290a8:	e51b3010 	ldr	r3, [fp, #-16]
800290ac:	e0823003 	add	r3, r2, r3
800290b0:	e2433e16 	sub	r3, r3, #352	@ 0x160
800290b4:	e3a02000 	mov	r2, #0
800290b8:	e5c32000 	strb	r2, [r3]
800290bc:	e51b300c 	ldr	r3, [fp, #-12]
800290c0:	e2833001 	add	r3, r3, #1
800290c4:	e50b300c 	str	r3, [fp, #-12]
800290c8:	ea000000 	b	800290d0 <auto_complete+0x178>
800290cc:	e1a00000 	nop			@ (mov r0, r0)
800290d0:	e51b3008 	ldr	r3, [fp, #-8]
800290d4:	e2833010 	add	r3, r3, #16
800290d8:	e50b3008 	str	r3, [fp, #-8]
800290dc:	e51b3008 	ldr	r3, [fp, #-8]
800290e0:	e2832010 	add	r2, r3, #16
800290e4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800290e8:	e5933018 	ldr	r3, [r3, #24]
800290ec:	e1520003 	cmp	r2, r3
800290f0:	9affffb6 	bls	80028fd0 <auto_complete+0x78>
800290f4:	ea000000 	b	800290fc <auto_complete+0x1a4>
800290f8:	e1a00000 	nop			@ (mov r0, r0)
800290fc:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80029100:	ebffe94c 	bl	80023638 <iunlockput>
80029104:	e3a03000 	mov	r3, #0
80029108:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002910c:	e3e03000 	mvn	r3, #0
80029110:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029114:	e51b0168 	ldr	r0, [fp, #-360]	@ 0xfffffe98
80029118:	ebffdcf3 	bl	800204ec <strlen>
8002911c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80029120:	e3a03000 	mov	r3, #0
80029124:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80029128:	ea000014 	b	80029180 <auto_complete+0x228>
8002912c:	e24b1f59 	sub	r1, fp, #356	@ 0x164
80029130:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029134:	e1a03002 	mov	r3, r2
80029138:	e1a03203 	lsl	r3, r3, #4
8002913c:	e0433002 	sub	r3, r3, r2
80029140:	e0813003 	add	r3, r1, r3
80029144:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80029148:	e51b1168 	ldr	r1, [fp, #-360]	@ 0xfffffe98
8002914c:	e1a00003 	mov	r0, r3
80029150:	ebffdc69 	bl	800202fc <strncmp>
80029154:	e1a03000 	mov	r3, r0
80029158:	e3530000 	cmp	r3, #0
8002915c:	1a000004 	bne	80029174 <auto_complete+0x21c>
80029160:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029164:	e2833001 	add	r3, r3, #1
80029168:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002916c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029170:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80029174:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80029178:	e2833001 	add	r3, r3, #1
8002917c:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80029180:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80029184:	e51b300c 	ldr	r3, [fp, #-12]
80029188:	e1520003 	cmp	r2, r3
8002918c:	baffffe6 	blt	8002912c <auto_complete+0x1d4>
80029190:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029194:	e3530001 	cmp	r3, #1
80029198:	1a000010 	bne	800291e0 <auto_complete+0x288>
8002919c:	e24b1f59 	sub	r1, fp, #356	@ 0x164
800291a0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800291a4:	e1a03002 	mov	r3, r2
800291a8:	e1a03203 	lsl	r3, r3, #4
800291ac:	e0433002 	sub	r3, r3, r2
800291b0:	e0813003 	add	r3, r1, r3
800291b4:	e3a0200f 	mov	r2, #15
800291b8:	e1a01003 	mov	r1, r3
800291bc:	e51b0168 	ldr	r0, [fp, #-360]	@ 0xfffffe98
800291c0:	ebffdca2 	bl	80020450 <safestrcpy>
800291c4:	e51b0168 	ldr	r0, [fp, #-360]	@ 0xfffffe98
800291c8:	ebffdcc7 	bl	800204ec <strlen>
800291cc:	e1a03000 	mov	r3, r0
800291d0:	e1a02003 	mov	r2, r3
800291d4:	e51b316c 	ldr	r3, [fp, #-364]	@ 0xfffffe94
800291d8:	e5832000 	str	r2, [r3]
800291dc:	ea000024 	b	80029274 <auto_complete+0x31c>
800291e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800291e4:	e3530001 	cmp	r3, #1
800291e8:	da000021 	ble	80029274 <auto_complete+0x31c>
800291ec:	e59f0098 	ldr	r0, [pc, #152]	@ 8002928c <auto_complete+0x334>
800291f0:	ebffe1a7 	bl	80021894 <cprintf>
800291f4:	e3a03000 	mov	r3, #0
800291f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800291fc:	ea000018 	b	80029264 <auto_complete+0x30c>
80029200:	e24b1f59 	sub	r1, fp, #356	@ 0x164
80029204:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80029208:	e1a03002 	mov	r3, r2
8002920c:	e1a03203 	lsl	r3, r3, #4
80029210:	e0433002 	sub	r3, r3, r2
80029214:	e0813003 	add	r3, r1, r3
80029218:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002921c:	e51b1168 	ldr	r1, [fp, #-360]	@ 0xfffffe98
80029220:	e1a00003 	mov	r0, r3
80029224:	ebffdc34 	bl	800202fc <strncmp>
80029228:	e1a03000 	mov	r3, r0
8002922c:	e3530000 	cmp	r3, #0
80029230:	1a000008 	bne	80029258 <auto_complete+0x300>
80029234:	e24b1f59 	sub	r1, fp, #356	@ 0x164
80029238:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
8002923c:	e1a03002 	mov	r3, r2
80029240:	e1a03203 	lsl	r3, r3, #4
80029244:	e0433002 	sub	r3, r3, r2
80029248:	e0813003 	add	r3, r1, r3
8002924c:	e1a01003 	mov	r1, r3
80029250:	e59f0038 	ldr	r0, [pc, #56]	@ 80029290 <auto_complete+0x338>
80029254:	ebffe18e 	bl	80021894 <cprintf>
80029258:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002925c:	e2833001 	add	r3, r3, #1
80029260:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80029264:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80029268:	e51b300c 	ldr	r3, [fp, #-12]
8002926c:	e1520003 	cmp	r2, r3
80029270:	baffffe2 	blt	80029200 <auto_complete+0x2a8>
80029274:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80029278:	e1a00003 	mov	r0, r3
8002927c:	e24bd004 	sub	sp, fp, #4
80029280:	e8bd8800 	pop	{fp, pc}
80029284:	80029dd0 	.word	0x80029dd0
80029288:	80029dd4 	.word	0x80029dd4
8002928c:	80029df8 	.word	0x80029df8
80029290:	80029dfc 	.word	0x80029dfc

80029294 <__udivsi3>:
80029294:	e2512001 	subs	r2, r1, #1
80029298:	012fff1e 	bxeq	lr
8002929c:	3a000036 	bcc	8002937c <__udivsi3+0xe8>
800292a0:	e1500001 	cmp	r0, r1
800292a4:	9a000022 	bls	80029334 <__udivsi3+0xa0>
800292a8:	e1110002 	tst	r1, r2
800292ac:	0a000023 	beq	80029340 <__udivsi3+0xac>
800292b0:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
800292b4:	01a01181 	lsleq	r1, r1, #3
800292b8:	03a03008 	moveq	r3, #8
800292bc:	13a03001 	movne	r3, #1
800292c0:	e3510201 	cmp	r1, #268435456	@ 0x10000000
800292c4:	31510000 	cmpcc	r1, r0
800292c8:	31a01201 	lslcc	r1, r1, #4
800292cc:	31a03203 	lslcc	r3, r3, #4
800292d0:	3afffffa 	bcc	800292c0 <__udivsi3+0x2c>
800292d4:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
800292d8:	31510000 	cmpcc	r1, r0
800292dc:	31a01081 	lslcc	r1, r1, #1
800292e0:	31a03083 	lslcc	r3, r3, #1
800292e4:	3afffffa 	bcc	800292d4 <__udivsi3+0x40>
800292e8:	e3a02000 	mov	r2, #0
800292ec:	e1500001 	cmp	r0, r1
800292f0:	20400001 	subcs	r0, r0, r1
800292f4:	21822003 	orrcs	r2, r2, r3
800292f8:	e15000a1 	cmp	r0, r1, lsr #1
800292fc:	204000a1 	subcs	r0, r0, r1, lsr #1
80029300:	218220a3 	orrcs	r2, r2, r3, lsr #1
80029304:	e1500121 	cmp	r0, r1, lsr #2
80029308:	20400121 	subcs	r0, r0, r1, lsr #2
8002930c:	21822123 	orrcs	r2, r2, r3, lsr #2
80029310:	e15001a1 	cmp	r0, r1, lsr #3
80029314:	204001a1 	subcs	r0, r0, r1, lsr #3
80029318:	218221a3 	orrcs	r2, r2, r3, lsr #3
8002931c:	e3500000 	cmp	r0, #0
80029320:	11b03223 	lsrsne	r3, r3, #4
80029324:	11a01221 	lsrne	r1, r1, #4
80029328:	1affffef 	bne	800292ec <__udivsi3+0x58>
8002932c:	e1a00002 	mov	r0, r2
80029330:	e12fff1e 	bx	lr
80029334:	03a00001 	moveq	r0, #1
80029338:	13a00000 	movne	r0, #0
8002933c:	e12fff1e 	bx	lr
80029340:	e3510801 	cmp	r1, #65536	@ 0x10000
80029344:	21a01821 	lsrcs	r1, r1, #16
80029348:	23a02010 	movcs	r2, #16
8002934c:	33a02000 	movcc	r2, #0
80029350:	e3510c01 	cmp	r1, #256	@ 0x100
80029354:	21a01421 	lsrcs	r1, r1, #8
80029358:	22822008 	addcs	r2, r2, #8
8002935c:	e3510010 	cmp	r1, #16
80029360:	21a01221 	lsrcs	r1, r1, #4
80029364:	22822004 	addcs	r2, r2, #4
80029368:	e3510004 	cmp	r1, #4
8002936c:	82822003 	addhi	r2, r2, #3
80029370:	908220a1 	addls	r2, r2, r1, lsr #1
80029374:	e1a00230 	lsr	r0, r0, r2
80029378:	e12fff1e 	bx	lr
8002937c:	e3500000 	cmp	r0, #0
80029380:	13e00000 	mvnne	r0, #0
80029384:	ea000059 	b	800294f0 <__aeabi_idiv0>

80029388 <__aeabi_uidivmod>:
80029388:	e3510000 	cmp	r1, #0
8002938c:	0afffffa 	beq	8002937c <__udivsi3+0xe8>
80029390:	e92d4003 	push	{r0, r1, lr}
80029394:	ebffffbe 	bl	80029294 <__udivsi3>
80029398:	e8bd4006 	pop	{r1, r2, lr}
8002939c:	e0030092 	mul	r3, r2, r0
800293a0:	e0411003 	sub	r1, r1, r3
800293a4:	e12fff1e 	bx	lr

800293a8 <__divsi3>:
800293a8:	e3510000 	cmp	r1, #0
800293ac:	0a000043 	beq	800294c0 <.divsi3_skip_div0_test+0x110>

800293b0 <.divsi3_skip_div0_test>:
800293b0:	e020c001 	eor	ip, r0, r1
800293b4:	42611000 	rsbmi	r1, r1, #0
800293b8:	e2512001 	subs	r2, r1, #1
800293bc:	0a000027 	beq	80029460 <.divsi3_skip_div0_test+0xb0>
800293c0:	e1b03000 	movs	r3, r0
800293c4:	42603000 	rsbmi	r3, r0, #0
800293c8:	e1530001 	cmp	r3, r1
800293cc:	9a000026 	bls	8002946c <.divsi3_skip_div0_test+0xbc>
800293d0:	e1110002 	tst	r1, r2
800293d4:	0a000028 	beq	8002947c <.divsi3_skip_div0_test+0xcc>
800293d8:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
800293dc:	01a01181 	lsleq	r1, r1, #3
800293e0:	03a02008 	moveq	r2, #8
800293e4:	13a02001 	movne	r2, #1
800293e8:	e3510201 	cmp	r1, #268435456	@ 0x10000000
800293ec:	31510003 	cmpcc	r1, r3
800293f0:	31a01201 	lslcc	r1, r1, #4
800293f4:	31a02202 	lslcc	r2, r2, #4
800293f8:	3afffffa 	bcc	800293e8 <.divsi3_skip_div0_test+0x38>
800293fc:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029400:	31510003 	cmpcc	r1, r3
80029404:	31a01081 	lslcc	r1, r1, #1
80029408:	31a02082 	lslcc	r2, r2, #1
8002940c:	3afffffa 	bcc	800293fc <.divsi3_skip_div0_test+0x4c>
80029410:	e3a00000 	mov	r0, #0
80029414:	e1530001 	cmp	r3, r1
80029418:	20433001 	subcs	r3, r3, r1
8002941c:	21800002 	orrcs	r0, r0, r2
80029420:	e15300a1 	cmp	r3, r1, lsr #1
80029424:	204330a1 	subcs	r3, r3, r1, lsr #1
80029428:	218000a2 	orrcs	r0, r0, r2, lsr #1
8002942c:	e1530121 	cmp	r3, r1, lsr #2
80029430:	20433121 	subcs	r3, r3, r1, lsr #2
80029434:	21800122 	orrcs	r0, r0, r2, lsr #2
80029438:	e15301a1 	cmp	r3, r1, lsr #3
8002943c:	204331a1 	subcs	r3, r3, r1, lsr #3
80029440:	218001a2 	orrcs	r0, r0, r2, lsr #3
80029444:	e3530000 	cmp	r3, #0
80029448:	11b02222 	lsrsne	r2, r2, #4
8002944c:	11a01221 	lsrne	r1, r1, #4
80029450:	1affffef 	bne	80029414 <.divsi3_skip_div0_test+0x64>
80029454:	e35c0000 	cmp	ip, #0
80029458:	42600000 	rsbmi	r0, r0, #0
8002945c:	e12fff1e 	bx	lr
80029460:	e13c0000 	teq	ip, r0
80029464:	42600000 	rsbmi	r0, r0, #0
80029468:	e12fff1e 	bx	lr
8002946c:	33a00000 	movcc	r0, #0
80029470:	01a00fcc 	asreq	r0, ip, #31
80029474:	03800001 	orreq	r0, r0, #1
80029478:	e12fff1e 	bx	lr
8002947c:	e3510801 	cmp	r1, #65536	@ 0x10000
80029480:	21a01821 	lsrcs	r1, r1, #16
80029484:	23a02010 	movcs	r2, #16
80029488:	33a02000 	movcc	r2, #0
8002948c:	e3510c01 	cmp	r1, #256	@ 0x100
80029490:	21a01421 	lsrcs	r1, r1, #8
80029494:	22822008 	addcs	r2, r2, #8
80029498:	e3510010 	cmp	r1, #16
8002949c:	21a01221 	lsrcs	r1, r1, #4
800294a0:	22822004 	addcs	r2, r2, #4
800294a4:	e3510004 	cmp	r1, #4
800294a8:	82822003 	addhi	r2, r2, #3
800294ac:	908220a1 	addls	r2, r2, r1, lsr #1
800294b0:	e35c0000 	cmp	ip, #0
800294b4:	e1a00233 	lsr	r0, r3, r2
800294b8:	42600000 	rsbmi	r0, r0, #0
800294bc:	e12fff1e 	bx	lr
800294c0:	e3500000 	cmp	r0, #0
800294c4:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
800294c8:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
800294cc:	ea000007 	b	800294f0 <__aeabi_idiv0>

800294d0 <__aeabi_idivmod>:
800294d0:	e3510000 	cmp	r1, #0
800294d4:	0afffff9 	beq	800294c0 <.divsi3_skip_div0_test+0x110>
800294d8:	e92d4003 	push	{r0, r1, lr}
800294dc:	ebffffb3 	bl	800293b0 <.divsi3_skip_div0_test>
800294e0:	e8bd4006 	pop	{r1, r2, lr}
800294e4:	e0030092 	mul	r3, r2, r0
800294e8:	e0411003 	sub	r1, r1, r3
800294ec:	e12fff1e 	bx	lr

800294f0 <__aeabi_idiv0>:
800294f0:	e12fff1e 	bx	lr
