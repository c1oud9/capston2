	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_srtp_get_version_string ## -- Begin function srtp_get_version_string
	.globl	_srtp_get_version_string
	.p2align	4
_srtp_get_version_string:               ## @srtp_get_version_string
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	L_.str.1(%rip), %rax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_version       ## -- Begin function srtp_get_version
	.globl	_srtp_get_version
	.p2align	4
_srtp_get_version:                      ## @srtp_get_version
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$-1431655766, -8(%rbp)          ## imm = 0xAAAAAAAA
	movl	$0, -8(%rbp)
	movl	$-1431655766, -12(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -12(%rbp)
	movl	$-1431655766, -16(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -16(%rbp)
	movl	$-1431655766, -20(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -20(%rbp)
	movl	$-1431655766, -24(%rbp)         ## imm = 0xAAAAAAAA
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-8(%rbp), %rdx
	leaq	-12(%rbp), %rcx
	leaq	-16(%rbp), %r8
	movb	$0, %al
	callq	___isoc99_sscanf
	movl	%eax, -24(%rbp)
	cmpl	$3, -24(%rbp)
	je	LBB1_2
## %bb.1:                               ## %if.then
	movl	$0, -4(%rbp)
	movl	$1, -28(%rbp)
	jmp	LBB1_3
LBB1_2:                                 ## %if.end
	movl	-8(%rbp), %eax
	andl	$255, %eax
	shll	$24, %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-12(%rbp), %eax
	andl	$255, %eax
	shll	$16, %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	andl	$255, %eax
	orl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -28(%rbp)
LBB1_3:                                 ## %cleanup
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_dealloc    ## -- Begin function srtp_stream_dealloc
	.globl	_srtp_stream_dealloc
	.p2align	4
_srtp_stream_dealloc:                   ## @srtp_stream_dealloc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movq	$0, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB2_58
## %bb.1:                               ## %if.then
	movl	$0, -32(%rbp)
LBB2_2:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB2_57
## %bb.3:                               ## %for.body
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB2_6
## %bb.4:                               ## %land.lhs.true
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	movq	-24(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jne	LBB2_6
## %bb.5:                               ## %if.then7
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	-32(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	jmp	LBB2_7
LBB2_6:                                 ## %if.else
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	$0, -48(%rbp)
LBB2_7:                                 ## %if.end
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_10
## %bb.8:                               ## %land.lhs.true12
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	LBB2_10
## %bb.9:                               ## %if.then15
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_15
LBB2_10:                                ## %if.else16
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB2_14
## %bb.11:                              ## %if.then19
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	_srtp_cipher_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_13
## %bb.12:                              ## %if.then22
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_13:                                ## %if.end23
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_14
LBB2_14:                                ## %if.end24
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_15
LBB2_15:                                ## %if.end25
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_18
## %bb.16:                              ## %land.lhs.true27
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	LBB2_18
## %bb.17:                              ## %if.then30
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_23
LBB2_18:                                ## %if.else31
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB2_22
## %bb.19:                              ## %if.then34
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rdi
	callq	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_21
## %bb.20:                              ## %if.then39
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_21:                                ## %if.end40
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_22
LBB2_22:                                ## %if.end41
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_23
LBB2_23:                                ## %if.end42
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_26
## %bb.24:                              ## %land.lhs.true44
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB2_26
## %bb.25:                              ## %if.then47
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_31
LBB2_26:                                ## %if.else48
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB2_30
## %bb.27:                              ## %if.then51
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_srtp_cipher_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_29
## %bb.28:                              ## %if.then55
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_29:                                ## %if.end56
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_30
LBB2_30:                                ## %if.end57
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_31
LBB2_31:                                ## %if.end58
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_34
## %bb.32:                              ## %land.lhs.true60
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	LBB2_34
## %bb.33:                              ## %if.then63
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_39
LBB2_34:                                ## %if.else64
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	LBB2_38
## %bb.35:                              ## %if.then67
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_srtp_cipher_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_37
## %bb.36:                              ## %if.then71
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_37:                                ## %if.end72
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_38
LBB2_38:                                ## %if.end73
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_39
LBB2_39:                                ## %if.end74
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_42
## %bb.40:                              ## %land.lhs.true76
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	32(%rcx), %rax
	jne	LBB2_42
## %bb.41:                              ## %if.then79
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_47
LBB2_42:                                ## %if.else80
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	LBB2_46
## %bb.43:                              ## %if.then83
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	32(%rcx), %rdi
	callq	*%rax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_45
## %bb.44:                              ## %if.then90
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_45:                                ## %if.end91
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_46
LBB2_46:                                ## %if.end92
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_47
LBB2_47:                                ## %if.end93
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rdi
	addq	$40, %rdi
	movl	$12, %esi
	callq	_octet_string_set_to_zero
	movq	-40(%rbp), %rdi
	addq	$52, %rdi
	movl	$12, %esi
	callq	_octet_string_set_to_zero
	movq	-40(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	LBB2_49
## %bb.48:                              ## %if.then96
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %esi
	callq	_octet_string_set_to_zero
	movq	-40(%rbp), %rax
	movq	64(%rax), %rdi
	callq	_srtp_crypto_free
	movq	-40(%rbp), %rax
	movq	$0, 64(%rax)
LBB2_49:                                ## %if.end100
                                        ##   in Loop: Header=BB2_2 Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB2_52
## %bb.50:                              ## %land.lhs.true102
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	LBB2_52
## %bb.51:                              ## %if.then106
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_55
LBB2_52:                                ## %if.else107
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 80(%rax)
	je	LBB2_54
## %bb.53:                              ## %if.then110
                                        ##   in Loop: Header=BB2_2 Depth=1
	movq	-40(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_srtp_crypto_free
LBB2_54:                                ## %if.end112
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_55
LBB2_55:                                ## %if.end113
                                        ##   in Loop: Header=BB2_2 Depth=1
	jmp	LBB2_56
LBB2_56:                                ## %for.inc
                                        ##   in Loop: Header=BB2_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB2_2
LBB2_57:                                ## %for.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_srtp_crypto_free
LBB2_58:                                ## %if.end115
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB2_60
## %bb.59:                              ## %if.then118
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB2_67
LBB2_60:                                ## %if.end119
	cmpq	$0, -24(%rbp)
	je	LBB2_63
## %bb.61:                              ## %land.lhs.true121
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	104(%rcx), %rax
	jne	LBB2_63
## %bb.62:                              ## %if.then125
	jmp	LBB2_66
LBB2_63:                                ## %if.else126
	movq	-16(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	LBB2_65
## %bb.64:                              ## %if.then129
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdi
	callq	_srtp_crypto_free
LBB2_65:                                ## %if.end131
	jmp	LBB2_66
LBB2_66:                                ## %if.end132
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_free
	movl	$0, -4(%rbp)
	movl	$1, -52(%rbp)
LBB2_67:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_alloc      ## -- Begin function srtp_stream_alloc
	.globl	_srtp_stream_alloc
	.p2align	4
_srtp_stream_alloc:                     ## @srtp_stream_alloc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -40(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	$0, -48(%rbp)
	movl	$128, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB3_2
## %bb.1:                               ## %if.then
	movl	$3, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_2:                                 ## %if.end
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	LBB3_4
## %bb.3:                               ## %if.then2
	movq	-32(%rbp), %rax
	movl	$1, 16(%rax)
	jmp	LBB3_5
LBB3_4:                                 ## %if.else
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 16(%rax)
LBB3_5:                                 ## %if.end5
	movq	-32(%rbp), %rax
	movl	16(%rax), %eax
                                        ## kill: def $rax killed $eax
	imulq	$88, %rax, %rdi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB3_7
## %bb.6:                               ## %if.then13
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$3, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_7:                                 ## %if.end15
	movl	$0, -40(%rbp)
LBB3_8:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB3_21
## %bb.9:                               ## %for.body
                                        ##   in Loop: Header=BB3_8 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-40(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	12(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	callq	_srtp_crypto_kernel_alloc_cipher
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_11
## %bb.10:                              ## %if.then23
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_11:                                ## %if.end25
                                        ##   in Loop: Header=BB3_8 Depth=1
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	movq	-48(%rbp), %rsi
	addq	$16, %rsi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movq	-24(%rbp), %rax
	movl	24(%rax), %ecx
	callq	_srtp_crypto_kernel_alloc_auth
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_13
## %bb.12:                              ## %if.then32
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_13:                                ## %if.end34
                                        ##   in Loop: Header=BB3_8 Depth=1
	movq	-24(%rbp), %rax
	movl	32(%rax), %edi
	movq	-48(%rbp), %rsi
	addq	$24, %rsi
	movq	-24(%rbp), %rax
	movl	36(%rax), %edx
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	callq	_srtp_crypto_kernel_alloc_cipher
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_15
## %bb.14:                              ## %if.then42
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_15:                                ## %if.end44
                                        ##   in Loop: Header=BB3_8 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %edi
	movq	-48(%rbp), %rsi
	addq	$32, %rsi
	movq	-24(%rbp), %rax
	movl	44(%rax), %edx
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	callq	_srtp_crypto_kernel_alloc_auth
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_17
## %bb.16:                              ## %if.then53
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_17:                                ## %if.end55
                                        ##   in Loop: Header=BB3_8 Depth=1
	movq	-48(%rbp), %rax
	movq	$0, 64(%rax)
	movl	$16, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 80(%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 80(%rax)
	jne	LBB3_19
## %bb.18:                              ## %if.then60
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$3, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_19:                                ## %if.end62
                                        ##   in Loop: Header=BB3_8 Depth=1
	jmp	LBB3_20
LBB3_20:                                ## %for.inc
                                        ##   in Loop: Header=BB3_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB3_8
LBB3_21:                                ## %for.end
	movq	-32(%rbp), %rdi
	addq	$96, %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	callq	_srtp_ekt_alloc
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_23
## %bb.22:                              ## %if.then66
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_46
LBB3_23:                                ## %if.end68
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	LBB3_40
## %bb.24:                              ## %land.lhs.true
	movq	-24(%rbp), %rax
	cmpl	$0, 112(%rax)
	jle	LBB3_40
## %bb.25:                              ## %if.then72
	movl	$-1431655766, -56(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -60(%rbp)         ## imm = 0xAAAAAAAA
	movq	-24(%rbp), %rax
	movslq	112(%rax), %rdi
	shlq	$2, %rdi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, 104(%rax)
	movq	-32(%rbp), %rax
	cmpq	$0, 104(%rax)
	jne	LBB3_27
## %bb.26:                              ## %if.then80
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$3, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_38
LBB3_27:                                ## %if.end82
	movq	-32(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	104(%rax), %rsi
	movslq	112(%rax), %rdx
	shlq	$2, %rdx
	callq	_memcpy
	movq	-24(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -64(%rbp)                 ## 4-byte Spill
	subl	$6, %eax
	je	LBB3_28
	jmp	LBB3_47
LBB3_47:                                ## %if.end82
	movl	-64(%rbp), %eax                 ## 4-byte Reload
	subl	$7, %eax
	je	LBB3_29
	jmp	LBB3_30
LBB3_28:                                ## %sw.bb
	movl	$1, -56(%rbp)
	movl	$30, -60(%rbp)
	jmp	LBB3_31
LBB3_29:                                ## %sw.bb92
	movl	$5, -56(%rbp)
	movl	$46, -60(%rbp)
	jmp	LBB3_31
LBB3_30:                                ## %sw.default
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, -60(%rbp)
LBB3_31:                                ## %sw.epilog
	movl	$0, -40(%rbp)
LBB3_32:                                ## %for.cond97
                                        ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB3_37
## %bb.33:                              ## %for.body101
                                        ##   in Loop: Header=BB3_32 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-40(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	-56(%rbp), %edi
	movq	-48(%rbp), %rsi
	addq	$8, %rsi
	movl	-60(%rbp), %edx
	xorl	%ecx, %ecx
	callq	_srtp_crypto_kernel_alloc_cipher
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB3_35
## %bb.34:                              ## %if.then107
	movq	-32(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB3_38
LBB3_35:                                ## %if.end109
                                        ##   in Loop: Header=BB3_32 Depth=1
	jmp	LBB3_36
LBB3_36:                                ## %for.inc110
                                        ##   in Loop: Header=BB3_32 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB3_32
LBB3_37:                                ## %for.end112
	movl	$0, -52(%rbp)
LBB3_38:                                ## %cleanup
	movl	-52(%rbp), %eax
	testl	%eax, %eax
	jne	LBB3_46
	jmp	LBB3_39
LBB3_39:                                ## %cleanup.cont
	jmp	LBB3_45
LBB3_40:                                ## %if.else114
	movl	$0, -40(%rbp)
LBB3_41:                                ## %for.cond115
                                        ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB3_44
## %bb.42:                              ## %for.body119
                                        ##   in Loop: Header=BB3_41 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	-40(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, 8(%rax)
## %bb.43:                              ## %for.inc124
                                        ##   in Loop: Header=BB3_41 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB3_41
LBB3_44:                                ## %for.end126
	movq	-32(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-32(%rbp), %rax
	movl	$0, 112(%rax)
LBB3_45:                                ## %if.end129
	movl	$0, -4(%rbp)
	movl	$1, -52(%rbp)
LBB3_46:                                ## %cleanup130
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_clone      ## -- Begin function srtp_stream_clone
	.globl	_srtp_stream_clone
	.p2align	4
_srtp_stream_clone:                     ## @srtp_stream_clone
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movl	$-1431655766, -52(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -52(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movq	$0, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movq	$0, -72(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB4_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %edi
	callq	___bswap_32
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movl	%eax, %ecx
	movl	$3, %edi
	leaq	L_.str.3(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB4_2:                                 ## %if.end
	movl	$128, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB4_4
## %bb.3:                               ## %if.then2
	movl	$3, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB4_20
LBB4_4:                                 ## %if.end3
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-48(%rbp), %rax
	movl	16(%rax), %eax
                                        ## kill: def $rax killed $eax
	imulq	$88, %rax, %rdi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB4_6
## %bb.5:                               ## %if.then11
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$3, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB4_20
LBB4_6:                                 ## %if.end13
	movl	$0, -52(%rbp)
LBB4_7:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB4_17
## %bb.8:                               ## %for.body
                                        ##   in Loop: Header=BB4_7 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-52(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-72(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	32(%rax), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-72(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-64(%rbp), %rax
	movl	%ecx, 72(%rax)
	movq	-72(%rbp), %rax
	cmpl	$0, 72(%rax)
	jne	LBB4_10
## %bb.9:                               ## %if.then30
                                        ##   in Loop: Header=BB4_7 Depth=1
	movq	-64(%rbp), %rax
	movq	$0, 64(%rax)
	jmp	LBB4_13
LBB4_10:                                ## %if.else
                                        ##   in Loop: Header=BB4_7 Depth=1
	movq	-72(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-64(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	LBB4_12
## %bb.11:                              ## %if.then38
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	$5, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB4_20
LBB4_12:                                ## %if.end40
                                        ##   in Loop: Header=BB4_7 Depth=1
	movq	-64(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-72(%rbp), %rax
	movq	64(%rax), %rsi
	movq	-64(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, %edx
	callq	_memcpy
LBB4_13:                                ## %if.end45
                                        ##   in Loop: Header=BB4_7 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	40(%rcx), %rdx
	movq	%rdx, 40(%rax)
	movl	48(%rcx), %ecx
	movl	%ecx, 48(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	52(%rcx), %rdx
	movq	%rdx, 52(%rax)
	movl	60(%rcx), %ecx
	movl	%ecx, 60(%rax)
	movq	-72(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-64(%rbp), %rsi
	addq	$80, %rsi
	callq	_srtp_key_limit_clone
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB4_15
## %bb.14:                              ## %if.then54
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB4_20
LBB4_15:                                ## %if.end56
                                        ##   in Loop: Header=BB4_7 Depth=1
	jmp	LBB4_16
LBB4_16:                                ## %for.inc
                                        ##   in Loop: Header=BB4_7 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB4_7
LBB4_17:                                ## %for.end
	movq	-48(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_get_window_size
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%rax, %rsi
	callq	_srtp_rdbx_init
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB4_19
## %bb.18:                              ## %if.then61
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB4_20
LBB4_19:                                ## %if.end63
	movq	-48(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_init
	movq	-16(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 88(%rax)
	movl	-20(%rbp), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-16(%rbp), %rax
	movl	84(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 84(%rax)
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-16(%rbp), %rax
	movl	80(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	96(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 96(%rax)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, 104(%rax)
	movq	-16(%rbp), %rax
	movl	112(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 112(%rax)
	movq	-48(%rbp), %rax
	movq	$0, 120(%rax)
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
LBB4_20:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function __bswap_32
___bswap_32:                            ## @__bswap_32
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$-16777216, %eax                ## imm = 0xFF000000
	shrl	$24, %eax
	movl	-4(%rbp), %ecx
	andl	$16711680, %ecx                 ## imm = 0xFF0000
	shrl	$8, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	andl	$65280, %ecx                    ## imm = 0xFF00
	shll	$8, %ecx
	orl	%ecx, %eax
	movl	-4(%rbp), %ecx
	andl	$255, %ecx
	shll	$24, %ecx
	orl	%ecx, %eax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_validate_policy_master_keys ## -- Begin function srtp_validate_policy_master_keys
	.globl	_srtp_validate_policy_master_keys
	.p2align	4
_srtp_validate_policy_master_keys:      ## @srtp_validate_policy_master_keys
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -24(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	jne	LBB6_14
## %bb.1:                               ## %if.then
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	ja	LBB6_3
## %bb.2:                               ## %if.then2
	movl	$0, -4(%rbp)
	movl	$1, -28(%rbp)
	jmp	LBB6_15
LBB6_3:                                 ## %if.end
	movq	-16(%rbp), %rax
	cmpq	$16, 72(%rax)
	jbe	LBB6_5
## %bb.4:                               ## %if.then5
	movl	$0, -4(%rbp)
	movl	$1, -28(%rbp)
	jmp	LBB6_15
LBB6_5:                                 ## %if.end6
	movq	$0, -24(%rbp)
LBB6_6:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	72(%rcx), %rax
	jae	LBB6_13
## %bb.7:                               ## %for.body
                                        ##   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	$0, (%rax)
	jne	LBB6_9
## %bb.8:                               ## %if.then11
	movl	$0, -4(%rbp)
	movl	$1, -28(%rbp)
	jmp	LBB6_15
LBB6_9:                                 ## %if.end12
                                        ##   in Loop: Header=BB6_6 Depth=1
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpl	$128, 16(%rax)
	jbe	LBB6_11
## %bb.10:                              ## %if.then16
	movl	$0, -4(%rbp)
	movl	$1, -28(%rbp)
	jmp	LBB6_15
LBB6_11:                                ## %if.end17
                                        ##   in Loop: Header=BB6_6 Depth=1
	jmp	LBB6_12
LBB6_12:                                ## %for.inc
                                        ##   in Loop: Header=BB6_6 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB6_6
LBB6_13:                                ## %for.end
	jmp	LBB6_14
LBB6_14:                                ## %if.end18
	movl	$1, -4(%rbp)
	movl	$1, -28(%rbp)
LBB6_15:                                ## %cleanup
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_session_keys_with_mki_index ## -- Begin function srtp_get_session_keys_with_mki_index
	.globl	_srtp_get_session_keys_with_mki_index
	.p2align	4
_srtp_get_session_keys_with_mki_index:  ## @srtp_get_session_keys_with_mki_index
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB7_4
## %bb.1:                               ## %if.then
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jb	LBB7_3
## %bb.2:                               ## %if.then1
	movq	$0, -8(%rbp)
	jmp	LBB7_5
LBB7_3:                                 ## %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-24(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	jmp	LBB7_5
LBB7_4:                                 ## %if.end2
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
LBB7_5:                                 ## %return
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_inject_mki        ## -- Begin function srtp_inject_mki
	.globl	_srtp_inject_mki
	.p2align	4
_srtp_inject_mki:                       ## @srtp_inject_mki
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1431655766, -24(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -24(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB8_4
## %bb.1:                               ## %if.then
	movq	-16(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	LBB8_3
## %bb.2:                               ## %if.then2
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rsi
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	callq	_memcpy
LBB8_3:                                 ## %if.end
	jmp	LBB8_4
LBB8_4:                                 ## %if.end3
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_init_all_master_keys ## -- Begin function srtp_stream_init_all_master_keys
	.globl	_srtp_stream_init_all_master_keys
	.p2align	4
_srtp_stream_init_all_master_keys:      ## @srtp_stream_init_all_master_keys
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$-1431655766, -40(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -40(%rbp)
	movl	$-1431655766, -44(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -44(%rbp)
	movq	l___const.srtp_stream_init_all_master_keys.single_master_key(%rip), %rax
	movq	%rax, -72(%rbp)
	movq	l___const.srtp_stream_init_all_master_keys.single_master_key+8(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	l___const.srtp_stream_init_all_master_keys.single_master_key+16(%rip), %rax
	movq	%rax, -56(%rbp)
	cmpq	$0, -24(%rbp)
	je	LBB9_2
## %bb.1:                               ## %if.then
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_stream_init_keys
	movl	%eax, -44(%rbp)
	jmp	LBB9_11
LBB9_2:                                 ## %if.else
	movl	-36(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movl	$0, -40(%rbp)
LBB9_3:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rdx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	16(%rdx), %ecx
	movb	%al, -77(%rbp)                  ## 1-byte Spill
	jae	LBB9_5
## %bb.4:                               ## %land.rhs
                                        ##   in Loop: Header=BB9_3 Depth=1
	cmpl	$16, -40(%rbp)
	setb	%al
	movb	%al, -77(%rbp)                  ## 1-byte Spill
LBB9_5:                                 ## %land.end
                                        ##   in Loop: Header=BB9_3 Depth=1
	movb	-77(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB9_6
	jmp	LBB9_10
LBB9_6:                                 ## %for.body
                                        ##   in Loop: Header=BB9_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rsi
	movl	-40(%rbp), %edx
	callq	_srtp_stream_init_keys
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	LBB9_8
## %bb.7:                               ## %if.then7
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB9_12
LBB9_8:                                 ## %if.end
                                        ##   in Loop: Header=BB9_3 Depth=1
	jmp	LBB9_9
LBB9_9:                                 ## %for.inc
                                        ##   in Loop: Header=BB9_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB9_3
LBB9_10:                                ## %for.end
	jmp	LBB9_11
LBB9_11:                                ## %if.end8
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
LBB9_12:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_init_keys  ## -- Begin function srtp_stream_init_keys
	.globl	_srtp_stream_init_keys
	.p2align	4
_srtp_stream_init_keys:                 ## @srtp_stream_init_keys
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$752, %rsp                      ## imm = 0x2F0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -544(%rbp)
	movq	%rsi, -552(%rbp)
	movl	%edx, -556(%rbp)
	movl	$-1431655766, -560(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -568(%rbp)
	leaq	-272(%rbp), %rdi
	movl	$170, %esi
	movl	$256, %edx                      ## imm = 0x100
	callq	_memset
	movl	$-1431655766, -572(%rbp)        ## imm = 0xAAAAAAAA
	movl	$30, -572(%rbp)
	movl	$-1431655766, -576(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -580(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -584(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -588(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -592(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -596(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -608(%rbp)
	movq	$0, -608(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -616(%rbp)
	movq	-552(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-544(%rbp), %rax
	movq	8(%rax), %rax
	movl	-556(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rax
	movq	80(%rax), %rdi
	movabsq	$281474976710655, %rsi          ## imm = 0xFFFFFFFFFFFF
	callq	_srtp_key_limit_set
	movq	-552(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	LBB10_4
## %bb.1:                               ## %if.then
	movq	-552(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, %rcx
	movq	-608(%rbp), %rax
	movq	%rcx, 64(%rax)
	movq	-608(%rbp), %rax
	cmpq	$0, 64(%rax)
	jne	LBB10_3
## %bb.2:                               ## %if.then8
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_3:                                ## %if.end
	movq	-608(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-552(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-552(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %edx
	callq	_memcpy
	jmp	LBB10_5
LBB10_4:                                ## %if.else
	movq	-608(%rbp), %rax
	movq	$0, 64(%rax)
LBB10_5:                                ## %if.end14
	movq	-552(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-608(%rbp), %rax
	movl	%ecx, 72(%rax)
	movq	-608(%rbp), %rax
	movq	(%rax), %rdi
	callq	_srtp_cipher_get_key_length
	movl	%eax, -576(%rbp)
	movq	-608(%rbp), %rax
	movq	24(%rax), %rdi
	callq	_srtp_cipher_get_key_length
	movl	%eax, -580(%rbp)
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rdi
	movl	-576(%rbp), %esi
	callq	_base_key_length
	movl	%eax, -584(%rbp)
	movl	-576(%rbp), %eax
	subl	-584(%rbp), %eax
	movl	%eax, -588(%rbp)
	movl	-576(%rbp), %eax
	cmpl	-572(%rbp), %eax
	jle	LBB10_7
## %bb.6:                               ## %if.then23
	movl	$46, -572(%rbp)
LBB10_7:                                ## %if.end24
	movl	-580(%rbp), %eax
	cmpl	-572(%rbp), %eax
	jle	LBB10_9
## %bb.8:                               ## %if.then27
	movl	$46, -572(%rbp)
LBB10_9:                                ## %if.end28
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_11
## %bb.10:                              ## %if.then29
	movq	_mod_srtp+8(%rip), %rdx
	movl	-576(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.4(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_11:                               ## %if.end30
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_13
## %bb.12:                              ## %if.then32
	movq	_mod_srtp+8(%rip), %rdx
	movl	-580(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.5(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_13:                               ## %if.end33
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_15
## %bb.14:                              ## %if.then35
	movq	_mod_srtp+8(%rip), %rdx
	movl	-584(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.6(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_15:                               ## %if.end36
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_17
## %bb.16:                              ## %if.then38
	movq	_mod_srtp+8(%rip), %rdx
	movl	-572(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.7(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_17:                               ## %if.end39
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_19
## %bb.18:                              ## %if.then41
	movq	_mod_srtp+8(%rip), %rdx
	movl	-588(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.8(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_19:                               ## %if.end42
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      ## imm = 0x100
	callq	_memset
	leaq	-272(%rbp), %rdi
	movq	-616(%rbp), %rsi
	movl	-584(%rbp), %eax
	addl	-588(%rbp), %eax
	movslq	%eax, %rdx
	callq	_memcpy
	leaq	-272(%rbp), %rsi
	movl	-572(%rbp), %edx
	leaq	-568(%rbp), %rdi
	callq	_srtp_kdf_init
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_21
## %bb.20:                              ## %if.then48
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_21:                               ## %if.end50
	leaq	-272(%rbp), %rdx
	movl	-584(%rbp), %ecx
	leaq	-568(%rbp), %rdi
	xorl	%esi, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_23
## %bb.22:                              ## %if.then54
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_23:                               ## %if.end56
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_25
## %bb.24:                              ## %if.then58
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -656(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movl	-584(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-656(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.9(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_25:                               ## %if.end61
	cmpl	$0, -588(%rbp)
	jle	LBB10_31
## %bb.26:                              ## %if.then64
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_28
## %bb.27:                              ## %if.then66
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.10(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_28:                               ## %if.end67
	leaq	-272(%rbp), %rdx
	movslq	-584(%rbp), %rax
	addq	%rax, %rdx
	movl	-588(%rbp), %ecx
	leaq	-568(%rbp), %rdi
	movl	$2, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_30
## %bb.29:                              ## %if.then71
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_30:                               ## %if.end73
	movq	-608(%rbp), %rax
	movslq	-584(%rbp), %rcx
	movq	-272(%rbp,%rcx), %rdx
	movq	%rdx, 40(%rax)
	movl	-264(%rbp,%rcx), %ecx
	movl	%ecx, 48(%rax)
LBB10_31:                               ## %if.end78
	cmpl	$0, -588(%rbp)
	jle	LBB10_35
## %bb.32:                              ## %if.then81
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_34
## %bb.33:                              ## %if.then83
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -664(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movslq	-584(%rbp), %rax
	addq	%rax, %rdi
	movl	-588(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-664(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.11(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_34:                               ## %if.end88
	jmp	LBB10_35
LBB10_35:                               ## %if.end89
	movq	-608(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-272(%rbp), %rsi
	callq	_srtp_cipher_init
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_37
## %bb.36:                              ## %if.then94
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_37:                               ## %if.end96
	movq	-608(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB10_73
## %bb.38:                              ## %if.then98
	movl	$-1431655766, -624(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -628(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -632(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -640(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -648(%rbp)
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-608(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	LBB10_49
## %bb.39:                              ## %if.then105
	leaq	-528(%rbp), %rdi
	movl	$170, %esi
	movl	$256, %edx                      ## imm = 0x100
	callq	_memset
	movq	-608(%rbp), %rax
	movq	8(%rax), %rdi
	callq	_srtp_cipher_get_key_length
	movl	%eax, -624(%rbp)
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rdi
	movl	-624(%rbp), %esi
	callq	_base_key_length
	movl	%eax, -628(%rbp)
	movl	-624(%rbp), %eax
	subl	-628(%rbp), %eax
	movl	%eax, -632(%rbp)
	movl	-632(%rbp), %eax
	cmpl	-588(%rbp), %eax
	jle	LBB10_44
## %bb.40:                              ## %if.then114
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	80(%rax), %eax
	addl	$-6, %eax
	subl	$1, %eax
	ja	LBB10_42
	jmp	LBB10_41
LBB10_41:                               ## %sw.bb
	movl	-588(%rbp), %eax
	movl	%eax, -632(%rbp)
	jmp	LBB10_43
LBB10_42:                               ## %sw.default
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$2, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_47
LBB10_43:                               ## %sw.epilog
	jmp	LBB10_44
LBB10_44:                               ## %if.end118
	leaq	-528(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      ## imm = 0x100
	callq	_memset
	leaq	-528(%rbp), %rdi
	movq	-616(%rbp), %rsi
	movl	-628(%rbp), %eax
	addl	-632(%rbp), %eax
	movslq	%eax, %rdx
	callq	_memcpy
	leaq	-640(%rbp), %rax
	movq	%rax, -648(%rbp)
	movq	-648(%rbp), %rdi
	leaq	-528(%rbp), %rsi
	movl	-572(%rbp), %edx
	callq	_srtp_kdf_init
	movl	%eax, -560(%rbp)
	leaq	-528(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	cmpl	$0, -560(%rbp)
	je	LBB10_46
## %bb.45:                              ## %if.then127
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_47
LBB10_46:                               ## %if.end129
	movl	$0, -620(%rbp)
LBB10_47:                               ## %cleanup
	movl	-620(%rbp), %eax
	testl	%eax, %eax
	jne	LBB10_71
	jmp	LBB10_48
LBB10_48:                               ## %cleanup.cont
	jmp	LBB10_50
LBB10_49:                               ## %if.else130
	movl	-576(%rbp), %eax
	movl	%eax, -624(%rbp)
	movl	-584(%rbp), %eax
	movl	%eax, -628(%rbp)
	movl	-588(%rbp), %eax
	movl	%eax, -632(%rbp)
	leaq	-568(%rbp), %rax
	movq	%rax, -648(%rbp)
LBB10_50:                               ## %if.end131
	movq	-648(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	movl	-628(%rbp), %ecx
	movl	$6, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_52
## %bb.51:                              ## %if.then135
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_71
LBB10_52:                               ## %if.end137
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_54
## %bb.53:                              ## %if.then139
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -672(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movl	-628(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-672(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.12(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_54:                               ## %if.end142
	cmpl	$0, -632(%rbp)
	jle	LBB10_60
## %bb.55:                              ## %if.then145
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_57
## %bb.56:                              ## %if.then147
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.13(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_57:                               ## %if.end148
	movq	-648(%rbp), %rdi
	leaq	-272(%rbp), %rdx
	movslq	-628(%rbp), %rax
	addq	%rax, %rdx
	movl	-632(%rbp), %ecx
	movl	$7, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_59
## %bb.58:                              ## %if.then154
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_71
LBB10_59:                               ## %if.end156
	jmp	LBB10_60
LBB10_60:                               ## %if.end157
	cmpl	$0, -632(%rbp)
	jle	LBB10_64
## %bb.61:                              ## %if.then160
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_63
## %bb.62:                              ## %if.then162
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -680(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movslq	-628(%rbp), %rax
	addq	%rax, %rdi
	movl	-632(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-680(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.14(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_63:                               ## %if.end167
	jmp	LBB10_64
LBB10_64:                               ## %if.end168
	movq	-608(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-272(%rbp), %rsi
	callq	_srtp_cipher_init
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_66
## %bb.65:                              ## %if.then173
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_71
LBB10_66:                               ## %if.end175
	leaq	-568(%rbp), %rax
	cmpq	%rax, -648(%rbp)
	je	LBB10_70
## %bb.67:                              ## %if.then178
	movq	-648(%rbp), %rdi
	callq	_srtp_kdf_clear
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_69
## %bb.68:                              ## %if.then181
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_71
LBB10_69:                               ## %if.end183
	jmp	LBB10_70
LBB10_70:                               ## %if.end184
	movl	$0, -620(%rbp)
LBB10_71:                               ## %cleanup185
	movl	-620(%rbp), %eax
	testl	%eax, %eax
	jne	LBB10_106
	jmp	LBB10_72
LBB10_72:                               ## %cleanup.cont191
	jmp	LBB10_73
LBB10_73:                               ## %if.end192
	leaq	-272(%rbp), %rax
	movq	%rax, -688(%rbp)                ## 8-byte Spill
	movq	-608(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_key_length
	movq	-688(%rbp), %rdx                ## 8-byte Reload
	movl	%eax, %ecx
	leaq	-568(%rbp), %rdi
	movl	$1, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_75
## %bb.74:                              ## %if.then197
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_75:                               ## %if.end199
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_77
## %bb.76:                              ## %if.then201
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -696(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rax
	movq	%rax, -704(%rbp)                ## 8-byte Spill
	movq	-608(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_key_length
	movq	-704(%rbp), %rdi                ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_octet_string_hex_string
	movq	-696(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.15(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_77:                               ## %if.end206
	movq	-608(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-608(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	leaq	-272(%rbp), %rsi
	movq	-608(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	20(%rcx), %edx
	callq	*%rax
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_79
## %bb.78:                              ## %if.then214
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_79:                               ## %if.end216
	movq	-608(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rdi
	movl	-580(%rbp), %esi
	callq	_base_key_length
	movl	%eax, -592(%rbp)
	movl	-580(%rbp), %eax
	subl	-592(%rbp), %eax
	movl	%eax, -596(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_81
## %bb.80:                              ## %if.then222
	movq	_mod_srtp+8(%rip), %rdx
	movl	-596(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.16(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_81:                               ## %if.end223
	leaq	-272(%rbp), %rdx
	movl	-592(%rbp), %ecx
	leaq	-568(%rbp), %rdi
	movl	$3, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_83
## %bb.82:                              ## %if.then227
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_83:                               ## %if.end229
	cmpl	$0, -596(%rbp)
	jle	LBB10_89
## %bb.84:                              ## %if.then232
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_86
## %bb.85:                              ## %if.then234
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.17(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_86:                               ## %if.end235
	leaq	-272(%rbp), %rdx
	movslq	-592(%rbp), %rax
	addq	%rax, %rdx
	movl	-596(%rbp), %ecx
	leaq	-568(%rbp), %rdi
	movl	$5, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_88
## %bb.87:                              ## %if.then241
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_88:                               ## %if.end243
	movq	-608(%rbp), %rax
	movslq	-592(%rbp), %rcx
	movq	-272(%rbp,%rcx), %rdx
	movq	%rdx, 52(%rax)
	movl	-264(%rbp,%rcx), %ecx
	movl	%ecx, 60(%rax)
LBB10_89:                               ## %if.end248
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_91
## %bb.90:                              ## %if.then250
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -712(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movl	-592(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-712(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.18(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_91:                               ## %if.end253
	cmpl	$0, -596(%rbp)
	jle	LBB10_95
## %bb.92:                              ## %if.then256
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_94
## %bb.93:                              ## %if.then258
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -720(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rdi
	movslq	-592(%rbp), %rax
	addq	%rax, %rdi
	movl	-596(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-720(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.19(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_94:                               ## %if.end263
	jmp	LBB10_95
LBB10_95:                               ## %if.end264
	movq	-608(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-272(%rbp), %rsi
	callq	_srtp_cipher_init
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_97
## %bb.96:                              ## %if.then269
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_97:                               ## %if.end271
	leaq	-272(%rbp), %rax
	movq	%rax, -728(%rbp)                ## 8-byte Spill
	movq	-608(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_key_length
	movq	-728(%rbp), %rdx                ## 8-byte Reload
	movl	%eax, %ecx
	leaq	-568(%rbp), %rdi
	movl	$4, %esi
	callq	_srtp_kdf_generate
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_99
## %bb.98:                              ## %if.then276
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_99:                               ## %if.end278
	cmpl	$0, _mod_srtp(%rip)
	je	LBB10_101
## %bb.100:                             ## %if.then280
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -736(%rbp)                ## 8-byte Spill
	leaq	-272(%rbp), %rax
	movq	%rax, -744(%rbp)                ## 8-byte Spill
	movq	-608(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_key_length
	movq	-744(%rbp), %rdi                ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_octet_string_hex_string
	movq	-736(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.20(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB10_101:                              ## %if.end285
	movq	-608(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-608(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	leaq	-272(%rbp), %rsi
	movq	-608(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	20(%rcx), %edx
	callq	*%rax
	movl	%eax, -560(%rbp)
	cmpl	$0, -560(%rbp)
	je	LBB10_103
## %bb.102:                             ## %if.then296
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_103:                              ## %if.end298
	leaq	-568(%rbp), %rdi
	callq	_srtp_kdf_clear
	movl	%eax, -560(%rbp)
	leaq	-272(%rbp), %rdi
	movl	$256, %esi                      ## imm = 0x100
	callq	_octet_string_set_to_zero
	cmpl	$0, -560(%rbp)
	je	LBB10_105
## %bb.104:                             ## %if.then302
	movl	$5, -532(%rbp)
	movl	$1, -620(%rbp)
	jmp	LBB10_106
LBB10_105:                              ## %if.end303
	movl	$0, -532(%rbp)
	movl	$1, -620(%rbp)
LBB10_106:                              ## %cleanup304
	movl	-532(%rbp), %eax
	movl	%eax, -748(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB10_108
## %bb.107:                             ## %SP_return
	movl	-748(%rbp), %eax                ## 4-byte Reload
	addq	$752, %rsp                      ## imm = 0x2F0
	popq	%rbp
	retq
LBB10_108:                              ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.p2align	4                               ## -- Begin function base_key_length
_base_key_length:                       ## @base_key_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	80(%rax), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 ## 8-byte Spill
	subl	$6, %eax
	ja	LBB11_4
## %bb.6:                               ## %entry
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI11_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB11_1:                                ## %sw.bb
	movl	-20(%rbp), %eax
	subl	$14, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB11_5
LBB11_2:                                ## %sw.bb1
	movl	-20(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB11_5
LBB11_3:                                ## %sw.bb3
	movl	-20(%rbp), %eax
	subl	$12, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB11_5
LBB11_4:                                ## %sw.default
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB11_5:                                ## %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L11_0_set_1 = LBB11_1-LJTI11_0
L11_0_set_4 = LBB11_4-LJTI11_0
L11_0_set_2 = LBB11_2-LJTI11_0
L11_0_set_3 = LBB11_3-LJTI11_0
LJTI11_0:
	.long	L11_0_set_1
	.long	L11_0_set_4
	.long	L11_0_set_4
	.long	L11_0_set_1
	.long	L11_0_set_1
	.long	L11_0_set_2
	.long	L11_0_set_3
	.end_data_region
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_kdf_init
_srtp_kdf_init:                         ## @srtp_kdf_init
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movl	-28(%rbp), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	subl	$30, %eax
	je	LBB12_3
	jmp	LBB12_11
LBB12_11:                               ## %entry
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$38, %eax
	je	LBB12_2
	jmp	LBB12_12
LBB12_12:                               ## %entry
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$46, %eax
	jne	LBB12_4
	jmp	LBB12_1
LBB12_1:                                ## %sw.bb
	movl	$5, -32(%rbp)
	jmp	LBB12_5
LBB12_2:                                ## %sw.bb1
	movl	$4, -32(%rbp)
	jmp	LBB12_5
LBB12_3:                                ## %sw.bb2
	movl	$1, -32(%rbp)
	jmp	LBB12_5
LBB12_4:                                ## %sw.default
	movl	$2, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB12_10
LBB12_5:                                ## %sw.epilog
	movl	-32(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	-28(%rbp), %edx
	xorl	%ecx, %ecx
	callq	_srtp_crypto_kernel_alloc_cipher
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB12_7
## %bb.6:                               ## %if.then
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB12_10
LBB12_7:                                ## %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_cipher_init
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	LBB12_9
## %bb.8:                               ## %if.then6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_srtp_cipher_dealloc
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB12_10
LBB12_9:                                ## %if.end9
	movl	$0, -4(%rbp)
	movl	$1, -40(%rbp)
LBB12_10:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_kdf_generate
_srtp_kdf_generate:                     ## @srtp_kdf_generate
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$-1431655766, -40(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
	movl	-20(%rbp), %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -49(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-56(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	LBB13_2
## %bb.1:                               ## %if.then
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -60(%rbp)
	jmp	LBB13_5
LBB13_2:                                ## %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %eax
	movl	%eax, %esi
	callq	_octet_string_set_to_zero
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	LBB13_4
## %bb.3:                               ## %if.then9
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -60(%rbp)
	jmp	LBB13_5
LBB13_4:                                ## %if.end10
	movl	$0, -4(%rbp)
	movl	$1, -60(%rbp)
LBB13_5:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_kdf_clear
_srtp_kdf_clear:                        ## @srtp_kdf_clear
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$-1431655766, -20(%rbp)         ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_srtp_cipher_dealloc
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB14_2
## %bb.1:                               ## %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB14_3
LBB14_2:                                ## %if.end
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -24(%rbp)
LBB14_3:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_stream_init       ## -- Begin function srtp_stream_init
	.globl	_srtp_stream_init
	.p2align	4
_srtp_stream_init:                      ## @srtp_stream_init
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	cmpl	$0, _mod_srtp(%rip)
	je	LBB15_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rdx
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	movl	$3, %edi
	leaq	L_.str.21(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB15_2:                                ## %if.end
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	LBB15_6
## %bb.3:                               ## %land.lhs.true
	movq	-24(%rbp), %rax
	cmpq	$64, 88(%rax)
	jb	LBB15_5
## %bb.4:                               ## %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$32768, 88(%rax)                ## imm = 0x8000
	jb	LBB15_6
LBB15_5:                                ## %if.then5
	movl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB15_19
LBB15_6:                                ## %if.end6
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	LBB15_8
## %bb.7:                               ## %if.then9
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rsi
	callq	_srtp_rdbx_init
	movl	%eax, -28(%rbp)
	jmp	LBB15_9
LBB15_8:                                ## %if.else
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	movl	$128, %esi
	callq	_srtp_rdbx_init
	movl	%eax, -28(%rbp)
LBB15_9:                                ## %if.end13
	cmpl	$0, -28(%rbp)
	je	LBB15_11
## %bb.10:                              ## %if.then15
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB15_19
LBB15_11:                               ## %if.end16
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	___bswap_32
	movl	%eax, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-24(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 80(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 84(%rax)
	movq	-16(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_init
	movq	-24(%rbp), %rax
	cmpl	$0, 96(%rax)
	je	LBB15_14
## %bb.12:                              ## %land.lhs.true24
	movq	-24(%rbp), %rax
	cmpl	$1, 96(%rax)
	je	LBB15_14
## %bb.13:                              ## %if.then27
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_dealloc
	movl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB15_19
LBB15_14:                               ## %if.end30
	movq	-24(%rbp), %rax
	movl	96(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 88(%rax)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	56(%rax), %rsi
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movl	%eax, %ecx
	callq	_srtp_stream_init_all_master_keys
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB15_16
## %bb.15:                              ## %if.then35
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_dealloc
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB15_19
LBB15_16:                               ## %if.end38
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	80(%rax), %rsi
	callq	_srtp_ekt_stream_init_from_policy
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB15_18
## %bb.17:                              ## %if.then42
	movq	-16(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_dealloc
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB15_19
LBB15_18:                               ## %if.end45
	movl	$0, -4(%rbp)
	movl	$1, -32(%rbp)
LBB15_19:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_event_reporter    ## -- Begin function srtp_event_reporter
	.globl	_srtp_event_reporter
	.p2align	4
_srtp_event_reporter:                   ## @srtp_event_reporter
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edx
	leaq	L_.str.22(%rip), %rsi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movl	$1, %edi
	callq	_srtp_err_report
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	subq	$3, %rax
	ja	LBB16_5
## %bb.7:                               ## %entry
	movq	-16(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI16_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB16_1:                                ## %sw.bb
	movl	$1, %edi
	leaq	L_.str.23(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
	jmp	LBB16_6
LBB16_2:                                ## %sw.bb1
	movl	$1, %edi
	leaq	L_.str.24(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
	jmp	LBB16_6
LBB16_3:                                ## %sw.bb2
	movl	$1, %edi
	leaq	L_.str.25(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
	jmp	LBB16_6
LBB16_4:                                ## %sw.bb3
	movl	$1, %edi
	leaq	L_.str.26(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
	jmp	LBB16_6
LBB16_5:                                ## %sw.default
	movl	$1, %edi
	leaq	L_.str.27(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB16_6:                                ## %sw.epilog
	addq	$16, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L16_0_set_1 = LBB16_1-LJTI16_0
L16_0_set_2 = LBB16_2-LJTI16_0
L16_0_set_3 = LBB16_3-LJTI16_0
L16_0_set_4 = LBB16_4-LJTI16_0
LJTI16_0:
	.long	L16_0_set_1
	.long	L16_0_set_2
	.long	L16_0_set_3
	.long	L16_0_set_4
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_install_event_handler ## -- Begin function srtp_install_event_handler
	.globl	_srtp_install_event_handler
	.p2align	4
_srtp_install_event_handler:            ## @srtp_install_event_handler
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, _srtp_event_handler(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_session_keys  ## -- Begin function srtp_get_session_keys
	.globl	_srtp_get_session_keys
	.p2align	4
_srtp_get_session_keys:                 ## @srtp_get_session_keys
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	$-1431655766, -44(%rbp)         ## imm = 0xAAAAAAAA
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	$-1431655766, -48(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -48(%rbp)
	movl	$-1431655766, -52(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -52(%rbp)
	movl	$-1431655766, -56(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -56(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$6, 20(%rax)
	je	LBB18_2
## %bb.1:                               ## %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpl	$7, 20(%rax)
	jne	LBB18_3
LBB18_2:                                ## %if.then
	movl	$0, -52(%rbp)
	jmp	LBB18_4
LBB18_3:                                ## %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -52(%rbp)
LBB18_4:                                ## %if.end
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jbe	LBB18_6
## %bb.5:                               ## %if.then9
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	movl	$1, -60(%rbp)
	jmp	LBB18_16
LBB18_6:                                ## %if.end10
	movl	-52(%rbp), %ecx
	movl	-44(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movl	$0, -56(%rbp)
LBB18_7:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jae	LBB18_15
## %bb.8:                               ## %for.body
                                        ##   in Loop: Header=BB18_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$0, 72(%rax)
	je	LBB18_13
## %bb.9:                               ## %land.lhs.true
                                        ##   in Loop: Header=BB18_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movl	72(%rax), %eax
	cmpl	-44(%rbp), %eax
	ja	LBB18_13
## %bb.10:                              ## %if.then21
                                        ##   in Loop: Header=BB18_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movl	72(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	subl	(%rcx), %eax
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rdi
	movl	-48(%rbp), %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	64(%rax), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	callq	_memcmp
	cmpl	$0, %eax
	jne	LBB18_12
## %bb.11:                              ## %if.then33
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-56(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movl	$1, -60(%rbp)
	jmp	LBB18_16
LBB18_12:                               ## %if.end37
                                        ##   in Loop: Header=BB18_7 Depth=1
	jmp	LBB18_13
LBB18_13:                               ## %if.end38
                                        ##   in Loop: Header=BB18_7 Depth=1
	jmp	LBB18_14
LBB18_14:                               ## %for.inc
                                        ##   in Loop: Header=BB18_7 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB18_7
LBB18_15:                               ## %for.end
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -8(%rbp)
	movl	$1, -60(%rbp)
LBB18_16:                               ## %cleanup
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_protect           ## -- Begin function srtp_protect
	.globl	_srtp_protect
	.p2align	4
_srtp_protect:                          ## @srtp_protect
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
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	_srtp_protect_mki
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_protect_mki       ## -- Begin function srtp_protect_mki
	.globl	_srtp_protect_mki
	.p2align	4
_srtp_protect_mki:                      ## @srtp_protect_mki
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp                      ## imm = 0x110
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movl	$-1431655766, -68(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -68(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -80(%rbp)
	movl	$-1431655766, -84(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movq	$0, -96(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -104(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -112(%rbp)
	movl	$-1431655766, -116(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -128(%rbp)
	movq	$0, -128(%rbp)
	movl	$-1431655766, -132(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -132(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -144(%rbp)
	movq	$0, -144(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -152(%rbp)
	movq	$0, -152(%rbp)
	movl	$-1431655766, -156(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -156(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB20_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.28(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB20_2:                                ## %if.end
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	_srtp_validate_rtp_header
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_4
## %bb.3:                               ## %if.then2
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_4:                                ## %if.end3
	movq	-32(%rbp), %rax
	cmpl	$12, (%rax)
	jge	LBB20_6
## %bb.5:                               ## %if.then4
	movl	$2, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_6:                                ## %if.end5
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	callq	_srtp_get_stream
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	jne	LBB20_15
## %bb.7:                               ## %if.then8
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB20_13
## %bb.8:                               ## %if.then10
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-168(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_10
## %bb.9:                               ## %if.then15
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_11
LBB20_10:                               ## %if.end16
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-168(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-168(%rbp), %rax
	movl	$1, 84(%rax)
	movq	-168(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$0, -160(%rbp)
LBB20_11:                               ## %cleanup
	movl	-160(%rbp), %eax
	testl	%eax, %eax
	jne	LBB20_109
	jmp	LBB20_12
LBB20_12:                               ## %cleanup.cont
	jmp	LBB20_14
LBB20_13:                               ## %if.else
	movl	$13, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_14:                               ## %if.end18
	jmp	LBB20_15
LBB20_15:                               ## %if.end19
	movq	-112(%rbp), %rax
	cmpl	$1, 84(%rax)
	je	LBB20_22
## %bb.16:                              ## %if.then22
	movq	-112(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB20_18
## %bb.17:                              ## %if.then25
	movq	-112(%rbp), %rax
	movl	$1, 84(%rax)
	jmp	LBB20_21
LBB20_18:                               ## %if.else27
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB20_20
## %bb.19:                              ## %if.then29
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -184(%rbp)
	movl	$-1431655766, -176(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -172(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -176(%rbp)
	movl	$0, -172(%rbp)
	leaq	-184(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB20_20:                               ## %if.end33
	jmp	LBB20_21
LBB20_21:                               ## %if.end34
	jmp	LBB20_22
LBB20_22:                               ## %if.end35
	movq	-112(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	_srtp_get_session_keys_with_mki_index
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	jne	LBB20_24
## %bb.23:                              ## %if.then38
	movl	$25, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_24:                               ## %if.end39
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$6, 20(%rax)
	je	LBB20_26
## %bb.25:                              ## %lor.lhs.false
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$7, 20(%rax)
	jne	LBB20_27
LBB20_26:                               ## %if.then44
	movq	-16(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-144(%rbp), %r8
	movl	-36(%rbp), %r9d
	callq	_srtp_protect_aead
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_27:                               ## %if.end46
	movq	-144(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_srtp_key_limit_update
	movl	%eax, %ecx
	movl	%ecx, -252(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB20_35
	jmp	LBB20_110
LBB20_110:                              ## %if.end46
	movl	-252(%rbp), %eax                ## 4-byte Reload
	subl	$1, %eax
	je	LBB20_28
	jmp	LBB20_111
LBB20_111:                              ## %if.end46
	movl	-252(%rbp), %eax                ## 4-byte Reload
	subl	$2, %eax
	je	LBB20_31
	jmp	LBB20_34
LBB20_28:                               ## %sw.bb
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB20_30
## %bb.29:                              ## %if.then49
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -200(%rbp)
	movl	$-1431655766, -192(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -188(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -200(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -192(%rbp)
	movl	$1, -188(%rbp)
	leaq	-200(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB20_30:                               ## %if.end56
	jmp	LBB20_35
LBB20_31:                               ## %sw.bb57
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB20_33
## %bb.32:                              ## %if.then59
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -216(%rbp)
	movl	$-1431655766, -208(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -204(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -216(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -208(%rbp)
	movl	$2, -204(%rbp)
	leaq	-216(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB20_33:                               ## %if.end66
	movl	$15, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_34:                               ## %sw.default
	jmp	LBB20_35
LBB20_35:                               ## %sw.epilog
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -104(%rbp)
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB20_43
## %bb.36:                              ## %if.then69
	movq	-48(%rbp), %rax
	addq	$12, %rax
	movq	-48(%rbp), %rcx
	movw	(%rcx), %cx
	andw	$15, %cx
                                        ## kill: def $cl killed $cl killed $cx
	movzbl	%cl, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB20_38
## %bb.37:                              ## %if.then77
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %ecx
	addl	$1, %ecx
	movq	-56(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -56(%rbp)
LBB20_38:                               ## %if.end82
	movq	-56(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movslq	(%rdx), %rdx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	LBB20_40
## %bb.39:                              ## %if.then87
	movl	$21, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_40:                               ## %if.end88
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-56(%rbp), %rcx
	movq	-48(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	LBB20_42
## %bb.41:                              ## %if.then93
	movl	$21, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_42:                               ## %if.end94
	jmp	LBB20_44
LBB20_43:                               ## %if.else95
	movq	$0, -56(%rbp)
LBB20_44:                               ## %if.end96
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_srtp_inject_mki
	movl	%eax, -132(%rbp)
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	LBB20_46
## %bb.45:                              ## %if.then103
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movl	-132(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	jmp	LBB20_47
LBB20_46:                               ## %if.else108
	movq	$0, -64(%rbp)
	movq	$0, -96(%rbp)
LBB20_47:                               ## %if.end109
	movq	-48(%rbp), %rdi
	movq	-112(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rcx
	callq	_srtp_get_est_pkt_index
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_50
## %bb.48:                              ## %land.lhs.true
	cmpl	$27, -100(%rbp)
	je	LBB20_50
## %bb.49:                              ## %if.then114
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_50:                               ## %if.end115
	cmpl	$27, -100(%rbp)
	jne	LBB20_52
## %bb.51:                              ## %if.then118
	movl	$1, -156(%rbp)
LBB20_52:                               ## %if.end119
	cmpl	$0, -156(%rbp)
	je	LBB20_54
## %bb.53:                              ## %if.then121
	movq	-112(%rbp), %rdi
	addq	$24, %rdi
	movq	-80(%rbp), %rax
	shrq	$16, %rax
	movl	%eax, %esi
	movq	-80(%rbp), %rax
	andq	$65535, %rax                    ## imm = 0xFFFF
                                        ## kill: def $ax killed $ax killed $rax
	movzwl	%ax, %edx
	callq	_srtp_rdbx_set_roc_seq
	movq	-112(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-112(%rbp), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	_srtp_rdbx_add_index
	jmp	LBB20_60
LBB20_54:                               ## %if.else128
	movq	-112(%rbp), %rdi
	addq	$24, %rdi
	movl	-84(%rbp), %esi
	callq	_srtp_rdbx_check
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_59
## %bb.55:                              ## %if.then132
	cmpl	$9, -100(%rbp)
	jne	LBB20_57
## %bb.56:                              ## %lor.lhs.false135
	movq	-112(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	LBB20_58
LBB20_57:                               ## %if.then137
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_58:                               ## %if.end138
	jmp	LBB20_59
LBB20_59:                               ## %if.end139
	movq	-112(%rbp), %rdi
	addq	$24, %rdi
	movl	-84(%rbp), %esi
	callq	_srtp_rdbx_add_index
LBB20_60:                               ## %if.end142
	cmpl	$0, _mod_srtp(%rip)
	je	LBB20_62
## %bb.61:                              ## %if.then144
	movq	_mod_srtp+8(%rip), %rdx
	movq	-80(%rbp), %rcx
	movl	$3, %edi
	leaq	L_.str.29(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB20_62:                               ## %if.end145
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	je	LBB20_65
## %bb.63:                              ## %lor.lhs.false149
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$4, 80(%rax)
	je	LBB20_65
## %bb.64:                              ## %lor.lhs.false155
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$5, 80(%rax)
	jne	LBB20_69
LBB20_65:                               ## %if.then161
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -232(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -224(%rbp)
	movl	$0, -232(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -228(%rbp)
	movq	-80(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -224(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-232(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	LBB20_68
## %bb.66:                              ## %land.lhs.true169
	movq	-144(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB20_68
## %bb.67:                              ## %if.then171
	movq	-144(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-232(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
LBB20_68:                               ## %if.end174
	jmp	LBB20_73
LBB20_69:                               ## %if.else175
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -248(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -240(%rbp)
	movq	$0, -248(%rbp)
	movq	-80(%rbp), %rdi
	callq	_be64_to_cpu
	movq	%rax, -240(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-248(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	LBB20_72
## %bb.70:                              ## %land.lhs.true183
	movq	-144(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB20_72
## %bb.71:                              ## %if.then186
	movq	-144(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-248(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
LBB20_72:                               ## %if.end189
LBB20_73:                               ## %if.end190
	cmpl	$0, -100(%rbp)
	je	LBB20_75
## %bb.74:                              ## %if.then192
	movl	$8, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_75:                               ## %if.end193
	movq	-80(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -80(%rbp)
	cmpq	$0, -64(%rbp)
	je	LBB20_83
## %bb.76:                              ## %if.then197
	movq	-144(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_prefix_length
	movl	%eax, -116(%rbp)
	cmpl	$0, -116(%rbp)
	je	LBB20_82
## %bb.77:                              ## %if.then201
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	movq	-96(%rbp), %rsi
	leaq	-116(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_79
## %bb.78:                              ## %if.then205
	movl	$8, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_79:                               ## %if.end206
	cmpl	$0, _mod_srtp(%rip)
	je	LBB20_81
## %bb.80:                              ## %if.then208
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -264(%rbp)                ## 8-byte Spill
	movq	-96(%rbp), %rdi
	movl	-116(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-264(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.30(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB20_81:                               ## %if.end210
	jmp	LBB20_82
LBB20_82:                               ## %if.end211
	jmp	LBB20_83
LBB20_83:                               ## %if.end212
	cmpq	$0, -128(%rbp)
	je	LBB20_88
## %bb.84:                              ## %land.lhs.true214
	movq	-144(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB20_88
## %bb.85:                              ## %if.then217
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-144(%rbp), %rdx
	callq	_srtp_process_header_encryption
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_87
## %bb.86:                              ## %if.then220
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_87:                               ## %if.end221
	jmp	LBB20_88
LBB20_88:                               ## %if.end222
	cmpq	$0, -56(%rbp)
	je	LBB20_92
## %bb.89:                              ## %if.then224
	movq	-144(%rbp), %rax
	movq	(%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	-68(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_91
## %bb.90:                              ## %if.then228
	movl	$8, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_91:                               ## %if.end229
	jmp	LBB20_92
LBB20_92:                               ## %if.end230
	cmpq	$0, -64(%rbp)
	je	LBB20_104
## %bb.93:                              ## %if.then232
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	-144(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_95
## %bb.94:                              ## %if.then238
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_95:                               ## %if.end239
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-144(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movl	(%rcx), %edx
	callq	*%rax
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB20_97
## %bb.96:                              ## %if.then246
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_97:                               ## %if.end247
	cmpl	$0, _mod_srtp(%rip)
	je	LBB20_99
## %bb.98:                              ## %if.then249
	movq	_mod_srtp+8(%rip), %rdx
	movq	-80(%rbp), %rcx
	movl	$3, %edi
	leaq	L_.str.29(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB20_99:                               ## %if.end250
	movq	-144(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-144(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-144(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	16(%rcx), %ecx
	movq	-96(%rbp), %r8
	leaq	-80(%rbp), %rsi
	movl	$4, %edx
	callq	*%rax
	movl	%eax, -100(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB20_101
## %bb.100:                             ## %if.then258
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -272(%rbp)                ## 8-byte Spill
	movq	-96(%rbp), %rdi
	movl	-104(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-272(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.31(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB20_101:                              ## %if.end260
	cmpl	$0, -100(%rbp)
	je	LBB20_103
## %bb.102:                             ## %if.then262
	movl	$7, -4(%rbp)
	movl	$1, -160(%rbp)
	jmp	LBB20_109
LBB20_103:                              ## %if.end263
	jmp	LBB20_104
LBB20_104:                              ## %if.end264
	cmpq	$0, -96(%rbp)
	je	LBB20_106
## %bb.105:                             ## %if.then266
	movl	-104(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
LBB20_106:                              ## %if.end268
	cmpl	$0, -36(%rbp)
	je	LBB20_108
## %bb.107:                             ## %if.then270
	movl	-132(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
LBB20_108:                              ## %if.end272
	movl	$0, -4(%rbp)
	movl	$1, -160(%rbp)
LBB20_109:                              ## %cleanup273
	movl	-4(%rbp), %eax
	addq	$272, %rsp                      ## imm = 0x110
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_validate_rtp_header
_srtp_validate_rtp_header:              ## @srtp_validate_rtp_header
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movq	-24(%rbp), %rax
	cmpl	$12, (%rax)
	jge	LBB21_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB21_13
LBB21_2:                                ## %if.end
	movq	-32(%rbp), %rax
	movw	(%rax), %ax
	andw	$15, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	shll	$2, %eax
	addl	$12, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB21_4
## %bb.3:                               ## %if.then7
	movl	-36(%rbp), %eax
	addl	$4, %eax
	movl	%eax, -36(%rbp)
LBB21_4:                                ## %if.end9
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB21_6
## %bb.5:                               ## %if.then12
	movl	$2, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB21_13
LBB21_6:                                ## %if.end13
	movq	-32(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB21_12
## %bb.7:                               ## %if.then21
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	addq	$12, %rax
	movq	-32(%rbp), %rcx
	movw	(%rcx), %cx
	andw	$15, %cx
                                        ## kill: def $cl killed $cl killed $cx
	movzbl	%cl, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movl	$-1431655766, -52(%rbp)         ## imm = 0xAAAAAAAA
	movq	-48(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %eax
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	shll	$2, %eax
	addl	-36(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB21_9
## %bb.8:                               ## %if.then32
	movl	$2, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB21_10
LBB21_9:                                ## %if.end33
	movl	$0, -40(%rbp)
LBB21_10:                               ## %cleanup
	movl	-40(%rbp), %eax
	testl	%eax, %eax
	jne	LBB21_13
	jmp	LBB21_11
LBB21_11:                               ## %cleanup.cont
	jmp	LBB21_12
LBB21_12:                               ## %if.end35
	movl	$0, -4(%rbp)
	movl	$1, -40(%rbp)
LBB21_13:                               ## %cleanup36
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_stream        ## -- Begin function srtp_get_stream
	.globl	_srtp_get_stream
	.p2align	4
_srtp_get_stream:                       ## @srtp_get_stream
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
LBB22_1:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	LBB22_5
## %bb.2:                               ## %while.body
                                        ##   in Loop: Header=BB22_1 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	LBB22_4
## %bb.3:                               ## %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$1, -36(%rbp)
	jmp	LBB22_6
LBB22_4:                                ## %if.end
                                        ##   in Loop: Header=BB22_1 Depth=1
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB22_1
LBB22_5:                                ## %while.end
	movq	$0, -8(%rbp)
	movl	$1, -36(%rbp)
LBB22_6:                                ## %cleanup
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_protect_aead
_srtp_protect_aead:                     ## @srtp_protect_aead
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movl	$-1431655766, -76(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -76(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -88(%rbp)
	movl	$-1431655766, -92(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -96(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -112(%rbp)
	movl	$-1431655766, -124(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -136(%rbp)
	movq	$0, -136(%rbp)
	movl	$-1431655766, -140(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -140(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -152(%rbp)
	movq	$0, -152(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB23_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.42(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB23_2:                                ## %if.end
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_srtp_key_limit_update
	movl	%eax, %ecx
	movl	%ecx, -196(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB23_10
	jmp	LBB23_42
LBB23_42:                               ## %if.end
	movl	-196(%rbp), %eax                ## 4-byte Reload
	subl	$1, %eax
	je	LBB23_6
	jmp	LBB23_43
LBB23_43:                               ## %if.end
	movl	-196(%rbp), %eax                ## 4-byte Reload
	subl	$2, %eax
	jne	LBB23_7
	jmp	LBB23_3
LBB23_3:                                ## %sw.bb
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB23_5
## %bb.4:                               ## %if.then2
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -168(%rbp)
	movl	$-1431655766, -160(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -156(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -160(%rbp)
	movl	$2, -156(%rbp)
	leaq	-168(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB23_5:                                ## %if.end5
	movl	$15, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_6:                                ## %sw.bb6
	jmp	LBB23_7
LBB23_7:                                ## %sw.default
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB23_9
## %bb.8:                               ## %if.then8
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -192(%rbp)
	movl	$-1431655766, -184(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -180(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -192(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -184(%rbp)
	movl	$1, -180(%rbp)
	leaq	-192(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB23_9:                                ## %if.end15
	jmp	LBB23_10
LBB23_10:                               ## %sw.epilog
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -100(%rbp)
	movq	-64(%rbp), %rax
	addq	$12, %rax
	movq	-64(%rbp), %rcx
	movw	(%rcx), %cx
	andw	$15, %cx
                                        ## kill: def $cl killed $cl killed $cx
	movzbl	%cl, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB23_12
## %bb.11:                              ## %if.then23
	movq	-72(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
LBB23_12:                               ## %if.end28
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movl	(%rdx), %edx
                                        ## kill: def $rdx killed $edx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	LBB23_14
## %bb.13:                              ## %if.then33
	movl	$21, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_14:                               ## %if.end34
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	LBB23_16
## %bb.15:                              ## %if.then39
	movl	$21, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_16:                               ## %if.end40
	movq	-24(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -208(%rbp)                ## 8-byte Spill
	movq	-64(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movq	-208(%rbp), %rdi                ## 8-byte Reload
	leaq	-88(%rbp), %rsi
	movzwl	%ax, %edx
	callq	_srtp_rdbx_estimate_index
	movl	%eax, -92(%rbp)
	movq	-24(%rbp), %rdi
	addq	$24, %rdi
	movl	-92(%rbp), %esi
	callq	_srtp_rdbx_check
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	LBB23_21
## %bb.17:                              ## %if.then46
	cmpl	$9, -96(%rbp)
	jne	LBB23_19
## %bb.18:                              ## %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpl	$0, 88(%rax)
	jne	LBB23_20
LBB23_19:                               ## %if.then50
	movl	-96(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_20:                               ## %if.end51
	jmp	LBB23_22
LBB23_21:                               ## %if.else
	movq	-24(%rbp), %rdi
	addq	$24, %rdi
	movl	-92(%rbp), %esi
	callq	_srtp_rdbx_add_index
LBB23_22:                               ## %if.end54
	cmpl	$0, _mod_srtp(%rip)
	je	LBB23_24
## %bb.23:                              ## %if.then56
	movq	_mod_srtp+8(%rip), %rdx
	movq	-88(%rbp), %rcx
	movl	$3, %edi
	leaq	L_.str.29(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB23_24:                               ## %if.end57
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rcx
	leaq	-120(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	_srtp_calc_aead_iv
	movq	-88(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -88(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	jne	LBB23_27
## %bb.25:                              ## %land.lhs.true
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB23_27
## %bb.26:                              ## %if.then62
	movl	$0, -120(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -116(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-120(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -96(%rbp)
LBB23_27:                               ## %if.end68
	cmpl	$0, -96(%rbp)
	je	LBB23_29
## %bb.28:                              ## %if.then70
	movl	$8, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_29:                               ## %if.end71
	cmpq	$0, -136(%rbp)
	je	LBB23_34
## %bb.30:                              ## %land.lhs.true73
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB23_34
## %bb.31:                              ## %if.then76
	movq	-24(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	_srtp_process_header_encryption
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	LBB23_33
## %bb.32:                              ## %if.then79
	movl	-96(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_33:                               ## %if.end80
	jmp	LBB23_34
LBB23_34:                               ## %if.end81
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -124(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	-124(%rbp), %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	LBB23_36
## %bb.35:                              ## %if.then89
	movl	$8, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_36:                               ## %if.end90
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	LBB23_38
## %bb.37:                              ## %if.then94
	movl	$8, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_38:                               ## %if.end95
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	movslq	-76(%rbp), %rax
	addq	%rax, %rsi
	leaq	-100(%rbp), %rdx
	callq	_srtp_cipher_get_tag
	movl	%eax, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	LBB23_40
## %bb.39:                              ## %if.then101
	movl	$8, -4(%rbp)
	movl	$1, -172(%rbp)
	jmp	LBB23_41
LBB23_40:                               ## %if.end102
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movl	-100(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	_srtp_inject_mki
	movl	%eax, -140(%rbp)
	movl	-100(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	-140(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -172(%rbp)
LBB23_41:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$208, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function __bswap_16
___bswap_16:                            ## @__bswap_16
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movw	%di, %ax
	movw	%ax, -2(%rbp)
	movzwl	-2(%rbp), %eax
	sarl	$8, %eax
	andl	$255, %eax
	movzwl	-2(%rbp), %ecx
	andl	$255, %ecx
	shll	$8, %ecx
	orl	%ecx, %eax
                                        ## kill: def $ax killed $ax killed $eax
	movzwl	%ax, %eax
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_get_est_pkt_index
_srtp_get_est_pkt_index:                ## @srtp_get_est_pkt_index
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 116(%rax)
	je	LBB25_2
## %bb.1:                               ## %if.then
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movl	116(%rax), %eax
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	movl	-52(%rbp), %esi                 ## 4-byte Reload
	movq	-48(%rbp), %rdx                 ## 8-byte Reload
	movq	-32(%rbp), %r8
	movzwl	%ax, %ecx
	callq	_srtp_estimate_index
	movl	%eax, -36(%rbp)
	jmp	LBB25_3
LBB25_2:                                ## %if.else
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	-72(%rbp), %rsi                 ## 8-byte Reload
	movzwl	%ax, %edx
	callq	_srtp_rdbx_estimate_index
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
LBB25_3:                                ## %if.end
	cmpl	$0, _mod_srtp(%rip)
	je	LBB25_5
## %bb.4:                               ## %if.then8
	movq	_mod_srtp+8(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movl	$3, %edi
	leaq	L_.str.34(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB25_5:                                ## %if.end9
	movl	-36(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function be64_to_cpu
_be64_to_cpu:                           ## @be64_to_cpu
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edi
	callq	___bswap_32
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -16(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rax
	movl	%eax, %edi
	callq	___bswap_32
	movl	%eax, %ecx
	movq	-16(%rbp), %rax                 ## 8-byte Reload
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	shlq	$32, %rcx
	orq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_process_header_encryption
_srtp_process_header_encryption:        ## @srtp_process_header_encryption
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp                      ## imm = 0x180
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -288(%rbp)
	movq	%rsi, -296(%rbp)
	movq	%rdx, -304(%rbp)
	movl	$-1431655766, -308(%rbp)        ## imm = 0xAAAAAAAA
	leaq	-272(%rbp), %rdi
	movl	$170, %esi
	movl	$257, %edx                      ## imm = 0x101
	callq	_memset
	movl	$-1431655766, -312(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -320(%rbp)
	movq	-296(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -320(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -328(%rbp)
	movq	-320(%rbp), %rax
	movq	%rax, -368(%rbp)                ## 8-byte Spill
	movq	-296(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movw	%ax, %cx
	movq	-368(%rbp), %rax                ## 8-byte Reload
	movzwl	%cx, %ecx
                                        ## kill: def $rcx killed $ecx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -328(%rbp)
	movq	-296(%rbp), %rax
	movzwl	(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %eax
	cmpl	$48862, %eax                    ## imm = 0xBEDE
	jne	LBB27_24
## %bb.1:                               ## %if.then
	jmp	LBB27_2
LBB27_2:                                ## %while.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB27_11 Depth 2
                                        ##     Child Loop BB27_16 Depth 2
	movq	-320(%rbp), %rax
	cmpq	-328(%rbp), %rax
	jae	LBB27_23
## %bb.3:                               ## %while.body
                                        ##   in Loop: Header=BB27_2 Depth=1
	movb	$-86, -329(%rbp)
	movq	-320(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$240, %eax
	sarl	$4, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -329(%rbp)
	movl	$-1431655766, -336(%rbp)        ## imm = 0xAAAAAAAA
	movq	-320(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	addl	$1, %eax
	movl	%eax, -336(%rbp)
	movl	$-1431655766, -340(%rbp)        ## imm = 0xAAAAAAAA
	movl	-336(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -340(%rbp)
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movl	-336(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	cmpq	-328(%rbp), %rax
	jbe	LBB27_5
## %bb.4:                               ## %if.then15
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	$21, -276(%rbp)
	movl	$1, -344(%rbp)
	jmp	LBB27_21
LBB27_5:                                ## %if.end
                                        ##   in Loop: Header=BB27_2 Depth=1
	movzbl	-329(%rbp), %eax
	cmpl	$15, %eax
	jne	LBB27_7
## %bb.6:                               ## %if.then19
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	$3, -344(%rbp)
	jmp	LBB27_21
LBB27_7:                                ## %if.end20
                                        ##   in Loop: Header=BB27_2 Depth=1
	movq	-304(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-340(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -308(%rbp)
	cmpl	$0, -308(%rbp)
	je	LBB27_9
## %bb.8:                               ## %if.then22
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	$8, -276(%rbp)
	movl	$1, -344(%rbp)
	jmp	LBB27_21
LBB27_9:                                ## %if.end23
                                        ##   in Loop: Header=BB27_2 Depth=1
	movq	-288(%rbp), %rdi
	movzbl	-329(%rbp), %esi
	callq	_srtp_protect_extension_header
	cmpl	$0, %eax
	je	LBB27_14
## %bb.10:                              ## %if.then27
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	$1, -312(%rbp)
LBB27_11:                               ## %while.cond28
                                        ##   Parent Loop BB27_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$0, -336(%rbp)
	jbe	LBB27_13
## %bb.12:                              ## %while.body31
                                        ##   in Loop: Header=BB27_11 Depth=2
	movl	-312(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -312(%rbp)
	cltq
	movzbl	-272(%rbp,%rax), %edx
	movq	-320(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movl	-336(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -336(%rbp)
	jmp	LBB27_11
LBB27_13:                               ## %while.end
                                        ##   in Loop: Header=BB27_2 Depth=1
	jmp	LBB27_15
LBB27_14:                               ## %if.else
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	-336(%rbp), %ecx
	movq	-320(%rbp), %rax
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
LBB27_15:                               ## %if.end38
                                        ##   in Loop: Header=BB27_2 Depth=1
	jmp	LBB27_16
LBB27_16:                               ## %while.cond39
                                        ##   Parent Loop BB27_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	-328(%rbp), %rcx
	movb	%al, -369(%rbp)                 ## 1-byte Spill
	jae	LBB27_18
## %bb.17:                              ## %land.rhs
                                        ##   in Loop: Header=BB27_16 Depth=2
	movq	-320(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$0, %eax
	sete	%al
	movb	%al, -369(%rbp)                 ## 1-byte Spill
LBB27_18:                               ## %land.end
                                        ##   in Loop: Header=BB27_16 Depth=2
	movb	-369(%rbp), %al                 ## 1-byte Reload
	testb	$1, %al
	jne	LBB27_19
	jmp	LBB27_20
LBB27_19:                               ## %while.body45
                                        ##   in Loop: Header=BB27_16 Depth=2
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	jmp	LBB27_16
LBB27_20:                               ## %while.end47
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	$0, -344(%rbp)
LBB27_21:                               ## %cleanup
                                        ##   in Loop: Header=BB27_2 Depth=1
	movl	-344(%rbp), %eax
	movl	%eax, -376(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB27_22
	jmp	LBB27_53
LBB27_53:                               ## %cleanup
	movl	-376(%rbp), %eax                ## 4-byte Reload
	subl	$3, %eax
	je	LBB27_23
	jmp	LBB27_50
LBB27_22:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB27_2 Depth=1
	jmp	LBB27_2
LBB27_23:                               ## %while.end50
	jmp	LBB27_49
LBB27_24:                               ## %if.else51
	movq	-296(%rbp), %rax
	movzwl	(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %eax
	andl	$65520, %eax                    ## imm = 0xFFF0
	cmpl	$4096, %eax                     ## imm = 0x1000
	jne	LBB27_47
## %bb.25:                              ## %if.then58
	jmp	LBB27_26
LBB27_26:                               ## %while.cond59
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB27_34 Depth 2
                                        ##     Child Loop BB27_39 Depth 2
	movq	-320(%rbp), %rax
	addq	$1, %rax
	cmpq	-328(%rbp), %rax
	jae	LBB27_46
## %bb.27:                              ## %while.body63
                                        ##   in Loop: Header=BB27_26 Depth=1
	movb	$-86, -345(%rbp)
	movq	-320(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -345(%rbp)
	movl	$-1431655766, -352(%rbp)        ## imm = 0xAAAAAAAA
	movq	-320(%rbp), %rax
	movzbl	1(%rax), %eax
	movl	%eax, -352(%rbp)
	movl	$-1431655766, -356(%rbp)        ## imm = 0xAAAAAAAA
	movl	-352(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -356(%rbp)
	movq	-320(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	movl	-352(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	cmpq	-328(%rbp), %rax
	jbe	LBB27_29
## %bb.28:                              ## %if.then75
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	$21, -276(%rbp)
	movl	$1, -344(%rbp)
	jmp	LBB27_44
LBB27_29:                               ## %if.end76
                                        ##   in Loop: Header=BB27_26 Depth=1
	movq	-304(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-272(%rbp), %rsi
	leaq	-356(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -308(%rbp)
	cmpl	$0, -308(%rbp)
	je	LBB27_31
## %bb.30:                              ## %if.then81
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	$8, -276(%rbp)
	movl	$1, -344(%rbp)
	jmp	LBB27_44
LBB27_31:                               ## %if.end82
                                        ##   in Loop: Header=BB27_26 Depth=1
	cmpl	$0, -352(%rbp)
	jbe	LBB27_37
## %bb.32:                              ## %land.lhs.true
                                        ##   in Loop: Header=BB27_26 Depth=1
	movq	-288(%rbp), %rdi
	movzbl	-345(%rbp), %esi
	callq	_srtp_protect_extension_header
	cmpl	$0, %eax
	je	LBB27_37
## %bb.33:                              ## %if.then88
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	$2, -312(%rbp)
LBB27_34:                               ## %while.cond89
                                        ##   Parent Loop BB27_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$0, -352(%rbp)
	jbe	LBB27_36
## %bb.35:                              ## %while.body92
                                        ##   in Loop: Header=BB27_34 Depth=2
	movl	-312(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -312(%rbp)
	cltq
	movzbl	-272(%rbp,%rax), %edx
	movq	-320(%rbp), %rax
	movzbl	(%rax), %ecx
	xorl	%edx, %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	movb	%cl, (%rax)
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	movl	-352(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -352(%rbp)
	jmp	LBB27_34
LBB27_36:                               ## %while.end102
                                        ##   in Loop: Header=BB27_26 Depth=1
	jmp	LBB27_38
LBB27_37:                               ## %if.else103
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	-352(%rbp), %ecx
	movq	-320(%rbp), %rax
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -320(%rbp)
LBB27_38:                               ## %if.end106
                                        ##   in Loop: Header=BB27_26 Depth=1
	jmp	LBB27_39
LBB27_39:                               ## %while.cond107
                                        ##   Parent Loop BB27_26 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-320(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	-328(%rbp), %rcx
	movb	%al, -377(%rbp)                 ## 1-byte Spill
	jae	LBB27_41
## %bb.40:                              ## %land.rhs110
                                        ##   in Loop: Header=BB27_39 Depth=2
	movq	-320(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$0, %eax
	sete	%al
	movb	%al, -377(%rbp)                 ## 1-byte Spill
LBB27_41:                               ## %land.end114
                                        ##   in Loop: Header=BB27_39 Depth=2
	movb	-377(%rbp), %al                 ## 1-byte Reload
	testb	$1, %al
	jne	LBB27_42
	jmp	LBB27_43
LBB27_42:                               ## %while.body115
                                        ##   in Loop: Header=BB27_39 Depth=2
	movq	-320(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -320(%rbp)
	jmp	LBB27_39
LBB27_43:                               ## %while.end117
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	$0, -344(%rbp)
LBB27_44:                               ## %cleanup118
                                        ##   in Loop: Header=BB27_26 Depth=1
	movl	-344(%rbp), %eax
	testl	%eax, %eax
	jne	LBB27_50
	jmp	LBB27_45
LBB27_45:                               ## %cleanup.cont122
                                        ##   in Loop: Header=BB27_26 Depth=1
	jmp	LBB27_26
LBB27_46:                               ## %while.end123
	jmp	LBB27_48
LBB27_47:                               ## %if.else124
	movl	$21, -276(%rbp)
	movl	$1, -344(%rbp)
	jmp	LBB27_50
LBB27_48:                               ## %if.end125
	jmp	LBB27_49
LBB27_49:                               ## %if.end126
	movl	$0, -276(%rbp)
	movl	$1, -344(%rbp)
LBB27_50:                               ## %cleanup127
	movl	-276(%rbp), %eax
	movl	%eax, -384(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB27_52
## %bb.51:                              ## %SP_return
	movl	-384(%rbp), %eax                ## 4-byte Reload
	addq	$384, %rsp                      ## imm = 0x180
	popq	%rbp
	retq
LBB27_52:                               ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.private_extern	_srtp_unprotect         ## -- Begin function srtp_unprotect
	.globl	_srtp_unprotect
	.p2align	4
_srtp_unprotect:                        ## @srtp_unprotect
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
	xorl	%ecx, %ecx
	callq	_srtp_unprotect_mki
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_unprotect_mki     ## -- Begin function srtp_unprotect_mki
	.globl	_srtp_unprotect_mki
	.p2align	4
_srtp_unprotect_mki:                    ## @srtp_unprotect_mki
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp                      ## imm = 0x140
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -88(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -100(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -112(%rbp)
	movq	$0, -112(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movl	$-1431655766, -124(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -144(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -136(%rbp)
	movl	$-1431655766, -148(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -160(%rbp)
	movb	$-86, -32(%rbp)
	movb	$-86, -31(%rbp)
	movb	$-86, -30(%rbp)
	movb	$-86, -29(%rbp)
	movb	$-86, -28(%rbp)
	movb	$-86, -27(%rbp)
	movb	$-86, -26(%rbp)
	movb	$-86, -25(%rbp)
	movb	$-86, -24(%rbp)
	movb	$-86, -23(%rbp)
	movb	$-86, -22(%rbp)
	movb	$-86, -21(%rbp)
	movb	$-86, -20(%rbp)
	movb	$-86, -19(%rbp)
	movb	$-86, -18(%rbp)
	movb	$-86, -17(%rbp)
	movl	$-1431655766, -164(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -168(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -176(%rbp)
	movq	$0, -176(%rbp)
	movl	$-1431655766, -180(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -180(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -192(%rbp)
	movq	$0, -192(%rbp)
	movl	$-1431655766, -196(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -196(%rbp)
	movl	$-1431655766, -200(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -200(%rbp)
	movw	$-21846, -202(%rbp)             ## imm = 0xAAAA
	movw	$0, -202(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.32(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_2:                                ## %if.end
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	_srtp_validate_rtp_header
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_4
## %bb.3:                               ## %if.then2
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_4:                                ## %if.end3
	movq	-64(%rbp), %rax
	cmpl	$12, (%rax)
	jge	LBB29_6
## %bb.5:                               ## %if.then4
	movl	$2, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_6:                                ## %if.end5
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	movl	8(%rax), %esi
	callq	_srtp_get_stream
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	LBB29_13
## %bb.7:                               ## %if.then8
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB29_11
## %bb.8:                               ## %if.then10
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_10
## %bb.9:                               ## %if.then13
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -272(%rbp)                ## 8-byte Spill
	movq	-80(%rbp), %rax
	movl	8(%rax), %edi
	callq	___bswap_32
	movq	-272(%rbp), %rdx                ## 8-byte Reload
	movl	%eax, %ecx
	movl	$3, %edi
	leaq	L_.str.33(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_10:                               ## %if.end16
	movq	-80(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -124(%rbp)
	jmp	LBB29_12
LBB29_11:                               ## %if.else
	movl	$13, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_12:                               ## %if.end19
	jmp	LBB29_23
LBB29_13:                               ## %if.else20
	movq	-80(%rbp), %rdi
	movq	-160(%rbp), %rsi
	leaq	-120(%rbp), %rdx
	leaq	-124(%rbp), %rcx
	callq	_srtp_get_est_pkt_index
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_16
## %bb.14:                              ## %land.lhs.true
	cmpl	$27, -148(%rbp)
	je	LBB29_16
## %bb.15:                              ## %if.then25
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_16:                               ## %if.end26
	cmpl	$27, -148(%rbp)
	jne	LBB29_18
## %bb.17:                              ## %if.then29
	movl	$1, -196(%rbp)
	movq	-120(%rbp), %rax
	shrq	$16, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -200(%rbp)
	movq	-120(%rbp), %rax
	andq	$65535, %rax                    ## imm = 0xFFFF
                                        ## kill: def $ax killed $ax killed $rax
	movw	%ax, -202(%rbp)
LBB29_18:                               ## %if.end32
	cmpl	$0, -196(%rbp)
	jne	LBB29_22
## %bb.19:                              ## %if.then34
	movq	-160(%rbp), %rdi
	addq	$24, %rdi
	movl	-124(%rbp), %esi
	callq	_srtp_rdbx_check
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_21
## %bb.20:                              ## %if.then37
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_21:                               ## %if.end38
	jmp	LBB29_22
LBB29_22:                               ## %if.end39
	jmp	LBB29_23
LBB29_23:                               ## %if.end40
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_25
## %bb.24:                              ## %if.then42
	movq	_mod_srtp+8(%rip), %rdx
	movq	-120(%rbp), %rcx
	movl	$3, %edi
	leaq	L_.str.34(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_25:                               ## %if.end43
	cmpl	$0, -68(%rbp)
	je	LBB29_29
## %bb.26:                              ## %if.then45
	movq	-160(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-64(%rbp), %rdx
	leaq	-180(%rbp), %rcx
	callq	_srtp_get_session_keys
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	LBB29_28
## %bb.27:                              ## %if.then49
	movl	$25, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_28:                               ## %if.end50
	jmp	LBB29_30
LBB29_29:                               ## %if.else51
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
LBB29_30:                               ## %if.end53
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$6, 20(%rax)
	je	LBB29_32
## %bb.31:                              ## %lor.lhs.false
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$7, 20(%rax)
	jne	LBB29_33
LBB29_32:                               ## %if.then60
	movq	-48(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movl	-124(%rbp), %edx
	movq	-120(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movq	-192(%rbp), %r10
	movl	-180(%rbp), %eax
	movq	%r10, (%rsp)
	movl	%eax, 8(%rsp)
	callq	_srtp_unprotect_aead
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_33:                               ## %if.end62
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -164(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	je	LBB29_36
## %bb.34:                              ## %lor.lhs.false67
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$4, 80(%rax)
	je	LBB29_36
## %bb.35:                              ## %lor.lhs.false73
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$5, 80(%rax)
	jne	LBB29_40
LBB29_36:                               ## %if.then79
	movl	$0, -144(%rbp)
	movq	-80(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -140(%rbp)
	movq	-120(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	LBB29_39
## %bb.37:                              ## %land.lhs.true88
	movq	-192(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB29_39
## %bb.38:                              ## %if.then90
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -148(%rbp)
LBB29_39:                               ## %if.end93
	jmp	LBB29_44
LBB29_40:                               ## %if.else94
	movq	$0, -144(%rbp)
	movq	-120(%rbp), %rdi
	callq	_be64_to_cpu
	movq	%rax, -136(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	jne	LBB29_43
## %bb.41:                              ## %land.lhs.true101
	movq	-192(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB29_43
## %bb.42:                              ## %if.then104
	movq	-192(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-144(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -148(%rbp)
LBB29_43:                               ## %if.end107
	jmp	LBB29_44
LBB29_44:                               ## %if.end108
	cmpl	$0, -148(%rbp)
	je	LBB29_46
## %bb.45:                              ## %if.then110
	movl	$8, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_46:                               ## %if.end111
	movq	-120(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -120(%rbp)
	movq	-160(%rbp), %rax
	movl	48(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB29_52
## %bb.47:                              ## %if.then116
	movq	-80(%rbp), %rax
	addq	$12, %rax
	movq	-80(%rbp), %rcx
	movw	(%rcx), %cx
	andw	$15, %cx
                                        ## kill: def $cl killed $cl killed $cx
	movzbl	%cl, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB29_49
## %bb.48:                              ## %if.then125
	movq	-88(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %ecx
	addl	$1, %ecx
	movq	-88(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
LBB29_49:                               ## %if.end130
	movq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movl	(%rdx), %edx
	subl	-164(%rbp), %edx
	subl	-180(%rbp), %edx
	movl	%edx, %edx
                                        ## kill: def $rdx killed $edx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	LBB29_51
## %bb.50:                              ## %if.then136
	movl	$21, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_51:                               ## %if.end137
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	subl	-164(%rbp), %eax
	subl	-180(%rbp), %eax
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -100(%rbp)
	jmp	LBB29_53
LBB29_52:                               ## %if.else143
	movq	$0, -88(%rbp)
LBB29_53:                               ## %if.end144
	movq	-160(%rbp), %rax
	movl	48(%rax), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	LBB29_55
## %bb.54:                              ## %if.then148
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movq	-64(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movl	-164(%rbp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -112(%rbp)
	jmp	LBB29_56
LBB29_55:                               ## %if.else153
	movq	$0, -96(%rbp)
	movq	$0, -112(%rbp)
LBB29_56:                               ## %if.end154
	cmpq	$0, -96(%rbp)
	je	LBB29_76
## %bb.57:                              ## %if.then156
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	cmpl	$0, 24(%rax)
	je	LBB29_63
## %bb.58:                              ## %if.then161
	movq	-192(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_prefix_length
	movl	%eax, -168(%rbp)
	movq	-192(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-32(%rbp), %rsi
	leaq	-168(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -148(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_60
## %bb.59:                              ## %if.then167
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -280(%rbp)                ## 8-byte Spill
	leaq	-32(%rbp), %rdi
	movl	-168(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-280(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.30(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_60:                               ## %if.end170
	cmpl	$0, -148(%rbp)
	je	LBB29_62
## %bb.61:                              ## %if.then172
	movl	$8, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_62:                               ## %if.end173
	jmp	LBB29_63
LBB29_63:                               ## %if.end174
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_65
## %bb.64:                              ## %if.then180
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_65:                               ## %if.end181
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-96(%rbp), %rsi
	movq	-64(%rbp), %rcx
	movl	(%rcx), %edx
	subl	-164(%rbp), %edx
	subl	-180(%rbp), %edx
	callq	*%rax
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_67
## %bb.66:                              ## %if.then190
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_67:                               ## %if.end191
	movq	-192(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-192(%rbp), %rcx
	movq	16(%rcx), %rcx
	movl	16(%rcx), %ecx
	leaq	-32(%rbp), %r8
	leaq	-120(%rbp), %rsi
	movl	$4, %edx
	callq	*%rax
	movl	%eax, -148(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_69
## %bb.68:                              ## %if.then200
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	leaq	-32(%rbp), %rdi
	movl	-164(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-288(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.35(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_69:                               ## %if.end203
	cmpl	$0, _mod_srtp(%rip)
	je	LBB29_71
## %bb.70:                              ## %if.then205
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -296(%rbp)                ## 8-byte Spill
	movq	-112(%rbp), %rdi
	movl	-164(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-296(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.36(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB29_71:                               ## %if.end207
	cmpl	$0, -148(%rbp)
	je	LBB29_73
## %bb.72:                              ## %if.then209
	movl	$7, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_73:                               ## %if.end210
	leaq	-32(%rbp), %rdi
	movq	-112(%rbp), %rsi
	movl	-164(%rbp), %edx
	callq	_srtp_octet_string_is_eq
	cmpl	$0, %eax
	je	LBB29_75
## %bb.74:                              ## %if.then214
	movl	$7, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_75:                               ## %if.end215
	jmp	LBB29_76
LBB29_76:                               ## %if.end216
	movq	-192(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_srtp_key_limit_update
	movl	%eax, %ecx
	movl	%ecx, -300(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB29_84
	jmp	LBB29_113
LBB29_113:                              ## %if.end216
	movl	-300(%rbp), %eax                ## 4-byte Reload
	subl	$1, %eax
	je	LBB29_77
	jmp	LBB29_114
LBB29_114:                              ## %if.end216
	movl	-300(%rbp), %eax                ## 4-byte Reload
	subl	$2, %eax
	je	LBB29_80
	jmp	LBB29_83
LBB29_77:                               ## %sw.bb
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB29_79
## %bb.78:                              ## %if.then219
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -224(%rbp)
	movl	$-1431655766, -216(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -212(%rbp)        ## imm = 0xAAAAAAAA
	movq	-48(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -216(%rbp)
	movl	$1, -212(%rbp)
	leaq	-224(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB29_79:                               ## %if.end223
	jmp	LBB29_84
LBB29_80:                               ## %sw.bb224
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB29_82
## %bb.81:                              ## %if.then226
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -240(%rbp)
	movl	$-1431655766, -232(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -228(%rbp)        ## imm = 0xAAAAAAAA
	movq	-48(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -232(%rbp)
	movl	$2, -228(%rbp)
	leaq	-240(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB29_82:                               ## %if.end233
	movl	$15, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_83:                               ## %sw.default
	jmp	LBB29_84
LBB29_84:                               ## %sw.epilog
	cmpq	$0, -176(%rbp)
	je	LBB29_89
## %bb.85:                              ## %land.lhs.true235
	movq	-192(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB29_89
## %bb.86:                              ## %if.then238
	movq	-160(%rbp), %rdi
	movq	-176(%rbp), %rsi
	movq	-192(%rbp), %rdx
	callq	_srtp_process_header_encryption
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_88
## %bb.87:                              ## %if.then241
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_88:                               ## %if.end242
	jmp	LBB29_89
LBB29_89:                               ## %if.end243
	cmpq	$0, -88(%rbp)
	je	LBB29_93
## %bb.90:                              ## %if.then245
	movq	-192(%rbp), %rax
	movq	(%rax), %rdi
	movq	-88(%rbp), %rsi
	leaq	-100(%rbp), %rdx
	callq	_srtp_cipher_decrypt
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_92
## %bb.91:                              ## %if.then249
	movl	$8, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_110
LBB29_92:                               ## %if.end250
	jmp	LBB29_93
LBB29_93:                               ## %if.end251
	movq	-160(%rbp), %rax
	cmpl	$2, 84(%rax)
	je	LBB29_100
## %bb.94:                              ## %if.then254
	movq	-160(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB29_96
## %bb.95:                              ## %if.then258
	movq	-160(%rbp), %rax
	movl	$2, 84(%rax)
	jmp	LBB29_99
LBB29_96:                               ## %if.else260
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB29_98
## %bb.97:                              ## %if.then262
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -256(%rbp)
	movl	$-1431655766, -248(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -244(%rbp)        ## imm = 0xAAAAAAAA
	movq	-48(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -248(%rbp)
	movl	$0, -244(%rbp)
	leaq	-256(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB29_98:                               ## %if.end269
	jmp	LBB29_99
LBB29_99:                               ## %if.end270
	jmp	LBB29_100
LBB29_100:                              ## %if.end271
	movq	-160(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB29_106
## %bb.101:                             ## %if.then275
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -264(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-80(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-264(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -148(%rbp)
	cmpl	$0, -148(%rbp)
	je	LBB29_103
## %bb.102:                             ## %if.then280
	movl	-148(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	$1, -208(%rbp)
	jmp	LBB29_104
LBB29_103:                              ## %if.end281
	movq	-48(%rbp), %rax
	movq	(%rax), %rcx
	movq	-264(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-264(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-264(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -208(%rbp)
LBB29_104:                              ## %cleanup
	movl	-208(%rbp), %eax
	testl	%eax, %eax
	jne	LBB29_110
	jmp	LBB29_105
LBB29_105:                              ## %cleanup.cont
	jmp	LBB29_106
LBB29_106:                              ## %if.end283
	cmpl	$0, -196(%rbp)
	je	LBB29_108
## %bb.107:                             ## %if.then285
	movq	-160(%rbp), %rdi
	addq	$24, %rdi
	movl	-200(%rbp), %esi
	movzwl	-202(%rbp), %edx
	callq	_srtp_rdbx_set_roc_seq
	movq	-160(%rbp), %rax
	movl	$0, 116(%rax)
	movq	-160(%rbp), %rdi
	addq	$24, %rdi
	xorl	%esi, %esi
	callq	_srtp_rdbx_add_index
	jmp	LBB29_109
LBB29_108:                              ## %if.else290
	movq	-160(%rbp), %rdi
	addq	$24, %rdi
	movl	-124(%rbp), %esi
	callq	_srtp_rdbx_add_index
LBB29_109:                              ## %if.end293
	movl	-164(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	-180(%rbp), %edx
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	$0, -36(%rbp)
	movl	$1, -208(%rbp)
LBB29_110:                              ## %cleanup296
	movl	-36(%rbp), %eax
	movl	%eax, -304(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB29_112
## %bb.111:                             ## %SP_return
	movl	-304(%rbp), %eax                ## 4-byte Reload
	addq	$320, %rsp                      ## imm = 0x140
	popq	%rbp
	retq
LBB29_112:                              ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_unprotect_aead
_srtp_unprotect_aead:                   ## @srtp_unprotect_aead
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movl	24(%rbp), %eax
	movq	16(%rbp), %rax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, -56(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movl	$-1431655766, -76(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -76(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -88(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -104(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -108(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movq	$0, -120(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB30_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rdx
	movl	$3, %edi
	leaq	L_.str.45(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB30_2:                                ## %if.end
	cmpl	$0, _mod_srtp(%rip)
	je	LBB30_4
## %bb.3:                               ## %if.then2
	movq	_mod_srtp+8(%rip), %rdx
	movq	-40(%rbp), %rcx
	movl	$3, %edi
	leaq	L_.str.34(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB30_4:                                ## %if.end3
	movq	16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -104(%rbp)
	movq	16(%rbp), %rdi
	movq	-64(%rbp), %rcx
	leaq	-96(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	callq	_srtp_calc_aead_iv
	movq	16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	-96(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	jne	LBB30_7
## %bb.5:                               ## %land.lhs.true
	movq	16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB30_7
## %bb.6:                               ## %if.then7
	movl	$0, -96(%rbp)
	movq	-64(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -92(%rbp)
	movq	-40(%rbp), %rdi
	shlq	$16, %rdi
	callq	_be64_to_cpu
	movq	%rax, -88(%rbp)
	movq	16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
LBB30_7:                                ## %if.end13
	cmpl	$0, -100(%rbp)
	je	LBB30_9
## %bb.8:                               ## %if.then15
	movl	$8, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_9:                                ## %if.end16
	movq	-64(%rbp), %rax
	addq	$12, %rax
	movq	-64(%rbp), %rcx
	movw	(%rcx), %cx
	andw	$15, %cx
                                        ## kill: def $cl killed $cl killed $cx
	movzbl	%cl, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movw	(%rax), %ax
	shrw	$4, %ax
	andw	$1, %ax
                                        ## kill: def $al killed $al killed $ax
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	LBB30_11
## %bb.10:                              ## %if.then23
	movq	-72(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movzwl	2(%rax), %edi
	callq	___bswap_16
	movzwl	%ax, %ecx
	addl	$1, %ecx
	movq	-72(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
LBB30_11:                               ## %if.end28
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	(%rdx), %edx
	subl	-104(%rbp), %edx
	subl	24(%rbp), %edx
	movl	%edx, %edx
                                        ## kill: def $rdx killed $edx
	addq	%rdx, %rcx
	cmpq	%rcx, %rax
	jbe	LBB30_13
## %bb.12:                              ## %if.then34
	movl	$21, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_13:                               ## %if.end35
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	subl	24(%rbp), %eax
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	subq	%rdx, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jae	LBB30_15
## %bb.14:                              ## %if.then42
	movl	$8, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_15:                               ## %if.end43
	movq	16(%rbp), %rax
	movq	80(%rax), %rdi
	callq	_srtp_key_limit_update
	movl	%eax, %ecx
	movl	%ecx, -188(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB30_23
	jmp	LBB30_47
LBB30_47:                               ## %if.end43
	movl	-188(%rbp), %eax                ## 4-byte Reload
	subl	$1, %eax
	je	LBB30_16
	jmp	LBB30_48
LBB30_48:                               ## %if.end43
	movl	-188(%rbp), %eax                ## 4-byte Reload
	subl	$2, %eax
	je	LBB30_19
	jmp	LBB30_22
LBB30_16:                               ## %sw.bb
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB30_18
## %bb.17:                              ## %if.then46
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -144(%rbp)
	movl	$-1431655766, -136(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -132(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -136(%rbp)
	movl	$1, -132(%rbp)
	leaq	-144(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB30_18:                               ## %if.end50
	jmp	LBB30_23
LBB30_19:                               ## %sw.bb51
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB30_21
## %bb.20:                              ## %if.then53
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -160(%rbp)
	movl	$-1431655766, -152(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -148(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -152(%rbp)
	movl	$2, -148(%rbp)
	leaq	-160(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB30_21:                               ## %if.end60
	movl	$15, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_22:                               ## %sw.default
	jmp	LBB30_23
LBB30_23:                               ## %sw.epilog
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -108(%rbp)
	movq	16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	-108(%rbp), %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB30_25
## %bb.24:                              ## %if.then68
	movl	$8, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_25:                               ## %if.end69
	movq	16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-72(%rbp), %rsi
	leaq	-76(%rbp), %rdx
	callq	_srtp_cipher_decrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB30_27
## %bb.26:                              ## %if.then73
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_27:                               ## %if.end74
	cmpq	$0, -120(%rbp)
	je	LBB30_32
## %bb.28:                              ## %land.lhs.true76
	movq	16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB30_32
## %bb.29:                              ## %if.then79
	movq	-24(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	16(%rbp), %rdx
	callq	_srtp_process_header_encryption
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB30_31
## %bb.30:                              ## %if.then82
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_46
LBB30_31:                               ## %if.end83
	jmp	LBB30_32
LBB30_32:                               ## %if.end84
	movq	-24(%rbp), %rax
	cmpl	$2, 84(%rax)
	je	LBB30_39
## %bb.33:                              ## %if.then87
	movq	-24(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB30_35
## %bb.34:                              ## %if.then91
	movq	-24(%rbp), %rax
	movl	$2, 84(%rax)
	jmp	LBB30_38
LBB30_35:                               ## %if.else
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB30_37
## %bb.36:                              ## %if.then94
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -176(%rbp)
	movl	$-1431655766, -168(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -164(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -168(%rbp)
	movl	$0, -164(%rbp)
	leaq	-176(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB30_37:                               ## %if.end101
	jmp	LBB30_38
LBB30_38:                               ## %if.end102
	jmp	LBB30_39
LBB30_39:                               ## %if.end103
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB30_45
## %bb.40:                              ## %if.then106
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -184(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	leaq	-184(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB30_42
## %bb.41:                              ## %if.then111
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -124(%rbp)
	jmp	LBB30_43
LBB30_42:                               ## %if.end112
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-184(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-184(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-184(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -124(%rbp)
LBB30_43:                               ## %cleanup
	movl	-124(%rbp), %eax
	testl	%eax, %eax
	jne	LBB30_46
	jmp	LBB30_44
LBB30_44:                               ## %cleanup.cont
	jmp	LBB30_45
LBB30_45:                               ## %if.end114
	movq	-24(%rbp), %rdi
	addq	$24, %rdi
	movl	-28(%rbp), %esi
	callq	_srtp_rdbx_add_index
	movl	-104(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	24(%rbp), %edx
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -124(%rbp)
LBB30_46:                               ## %cleanup118
	movl	-4(%rbp), %eax
	addq	$192, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_init              ## -- Begin function srtp_init
	.globl	_srtp_init
	.p2align	4
_srtp_init:                             ## @srtp_init
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-1431655766, -8(%rbp)          ## imm = 0xAAAAAAAA
	callq	_srtp_crypto_kernel_init
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	LBB31_2
## %bb.1:                               ## %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	jmp	LBB31_5
LBB31_2:                                ## %if.end
	leaq	_mod_srtp(%rip), %rdi
	callq	_srtp_crypto_kernel_load_debug_module
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	LBB31_4
## %bb.3:                               ## %if.then3
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	jmp	LBB31_5
LBB31_4:                                ## %if.end4
	movl	$0, -4(%rbp)
	movl	$1, -12(%rbp)
LBB31_5:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_shutdown          ## -- Begin function srtp_shutdown
	.globl	_srtp_shutdown
	.p2align	4
_srtp_shutdown:                         ## @srtp_shutdown
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$-1431655766, -8(%rbp)          ## imm = 0xAAAAAAAA
	callq	_srtp_crypto_kernel_shutdown
	movl	%eax, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	LBB32_2
## %bb.1:                               ## %if.then
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -12(%rbp)
	jmp	LBB32_3
LBB32_2:                                ## %if.end
	movl	$0, -4(%rbp)
	movl	$1, -12(%rbp)
LBB32_3:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_dealloc           ## -- Begin function srtp_dealloc
	.globl	_srtp_dealloc
	.p2align	4
_srtp_dealloc:                          ## @srtp_dealloc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
LBB33_1:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	LBB33_7
## %bb.2:                               ## %while.body
                                        ##   in Loop: Header=BB33_1 Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_srtp_stream_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB33_4
## %bb.3:                               ## %if.then
                                        ##   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB33_5
LBB33_4:                                ## %if.end
                                        ##   in Loop: Header=BB33_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -44(%rbp)
LBB33_5:                                ## %cleanup
                                        ##   in Loop: Header=BB33_1 Depth=1
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	LBB33_12
	jmp	LBB33_6
LBB33_6:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB33_1 Depth=1
	jmp	LBB33_1
LBB33_7:                                ## %while.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB33_11
## %bb.8:                               ## %if.then4
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB33_10
## %bb.9:                               ## %if.then8
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB33_12
LBB33_10:                               ## %if.end9
	jmp	LBB33_11
LBB33_11:                               ## %if.end10
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_free
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
LBB33_12:                               ## %cleanup11
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_add_stream        ## -- Begin function srtp_add_stream
	.globl	_srtp_add_stream
	.p2align	4
_srtp_add_stream:                       ## @srtp_add_stream
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB34_3
## %bb.1:                               ## %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	LBB34_3
## %bb.2:                               ## %lor.lhs.false2
	movq	-24(%rbp), %rdi
	callq	_srtp_validate_policy_master_keys
	cmpl	$0, %eax
	jne	LBB34_4
LBB34_3:                                ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_4:                                ## %if.end
	movq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	_srtp_stream_alloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB34_6
## %bb.5:                               ## %if.then5
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_6:                                ## %if.end6
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_stream_init
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB34_8
## %bb.7:                               ## %if.then9
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_8:                                ## %if.end11
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	subq	$3, %rax
	ja	LBB34_17
## %bb.20:                              ## %if.end11
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI34_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB34_9:                                ## %sw.bb
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB34_11
## %bb.10:                              ## %if.then13
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_11:                               ## %if.end15
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$1, 84(%rax)
	jmp	LBB34_18
LBB34_12:                               ## %sw.bb18
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB34_14
## %bb.13:                              ## %if.then21
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_14:                               ## %if.end23
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	$2, 84(%rax)
	jmp	LBB34_18
LBB34_15:                               ## %sw.bb27
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	LBB34_18
LBB34_16:                               ## %sw.bb29
	jmp	LBB34_17
LBB34_17:                               ## %sw.default
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB34_19
LBB34_18:                               ## %sw.epilog
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
LBB34_19:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L34_0_set_16 = LBB34_16-LJTI34_0
L34_0_set_15 = LBB34_15-LJTI34_0
L34_0_set_12 = LBB34_12-LJTI34_0
L34_0_set_9 = LBB34_9-LJTI34_0
LJTI34_0:
	.long	L34_0_set_16
	.long	L34_0_set_15
	.long	L34_0_set_12
	.long	L34_0_set_9
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_create            ## -- Begin function srtp_create
	.globl	_srtp_create
	.p2align	4
_srtp_create:                           ## @srtp_create
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB35_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB35_10
LBB35_2:                                ## %if.end
	movl	$24, %edi
	callq	_srtp_crypto_alloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB35_4
## %bb.3:                               ## %if.then2
	movl	$3, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB35_10
LBB35_4:                                ## %if.end3
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, (%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
LBB35_5:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	LBB35_9
## %bb.6:                               ## %while.body
                                        ##   in Loop: Header=BB35_5 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_add_stream
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB35_8
## %bb.7:                               ## %if.then6
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_srtp_dealloc
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB35_10
LBB35_8:                                ## %if.end8
                                        ##   in Loop: Header=BB35_5 Depth=1
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB35_5
LBB35_9:                                ## %while.end
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
LBB35_10:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_remove_stream     ## -- Begin function srtp_remove_stream
	.globl	_srtp_remove_stream
	.p2align	4
_srtp_remove_stream:                    ## @srtp_remove_stream
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movl	$-1431655766, -44(%rbp)         ## imm = 0xAAAAAAAA
	cmpq	$0, -16(%rbp)
	jne	LBB36_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -48(%rbp)
	jmp	LBB36_15
LBB36_2:                                ## %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
LBB36_3:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	$0, -32(%rbp)
	movb	%al, -49(%rbp)                  ## 1-byte Spill
	je	LBB36_5
## %bb.4:                               ## %land.rhs
                                        ##   in Loop: Header=BB36_3 Depth=1
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	cmpl	(%rcx), %eax
	setne	%al
	movb	%al, -49(%rbp)                  ## 1-byte Spill
LBB36_5:                                ## %land.end
                                        ##   in Loop: Header=BB36_3 Depth=1
	movb	-49(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB36_6
	jmp	LBB36_7
LBB36_6:                                ## %while.body
                                        ##   in Loop: Header=BB36_3 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB36_3
LBB36_7:                                ## %while.end
	cmpq	$0, -32(%rbp)
	jne	LBB36_9
## %bb.8:                               ## %if.then5
	movl	$13, -4(%rbp)
	movl	$1, -48(%rbp)
	jmp	LBB36_15
LBB36_9:                                ## %if.end6
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	LBB36_11
## %bb.10:                              ## %if.then8
	movq	-32(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	LBB36_12
LBB36_11:                               ## %if.else
	movq	-32(%rbp), %rax
	movq	120(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, 120(%rax)
LBB36_12:                               ## %if.end13
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	_srtp_stream_dealloc
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	je	LBB36_14
## %bb.13:                              ## %if.then14
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -48(%rbp)
	jmp	LBB36_15
LBB36_14:                               ## %if.end15
	movl	$0, -4(%rbp)
	movl	$1, -48(%rbp)
LBB36_15:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_update            ## -- Begin function srtp_update
	.globl	_srtp_update
	.p2align	4
_srtp_update:                           ## @srtp_update
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	cmpq	$0, -16(%rbp)
	je	LBB37_3
## %bb.1:                               ## %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	LBB37_3
## %bb.2:                               ## %lor.lhs.false2
	movq	-24(%rbp), %rdi
	callq	_srtp_validate_policy_master_keys
	cmpl	$0, %eax
	jne	LBB37_4
LBB37_3:                                ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB37_10
LBB37_4:                                ## %if.end
	jmp	LBB37_5
LBB37_5:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	LBB37_9
## %bb.6:                               ## %while.body
                                        ##   in Loop: Header=BB37_5 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_update_stream
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB37_8
## %bb.7:                               ## %if.then6
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB37_10
LBB37_8:                                ## %if.end7
                                        ##   in Loop: Header=BB37_5 Depth=1
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	LBB37_5
LBB37_9:                                ## %while.end
	movl	$0, -4(%rbp)
	movl	$1, -32(%rbp)
LBB37_10:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_update_stream     ## -- Begin function srtp_update_stream
	.globl	_srtp_update_stream
	.p2align	4
_srtp_update_stream:                    ## @srtp_update_stream
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	cmpq	$0, -16(%rbp)
	je	LBB38_3
## %bb.1:                               ## %lor.lhs.false
	cmpq	$0, -24(%rbp)
	je	LBB38_3
## %bb.2:                               ## %lor.lhs.false2
	movq	-24(%rbp), %rdi
	callq	_srtp_validate_policy_master_keys
	cmpl	$0, %eax
	jne	LBB38_4
LBB38_3:                                ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB38_10
LBB38_4:                                ## %if.end
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)                 ## 4-byte Spill
	testl	%eax, %eax
	je	LBB38_7
	jmp	LBB38_11
LBB38_11:                               ## %if.end
	movl	-36(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB38_6
	jmp	LBB38_12
LBB38_12:                               ## %if.end
	movl	-36(%rbp), %eax                 ## 4-byte Reload
	addl	$-2, %eax
	subl	$1, %eax
	ja	LBB38_8
	jmp	LBB38_5
LBB38_5:                                ## %sw.bb
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_update_template_streams
	movl	%eax, -28(%rbp)
	jmp	LBB38_9
LBB38_6:                                ## %sw.bb4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_update_stream
	movl	%eax, -28(%rbp)
	jmp	LBB38_9
LBB38_7:                                ## %sw.bb6
	jmp	LBB38_8
LBB38_8:                                ## %sw.default
	movl	$2, -4(%rbp)
	movl	$1, -32(%rbp)
	jmp	LBB38_10
LBB38_9:                                ## %sw.epilog
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -32(%rbp)
LBB38_10:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function update_template_streams
_update_template_streams:               ## @update_template_streams
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	$0, -48(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB39_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB39_33
LBB39_2:                                ## %if.end
	movq	-24(%rbp), %rsi
	leaq	-40(%rbp), %rdi
	callq	_srtp_stream_alloc
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB39_4
## %bb.3:                               ## %if.then1
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB39_33
LBB39_4:                                ## %if.end2
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_stream_init
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB39_6
## %bb.5:                               ## %if.then5
	movq	-40(%rbp), %rdi
	callq	_srtp_crypto_free
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB39_33
LBB39_6:                                ## %if.end6
	jmp	LBB39_7
LBB39_7:                                ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB39_8 Depth 2
                                        ##     Child Loop BB39_16 Depth 2
                                        ##     Child Loop BB39_21 Depth 2
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movl	$-1431655766, -68(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -80(%rbp)
	movq	l___const.update_template_streams.old_rtcp_rdb(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	l___const.update_template_streams.old_rtcp_rdb+8(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	l___const.update_template_streams.old_rtcp_rdb+16(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
LBB39_8:                                ## %while.cond
                                        ##   Parent Loop BB39_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	$0, -64(%rbp)
	movb	%al, -129(%rbp)                 ## 1-byte Spill
	je	LBB39_10
## %bb.9:                               ## %land.rhs
                                        ##   in Loop: Header=BB39_8 Depth=2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rcx), %rcx
	cmpq	16(%rcx), %rax
	setne	%al
	movb	%al, -129(%rbp)                 ## 1-byte Spill
LBB39_10:                               ## %land.end
                                        ##   in Loop: Header=BB39_8 Depth=2
	movb	-129(%rbp), %al                 ## 1-byte Reload
	testb	$1, %al
	jne	LBB39_11
	jmp	LBB39_12
LBB39_11:                               ## %while.body
                                        ##   in Loop: Header=BB39_8 Depth=2
	movq	-64(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	LBB39_8
LBB39_12:                               ## %while.end
                                        ##   in Loop: Header=BB39_7 Depth=1
	cmpq	$0, -64(%rbp)
	jne	LBB39_14
## %bb.13:                              ## %if.then14
                                        ##   in Loop: Header=BB39_7 Depth=1
	movl	$2, -52(%rbp)
	jmp	LBB39_25
LBB39_14:                               ## %if.end15
                                        ##   in Loop: Header=BB39_7 Depth=1
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	56(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movq	64(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-16(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	_srtp_remove_stream
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB39_19
## %bb.15:                              ## %if.then19
                                        ##   in Loop: Header=BB39_7 Depth=1
	jmp	LBB39_16
LBB39_16:                               ## %while.cond20
                                        ##   Parent Loop BB39_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	LBB39_18
## %bb.17:                              ## %while.body22
                                        ##   in Loop: Header=BB39_16 Depth=2
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-112(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB39_16
LBB39_18:                               ## %while.end26
                                        ##   in Loop: Header=BB39_7 Depth=1
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB39_25
LBB39_19:                               ## %if.end28
                                        ##   in Loop: Header=BB39_7 Depth=1
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %esi
	leaq	-64(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB39_24
## %bb.20:                              ## %if.then31
                                        ##   in Loop: Header=BB39_7 Depth=1
	jmp	LBB39_21
LBB39_21:                               ## %while.cond32
                                        ##   Parent Loop BB39_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, -48(%rbp)
	je	LBB39_23
## %bb.22:                              ## %while.body34
                                        ##   in Loop: Header=BB39_21 Depth=2
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_srtp_stream_dealloc
	movq	-120(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB39_21
LBB39_23:                               ## %while.end38
                                        ##   in Loop: Header=BB39_7 Depth=1
	movq	-40(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB39_25
LBB39_24:                               ## %if.end40
                                        ##   in Loop: Header=BB39_7 Depth=1
	movq	-48(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-64(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-96(%rbp), %rcx
	movq	%rcx, 64(%rax)
	movq	-88(%rbp), %rcx
	movq	%rcx, 72(%rax)
	movl	$0, -52(%rbp)
LBB39_25:                               ## %cleanup
                                        ##   in Loop: Header=BB39_7 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -136(%rbp)                ## 4-byte Spill
	testl	%eax, %eax
	je	LBB39_26
	jmp	LBB39_34
LBB39_34:                               ## %cleanup
	movl	-136(%rbp), %eax                ## 4-byte Reload
	subl	$2, %eax
	je	LBB39_27
	jmp	LBB39_33
LBB39_26:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB39_7 Depth=1
	jmp	LBB39_7
LBB39_27:                               ## %for.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_srtp_stream_dealloc
	movq	-40(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, 8(%rax)
	cmpq	$0, -48(%rbp)
	je	LBB39_32
## %bb.28:                              ## %if.then52
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)
LBB39_29:                               ## %while.cond53
                                        ## =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	LBB39_31
## %bb.30:                              ## %while.body56
                                        ##   in Loop: Header=BB39_29 Depth=1
	movq	-128(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -128(%rbp)
	jmp	LBB39_29
LBB39_31:                               ## %while.end58
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-128(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-48(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
LBB39_32:                               ## %if.end62
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -52(%rbp)
LBB39_33:                               ## %cleanup63
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function update_stream
_update_stream:                         ## @update_stream
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movq	l___const.update_stream.old_rtcp_rdb(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	l___const.update_stream.old_rtcp_rdb+8(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	l___const.update_stream.old_rtcp_rdb+16(%rip), %rax
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	___bswap_32
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_get_stream
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	LBB40_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB40_9
LBB40_2:                                ## %if.end
	movq	-72(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	64(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	72(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	___bswap_32
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_remove_stream
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB40_4
## %bb.3:                               ## %if.then6
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB40_9
LBB40_4:                                ## %if.end7
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	_srtp_add_stream
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	LBB40_6
## %bb.5:                               ## %if.then10
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB40_9
LBB40_6:                                ## %if.end11
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	callq	___bswap_32
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_get_stream
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	LBB40_8
## %bb.7:                               ## %if.then17
	movl	$1, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB40_9
LBB40_8:                                ## %if.end18
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, 24(%rax)
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, 56(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 64(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 72(%rax)
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
LBB40_9:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_rtp_default ## -- Begin function srtp_crypto_policy_set_rtp_default
	.globl	_srtp_crypto_policy_set_rtp_default
	.p2align	4
_srtp_crypto_policy_set_rtp_default:    ## @srtp_crypto_policy_set_rtp_default
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$30, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_rtcp_default ## -- Begin function srtp_crypto_policy_set_rtcp_default
	.globl	_srtp_crypto_policy_set_rtcp_default
	.p2align	4
_srtp_crypto_policy_set_rtcp_default:   ## @srtp_crypto_policy_set_rtcp_default
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$30, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32 ## -- Begin function srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32
	.globl	_srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32
	.p2align	4
_srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32: ## @srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$30, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_128_null_auth ## -- Begin function srtp_crypto_policy_set_aes_cm_128_null_auth
	.globl	_srtp_crypto_policy_set_aes_cm_128_null_auth
	.p2align	4
_srtp_crypto_policy_set_aes_cm_128_null_auth: ## @srtp_crypto_policy_set_aes_cm_128_null_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	$30, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_null_cipher_hmac_sha1_80 ## -- Begin function srtp_crypto_policy_set_null_cipher_hmac_sha1_80
	.globl	_srtp_crypto_policy_set_null_cipher_hmac_sha1_80
	.p2align	4
_srtp_crypto_policy_set_null_cipher_hmac_sha1_80: ## @srtp_crypto_policy_set_null_cipher_hmac_sha1_80
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_null_cipher_hmac_null ## -- Begin function srtp_crypto_policy_set_null_cipher_hmac_null
	.globl	_srtp_crypto_policy_set_null_cipher_hmac_null
	.p2align	4
_srtp_crypto_policy_set_null_cipher_hmac_null: ## @srtp_crypto_policy_set_null_cipher_hmac_null
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80 ## -- Begin function srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80
	.globl	_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80
	.p2align	4
_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80: ## @srtp_crypto_policy_set_aes_cm_256_hmac_sha1_80
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, (%rax)
	movq	-8(%rbp), %rax
	movl	$46, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32 ## -- Begin function srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32
	.globl	_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32
	.p2align	4
_srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32: ## @srtp_crypto_policy_set_aes_cm_256_hmac_sha1_32
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, (%rax)
	movq	-8(%rbp), %rax
	movl	$46, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_256_null_auth ## -- Begin function srtp_crypto_policy_set_aes_cm_256_null_auth
	.globl	_srtp_crypto_policy_set_aes_cm_256_null_auth
	.p2align	4
_srtp_crypto_policy_set_aes_cm_256_null_auth: ## @srtp_crypto_policy_set_aes_cm_256_null_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$5, (%rax)
	movq	-8(%rbp), %rax
	movl	$46, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80 ## -- Begin function srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80
	.globl	_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80
	.p2align	4
_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80: ## @srtp_crypto_policy_set_aes_cm_192_hmac_sha1_80
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movl	$38, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$10, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32 ## -- Begin function srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32
	.globl	_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32
	.p2align	4
_srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32: ## @srtp_crypto_policy_set_aes_cm_192_hmac_sha1_32
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movl	$38, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$20, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_cm_192_null_auth ## -- Begin function srtp_crypto_policy_set_aes_cm_192_null_auth
	.globl	_srtp_crypto_policy_set_aes_cm_192_null_auth
	.p2align	4
_srtp_crypto_policy_set_aes_cm_192_null_auth: ## @srtp_crypto_policy_set_aes_cm_192_null_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$4, (%rax)
	movq	-8(%rbp), %rax
	movl	$38, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_128_8_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_128_8_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_128_8_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_128_8_auth: ## @srtp_crypto_policy_set_aes_gcm_128_8_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, (%rax)
	movq	-8(%rbp), %rax
	movl	$28, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_256_8_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_256_8_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_256_8_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_256_8_auth: ## @srtp_crypto_policy_set_aes_gcm_256_8_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$7, (%rax)
	movq	-8(%rbp), %rax
	movl	$44, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_128_8_only_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_128_8_only_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_128_8_only_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_128_8_only_auth: ## @srtp_crypto_policy_set_aes_gcm_128_8_only_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, (%rax)
	movq	-8(%rbp), %rax
	movl	$28, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_256_8_only_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_256_8_only_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_256_8_only_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_256_8_only_auth: ## @srtp_crypto_policy_set_aes_gcm_256_8_only_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$7, (%rax)
	movq	-8(%rbp), %rax
	movl	$44, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$8, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_128_16_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_128_16_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_128_16_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_128_16_auth: ## @srtp_crypto_policy_set_aes_gcm_128_16_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$6, (%rax)
	movq	-8(%rbp), %rax
	movl	$28, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$16, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_aes_gcm_256_16_auth ## -- Begin function srtp_crypto_policy_set_aes_gcm_256_16_auth
	.globl	_srtp_crypto_policy_set_aes_gcm_256_16_auth
	.p2align	4
_srtp_crypto_policy_set_aes_gcm_256_16_auth: ## @srtp_crypto_policy_set_aes_gcm_256_16_auth
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$7, (%rax)
	movq	-8(%rbp), %rax
	movl	$44, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$16, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 20(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_protect_rtcp      ## -- Begin function srtp_protect_rtcp
	.globl	_srtp_protect_rtcp
	.p2align	4
_srtp_protect_rtcp:                     ## @srtp_protect_rtcp
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
	xorl	%r8d, %r8d
	movl	%r8d, %ecx
	callq	_srtp_protect_rtcp_mki
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_protect_rtcp_mki  ## -- Begin function srtp_protect_rtcp_mki
	.globl	_srtp_protect_rtcp_mki
	.p2align	4
_srtp_protect_rtcp_mki:                 ## @srtp_protect_rtcp_mki
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movl	$-1431655766, -76(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -80(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -80(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -88(%rbp)
	movq	$0, -88(%rbp)
	movl	$-1431655766, -92(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -96(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -104(%rbp)
	movl	$-1431655766, -108(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -112(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -116(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -116(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -128(%rbp)
	movq	$0, -128(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$8, (%rax)
	jge	LBB60_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_2:                                ## %if.end
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	callq	_srtp_get_stream
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	LBB60_11
## %bb.3:                               ## %if.then2
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB60_9
## %bb.4:                               ## %if.then4
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -144(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-48(%rbp), %rax
	movl	4(%rax), %esi
	leaq	-144(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	LBB60_6
## %bb.5:                               ## %if.then8
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_7
LBB60_6:                                ## %if.end9
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-144(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-144(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$0, -132(%rbp)
LBB60_7:                                ## %cleanup
	movl	-132(%rbp), %eax
	testl	%eax, %eax
	jne	LBB60_54
	jmp	LBB60_8
LBB60_8:                                ## %cleanup.cont
	jmp	LBB60_10
LBB60_9:                                ## %if.else
	movl	$13, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_10:                               ## %if.end11
	jmp	LBB60_11
LBB60_11:                               ## %if.end12
	movq	-104(%rbp), %rax
	cmpl	$1, 84(%rax)
	je	LBB60_18
## %bb.12:                              ## %if.then14
	movq	-104(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB60_14
## %bb.13:                              ## %if.then17
	movq	-104(%rbp), %rax
	movl	$1, 84(%rax)
	jmp	LBB60_17
LBB60_14:                               ## %if.else19
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB60_16
## %bb.15:                              ## %if.then21
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -160(%rbp)
	movl	$-1431655766, -152(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -148(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-104(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -152(%rbp)
	movl	$0, -148(%rbp)
	leaq	-160(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB60_16:                               ## %if.end25
	jmp	LBB60_17
LBB60_17:                               ## %if.end26
	jmp	LBB60_18
LBB60_18:                               ## %if.end27
	movq	-104(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	_srtp_get_session_keys_with_mki_index
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	jne	LBB60_20
## %bb.19:                              ## %if.then30
	movl	$25, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_20:                               ## %if.end31
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$6, 20(%rax)
	je	LBB60_22
## %bb.21:                              ## %lor.lhs.false
	movq	-128(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$7, 20(%rax)
	jne	LBB60_23
LBB60_22:                               ## %if.then36
	movq	-16(%rbp), %rdi
	movq	-104(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-128(%rbp), %r8
	movl	-36(%rbp), %r9d
	callq	_srtp_protect_rtcp_aead
	movl	%eax, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_23:                               ## %if.end38
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -96(%rbp)
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	subl	$8, %eax
	movl	%eax, -80(%rbp)
	movq	-56(%rbp), %rax
	movl	-80(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rax
	movl	80(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB60_25
## %bb.24:                              ## %if.then42
	movl	$2147483648, %edi               ## imm = 0x80000000
	callq	___bswap_32
	movl	%eax, -76(%rbp)
	jmp	LBB60_26
LBB60_25:                               ## %if.else44
	movq	$0, -56(%rbp)
	movl	$0, -80(%rbp)
	movl	$0, -76(%rbp)
LBB60_26:                               ## %if.end45
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	addq	%rax, %rdi
	addq	$4, %rdi
	movq	-128(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	_srtp_inject_mki
	movl	%eax, -116(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	addq	$4, %rax
	movl	-116(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -88(%rbp)
	movq	-104(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -224(%rbp)                ## 8-byte Spill
	movq	-88(%rbp), %rax
	movq	%rax, -216(%rbp)                ## 8-byte Spill
	movl	-96(%rbp), %eax
	movl	%eax, -204(%rbp)                ## 4-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -200(%rbp)                ## 8-byte Spill
	movq	-104(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_get_packet_index
	movq	-224(%rbp), %rdi                ## 8-byte Reload
	movq	-216(%rbp), %rsi                ## 8-byte Reload
	movl	-204(%rbp), %edx                ## 4-byte Reload
	movq	-200(%rbp), %rcx                ## 8-byte Reload
	movq	%rax, %r8
	callq	_srtp_ekt_write_data
	movq	-104(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_increment
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	LBB60_28
## %bb.27:                              ## %if.then58
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_28:                               ## %if.end59
	movq	-104(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_get_value
	movl	%eax, -112(%rbp)
	movl	-112(%rbp), %edi
	callq	___bswap_32
	orl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB60_30
## %bb.29:                              ## %if.then64
	movq	_mod_srtp+8(%rip), %rdx
	movl	-112(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.37(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB60_30:                               ## %if.end65
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	movl	%ecx, (%rax)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	je	LBB60_33
## %bb.31:                              ## %lor.lhs.false67
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$4, 80(%rax)
	je	LBB60_33
## %bb.32:                              ## %lor.lhs.false72
	movq	-128(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$5, 80(%rax)
	jne	LBB60_34
LBB60_33:                               ## %if.then77
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -176(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -168(%rbp)
	movl	$0, -176(%rbp)
	movq	-48(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -172(%rbp)
	movl	-112(%rbp), %edi
	shrl	$16, %edi
	callq	___bswap_32
	movl	%eax, -168(%rbp)
	movl	-112(%rbp), %edi
	shll	$16, %edi
	callq	___bswap_32
	movl	%eax, -164(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -92(%rbp)
	jmp	LBB60_35
LBB60_34:                               ## %if.else86
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -192(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -184(%rbp)
	movl	$0, -192(%rbp)
	movl	$0, -188(%rbp)
	movl	$0, -184(%rbp)
	movl	-112(%rbp), %edi
	callq	___bswap_32
	movl	%eax, -180(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-192(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -92(%rbp)
LBB60_35:                               ## %if.end95
	cmpl	$0, -92(%rbp)
	je	LBB60_37
## %bb.36:                              ## %if.then97
	movl	$8, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_37:                               ## %if.end98
	cmpq	$0, -64(%rbp)
	je	LBB60_43
## %bb.38:                              ## %if.then100
	movq	-128(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_prefix_length
	movl	%eax, -108(%rbp)
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-88(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -92(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB60_40
## %bb.39:                              ## %if.then106
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -232(%rbp)                ## 8-byte Spill
	movq	-88(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-232(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.30(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB60_40:                               ## %if.end108
	cmpl	$0, -92(%rbp)
	je	LBB60_42
## %bb.41:                              ## %if.then110
	movl	$8, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_42:                               ## %if.end111
	jmp	LBB60_43
LBB60_43:                               ## %if.end112
	cmpq	$0, -56(%rbp)
	je	LBB60_47
## %bb.44:                              ## %if.then114
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-56(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	LBB60_46
## %bb.45:                              ## %if.then118
	movl	$8, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_46:                               ## %if.end119
	jmp	LBB60_47
LBB60_47:                               ## %if.end120
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	-128(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movl	%eax, -92(%rbp)
	cmpl	$0, -92(%rbp)
	je	LBB60_49
## %bb.48:                              ## %if.then126
	movl	-92(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_49:                               ## %if.end127
	movq	-128(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-128(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-64(%rbp), %rsi
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	$4, %rcx
	movl	%ecx, %edx
	movq	-128(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	16(%rcx), %ecx
	movq	-88(%rbp), %r8
	callq	*%rax
	movl	%eax, -92(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB60_51
## %bb.50:                              ## %if.then136
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -240(%rbp)                ## 8-byte Spill
	movq	-88(%rbp), %rdi
	movl	-96(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-240(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.38(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB60_51:                               ## %if.end138
	cmpl	$0, -92(%rbp)
	je	LBB60_53
## %bb.52:                              ## %if.then140
	movl	$7, -4(%rbp)
	movl	$1, -132(%rbp)
	jmp	LBB60_54
LBB60_53:                               ## %if.end141
	movslq	-96(%rbp), %rdx
	addq	$4, %rdx
	movq	-32(%rbp), %rax
	movslq	(%rax), %rcx
	addq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-116(%rbp), %ecx
	movq	-32(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -132(%rbp)
LBB60_54:                               ## %cleanup148
	movl	-4(%rbp), %eax
	addq	$240, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_protect_rtcp_aead
_srtp_protect_rtcp_aead:                ## @srtp_protect_rtcp_aead
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -80(%rbp)
	movl	$-1431655766, -84(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -88(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -88(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movq	$0, -96(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -104(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -108(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -128(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movl	$-1431655766, -132(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -136(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -104(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	$8, %eax
	movl	%eax, -88(%rbp)
	movq	-72(%rbp), %rax
	movl	-88(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movl	-104(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-24(%rbp), %rax
	movl	80(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB61_2
## %bb.1:                               ## %if.then
	movl	$2147483648, %edi               ## imm = 0x80000000
	callq	___bswap_32
	movl	%eax, -84(%rbp)
	jmp	LBB61_3
LBB61_2:                                ## %if.else
	movq	$0, -72(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -84(%rbp)
LBB61_3:                                ## %if.end
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rdi
	movl	-104(%rbp), %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rsi
	movl	-52(%rbp), %edx
	callq	_srtp_inject_mki
	movl	%eax, -136(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_increment
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_5
## %bb.4:                               ## %if.then15
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_5:                                ## %if.end16
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	callq	_srtp_rdb_get_value
	movl	%eax, -108(%rbp)
	movl	-108(%rbp), %edi
	callq	___bswap_32
	orl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB61_7
## %bb.6:                               ## %if.then21
	movq	_mod_srtp+8(%rip), %rdx
	movl	-108(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.37(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB61_7:                                ## %if.end22
	movq	-80(%rbp), %rax
	movl	-84(%rbp), %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rdi
	movl	-108(%rbp), %edx
	movq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rsi
	callq	_srtp_calc_aead_iv_srtcp
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_9
## %bb.8:                               ## %if.then25
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_9:                                ## %if.end26
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-128(%rbp), %rsi
	xorl	%edx, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_11
## %bb.10:                              ## %if.then29
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_11:                               ## %if.end30
	cmpq	$0, -72(%rbp)
	je	LBB61_15
## %bb.12:                              ## %if.then32
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_14
## %bb.13:                              ## %if.then36
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_14:                               ## %if.end37
	jmp	LBB61_18
LBB61_15:                               ## %if.else38
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_17
## %bb.16:                              ## %if.then42
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_17:                               ## %if.end43
	jmp	LBB61_18
LBB61_18:                               ## %if.end44
	movl	-84(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-132(%rbp), %rsi
	movl	$4, %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_20
## %bb.19:                              ## %if.then48
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_20:                               ## %if.end49
	cmpq	$0, -72(%rbp)
	je	LBB61_26
## %bb.21:                              ## %if.then51
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-72(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_23
## %bb.22:                              ## %if.then55
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_23:                               ## %if.end56
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	callq	_srtp_cipher_get_tag
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_25
## %bb.24:                              ## %if.then60
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_34
LBB61_25:                               ## %if.end61
	movl	-104(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	jmp	LBB61_33
LBB61_26:                               ## %if.else62
	movl	$-1431655766, -144(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -144(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-144(%rbp), %rdx
	callq	_srtp_cipher_encrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_28
## %bb.27:                              ## %if.then66
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_31
LBB61_28:                               ## %if.end67
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rsi
	leaq	-104(%rbp), %rdx
	callq	_srtp_cipher_get_tag
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB61_30
## %bb.29:                              ## %if.then71
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB61_31
LBB61_30:                               ## %if.end72
	movl	-104(%rbp), %eax
	addl	-88(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	$0, -140(%rbp)
LBB61_31:                               ## %cleanup
	movl	-140(%rbp), %eax
	testl	%eax, %eax
	jne	LBB61_34
	jmp	LBB61_32
LBB61_32:                               ## %cleanup.cont
	jmp	LBB61_33
LBB61_33:                               ## %if.end74
	movl	-104(%rbp), %eax
	movl	%eax, %edx
	addq	$4, %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-136(%rbp), %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -140(%rbp)
LBB61_34:                               ## %cleanup80
	movl	-4(%rbp), %eax
	addq	$144, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_unprotect_rtcp    ## -- Begin function srtp_unprotect_rtcp
	.globl	_srtp_unprotect_rtcp
	.p2align	4
_srtp_unprotect_rtcp:                   ## @srtp_unprotect_rtcp
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
	xorl	%ecx, %ecx
	callq	_srtp_unprotect_rtcp_mki
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_unprotect_rtcp_mki ## -- Begin function srtp_unprotect_rtcp_mki
	.globl	_srtp_unprotect_rtcp_mki
	.p2align	4
_srtp_unprotect_rtcp_mki:               ## @srtp_unprotect_rtcp_mki
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp                      ## imm = 0x130
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movl	%ecx, -84(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -96(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -104(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -112(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movl	$-1431655766, -124(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -128(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -128(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -136(%rbp)
	movq	$0, -136(%rbp)
	movb	$-86, -32(%rbp)
	movb	$-86, -31(%rbp)
	movb	$-86, -30(%rbp)
	movb	$-86, -29(%rbp)
	movb	$-86, -28(%rbp)
	movb	$-86, -27(%rbp)
	movb	$-86, -26(%rbp)
	movb	$-86, -25(%rbp)
	movb	$-86, -24(%rbp)
	movb	$-86, -23(%rbp)
	movb	$-86, -22(%rbp)
	movb	$-86, -21(%rbp)
	movb	$-86, -20(%rbp)
	movb	$-86, -19(%rbp)
	movb	$-86, -18(%rbp)
	movb	$-86, -17(%rbp)
	movb	$-86, -48(%rbp)
	movb	$-86, -47(%rbp)
	movb	$-86, -46(%rbp)
	movb	$-86, -45(%rbp)
	movb	$-86, -44(%rbp)
	movb	$-86, -43(%rbp)
	movb	$-86, -42(%rbp)
	movb	$-86, -41(%rbp)
	movb	$-86, -40(%rbp)
	movb	$-86, -39(%rbp)
	movb	$-86, -38(%rbp)
	movb	$-86, -37(%rbp)
	movb	$-86, -36(%rbp)
	movb	$-86, -35(%rbp)
	movb	$-86, -34(%rbp)
	movb	$-86, -33(%rbp)
	movl	$-1431655766, -140(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -144(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -148(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -160(%rbp)
	movl	$-1431655766, -164(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -168(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -172(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -176(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -180(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -180(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -192(%rbp)
	movq	$0, -192(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$0, (%rax)
	jge	LBB63_2
## %bb.1:                               ## %if.then
	movl	$2, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_2:                                ## %if.end
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	cmpq	$12, %rax
	jae	LBB63_4
## %bb.3:                               ## %if.then3
	movl	$2, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_4:                                ## %if.end4
	movq	-64(%rbp), %rdi
	movq	-96(%rbp), %rax
	movl	4(%rax), %esi
	callq	_srtp_get_stream
	movq	%rax, -160(%rbp)
	cmpq	$0, -160(%rbp)
	jne	LBB63_15
## %bb.5:                               ## %if.then7
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB63_13
## %bb.6:                               ## %if.then10
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	LBB63_10
## %bb.7:                               ## %if.then14
	movq	-160(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	callq	_srtp_stream_init_from_ekt
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	LBB63_9
## %bb.8:                               ## %if.then16
	movl	-140(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_9:                                ## %if.end17
	jmp	LBB63_10
LBB63_10:                               ## %if.end18
	cmpl	$0, _mod_srtp(%rip)
	je	LBB63_12
## %bb.11:                              ## %if.then20
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -264(%rbp)                ## 8-byte Spill
	movq	-96(%rbp), %rax
	movl	4(%rax), %edi
	callq	___bswap_32
	movq	-264(%rbp), %rdx                ## 8-byte Reload
	movl	%eax, %ecx
	movl	$3, %edi
	leaq	L_.str.39(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB63_12:                               ## %if.end23
	jmp	LBB63_14
LBB63_13:                               ## %if.else
	movl	$13, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_14:                               ## %if.end24
	jmp	LBB63_15
LBB63_15:                               ## %if.end25
	cmpl	$0, -84(%rbp)
	je	LBB63_19
## %bb.16:                              ## %if.then27
	movq	-160(%rbp), %rdi
	movq	-96(%rbp), %rsi
	movq	-80(%rbp), %rdx
	leaq	-180(%rbp), %rcx
	callq	_srtp_get_session_keys
	movq	%rax, -192(%rbp)
	cmpq	$0, -192(%rbp)
	jne	LBB63_18
## %bb.17:                              ## %if.then31
	movl	$25, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_18:                               ## %if.end32
	jmp	LBB63_20
LBB63_19:                               ## %if.else33
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
LBB63_20:                               ## %if.end35
	movq	-192(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -148(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	-148(%rbp), %ecx
	addl	$8, %ecx
	addl	-180(%rbp), %ecx
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	$4, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	cmpl	%ecx, %eax
	jge	LBB63_22
## %bb.21:                              ## %if.then43
	movl	$2, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_22:                               ## %if.end44
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$6, 20(%rax)
	je	LBB63_24
## %bb.23:                              ## %lor.lhs.false
	movq	-192(%rbp), %rax
	movq	(%rax), %rax
	cmpl	$7, 20(%rax)
	jne	LBB63_25
LBB63_24:                               ## %if.then51
	movq	-64(%rbp), %rdi
	movq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-192(%rbp), %r8
	movl	-180(%rbp), %r9d
	callq	_srtp_unprotect_rtcp_aead
	movl	%eax, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_25:                               ## %if.end53
	movq	-160(%rbp), %rcx
	movb	$1, %al
	cmpl	$1, 80(%rcx)
	movb	%al, -265(%rbp)                 ## 1-byte Spill
	je	LBB63_27
## %bb.26:                              ## %lor.rhs
	movq	-160(%rbp), %rax
	cmpl	$3, 80(%rax)
	sete	%al
	movb	%al, -265(%rbp)                 ## 1-byte Spill
LBB63_27:                               ## %lor.end
	movb	-265(%rbp), %al                 ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -176(%rbp)
	movq	-80(%rbp), %rax
	movslq	(%rax), %rax
	movl	-148(%rbp), %ecx
	addl	$8, %ecx
	addl	-180(%rbp), %ecx
	movl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	$4, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -128(%rbp)
	movq	-96(%rbp), %rax
	movq	-80(%rbp), %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movl	-148(%rbp), %ecx
	addl	-180(%rbp), %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	addq	$4, %rdx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -124(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$128, %eax
	cmpl	$128, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -172(%rbp)
	movl	-172(%rbp), %eax
	cmpl	-176(%rbp), %eax
	je	LBB63_29
## %bb.28:                              ## %if.then74
	movl	$14, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_29:                               ## %if.end75
	cmpl	$0, -176(%rbp)
	je	LBB63_31
## %bb.30:                              ## %if.then77
	movq	-96(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -104(%rbp)
	jmp	LBB63_32
LBB63_31:                               ## %if.else79
	movl	$0, -128(%rbp)
	movq	$0, -104(%rbp)
LBB63_32:                               ## %if.end80
	movq	-96(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	subl	-148(%rbp), %eax
	subl	-180(%rbp), %eax
	movl	%eax, -144(%rbp)
	movq	-96(%rbp), %rax
	movl	-144(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movl	-180(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-160(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	LBB63_34
## %bb.33:                              ## %if.then89
	movq	-160(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_srtp_ekt_octets_after_base_tag
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	movl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -136(%rbp)
	leaq	-48(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movslq	-148(%rbp), %rdx
	callq	_memcpy
	movq	-136(%rbp), %rdi
	movslq	-148(%rbp), %rsi
	callq	_octet_string_set_to_zero
	leaq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)
	movl	-148(%rbp), %eax
	addl	-144(%rbp), %eax
	movl	%eax, -144(%rbp)
LBB63_34:                               ## %if.end99
	movl	-124(%rbp), %edi
	callq	___bswap_32
	andl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	movl	%eax, -168(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB63_36
## %bb.35:                              ## %if.then103
	movq	_mod_srtp+8(%rip), %rdx
	movl	-168(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.37(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB63_36:                               ## %if.end104
	movq	-160(%rbp), %rdi
	addq	$56, %rdi
	movl	-168(%rbp), %esi
	callq	_srtp_rdb_check
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	LBB63_38
## %bb.37:                              ## %if.then107
	movl	-140(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_38:                               ## %if.end108
	movq	-192(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$1, 80(%rax)
	je	LBB63_41
## %bb.39:                              ## %lor.lhs.false111
	movq	-192(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$4, 80(%rax)
	je	LBB63_41
## %bb.40:                              ## %lor.lhs.false117
	movq	-192(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpl	$5, 80(%rax)
	jne	LBB63_42
LBB63_41:                               ## %if.then123
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -216(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -208(%rbp)
	movl	$0, -216(%rbp)
	movq	-96(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -212(%rbp)
	movl	-168(%rbp), %edi
	shrl	$16, %edi
	callq	___bswap_32
	movl	%eax, -208(%rbp)
	movl	-168(%rbp), %edi
	shll	$16, %edi
	callq	___bswap_32
	movl	%eax, -204(%rbp)
	movq	-192(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-216(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -140(%rbp)
	jmp	LBB63_43
LBB63_42:                               ## %if.else133
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -232(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -224(%rbp)
	movl	$0, -232(%rbp)
	movl	$0, -228(%rbp)
	movl	$0, -224(%rbp)
	movl	-168(%rbp), %edi
	callq	___bswap_32
	movl	%eax, -220(%rbp)
	movq	-192(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-232(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -140(%rbp)
LBB63_43:                               ## %if.end142
	cmpl	$0, -140(%rbp)
	je	LBB63_45
## %bb.44:                              ## %if.then144
	movl	$8, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_45:                               ## %if.end145
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	callq	*%rax
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	LBB63_47
## %bb.46:                              ## %if.then151
	movl	-140(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_47:                               ## %if.end152
	movq	-192(%rbp), %rax
	movq	32(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rax), %rax
	movq	-192(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	8(%rcx), %rdi
	movq	-112(%rbp), %rsi
	movl	-144(%rbp), %edx
	movq	-192(%rbp), %rcx
	movq	32(%rcx), %rcx
	movl	16(%rcx), %ecx
	leaq	-32(%rbp), %r8
	callq	*%rax
	movl	%eax, -140(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB63_49
## %bb.48:                              ## %if.then161
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -280(%rbp)                ## 8-byte Spill
	leaq	-32(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-280(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.40(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB63_49:                               ## %if.end164
	cmpl	$0, -140(%rbp)
	je	LBB63_51
## %bb.50:                              ## %if.then166
	movl	$7, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_51:                               ## %if.end167
	cmpl	$0, _mod_srtp(%rip)
	je	LBB63_53
## %bb.52:                              ## %if.then169
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -288(%rbp)                ## 8-byte Spill
	movq	-136(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-288(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.41(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB63_53:                               ## %if.end171
	leaq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movl	-148(%rbp), %edx
	callq	_srtp_octet_string_is_eq
	cmpl	$0, %eax
	je	LBB63_55
## %bb.54:                              ## %if.then175
	movl	$7, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_55:                               ## %if.end176
	movq	-192(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_prefix_length
	movl	%eax, -164(%rbp)
	cmpl	$0, -164(%rbp)
	je	LBB63_61
## %bb.56:                              ## %if.then180
	movq	-192(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-136(%rbp), %rsi
	leaq	-164(%rbp), %rdx
	callq	_srtp_cipher_output
	movl	%eax, -140(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB63_58
## %bb.57:                              ## %if.then184
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -296(%rbp)                ## 8-byte Spill
	movq	-136(%rbp), %rdi
	movl	-164(%rbp), %esi
	callq	_srtp_octet_string_hex_string
	movq	-296(%rbp), %rdx                ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.30(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB63_58:                               ## %if.end186
	cmpl	$0, -140(%rbp)
	je	LBB63_60
## %bb.59:                              ## %if.then188
	movl	$8, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_60:                               ## %if.end189
	jmp	LBB63_61
LBB63_61:                               ## %if.end190
	cmpq	$0, -104(%rbp)
	je	LBB63_65
## %bb.62:                              ## %if.then192
	movq	-192(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-104(%rbp), %rsi
	leaq	-128(%rbp), %rdx
	callq	_srtp_cipher_decrypt
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	LBB63_64
## %bb.63:                              ## %if.then196
	movl	$8, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_79
LBB63_64:                               ## %if.end197
	jmp	LBB63_65
LBB63_65:                               ## %if.end198
	movslq	-148(%rbp), %rdx
	addq	$4, %rdx
	movq	-80(%rbp), %rax
	movslq	(%rax), %rcx
	subq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movl	-180(%rbp), %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movq	-160(%rbp), %rax
	movq	96(%rax), %rdi
	callq	_srtp_ekt_octets_after_base_tag
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	subl	%edx, %ecx
	movl	%ecx, (%rax)
	movq	-160(%rbp), %rax
	cmpl	$2, 84(%rax)
	je	LBB63_72
## %bb.66:                              ## %if.then210
	movq	-160(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB63_68
## %bb.67:                              ## %if.then214
	movq	-160(%rbp), %rax
	movl	$2, 84(%rax)
	jmp	LBB63_71
LBB63_68:                               ## %if.else216
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB63_70
## %bb.69:                              ## %if.then218
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -248(%rbp)
	movl	$-1431655766, -240(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -236(%rbp)        ## imm = 0xAAAAAAAA
	movq	-64(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -240(%rbp)
	movl	$0, -236(%rbp)
	leaq	-248(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB63_70:                               ## %if.end222
	jmp	LBB63_71
LBB63_71:                               ## %if.end223
	jmp	LBB63_72
LBB63_72:                               ## %if.end224
	movq	-160(%rbp), %rax
	movq	-64(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB63_78
## %bb.73:                              ## %if.then228
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -256(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-96(%rbp), %rax
	movl	4(%rax), %esi
	leaq	-256(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -140(%rbp)
	cmpl	$0, -140(%rbp)
	je	LBB63_75
## %bb.74:                              ## %if.then233
	movl	-140(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$1, -196(%rbp)
	jmp	LBB63_76
LBB63_75:                               ## %if.end234
	movq	-64(%rbp), %rax
	movq	(%rax), %rcx
	movq	-256(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-256(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-256(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	$0, -196(%rbp)
LBB63_76:                               ## %cleanup
	movl	-196(%rbp), %eax
	testl	%eax, %eax
	jne	LBB63_79
	jmp	LBB63_77
LBB63_77:                               ## %cleanup.cont
	jmp	LBB63_78
LBB63_78:                               ## %if.end236
	movq	-160(%rbp), %rdi
	addq	$56, %rdi
	movl	-168(%rbp), %esi
	callq	_srtp_rdb_add_index
	movl	$0, -52(%rbp)
	movl	$1, -196(%rbp)
LBB63_79:                               ## %cleanup239
	movl	-52(%rbp), %eax
	movl	%eax, -300(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB63_81
## %bb.80:                              ## %SP_return
	movl	-300(%rbp), %eax                ## 4-byte Reload
	addq	$304, %rsp                      ## imm = 0x130
	popq	%rbp
	retq
LBB63_81:                               ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_unprotect_rtcp_aead
_srtp_unprotect_rtcp_aead:              ## @srtp_unprotect_rtcp_aead
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -80(%rbp)
	movl	$-1431655766, -84(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -88(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -88(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -96(%rbp)
	movq	$0, -96(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -104(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -108(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -112(%rbp)        ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -128(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -120(%rbp)
	movl	$-1431655766, -132(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -136(%rbp)        ## imm = 0xAAAAAAAA
	movl	$0, -136(%rbp)
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, -104(%rbp)
	cmpl	$0, -52(%rbp)
	je	LBB64_2
## %bb.1:                               ## %if.then
	movq	-48(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -136(%rbp)
LBB64_2:                                ## %if.end
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	addq	$-4, %rax
	movl	-136(%rbp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
                                        ## kill: def $rax killed $eax
	movl	-136(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	$12, %rcx
	subq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -88(%rbp)
	movq	-64(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	(%rcx), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movslq	-104(%rbp), %rdx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movl	-136(%rbp), %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	LBB64_4
## %bb.3:                               ## %if.then18
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -72(%rbp)
	jmp	LBB64_5
LBB64_4:                                ## %if.else
	movl	$0, -88(%rbp)
	movq	$0, -72(%rbp)
LBB64_5:                                ## %if.end20
	movl	-84(%rbp), %edi
	callq	___bswap_32
	andl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	movl	%eax, -112(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB64_7
## %bb.6:                               ## %if.then24
	movq	_mod_srtp+8(%rip), %rdx
	movl	-112(%rbp), %ecx
	movl	$3, %edi
	leaq	L_.str.37(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB64_7:                                ## %if.end25
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	movl	-112(%rbp), %esi
	callq	_srtp_rdb_check
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_9
## %bb.8:                               ## %if.then28
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_9:                                ## %if.end29
	movq	-48(%rbp), %rdi
	movl	-112(%rbp), %edx
	movq	-64(%rbp), %rcx
	leaq	-128(%rbp), %rsi
	callq	_srtp_calc_aead_iv_srtcp
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_11
## %bb.10:                              ## %if.then32
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_11:                               ## %if.end33
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-128(%rbp), %rsi
	movl	$1, %edx
	callq	_srtp_cipher_set_iv
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_13
## %bb.12:                              ## %if.then36
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_13:                               ## %if.end37
	cmpq	$0, -72(%rbp)
	je	LBB64_17
## %bb.14:                              ## %if.then39
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_16
## %bb.15:                              ## %if.then43
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_16:                               ## %if.end44
	jmp	LBB64_20
LBB64_17:                               ## %if.else45
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-64(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	(%rax), %eax
	subl	-104(%rbp), %eax
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	$4, %rax
	movl	-136(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rcx, %rax
	movl	%eax, %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_19
## %bb.18:                              ## %if.then55
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_19:                               ## %if.end56
	jmp	LBB64_20
LBB64_20:                               ## %if.end57
	movl	-84(%rbp), %eax
	movl	%eax, -132(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-132(%rbp), %rsi
	movl	$4, %edx
	callq	_srtp_cipher_set_aad
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_22
## %bb.21:                              ## %if.then61
	movl	$8, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_22:                               ## %if.end62
	cmpq	$0, -72(%rbp)
	je	LBB64_26
## %bb.23:                              ## %if.then64
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-72(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	callq	_srtp_cipher_decrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_25
## %bb.24:                              ## %if.then68
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_25:                               ## %if.end69
	jmp	LBB64_29
LBB64_26:                               ## %if.else70
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rsi
	leaq	-108(%rbp), %rdx
	callq	_srtp_cipher_decrypt
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_28
## %bb.27:                              ## %if.then74
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_43
LBB64_28:                               ## %if.end75
	jmp	LBB64_29
LBB64_29:                               ## %if.end76
	movslq	-104(%rbp), %rdx
	addq	$4, %rdx
	movl	-136(%rbp), %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
                                        ## kill: def $rcx killed $ecx
	subq	%rdx, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$2, 84(%rax)
	je	LBB64_36
## %bb.30:                              ## %if.then85
	movq	-24(%rbp), %rax
	cmpl	$0, 84(%rax)
	jne	LBB64_32
## %bb.31:                              ## %if.then89
	movq	-24(%rbp), %rax
	movl	$2, 84(%rax)
	jmp	LBB64_35
LBB64_32:                               ## %if.else91
	cmpq	$0, _srtp_event_handler(%rip)
	je	LBB64_34
## %bb.33:                              ## %if.then93
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -160(%rbp)
	movl	$-1431655766, -152(%rbp)        ## imm = 0xAAAAAAAA
	movl	$-1431655766, -148(%rbp)        ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	___bswap_32
	movl	%eax, -152(%rbp)
	movl	$0, -148(%rbp)
	leaq	-160(%rbp), %rdi
	callq	*_srtp_event_handler(%rip)
LBB64_34:                               ## %if.end96
	jmp	LBB64_35
LBB64_35:                               ## %if.end97
	jmp	LBB64_36
LBB64_36:                               ## %if.end98
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB64_42
## %bb.37:                              ## %if.then101
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -168(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-64(%rbp), %rax
	movl	4(%rax), %esi
	leaq	-168(%rbp), %rdx
	callq	_srtp_stream_clone
	movl	%eax, -100(%rbp)
	cmpl	$0, -100(%rbp)
	je	LBB64_39
## %bb.38:                              ## %if.then106
	movl	-100(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -140(%rbp)
	jmp	LBB64_40
LBB64_39:                               ## %if.end107
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-168(%rbp), %rax
	movq	%rcx, 120(%rax)
	movq	-168(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-168(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -140(%rbp)
LBB64_40:                               ## %cleanup
	movl	-140(%rbp), %eax
	testl	%eax, %eax
	jne	LBB64_43
	jmp	LBB64_41
LBB64_41:                               ## %cleanup.cont
	jmp	LBB64_42
LBB64_42:                               ## %if.end109
	movq	-24(%rbp), %rdi
	addq	$56, %rdi
	movl	-112(%rbp), %esi
	callq	_srtp_rdb_add_index
	movl	$0, -4(%rbp)
	movl	$1, -140(%rbp)
LBB64_43:                               ## %cleanup112
	movl	-4(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_set_user_data     ## -- Begin function srtp_set_user_data
	.globl	_srtp_set_user_data
	.p2align	4
_srtp_set_user_data:                    ## @srtp_set_user_data
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_user_data     ## -- Begin function srtp_get_user_data
	.globl	_srtp_get_user_data
	.p2align	4
_srtp_get_user_data:                    ## @srtp_get_user_data
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_from_profile_for_rtp ## -- Begin function srtp_crypto_policy_set_from_profile_for_rtp
	.globl	_srtp_crypto_policy_set_from_profile_for_rtp
	.p2align	4
_srtp_crypto_policy_set_from_profile_for_rtp: ## @srtp_crypto_policy_set_from_profile_for_rtp
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 ## 8-byte Spill
	subl	$7, %eax
	ja	LBB67_7
## %bb.10:                              ## %entry
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI67_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB67_1:                                ## %sw.bb
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_rtp_default
	jmp	LBB67_8
LBB67_2:                                ## %sw.bb1
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_aes_cm_128_hmac_sha1_32
	jmp	LBB67_8
LBB67_3:                                ## %sw.bb2
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_null_cipher_hmac_sha1_80
	jmp	LBB67_8
LBB67_4:                                ## %sw.bb3
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_aes_gcm_128_16_auth
	jmp	LBB67_8
LBB67_5:                                ## %sw.bb4
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_aes_gcm_256_16_auth
	jmp	LBB67_8
LBB67_6:                                ## %sw.bb5
	jmp	LBB67_7
LBB67_7:                                ## %sw.default
	movl	$2, -4(%rbp)
	jmp	LBB67_9
LBB67_8:                                ## %sw.epilog
	movl	$0, -4(%rbp)
LBB67_9:                                ## %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L67_0_set_1 = LBB67_1-LJTI67_0
L67_0_set_2 = LBB67_2-LJTI67_0
L67_0_set_7 = LBB67_7-LJTI67_0
L67_0_set_3 = LBB67_3-LJTI67_0
L67_0_set_6 = LBB67_6-LJTI67_0
L67_0_set_4 = LBB67_4-LJTI67_0
L67_0_set_5 = LBB67_5-LJTI67_0
LJTI67_0:
	.long	L67_0_set_1
	.long	L67_0_set_2
	.long	L67_0_set_7
	.long	L67_0_set_7
	.long	L67_0_set_3
	.long	L67_0_set_6
	.long	L67_0_set_4
	.long	L67_0_set_5
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_crypto_policy_set_from_profile_for_rtcp ## -- Begin function srtp_crypto_policy_set_from_profile_for_rtcp
	.globl	_srtp_crypto_policy_set_from_profile_for_rtcp
	.p2align	4
_srtp_crypto_policy_set_from_profile_for_rtcp: ## @srtp_crypto_policy_set_from_profile_for_rtcp
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 ## 8-byte Spill
	subl	$7, %eax
	ja	LBB68_7
## %bb.10:                              ## %entry
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI68_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB68_1:                                ## %sw.bb
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_rtp_default
	jmp	LBB68_8
LBB68_2:                                ## %sw.bb1
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_rtp_default
	jmp	LBB68_8
LBB68_3:                                ## %sw.bb2
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_null_cipher_hmac_sha1_80
	jmp	LBB68_8
LBB68_4:                                ## %sw.bb3
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_aes_gcm_128_16_auth
	jmp	LBB68_8
LBB68_5:                                ## %sw.bb4
	movq	-16(%rbp), %rdi
	callq	_srtp_crypto_policy_set_aes_gcm_256_16_auth
	jmp	LBB68_8
LBB68_6:                                ## %sw.bb5
	jmp	LBB68_7
LBB68_7:                                ## %sw.default
	movl	$2, -4(%rbp)
	jmp	LBB68_9
LBB68_8:                                ## %sw.epilog
	movl	$0, -4(%rbp)
LBB68_9:                                ## %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L68_0_set_1 = LBB68_1-LJTI68_0
L68_0_set_2 = LBB68_2-LJTI68_0
L68_0_set_7 = LBB68_7-LJTI68_0
L68_0_set_3 = LBB68_3-LJTI68_0
L68_0_set_6 = LBB68_6-LJTI68_0
L68_0_set_4 = LBB68_4-LJTI68_0
L68_0_set_5 = LBB68_5-LJTI68_0
LJTI68_0:
	.long	L68_0_set_1
	.long	L68_0_set_2
	.long	L68_0_set_7
	.long	L68_0_set_7
	.long	L68_0_set_3
	.long	L68_0_set_6
	.long	L68_0_set_4
	.long	L68_0_set_5
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_append_salt_to_key ## -- Begin function srtp_append_salt_to_key
	.globl	_srtp_append_salt_to_key
	.p2align	4
_srtp_append_salt_to_key:               ## @srtp_append_salt_to_key
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	callq	_memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_profile_get_master_key_length ## -- Begin function srtp_profile_get_master_key_length
	.globl	_srtp_profile_get_master_key_length
	.p2align	4
_srtp_profile_get_master_key_length:    ## @srtp_profile_get_master_key_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 ## 8-byte Spill
	subl	$7, %eax
	ja	LBB70_7
## %bb.9:                               ## %entry
	movq	-16(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI70_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB70_1:                                ## %sw.bb
	movl	$16, -4(%rbp)
	jmp	LBB70_8
LBB70_2:                                ## %sw.bb1
	movl	$16, -4(%rbp)
	jmp	LBB70_8
LBB70_3:                                ## %sw.bb2
	movl	$16, -4(%rbp)
	jmp	LBB70_8
LBB70_4:                                ## %sw.bb3
	movl	$16, -4(%rbp)
	jmp	LBB70_8
LBB70_5:                                ## %sw.bb4
	movl	$32, -4(%rbp)
	jmp	LBB70_8
LBB70_6:                                ## %sw.bb5
	jmp	LBB70_7
LBB70_7:                                ## %sw.default
	movl	$0, -4(%rbp)
LBB70_8:                                ## %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L70_0_set_1 = LBB70_1-LJTI70_0
L70_0_set_2 = LBB70_2-LJTI70_0
L70_0_set_7 = LBB70_7-LJTI70_0
L70_0_set_3 = LBB70_3-LJTI70_0
L70_0_set_6 = LBB70_6-LJTI70_0
L70_0_set_4 = LBB70_4-LJTI70_0
L70_0_set_5 = LBB70_5-LJTI70_0
LJTI70_0:
	.long	L70_0_set_1
	.long	L70_0_set_2
	.long	L70_0_set_7
	.long	L70_0_set_7
	.long	L70_0_set_3
	.long	L70_0_set_6
	.long	L70_0_set_4
	.long	L70_0_set_5
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_profile_get_master_salt_length ## -- Begin function srtp_profile_get_master_salt_length
	.globl	_srtp_profile_get_master_salt_length
	.p2align	4
_srtp_profile_get_master_salt_length:   ## @srtp_profile_get_master_salt_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %eax
	decl	%eax
	movl	%eax, %ecx
	movq	%rcx, -16(%rbp)                 ## 8-byte Spill
	subl	$7, %eax
	ja	LBB71_7
## %bb.9:                               ## %entry
	movq	-16(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI71_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB71_1:                                ## %sw.bb
	movl	$14, -4(%rbp)
	jmp	LBB71_8
LBB71_2:                                ## %sw.bb1
	movl	$14, -4(%rbp)
	jmp	LBB71_8
LBB71_3:                                ## %sw.bb2
	movl	$14, -4(%rbp)
	jmp	LBB71_8
LBB71_4:                                ## %sw.bb3
	movl	$12, -4(%rbp)
	jmp	LBB71_8
LBB71_5:                                ## %sw.bb4
	movl	$12, -4(%rbp)
	jmp	LBB71_8
LBB71_6:                                ## %sw.bb5
	jmp	LBB71_7
LBB71_7:                                ## %sw.default
	movl	$0, -4(%rbp)
LBB71_8:                                ## %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L71_0_set_1 = LBB71_1-LJTI71_0
L71_0_set_2 = LBB71_2-LJTI71_0
L71_0_set_7 = LBB71_7-LJTI71_0
L71_0_set_3 = LBB71_3-LJTI71_0
L71_0_set_6 = LBB71_6-LJTI71_0
L71_0_set_4 = LBB71_4-LJTI71_0
L71_0_set_5 = LBB71_5-LJTI71_0
LJTI71_0:
	.long	L71_0_set_1
	.long	L71_0_set_2
	.long	L71_0_set_7
	.long	L71_0_set_7
	.long	L71_0_set_3
	.long	L71_0_set_6
	.long	L71_0_set_4
	.long	L71_0_set_5
	.end_data_region
                                        ## -- End function
	.private_extern	_stream_get_protect_trailer_length ## -- Begin function stream_get_protect_trailer_length
	.globl	_stream_get_protect_trailer_length
	.p2align	4
_stream_get_protect_trailer_length:     ## @stream_get_protect_trailer_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	cmpl	$0, -24(%rbp)
	je	LBB72_4
## %bb.1:                               ## %if.then
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jb	LBB72_3
## %bb.2:                               ## %if.then1
	movl	$25, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB72_9
LBB72_3:                                ## %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	-28(%rbp), %ecx
                                        ## kill: def $rcx killed $ecx
	imulq	$88, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	72(%rax), %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	LBB72_5
LBB72_4:                                ## %if.else
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
LBB72_5:                                ## %if.end4
	cmpl	$0, -20(%rbp)
	je	LBB72_7
## %bb.6:                               ## %if.then6
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	jmp	LBB72_8
LBB72_7:                                ## %if.else8
	movq	-48(%rbp), %rax
	movq	32(%rax), %rdi
	callq	_srtp_auth_get_tag_length
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
                                        ## kill: def $rcx killed $ecx
	addq	$4, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	movl	%ecx, (%rax)
LBB72_8:                                ## %if.end13
	movl	$0, -4(%rbp)
	movl	$1, -52(%rbp)
LBB72_9:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_get_protect_trailer_length ## -- Begin function get_protect_trailer_length
	.globl	_get_protect_trailer_length
	.p2align	4
_get_protect_trailer_length:            ## @get_protect_trailer_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	cmpq	$0, -16(%rbp)
	jne	LBB73_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB73_15
LBB73_2:                                ## %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB73_5
## %bb.3:                               ## %land.lhs.true
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB73_5
## %bb.4:                               ## %if.then3
	movl	$2, -4(%rbp)
	movl	$1, -52(%rbp)
	jmp	LBB73_15
LBB73_5:                                ## %if.end4
	movq	-40(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	je	LBB73_7
## %bb.6:                               ## %if.then7
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-40(%rbp), %r8
	callq	_stream_get_protect_trailer_length
LBB73_7:                                ## %if.end8
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
LBB73_8:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	LBB73_14
## %bb.9:                               ## %while.body
                                        ##   in Loop: Header=BB73_8 Depth=1
	movl	$-1431655766, -56(%rbp)         ## imm = 0xAAAAAAAA
	movq	-48(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %ecx
	leaq	-56(%rbp), %r8
	callq	_stream_get_protect_trailer_length
	cmpl	$0, %eax
	jne	LBB73_13
## %bb.10:                              ## %if.then13
                                        ##   in Loop: Header=BB73_8 Depth=1
	movl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	(%rcx), %eax
	jbe	LBB73_12
## %bb.11:                              ## %if.then15
                                        ##   in Loop: Header=BB73_8 Depth=1
	movl	-56(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
LBB73_12:                               ## %if.end16
                                        ##   in Loop: Header=BB73_8 Depth=1
	jmp	LBB73_13
LBB73_13:                               ## %if.end17
                                        ##   in Loop: Header=BB73_8 Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	LBB73_8
LBB73_14:                               ## %while.end
	movl	$0, -4(%rbp)
	movl	$1, -52(%rbp)
LBB73_15:                               ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_protect_trailer_length ## -- Begin function srtp_get_protect_trailer_length
	.globl	_srtp_get_protect_trailer_length
	.p2align	4
_srtp_get_protect_trailer_length:       ## @srtp_get_protect_trailer_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %r8
	movl	$1, %esi
	callq	_get_protect_trailer_length
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_protect_rtcp_trailer_length ## -- Begin function srtp_get_protect_rtcp_trailer_length
	.globl	_srtp_get_protect_rtcp_trailer_length
	.p2align	4
_srtp_get_protect_rtcp_trailer_length:  ## @srtp_get_protect_rtcp_trailer_length
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %r8
	xorl	%esi, %esi
	callq	_get_protect_trailer_length
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_set_debug_module  ## -- Begin function srtp_set_debug_module
	.globl	_srtp_set_debug_module
	.p2align	4
_srtp_set_debug_module:                 ## @srtp_set_debug_module
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_srtp_crypto_kernel_set_debug_module
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_list_debug_modules ## -- Begin function srtp_list_debug_modules
	.globl	_srtp_list_debug_modules
	.p2align	4
_srtp_list_debug_modules:               ## @srtp_list_debug_modules
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_srtp_crypto_kernel_list_debug_modules
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_err_handler       ## -- Begin function srtp_err_handler
	.globl	_srtp_err_handler
	.p2align	4
_srtp_err_handler:                      ## @srtp_err_handler
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, _srtp_log_handler(%rip)
	je	LBB78_7
## %bb.1:                               ## %if.then
	movl	$-1431655766, -20(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -20(%rbp)
	movl	-4(%rbp), %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	subq	$3, %rax
	ja	LBB78_6
## %bb.8:                               ## %if.then
	movq	-32(%rbp), %rcx                 ## 8-byte Reload
	leaq	LJTI78_0(%rip), %rax
	movslq	(%rax,%rcx,4), %rcx
	addq	%rcx, %rax
	jmpq	*%rax
LBB78_2:                                ## %sw.bb
	movl	$0, -20(%rbp)
	jmp	LBB78_6
LBB78_3:                                ## %sw.bb1
	movl	$1, -20(%rbp)
	jmp	LBB78_6
LBB78_4:                                ## %sw.bb2
	movl	$2, -20(%rbp)
	jmp	LBB78_6
LBB78_5:                                ## %sw.bb3
	movl	$3, -20(%rbp)
LBB78_6:                                ## %sw.epilog
	movq	_srtp_log_handler(%rip), %rax
	movl	-20(%rbp), %edi
	movq	-16(%rbp), %rsi
	movq	_srtp_log_handler_data(%rip), %rdx
	callq	*%rax
LBB78_7:                                ## %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
	.p2align	2
	.data_region jt32
L78_0_set_2 = LBB78_2-LJTI78_0
L78_0_set_3 = LBB78_3-LJTI78_0
L78_0_set_4 = LBB78_4-LJTI78_0
L78_0_set_5 = LBB78_5-LJTI78_0
LJTI78_0:
	.long	L78_0_set_2
	.long	L78_0_set_3
	.long	L78_0_set_4
	.long	L78_0_set_5
	.end_data_region
                                        ## -- End function
	.private_extern	_srtp_install_log_handler ## -- Begin function srtp_install_log_handler
	.globl	_srtp_install_log_handler
	.p2align	4
_srtp_install_log_handler:              ## @srtp_install_log_handler
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, _srtp_log_handler(%rip)
	je	LBB79_2
## %bb.1:                               ## %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_srtp_install_err_report_handler
LBB79_2:                                ## %if.end
	movq	-8(%rbp), %rax
	movq	%rax, _srtp_log_handler(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, _srtp_log_handler_data(%rip)
	cmpq	$0, _srtp_log_handler(%rip)
	je	LBB79_4
## %bb.3:                               ## %if.then2
	leaq	_srtp_err_handler(%rip), %rdi
	callq	_srtp_install_err_report_handler
LBB79_4:                                ## %if.end4
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_set_stream_roc    ## -- Begin function srtp_set_stream_roc
	.globl	_srtp_set_stream_roc
	.p2align	4
_srtp_set_stream_roc:                   ## @srtp_set_stream_roc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %edi
	callq	___bswap_32
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_get_stream
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB80_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -36(%rbp)
	jmp	LBB80_3
LBB80_2:                                ## %if.end
	movl	-24(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 116(%rax)
	movl	$0, -4(%rbp)
	movl	$1, -36(%rbp)
LBB80_3:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_srtp_get_stream_roc    ## -- Begin function srtp_get_stream_roc
	.globl	_srtp_get_stream_roc
	.p2align	4
_srtp_get_stream_roc:                   ## @srtp_get_stream_roc
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %edi
	callq	___bswap_32
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %esi
	callq	_srtp_get_stream
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB81_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -44(%rbp)
	jmp	LBB81_3
LBB81_2:                                ## %if.end
	movq	-40(%rbp), %rdi
	addq	$24, %rdi
	callq	_srtp_rdbx_get_roc
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -44(%rbp)
LBB81_3:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_calc_aead_iv
_srtp_calc_aead_iv:                     ## @srtp_calc_aead_iv
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movl	$-1431655766, -68(%rbp)         ## imm = 0xAAAAAAAA
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	shrq	$16, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -68(%rbp)
	movw	$-21846, -70(%rbp)              ## imm = 0xAAAA
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
                                        ## kill: def $ax killed $ax killed $rax
	movw	%ax, -70(%rbp)
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_memset
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_memset
	movzwl	-70(%rbp), %edi
	callq	___bswap_16
	movw	%ax, -38(%rbp)
	movl	-68(%rbp), %edi
	callq	___bswap_32
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -42(%rbp)
	movq	-32(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -46(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB82_2
## %bb.1:                               ## %if.then
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	leaq	-48(%rbp), %rdi
	callq	_v128_hex_string
	movq	-80(%rbp), %rdx                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.43(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB82_2:                                ## %if.end
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movl	48(%rax), %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB82_4
## %bb.3:                               ## %if.then9
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	-64(%rbp), %rdi
	callq	_v128_hex_string
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.44(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB82_4:                                ## %if.end11
	movl	-48(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-44(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-40(%rbp), %ecx
	xorl	-56(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-36(%rbp), %ecx
	xorl	-52(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	addq	$96, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_estimate_index
_srtp_estimate_index:                   ## @srtp_estimate_index
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movw	%cx, %ax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movw	%ax, -34(%rbp)
	movq	%r8, -48(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	shlq	$16, %rcx
	movzwl	-34(%rbp), %eax
                                        ## kill: def $rax killed $eax
	orq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	(%rcx), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jbe	LBB83_4
## %bb.1:                               ## %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	subq	(%rcx), %rax
	cmpq	$32768, %rax                    ## imm = 0x8000
	jbe	LBB83_3
## %bb.2:                               ## %if.then9
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movl	$27, -4(%rbp)
	jmp	LBB83_10
LBB83_3:                                ## %if.end
	jmp	LBB83_9
LBB83_4:                                ## %if.else
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	LBB83_8
## %bb.5:                               ## %if.then13
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	(%rcx), %rax
	cmpq	$32768, %rax                    ## imm = 0x8000
	jbe	LBB83_7
## %bb.6:                               ## %if.then18
	movq	-48(%rbp), %rax
	movl	$0, (%rax)
	movl	$26, -4(%rbp)
	jmp	LBB83_10
LBB83_7:                                ## %if.end19
	jmp	LBB83_8
LBB83_8:                                ## %if.end20
	jmp	LBB83_9
LBB83_9:                                ## %if.end21
	movl	$0, -4(%rbp)
LBB83_10:                               ## %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_protect_extension_header
_srtp_protect_extension_header:         ## @srtp_protect_extension_header
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movq	-16(%rbp), %rax
	movl	112(%rax), %eax
	movl	%eax, -36(%rbp)
	cmpq	$0, -32(%rbp)
	je	LBB84_2
## %bb.1:                               ## %lor.lhs.false
	cmpl	$0, -36(%rbp)
	jg	LBB84_3
LBB84_2:                                ## %if.then
	movl	$0, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB84_9
LBB84_3:                                ## %if.end
	jmp	LBB84_4
LBB84_4:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -36(%rbp)
	jle	LBB84_8
## %bb.5:                               ## %while.body
                                        ##   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-20(%rbp), %eax
	jne	LBB84_7
## %bb.6:                               ## %if.then4
	movl	$1, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB84_9
LBB84_7:                                ## %if.end5
                                        ##   in Loop: Header=BB84_4 Depth=1
	movq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -32(%rbp)
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB84_4
LBB84_8:                                ## %while.end
	movl	$0, -4(%rbp)
	movl	$1, -40(%rbp)
LBB84_9:                                ## %cleanup
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function srtp_calc_aead_iv_srtcp
_srtp_calc_aead_iv_srtcp:               ## @srtp_calc_aead_iv_srtcp
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -72(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_memset
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	_memset
	movw	$0, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -54(%rbp)
	movw	$0, -50(%rbp)
	movl	-28(%rbp), %eax
                                        ## kill: def $rax killed $eax
	movabsq	$2147483648, %rcx               ## imm = 0x80000000
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	LBB85_2
## %bb.1:                               ## %if.then
	movl	$2, -4(%rbp)
	movl	$1, -76(%rbp)
	jmp	LBB85_7
LBB85_2:                                ## %if.end
	movl	-28(%rbp), %edi
	callq	___bswap_32
	movl	%eax, -48(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB85_4
## %bb.3:                               ## %if.then5
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	leaq	-56(%rbp), %rdi
	callq	_v128_hex_string
	movq	-88(%rbp), %rdx                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.46(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB85_4:                                ## %if.end7
	movq	-16(%rbp), %rax
	movq	52(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movl	60(%rax), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, _mod_srtp(%rip)
	je	LBB85_6
## %bb.5:                               ## %if.then10
	movq	_mod_srtp+8(%rip), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	leaq	-72(%rbp), %rdi
	callq	_v128_hex_string
	movq	-96(%rbp), %rdx                 ## 8-byte Reload
	movq	%rax, %rcx
	movl	$3, %edi
	leaq	L_.str.47(%rip), %rsi
	movb	$0, %al
	callq	_srtp_err_report
LBB85_6:                                ## %if.end12
	movl	-56(%rbp), %ecx
	xorl	-72(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-52(%rbp), %ecx
	xorl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-48(%rbp), %ecx
	xorl	-64(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-44(%rbp), %ecx
	xorl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movl	$0, -4(%rbp)
	movl	$1, -76(%rbp)
LBB85_7:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"srtp"

	.private_extern	_mod_srtp               ## @mod_srtp
	.section	__DATA,__data
	.globl	_mod_srtp
	.p2align	3, 0x0
_mod_srtp:
	.long	0                               ## 0x0
	.space	4
	.quad	L_.str

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"860492290f7d1f25e2bd45da6471bfd4cd4d7add"

L_.str.2:                               ## @.str.2
	.asciz	"%u.%u.%u"

L_.str.3:                               ## @.str.3
	.asciz	"%s: cloning stream (SSRC: 0x%08x)\n"

	.section	__TEXT,__const
	.p2align	3, 0x0                          ## @__const.srtp_stream_init_all_master_keys.single_master_key
l___const.srtp_stream_init_all_master_keys.single_master_key:
	.quad	-6148914691236517206
	.quad	-6148914691236517206
	.long	2863311530                      ## 0xaaaaaaaa
	.space	4,170

	.section	__TEXT,__cstring,cstring_literals
L_.str.4:                               ## @.str.4
	.asciz	"%s: srtp key len: %d\n"

L_.str.5:                               ## @.str.5
	.asciz	"%s: srtcp key len: %d\n"

L_.str.6:                               ## @.str.6
	.asciz	"%s: base key len: %d\n"

L_.str.7:                               ## @.str.7
	.asciz	"%s: kdf key len: %d\n"

L_.str.8:                               ## @.str.8
	.asciz	"%s: rtp salt len: %d\n"

L_.str.9:                               ## @.str.9
	.asciz	"%s: cipher key: %s\n"

L_.str.10:                              ## @.str.10
	.asciz	"%s: found rtp_salt_len > 0, generating salt\n"

L_.str.11:                              ## @.str.11
	.asciz	"%s: cipher salt: %s\n"

L_.str.12:                              ## @.str.12
	.asciz	"%s: extensions cipher key: %s\n"

L_.str.13:                              ## @.str.13
	.asciz	"%s: found rtp_xtn_hdr_salt_len > 0, generating salt\n"

L_.str.14:                              ## @.str.14
	.asciz	"%s: extensions cipher salt: %s\n"

L_.str.15:                              ## @.str.15
	.asciz	"%s: auth key:   %s\n"

L_.str.16:                              ## @.str.16
	.asciz	"%s: rtcp salt len: %d\n"

L_.str.17:                              ## @.str.17
	.asciz	"%s: found rtcp_salt_len > 0, generating rtcp salt\n"

L_.str.18:                              ## @.str.18
	.asciz	"%s: rtcp cipher key: %s\n"

L_.str.19:                              ## @.str.19
	.asciz	"%s: rtcp cipher salt: %s\n"

L_.str.20:                              ## @.str.20
	.asciz	"%s: rtcp auth key:   %s\n"

L_.str.21:                              ## @.str.21
	.asciz	"%s: initializing stream (SSRC: 0x%08x)\n"

L_.str.22:                              ## @.str.22
	.asciz	"srtp: in stream 0x%x: "

L_.str.23:                              ## @.str.23
	.asciz	"\tSSRC collision\n"

L_.str.24:                              ## @.str.24
	.asciz	"\tkey usage soft limit reached\n"

L_.str.25:                              ## @.str.25
	.asciz	"\tkey usage hard limit reached\n"

L_.str.26:                              ## @.str.26
	.asciz	"\tpacket index limit reached\n"

L_.str.27:                              ## @.str.27
	.asciz	"\tunknown event reported to handler\n"

	.section	__DATA,__data
	.p2align	3, 0x0                          ## @srtp_event_handler
_srtp_event_handler:
	.quad	_srtp_event_reporter

	.section	__TEXT,__cstring,cstring_literals
L_.str.28:                              ## @.str.28
	.asciz	"%s: function srtp_protect\n"

L_.str.29:                              ## @.str.29
	.asciz	"%s: estimated packet index: %016lx\n"

L_.str.30:                              ## @.str.30
	.asciz	"%s: keystream prefix: %s\n"

L_.str.31:                              ## @.str.31
	.asciz	"%s: srtp auth tag:    %s\n"

L_.str.32:                              ## @.str.32
	.asciz	"%s: function srtp_unprotect\n"

L_.str.33:                              ## @.str.33
	.asciz	"%s: using provisional stream (SSRC: 0x%08x)\n"

L_.str.34:                              ## @.str.34
	.asciz	"%s: estimated u_packet index: %016lx\n"

L_.str.35:                              ## @.str.35
	.asciz	"%s: computed auth tag:    %s\n"

L_.str.36:                              ## @.str.36
	.asciz	"%s: packet auth tag:      %s\n"

L_.str.37:                              ## @.str.37
	.asciz	"%s: srtcp index: %x\n"

L_.str.38:                              ## @.str.38
	.asciz	"%s: srtcp auth tag:    %s\n"

L_.str.39:                              ## @.str.39
	.asciz	"%s: srtcp using provisional stream (SSRC: 0x%08x)\n"

L_.str.40:                              ## @.str.40
	.asciz	"%s: srtcp computed tag:       %s\n"

L_.str.41:                              ## @.str.41
	.asciz	"%s: srtcp tag from packet:    %s\n"

.zerofill __DATA,__bss,_srtp_log_handler,8,3 ## @srtp_log_handler
.zerofill __DATA,__bss,_srtp_log_handler_data,8,3 ## @srtp_log_handler_data
L_.str.42:                              ## @.str.42
	.asciz	"%s: function srtp_protect_aead\n"

L_.str.43:                              ## @.str.43
	.asciz	"%s: Pre-salted RTP IV = %s\n\n"

L_.str.44:                              ## @.str.44
	.asciz	"%s: RTP SALT = %s\n\n"

L_.str.45:                              ## @.str.45
	.asciz	"%s: function srtp_unprotect_aead\n"

	.section	__TEXT,__const
	.p2align	3, 0x0                          ## @__const.update_template_streams.old_rtcp_rdb
l___const.update_template_streams.old_rtcp_rdb:
	.long	2863311530                      ## 0xaaaaaaaa
	.space	4,170
	.space	16,170

	.p2align	3, 0x0                          ## @__const.update_stream.old_rtcp_rdb
l___const.update_stream.old_rtcp_rdb:
	.long	2863311530                      ## 0xaaaaaaaa
	.space	4,170
	.space	16,170

	.section	__TEXT,__cstring,cstring_literals
L_.str.46:                              ## @.str.46
	.asciz	"%s: Pre-salted RTCP IV = %s\n\n"

L_.str.47:                              ## @.str.47
	.asciz	"%s: RTCP SALT = %s\n\n"

.subsections_via_symbols
