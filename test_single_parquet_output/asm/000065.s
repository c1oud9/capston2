	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_jsimd_can_rgb_ycc      ## -- Begin function jsimd_can_rgb_ycc
	.globl	_jsimd_can_rgb_ycc
	.p2align	4
_jsimd_can_rgb_ycc:                     ## @jsimd_can_rgb_ycc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB0_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_rgb_ycc_convert_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB0_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB0_7
LBB0_3:                                 ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB0_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_rgb_ycc_convert_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB0_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB0_7
LBB0_6:                                 ## %if.end8
	movl	$0, -4(%rbp)
LBB0_7:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function init_simd
_init_simd:                             ## @init_simd
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp                      ## imm = 0x110
	leaq	-262(%rbp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	_memset
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	je	LBB1_2
## %bb.1:                               ## %if.then
	movl	$1, -268(%rbp)
	jmp	LBB1_67
LBB1_2:                                 ## %if.end
	callq	_jpeg_simd_cpu_support
	movl	%eax, %ecx
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	%ecx, (%rax)
	leaq	-262(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	$2, -240(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -248(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -256(%rbp)
	cmpq	$0, -232(%rbp)
	jne	LBB1_6
## %bb.3:                               ## %if.then.i
	cmpq	$0, -240(%rbp)
	jne	LBB1_5
## %bb.4:                               ## %if.then1.i
	movl	$0, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_5:                                 ## %if.else.i
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_6:                                 ## %if.end.i
	cmpq	$0, -240(%rbp)
	jne	LBB1_8
## %bb.7:                               ## %if.then3.i
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_8:                                 ## %if.end5.i
	cmpq	$0, -248(%rbp)
	jne	LBB1_10
## %bb.9:                               ## %if.then7.i
	movq	-232(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_10:                                ## %if.end8.i
	movq	-248(%rbp), %rdi
	callq	_getenv
	movq	%rax, -256(%rbp)
	cmpq	$0, -256(%rbp)
	jne	LBB1_12
## %bb.11:                              ## %if.then11.i
	movq	-232(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_12:                                ## %if.end12.i
	movq	-256(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	cmpq	-240(%rbp), %rax
	jbe	LBB1_14
## %bb.13:                              ## %if.then15.i
	movq	-232(%rbp), %rax
	movb	$0, (%rax)
	movl	$34, -224(%rbp)
	movl	$1, -260(%rbp)
	jmp	LBB1_15
LBB1_14:                                ## %if.end16.i
	movq	-232(%rbp), %rdx
	movq	-256(%rbp), %rcx
	movq	-240(%rbp), %rax
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -224(%rbp)
	movl	$1, -260(%rbp)
LBB1_15:                                ## %GETENV_S.exit
	cmpl	$0, -224(%rbp)
	jne	LBB1_18
## %bb.16:                              ## %land.lhs.true
	leaq	-262(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB1_18
## %bb.17:                              ## %if.then5
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	andl	$8, %ecx
	movl	%ecx, (%rax)
LBB1_18:                                ## %if.end6
	leaq	-262(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	$2, -200(%rbp)
	leaq	L_.str.2(%rip), %rax
	movq	%rax, -208(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -216(%rbp)
	cmpq	$0, -192(%rbp)
	jne	LBB1_22
## %bb.19:                              ## %if.then.i8
	cmpq	$0, -200(%rbp)
	jne	LBB1_21
## %bb.20:                              ## %if.then1.i12
	movl	$0, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_21:                                ## %if.else.i10
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_22:                                ## %if.end.i13
	cmpq	$0, -200(%rbp)
	jne	LBB1_24
## %bb.23:                              ## %if.then3.i29
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_24:                                ## %if.end5.i15
	cmpq	$0, -208(%rbp)
	jne	LBB1_26
## %bb.25:                              ## %if.then7.i17
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_26:                                ## %if.end8.i18
	movq	-208(%rbp), %rdi
	callq	_getenv
	movq	%rax, -216(%rbp)
	cmpq	$0, -216(%rbp)
	jne	LBB1_28
## %bb.27:                              ## %if.then11.i21
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_28:                                ## %if.end12.i22
	movq	-216(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	cmpq	-200(%rbp), %rax
	jbe	LBB1_30
## %bb.29:                              ## %if.then15.i28
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
	movl	$34, -184(%rbp)
	movl	$1, -220(%rbp)
	jmp	LBB1_31
LBB1_30:                                ## %if.end16.i26
	movq	-192(%rbp), %rdx
	movq	-216(%rbp), %rcx
	movq	-200(%rbp), %rax
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -184(%rbp)
	movl	$1, -220(%rbp)
LBB1_31:                                ## %GETENV_S.exit31
	cmpl	$0, -184(%rbp)
	jne	LBB1_34
## %bb.32:                              ## %land.lhs.true10
	leaq	-262(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB1_34
## %bb.33:                              ## %if.then14
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %ecx
	andl	$128, %ecx
	movl	%ecx, (%rax)
LBB1_34:                                ## %if.end16
	leaq	-262(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	$2, -160(%rbp)
	leaq	L_.str.3(%rip), %rax
	movq	%rax, -168(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -176(%rbp)
	cmpq	$0, -152(%rbp)
	jne	LBB1_38
## %bb.35:                              ## %if.then.i39
	cmpq	$0, -160(%rbp)
	jne	LBB1_37
## %bb.36:                              ## %if.then1.i43
	movl	$0, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_37:                                ## %if.else.i41
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_38:                                ## %if.end.i44
	cmpq	$0, -160(%rbp)
	jne	LBB1_40
## %bb.39:                              ## %if.then3.i60
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_40:                                ## %if.end5.i46
	cmpq	$0, -168(%rbp)
	jne	LBB1_42
## %bb.41:                              ## %if.then7.i48
	movq	-152(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_42:                                ## %if.end8.i49
	movq	-168(%rbp), %rdi
	callq	_getenv
	movq	%rax, -176(%rbp)
	cmpq	$0, -176(%rbp)
	jne	LBB1_44
## %bb.43:                              ## %if.then11.i52
	movq	-152(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_44:                                ## %if.end12.i53
	movq	-176(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	cmpq	-160(%rbp), %rax
	jbe	LBB1_46
## %bb.45:                              ## %if.then15.i59
	movq	-152(%rbp), %rax
	movb	$0, (%rax)
	movl	$34, -144(%rbp)
	movl	$1, -180(%rbp)
	jmp	LBB1_47
LBB1_46:                                ## %if.end16.i57
	movq	-152(%rbp), %rdx
	movq	-176(%rbp), %rcx
	movq	-160(%rbp), %rax
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -144(%rbp)
	movl	$1, -180(%rbp)
LBB1_47:                                ## %GETENV_S.exit62
	cmpl	$0, -144(%rbp)
	jne	LBB1_50
## %bb.48:                              ## %land.lhs.true20
	leaq	-262(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB1_50
## %bb.49:                              ## %if.then24
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	$0, (%rax)
LBB1_50:                                ## %if.end25
	leaq	-262(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	$2, -120(%rbp)
	leaq	L_.str.4(%rip), %rax
	movq	%rax, -128(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -136(%rbp)
	cmpq	$0, -112(%rbp)
	jne	LBB1_54
## %bb.51:                              ## %if.then.i70
	cmpq	$0, -120(%rbp)
	jne	LBB1_53
## %bb.52:                              ## %if.then1.i74
	movl	$0, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_53:                                ## %if.else.i72
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_54:                                ## %if.end.i75
	cmpq	$0, -120(%rbp)
	jne	LBB1_56
## %bb.55:                              ## %if.then3.i91
	callq	___errno_location
	movl	$22, (%rax)
	movl	$22, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_56:                                ## %if.end5.i77
	cmpq	$0, -128(%rbp)
	jne	LBB1_58
## %bb.57:                              ## %if.then7.i79
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_58:                                ## %if.end8.i80
	movq	-128(%rbp), %rdi
	callq	_getenv
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	jne	LBB1_60
## %bb.59:                              ## %if.then11.i83
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movl	$0, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_60:                                ## %if.end12.i84
	movq	-136(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
	cmpq	-120(%rbp), %rax
	jbe	LBB1_62
## %bb.61:                              ## %if.then15.i90
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movl	$34, -100(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB1_63
LBB1_62:                                ## %if.end16.i88
	movq	-112(%rbp), %rdx
	movq	-136(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-96(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -100(%rbp)
	movl	$1, -140(%rbp)
LBB1_63:                                ## %GETENV_S.exit93
	cmpl	$0, -100(%rbp)
	jne	LBB1_66
## %bb.64:                              ## %land.lhs.true29
	leaq	-262(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB1_66
## %bb.65:                              ## %if.then33
	movq	_simd_huffman@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	$0, (%rax)
LBB1_66:                                ## %if.end34
	movl	$0, -268(%rbp)
LBB1_67:                                ## %cleanup
## %bb.68:                              ## %cleanup.cont
	addq	$272, %rsp                      ## imm = 0x110
	popq	%rbp
	retq
## %bb.69:                              ## %unreachable
	ud2
                                        ## -- End function
	.private_extern	_jsimd_can_rgb_gray     ## -- Begin function jsimd_can_rgb_gray
	.globl	_jsimd_can_rgb_gray
	.p2align	4
_jsimd_can_rgb_gray:                    ## @jsimd_can_rgb_gray
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB2_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_rgb_gray_convert_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB2_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB2_7
LBB2_3:                                 ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB2_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_rgb_gray_convert_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB2_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB2_7
LBB2_6:                                 ## %if.end8
	movl	$0, -4(%rbp)
LBB2_7:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_ycc_rgb      ## -- Begin function jsimd_can_ycc_rgb
	.globl	_jsimd_can_ycc_rgb
	.p2align	4
_jsimd_can_ycc_rgb:                     ## @jsimd_can_ycc_rgb
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB3_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_ycc_rgb_convert_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB3_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB3_7
LBB3_3:                                 ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB3_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_ycc_rgb_convert_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB3_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB3_7
LBB3_6:                                 ## %if.end8
	movl	$0, -4(%rbp)
LBB3_7:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_ycc_rgb565   ## -- Begin function jsimd_can_ycc_rgb565
	.globl	_jsimd_can_ycc_rgb565
	.p2align	4
_jsimd_can_ycc_rgb565:                  ## @jsimd_can_ycc_rgb565
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_rgb_ycc_convert  ## -- Begin function jsimd_rgb_ycc_convert
	.globl	_jsimd_rgb_ycc_convert
	.p2align	4
_jsimd_rgb_ycc_convert:                 ## @jsimd_rgb_ycc_convert
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB5_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB5_2:                                 ## %if.end
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	addl	$-6, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	subl	$9, %eax
	ja	LBB5_9
## %bb.14:                              ## %if.end
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI5_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB5_3:                                 ## %sw.bb
	movq	_jsimd_extrgb_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extrgb_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_4:                                 ## %sw.bb1
	movq	_jsimd_extrgbx_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extrgbx_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_5:                                 ## %sw.bb2
	movq	_jsimd_extbgr_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extbgr_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_6:                                 ## %sw.bb3
	movq	_jsimd_extbgrx_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extbgrx_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_7:                                 ## %sw.bb4
	movq	_jsimd_extxbgr_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extxbgr_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_8:                                 ## %sw.bb5
	movq	_jsimd_extxrgb_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extxrgb_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB5_10
LBB5_9:                                 ## %sw.default
	movq	_jsimd_rgb_ycc_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_rgb_ycc_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
LBB5_10:                                ## %sw.epilog
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB5_12
## %bb.11:                              ## %if.then6
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
	jmp	LBB5_13
LBB5_12:                                ## %if.else
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
LBB5_13:                                ## %if.end8
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L5_0_set_3 = LBB5_3-LJTI5_0
L5_0_set_4 = LBB5_4-LJTI5_0
L5_0_set_5 = LBB5_5-LJTI5_0
L5_0_set_6 = LBB5_6-LJTI5_0
L5_0_set_7 = LBB5_7-LJTI5_0
L5_0_set_8 = LBB5_8-LJTI5_0
LJTI5_0:
	.long	L5_0_set_3
	.long	L5_0_set_4
	.long	L5_0_set_5
	.long	L5_0_set_6
	.long	L5_0_set_7
	.long	L5_0_set_8
	.long	L5_0_set_4
	.long	L5_0_set_6
	.long	L5_0_set_7
	.long	L5_0_set_8
	.end_data_region
                                        ## -- End function
	.private_extern	_jsimd_rgb_gray_convert ## -- Begin function jsimd_rgb_gray_convert
	.globl	_jsimd_rgb_gray_convert
	.p2align	4
_jsimd_rgb_gray_convert:                ## @jsimd_rgb_gray_convert
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB6_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB6_2:                                 ## %if.end
	movq	-8(%rbp), %rax
	movl	60(%rax), %eax
	addl	$-6, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	subl	$9, %eax
	ja	LBB6_9
## %bb.14:                              ## %if.end
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI6_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB6_3:                                 ## %sw.bb
	movq	_jsimd_extrgb_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extrgb_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_4:                                 ## %sw.bb1
	movq	_jsimd_extrgbx_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extrgbx_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_5:                                 ## %sw.bb2
	movq	_jsimd_extbgr_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extbgr_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_6:                                 ## %sw.bb3
	movq	_jsimd_extbgrx_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extbgrx_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_7:                                 ## %sw.bb4
	movq	_jsimd_extxbgr_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extxbgr_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_8:                                 ## %sw.bb5
	movq	_jsimd_extxrgb_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_extxrgb_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB6_10
LBB6_9:                                 ## %sw.default
	movq	_jsimd_rgb_gray_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_rgb_gray_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
LBB6_10:                                ## %sw.epilog
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB6_12
## %bb.11:                              ## %if.then6
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
	jmp	LBB6_13
LBB6_12:                                ## %if.else
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	48(%rcx), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movl	-32(%rbp), %r8d
	callq	*%rax
LBB6_13:                                ## %if.end8
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L6_0_set_3 = LBB6_3-LJTI6_0
L6_0_set_4 = LBB6_4-LJTI6_0
L6_0_set_5 = LBB6_5-LJTI6_0
L6_0_set_6 = LBB6_6-LJTI6_0
L6_0_set_7 = LBB6_7-LJTI6_0
L6_0_set_8 = LBB6_8-LJTI6_0
LJTI6_0:
	.long	L6_0_set_3
	.long	L6_0_set_4
	.long	L6_0_set_5
	.long	L6_0_set_6
	.long	L6_0_set_7
	.long	L6_0_set_8
	.long	L6_0_set_4
	.long	L6_0_set_6
	.long	L6_0_set_7
	.long	L6_0_set_8
	.end_data_region
                                        ## -- End function
	.private_extern	_jsimd_ycc_rgb_convert  ## -- Begin function jsimd_ycc_rgb_convert
	.globl	_jsimd_ycc_rgb_convert
	.p2align	4
_jsimd_ycc_rgb_convert:                 ## @jsimd_ycc_rgb_convert
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB7_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB7_2:                                 ## %if.end
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	addl	$-6, %eax
	movl	%eax, %ecx
	movq	%rcx, -64(%rbp)                 ## 8-byte Spill
	subl	$9, %eax
	ja	LBB7_9
## %bb.14:                              ## %if.end
	movq	-64(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI7_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB7_3:                                 ## %sw.bb
	movq	_jsimd_ycc_extrgb_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extrgb_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_4:                                 ## %sw.bb1
	movq	_jsimd_ycc_extrgbx_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extrgbx_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_5:                                 ## %sw.bb2
	movq	_jsimd_ycc_extbgr_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extbgr_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_6:                                 ## %sw.bb3
	movq	_jsimd_ycc_extbgrx_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extbgrx_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_7:                                 ## %sw.bb4
	movq	_jsimd_ycc_extxbgr_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extxbgr_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_8:                                 ## %sw.bb5
	movq	_jsimd_ycc_extxrgb_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_extxrgb_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
	jmp	LBB7_10
LBB7_9:                                 ## %sw.default
	movq	_jsimd_ycc_rgb_convert_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	_jsimd_ycc_rgb_convert_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -56(%rbp)
LBB7_10:                                ## %sw.epilog
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB7_12
## %bb.11:                              ## %if.then6
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	callq	*%rax
	jmp	LBB7_13
LBB7_12:                                ## %if.else
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	movl	-36(%rbp), %r8d
	callq	*%rax
LBB7_13:                                ## %if.end8
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L7_0_set_3 = LBB7_3-LJTI7_0
L7_0_set_4 = LBB7_4-LJTI7_0
L7_0_set_5 = LBB7_5-LJTI7_0
L7_0_set_6 = LBB7_6-LJTI7_0
L7_0_set_7 = LBB7_7-LJTI7_0
L7_0_set_8 = LBB7_8-LJTI7_0
LJTI7_0:
	.long	L7_0_set_3
	.long	L7_0_set_4
	.long	L7_0_set_5
	.long	L7_0_set_6
	.long	L7_0_set_7
	.long	L7_0_set_8
	.long	L7_0_set_4
	.long	L7_0_set_6
	.long	L7_0_set_7
	.long	L7_0_set_8
	.end_data_region
                                        ## -- End function
	.private_extern	_jsimd_ycc_rgb565_convert ## -- Begin function jsimd_ycc_rgb565_convert
	.globl	_jsimd_ycc_rgb565_convert
	.p2align	4
_jsimd_ycc_rgb565_convert:              ## @jsimd_ycc_rgb565_convert
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v2_downsample ## -- Begin function jsimd_can_h2v2_downsample
	.globl	_jsimd_can_h2v2_downsample
	.p2align	4
_jsimd_can_h2v2_downsample:             ## @jsimd_can_h2v2_downsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB9_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB9_5
LBB9_2:                                 ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB9_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB9_5
LBB9_4:                                 ## %if.end4
	movl	$0, -4(%rbp)
LBB9_5:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v1_downsample ## -- Begin function jsimd_can_h2v1_downsample
	.globl	_jsimd_can_h2v1_downsample
	.p2align	4
_jsimd_can_h2v1_downsample:             ## @jsimd_can_h2v1_downsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB10_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB10_5
LBB10_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB10_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB10_5
LBB10_4:                                ## %if.end4
	movl	$0, -4(%rbp)
LBB10_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v2_downsample  ## -- Begin function jsimd_h2v2_downsample
	.globl	_jsimd_h2v2_downsample
	.p2align	4
_jsimd_h2v2_downsample:                 ## @jsimd_h2v2_downsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB11_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB11_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB11_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movl	316(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	_jsimd_h2v2_downsample_avx2
	jmp	LBB11_5
LBB11_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movl	316(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	_jsimd_h2v2_downsample_sse2
LBB11_5:                                ## %if.end6
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v1_downsample  ## -- Begin function jsimd_h2v1_downsample
	.globl	_jsimd_h2v1_downsample
	.p2align	4
_jsimd_h2v1_downsample:                 ## @jsimd_h2v1_downsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB12_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB12_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB12_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movl	316(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	_jsimd_h2v1_downsample_avx2
	jmp	LBB12_5
LBB12_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	48(%rax), %edi
	movq	-8(%rbp), %rax
	movl	316(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-24(%rbp), %r8
	movq	-32(%rbp), %r9
	callq	_jsimd_h2v1_downsample_sse2
LBB12_5:                                ## %if.end6
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v2_upsample ## -- Begin function jsimd_can_h2v2_upsample
	.globl	_jsimd_can_h2v2_upsample
	.p2align	4
_jsimd_can_h2v2_upsample:               ## @jsimd_can_h2v2_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB13_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB13_5
LBB13_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB13_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB13_5
LBB13_4:                                ## %if.end4
	movl	$0, -4(%rbp)
LBB13_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v1_upsample ## -- Begin function jsimd_can_h2v1_upsample
	.globl	_jsimd_can_h2v1_upsample
	.p2align	4
_jsimd_can_h2v1_upsample:               ## @jsimd_can_h2v1_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB14_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB14_5
LBB14_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB14_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB14_5
LBB14_4:                                ## %if.end4
	movl	$0, -4(%rbp)
LBB14_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v2_upsample    ## -- Begin function jsimd_h2v2_upsample
	.globl	_jsimd_h2v2_upsample
	.p2align	4
_jsimd_h2v2_upsample:                   ## @jsimd_h2v2_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB15_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB15_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB15_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v2_upsample_avx2
	jmp	LBB15_5
LBB15_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v2_upsample_sse2
LBB15_5:                                ## %if.end4
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v1_upsample    ## -- Begin function jsimd_h2v1_upsample
	.globl	_jsimd_h2v1_upsample
	.p2align	4
_jsimd_h2v1_upsample:                   ## @jsimd_h2v1_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB16_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB16_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB16_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v1_upsample_avx2
	jmp	LBB16_5
LBB16_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-8(%rbp), %rax
	movl	136(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v1_upsample_sse2
LBB16_5:                                ## %if.end4
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v2_fancy_upsample ## -- Begin function jsimd_can_h2v2_fancy_upsample
	.globl	_jsimd_can_h2v2_fancy_upsample
	.p2align	4
_jsimd_can_h2v2_fancy_upsample:         ## @jsimd_can_h2v2_fancy_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB17_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_fancy_upsample_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB17_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB17_7
LBB17_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB17_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_fancy_upsample_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB17_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB17_7
LBB17_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB17_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v1_fancy_upsample ## -- Begin function jsimd_can_h2v1_fancy_upsample
	.globl	_jsimd_can_h2v1_fancy_upsample
	.p2align	4
_jsimd_can_h2v1_fancy_upsample:         ## @jsimd_can_h2v1_fancy_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB18_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_fancy_upsample_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB18_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB18_7
LBB18_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB18_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_fancy_upsample_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB18_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB18_7
LBB18_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB18_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v2_fancy_upsample ## -- Begin function jsimd_h2v2_fancy_upsample
	.globl	_jsimd_h2v2_fancy_upsample
	.p2align	4
_jsimd_h2v2_fancy_upsample:             ## @jsimd_h2v2_fancy_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB19_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB19_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB19_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v2_fancy_upsample_avx2
	jmp	LBB19_5
LBB19_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v2_fancy_upsample_sse2
LBB19_5:                                ## %if.end4
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v1_fancy_upsample ## -- Begin function jsimd_h2v1_fancy_upsample
	.globl	_jsimd_h2v1_fancy_upsample
	.p2align	4
_jsimd_h2v1_fancy_upsample:             ## @jsimd_h2v1_fancy_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB20_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB20_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB20_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v1_fancy_upsample_avx2
	jmp	LBB20_5
LBB20_4:                                ## %if.else
	movq	-8(%rbp), %rax
	movl	412(%rax), %edi
	movq	-16(%rbp), %rax
	movl	40(%rax), %esi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	_jsimd_h2v1_fancy_upsample_sse2
LBB20_5:                                ## %if.end4
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v2_merged_upsample ## -- Begin function jsimd_can_h2v2_merged_upsample
	.globl	_jsimd_can_h2v2_merged_upsample
	.p2align	4
_jsimd_can_h2v2_merged_upsample:        ## @jsimd_can_h2v2_merged_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB21_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_merged_upsample_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB21_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB21_7
LBB21_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB21_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_merged_upsample_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB21_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB21_7
LBB21_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB21_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_h2v1_merged_upsample ## -- Begin function jsimd_can_h2v1_merged_upsample
	.globl	_jsimd_can_h2v1_merged_upsample
	.p2align	4
_jsimd_can_h2v1_merged_upsample:        ## @jsimd_can_h2v1_merged_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB22_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_merged_upsample_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB22_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB22_7
LBB22_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB22_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_merged_upsample_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB22_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB22_7
LBB22_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB22_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_h2v2_merged_upsample ## -- Begin function jsimd_h2v2_merged_upsample
	.globl	_jsimd_h2v2_merged_upsample
	.p2align	4
_jsimd_h2v2_merged_upsample:            ## @jsimd_h2v2_merged_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB23_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB23_2:                                ## %if.end
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	addl	$-6, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	subl	$9, %eax
	ja	LBB23_9
## %bb.14:                              ## %if.end
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI23_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB23_3:                                ## %sw.bb
	movq	_jsimd_h2v2_extrgb_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extrgb_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_4:                                ## %sw.bb1
	movq	_jsimd_h2v2_extrgbx_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extrgbx_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_5:                                ## %sw.bb2
	movq	_jsimd_h2v2_extbgr_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extbgr_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_6:                                ## %sw.bb3
	movq	_jsimd_h2v2_extbgrx_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extbgrx_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_7:                                ## %sw.bb4
	movq	_jsimd_h2v2_extxbgr_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extxbgr_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_8:                                ## %sw.bb5
	movq	_jsimd_h2v2_extxrgb_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_extxrgb_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB23_10
LBB23_9:                                ## %sw.default
	movq	_jsimd_h2v2_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v2_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
LBB23_10:                               ## %sw.epilog
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB23_12
## %bb.11:                              ## %if.then6
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	jmp	LBB23_13
LBB23_12:                               ## %if.else
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
LBB23_13:                               ## %if.end8
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L23_0_set_3 = LBB23_3-LJTI23_0
L23_0_set_4 = LBB23_4-LJTI23_0
L23_0_set_5 = LBB23_5-LJTI23_0
L23_0_set_6 = LBB23_6-LJTI23_0
L23_0_set_7 = LBB23_7-LJTI23_0
L23_0_set_8 = LBB23_8-LJTI23_0
LJTI23_0:
	.long	L23_0_set_3
	.long	L23_0_set_4
	.long	L23_0_set_5
	.long	L23_0_set_6
	.long	L23_0_set_7
	.long	L23_0_set_8
	.long	L23_0_set_4
	.long	L23_0_set_6
	.long	L23_0_set_7
	.long	L23_0_set_8
	.end_data_region
                                        ## -- End function
	.private_extern	_jsimd_h2v1_merged_upsample ## -- Begin function jsimd_h2v1_merged_upsample
	.globl	_jsimd_h2v1_merged_upsample
	.p2align	4
_jsimd_h2v1_merged_upsample:            ## @jsimd_h2v1_merged_upsample
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB24_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB24_2:                                ## %if.end
	movq	-8(%rbp), %rax
	movl	64(%rax), %eax
	addl	$-6, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	subl	$9, %eax
	ja	LBB24_9
## %bb.14:                              ## %if.end
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI24_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB24_3:                                ## %sw.bb
	movq	_jsimd_h2v1_extrgb_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extrgb_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_4:                                ## %sw.bb1
	movq	_jsimd_h2v1_extrgbx_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extrgbx_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_5:                                ## %sw.bb2
	movq	_jsimd_h2v1_extbgr_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extbgr_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_6:                                ## %sw.bb3
	movq	_jsimd_h2v1_extbgrx_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extbgrx_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_7:                                ## %sw.bb4
	movq	_jsimd_h2v1_extxbgr_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extxbgr_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_8:                                ## %sw.bb5
	movq	_jsimd_h2v1_extxrgb_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_extxrgb_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB24_10
LBB24_9:                                ## %sw.default
	movq	_jsimd_h2v1_merged_upsample_avx2@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	_jsimd_h2v1_merged_upsample_sse2@GOTPCREL(%rip), %rax
	movq	%rax, -48(%rbp)
LBB24_10:                               ## %sw.epilog
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB24_12
## %bb.11:                              ## %if.then6
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
	jmp	LBB24_13
LBB24_12:                               ## %if.else
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	136(%rcx), %edi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rcx
	callq	*%rax
LBB24_13:                               ## %if.end8
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L24_0_set_3 = LBB24_3-LJTI24_0
L24_0_set_4 = LBB24_4-LJTI24_0
L24_0_set_5 = LBB24_5-LJTI24_0
L24_0_set_6 = LBB24_6-LJTI24_0
L24_0_set_7 = LBB24_7-LJTI24_0
L24_0_set_8 = LBB24_8-LJTI24_0
LJTI24_0:
	.long	L24_0_set_3
	.long	L24_0_set_4
	.long	L24_0_set_5
	.long	L24_0_set_6
	.long	L24_0_set_7
	.long	L24_0_set_8
	.long	L24_0_set_4
	.long	L24_0_set_6
	.long	L24_0_set_7
	.long	L24_0_set_8
	.end_data_region
                                        ## -- End function
	.private_extern	_jsimd_can_convsamp     ## -- Begin function jsimd_can_convsamp
	.globl	_jsimd_can_convsamp
	.p2align	4
_jsimd_can_convsamp:                    ## @jsimd_can_convsamp
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB25_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB25_5
LBB25_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB25_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB25_5
LBB25_4:                                ## %if.end4
	movl	$0, -4(%rbp)
LBB25_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_convsamp_float ## -- Begin function jsimd_can_convsamp_float
	.globl	_jsimd_can_convsamp_float
	.p2align	4
_jsimd_can_convsamp_float:              ## @jsimd_can_convsamp_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB26_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB26_3
LBB26_2:                                ## %if.end
	movl	$0, -4(%rbp)
LBB26_3:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_convsamp         ## -- Begin function jsimd_convsamp
	.globl	_jsimd_convsamp
	.p2align	4
_jsimd_convsamp:                        ## @jsimd_convsamp
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB27_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB27_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB27_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_jsimd_convsamp_avx2
	jmp	LBB27_5
LBB27_4:                                ## %if.else
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_jsimd_convsamp_sse2
LBB27_5:                                ## %if.end2
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_convsamp_float   ## -- Begin function jsimd_convsamp_float
	.globl	_jsimd_convsamp_float
	.p2align	4
_jsimd_convsamp_float:                  ## @jsimd_convsamp_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	_jsimd_convsamp_float_sse2
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_fdct_islow   ## -- Begin function jsimd_can_fdct_islow
	.globl	_jsimd_can_fdct_islow
	.p2align	4
_jsimd_can_fdct_islow:                  ## @jsimd_can_fdct_islow
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB29_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_fdct_islow_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB29_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB29_7
LBB29_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB29_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_fdct_islow_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB29_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB29_7
LBB29_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB29_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_fdct_ifast   ## -- Begin function jsimd_can_fdct_ifast
	.globl	_jsimd_can_fdct_ifast
	.p2align	4
_jsimd_can_fdct_ifast:                  ## @jsimd_can_fdct_ifast
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB30_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_fdct_ifast_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB30_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB30_4
LBB30_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB30_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_fdct_float   ## -- Begin function jsimd_can_fdct_float
	.globl	_jsimd_can_fdct_float
	.p2align	4
_jsimd_can_fdct_float:                  ## @jsimd_can_fdct_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	LBB31_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_fdct_float_sse@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB31_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB31_4
LBB31_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB31_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_fdct_islow       ## -- Begin function jsimd_fdct_islow
	.globl	_jsimd_fdct_islow
	.p2align	4
_jsimd_fdct_islow:                      ## @jsimd_fdct_islow
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB32_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB32_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB32_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rdi
	callq	_jsimd_fdct_islow_avx2
	jmp	LBB32_5
LBB32_4:                                ## %if.else
	movq	-8(%rbp), %rdi
	callq	_jsimd_fdct_islow_sse2
LBB32_5:                                ## %if.end2
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_fdct_ifast       ## -- Begin function jsimd_fdct_ifast
	.globl	_jsimd_fdct_ifast
	.p2align	4
_jsimd_fdct_ifast:                      ## @jsimd_fdct_ifast
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_jsimd_fdct_ifast_sse2
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_fdct_float       ## -- Begin function jsimd_fdct_float
	.globl	_jsimd_fdct_float
	.p2align	4
_jsimd_fdct_float:                      ## @jsimd_fdct_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	_jsimd_fdct_float_sse
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_quantize     ## -- Begin function jsimd_can_quantize
	.globl	_jsimd_can_quantize
	.p2align	4
_jsimd_can_quantize:                    ## @jsimd_can_quantize
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB35_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB35_5
LBB35_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB35_4
## %bb.3:                               ## %if.then3
	movl	$1, -4(%rbp)
	jmp	LBB35_5
LBB35_4:                                ## %if.end4
	movl	$0, -4(%rbp)
LBB35_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_quantize_float ## -- Begin function jsimd_can_quantize_float
	.globl	_jsimd_can_quantize_float
	.p2align	4
_jsimd_can_quantize_float:              ## @jsimd_can_quantize_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB36_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB36_3
LBB36_2:                                ## %if.end
	movl	$0, -4(%rbp)
LBB36_3:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_quantize         ## -- Begin function jsimd_quantize
	.globl	_jsimd_quantize
	.p2align	4
_jsimd_quantize:                        ## @jsimd_quantize
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB37_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB37_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB37_4
## %bb.3:                               ## %if.then1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_jsimd_quantize_avx2
	jmp	LBB37_5
LBB37_4:                                ## %if.else
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_jsimd_quantize_sse2
LBB37_5:                                ## %if.end2
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_quantize_float   ## -- Begin function jsimd_quantize_float
	.globl	_jsimd_quantize_float
	.p2align	4
_jsimd_quantize_float:                  ## @jsimd_quantize_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	_jsimd_quantize_float_sse2
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_idct_2x2     ## -- Begin function jsimd_can_idct_2x2
	.globl	_jsimd_can_idct_2x2
	.p2align	4
_jsimd_can_idct_2x2:                    ## @jsimd_can_idct_2x2
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB39_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_idct_red_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB39_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB39_4
LBB39_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB39_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_idct_4x4     ## -- Begin function jsimd_can_idct_4x4
	.globl	_jsimd_can_idct_4x4
	.p2align	4
_jsimd_can_idct_4x4:                    ## @jsimd_can_idct_4x4
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB40_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_idct_red_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB40_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB40_4
LBB40_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB40_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_idct_2x2         ## -- Begin function jsimd_idct_2x2
	.globl	_jsimd_idct_2x2
	.p2align	4
_jsimd_idct_2x2:                        ## @jsimd_idct_2x2
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_2x2_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_idct_4x4         ## -- Begin function jsimd_idct_4x4
	.globl	_jsimd_idct_4x4
	.p2align	4
_jsimd_idct_4x4:                        ## @jsimd_idct_4x4
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_4x4_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_idct_islow   ## -- Begin function jsimd_can_idct_islow
	.globl	_jsimd_can_idct_islow
	.p2align	4
_jsimd_can_idct_islow:                  ## @jsimd_can_idct_islow
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB43_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_idct_islow_avx2@GOTPCREL(%rip), %rax
	andq	$31, %rax
	cmpq	$0, %rax
	jne	LBB43_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB43_7
LBB43_3:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB43_6
## %bb.4:                               ## %land.lhs.true4
	movq	_jconst_idct_islow_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB43_6
## %bb.5:                               ## %if.then7
	movl	$1, -4(%rbp)
	jmp	LBB43_7
LBB43_6:                                ## %if.end8
	movl	$0, -4(%rbp)
LBB43_7:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_idct_ifast   ## -- Begin function jsimd_can_idct_ifast
	.globl	_jsimd_can_idct_ifast
	.p2align	4
_jsimd_can_idct_ifast:                  ## @jsimd_can_idct_ifast
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB44_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_idct_ifast_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB44_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB44_4
LBB44_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB44_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_idct_float   ## -- Begin function jsimd_can_idct_float
	.globl	_jsimd_can_idct_float
	.p2align	4
_jsimd_can_idct_float:                  ## @jsimd_can_idct_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB45_3
## %bb.1:                               ## %land.lhs.true
	movq	_jconst_idct_float_sse2@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB45_3
## %bb.2:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB45_4
LBB45_3:                                ## %if.end
	movl	$0, -4(%rbp)
LBB45_4:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_idct_islow       ## -- Begin function jsimd_idct_islow
	.globl	_jsimd_idct_islow
	.p2align	4
_jsimd_idct_islow:                      ## @jsimd_idct_islow
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$-1, (%rax)
	jne	LBB46_2
## %bb.1:                               ## %if.then
	callq	_init_simd
LBB46_2:                                ## %if.end
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB46_4
## %bb.3:                               ## %if.then1
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_islow_avx2
	jmp	LBB46_5
LBB46_4:                                ## %if.else
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_islow_sse2
LBB46_5:                                ## %if.end3
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_idct_ifast       ## -- Begin function jsimd_idct_ifast
	.globl	_jsimd_idct_ifast
	.p2align	4
_jsimd_idct_ifast:                      ## @jsimd_idct_ifast
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_ifast_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_idct_float       ## -- Begin function jsimd_idct_float
	.globl	_jsimd_idct_float
	.p2align	4
_jsimd_idct_float:                      ## @jsimd_idct_float
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movq	-16(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	callq	_jsimd_idct_float_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_huff_encode_one_block ## -- Begin function jsimd_can_huff_encode_one_block
	.globl	_jsimd_can_huff_encode_one_block
	.p2align	4
_jsimd_can_huff_encode_one_block:       ## @jsimd_can_huff_encode_one_block
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB49_4
## %bb.1:                               ## %land.lhs.true
	movq	_simd_huffman@TLVP(%rip), %rdi
	callq	*(%rdi)
	cmpl	$0, (%rax)
	je	LBB49_4
## %bb.2:                               ## %land.lhs.true2
	movq	_jconst_huff_encode_one_block@GOTPCREL(%rip), %rax
	andq	$15, %rax
	cmpq	$0, %rax
	jne	LBB49_4
## %bb.3:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB49_5
LBB49_4:                                ## %if.end
	movl	$0, -4(%rbp)
LBB49_5:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_huff_encode_one_block ## -- Begin function jsimd_huff_encode_one_block
	.globl	_jsimd_huff_encode_one_block
	.p2align	4
_jsimd_huff_encode_one_block:           ## @jsimd_huff_encode_one_block
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	%r9, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	movq	-48(%rbp), %r9
	callq	_jsimd_huff_encode_one_block_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_encode_mcu_AC_first_prepare ## -- Begin function jsimd_can_encode_mcu_AC_first_prepare
	.globl	_jsimd_can_encode_mcu_AC_first_prepare
	.p2align	4
_jsimd_can_encode_mcu_AC_first_prepare: ## @jsimd_can_encode_mcu_AC_first_prepare
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB51_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB51_3
LBB51_2:                                ## %if.end
	movl	$0, -4(%rbp)
LBB51_3:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_encode_mcu_AC_first_prepare ## -- Begin function jsimd_encode_mcu_AC_first_prepare
	.globl	_jsimd_encode_mcu_AC_first_prepare
	.p2align	4
_jsimd_encode_mcu_AC_first_prepare:     ## @jsimd_encode_mcu_AC_first_prepare
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	_jsimd_encode_mcu_AC_first_prepare_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_can_encode_mcu_AC_refine_prepare ## -- Begin function jsimd_can_encode_mcu_AC_refine_prepare
	.globl	_jsimd_can_encode_mcu_AC_refine_prepare
	.p2align	4
_jsimd_can_encode_mcu_AC_refine_prepare: ## @jsimd_can_encode_mcu_AC_refine_prepare
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	_init_simd
	movq	_simd_support@TLVP(%rip), %rdi
	callq	*(%rdi)
	movl	(%rax), %eax
	andl	$8, %eax
	cmpl	$0, %eax
	je	LBB53_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	jmp	LBB53_3
LBB53_2:                                ## %if.end
	movl	$0, -4(%rbp)
LBB53_3:                                ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_jsimd_encode_mcu_AC_refine_prepare ## -- Begin function jsimd_encode_mcu_AC_refine_prepare
	.globl	_jsimd_encode_mcu_AC_refine_prepare
	.p2align	4
_jsimd_encode_mcu_AC_refine_prepare:    ## @jsimd_encode_mcu_AC_refine_prepare
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %r8
	movq	-40(%rbp), %r9
	callq	_jsimd_encode_mcu_AC_refine_prepare_sse2
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__DATA,__thread_data,thread_local_regular
	.p2align	2, 0x0                          ## @simd_support
_simd_support$tlv$init:
	.long	4294967295                      ## 0xffffffff

	.section	__DATA,__thread_vars,thread_local_variables
_simd_support:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	_simd_support$tlv$init

	.section	__DATA,__thread_data,thread_local_regular
	.p2align	2, 0x0                          ## @simd_huffman
_simd_huffman$tlv$init:
	.long	1                               ## 0x1

	.section	__DATA,__thread_vars,thread_local_variables
_simd_huffman:
	.quad	__tlv_bootstrap
	.quad	0
	.quad	_simd_huffman$tlv$init

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"JSIMD_FORCESSE2"

L_.str.1:                               ## @.str.1
	.asciz	"1"

L_.str.2:                               ## @.str.2
	.asciz	"JSIMD_FORCEAVX2"

L_.str.3:                               ## @.str.3
	.asciz	"JSIMD_FORCENONE"

L_.str.4:                               ## @.str.4
	.asciz	"JSIMD_NOHUFFENC"

.subsections_via_symbols
