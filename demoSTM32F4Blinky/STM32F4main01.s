	.syntax unified
	.cpu cortex-m4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"STM32F4main01.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	Cint,4,4
	.global	SEG7_COUNTER
	.data
	.align	2
	.type	SEG7_COUNTER, %object
	.size	SEG7_COUNTER, 4
SEG7_COUNTER:
	.word	1
	.global	SEG7_DIGIT1
	.align	2
	.type	SEG7_DIGIT1, %object
	.size	SEG7_DIGIT1, 4
SEG7_DIGIT1:
	.word	14
	.global	SEG7_DIGIT2
	.align	2
	.type	SEG7_DIGIT2, %object
	.size	SEG7_DIGIT2, 4
SEG7_DIGIT2:
	.word	15
	.global	SEG7_DIGIT3
	.align	2
	.type	SEG7_DIGIT3, %object
	.size	SEG7_DIGIT3, 4
SEG7_DIGIT3:
	.word	16
	.global	SEG7_DIGIT4
	.align	2
	.type	SEG7_DIGIT4, %object
	.size	SEG7_DIGIT4, 4
SEG7_DIGIT4:
	.word	3
	.global	SEG7_COLON_DEGREE
	.align	2
	.type	SEG7_COLON_DEGREE, %object
	.size	SEG7_COLON_DEGREE, 4
SEG7_COLON_DEGREE:
	.word	10
	.global	LED_GREEN
	.align	2
	.type	LED_GREEN, %object
	.size	LED_GREEN, 4
LED_GREEN:
	.word	12
	.global	LED_RED
	.align	2
	.type	LED_RED, %object
	.size	LED_RED, 4
LED_RED:
	.word	3
	.global	SWITCHES
	.bss
	.align	2
	.type	SWITCHES, %object
	.size	SWITCHES, 4
SWITCHES:
	.space	4
	.global	SW_READ_ODD
	.align	2
	.type	SW_READ_ODD, %object
	.size	SW_READ_ODD, 4
SW_READ_ODD:
	.space	4
	.global	SW_READ_EVEN
	.align	2
	.type	SW_READ_EVEN, %object
	.size	SW_READ_EVEN, 4
SW_READ_EVEN:
	.space	4
	.global	MODE
	.align	2
	.type	MODE, %object
	.size	MODE, 4
MODE:
	.space	4
	.comm	SystemCoreClock,4,4
	.text
	.align	2
	.global	SystemCoreClockUpdate
	.thumb
	.thumb_func
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB0:
	.file 1 "STM32F4main01.c"
	.loc 1 325 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #28
.LCFI1:
	.cfi_def_cfa_offset 32
	add	r7, sp, #0
