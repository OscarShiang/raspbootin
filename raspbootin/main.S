
kernel8.elf:     file format elf64-littleaarch64


Disassembly of section .text:

000000000007fc00 <_code>:
   7fc00:	aa0003ea 	mov	x10, x0
   7fc04:	aa0103eb 	mov	x11, x1
   7fc08:	aa0203ec 	mov	x12, x2
   7fc0c:	aa0303ed 	mov	x13, x3
   7fc10:	58000281 	ldr	x1, 7fc60 <_code+0x60>
   7fc14:	580002a2 	ldr	x2, 7fc68 <_code+0x68>
   7fc18:	180001e3 	ldr	w3, 7fc54 <_code+0x54>
   7fc1c:	f8408424 	ldr	x4, [x1], #8
   7fc20:	f8008444 	str	x4, [x2], #8
   7fc24:	51000463 	sub	w3, w3, #0x1
   7fc28:	35ffffa3 	cbnz	w3, 7fc1c <_code+0x1c>
   7fc2c:	580001e1 	ldr	x1, 7fc68 <_code+0x68>
   7fc30:	9100003f 	mov	sp, x1
   7fc34:	580001e1 	ldr	x1, 7fc70 <_code+0x70>
   7fc38:	18000102 	ldr	w2, 7fc58 <_code+0x58>
   7fc3c:	34000082 	cbz	w2, 7fc4c <_code+0x4c>
   7fc40:	f800843f 	str	xzr, [x1], #8
   7fc44:	51000442 	sub	w2, w2, #0x1
   7fc48:	35ffffa2 	cbnz	w2, 7fc3c <_code+0x3c>
   7fc4c:	97ffff55 	bl	7f9a0 <__loader_size+0x7f936>
   7fc50:	17fffff3 	b	7fc1c <_code+0x1c>
   7fc54:	0000006a 	.inst	0x0000006a ; undefined
   7fc58:	00000004 	.inst	0x00000004 ; undefined
   7fc5c:	00000000 	.inst	0x00000000 ; undefined
   7fc60:	00080000 	.inst	0x00080000 ; undefined
   7fc64:	00000000 	.inst	0x00000000 ; undefined
   7fc68:	0007fc00 	.inst	0x0007fc00 ; undefined
   7fc6c:	00000000 	.inst	0x00000000 ; undefined
   7fc70:	0007ff30 	.inst	0x0007ff30 ; undefined
   7fc74:	00000000 	.inst	0x00000000 ; undefined

