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
	.file	"LED_01.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	led_mask
	.section	.rodata
	.align	2
	.type	led_mask, %object
	.size	led_mask, 16
led_mask:
	.word	4096
	.word	8192
	.word	16384
	.word	32768
	.text
	.align	2
	.global	switch_init
	.thumb
	.thumb_func
	.type	switch_init, %function
switch_init:
.LFB0:
	.file 1 "LED_01.c"
	.loc 1 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI1:
	.cfi_def_cfa_register 7
	.loc 1 109 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #1
	str	r2, [r3, #48]
	.loc 1 110 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #2
	str	r2, [r3, #48]
	.loc 1 111 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #4
	str	r2, [r3, #48]
	.loc 1 114 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #12
	str	r2, [r3, #0]
	.loc 1 115 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	orr	r2, r2, #4
	str	r2, [r3, #0]
	.loc 1 116 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #2
	str	r2, [r3, #4]
	.loc 1 117 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #12
	str	r2, [r3, #8]
	.loc 1 118 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #8
	str	r2, [r3, #8]
	.loc 1 119 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #12
	str	r2, [r3, #12]
	.loc 1 120 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	.loc 1 123 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #-1073741824
	str	r2, [r3, #0]
	.loc 1 124 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #-1073741824
	str	r2, [r3, #8]
	.loc 1 125 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #-2147483648
	str	r2, [r3, #8]
	.loc 1 126 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #-1073741824
	str	r2, [r3, #12]
	.loc 1 127 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #1073741824
	str	r2, [r3, #12]
	.loc 1 130 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #62448
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 131 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #1029
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 132 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #2080
	bic	r2, r2, #3
	str	r2, [r3, #4]
	.loc 1 133 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #62448
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 134 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #2058
	movt	r3, 128
	orrs	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 135 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #62448
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 136 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #1029
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 139 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #3840
	str	r2, [r3, #0]
	.loc 1 140 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #0]
	orr	r2, r2, #1280
	str	r2, [r3, #0]
	.loc 1 141 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #48
	str	r2, [r3, #4]
	.loc 1 142 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #3840
	str	r2, [r3, #8]
	.loc 1 143 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #2560
	str	r2, [r3, #8]
	.loc 1 144 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #3840
	str	r2, [r3, #12]
	.loc 1 145 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #1280
	str	r2, [r3, #12]
	.loc 1 148 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #196608
	str	r2, [r3, #0]
	.loc 1 149 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #196608
	str	r2, [r3, #8]
	.loc 1 150 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #131072
	str	r2, [r3, #8]
	.loc 1 151 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #196608
	str	r2, [r3, #12]
	.loc 1 152 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #65536
	str	r2, [r3, #12]
	.loc 1 153 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE0:
	.size	switch_init, .-switch_init
	.align	2
	.global	SEG7_Init
	.thumb
	.thumb_func
	.type	SEG7_Init, %function
SEG7_Init:
.LFB1:
	.loc 1 157 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI3:
	.cfi_def_cfa_register 7
	.loc 1 158 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #1
	str	r2, [r3, #48]
	.loc 1 159 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #2
	str	r2, [r3, #48]
	.loc 1 160 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #4
	str	r2, [r3, #48]
	.loc 1 161 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #8
	str	r2, [r3, #48]
	.loc 1 165 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #12
	str	r2, [r3, #0]
	.loc 1 166 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #0]
	orr	r2, r2, #4
	str	r2, [r3, #0]
	.loc 1 167 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #2
	str	r2, [r3, #4]
	.loc 1 168 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #12
	str	r2, [r3, #8]
	.loc 1 169 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #8
	str	r2, [r3, #8]
	.loc 1 170 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #12
	str	r2, [r3, #12]
	.loc 1 171 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	.loc 1 174 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #61680
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 175 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #1285
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 176 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #2096
	bic	r2, r2, #3
	str	r2, [r3, #4]
	.loc 1 177 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #61680
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 178 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #2570
	movt	r3, 128
	orrs	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 179 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #61680
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 180 0
	mov	r2, #1024
	movt	r2, 16386
	mov	r3, #1024
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #1285
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 183 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #61635
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 184 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #0]
	movw	r3, #1300
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #0]
	.loc 1 185 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #2096
	bic	r2, r2, #6
	str	r2, [r3, #4]
	.loc 1 186 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #61635
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 187 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #8]
	movw	r3, #2600
	movt	r3, 128
	orrs	r3, r3, r1
	str	r3, [r2, #8]
	.loc 1 188 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #61635
	movt	r3, 65343
	ands	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 189 0
	mov	r2, #2048
	movt	r2, 16386
	mov	r3, #2048
	movt	r3, 16386
	ldr	r1, [r3, #12]
	movw	r3, #1300
	movt	r3, 64
	orrs	r3, r3, r1
	str	r3, [r2, #12]
	.loc 1 192 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #48
	str	r2, [r3, #0]
	.loc 1 193 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #0]
	orr	r2, r2, #16
	str	r2, [r3, #0]
	.loc 1 194 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #4
	str	r2, [r3, #4]
	.loc 1 195 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #48
	str	r2, [r3, #8]
	.loc 1 196 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #32
	str	r2, [r3, #8]
	.loc 1 197 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #48
	str	r2, [r3, #12]
	.loc 1 198 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	.loc 1 202 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 203 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 207 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 210 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #4
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 211 0
	mov	r3, #0
	movt	r3, 16386
	mov	r2, #0
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 212 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 213 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 214 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #32
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 215 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 216 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 219 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 220 0
	mov	r3, #2048
	movt	r3, 16386
	mov	r2, #2048
	movt	r2, 16386
	ldrh	r2, [r2, #24]
	orr	r2, r2, #2048
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
	.loc 1 223 0
	mov	r3, #1024
	movt	r3, 16386
	mov	r2, #1024
	movt	r2, 16386
	ldrh	r2, [r2, #26]
	orr	r2, r2, #16
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
	.loc 1 225 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE1:
	.size	SEG7_Init, .-SEG7_Init
	.align	2
	.global	LED_Init
	.thumb
	.thumb_func
	.type	LED_Init, %function
LED_Init:
.LFB2:
	.loc 1 230 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	add	r7, sp, #0
.LCFI5:
	.cfi_def_cfa_register 7
	.loc 1 232 0
	mov	r3, #14336
	movt	r3, 16386
	mov	r2, #14336
	movt	r2, 16386
	ldr	r2, [r2, #48]
	orr	r2, r2, #8
	str	r2, [r3, #48]
	.loc 1 234 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #0]
	bic	r2, r2, #-16777216
	str	r2, [r3, #0]
	.loc 1 238 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #0]
	orr	r2, r2, #1426063360
	str	r2, [r3, #0]
	.loc 1 242 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #4]
	bic	r2, r2, #61440
	str	r2, [r3, #4]
	.loc 1 246 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #8]
	bic	r2, r2, #-16777216
	str	r2, [r3, #8]
	.loc 1 250 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #8]
	orr	r2, r2, #-1442840576
	str	r2, [r3, #8]
	.loc 1 254 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #12]
	bic	r2, r2, #-16777216
	str	r2, [r3, #12]
	.loc 1 258 0
	mov	r3, #3072
	movt	r3, 16386
	mov	r2, #3072
	movt	r2, 16386
	ldr	r2, [r2, #12]
	orr	r2, r2, #1426063360
	str	r2, [r3, #12]
	.loc 1 262 0
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE2:
	.size	LED_Init, .-LED_Init
	.align	2
	.global	LED_On
	.thumb
	.thumb_func
	.type	LED_On, %function
LED_On:
.LFB3:
	.loc 1 267 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI7:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI8:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 269 0
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L4
	.loc 1 270 0
	mov	r3, #3072
	movt	r3, 16386
	movw	r2, #:lower16:led_mask
	movt	r2, #:upper16:led_mask
	ldr	r1, [r7, #4]
	ldr	r2, [r2, r1, lsl #2]
	uxth	r2, r2
	strh	r2, [r3, #24]	@ movhi
.L4:
	.loc 1 272 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE3:
	.size	LED_On, .-LED_On
	.align	2
	.global	LED_Off
	.thumb
	.thumb_func
	.type	LED_Off, %function
LED_Off:
.LFB4:
	.loc 1 277 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 7, -4
	sub	sp, sp, #12
.LCFI10:
	.cfi_def_cfa_offset 16
	add	r7, sp, #0
.LCFI11:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 279 0
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L6
	.loc 1 280 0
	mov	r3, #3072
	movt	r3, 16386
	movw	r2, #:lower16:led_mask
	movt	r2, #:upper16:led_mask
	ldr	r1, [r7, #4]
	ldr	r2, [r2, r1, lsl #2]
	uxth	r2, r2
	strh	r2, [r3, #26]	@ movhi
.L6:
	.loc 1 282 0
	add	r7, r7, #12
	mov	sp, r7
	pop	{r7}
	bx	lr
	.cfi_endproc
.LFE4:
	.size	LED_Off, .-LED_Off
	.align	2
	.global	LED_Out
	.thumb
	.thumb_func
	.type	LED_Out, %function
LED_Out:
.LFB5:
	.loc 1 287 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #16
.LCFI13:
	.cfi_def_cfa_offset 24
	add	r7, sp, #0
.LCFI14:
	.cfi_def_cfa_register 7
	str	r0, [r7, #4]
	.loc 1 290 0
	mov	r3, #0
	str	r3, [r7, #12]
	b	.L9
.L12:
	.loc 1 291 0
	mov	r2, #1
	ldr	r3, [r7, #12]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L10
	.loc 1 292 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_On
	b	.L11
.L10:
	.loc 1 294 0
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	LED_Off
.L11:
	.loc 1 290 0
	ldr	r3, [r7, #12]
	add	r3, r3, #1
	str	r3, [r7, #12]
.L9:
	.loc 1 290 0 is_stmt 0 discriminator 1
	ldr	r3, [r7, #12]
	cmp	r3, #3
	ble	.L12
	.loc 1 297 0 is_stmt 1
	add	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.cfi_endproc
.LFE5:
	.size	LED_Out, .-LED_Out
.Letext0:
	.file 2 "c:/yagarto/lib/gcc/../../arm-none-eabi/sys-include/stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3e3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x1
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x36
	.4byte	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x50
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x28
	.byte	0x1
	.byte	0x22
	.4byte	0x116
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x24
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x25
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x26
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x27
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"IDR\000"
	.byte	0x1
	.byte	0x28
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.ascii	"ODR\000"
	.byte	0x1
	.byte	0x29
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2a
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2b
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2c
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.ascii	"AFR\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.4byte	0x126
	.uleb128 0x9
	.4byte	0x126
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.4byte	0x81
	.uleb128 0x5
	.byte	0x88
	.byte	0x1
	.byte	0x32
	.4byte	0x2e6
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x1
	.byte	0x34
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x35
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"CIR\000"
	.byte	0x1
	.byte	0x37
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0x38
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x39
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3a
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3b
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x1
	.byte	0x3c
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3d
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3e
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x1
	.byte	0x3f
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x1
	.byte	0x40
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x1
	.byte	0x41
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x42
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x1
	.byte	0x43
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x1
	.byte	0x44
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x45
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x1
	.byte	0x46
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x1
	.byte	0x47
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x1
	.byte	0x48
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x1
	.byte	0x49
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4a
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x1
	.byte	0x4b
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x1
	.byte	0x4c
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x1
	.byte	0x4d
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x53
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x1
	.byte	0x4f
	.4byte	0x116
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x1
	.byte	0x50
	.4byte	0x53
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x1
	.byte	0x51
	.4byte	0x53
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0x52
	.4byte	0x138
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST1
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST2
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x10b
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x35c
	.uleb128 0xd
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x7a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x115
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x387
	.uleb128 0xd
	.ascii	"num\000"
	.byte	0x1
	.2byte	0x115
	.4byte	0x7a
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11f
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x3bf
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x11f
	.4byte	0x7a
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0x73
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x8
	.4byte	0x5e
	.4byte	0x3cf
	.uleb128 0x9
	.4byte	0x126
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5d
	.4byte	0x3e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	led_mask
	.uleb128 0x12
	.4byte	0x3bf
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
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
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
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE5-.Ltext0
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
.LASF39:
	.ascii	"RESERVED4\000"
.LASF13:
	.ascii	"OSPEEDR\000"
.LASF21:
	.ascii	"CFGR\000"
.LASF11:
	.ascii	"MODER\000"
.LASF52:
	.ascii	"LED_Out\000"
.LASF45:
	.ascii	"SSCGR\000"
.LASF43:
	.ascii	"BDCR\000"
.LASF58:
	.ascii	"led_mask\000"
.LASF36:
	.ascii	"AHB1LPENR\000"
.LASF24:
	.ascii	"AHB3RSTR\000"
.LASF38:
	.ascii	"AHB3LPENR\000"
.LASF25:
	.ascii	"RESERVED0\000"
.LASF28:
	.ascii	"RESERVED1\000"
.LASF56:
	.ascii	"C:\\\\Users\\\\Jake\\\\Documents\\\\GitHub\\\\audio"
	.ascii	"meter\\\\demoSTM32F4Blinky\000"
.LASF35:
	.ascii	"RESERVED3\000"
.LASF55:
	.ascii	"LED_01.c\000"
.LASF42:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF30:
	.ascii	"AHB2ENR\000"
.LASF12:
	.ascii	"OTYPER\000"
.LASF26:
	.ascii	"APB1RSTR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"AHB2LPENR\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"PLLCFGR\000"
.LASF49:
	.ascii	"SEG7_Init\000"
.LASF31:
	.ascii	"AHB3ENR\000"
.LASF34:
	.ascii	"APB2ENR\000"
.LASF33:
	.ascii	"APB1ENR\000"
.LASF27:
	.ascii	"APB2RSTR\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF51:
	.ascii	"LED_Off\000"
.LASF19:
	.ascii	"GPIO_TypeDef\000"
.LASF46:
	.ascii	"PLLI2SCFGR\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF40:
	.ascii	"APB1LPENR\000"
.LASF48:
	.ascii	"switch_init\000"
.LASF22:
	.ascii	"AHB1RSTR\000"
.LASF18:
	.ascii	"sizetype\000"
.LASF14:
	.ascii	"PUPDR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF53:
	.ascii	"value\000"
.LASF54:
	.ascii	"GNU C 4.7.2\000"
.LASF2:
	.ascii	"short int\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF41:
	.ascii	"APB2LPENR\000"
.LASF47:
	.ascii	"RCC_TypeDef\000"
.LASF16:
	.ascii	"BSRRH\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF15:
	.ascii	"BSRRL\000"
.LASF50:
	.ascii	"LED_On\000"
.LASF23:
	.ascii	"AHB2RSTR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF57:
	.ascii	"LED_Init\000"
.LASF29:
	.ascii	"AHB1ENR\000"
.LASF32:
	.ascii	"RESERVED2\000"
.LASF17:
	.ascii	"LCKR\000"
	.ident	"GCC: (GNU) 4.7.2"