.LCFI2:
	.cfi_def_cfa_register 7
	.loc 1 326 0
	mov	r3, #0
	str	r3, [r7, #16]
	mov	r3, #0
	str	r3, [r7, #20]
	mov	r3, #2
	str	r3, [r7, #12]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #2
	str	r3, [r7, #4]
	.loc 1 329 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #16]
	.loc 1 331 0
	ldr	r3, [r7, #16]
	cmp	r3, #4
	beq	.L4
	cmp	r3, #8
	beq	.L5
	cmp	r3, #0
	bne	.L9
.L3:
	.loc 1 334 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 335 0
	b	.L1
.L4:
	.loc 1 337 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	movw	r2, #30784
	movt	r2, 381
	str	r2, [r3, #0]
	.loc 1 338 0
	b	.L1
.L5:
	.loc 1 344 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	lsr	r3, r3, #22
	str	r3, [r7, #8]
	.loc 1 345 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #4]
	.loc 1 347 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L7
	.loc 1 350 0
	movw	r3, #30784
	movt	r3, 381
	ldr	r2, [r7, #4]
	udiv	r2, r3, r2
	mov	r3, #14336
	movt	r3, 16386
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	lsr	r3, r3, #6
	mul	r3, r3, r2
	str	r3, [r7, #20]
	b	.L8
.L7:
	.loc 1 355 0
	mov	r3, #9216
	movt	r3, 244
	ldr	r2, [r7, #4]
	udiv	r2, r3, r2
	mov	r3, #14336
	movt	r3, 16386
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	lsr	r3, r3, #6
	mul	r3, r3, r2
	str	r3, [r7, #20]
.L8:
	.loc 1 358 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #196608
	lsr	r3, r3, #16
	add	r3, r3, #1
	lsl	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 359 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	udiv	r2, r2, r3
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	str	r2, [r3, #0]
	.loc 1 360 0
	b	.L1
.L9:
	.loc 1 362 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 363 0
	nop
.L1:
	.loc 1 365 0
	add	r7, r7, #28
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE0:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.align	2
	.thumb
	.thumb_func
	.type	NVIC_SetPriority, %function
NVIC_SetPriority:
.LFB1:
	.loc 1 370 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI4:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI5:
	.cfi_def_cfa_register 7
	mov	r3, r0
	str	r1, [r7, #0]
	strb	r3, [r7, #7]
	.loc 1 371 0
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	bge	.L11
	.loc 1 372 0
	mov	r3, #60672
	movt	r3, 57344
	ldrb	r2, [r7, #7]	@ zero_extendqisi2
	and	r2, r2, #15
	sub	r1, r2, #4
	ldr	r2, [r7, #0]
	uxtb	r2, r2
	lsl	r2, r2, #4
	uxtb	r2, r2
	adds	r3, r3, r1
	strb	r2, [r3, #24]
	b	.L10
.L11:
	.loc 1 374 0
	mov	r3, #57600
	movt	r3, 57344
	ldrsb	r1, [r7, #7]
	ldr	r2, [r7, #0]
	uxtb	r2, r2
	lsl	r2, r2, #4
	uxtb	r2, r2
	adds	r3, r3, r1
	strb	r2, [r3, #768]
.L10:
	.loc 1 375 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE1:
	.size	NVIC_SetPriority, .-NVIC_SetPriority
	.align	2
	.thumb
	.thumb_func
	.type	SysTick_Config, %function
SysTick_Config:
.LFB2:
	.loc 1 379 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
.LCFI7:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI8:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 380 0
	ldr	r3, [r7, #4]
	add	r2, r3, #-1
	mvn	r3, #-16777216
	cmp	r2, r3
	bls	.L14
	.loc 1 380 0 is_stmt 0 discriminator 1
	mov	r3, #1
	b	.L15
.L14:
	.loc 1 382 0 is_stmt 1
	movw	r3, #57360
	movt	r3, 57344
	ldr	r2, [r7, #4]
	add	r2, r2, #-1
	str	r2, [r3, #4]
	.loc 1 383 0
	mov	r0, #-1
	mov	r1, #15
	bl	NVIC_SetPriority
	.loc 1 384 0
	movw	r3, #57360
	movt	r3, 57344
	mov	r2, #0
	str	r2, [r3, #8]
	.loc 1 385 0
	movw	r3, #57360
	movt	r3, 57344
	mov	r2, #7
	str	r2, [r3, #0]
	.loc 1 388 0
	mov	r3, #0
.L15:
	.loc 1 389 0
	mov	r0, r3
	add	r7, r7, #8
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE2:
	.size	SysTick_Config, .-SysTick_Config
	.comm	msTicks,4,4
	.align	2
	.global	SysTick_Handler
	.thumb
	.thumb_func
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB3:
	.loc 1 395 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI10:
	.cfi_def_cfa_register 7
	.loc 1 396 0
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	str	r2, [r3, #0]
	.loc 1 397 0
	bl	switch_cluster_handler
	.loc 1 398 0
	bl	seg7_handler
	.loc 1 399 0
	bl	mode_handler
	.loc 1 400 0
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	2
	.global	mode_handler
	.thumb
	.thumb_func
	.type	mode_handler, %function
mode_handler:
.LFB4:
	.loc 1 406 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI12:
	.cfi_def_cfa_register 7
	.loc 1 407 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L20
	cmp	r3, #2
	beq	.L21
	cmp	r3, #0
	bne	.L17
.L19:
.LBB2:
	.loc 1 409 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #8
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L22
	.loc 1 410 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 415 0
	b	.L24
.L22:
	.loc 1 412 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #9
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L24
	.loc 1 413 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #2
	str	r2, [r3, #0]
	.loc 1 415 0
	b	.L24
.L20:
	.loc 1 417 0
	bl	freq_mode_handler
	.loc 1 418 0
	b	.L17
.L21:
	.loc 1 420 0
	bl	test_mode_handler
	.loc 1 421 0
	nop
	b	.L17
.L24:
	.loc 1 415 0
	nop
.L17:
.LBE2:
	.loc 1 423 0
	pop	{r7, pc}
	.cfi_endproc
.LFE4:
	.size	mode_handler, .-mode_handler
	.align	2
	.global	freq_mode_handler
	.thumb
	.thumb_func
	.type	freq_mode_handler, %function
freq_mode_handler:
.LFB5:
	.loc 1 428 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI14:
	.cfi_def_cfa_register 7
	.loc 1 429 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	mov	r2, #10
	str	r2, [r3, #0]
	.loc 1 430 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 431 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	mov	r2, #2
	str	r2, [r3, #0]
	.loc 1 432 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	mov	r2, #5
	str	r2, [r3, #0]
	.loc 1 433 0
	movw	r3, #:lower16:SEG7_COLON_DEGREE
	movt	r3, #:upper16:SEG7_COLON_DEGREE
	mov	r2, #10
	str	r2, [r3, #0]
	.loc 1 435 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #9
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L25
	.loc 1 436 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #2
	str	r2, [r3, #0]
.L25:
	.loc 1 438 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE5:
	.size	freq_mode_handler, .-freq_mode_handler
	.align	2
	.global	test_mode_handler
	.thumb
	.thumb_func
	.type	test_mode_handler, %function
test_mode_handler:
.LFB6:
	.loc 1 443 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI16:
	.cfi_def_cfa_register 7
	.loc 1 444 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	mov	r2, #10
	str	r2, [r3, #0]
	.loc 1 445 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	mov	r2, #17
	str	r2, [r3, #0]
	.loc 1 446 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 447 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	mov	r2, #0
	str	r2, [r3, #0]
	.loc 1 448 0
	movw	r3, #:lower16:SEG7_COLON_DEGREE
	movt	r3, #:upper16:SEG7_COLON_DEGREE
	mov	r2, #10
	str	r2, [r3, #0]
	.loc 1 450 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #8
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L27
	.loc 1 451 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #1
	str	r2, [r3, #0]
.L27:
	.loc 1 453 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE6:
	.size	test_mode_handler, .-test_mode_handler
	.align	2
	.global	switch_cluster_handler
	.thumb
	.thumb_func
	.type	switch_cluster_handler, %function
switch_cluster_handler:
.LFB7:
	.loc 1 458 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI18:
	.cfi_def_cfa_register 7
	.loc 1 459 0
	mov	r0, #1
	bl	switch_handler
	.loc 1 460 0
	mov	r0, #3
	bl	switch_handler
	.loc 1 461 0
	mov	r0, #5
	bl	switch_handler
	.loc 1 462 0
	mov	r0, #7
	bl	switch_handler
	.loc 1 463 0
	mov	r0, #9
	bl	switch_handler
	.loc 1 464 0
	mov	r0, #11
	bl	switch_handler
	.loc 1 465 0
	mov	r0, #13
	bl	switch_handler
	.loc 1 466 0
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	switch_cluster_handler, .-switch_cluster_handler
	.align	2
	.global	switch_handler
	.thumb
	.thumb_func
	.type	switch_handler, %function
switch_handler:
.LFB8:
	.loc 1 471 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI20:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI21:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 473 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 474 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 475 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 476 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 477 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 478 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 479 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 482 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 483 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 486 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 489 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 490 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 491 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 492 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 493 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 494 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 495 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 498 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	cmp	r3, #12
	bhi	.L31
	adr	r2, .L39
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L39:
	.word	.L32+1
	.word	.L31+1
	.word	.L33+1
	.word	.L31+1
	.word	.L34+1
	.word	.L31+1
	.word	.L35+1
	.word	.L31+1
	.word	.L36+1
	.word	.L31+1
	.word	.L37+1
	.word	.L31+1
	.word	.L38+1
.L32:
	.loc 1 500 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 501 0
	b	.L31
.L33:
	.loc 1 503 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 504 0
	b	.L31
.L34:
	.loc 1 506 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 507 0
	b	.L31
.L35:
	.loc 1 509 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 510 0
	b	.L31
.L36:
	.loc 1 512 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 513 0
	b	.L31
.L37:
	.loc 1 515 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 516 0
	b	.L31
.L38:
	.loc 1 518 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 519 0
	nop
.L31:
	.loc 1 523 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 524 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 527 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 530 0
	movw	r3, #57005
	str	r3, [r7, #12]
	.loc 1 531 0
	mov	r3, #0
	movt	r3, 16386
	ldr	r3, [r3, #16]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #0
	moveq	r3, #1
	uxtb	r3, r3
	str	r3, [r7, #12]
	.loc 1 532 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	mov	r2, #1
	lsl	r3, r2, r3
	mvn	r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	ands	r3, r3, r2
	mov	r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	str	r2, [r3, #0]
	.loc 1 533 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	ldr	r2, [r7, #12]
	lsl	r2, r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	orrs	r2, r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	str	r2, [r3, #0]
	.loc 1 535 0
	mov	r3, #2048
	movt	r3, 16386
	ldr	r3, [r3, #16]
	and	r3, r3, #256
	cmp	r3, #0
	ite	ne
	movne	r3, #0
	moveq	r3, #1
	uxtb	r3, r3
	str	r3, [r7, #12]
	.loc 1 536 0
	mov	r2, #1
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	mvn	r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	ands	r3, r3, r2
	mov	r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	str	r2, [r3, #0]
	.loc 1 537 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	lsl	r2, r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	orrs	r2, r2, r3
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	str	r2, [r3, #0]
	.loc 1 539 0
	movw	r3, #2989
	str	r3, [r7, #8]
	.loc 1 540 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	str	r3, [r7, #8]
	.loc 1 543 0
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE8:
	.size	switch_handler, .-switch_handler
	.align	2
	.global	Delay
	.thumb
	.thumb_func
	.type	Delay, %function
Delay:
.LFB9:
	.loc 1 549 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI22:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI23:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI24:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 555 0
	movw	r3, #9029
	movt	r3, 1
	str	r3, [r7, #12]
	.loc 1 556 0
	nop
.L41:
	.loc 1 556 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	ldr	r2, [r7, #12]
	add	r2, r2, #-1
	str	r2, [r7, #12]
	cmp	r3, #0
	bne	.L41
	.loc 1 557 0 is_stmt 1
	nop
	.loc 1 558 0
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE9:
	.size	Delay, .-Delay
	.align	2
	.global	BTN_Init
	.thumb
	.thumb_func
	.type	BTN_Init, %function
BTN_Init:
.LFB10:
	.loc 1 564 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI26:
	.cfi_def_cfa_register 7
	.loc 1 566 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #1
	str	r2, [r3, #48]
	.loc 1 568 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #3
	str	r2, [r3, #0]
	.loc 1 569 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #3
	str	r2, [r3, #8]
	.loc 1 570 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #2
	str	r2, [r3, #8]
	.loc 1 571 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #3
	str	r2, [r3, #12]
	.loc 1 572 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE10:
	.size	BTN_Init, .-BTN_Init
	.align	2
	.global	BTN_Get
	.thumb
	.thumb_func
	.type	BTN_Get, %function
BTN_Get:
.LFB11:
	.loc 1 577 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI27:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI28:
	.cfi_def_cfa_register 7
	.loc 1 579 0
	mov	r3, #0
	movt	r3, 16386
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	.loc 1 580 0
	mov	r0, r3
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE11:
	.size	BTN_Get, .-BTN_Get
	.align	2
	.global	sub_uchar_from_quad_example
	.thumb
	.thumb_func
	.type	sub_uchar_from_quad_example, %function
sub_uchar_from_quad_example:
.LFB12:
	.loc 1 604 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI29:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI30:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI31:
	.cfi_def_cfa_register 7
	.loc 1 607 0
	mov	r3, #0
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #4
	str	r3, [r7, #16]
	.loc 1 608 0
	mov	r3, #1
	strb	r3, [r7, #39]
	.loc 1 609 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 611 0
	mov	r3, #0
	str	r3, [r7, #4]
	.loc 1 612 0
	mov	r3, #0
	str	r3, [r7, #8]
	.loc 1 613 0
	mov	r3, #3
	str	r3, [r7, #12]
	.loc 1 614 0
	mov	r3, #16
	str	r3, [r7, #16]
	.loc 1 615 0
	mov	r3, #32
	strb	r3, [r7, #39]
	.loc 1 616 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 618 0
	mov	r3, #-2147483648
	str	r3, [r7, #4]
	.loc 1 619 0
	mov	r3, #0
	str	r3, [r7, #8]
	.loc 1 620 0
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 621 0
	mov	r3, #0
	str	r3, [r7, #16]
	.loc 1 622 0
	mov	r3, #1
	strb	r3, [r7, #39]
	.loc 1 623 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 624 0
	add	r7, r7, #40
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE12:
	.size	sub_uchar_from_quad_example, .-sub_uchar_from_quad_example
	.align	2
	.global	seg7_handler
	.thumb
	.thumb_func
	.type	seg7_handler, %function
seg7_handler:
.LFB13:
	.loc 1 646 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI32:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI33:
	.cfi_def_cfa_register 7
	.loc 1 647 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r3, r3, #-1
	cmp	r3, #4
	bhi	.L48
	adr	r2, .L54
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L54:
	.word	.L49+1
	.word	.L50+1
	.word	.L51+1
	.word	.L52+1
	.word	.L53+1
.L49:
.LBB3:
	.loc 1 649 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	ldr	r3, [r3, #0]
	mov	r0, #1
	mov	r1, r3
	bl	seg7_update
	.loc 1 650 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 651 0
	b	.L56
.L50:
	.loc 1 653 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	ldr	r3, [r3, #0]
	mov	r0, #2
	mov	r1, r3
	bl	seg7_update
	.loc 1 654 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 655 0
	b	.L56
.L51:
	.loc 1 657 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	ldr	r3, [r3, #0]
	mov	r0, #3
	mov	r1, r3
	bl	seg7_update
	.loc 1 658 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 659 0
	b	.L56
.L52:
	.loc 1 661 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	ldr	r3, [r3, #0]
	mov	r0, #4
	mov	r1, r3
	bl	seg7_update
	.loc 1 662 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 663 0
	b	.L56
.L53:
	.loc 1 665 0
	movw	r3, #:lower16:SEG7_COLON_DEGREE
	movt	r3, #:upper16:SEG7_COLON_DEGREE
	ldr	r3, [r3, #0]
	mov	r0, #5
	mov	r1, r3
	bl	seg7_update
	.loc 1 666 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 667 0
	b	.L56
.L48:
	.loc 1 669 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 670 0
	nop
.L56:
.LBE3:
	.loc 1 672 0
	mov	r0, r3
	pop	{r7, pc}
	.cfi_endproc
.LFE13:
	.size	seg7_handler, .-seg7_handler
	.align	2
	.global	seg7_update
	.thumb
	.thumb_func
	.type	seg7_update, %function
seg7_update:
.LFB14:
	.loc 1 677 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI34:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI35:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI36:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 679 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 682 0
	ldr	r3, [r7, #0]
	cmp	r3, #17
	bhi	.L58
	adr	r2, .L77
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L77:
	.word	.L59+1
	.word	.L60+1
	.word	.L61+1
	.word	.L62+1
	.word	.L63+1
	.word	.L64+1
	.word	.L65+1
	.word	.L66+1
	.word	.L67+1
	.word	.L68+1
	.word	.L69+1
	.word	.L70+1
	.word	.L71+1
	.word	.L72+1
	.word	.L73+1
	.word	.L74+1
	.word	.L75+1
	.word	.L76+1
.L59:
	.loc 1 684 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 685 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 686 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 687 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 688 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 689 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 690 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 691 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 692 0
	b	.L58
.L60:
	.loc 1 694 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 695 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 696 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 697 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 698 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 699 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 700 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 701 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 702 0
	b	.L58
.L61:
	.loc 1 704 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 705 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 706 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 707 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 708 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 709 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 710 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 711 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 712 0
	b	.L58
.L62:
	.loc 1 714 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 715 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 716 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 717 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 718 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 719 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 720 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 721 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 722 0
	b	.L58
.L63:
	.loc 1 724 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 725 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 726 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 727 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 728 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 729 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 730 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 731 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 732 0
	b	.L58
.L64:
	.loc 1 734 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 735 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 736 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 737 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 738 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 739 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 740 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 741 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 742 0
	b	.L58
.L65:
	.loc 1 744 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 745 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 746 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 747 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 748 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 749 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 750 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 751 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 752 0
	b	.L58
.L66:
	.loc 1 754 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 755 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 756 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 757 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 758 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 759 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 760 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 761 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 762 0
	b	.L58
.L67:
	.loc 1 764 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 765 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 766 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 767 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 768 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 769 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 770 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 771 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 772 0
	b	.L58
.L68:
	.loc 1 774 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 775 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 776 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 777 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 778 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 779 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 780 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 781 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 782 0
	b	.L58
.L69:
	.loc 1 784 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 785 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 786 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 787 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 788 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 789 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 790 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 791 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 792 0
	b	.L58
.L70:
	.loc 1 794 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 795 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 796 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 797 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 798 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 799 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 800 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 801 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 802 0
	b	.L58
.L71:
	.loc 1 804 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 805 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 806 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 807 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 808 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 809 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 810 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 811 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 812 0
	b	.L58
.L72:
	.loc 1 814 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 815 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 816 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 817 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 818 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 819 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 820 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 821 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 822 0
	b	.L58
.L73:
	.loc 1 824 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 825 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 826 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 827 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 828 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 829 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 830 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 831 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 832 0
	b	.L58
.L74:
	.loc 1 834 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 835 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 836 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 837 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 838 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 839 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 840 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 841 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 842 0
	b	.L58
.L75:
	.loc 1 844 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 845 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 846 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 847 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 848 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 849 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 850 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 851 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 852 0
	b	.L58
.L76:
	.loc 1 854 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 855 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 856 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 857 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 858 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 859 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 860 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 861 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 862 0
	nop
.L58:
	.loc 1 867 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 868 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 871 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 874 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	cmp	r3, #4
	bhi	.L78
	adr	r2, .L84
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L84:
	.word	.L79+1
	.word	.L80+1
	.word	.L81+1
	.word	.L82+1
	.word	.L83+1
.L79:
	.loc 1 876 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 877 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 878 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 879 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 880 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 881 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 882 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 883 0
	b	.L78
.L80:
	.loc 1 885 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 886 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 887 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 888 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 889 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 890 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 891 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 892 0
	b	.L78
.L81:
	.loc 1 894 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 895 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 896 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 897 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 898 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 899 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 900 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 901 0
	b	.L78
.L82:
	.loc 1 903 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 904 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 905 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 906 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 907 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 908 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 909 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 910 0
	b	.L78
.L83:
	.loc 1 912 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 913 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 914 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 915 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 916 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 917 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 918 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 919 0
	nop
.L78:
	.loc 1 922 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 923 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 926 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 929 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 930 0
	mov	r0, r3
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE14:
	.size	seg7_update, .-seg7_update
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB15:
	.loc 1 936 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI37:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI38:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI39:
	.cfi_def_cfa_register 7
	.loc 1 945 0
	mov	r3, #-1
	str	r3, [r7, #12]
	.loc 1 946 0
	mov	r3, #1
	str	r3, [r7, #8]
	.loc 1 947 0
	mov	r3, #0
	str	r3, [r7, #0]
	.loc 1 953 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #31232
	movt	r2, 2563
	str	r2, [r3, #0]
	.loc 1 958 0
	bl	SystemCoreClockUpdate
	.loc 1 959 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	ldr	r2, [r3, #0]
	movw	r3, #19923
	movt	r3, 4194
	umull	r1, r3, r3, r2
	lsr	r3, r3, #6
	mov	r0, r3
	bl	SysTick_Config
	mov	r3, r0
	cmp	r3, #0
	beq	.L86
.L87:
	.loc 1 960 0 discriminator 1
	b	.L87
.L86:
	.loc 1 962 0
	bl	SEG7_Init
	.loc 1 963 0
	bl	switch_init
	.loc 1 964 0
	bl	LED_Init
	.loc 1 965 0
	bl	BTN_Init
	.loc 1 966 0
	mov	r3, #0
	str	r3, [r7, #4]
.L93:
	.loc 1 969 0
	bl	BTN_Get
	str	r0, [r7, #0]
	.loc 1 971 0
	ldr	r3, [r7, #0]
	cmp	r3, #1
	beq	.L88
	.loc 1 973 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 974 0
	ldr	r3, [r7, #12]
	cmp	r3, #4
	bne	.L89
	.loc 1 974 0 is_stmt 0 discriminator 1
	mov	r3, #-1
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7, #12]
	b	.L90
.L89:
	.loc 1 975 0 is_stmt 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L90
	.loc 1 975 0 is_stmt 0 discriminator 1
	mov	r3, #1
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
.L90:
	.loc 1 977 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L91
	.loc 1 978 0
	ldr	r0, [r7, #12]
	bl	asmLED_ON
	.loc 1 979 0
	mov	r0, #50
	bl	MyasmDelay
	.loc 1 980 0
	ldr	r0, [r7, #12]
	bl	asmLED_OFF
	.loc 1 981 0
	mov	r0, #100
	bl	MyasmDelay
	.loc 1 982 0
	mov	r3, #1
	str	r3, [r7, #4]
	.loc 1 999 0
	b	.L93
.L91:
	.loc 1 985 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_On
	.loc 1 986 0
	mov	r0, #50
	bl	Delay
	.loc 1 987 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_Off
	.loc 1 988 0
	mov	r0, #100
	bl	Delay
	.loc 1 989 0
	mov	r3, #0
	str	r3, [r7, #4]
	.loc 1 999 0
	b	.L93
.L88:
	.loc 1 995 0
	mov	r0, #15
	bl	LED_Out
	.loc 1 996 0
	mov	r0, #10
	bl	Delay
	.loc 1 999 0
	b	.L93
	.cfi_endproc
.LFE15:
	.size	main, .-main
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd1b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF213
	.byte	0x1
	.4byte	.LASF214
	.4byte	.LASF215
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.4byte	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x50
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x28
	.byte	0x1
	.byte	0x3b
	.4byte	0x12c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x3d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x40
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"IDR\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.ascii	"ODR\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x43
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x44
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.ascii	"AFR\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x13c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF20
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x1
	.byte	0x47
	.4byte	0x97
	.uleb128 0x5
	.byte	0x88
	.byte	0x1
	.byte	0x4b
	.4byte	0x2fc
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"CIR\000"
	.byte	0x1
	.byte	0x50
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x51
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x52
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x53
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x54
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x55
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x56
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x57
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x58
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x59
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x5a
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5c
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5e
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.byte	0x60
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0x61
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0x62
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1
	.byte	0x63
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x1
	.byte	0x64
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.byte	0x65
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x1
	.byte	0x66
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x1
	.byte	0x67
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x68
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x69
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6a
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x1
	.byte	0x6b
	.4byte	0x14e
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x1
	.byte	0x1
	.byte	0x7c
	.4byte	0x542
	.uleb128 0xb
	.4byte	.LASF50
	.sleb128 -14
	.uleb128 0xb
	.4byte	.LASF51
	.sleb128 -12
	.uleb128 0xb
	.4byte	.LASF52
	.sleb128 -11
	.uleb128 0xb
	.4byte	.LASF53
	.sleb128 -10
	.uleb128 0xb
	.4byte	.LASF54
	.sleb128 -5
	.uleb128 0xb
	.4byte	.LASF55
	.sleb128 -4
	.uleb128 0xb
	.4byte	.LASF56
	.sleb128 -2
	.uleb128 0xb
	.4byte	.LASF57
	.sleb128 -1
	.uleb128 0xb
	.4byte	.LASF58
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF59
	.sleb128 1
	.uleb128 0xb
	.4byte	.LASF60
	.sleb128 2
	.uleb128 0xb
	.4byte	.LASF61
	.sleb128 3
	.uleb128 0xb
	.4byte	.LASF62
	.sleb128 4
	.uleb128 0xb
	.4byte	.LASF63
	.sleb128 5
	.uleb128 0xb
	.4byte	.LASF64
	.sleb128 6
	.uleb128 0xb
	.4byte	.LASF65
	.sleb128 7
	.uleb128 0xb
	.4byte	.LASF66
	.sleb128 8
	.uleb128 0xb
	.4byte	.LASF67
	.sleb128 9
	.uleb128 0xb
	.4byte	.LASF68
	.sleb128 10
	.uleb128 0xb
	.4byte	.LASF69
	.sleb128 11
	.uleb128 0xb
	.4byte	.LASF70
	.sleb128 12
	.uleb128 0xb
	.4byte	.LASF71
	.sleb128 13
	.uleb128 0xb
	.4byte	.LASF72
	.sleb128 14
	.uleb128 0xb
	.4byte	.LASF73
	.sleb128 15
	.uleb128 0xb
	.4byte	.LASF74
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF75
	.sleb128 17
	.uleb128 0xb
	.4byte	.LASF76
	.sleb128 18
	.uleb128 0xb
	.4byte	.LASF77
	.sleb128 19
	.uleb128 0xb
	.4byte	.LASF78
	.sleb128 20
	.uleb128 0xb
	.4byte	.LASF79
	.sleb128 21
	.uleb128 0xb
	.4byte	.LASF80
	.sleb128 22
	.uleb128 0xb
	.4byte	.LASF81
	.sleb128 23
	.uleb128 0xb
	.4byte	.LASF82
	.sleb128 24
	.uleb128 0xb
	.4byte	.LASF83
	.sleb128 25
	.uleb128 0xb
	.4byte	.LASF84
	.sleb128 26
	.uleb128 0xb
	.4byte	.LASF85
	.sleb128 27
	.uleb128 0xb
	.4byte	.LASF86
	.sleb128 28
	.uleb128 0xb
	.4byte	.LASF87
	.sleb128 29
	.uleb128 0xb
	.4byte	.LASF88
	.sleb128 30
	.uleb128 0xb
	.4byte	.LASF89
	.sleb128 31
	.uleb128 0xb
	.4byte	.LASF90
	.sleb128 32
	.uleb128 0xb
	.4byte	.LASF91
	.sleb128 33
	.uleb128 0xb
	.4byte	.LASF92
	.sleb128 34
	.uleb128 0xb
	.4byte	.LASF93
	.sleb128 35
	.uleb128 0xb
	.4byte	.LASF94
	.sleb128 36
	.uleb128 0xb
	.4byte	.LASF95
	.sleb128 37
	.uleb128 0xb
	.4byte	.LASF96
	.sleb128 38
	.uleb128 0xb
	.4byte	.LASF97
	.sleb128 39
	.uleb128 0xb
	.4byte	.LASF98
	.sleb128 40
	.uleb128 0xb
	.4byte	.LASF99
	.sleb128 41
	.uleb128 0xb
	.4byte	.LASF100
	.sleb128 42
	.uleb128 0xb
	.4byte	.LASF101
	.sleb128 43
	.uleb128 0xb
	.4byte	.LASF102
	.sleb128 44
	.uleb128 0xb
	.4byte	.LASF103
	.sleb128 45
	.uleb128 0xb
	.4byte	.LASF104
	.sleb128 46
	.uleb128 0xb
	.4byte	.LASF105
	.sleb128 47
	.uleb128 0xb
	.4byte	.LASF106
	.sleb128 48
	.uleb128 0xb
	.4byte	.LASF107
	.sleb128 49
	.uleb128 0xb
	.4byte	.LASF108
	.sleb128 50
	.uleb128 0xb
	.4byte	.LASF109
	.sleb128 51
	.uleb128 0xb
	.4byte	.LASF110
	.sleb128 52
	.uleb128 0xb
	.4byte	.LASF111
	.sleb128 53
	.uleb128 0xb
	.4byte	.LASF112
	.sleb128 54
	.uleb128 0xb
	.4byte	.LASF113
	.sleb128 55
	.uleb128 0xb
	.4byte	.LASF114
	.sleb128 56
	.uleb128 0xb
	.4byte	.LASF115
	.sleb128 57
	.uleb128 0xb
	.4byte	.LASF116
	.sleb128 58
	.uleb128 0xb
	.4byte	.LASF117
	.sleb128 59
	.uleb128 0xb
	.4byte	.LASF118
	.sleb128 60
	.uleb128 0xb
	.4byte	.LASF119
	.sleb128 61
	.uleb128 0xb
	.4byte	.LASF120
	.sleb128 62
	.uleb128 0xb
	.4byte	.LASF121
	.sleb128 63
	.uleb128 0xb
	.4byte	.LASF122
	.sleb128 64
	.uleb128 0xb
	.4byte	.LASF123
	.sleb128 65
	.uleb128 0xb
	.4byte	.LASF124
	.sleb128 66
	.uleb128 0xb
	.4byte	.LASF125
	.sleb128 67
	.uleb128 0xb
	.4byte	.LASF126
	.sleb128 68
	.uleb128 0xb
	.4byte	.LASF127
	.sleb128 69
	.uleb128 0xb
	.4byte	.LASF128
	.sleb128 70
	.uleb128 0xb
	.4byte	.LASF129
	.sleb128 71
	.uleb128 0xb
	.4byte	.LASF130
	.sleb128 72
	.uleb128 0xb
	.4byte	.LASF131
	.sleb128 73
	.uleb128 0xb
	.4byte	.LASF132
	.sleb128 74
	.uleb128 0xb
	.4byte	.LASF133
	.sleb128 75
	.uleb128 0xb
	.4byte	.LASF134
	.sleb128 76
	.uleb128 0xb
	.4byte	.LASF135
	.sleb128 77
	.uleb128 0xb
	.4byte	.LASF136
	.sleb128 78
	.uleb128 0xb
	.4byte	.LASF137
	.sleb128 79
	.uleb128 0xb
	.4byte	.LASF138
	.sleb128 80
	.uleb128 0xb
	.4byte	.LASF139
	.sleb128 81
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x1
	.byte	0xda
	.4byte	0x307
	.uleb128 0x5
	.byte	0x10
	.byte	0x1
	.byte	0xe4
	.4byte	0x58e
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x1
	.byte	0xe6
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x1
	.byte	0xe7
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"VAL\000"
	.byte	0x1
	.byte	0xe8
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0x1
	.byte	0xe9
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x1
	.byte	0xea
	.4byte	0x54d
	.uleb128 0xc
	.2byte	0xe04
	.byte	0x1
	.byte	0xf0
	.4byte	0x663
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf2
	.4byte	0x663
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0xf3
	.4byte	0x673
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x1
	.byte	0xf4
	.4byte	0x663
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x1
	.byte	0xf5
	.4byte	0x673
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x1
	.byte	0xf6
	.4byte	0x663
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf7
	.4byte	0x673
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x1
	.byte	0xf8
	.4byte	0x663
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.byte	0xf9
	.4byte	0x673
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0x1
	.byte	0xfa
	.4byte	0x663
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0xfb
	.4byte	0x683
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x7
	.ascii	"IP\000"
	.byte	0x1
	.byte	0xfc
	.4byte	0x693
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.byte	0xfd
	.4byte	0x6a3
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x1
	.byte	0xfe
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0xe00
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x673
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x683
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x693
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x37
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x6a3
	.uleb128 0x9
	.4byte	0x13c
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x6b4
	.uleb128 0xd
	.4byte	0x13c
	.2byte	0x283
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x1
	.byte	0xff
	.4byte	0x599
	.uleb128 0xe
	.byte	0x8c
	.byte	0x1
	.2byte	0x105
	.4byte	0x805
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x107
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x108
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x109
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x10a
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.ascii	"SCR\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.ascii	"CCR\000"
	.byte	0x1
	.2byte	0x10c
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.ascii	"SHP\000"
	.byte	0x1
	.2byte	0x10d
	.4byte	0x805
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x10e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x10f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x110
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x111
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x112
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xf
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x113
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xf
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x114
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.ascii	"PFR\000"
	.byte	0x1
	.2byte	0x115
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.ascii	"DFR\000"
	.byte	0x1
	.2byte	0x116
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.ascii	"ADR\000"
	.byte	0x1
	.2byte	0x117
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x118
	.4byte	0x815
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xf
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x119
	.4byte	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x11a
	.4byte	0x825
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xf
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x11b
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x815
	.uleb128 0x9
	.4byte	0x13c
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x825
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x835
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x11c
	.4byte	0x6bf
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x144
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x8a8
	.uleb128 0x13
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x146
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x146
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x146
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x146
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x146
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x171
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x8e1
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x171
	.4byte	0x542
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x171
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x90f
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x17a
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x963
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x18d
	.4byte	0x89
	.byte	0x1
	.4byte	0x93e
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x18e
	.4byte	0x89
	.byte	0x1
	.4byte	0x952
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x18f
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x196
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x9ac
	.uleb128 0x1d
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1a1
	.4byte	0x89
	.byte	0x1
	.4byte	0x99a
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1a4
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1ac
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1bb
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x1ca
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.byte	0x1
	.4byte	0xa03
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1d7
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.byte	0x1
	.4byte	0xa4b
	.uleb128 0x16
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x212
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"sw\000"
	.byte	0x1
	.2byte	0x21b
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x225
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST9
	.byte	0x1
	.4byte	0xa85
	.uleb128 0x16
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x225
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x226
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x234
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x241
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST11
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x25c
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST12
	.byte	0x1
	.4byte	0xaff
	.uleb128 0x14
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x25d
	.4byte	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x25f
	.4byte	0xaff
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x260
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0xb0f
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x286
	.4byte	0x89
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST13
	.byte	0x1
	.4byte	0xb48
	.uleb128 0x1d
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x289
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x2a5
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST14
	.byte	0x1
	.4byte	0xb86
	.uleb128 0x16
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x3a8
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST15
	.byte	0x1
	.4byte	0xc0a
	.uleb128 0x13
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x3b3
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x3c2
	.4byte	0x89
	.byte	0x1
	.4byte	0xbe6
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x3c3
	.4byte	0x89
	.byte	0x1
	.4byte	0xbfa
	.uleb128 0x1a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x25
	.4byte	.LASF198
	.byte	0x1
	.byte	0x12
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Cint
	.uleb128 0x25
	.4byte	.LASF199
	.byte	0x1
	.byte	0x13
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_COUNTER
	.uleb128 0x25
	.4byte	.LASF200
	.byte	0x1
	.byte	0x14
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT1
	.uleb128 0x25
	.4byte	.LASF201
	.byte	0x1
	.byte	0x15
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT2
	.uleb128 0x25
	.4byte	.LASF202
	.byte	0x1
	.byte	0x16
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT3
	.uleb128 0x25
	.4byte	.LASF203
	.byte	0x1
	.byte	0x17
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT4
	.uleb128 0x25
	.4byte	.LASF204
	.byte	0x1
	.byte	0x18
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_COLON_DEGREE
	.uleb128 0x25
	.4byte	.LASF205
	.byte	0x1
	.byte	0x19
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LED_GREEN
	.uleb128 0x25
	.4byte	.LASF206
	.byte	0x1
	.byte	0x1a
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LED_RED
	.uleb128 0x25
	.4byte	.LASF207
	.byte	0x1
	.byte	0x1b
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SWITCHES
	.uleb128 0x25
	.4byte	.LASF208
	.byte	0x1
	.byte	0x1c
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SW_READ_ODD
	.uleb128 0x25
	.4byte	.LASF209
	.byte	0x1
	.byte	0x1d
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SW_READ_EVEN
	.uleb128 0x25
	.4byte	.LASF210
	.byte	0x1
	.byte	0x1e
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	MODE
	.uleb128 0x25
	.4byte	.LASF211
	.byte	0x1
	.byte	0x2c
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x187
	.4byte	0xd19
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	msTicks
	.uleb128 0x27
	.4byte	0x69
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI33-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI35-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI36-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF149:
	.ascii	"ICPR\000"
.LASF188:
	.ascii	"quad_dest\000"
.LASF16:
	.ascii	"PUPDR\000"
.LASF19:
	.ascii	"LCKR\000"
.LASF78:
	.ascii	"CAN1_RX0_IRQn\000"
.LASF59:
	.ascii	"PVD_IRQn\000"
.LASF122:
	.ascii	"CAN2_RX0_IRQn\000"
.LASF182:
	.ascii	"switch_handler\000"
.LASF79:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF131:
	.ascii	"I2C3_ER_IRQn\000"
.LASF171:
	.ascii	"pllm\000"
.LASF215:
	.ascii	"C:\\\\Users\\\\Jake\\\\Documents\\\\GitHub\\\\audio"
	.ascii	"meter\\\\demoSTM32F4Blinky\000"
.LASF14:
	.ascii	"OTYPER\000"
.LASF126:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF183:
	.ascii	"sw_set\000"
.LASF178:
	.ascii	"seg7_handler\000"
.LASF115:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF218:
	.ascii	"BTN_Init\000"
.LASF13:
	.ascii	"MODER\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF99:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF92:
	.ascii	"I2C2_ER_IRQn\000"
.LASF88:
	.ascii	"TIM4_IRQn\000"
.LASF61:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF58:
	.ascii	"WWDG_IRQn\000"
.LASF107:
	.ascii	"SDIO_IRQn\000"
.LASF148:
	.ascii	"ISPR\000"
.LASF38:
	.ascii	"AHB1LPENR\000"
.LASF95:
	.ascii	"USART1_IRQn\000"
.LASF165:
	.ascii	"ISAR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF123:
	.ascii	"CAN2_RX1_IRQn\000"
.LASF157:
	.ascii	"SHCSR\000"
.LASF24:
	.ascii	"AHB1RSTR\000"
.LASF204:
	.ascii	"SEG7_COLON_DEGREE\000"
.LASF192:
	.ascii	"digit\000"
.LASF197:
	.ascii	"toggle\000"
.LASF127:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF7:
	.ascii	"long int\000"
.LASF29:
	.ascii	"APB2RSTR\000"
.LASF42:
	.ascii	"APB1LPENR\000"
.LASF184:
	.ascii	"Delay\000"
.LASF200:
	.ascii	"SEG7_DIGIT1\000"
.LASF201:
	.ascii	"SEG7_DIGIT2\000"
.LASF74:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF81:
	.ascii	"EXTI9_5_IRQn\000"
.LASF120:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF202:
	.ascii	"SEG7_DIGIT3\000"
.LASF203:
	.ascii	"SEG7_DIGIT4\000"
.LASF142:
	.ascii	"LOAD\000"
.LASF112:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF22:
	.ascii	"PLLCFGR\000"
.LASF110:
	.ascii	"UART4_IRQn\000"
.LASF100:
	.ascii	"OTG_FS_WKUP_IRQn\000"
.LASF102:
	.ascii	"TIM8_UP_TIM13_IRQn\000"
.LASF144:
	.ascii	"SysTick_Type\000"
.LASF15:
	.ascii	"OSPEEDR\000"
.LASF52:
	.ascii	"BusFault_IRQn\000"
.LASF214:
	.ascii	"STM32F4main01.c\000"
.LASF167:
	.ascii	"SCB_Type\000"
.LASF205:
	.ascii	"LED_GREEN\000"
.LASF128:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF147:
	.ascii	"RSERVED1\000"
.LASF198:
	.ascii	"Cint\000"
.LASF136:
	.ascii	"DCMI_IRQn\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF72:
	.ascii	"DMA1_Stream3_IRQn\000"
.LASF143:
	.ascii	"CALIB\000"
.LASF75:
	.ascii	"DMA1_Stream6_IRQn\000"
.LASF219:
	.ascii	"BTN_Get\000"
.LASF51:
	.ascii	"MemoryManagement_IRQn\000"
.LASF181:
	.ascii	"test_mode_handler\000"
.LASF130:
	.ascii	"I2C3_EV_IRQn\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"GPIO_TypeDef\000"
.LASF49:
	.ascii	"RCC_TypeDef\000"
.LASF196:
	.ascii	"switch_init\000"
.LASF155:
	.ascii	"VTOR\000"
.LASF132:
	.ascii	"OTG_HS_EP1_OUT_IRQn\000"
.LASF54:
	.ascii	"SVCall_IRQn\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF116:
	.ascii	"DMA2_Stream2_IRQn\000"
.LASF48:
	.ascii	"PLLI2SCFGR\000"
.LASF77:
	.ascii	"CAN1_TX_IRQn\000"
.LASF154:
	.ascii	"ICSR\000"
.LASF26:
	.ascii	"AHB3RSTR\000"
.LASF156:
	.ascii	"AIRCR\000"
.LASF98:
	.ascii	"EXTI15_10_IRQn\000"
.LASF194:
	.ascii	"btns\000"
.LASF180:
	.ascii	"mode_handler\000"
.LASF161:
	.ascii	"MMFAR\000"
.LASF93:
	.ascii	"SPI1_IRQn\000"
.LASF70:
	.ascii	"DMA1_Stream1_IRQn\000"
.LASF173:
	.ascii	"priority\000"
.LASF175:
	.ascii	"SystemCoreClockUpdate\000"
.LASF216:
	.ascii	"NVIC_SetPriority\000"
.LASF208:
	.ascii	"SW_READ_ODD\000"
.LASF43:
	.ascii	"APB2LPENR\000"
.LASF164:
	.ascii	"MMFR\000"
.LASF101:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF57:
	.ascii	"SysTick_IRQn\000"
.LASF85:
	.ascii	"TIM1_CC_IRQn\000"
.LASF187:
	.ascii	"sub_uchar_from_quad_example\000"
.LASF103:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF172:
	.ascii	"IRQn\000"
.LASF113:
	.ascii	"TIM7_IRQn\000"
.LASF177:
	.ascii	"switch_cluster_handler\000"
.LASF20:
	.ascii	"sizetype\000"
.LASF119:
	.ascii	"ETH_IRQn\000"
.LASF83:
	.ascii	"TIM1_UP_TIM10_IRQn\000"
.LASF174:
	.ascii	"ticks\000"
.LASF117:
	.ascii	"DMA2_Stream3_IRQn\000"
.LASF91:
	.ascii	"I2C2_EV_IRQn\000"
.LASF73:
	.ascii	"DMA1_Stream4_IRQn\000"
.LASF158:
	.ascii	"CFSR\000"
.LASF210:
	.ascii	"MODE\000"
.LASF150:
	.ascii	"IABR\000"
.LASF129:
	.ascii	"USART6_IRQn\000"
.LASF108:
	.ascii	"TIM5_IRQn\000"
.LASF67:
	.ascii	"EXTI3_IRQn\000"
.LASF94:
	.ascii	"SPI2_IRQn\000"
.LASF71:
	.ascii	"DMA1_Stream2_IRQn\000"
.LASF121:
	.ascii	"CAN2_TX_IRQn\000"
.LASF39:
	.ascii	"AHB2LPENR\000"
.LASF146:
	.ascii	"ICER\000"
.LASF213:
	.ascii	"GNU C 4.7.2\000"
.LASF28:
	.ascii	"APB1RSTR\000"
.LASF190:
	.ascii	"uchar\000"
.LASF135:
	.ascii	"OTG_HS_IRQn\000"
.LASF153:
	.ascii	"CPUID\000"
.LASF211:
	.ascii	"SystemCoreClock\000"
.LASF186:
	.ascii	"curTicks\000"
.LASF27:
	.ascii	"RESERVED0\000"
.LASF30:
	.ascii	"RESERVED1\000"
.LASF34:
	.ascii	"RESERVED2\000"
.LASF37:
	.ascii	"RESERVED3\000"
.LASF41:
	.ascii	"RESERVED4\000"
.LASF44:
	.ascii	"RESERVED5\000"
.LASF46:
	.ascii	"RESERVED6\000"
.LASF118:
	.ascii	"DMA2_Stream4_IRQn\000"
.LASF106:
	.ascii	"FSMC_IRQn\000"
.LASF162:
	.ascii	"BFAR\000"
.LASF6:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF96:
	.ascii	"USART2_IRQn\000"
.LASF82:
	.ascii	"TIM1_BRK_TIM9_IRQn\000"
.LASF68:
	.ascii	"EXTI4_IRQn\000"
.LASF138:
	.ascii	"HASH_RNG_IRQn\000"
.LASF2:
	.ascii	"short int\000"
.LASF145:
	.ascii	"ISER\000"
.LASF152:
	.ascii	"NVIC_Type\000"
.LASF179:
	.ascii	"freq_mode_handler\000"
.LASF40:
	.ascii	"AHB3LPENR\000"
.LASF111:
	.ascii	"UART5_IRQn\000"
.LASF84:
	.ascii	"TIM1_TRG_COM_TIM11_IRQn\000"
.LASF66:
	.ascii	"EXTI2_IRQn\000"
.LASF36:
	.ascii	"APB2ENR\000"
.LASF33:
	.ascii	"AHB3ENR\000"
.LASF199:
	.ascii	"SEG7_COUNTER\000"
.LASF62:
	.ascii	"FLASH_IRQn\000"
.LASF140:
	.ascii	"IRQn_Type\000"
.LASF185:
	.ascii	"dlyTicks\000"
.LASF125:
	.ascii	"OTG_FS_IRQn\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF56:
	.ascii	"PendSV_IRQn\000"
.LASF53:
	.ascii	"UsageFault_IRQn\000"
.LASF89:
	.ascii	"I2C1_EV_IRQn\000"
.LASF105:
	.ascii	"DMA1_Stream7_IRQn\000"
.LASF191:
	.ascii	"seg7_update\000"
.LASF207:
	.ascii	"SWITCHES\000"
.LASF137:
	.ascii	"CRYP_IRQn\000"
.LASF104:
	.ascii	"TIM8_CC_IRQn\000"
.LASF195:
	.ascii	"SEG7_Init\000"
.LASF168:
	.ascii	"pllvco\000"
.LASF25:
	.ascii	"AHB2RSTR\000"
.LASF169:
	.ascii	"pllp\000"
.LASF133:
	.ascii	"OTG_HS_EP1_IN_IRQn\000"
.LASF50:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF193:
	.ascii	"main\000"
.LASF160:
	.ascii	"DFSR\000"
.LASF163:
	.ascii	"AFSR\000"
.LASF35:
	.ascii	"APB1ENR\000"
.LASF217:
	.ascii	"SysTick_Config\000"
.LASF32:
	.ascii	"AHB2ENR\000"
.LASF60:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF176:
	.ascii	"SysTick_Handler\000"
.LASF55:
	.ascii	"DebugMonitor_IRQn\000"
.LASF114:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF141:
	.ascii	"CTRL\000"
.LASF97:
	.ascii	"USART3_IRQn\000"
.LASF47:
	.ascii	"SSCGR\000"
.LASF206:
	.ascii	"LED_RED\000"
.LASF86:
	.ascii	"TIM2_IRQn\000"
.LASF64:
	.ascii	"EXTI0_IRQn\000"
.LASF17:
	.ascii	"BSRRL\000"
.LASF45:
	.ascii	"BDCR\000"
.LASF18:
	.ascii	"BSRRH\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF212:
	.ascii	"msTicks\000"
.LASF63:
	.ascii	"RCC_IRQn\000"
.LASF151:
	.ascii	"STIR\000"
.LASF189:
	.ascii	"quad_base\000"
.LASF31:
	.ascii	"AHB1ENR\000"
.LASF209:
	.ascii	"SW_READ_EVEN\000"
.LASF139:
	.ascii	"FPU_IRQn\000"
.LASF23:
	.ascii	"CFGR\000"
.LASF90:
	.ascii	"I2C1_ER_IRQn\000"
.LASF76:
	.ascii	"ADC_IRQn\000"
.LASF109:
	.ascii	"SPI3_IRQn\000"
.LASF166:
	.ascii	"CPACR\000"
.LASF159:
	.ascii	"HFSR\000"
.LASF80:
	.ascii	"CAN1_SCE_IRQn\000"
.LASF124:
	.ascii	"CAN2_SCE_IRQn\000"
.LASF170:
	.ascii	"pllsource\000"
.LASF134:
	.ascii	"OTG_HS_WKUP_IRQn\000"
.LASF87:
	.ascii	"TIM3_IRQn\000"
.LASF65:
	.ascii	"EXTI1_IRQn\000"
.LASF69:
	.ascii	"DMA1_Stream0_IRQn\000"
	.ident	"GCC: (GNU) 4.7.2"