000000000007fc78 <uart_init>:
   7fc78:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
   7fc7c:	90000000 	adrp	x0, 7f000 <__loader_size+0x7ef96>
   7fc80:	913cc001 	add	x1, x0, #0xf30
   7fc84:	910003fd 	mov	x29, sp
   7fc88:	a90153f3 	stp	x19, x20, [sp, #16]
   7fc8c:	d2820613 	mov	x19, #0x1030                	// #4144
   7fc90:	f2bfc413 	movk	x19, #0xfe20, lsl #16
   7fc94:	52800482 	mov	w2, #0x24                  	// #36
   7fc98:	52900043 	mov	w3, #0x8002                	// #32770
   7fc9c:	b900027f 	str	wzr, [x19]
   7fca0:	72a00063 	movk	w3, #0x3, lsl #16
   7fca4:	b90f3002 	str	w2, [x0, #3888]
   7fca8:	52800182 	mov	w2, #0xc                   	// #12
   7fcac:	b900043f 	str	wzr, [x1, #4]
   7fcb0:	52800100 	mov	w0, #0x8                   	// #8
   7fcb4:	b9000823 	str	w3, [x1, #8]
   7fcb8:	52800054 	mov	w20, #0x2                   	// #2
   7fcbc:	b9000c22 	str	w2, [x1, #12]
   7fcc0:	52812002 	mov	w2, #0x900                 	// #2304
   7fcc4:	b9001020 	str	w0, [x1, #16]
   7fcc8:	72a007a2 	movk	w2, #0x3d, lsl #16
   7fccc:	b9001434 	str	w20, [x1, #20]
   7fcd0:	b9001822 	str	w2, [x1, #24]
   7fcd4:	b9001c3f 	str	wzr, [x1, #28]
   7fcd8:	b900203f 	str	wzr, [x1, #32]
   7fcdc:	94000079 	bl	7fec0 <mbox_call>
   7fce0:	d2800081 	mov	x1, #0x4                   	// #4
   7fce4:	d2820886 	mov	x6, #0x1044                	// #4164
   7fce8:	f2bfc401 	movk	x1, #0xfe20, lsl #16
   7fcec:	f2bfc406 	movk	x6, #0xfe20, lsl #16
   7fcf0:	52880008 	mov	w8, #0x4000                	// #16384
   7fcf4:	d2820485 	mov	x5, #0x1024                	// #4132
   7fcf8:	b9400020 	ldr	w0, [x1]
   7fcfc:	72a00048 	movk	w8, #0x2, lsl #16
   7fd00:	f2bfc405 	movk	x5, #0xfe20, lsl #16
   7fd04:	d2820503 	mov	x3, #0x1028                	// #4136
   7fd08:	120e6400 	and	w0, w0, #0xfffc0fff
   7fd0c:	5280ffe7 	mov	w7, #0x7ff                 	// #2047
   7fd10:	2a080000 	orr	w0, w0, w8
   7fd14:	b9000020 	str	w0, [x1]
   7fd18:	f2bfc403 	movk	x3, #0xfe20, lsl #16
   7fd1c:	d2820582 	mov	x2, #0x102c                	// #4140
   7fd20:	b90000c7 	str	w7, [x6]
   7fd24:	f2bfc402 	movk	x2, #0xfe20, lsl #16
   7fd28:	b90000b4 	str	w20, [x5]
   7fd2c:	52800164 	mov	w4, #0xb                   	// #11
   7fd30:	b9000064 	str	w4, [x3]
   7fd34:	52800e01 	mov	w1, #0x70                  	// #112
   7fd38:	b9000041 	str	w1, [x2]
   7fd3c:	52806020 	mov	w0, #0x301                 	// #769
   7fd40:	b9000260 	str	w0, [x19]
   7fd44:	a94153f3 	ldp	x19, x20, [sp, #16]
   7fd48:	a8c27bfd 	ldp	x29, x30, [sp], #32
   7fd4c:	d65f03c0 	ret

000000000007fd50 <uart_send>:
   7fd50:	d2820302 	mov	x2, #0x1018                	// #4120
   7fd54:	f2bfc402 	movk	x2, #0xfe20, lsl #16
   7fd58:	d503201f 	nop
   7fd5c:	b9400041 	ldr	w1, [x2]
   7fd60:	372fffc1 	tbnz	w1, #5, 7fd58 <uart_send+0x8>
   7fd64:	d2820001 	mov	x1, #0x1000                	// #4096
   7fd68:	f2bfc401 	movk	x1, #0xfe20, lsl #16
   7fd6c:	b9000020 	str	w0, [x1]
   7fd70:	d65f03c0 	ret
   7fd74:	d503201f 	nop

000000000007fd78 <uart_getc>:
   7fd78:	d2820301 	mov	x1, #0x1018                	// #4120
   7fd7c:	f2bfc401 	movk	x1, #0xfe20, lsl #16
   7fd80:	d503201f 	nop
   7fd84:	b9400020 	ldr	w0, [x1]
   7fd88:	3727ffc0 	tbnz	w0, #4, 7fd80 <uart_getc+0x8>
   7fd8c:	d2820000 	mov	x0, #0x1000                	// #4096
   7fd90:	f2bfc400 	movk	x0, #0xfe20, lsl #16
   7fd94:	b9400000 	ldr	w0, [x0]
   7fd98:	d65f03c0 	ret
   7fd9c:	00000000 	.inst	0x00000000 ; undefined

000000000007fda0 <main>:
   7fda0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
   7fda4:	910003fd 	mov	x29, sp
   7fda8:	a90153f3 	stp	x19, x20, [sp, #16]
   7fdac:	f90013f5 	str	x21, [sp, #32]
   7fdb0:	97ffffb2 	bl	7fc78 <uart_init>
   7fdb4:	14000004 	b	7fdc4 <main+0x24>
   7fdb8:	97ffffe6 	bl	7fd50 <uart_send>
   7fdbc:	528008a0 	mov	w0, #0x45                  	// #69
   7fdc0:	97ffffe4 	bl	7fd50 <uart_send>
   7fdc4:	52800a40 	mov	w0, #0x52                  	// #82
   7fdc8:	97ffffe2 	bl	7fd50 <uart_send>
   7fdcc:	52800840 	mov	w0, #0x42                  	// #66
   7fdd0:	97ffffe0 	bl	7fd50 <uart_send>
   7fdd4:	52800920 	mov	w0, #0x49                  	// #73
   7fdd8:	97ffffde 	bl	7fd50 <uart_send>
   7fddc:	528009c0 	mov	w0, #0x4e                  	// #78
   7fde0:	97ffffdc 	bl	7fd50 <uart_send>
   7fde4:	528006c0 	mov	w0, #0x36                  	// #54
   7fde8:	97ffffda 	bl	7fd50 <uart_send>
   7fdec:	52800680 	mov	w0, #0x34                  	// #52
   7fdf0:	97ffffd8 	bl	7fd50 <uart_send>
   7fdf4:	528001a0 	mov	w0, #0xd                   	// #13
   7fdf8:	97ffffd6 	bl	7fd50 <uart_send>
   7fdfc:	52800140 	mov	w0, #0xa                   	// #10
   7fe00:	97ffffd4 	bl	7fd50 <uart_send>
   7fe04:	52800060 	mov	w0, #0x3                   	// #3
   7fe08:	97ffffd2 	bl	7fd50 <uart_send>
   7fe0c:	52800060 	mov	w0, #0x3                   	// #3
   7fe10:	97ffffd0 	bl	7fd50 <uart_send>
   7fe14:	52800060 	mov	w0, #0x3                   	// #3
   7fe18:	97ffffce 	bl	7fd50 <uart_send>
   7fe1c:	97ffffd7 	bl	7fd78 <uart_getc>
   7fe20:	12001c14 	and	w20, w0, #0xff
   7fe24:	97ffffd5 	bl	7fd78 <uart_getc>
   7fe28:	12001c13 	and	w19, w0, #0xff
   7fe2c:	97ffffd3 	bl	7fd78 <uart_getc>
   7fe30:	53101c00 	ubfiz	w0, w0, #16, #8
   7fe34:	2a132013 	orr	w19, w0, w19, lsl #8
   7fe38:	97ffffd0 	bl	7fd78 <uart_getc>
   7fe3c:	2a0003e1 	mov	w1, w0
   7fe40:	321a37e2 	mov	w2, #0xfffc0               	// #1048512
   7fe44:	52800a60 	mov	w0, #0x53                  	// #83
   7fe48:	2a016281 	orr	w1, w20, w1, lsl #24
   7fe4c:	2a010273 	orr	w19, w19, w1
   7fe50:	51010261 	sub	w1, w19, #0x40
   7fe54:	6b02003f 	cmp	w1, w2
   7fe58:	54fffb08 	b.hi	7fdb8 <main+0x18>  // b.pmore
   7fe5c:	51000673 	sub	w19, w19, #0x1
   7fe60:	d2a00114 	mov	x20, #0x80000               	// #524288
   7fe64:	91420273 	add	x19, x19, #0x80, lsl #12
   7fe68:	528009e0 	mov	w0, #0x4f                  	// #79
   7fe6c:	91000673 	add	x19, x19, #0x1
   7fe70:	97ffffb8 	bl	7fd50 <uart_send>
   7fe74:	52800960 	mov	w0, #0x4b                  	// #75
   7fe78:	97ffffb6 	bl	7fd50 <uart_send>
   7fe7c:	d503201f 	nop
   7fe80:	aa1403f5 	mov	x21, x20
   7fe84:	97ffffbd 	bl	7fd78 <uart_getc>
   7fe88:	91000694 	add	x20, x20, #0x1
   7fe8c:	eb14027f 	cmp	x19, x20
   7fe90:	390002a0 	strb	w0, [x21]
   7fe94:	54ffff61 	b.ne	7fe80 <main+0xe0>  // b.any
   7fe98:	aa0a03e0 	mov	x0, x10
   7fe9c:	aa0b03e1 	mov	x1, x11
   7fea0:	aa0c03e2 	mov	x2, x12
   7fea4:	aa0d03e3 	mov	x3, x13
   7fea8:	d2a0011e 	mov	x30, #0x80000               	// #524288
   7feac:	d65f03c0 	ret
   7feb0:	a94153f3 	ldp	x19, x20, [sp, #16]
   7feb4:	f94013f5 	ldr	x21, [sp, #32]
   7feb8:	a8c37bfd 	ldp	x29, x30, [sp], #48
   7febc:	d65f03c0 	ret

000000000007fec0 <mbox_call>:
   7fec0:	12000c00 	and	w0, w0, #0xf
   7fec4:	90000004 	adrp	x4, 7f000 <__loader_size+0x7ef96>
   7fec8:	913cc084 	add	x4, x4, #0xf30
   7fecc:	d2971301 	mov	x1, #0xb898                	// #47256
   7fed0:	2a040002 	orr	w2, w0, w4
   7fed4:	f2bfc001 	movk	x1, #0xfe00, lsl #16
   7fed8:	d503201f 	nop
   7fedc:	b9400020 	ldr	w0, [x1]
   7fee0:	37ffffc0 	tbnz	w0, #31, 7fed8 <mbox_call+0x18>
   7fee4:	d2971400 	mov	x0, #0xb8a0                	// #47264
   7fee8:	d2971301 	mov	x1, #0xb898                	// #47256
   7feec:	f2bfc000 	movk	x0, #0xfe00, lsl #16
   7fef0:	d2971003 	mov	x3, #0xb880                	// #47232
   7fef4:	f2bfc001 	movk	x1, #0xfe00, lsl #16
   7fef8:	f2bfc003 	movk	x3, #0xfe00, lsl #16
   7fefc:	b9000002 	str	w2, [x0]
   7ff00:	d503201f 	nop
   7ff04:	b9400020 	ldr	w0, [x1]
   7ff08:	37f7ffc0 	tbnz	w0, #30, 7ff00 <mbox_call+0x40>
   7ff0c:	b9400060 	ldr	w0, [x3]
   7ff10:	6b02001f 	cmp	w0, w2
   7ff14:	54ffff61 	b.ne	7ff00 <mbox_call+0x40>  // b.any
   7ff18:	b9400481 	ldr	w1, [x4, #4]
   7ff1c:	52b00000 	mov	w0, #0x80000000            	// #-2147483648
   7ff20:	6b00003f 	cmp	w1, w0
   7ff24:	1a9f17e0 	cset	w0, eq  // eq = none
   7ff28:	d65f03c0 	ret

Disassembly of section .bss:

000000000007ff30 <mbox>:
	...
