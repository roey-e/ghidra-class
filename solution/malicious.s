;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.2.1 Mon Mar 30 17:49:37 2020

;--------------------------------------------------------
	.module lcc284400
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _add
	.globl _main
	.globl _add
;--------------------------------------------------------
; Externals used
;--------------------------------------------------------
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits 
;--------------------------------------------------------
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area _OVERLAY
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area _ISEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area _BSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area _XSEG
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;	add.c 1
; genLabel
; genFunction
;	---------------------------------
; Function add
; ---------------------------------
___add_start:
_add:
	push	bc
	
;	add.c 3
; genAssign
; AOP_STK for 
	lda	hl,4(sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
; genPlus
; genPlusIncr
;	genPlusIncr failed
	ld	a,c
	add	a,#0x37
	ld	c,a
	ld	a,b
	adc	a,#0x13
	ld	b,a
; genRet
	ld	e,c
	ld	d,b
; genLabel
00101$:
; genEndFunction
	
	pop	bc
	ret
___add_end:
;	add.c 6
; genLabel
; genFunction
;	---------------------------------
; Function main
; ---------------------------------
___main_start:
_main:
	push	bc
	
;	add.c 8
; genIpush
	ld	hl,#0x0005
	push	hl
; genCall
	call	_add
	ld	b,d
	ld	c,e
	lda	sp,2(sp)
; genRet
	ld	e,c
	ld	d,b
; genLabel
00101$:
; genEndFunction
	
	pop	bc
	ret
___main_end:
	.area _CODE
