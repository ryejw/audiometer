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
	.global	SWITCH_QUEUE
	.align	2
	.type	SWITCH_QUEUE, %object
	.size	SWITCH_QUEUE, 80
SWITCH_QUEUE:
	.space	80
	.global	SWITCH_COUNTER
	.align	2
	.type	SWITCH_COUNTER, %object
	.size	SWITCH_COUNTER, 4
SWITCH_COUNTER:
	.space	4
	.global	DEBOUNCE_COUNTER
	.align	2
	.type	DEBOUNCE_COUNTER, %object
	.size	DEBOUNCE_COUNTER, 4
DEBOUNCE_COUNTER:
	.space	4
	.global	SWITCH_DEBOUNCE
	.align	2
	.type	SWITCH_DEBOUNCE, %object
	.size	SWITCH_DEBOUNCE, 4
SWITCH_DEBOUNCE:
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
	.global	FREQ_VAL
	.data
	.align	2
	.type	FREQ_VAL, %object
	.size	FREQ_VAL, 4
FREQ_VAL:
	.word	125
	.global	TEST_VAL
	.align	2
	.type	TEST_VAL, %object
	.size	TEST_VAL, 4
TEST_VAL:
	.word	-10
	.global	MODE
	.bss
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
	.loc 1 332 0
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
	.loc 1 333 0
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
	.loc 1 336 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	str	r3, [r7, #16]
	.loc 1 338 0
	ldr	r3, [r7, #16]
	cmp	r3, #4
	beq	.L4
	cmp	r3, #8
	beq	.L5
	cmp	r3, #0
	bne	.L9
.L3:
	.loc 1 341 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 342 0
	b	.L1
.L4:
	.loc 1 344 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	movw	r2, #30784
	movt	r2, 381
	str	r2, [r3, #0]
	.loc 1 345 0
	b	.L1
.L5:
	.loc 1 351 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	lsr	r3, r3, #22
	str	r3, [r7, #8]
	.loc 1 352 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #4]
	.loc 1 354 0
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L7
	.loc 1 357 0
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
	.loc 1 362 0
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
	.loc 1 365 0
	mov	r3, #14336
	movt	r3, 16386
	ldr	r3, [r3, #4]
	and	r3, r3, #196608
	lsr	r3, r3, #16
	add	r3, r3, #1
	lsl	r3, r3, #1
	str	r3, [r7, #12]
	.loc 1 366 0
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	udiv	r2, r2, r3
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	str	r2, [r3, #0]
	.loc 1 367 0
	b	.L1
.L9:
	.loc 1 369 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #9216
	movt	r2, 244
	str	r2, [r3, #0]
	.loc 1 370 0
	nop
.L1:
	.loc 1 372 0
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
	.loc 1 377 0
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
	.loc 1 378 0
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	bge	.L11
	.loc 1 379 0
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
	.loc 1 381 0
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
	.loc 1 382 0
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
	.loc 1 386 0
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
	.loc 1 387 0
	ldr	r3, [r7, #4]
	add	r2, r3, #-1
	mvn	r3, #-16777216
	cmp	r2, r3
	bls	.L14
	.loc 1 387 0 is_stmt 0 discriminator 1
	mov	r3, #1
	b	.L15
.L14:
	.loc 1 389 0 is_stmt 1
	movw	r3, #57360
	movt	r3, 57344
	ldr	r2, [r7, #4]
	add	r2, r2, #-1
	str	r2, [r3, #4]
	.loc 1 390 0
	mov	r0, #-1
	mov	r1, #15
	bl	NVIC_SetPriority
	.loc 1 391 0
	movw	r3, #57360
	movt	r3, 57344
	mov	r2, #0
	str	r2, [r3, #8]
	.loc 1 392 0
	movw	r3, #57360
	movt	r3, 57344
	mov	r2, #7
	str	r2, [r3, #0]
	.loc 1 395 0
	mov	r3, #0
.L15:
	.loc 1 396 0
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
	.loc 1 402 0
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
	.loc 1 403 0
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:msTicks
	movt	r3, #:upper16:msTicks
	str	r2, [r3, #0]
	.loc 1 404 0
	movw	r3, #:lower16:DEBOUNCE_COUNTER
	movt	r3, #:upper16:DEBOUNCE_COUNTER
	ldr	r3, [r3, #0]
	cmp	r3, #19
	bgt	.L17
	.loc 1 405 0
	movw	r3, #:lower16:DEBOUNCE_COUNTER
	movt	r3, #:upper16:DEBOUNCE_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:DEBOUNCE_COUNTER
	movt	r3, #:upper16:DEBOUNCE_COUNTER
	str	r2, [r3, #0]
	b	.L18
.L17:
.LBB2:
	.loc 1 408 0
	bl	switch_cluster_handler
	.loc 1 409 0
	bl	mode_handler
	.loc 1 410 0
	movw	r3, #:lower16:DEBOUNCE_COUNTER
	movt	r3, #:upper16:DEBOUNCE_COUNTER
	mov	r2, #0
	str	r2, [r3, #0]
.L18:
.LBE2:
	.loc 1 413 0
	bl	seg7_handler
	.loc 1 414 0
	pop	{r7, pc}
	.cfi_endproc
.LFE3:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	2
	.global	switch_debounce_handler
	.thumb
	.thumb_func
	.type	switch_debounce_handler, %function
switch_debounce_handler:
.LFB4:
	.loc 1 419 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI12:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI13:
	.cfi_def_cfa_register 7
	.loc 1 420 0
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	ldr	r3, [r3, #0]
	cmp	r3, #20
	bne	.L19
.LBB3:
	.loc 1 421 0
	mov	r3, #0
	str	r3, [r7, #4]
	.loc 1 422 0
	mov	r3, #0
	str	r3, [r7, #4]
	b	.L21
.L27:
.LBB4:
	.loc 1 423 0
	mov	r3, #0
	str	r3, [r7, #0]
	.loc 1 424 0
	mov	r3, #0
	str	r3, [r7, #0]
	b	.L22
.L25:
	.loc 1 425 0
	movw	r3, #:lower16:SWITCH_QUEUE
	movt	r3, #:upper16:SWITCH_QUEUE
	ldr	r2, [r7, #0]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r3
	ldr	r3, [r7, #0]
	add	r1, r3, #1
	movw	r3, #:lower16:SWITCH_QUEUE
	movt	r3, #:upper16:SWITCH_QUEUE
	ldr	r3, [r3, r1, lsl #2]
	eors	r2, r2, r3
	ldr	r3, [r7, #4]
	lsr	r3, r2, r3
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L28
.L23:
	.loc 1 424 0
	ldr	r3, [r7, #0]
	add	r3, r3, #1
	str	r3, [r7, #0]
.L22:
	.loc 1 424 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #0]
	cmp	r3, #18
	ble	.L25
	b	.L24
.L28:
	.loc 1 426 0 is_stmt 1
	nop
.L24:
	.loc 1 429 0
	ldr	r3, [r7, #0]
	cmp	r3, #19
	bne	.L26
	.loc 1 431 0
	mov	r2, #1
	ldr	r3, [r7, #4]
	lsl	r3, r2, r3
	mvn	r2, r3
	movw	r3, #:lower16:SWITCH_DEBOUNCE
	movt	r3, #:upper16:SWITCH_DEBOUNCE
	ldr	r3, [r3, #0]
	ands	r3, r3, r2
	mov	r2, r3
	movw	r3, #:lower16:SWITCH_DEBOUNCE
	movt	r3, #:upper16:SWITCH_DEBOUNCE
	str	r2, [r3, #0]
	.loc 1 432 0
	movw	r3, #:lower16:SWITCH_QUEUE
	movt	r3, #:upper16:SWITCH_QUEUE
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r1, #1
	ldr	r3, [r7, #4]
	lsl	r3, r1, r3
	ands	r2, r2, r3
	movw	r3, #:lower16:SWITCH_DEBOUNCE
	movt	r3, #:upper16:SWITCH_DEBOUNCE
	ldr	r3, [r3, #0]
	adds	r3, r2, r3
	mov	r2, r3
	movw	r3, #:lower16:SWITCH_DEBOUNCE
	movt	r3, #:upper16:SWITCH_DEBOUNCE
	str	r2, [r3, #0]
.L26:
.LBE4:
	.loc 1 422 0
	ldr	r3, [r7, #4]
	add	r3, r3, #1
	str	r3, [r7, #4]
.L21:
	.loc 1 422 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #4]
	cmp	r3, #12
	ble	.L27
.L19:
.LBE3:
	.loc 1 436 0 is_stmt 1
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE4:
	.size	switch_debounce_handler, .-switch_debounce_handler
	.align	2
	.global	switch_queue_handler
	.thumb
	.thumb_func
	.type	switch_queue_handler, %function
switch_queue_handler:
.LFB5:
	.loc 1 441 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI14:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI15:
	.cfi_def_cfa_register 7
	.loc 1 443 0
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	ldr	r3, [r3, #0]
	cmp	r3, #19
	bgt	.L30
	.loc 1 444 0
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	ldr	r2, [r3, #0]
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r1, [r3, #0]
	movw	r3, #:lower16:SWITCH_QUEUE
	movt	r3, #:upper16:SWITCH_QUEUE
	str	r1, [r3, r2, lsl #2]
	.loc 1 445 0
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	str	r2, [r3, #0]
	b	.L29
.L30:
	.loc 1 448 0
	movw	r3, #:lower16:SWITCH_COUNTER
	movt	r3, #:upper16:SWITCH_COUNTER
	mov	r2, #0
	str	r2, [r3, #0]
.L29:
	.loc 1 450 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE5:
	.size	switch_queue_handler, .-switch_queue_handler
	.align	2
	.global	mode_handler
	.thumb
	.thumb_func
	.type	mode_handler, %function
mode_handler:
.LFB6:
	.loc 1 455 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI16:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI17:
	.cfi_def_cfa_register 7
	.loc 1 456 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	ldr	r3, [r3, #0]
	cmp	r3, #1
	beq	.L35
	cmp	r3, #2
	beq	.L36
	cmp	r3, #0
	bne	.L32
.L34:
.LBB5:
	.loc 1 458 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #8
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L37
	.loc 1 459 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 464 0
	b	.L39
.L37:
	.loc 1 461 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #9
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L39
	.loc 1 462 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #2
	str	r2, [r3, #0]
	.loc 1 464 0
	b	.L39
.L35:
	.loc 1 466 0
	bl	freq_mode_handler
	.loc 1 467 0
	b	.L32
.L36:
	.loc 1 469 0
	bl	test_mode_handler
	.loc 1 470 0
	nop
	b	.L32
.L39:
	.loc 1 464 0
	nop
.L32:
.LBE5:
	.loc 1 472 0
	pop	{r7, pc}
	.cfi_endproc
.LFE6:
	.size	mode_handler, .-mode_handler
	.align	2
	.global	freq_mode_handler
	.thumb
	.thumb_func
	.type	freq_mode_handler, %function
freq_mode_handler:
.LFB7:
	.loc 1 477 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI19:
	.cfi_def_cfa_register 7
	.loc 1 478 0
	bl	display_frequency
	.loc 1 479 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #9
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L41
	.loc 1 480 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #2
	str	r2, [r3, #0]
.L41:
	.loc 1 482 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	and	r3, r3, #1
	and	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	ldr	r1, [r3, #0]
	movw	r3, #7000
	cmp	r1, r3
	ite	gt
	movgt	r3, #0
	movle	r3, #1
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L42
	.loc 1 483 0
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	ldr	r3, [r3, #0]
	add	r2, r3, #1000
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	str	r2, [r3, #0]
.L42:
	.loc 1 485 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #1
	uxtb	r2, r3
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	ldr	r1, [r3, #0]
	movw	r3, #1124
	cmp	r1, r3
	ite	le
	movle	r3, #0
	movgt	r3, #1
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	.loc 1 486 0
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	ldr	r3, [r3, #0]
	sub	r2, r3, #1000
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	str	r2, [r3, #0]
.L40:
	.loc 1 488 0
	pop	{r7, pc}
	.cfi_endproc
.LFE7:
	.size	freq_mode_handler, .-freq_mode_handler
	.align	2
	.global	display_frequency
	.thumb
	.thumb_func
	.type	display_frequency, %function
display_frequency:
.LFB8:
	.loc 1 494 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI20:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI21:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI22:
	.cfi_def_cfa_register 7
	.loc 1 496 0
	movw	r3, #:lower16:FREQ_VAL
	movt	r3, #:upper16:FREQ_VAL
	ldr	r3, [r3, #0]
	str	r3, [r7, #4]
	.loc 1 498 0
	ldr	r2, [r7, #4]
	movw	r3, #999
	cmp	r2, r3
	ble	.L45
	.loc 1 499 0
	ldr	r2, [r7, #4]
	movw	r3, #19923
	movt	r3, 4194
	smull	r1, r3, r3, r2
	asr	r1, r3, #6
	asr	r3, r2, #31
	subs	r2, r1, r3
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	str	r2, [r3, #0]
	.loc 1 500 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	ldr	r2, [r3, #0]
	movw	r3, #64536
	movt	r3, 65535
	mul	r3, r3, r2
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #4]
	b	.L46
.L45:
	.loc 1 503 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	mov	r2, #10
	str	r2, [r3, #0]
.L46:
	.loc 1 506 0
	ldr	r2, [r7, #4]
	movw	r3, #34079
	movt	r3, 20971
	smull	r1, r3, r3, r2
	asr	r1, r3, #5
	asr	r3, r2, #31
	subs	r2, r1, r3
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	str	r2, [r3, #0]
	.loc 1 507 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	ldr	r3, [r3, #0]
	mvn	r2, #99
	mul	r3, r2, r3
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 508 0
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asr	r1, r3, #2
	asr	r3, r2, #31
	subs	r2, r1, r3
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	str	r2, [r3, #0]
	.loc 1 509 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	ldr	r3, [r3, #0]
	mvn	r2, #9
	mul	r3, r2, r3
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 510 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	ldr	r2, [r7, #4]
	str	r2, [r3, #0]
	.loc 1 511 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE8:
	.size	display_frequency, .-display_frequency
	.align	2
	.global	test_mode_handler
	.thumb
	.thumb_func
	.type	test_mode_handler, %function
test_mode_handler:
.LFB9:
	.loc 1 515 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI23:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI24:
	.cfi_def_cfa_register 7
	.loc 1 516 0
	bl	display_intensity
	.loc 1 517 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	asr	r3, r3, #8
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L47
	.loc 1 518 0
	movw	r3, #:lower16:MODE
	movt	r3, #:upper16:MODE
	mov	r2, #1
	str	r2, [r3, #0]
.L47:
	.loc 1 520 0
	pop	{r7, pc}
	.cfi_endproc
.LFE9:
	.size	test_mode_handler, .-test_mode_handler
	.align	2
	.global	display_intensity
	.thumb
	.thumb_func
	.type	display_intensity, %function
display_intensity:
.LFB10:
	.loc 1 525 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI25:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI26:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI27:
	.cfi_def_cfa_register 7
	.loc 1 526 0
	movw	r3, #:lower16:TEST_VAL
	movt	r3, #:upper16:TEST_VAL
	ldr	r3, [r3, #0]
	str	r3, [r7, #4]
	.loc 1 528 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	mov	r2, #10
	str	r2, [r3, #0]
	.loc 1 530 0
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L50
	.loc 1 531 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	mov	r2, #17
	str	r2, [r3, #0]
	.loc 1 532 0
	ldr	r3, [r7, #4]
	rsb	r3, r3, #0
	str	r3, [r7, #4]
	b	.L51
.L50:
	.loc 1 534 0
	ldr	r3, [r7, #4]
	cmp	r3, #99
	bgt	.L52
	.loc 1 535 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	mov	r2, #10
	str	r2, [r3, #0]
	b	.L51
.L52:
	.loc 1 538 0
	ldr	r2, [r7, #4]
	movw	r3, #34079
	movt	r3, 20971
	smull	r1, r3, r3, r2
	asr	r1, r3, #5
	asr	r3, r2, #31
	subs	r2, r1, r3
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	str	r2, [r3, #0]
	.loc 1 539 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	ldr	r3, [r3, #0]
	mvn	r2, #99
	mul	r3, r2, r3
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #4]
.L51:
	.loc 1 542 0
	ldr	r2, [r7, #4]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asr	r1, r3, #2
	asr	r3, r2, #31
	subs	r2, r1, r3
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	str	r2, [r3, #0]
	.loc 1 543 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	ldr	r3, [r3, #0]
	mvn	r2, #9
	mul	r3, r2, r3
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	str	r3, [r7, #4]
	.loc 1 544 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	ldr	r2, [r7, #4]
	str	r2, [r3, #0]
	.loc 1 545 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE10:
	.size	display_intensity, .-display_intensity
	.align	2
	.global	switch_cluster_handler
	.thumb
	.thumb_func
	.type	switch_cluster_handler, %function
switch_cluster_handler:
.LFB11:
	.loc 1 550 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI28:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI29:
	.cfi_def_cfa_register 7
	.loc 1 551 0
	mov	r0, #1
	bl	switch_handler
	.loc 1 552 0
	mov	r0, #3
	bl	switch_handler
	.loc 1 553 0
	mov	r0, #5
	bl	switch_handler
	.loc 1 554 0
	mov	r0, #7
	bl	switch_handler
	.loc 1 555 0
	mov	r0, #9
	bl	switch_handler
	.loc 1 556 0
	mov	r0, #11
	bl	switch_handler
	.loc 1 557 0
	mov	r0, #13
	bl	switch_handler
	.loc 1 558 0
	pop	{r7, pc}
	.cfi_endproc
.LFE11:
	.size	switch_cluster_handler, .-switch_cluster_handler
	.align	2
	.global	switch_handler
	.thumb
	.thumb_func
	.type	switch_handler, %function
switch_handler:
.LFB12:
	.loc 1 563 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI30:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI31:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI32:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 565 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 566 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 567 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 568 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 569 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 570 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 571 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 574 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 575 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 578 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 581 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 582 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 583 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 584 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 585 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 586 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 587 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 590 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	cmp	r3, #12
	bhi	.L55
	adr	r2, .L63
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L63:
	.word	.L56+1
	.word	.L55+1
	.word	.L57+1
	.word	.L55+1
	.word	.L58+1
	.word	.L55+1
	.word	.L59+1
	.word	.L55+1
	.word	.L60+1
	.word	.L55+1
	.word	.L61+1
	.word	.L55+1
	.word	.L62+1
.L56:
	.loc 1 592 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 593 0
	b	.L55
.L57:
	.loc 1 595 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 596 0
	b	.L55
.L58:
	.loc 1 598 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 599 0
	b	.L55
.L59:
	.loc 1 601 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 602 0
	b	.L55
.L60:
	.loc 1 604 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 605 0
	b	.L55
.L61:
	.loc 1 607 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 608 0
	b	.L55
.L62:
	.loc 1 610 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 611 0
	nop
.L55:
	.loc 1 615 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 616 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 619 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 622 0
	movw	r3, #57005
	str	r3, [r7, #12]
	.loc 1 623 0
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
	.loc 1 624 0
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
	.loc 1 625 0
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
	.loc 1 627 0
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
	.loc 1 628 0
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
	.loc 1 629 0
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
	.loc 1 631 0
	movw	r3, #2989
	str	r3, [r7, #8]
	.loc 1 632 0
	movw	r3, #:lower16:SWITCHES
	movt	r3, #:upper16:SWITCHES
	ldr	r3, [r3, #0]
	str	r3, [r7, #8]
	.loc 1 635 0
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE12:
	.size	switch_handler, .-switch_handler
	.align	2
	.global	Delay
	.thumb
	.thumb_func
	.type	Delay, %function
Delay:
.LFB13:
	.loc 1 641 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI33:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #20
.LCFI34:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI35:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 647 0
	movw	r3, #9029
	movt	r3, 1
	str	r3, [r7, #12]
	.loc 1 648 0
	nop
.L65:
	.loc 1 648 0 is_stmt 0 discriminator 1
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
	bne	.L65
	.loc 1 649 0 is_stmt 1
	nop
	.loc 1 650 0
	add	r7, r7, #20
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE13:
	.size	Delay, .-Delay
	.align	2
	.global	BTN_Init
	.thumb
	.thumb_func
	.type	BTN_Init, %function
BTN_Init:
.LFB14:
	.loc 1 656 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI37:
	.cfi_def_cfa_register 7
	.loc 1 658 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #1
	str	r2, [r3, #48]
	.loc 1 660 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #3
	str	r2, [r3, #0]
	.loc 1 661 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #3
	str	r2, [r3, #8]
	.loc 1 662 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #2
	str	r2, [r3, #8]
	.loc 1 663 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #3
	str	r2, [r3, #12]
	.loc 1 664 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE14:
	.size	BTN_Init, .-BTN_Init
	.align	2
	.global	BTN_Get
	.thumb
	.thumb_func
	.type	BTN_Get, %function
BTN_Get:
.LFB15:
	.loc 1 669 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI38:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI39:
	.cfi_def_cfa_register 7
	.loc 1 671 0
	mov	r3, #0
	movt	r3, 16386
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	.loc 1 672 0
	mov	r0, r3
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE15:
	.size	BTN_Get, .-BTN_Get
	.align	2
	.global	sub_uchar_from_quad_example
	.thumb
	.thumb_func
	.type	sub_uchar_from_quad_example, %function
sub_uchar_from_quad_example:
.LFB16:
	.loc 1 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #40
.LCFI41:
	.cfi_def_cfa_offset 48
	add	r7, sp, #0
.LCFI42:
	.cfi_def_cfa_register 7
	.loc 1 699 0
	mov	r3, #0
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
	mov	r3, #4
	str	r3, [r7, #16]
	.loc 1 700 0
	mov	r3, #1
	strb	r3, [r7, #39]
	.loc 1 701 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 703 0
	mov	r3, #0
	str	r3, [r7, #4]
	.loc 1 704 0
	mov	r3, #0
	str	r3, [r7, #8]
	.loc 1 705 0
	mov	r3, #3
	str	r3, [r7, #12]
	.loc 1 706 0
	mov	r3, #16
	str	r3, [r7, #16]
	.loc 1 707 0
	mov	r3, #32
	strb	r3, [r7, #39]
	.loc 1 708 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 710 0
	mov	r3, #-2147483648
	str	r3, [r7, #4]
	.loc 1 711 0
	mov	r3, #0
	str	r3, [r7, #8]
	.loc 1 712 0
	mov	r3, #0
	str	r3, [r7, #12]
	.loc 1 713 0
	mov	r3, #0
	str	r3, [r7, #16]
	.loc 1 714 0
	mov	r3, #1
	strb	r3, [r7, #39]
	.loc 1 715 0
	add	r1, r7, #20
	add	r2, r7, #4
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	sub_uchar_from_quad_asm
	.loc 1 716 0
	add	r7, r7, #40
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE16:
	.size	sub_uchar_from_quad_example, .-sub_uchar_from_quad_example
	.align	2
	.global	seg7_handler
	.thumb
	.thumb_func
	.type	seg7_handler, %function
seg7_handler:
.LFB17:
	.loc 1 738 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI43:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	add	r7, sp, #0
.LCFI44:
	.cfi_def_cfa_register 7
	.loc 1 739 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r3, r3, #-1
	cmp	r3, #4
	bhi	.L72
	adr	r2, .L78
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L78:
	.word	.L73+1
	.word	.L74+1
	.word	.L75+1
	.word	.L76+1
	.word	.L77+1
.L73:
.LBB6:
	.loc 1 741 0
	movw	r3, #:lower16:SEG7_DIGIT1
	movt	r3, #:upper16:SEG7_DIGIT1
	ldr	r3, [r3, #0]
	mov	r0, #1
	mov	r1, r3
	bl	seg7_update
	.loc 1 742 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 743 0
	b	.L80
.L74:
	.loc 1 745 0
	movw	r3, #:lower16:SEG7_DIGIT2
	movt	r3, #:upper16:SEG7_DIGIT2
	ldr	r3, [r3, #0]
	mov	r0, #2
	mov	r1, r3
	bl	seg7_update
	.loc 1 746 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 747 0
	b	.L80
.L75:
	.loc 1 749 0
	movw	r3, #:lower16:SEG7_DIGIT3
	movt	r3, #:upper16:SEG7_DIGIT3
	ldr	r3, [r3, #0]
	mov	r0, #3
	mov	r1, r3
	bl	seg7_update
	.loc 1 750 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 751 0
	b	.L80
.L76:
	.loc 1 753 0
	movw	r3, #:lower16:SEG7_DIGIT4
	movt	r3, #:upper16:SEG7_DIGIT4
	ldr	r3, [r3, #0]
	mov	r0, #4
	mov	r1, r3
	bl	seg7_update
	.loc 1 754 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 755 0
	b	.L80
.L77:
	.loc 1 757 0
	movw	r3, #:lower16:SEG7_COLON_DEGREE
	movt	r3, #:upper16:SEG7_COLON_DEGREE
	ldr	r3, [r3, #0]
	mov	r0, #5
	mov	r1, r3
	bl	seg7_update
	.loc 1 758 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	str	r2, [r3, #0]
	.loc 1 759 0
	b	.L80
.L72:
	.loc 1 761 0
	movw	r3, #:lower16:SEG7_COUNTER
	movt	r3, #:upper16:SEG7_COUNTER
	mov	r2, #1
	str	r2, [r3, #0]
	.loc 1 762 0
	nop
.L80:
.LBE6:
	.loc 1 764 0
	mov	r0, r3
	pop	{r7, pc}
	.cfi_endproc
.LFE17:
	.size	seg7_handler, .-seg7_handler
	.align	2
	.global	seg7_update
	.thumb
	.thumb_func
	.type	seg7_update, %function
seg7_update:
.LFB18:
	.loc 1 769 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI45:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI46:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI47:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	str	r1, [r7, #0]
	.loc 1 771 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 774 0
	ldr	r3, [r7, #0]
	cmp	r3, #17
	bhi	.L82
	adr	r2, .L101
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L101:
	.word	.L83+1
	.word	.L84+1
	.word	.L85+1
	.word	.L86+1
	.word	.L87+1
	.word	.L88+1
	.word	.L89+1
	.word	.L90+1
	.word	.L91+1
	.word	.L92+1
	.word	.L93+1
	.word	.L94+1
	.word	.L95+1
	.word	.L96+1
	.word	.L97+1
	.word	.L98+1
	.word	.L99+1
	.word	.L100+1
.L83:
	.loc 1 776 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 777 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 778 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 779 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 780 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 781 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 782 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 783 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 784 0
	b	.L82
.L84:
	.loc 1 786 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 787 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 788 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 789 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 790 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 791 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 792 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 793 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 794 0
	b	.L82
.L85:
	.loc 1 796 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 797 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 798 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 799 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 800 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 801 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 802 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 803 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 804 0
	b	.L82
.L86:
	.loc 1 806 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 807 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 808 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 809 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 810 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 811 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 812 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 813 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 814 0
	b	.L82
.L87:
	.loc 1 816 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 817 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 818 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 819 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 820 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 821 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 822 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 823 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 824 0
	b	.L82
.L88:
	.loc 1 826 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 827 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 828 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 829 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 830 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 831 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 832 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 833 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 834 0
	b	.L82
.L89:
	.loc 1 836 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 837 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 838 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 839 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 840 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 841 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 842 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 843 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 844 0
	b	.L82
.L90:
	.loc 1 846 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 847 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 848 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 849 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 850 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 851 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 852 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 853 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 854 0
	b	.L82
.L91:
	.loc 1 856 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 857 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 858 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 859 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 860 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 861 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 862 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 863 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 864 0
	b	.L82
.L92:
	.loc 1 866 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 867 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 868 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 869 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 870 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 871 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 872 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 873 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 874 0
	b	.L82
.L93:
	.loc 1 876 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 877 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 878 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 879 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 880 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 881 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 882 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 883 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 884 0
	b	.L82
.L94:
	.loc 1 886 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 887 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 888 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 889 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
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
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 891 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 892 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 893 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 894 0
	b	.L82
.L95:
	.loc 1 896 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
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
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 899 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
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
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 902 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 903 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 904 0
	b	.L82
.L96:
	.loc 1 906 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 907 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 908 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 909 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 910 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 911 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 912 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 913 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 914 0
	b	.L82
.L97:
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
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 918 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 919 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 920 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 921 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 922 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 923 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 924 0
	b	.L82
.L98:
	.loc 1 926 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 927 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 928 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 929 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 930 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 931 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 932 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 933 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 934 0
	b	.L82
.L99:
	.loc 1 936 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 937 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 938 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 939 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 940 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 941 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 942 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 943 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 944 0
	b	.L82
.L100:
	.loc 1 946 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 947 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 948 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 949 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 950 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 951 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 952 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 953 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 954 0
	nop
.L82:
	.loc 1 959 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 960 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 963 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 966 0
	ldr	r3, [r7, #4]
	add	r3, r3, #-1
	cmp	r3, #4
	bhi	.L102
	adr	r2, .L108
	ldr	pc, [r2, r3, lsl #2]
	.align	2
.L108:
	.word	.L103+1
	.word	.L104+1
	.word	.L105+1
	.word	.L106+1
	.word	.L107+1
.L103:
	.loc 1 968 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 969 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 970 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 971 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 972 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 973 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 974 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 975 0
	b	.L102
.L104:
	.loc 1 977 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 978 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 979 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 980 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 981 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 982 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 983 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 984 0
	b	.L102
.L105:
	.loc 1 986 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 987 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 988 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 989 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 990 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 991 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 992 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 993 0
	b	.L102
.L106:
	.loc 1 995 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 996 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 997 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 998 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 999 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1000 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1001 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1002 0
	b	.L102
.L107:
	.loc 1 1004 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1005 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1006 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1007 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1008 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 1009 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1010 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1011 0
	nop
.L102:
	.loc 1 1014 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 1015 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 1018 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 1021 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 1022 0
	mov	r0, r3
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE18:
	.size	seg7_update, .-seg7_update
	.align	2
	.global	main
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB19:
	.loc 1 1028 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI48:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI49:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI50:
	.cfi_def_cfa_register 7
	.loc 1 1037 0
	mov	r3, #-1
	str	r3, [r7, #12]
	.loc 1 1038 0
	mov	r3, #1
	str	r3, [r7, #8]
	.loc 1 1039 0
	mov	r3, #0
	str	r3, [r7, #0]
	.loc 1 1045 0
	movw	r3, #:lower16:SystemCoreClock
	movt	r3, #:upper16:SystemCoreClock
	mov	r2, #31232
	movt	r2, 2563
	str	r2, [r3, #0]
	.loc 1 1050 0
	bl	SystemCoreClockUpdate
	.loc 1 1051 0
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
	beq	.L110
.L111:
	.loc 1 1052 0 discriminator 1
	b	.L111
.L110:
	.loc 1 1054 0
	bl	SEG7_Init
	.loc 1 1055 0
	bl	switch_init
	.loc 1 1056 0
	bl	LED_Init
	.loc 1 1057 0
	bl	BTN_Init
	.loc 1 1058 0
	mov	r3, #0
	str	r3, [r7, #4]
.L117:
	.loc 1 1061 0
	bl	BTN_Get
	str	r0, [r7, #0]
	.loc 1 1063 0
	ldr	r3, [r7, #0]
	cmp	r3, #1
	beq	.L112
	.loc 1 1065 0
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	str	r3, [r7, #12]
	.loc 1 1066 0
	ldr	r3, [r7, #12]
	cmp	r3, #4
	bne	.L113
	.loc 1 1066 0 is_stmt 0 discriminator 1
	mov	r3, #-1
	str	r3, [r7, #8]
	mov	r3, #3
	str	r3, [r7, #12]
	b	.L114
.L113:
	.loc 1 1067 0 is_stmt 1
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L114
	.loc 1 1067 0 is_stmt 0 discriminator 1
	mov	r3, #1
	str	r3, [r7, #8]
	mov	r3, #0
	str	r3, [r7, #12]
.L114:
	.loc 1 1069 0 is_stmt 1
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L115
	.loc 1 1070 0
	ldr	r0, [r7, #12]
	bl	asmLED_ON
	.loc 1 1071 0
	mov	r0, #50
	bl	MyasmDelay
	.loc 1 1072 0
	ldr	r0, [r7, #12]
	bl	asmLED_OFF
	.loc 1 1073 0
	mov	r0, #100
	bl	MyasmDelay
	.loc 1 1074 0
	mov	r3, #1
	str	r3, [r7, #4]
	.loc 1 1091 0
	b	.L117
.L115:
	.loc 1 1077 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_On
	.loc 1 1078 0
	mov	r0, #50
	bl	Delay
	.loc 1 1079 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_Off
	.loc 1 1080 0
	mov	r0, #100
	bl	Delay
	.loc 1 1081 0
	mov	r3, #0
	str	r3, [r7, #4]
	.loc 1 1091 0
	b	.L117
.L112:
	.loc 1 1087 0
	mov	r0, #15
	bl	LED_Out
	.loc 1 1088 0
	mov	r0, #10
	bl	Delay
	.loc 1 1091 0
	b	.L117
	.cfi_endproc
.LFE19:
	.size	main, .-main
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe85
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF223
	.byte	0x1
	.4byte	.LASF224
	.4byte	.LASF225
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
	.byte	0x42
	.4byte	0x12c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x44
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x45
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x46
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x47
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"IDR\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.ascii	"ODR\000"
	.byte	0x1
	.byte	0x49
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x4a
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4b
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4c
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.ascii	"AFR\000"
	.byte	0x1
	.byte	0x4d
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
	.byte	0x4e
	.4byte	0x97
	.uleb128 0x5
	.byte	0x88
	.byte	0x1
	.byte	0x52
	.4byte	0x2fc
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x56
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"CIR\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x58
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x59
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5a
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5c
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5e
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x60
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x61
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x62
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x63
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x1
	.byte	0x64
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.byte	0x65
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x66
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.byte	0x67
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0x68
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0x69
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6a
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6c
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x1
	.byte	0x6d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x1
	.byte	0x6e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6f
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x1
	.byte	0x70
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x1
	.byte	0x71
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x1
	.byte	0x72
	.4byte	0x14e
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0x1
	.byte	0x1
	.byte	0x83
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
	.byte	0xe1
	.4byte	0x307
	.uleb128 0x5
	.byte	0x10
	.byte	0x1
	.byte	0xeb
	.4byte	0x58e
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x1
	.byte	0xed
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x1
	.byte	0xee
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"VAL\000"
	.byte	0x1
	.byte	0xef
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0x1
	.byte	0xf0
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x1
	.byte	0xf1
	.4byte	0x54d
	.uleb128 0xc
	.2byte	0xe04
	.byte	0x1
	.byte	0xf7
	.4byte	0x669
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0x1
	.byte	0xf9
	.4byte	0x669
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0xfa
	.4byte	0x679
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x1
	.byte	0xfb
	.4byte	0x669
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x1
	.byte	0xfc
	.4byte	0x679
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x1
	.byte	0xfd
	.4byte	0x669
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0xfe
	.4byte	0x679
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x1
	.byte	0xff
	.4byte	0x669
	.byte	0x3
	.byte	0x23
	.uleb128 0x180
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x100
	.4byte	0x679
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x101
	.4byte	0x669
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x102
	.4byte	0x689
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xe
	.ascii	"IP\000"
	.byte	0x1
	.2byte	0x103
	.4byte	0x699
	.byte	0x3
	.byte	0x23
	.uleb128 0x300
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x104
	.4byte	0x6a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0xd
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x105
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0xe00
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x679
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x689
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x17
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x699
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x37
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x6a9
	.uleb128 0x9
	.4byte	0x13c
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x6ba
	.uleb128 0xf
	.4byte	0x13c
	.2byte	0x283
	.byte	0
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x106
	.4byte	0x599
	.uleb128 0x11
	.byte	0x8c
	.byte	0x1
	.2byte	0x10c
	.4byte	0x80c
	.uleb128 0xd
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x10e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x10f
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x110
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x111
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.ascii	"SCR\000"
	.byte	0x1
	.2byte	0x112
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.ascii	"CCR\000"
	.byte	0x1
	.2byte	0x113
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.ascii	"SHP\000"
	.byte	0x1
	.2byte	0x114
	.4byte	0x80c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x115
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x116
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x117
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x118
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x119
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x11a
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x11b
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xe
	.ascii	"PFR\000"
	.byte	0x1
	.2byte	0x11c
	.4byte	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.ascii	"DFR\000"
	.byte	0x1
	.2byte	0x11d
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.ascii	"ADR\000"
	.byte	0x1
	.2byte	0x11e
	.4byte	0x69
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x11f
	.4byte	0x81c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x120
	.4byte	0x82c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x121
	.4byte	0x82c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xd
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x122
	.4byte	0x69
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x81c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x82c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x69
	.4byte	0x83c
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x123
	.4byte	0x6c6
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x14b
	.byte	0x1
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x8af
	.uleb128 0x13
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x14d
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x14d
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x14d
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x14d
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x178
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x8e8
	.uleb128 0x16
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x178
	.4byte	0x542
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x16
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x178
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x17
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x181
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x916
	.uleb128 0x16
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x181
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x192
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x974
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x19d
	.4byte	0x89
	.byte	0x1
	.4byte	0x945
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x198
	.4byte	0x89
	.byte	0x1
	.4byte	0x962
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x199
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x1a3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x9bd
	.uleb128 0x1b
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x13
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x1a5
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1b
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x13
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1a7
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x1b9
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1c7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST6
	.byte	0x1
	.4byte	0xa1c
	.uleb128 0x1b
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x89
	.byte	0x1
	.4byte	0xa0a
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x1dd
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST7
	.byte	0x1
	.4byte	0xa47
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1de
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1ee
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST8
	.byte	0x1
	.4byte	0xa71
	.uleb128 0x14
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x203
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST9
	.byte	0x1
	.4byte	0xa9c
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x204
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x20d
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST10
	.byte	0x1
	.4byte	0xac6
	.uleb128 0x13
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x226
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST11
	.byte	0x1
	.4byte	0xaf1
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x227
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x233
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST12
	.byte	0x1
	.4byte	0xb39
	.uleb128 0x16
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x233
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x26e
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"sw\000"
	.byte	0x1
	.2byte	0x277
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x281
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST13
	.byte	0x1
	.4byte	0xb73
	.uleb128 0x16
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x281
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x282
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x290
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST14
	.byte	0x1
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x29d
	.byte	0x1
	.4byte	0x69
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST15
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x2b8
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST16
	.byte	0x1
	.4byte	0xbed
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x2b9
	.4byte	0xbed
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x2bb
	.4byte	0xbed
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x37
	.byte	0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x8
	.4byte	0x90
	.4byte	0xbfd
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x89
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST17
	.byte	0x1
	.4byte	0xc36
	.uleb128 0x1b
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x2e5
	.4byte	0x89
	.byte	0x1
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x301
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST18
	.byte	0x1
	.4byte	0xc74
	.uleb128 0x16
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x301
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x301
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x404
	.byte	0x1
	.4byte	0x89
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST19
	.byte	0x1
	.4byte	0xcf8
	.uleb128 0x13
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x40d
	.4byte	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x40e
	.4byte	0x57
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x40f
	.4byte	0x69
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x41e
	.4byte	0x89
	.byte	0x1
	.4byte	0xcd4
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x41f
	.4byte	0x89
	.byte	0x1
	.4byte	0xce8
	.uleb128 0x1a
	.byte	0
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x422
	.4byte	0x89
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x26
	.4byte	.LASF202
	.byte	0x1
	.byte	0x12
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	Cint
	.uleb128 0x26
	.4byte	.LASF203
	.byte	0x1
	.byte	0x13
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_COUNTER
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0x14
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT1
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0x15
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT2
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.byte	0x16
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT3
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x17
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_DIGIT4
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.byte	0x18
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SEG7_COLON_DEGREE
	.uleb128 0x26
	.4byte	.LASF209
	.byte	0x1
	.byte	0x19
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LED_GREEN
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.byte	0x1a
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LED_RED
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.byte	0x1b
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SWITCHES
	.uleb128 0x8
	.4byte	0x89
	.4byte	0xdbc
	.uleb128 0x9
	.4byte	0x13c
	.byte	0x13
	.byte	0
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.byte	0x1d
	.4byte	0xdac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SWITCH_QUEUE
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0x1e
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SWITCH_COUNTER
	.uleb128 0x26
	.4byte	.LASF214
	.byte	0x1
	.byte	0x1f
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	DEBOUNCE_COUNTER
	.uleb128 0x26
	.4byte	.LASF215
	.byte	0x1
	.byte	0x20
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SWITCH_DEBOUNCE
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0x1
	.byte	0x21
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SW_READ_ODD
	.uleb128 0x26
	.4byte	.LASF217
	.byte	0x1
	.byte	0x22
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SW_READ_EVEN
	.uleb128 0x26
	.4byte	.LASF218
	.byte	0x1
	.byte	0x23
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	FREQ_VAL
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x1
	.byte	0x24
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	TEST_VAL
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x1
	.byte	0x25
	.4byte	0x89
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	MODE
	.uleb128 0x26
	.4byte	.LASF221
	.byte	0x1
	.byte	0x33
	.4byte	0x69
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0x27
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x18e
	.4byte	0xe83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	msTicks
	.uleb128 0x28
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.sleb128 4
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
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
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE19-.Ltext0
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
.LASF192:
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
.LASF186:
	.ascii	"switch_handler\000"
.LASF79:
	.ascii	"CAN1_RX1_IRQn\000"
.LASF131:
	.ascii	"I2C3_ER_IRQn\000"
.LASF171:
	.ascii	"pllm\000"
.LASF225:
	.ascii	"C:\\\\Users\\\\Jake\\\\Documents\\\\GitHub\\\\audio"
	.ascii	"meter\\\\demoSTM32F4Blinky\000"
.LASF14:
	.ascii	"OTYPER\000"
.LASF126:
	.ascii	"DMA2_Stream5_IRQn\000"
.LASF187:
	.ascii	"sw_set\000"
.LASF177:
	.ascii	"seg7_handler\000"
.LASF115:
	.ascii	"DMA2_Stream1_IRQn\000"
.LASF229:
	.ascii	"BTN_Init\000"
.LASF13:
	.ascii	"MODER\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF99:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF218:
	.ascii	"FREQ_VAL\000"
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
.LASF208:
	.ascii	"SEG7_COLON_DEGREE\000"
.LASF196:
	.ascii	"digit\000"
.LASF201:
	.ascii	"toggle\000"
.LASF127:
	.ascii	"DMA2_Stream6_IRQn\000"
.LASF7:
	.ascii	"long int\000"
.LASF29:
	.ascii	"APB2RSTR\000"
.LASF42:
	.ascii	"APB1LPENR\000"
.LASF188:
	.ascii	"Delay\000"
.LASF204:
	.ascii	"SEG7_DIGIT1\000"
.LASF205:
	.ascii	"SEG7_DIGIT2\000"
.LASF74:
	.ascii	"DMA1_Stream5_IRQn\000"
.LASF81:
	.ascii	"EXTI9_5_IRQn\000"
.LASF120:
	.ascii	"ETH_WKUP_IRQn\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF206:
	.ascii	"SEG7_DIGIT3\000"
.LASF207:
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
.LASF224:
	.ascii	"STM32F4main01.c\000"
.LASF167:
	.ascii	"SCB_Type\000"
.LASF209:
	.ascii	"LED_GREEN\000"
.LASF128:
	.ascii	"DMA2_Stream7_IRQn\000"
.LASF147:
	.ascii	"RSERVED1\000"
.LASF202:
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
.LASF230:
	.ascii	"BTN_Get\000"
.LASF51:
	.ascii	"MemoryManagement_IRQn\000"
.LASF182:
	.ascii	"test_mode_handler\000"
.LASF130:
	.ascii	"I2C3_EV_IRQn\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"GPIO_TypeDef\000"
.LASF49:
	.ascii	"RCC_TypeDef\000"
.LASF200:
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
.LASF198:
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
.LASF226:
	.ascii	"NVIC_SetPriority\000"
.LASF216:
	.ascii	"SW_READ_ODD\000"
.LASF43:
	.ascii	"APB2LPENR\000"
.LASF164:
	.ascii	"MMFR\000"
.LASF214:
	.ascii	"DEBOUNCE_COUNTER\000"
.LASF101:
	.ascii	"TIM8_BRK_TIM12_IRQn\000"
.LASF57:
	.ascii	"SysTick_IRQn\000"
.LASF85:
	.ascii	"TIM1_CC_IRQn\000"
.LASF191:
	.ascii	"sub_uchar_from_quad_example\000"
.LASF103:
	.ascii	"TIM8_TRG_COM_TIM14_IRQn\000"
.LASF213:
	.ascii	"SWITCH_COUNTER\000"
.LASF172:
	.ascii	"IRQn\000"
.LASF113:
	.ascii	"TIM7_IRQn\000"
.LASF178:
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
.LASF220:
	.ascii	"MODE\000"
.LASF150:
	.ascii	"IABR\000"
.LASF129:
	.ascii	"USART6_IRQn\000"
.LASF228:
	.ascii	"switch_queue_handler\000"
.LASF219:
	.ascii	"TEST_VAL\000"
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
.LASF223:
	.ascii	"GNU C 4.7.2\000"
.LASF28:
	.ascii	"APB1RSTR\000"
.LASF194:
	.ascii	"uchar\000"
.LASF135:
	.ascii	"OTG_HS_IRQn\000"
.LASF185:
	.ascii	"display_intensity\000"
.LASF153:
	.ascii	"CPUID\000"
.LASF221:
	.ascii	"SystemCoreClock\000"
.LASF190:
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
.LASF181:
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
.LASF203:
	.ascii	"SEG7_COUNTER\000"
.LASF62:
	.ascii	"FLASH_IRQn\000"
.LASF140:
	.ascii	"IRQn_Type\000"
.LASF189:
	.ascii	"dlyTicks\000"
.LASF215:
	.ascii	"SWITCH_DEBOUNCE\000"
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
.LASF195:
	.ascii	"seg7_update\000"
.LASF211:
	.ascii	"SWITCHES\000"
.LASF137:
	.ascii	"CRYP_IRQn\000"
.LASF104:
	.ascii	"TIM8_CC_IRQn\000"
.LASF199:
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
.LASF197:
	.ascii	"main\000"
.LASF160:
	.ascii	"DFSR\000"
.LASF163:
	.ascii	"AFSR\000"
.LASF35:
	.ascii	"APB1ENR\000"
.LASF227:
	.ascii	"SysTick_Config\000"
.LASF32:
	.ascii	"AHB2ENR\000"
.LASF60:
	.ascii	"TAMP_STAMP_IRQn\000"
.LASF179:
	.ascii	"switch_debounce_handler\000"
.LASF176:
	.ascii	"SysTick_Handler\000"
.LASF55:
	.ascii	"DebugMonitor_IRQn\000"
.LASF114:
	.ascii	"DMA2_Stream0_IRQn\000"
.LASF141:
	.ascii	"CTRL\000"
.LASF183:
	.ascii	"display_frequency\000"
.LASF97:
	.ascii	"USART3_IRQn\000"
.LASF47:
	.ascii	"SSCGR\000"
.LASF210:
	.ascii	"LED_RED\000"
.LASF86:
	.ascii	"TIM2_IRQn\000"
.LASF64:
	.ascii	"EXTI0_IRQn\000"
.LASF184:
	.ascii	"freq\000"
.LASF17:
	.ascii	"BSRRL\000"
.LASF45:
	.ascii	"BDCR\000"
.LASF18:
	.ascii	"BSRRH\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF222:
	.ascii	"msTicks\000"
.LASF212:
	.ascii	"SWITCH_QUEUE\000"
.LASF63:
	.ascii	"RCC_IRQn\000"
.LASF151:
	.ascii	"STIR\000"
.LASF193:
	.ascii	"quad_base\000"
.LASF31:
	.ascii	"AHB1ENR\000"
.LASF217:
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
