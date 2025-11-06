	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_avpriv_update_cur_dts  ## -- Begin function avpriv_update_cur_dts
	.globl	_avpriv_update_cur_dts
	.p2align	4
_avpriv_update_cur_dts:                 ## @avpriv_update_cur_dts
## %bb.0:                               ## %entry
	subq	$56, %rsp
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	$-1431655766, 20(%rsp)          ## imm = 0xAAAAAAAA
	movl	$0, 20(%rsp)
LBB0_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	20(%rsp), %eax
	movq	40(%rsp), %rcx
	cmpl	44(%rcx), %eax
	jb	LBB0_3
## %bb.2:                               ## %for.cond.cleanup
	jmp	LBB0_5
LBB0_3:                                 ## %for.body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rax
	movq	48(%rax), %rax
	movl	20(%rsp), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 8(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, (%rsp)
	movq	8(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, (%rsp)
	movq	24(%rsp), %rdi
	movq	8(%rsp), %rax
	movslq	36(%rax), %rsi
	movq	32(%rsp), %rax
	movslq	32(%rax), %rax
	imulq	%rax, %rsi
	movq	8(%rsp), %rax
	movslq	32(%rax), %rdx
	movq	32(%rsp), %rax
	movslq	36(%rax), %rax
	imulq	%rax, %rdx
	callq	_av_rescale
	movq	%rax, %rcx
	movq	(%rsp), %rax
	movq	%rcx, 832(%rax)
## %bb.4:                               ## %for.inc
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	20(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rsp)
	jmp	LBB0_1
LBB0_5:                                 ## %for.end
	addq	$56, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_reduce_index        ## -- Begin function ff_reduce_index
	.globl	_ff_reduce_index
	.p2align	4
_ff_reduce_index:                       ## @ff_reduce_index
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movl	%esi, -20(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -32(%rsp)
	movq	-16(%rsp), %rax
	movq	48(%rax), %rax
	movslq	-20(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rsp)
	movq	-32(%rsp), %rax
	movq	%rax, -8(%rsp)
	movq	-8(%rsp), %rax
	movq	%rax, -40(%rsp)
	movl	$-1431655766, -44(%rsp)         ## imm = 0xAAAAAAAA
	movq	-16(%rsp), %rax
	movl	156(%rax), %eax
                                        ## kill: def $rax killed $eax
	movl	$24, %ecx
	xorl	%edx, %edx
                                        ## kill: def $rdx killed $edx
	divq	%rcx
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rsp)
	movq	-40(%rsp), %rax
	movl	320(%rax), %eax
	cmpl	-44(%rsp), %eax
	jb	LBB1_6
## %bb.1:                               ## %if.then
	movl	$-1431655766, -48(%rsp)         ## imm = 0xAAAAAAAA
	movl	$0, -48(%rsp)
LBB1_2:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-48(%rsp), %eax
	shll	%eax
	movq	-40(%rsp), %rcx
	cmpl	320(%rcx), %eax
	jge	LBB1_5
## %bb.3:                               ## %for.body
                                        ##   in Loop: Header=BB1_2 Depth=1
	movq	-40(%rsp), %rax
	movq	312(%rax), %rax
	movslq	-48(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	-40(%rsp), %rcx
	movq	312(%rcx), %rcx
	movl	-48(%rsp), %edx
	shll	%edx
	movslq	%edx, %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
## %bb.4:                               ## %for.inc
                                        ##   in Loop: Header=BB1_2 Depth=1
	movl	-48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rsp)
	jmp	LBB1_2
LBB1_5:                                 ## %for.end
	movl	-48(%rsp), %ecx
	movq	-40(%rsp), %rax
	movl	%ecx, 320(%rax)
LBB1_6:                                 ## %if.end
	retq
                                        ## -- End function
	.private_extern	_ff_add_index_entry     ## -- Begin function ff_add_index_entry
	.globl	_ff_add_index_entry
	.p2align	4
_ff_add_index_entry:                    ## @ff_add_index_entry
## %bb.0:                               ## %entry
	subq	$88, %rsp
	movl	104(%rsp), %eax
	movl	96(%rsp), %eax
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%r8, 32(%rsp)
	movl	%r9d, 28(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movl	$-1431655766, 4(%rsp)           ## imm = 0xAAAAAAAA
	movq	56(%rsp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$178956970, %rax                ## imm = 0xAAAAAAA
	jb	LBB2_2
## %bb.1:                               ## %if.then
	movl	$-1, 76(%rsp)
	movl	$1, (%rsp)
	jmp	LBB2_29
LBB2_2:                                 ## %if.end
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 32(%rsp)
	jne	LBB2_4
## %bb.3:                               ## %if.then4
	movl	$-22, 76(%rsp)
	movl	$1, (%rsp)
	jmp	LBB2_29
LBB2_4:                                 ## %if.end5
	cmpl	$0, 28(%rsp)
	jl	LBB2_6
## %bb.5:                               ## %lor.lhs.false
	cmpl	$1073741823, 28(%rsp)           ## imm = 0x3FFFFFFF
	jle	LBB2_7
LBB2_6:                                 ## %if.then10
	movl	$-22, 76(%rsp)
	movl	$1, (%rsp)
	jmp	LBB2_29
LBB2_7:                                 ## %if.end11
	movq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	movabsq	$9222809086901354495, %rax      ## imm = 0x7FFDFFFFFFFFFFFF
	cmpq	%rax, 80(%rsp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	cmpl	$0, %eax
	je	LBB2_9
## %bb.8:                               ## %if.then12
	movq	32(%rsp), %rax
	movabsq	$9223090561878065151, %rcx      ## imm = 0x7FFEFFFFFFFFFFFF
	subq	%rcx, %rax
	movq	%rax, 32(%rsp)
LBB2_9:                                 ## %if.end13
	movq	64(%rsp), %rax
	movq	(%rax), %rdi
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	cltq
	imulq	$24, %rax, %rdx
	callq	_av_fast_realloc
	movq	%rax, 16(%rsp)
	cmpq	$0, 16(%rsp)
	jne	LBB2_11
## %bb.10:                              ## %if.then18
	movl	$-1, 76(%rsp)
	movl	$1, (%rsp)
	jmp	LBB2_29
LBB2_11:                                ## %if.end19
	movq	16(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	%rcx, (%rax)
	movq	64(%rsp), %rax
	movq	(%rax), %rdi
	movq	56(%rsp), %rax
	movl	(%rax), %esi
	movq	32(%rsp), %rdx
	movl	$4, %ecx
	callq	_ff_index_search_timestamp
	movl	%eax, 4(%rsp)
	cmpl	$0, 4(%rsp)
	jge	LBB2_19
## %bb.12:                              ## %if.then23
	movq	56(%rsp), %rcx
	movl	(%rcx), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rax
	movslq	4(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
## %bb.13:                              ## %do.body
	cmpl	$0, 4(%rsp)
	je	LBB2_16
## %bb.14:                              ## %lor.lhs.false26
	movq	8(%rsp), %rax
	movq	-16(%rax), %rax
	cmpq	32(%rsp), %rax
	jl	LBB2_16
## %bb.15:                              ## %if.then31
	callq	_abort
LBB2_16:                                ## %if.end32
	jmp	LBB2_17
LBB2_17:                                ## %do.cond
	jmp	LBB2_18
LBB2_18:                                ## %do.end
	jmp	LBB2_28
LBB2_19:                                ## %if.else
	movq	16(%rsp), %rax
	movslq	4(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	32(%rsp), %rax
	je	LBB2_23
## %bb.20:                              ## %if.then38
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	32(%rsp), %rax
	jg	LBB2_22
## %bb.21:                              ## %if.then42
	movl	$-1, 76(%rsp)
	movl	$1, (%rsp)
	jmp	LBB2_29
LBB2_22:                                ## %if.end43
	movq	16(%rsp), %rdi
	movslq	4(%rsp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rdi
	addq	$24, %rdi
	movq	16(%rsp), %rsi
	movslq	4(%rsp), %rax
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	movq	56(%rsp), %rax
	movl	(%rax), %eax
	subl	4(%rsp), %eax
	cltq
	imulq	$24, %rax, %rdx
	callq	_memmove
	movq	56(%rsp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB2_27
LBB2_23:                                ## %if.else51
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	cmpq	40(%rsp), %rax
	jne	LBB2_26
## %bb.24:                              ## %land.lhs.true
	movl	96(%rsp), %eax
	movq	8(%rsp), %rcx
	cmpl	20(%rcx), %eax
	jge	LBB2_26
## %bb.25:                              ## %if.then57
	movq	8(%rsp), %rax
	movl	20(%rax), %eax
	movl	%eax, 96(%rsp)
LBB2_26:                                ## %if.end59
	jmp	LBB2_27
LBB2_27:                                ## %if.end60
	jmp	LBB2_28
LBB2_28:                                ## %if.end61
	movq	40(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, (%rax)
	movq	32(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, 8(%rax)
	movl	96(%rsp), %ecx
	movq	8(%rsp), %rax
	movl	%ecx, 20(%rax)
	movl	28(%rsp), %edx
	movq	8(%rsp), %rax
	movl	16(%rax), %ecx
	andl	$1073741823, %edx               ## imm = 0x3FFFFFFF
	shll	$2, %edx
	andl	$3, %ecx
	orl	%edx, %ecx
	movl	%ecx, 16(%rax)
	movl	104(%rsp), %edx
	movq	8(%rsp), %rax
	movl	16(%rax), %ecx
	andl	$3, %edx
	andl	$-4, %ecx
	orl	%edx, %ecx
	movl	%ecx, 16(%rax)
	movl	4(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	$1, (%rsp)
LBB2_29:                                ## %cleanup
	movl	76(%rsp), %eax
	addq	$88, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_index_search_timestamp ## -- Begin function ff_index_search_timestamp
	.globl	_ff_index_search_timestamp
	.p2align	4
_ff_index_search_timestamp:             ## @ff_index_search_timestamp
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movl	%esi, -20(%rsp)
	movq	%rdx, -32(%rsp)
	movl	%ecx, -36(%rsp)
	movl	$-1431655766, -40(%rsp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -44(%rsp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -48(%rsp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rsp)
	movl	$-1, -40(%rsp)
	movl	-20(%rsp), %eax
	movl	%eax, -44(%rsp)
	cmpl	$0, -44(%rsp)
	je	LBB3_3
## %bb.1:                               ## %land.lhs.true
	movq	-16(%rsp), %rax
	movl	-44(%rsp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	-32(%rsp), %rax
	jge	LBB3_3
## %bb.2:                               ## %if.then
	movl	-44(%rsp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rsp)
LBB3_3:                                 ## %if.end
	jmp	LBB3_4
LBB3_4:                                 ## %while.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_6 Depth 2
	movl	-44(%rsp), %eax
	subl	-40(%rsp), %eax
	cmpl	$1, %eax
	jle	LBB3_19
## %bb.5:                               ## %while.body
                                        ##   in Loop: Header=BB3_4 Depth=1
	movl	-40(%rsp), %eax
	addl	-44(%rsp), %eax
	sarl	%eax
	movl	%eax, -48(%rsp)
LBB3_6:                                 ## %while.cond5
                                        ##   Parent Loop BB3_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-16(%rsp), %rax
	movslq	-48(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %ecx
	shll	$30, %ecx
	sarl	$30, %ecx
	andl	$2, %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -61(%rsp)                  ## 1-byte Spill
	je	LBB3_9
## %bb.7:                               ## %land.lhs.true10
                                        ##   in Loop: Header=BB3_6 Depth=2
	movl	-48(%rsp), %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	-44(%rsp), %ecx
	movb	%al, -61(%rsp)                  ## 1-byte Spill
	jge	LBB3_9
## %bb.8:                               ## %land.rhs
                                        ##   in Loop: Header=BB3_6 Depth=2
	movl	-48(%rsp), %eax
	movl	-20(%rsp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	setl	%al
	movb	%al, -61(%rsp)                  ## 1-byte Spill
LBB3_9:                                 ## %land.end
                                        ##   in Loop: Header=BB3_6 Depth=2
	movb	-61(%rsp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_10
	jmp	LBB3_14
LBB3_10:                                ## %while.body14
                                        ##   in Loop: Header=BB3_6 Depth=2
	movl	-48(%rsp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rsp)
	movl	-48(%rsp), %eax
	cmpl	-44(%rsp), %eax
	jne	LBB3_13
## %bb.11:                              ## %land.lhs.true16
                                        ##   in Loop: Header=BB3_6 Depth=2
	movq	-16(%rsp), %rax
	movslq	-48(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	cmpq	-32(%rsp), %rax
	jl	LBB3_13
## %bb.12:                              ## %if.then21
                                        ##   in Loop: Header=BB3_4 Depth=1
	movl	-44(%rsp), %eax
	subl	$1, %eax
	movl	%eax, -48(%rsp)
	jmp	LBB3_14
LBB3_13:                                ## %if.end23
                                        ##   in Loop: Header=BB3_6 Depth=2
	jmp	LBB3_6
LBB3_14:                                ## %while.end
                                        ##   in Loop: Header=BB3_4 Depth=1
	movq	-16(%rsp), %rax
	movslq	-48(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	cmpq	-32(%rsp), %rax
	jl	LBB3_16
## %bb.15:                              ## %if.then28
                                        ##   in Loop: Header=BB3_4 Depth=1
	movl	-48(%rsp), %eax
	movl	%eax, -44(%rsp)
LBB3_16:                                ## %if.end29
                                        ##   in Loop: Header=BB3_4 Depth=1
	movq	-56(%rsp), %rax
	cmpq	-32(%rsp), %rax
	jg	LBB3_18
## %bb.17:                              ## %if.then31
                                        ##   in Loop: Header=BB3_4 Depth=1
	movl	-48(%rsp), %eax
	movl	%eax, -40(%rsp)
LBB3_18:                                ## %if.end32
                                        ##   in Loop: Header=BB3_4 Depth=1
	jmp	LBB3_4
LBB3_19:                                ## %while.end33
	movl	-36(%rsp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB3_21
## %bb.20:                              ## %cond.true
	movl	-40(%rsp), %eax
	movl	%eax, -68(%rsp)                 ## 4-byte Spill
	jmp	LBB3_22
LBB3_21:                                ## %cond.false
	movl	-44(%rsp), %eax
	movl	%eax, -68(%rsp)                 ## 4-byte Spill
LBB3_22:                                ## %cond.end
	movl	-68(%rsp), %eax                 ## 4-byte Reload
	movl	%eax, -48(%rsp)
	movl	-36(%rsp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	jne	LBB3_30
## %bb.23:                              ## %if.then38
	jmp	LBB3_24
LBB3_24:                                ## %while.cond39
                                        ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -48(%rsp)
	movb	%al, -69(%rsp)                  ## 1-byte Spill
	jl	LBB3_27
## %bb.25:                              ## %land.lhs.true41
                                        ##   in Loop: Header=BB3_24 Depth=1
	movl	-48(%rsp), %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	-20(%rsp), %ecx
	movb	%al, -69(%rsp)                  ## 1-byte Spill
	jge	LBB3_27
## %bb.26:                              ## %land.rhs43
                                        ##   in Loop: Header=BB3_24 Depth=1
	movq	-16(%rsp), %rax
	movslq	-48(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	16(%rax), %eax
	shll	$30, %eax
	sarl	$30, %eax
	andl	$1, %eax
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	movb	%al, -69(%rsp)                  ## 1-byte Spill
LBB3_27:                                ## %land.end52
                                        ##   in Loop: Header=BB3_24 Depth=1
	movb	-69(%rsp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB3_28
	jmp	LBB3_29
LBB3_28:                                ## %while.body53
                                        ##   in Loop: Header=BB3_24 Depth=1
	movl	-36(%rsp), %edx
	andl	$1, %edx
	movl	$1, %eax
	movl	$4294967295, %ecx               ## imm = 0xFFFFFFFF
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	addl	-48(%rsp), %eax
	movl	%eax, -48(%rsp)
	jmp	LBB3_24
LBB3_29:                                ## %while.end58
	jmp	LBB3_30
LBB3_30:                                ## %if.end59
	movl	-48(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jne	LBB3_32
## %bb.31:                              ## %if.then61
	movl	$-1, -4(%rsp)
	movl	$1, -60(%rsp)
	jmp	LBB3_33
LBB3_32:                                ## %if.end62
	movl	-48(%rsp), %eax
	movl	%eax, -4(%rsp)
	movl	$1, -60(%rsp)
LBB3_33:                                ## %cleanup
	movl	-4(%rsp), %eax
	retq
                                        ## -- End function
	.private_extern	_av_add_index_entry     ## -- Begin function av_add_index_entry
	.globl	_av_add_index_entry
	.p2align	4
_av_add_index_entry:                    ## @av_add_index_entry
## %bb.0:                               ## %entry
	subq	$72, %rsp
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%r8d, 32(%rsp)
	movl	%r9d, 28(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	56(%rsp), %rdi
	movq	40(%rsp), %rsi
	callq	_ff_wrap_timestamp
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rdi
	addq	$312, %rdi                      ## imm = 0x138
	movq	16(%rsp), %rsi
	addq	$320, %rsi                      ## imm = 0x140
	movq	16(%rsp), %rdx
	addq	$324, %rdx                      ## imm = 0x144
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movl	36(%rsp), %r9d
	movl	32(%rsp), %r10d
	movl	28(%rsp), %eax
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	_ff_add_index_entry
	addq	$72, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_configure_buffers_for_index ## -- Begin function ff_configure_buffers_for_index
	.globl	_ff_configure_buffers_for_index
	.p2align	4
_ff_configure_buffers_for_index:        ## @ff_configure_buffers_for_index
## %bb.0:                               ## %entry
	subq	$232, %rsp
	movq	%rdi, 200(%rsp)
	movq	%rsi, 192(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 184(%rsp)
	movq	$0, 184(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 176(%rsp)
	movq	$0, 176(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 168(%rsp)
	movq	200(%rsp), %rax
	movq	56(%rax), %rdi
	callq	_avio_find_protocol_name
	movq	%rax, 168(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 160(%rsp)
## %bb.1:                               ## %do.body
	cmpq	$0, 192(%rsp)
	jge	LBB5_3
## %bb.2:                               ## %if.then
	callq	_abort
LBB5_3:                                 ## %if.end
	jmp	LBB5_4
LBB5_4:                                 ## %do.cond
	jmp	LBB5_5
LBB5_5:                                 ## %do.end
	cmpq	$0, 168(%rsp)
	jne	LBB5_7
## %bb.6:                               ## %if.then1
	jmp	LBB5_7
LBB5_7:                                 ## %if.end2
	cmpq	$0, 168(%rsp)
	je	LBB5_12
## %bb.8:                               ## %land.lhs.true
	movq	168(%rsp), %rdi
	leaq	L_.str(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB5_11
## %bb.9:                               ## %land.lhs.true6
	movq	168(%rsp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB5_11
## %bb.10:                              ## %land.lhs.true9
	movq	168(%rsp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB5_12
LBB5_11:                                ## %if.then12
	movl	$1, 156(%rsp)
	jmp	LBB5_63
LBB5_12:                                ## %if.end13
	movl	$-1431655766, 152(%rsp)         ## imm = 0xAAAAAAAA
	movl	$0, 152(%rsp)
LBB5_13:                                ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_16 Depth 2
                                        ##       Child Loop BB5_21 Depth 3
                                        ##         Child Loop BB5_29 Depth 4
	movl	152(%rsp), %eax
	movq	200(%rsp), %rcx
	cmpl	44(%rcx), %eax
	jb	LBB5_15
## %bb.14:                              ## %for.cond.cleanup
	movl	$4, 156(%rsp)
	jmp	LBB5_52
LBB5_15:                                ## %for.body
                                        ##   in Loop: Header=BB5_13 Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 144(%rsp)
	movq	200(%rsp), %rax
	movq	48(%rax), %rax
	movl	152(%rsp), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 144(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 136(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 136(%rsp)
	movl	$-1431655766, 132(%rsp)         ## imm = 0xAAAAAAAA
	movl	$0, 132(%rsp)
LBB5_16:                                ## %for.cond16
                                        ##   Parent Loop BB5_13 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB5_21 Depth 3
                                        ##         Child Loop BB5_29 Depth 4
	movl	132(%rsp), %eax
	movq	200(%rsp), %rcx
	cmpl	44(%rcx), %eax
	jb	LBB5_18
## %bb.17:                              ## %for.cond.cleanup19
                                        ##   in Loop: Header=BB5_13 Depth=1
	movl	$7, 156(%rsp)
	jmp	LBB5_50
LBB5_18:                                ## %for.body20
                                        ##   in Loop: Header=BB5_16 Depth=2
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 120(%rsp)
	movq	200(%rsp), %rax
	movq	48(%rax), %rax
	movl	132(%rsp), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 112(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 112(%rsp)
	movl	152(%rsp), %eax
	cmpl	132(%rsp), %eax
	jne	LBB5_20
## %bb.19:                              ## %if.then26
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	$9, 156(%rsp)
	jmp	LBB5_47
LBB5_20:                                ## %if.end27
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	$-1431655766, 108(%rsp)         ## imm = 0xAAAAAAAA
	movl	$0, 108(%rsp)
	movl	$-1431655766, 104(%rsp)         ## imm = 0xAAAAAAAA
	movl	$0, 104(%rsp)
LBB5_21:                                ## %for.cond28
                                        ##   Parent Loop BB5_13 Depth=1
                                        ##     Parent Loop BB5_16 Depth=2
                                        ## =>    This Loop Header: Depth=3
                                        ##         Child Loop BB5_29 Depth 4
	movl	108(%rsp), %eax
	movq	136(%rsp), %rcx
	cmpl	320(%rcx), %eax
	jl	LBB5_23
## %bb.22:                              ## %for.cond.cleanup30
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	$10, 156(%rsp)
	jmp	LBB5_46
LBB5_23:                                ## %for.body31
                                        ##   in Loop: Header=BB5_21 Depth=3
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 96(%rsp)
	movq	136(%rsp), %rax
	movq	312(%rax), %rax
	movslq	108(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 96(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rax
	movq	8(%rax), %rdi
	movq	144(%rsp), %rax
	movl	$1, 80(%rsp)
	movl	$1000000, 84(%rsp)              ## imm = 0xF4240
	movq	32(%rax), %rsi
	movq	80(%rsp), %rdx
	callq	_av_rescale_q
	movq	%rax, 88(%rsp)
	movq	96(%rsp), %rax
	movl	16(%rax), %eax
	sarl	$2, %eax
	cmpl	$8388608, %eax                  ## imm = 0x800000
	jge	LBB5_28
## %bb.24:                              ## %if.then36
                                        ##   in Loop: Header=BB5_21 Depth=3
	movq	176(%rsp), %rax
	movq	96(%rsp), %rcx
	movl	16(%rcx), %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	jle	LBB5_26
## %bb.25:                              ## %cond.true
                                        ##   in Loop: Header=BB5_21 Depth=3
	movq	176(%rsp), %rax
	movq	%rax, 40(%rsp)                  ## 8-byte Spill
	jmp	LBB5_27
LBB5_26:                                ## %cond.false
                                        ##   in Loop: Header=BB5_21 Depth=3
	movq	96(%rsp), %rax
	movl	16(%rax), %eax
	sarl	$2, %eax
	cltq
	movq	%rax, 40(%rsp)                  ## 8-byte Spill
LBB5_27:                                ## %cond.end
                                        ##   in Loop: Header=BB5_21 Depth=3
	movq	40(%rsp), %rax                  ## 8-byte Reload
	movq	%rax, 176(%rsp)
LBB5_28:                                ## %if.end46
                                        ##   in Loop: Header=BB5_21 Depth=3
	jmp	LBB5_29
LBB5_29:                                ## %for.cond47
                                        ##   Parent Loop BB5_13 Depth=1
                                        ##     Parent Loop BB5_16 Depth=2
                                        ##       Parent Loop BB5_21 Depth=3
                                        ## =>      This Inner Loop Header: Depth=4
	movl	104(%rsp), %eax
	movq	112(%rsp), %rcx
	cmpl	320(%rcx), %eax
	jge	LBB5_44
## %bb.30:                              ## %for.body51
                                        ##   in Loop: Header=BB5_29 Depth=4
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 72(%rsp)
	movq	112(%rsp), %rax
	movq	312(%rax), %rax
	movslq	104(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rax
	movq	8(%rax), %rdi
	movq	120(%rsp), %rax
	movl	$1, 56(%rsp)
	movl	$1000000, 60(%rsp)              ## imm = 0xF4240
	movq	32(%rax), %rsi
	movq	56(%rsp), %rdx
	callq	_av_rescale_q
	movq	%rax, 64(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rax
	cmpq	88(%rsp), %rax
	jl	LBB5_32
## %bb.31:                              ## %lor.lhs.false
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	64(%rsp), %rax
	subq	88(%rsp), %rax
	cmpq	192(%rsp), %rax
	jae	LBB5_33
LBB5_32:                                ## %if.then65
                                        ##   in Loop: Header=BB5_29 Depth=4
	movl	$15, 156(%rsp)
	jmp	LBB5_42
LBB5_33:                                ## %if.end66
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	96(%rsp), %rax
	movq	(%rax), %rax
	movq	72(%rsp), %rcx
	subq	(%rcx), %rax
	cmpq	$0, %rax
	jl	LBB5_35
## %bb.34:                              ## %cond.true71
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	96(%rsp), %rax
	movq	(%rax), %rax
	movq	72(%rsp), %rcx
	subq	(%rcx), %rax
	movq	%rax, 32(%rsp)                  ## 8-byte Spill
	jmp	LBB5_36
LBB5_35:                                ## %cond.false75
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	96(%rsp), %rax
	movq	(%rax), %rcx
	movq	72(%rsp), %rax
	subq	(%rax), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	%rcx, %rax
	movq	%rax, 32(%rsp)                  ## 8-byte Spill
LBB5_36:                                ## %cond.end80
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	32(%rsp), %rax                  ## 8-byte Reload
	movq	%rax, 48(%rsp)
	cmpq	$8388608, 48(%rsp)              ## imm = 0x800000
	jge	LBB5_41
## %bb.37:                              ## %if.then84
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	184(%rsp), %rax
	cmpq	48(%rsp), %rax
	jle	LBB5_39
## %bb.38:                              ## %cond.true87
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	184(%rsp), %rax
	movq	%rax, 24(%rsp)                  ## 8-byte Spill
	jmp	LBB5_40
LBB5_39:                                ## %cond.false88
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	48(%rsp), %rax
	movq	%rax, 24(%rsp)                  ## 8-byte Spill
LBB5_40:                                ## %cond.end89
                                        ##   in Loop: Header=BB5_29 Depth=4
	movq	24(%rsp), %rax                  ## 8-byte Reload
	movq	%rax, 184(%rsp)
LBB5_41:                                ## %if.end91
                                        ##   in Loop: Header=BB5_29 Depth=4
	movl	$13, 156(%rsp)
LBB5_42:                                ## %cleanup
                                        ##   in Loop: Header=BB5_29 Depth=4
	movl	156(%rsp), %eax
	subl	$13, %eax
	je	LBB5_44
	jmp	LBB5_66
LBB5_66:                                ## %cleanup
                                        ##   in Loop: Header=BB5_29 Depth=4
## %bb.43:                              ## %for.inc
                                        ##   in Loop: Header=BB5_29 Depth=4
	movl	104(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 104(%rsp)
	jmp	LBB5_29
LBB5_44:                                ## %for.end
                                        ##   in Loop: Header=BB5_21 Depth=3
## %bb.45:                              ## %for.inc94
                                        ##   in Loop: Header=BB5_21 Depth=3
	movl	108(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 108(%rsp)
	jmp	LBB5_21
LBB5_46:                                ## %for.end98
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	$0, 156(%rsp)
LBB5_47:                                ## %cleanup99
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	156(%rsp), %eax
	testl	%eax, %eax
	je	LBB5_48
	jmp	LBB5_67
LBB5_67:                                ## %cleanup99
                                        ##   in Loop: Header=BB5_16 Depth=2
	jmp	LBB5_49
LBB5_48:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB5_16 Depth=2
	jmp	LBB5_49
LBB5_49:                                ## %for.inc102
                                        ##   in Loop: Header=BB5_16 Depth=2
	movl	132(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 132(%rsp)
	jmp	LBB5_16
LBB5_50:                                ## %for.end105
                                        ##   in Loop: Header=BB5_13 Depth=1
## %bb.51:                              ## %for.inc106
                                        ##   in Loop: Header=BB5_13 Depth=1
	movl	152(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 152(%rsp)
	jmp	LBB5_13
LBB5_52:                                ## %for.end109
	movq	184(%rsp), %rax
	shlq	%rax
	movq	%rax, 184(%rsp)
	movq	200(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 224(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 160(%rsp)
	movq	200(%rsp), %rax
	movq	32(%rax), %rax
	movslq	16(%rax), %rax
	cmpq	184(%rsp), %rax
	jge	LBB5_59
## %bb.53:                              ## %if.then115
	movq	200(%rsp), %rax
	movq	32(%rax), %rdi
	movq	184(%rsp), %rax
	movl	%eax, %esi
	callq	_ffio_realloc_buf
	cmpl	$0, %eax
	je	LBB5_55
## %bb.54:                              ## %if.then120
	movl	$1, 156(%rsp)
	jmp	LBB5_63
LBB5_55:                                ## %if.end121
	movq	160(%rsp), %rax
	movslq	216(%rax), %rax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
	movq	184(%rsp), %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, %rcx
	movq	16(%rsp), %rax                  ## 8-byte Reload
	cmpq	%rcx, %rax
	jle	LBB5_57
## %bb.56:                              ## %cond.true125
	movq	160(%rsp), %rax
	movslq	216(%rax), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB5_58
LBB5_57:                                ## %cond.false128
	movq	184(%rsp), %rax
	movl	$2, %ecx
	cqto
	idivq	%rcx
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB5_58:                                ## %cond.end130
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movl	%eax, %ecx
	movq	160(%rsp), %rax
	movl	%ecx, 216(%rax)
LBB5_59:                                ## %if.end134
	movq	160(%rsp), %rax
	movslq	216(%rax), %rax
	cmpq	176(%rsp), %rax
	jle	LBB5_61
## %bb.60:                              ## %cond.true139
	movq	160(%rsp), %rax
	movslq	216(%rax), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB5_62
LBB5_61:                                ## %cond.false142
	movq	176(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB5_62:                                ## %cond.end143
	movq	(%rsp), %rax                    ## 8-byte Reload
	movl	%eax, %ecx
	movq	160(%rsp), %rax
	movl	%ecx, 216(%rax)
	movl	$0, 156(%rsp)
LBB5_63:                                ## %cleanup147
## %bb.64:                              ## %cleanup.cont152
	addq	$232, %rsp
	retq
## %bb.65:                              ## %unreachable
	ud2
                                        ## -- End function
	.private_extern	_av_index_search_timestamp ## -- Begin function av_index_search_timestamp
	.globl	_av_index_search_timestamp
	.p2align	4
_av_index_search_timestamp:             ## @av_index_search_timestamp
## %bb.0:                               ## %entry
	subq	$40, %rsp
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 12(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, (%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rax
	movq	312(%rax), %rdi
	movq	(%rsp), %rax
	movl	320(%rax), %esi
	movq	16(%rsp), %rdx
	movl	12(%rsp), %ecx
	callq	_ff_index_search_timestamp
	addq	$40, %rsp
	retq
                                        ## -- End function
	.private_extern	_avformat_index_get_entries_count ## -- Begin function avformat_index_get_entries_count
	.globl	_avformat_index_get_entries_count
	.p2align	4
_avformat_index_get_entries_count:      ## @avformat_index_get_entries_count
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	-16(%rsp), %rax
	movq	%rax, -8(%rsp)
	movq	-8(%rsp), %rax
	movl	320(%rax), %eax
	retq
                                        ## -- End function
	.private_extern	_avformat_index_get_entry ## -- Begin function avformat_index_get_entry
	.globl	_avformat_index_get_entry
	.p2align	4
_avformat_index_get_entry:              ## @avformat_index_get_entry
## %bb.0:                               ## %entry
	movq	%rdi, -24(%rsp)
	movl	%esi, -28(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rsp)
	movq	-24(%rsp), %rax
	movq	%rax, -8(%rsp)
	movq	-8(%rsp), %rax
	movq	%rax, -40(%rsp)
	cmpl	$0, -28(%rsp)
	jl	LBB8_2
## %bb.1:                               ## %lor.lhs.false
	movl	-28(%rsp), %eax
	movq	-40(%rsp), %rcx
	cmpl	320(%rcx), %eax
	jl	LBB8_3
LBB8_2:                                 ## %if.then
	movq	$0, -16(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB8_4
LBB8_3:                                 ## %if.end
	movq	-40(%rsp), %rax
	movq	312(%rax), %rax
	movslq	-28(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, -16(%rsp)
	movl	$1, -44(%rsp)
LBB8_4:                                 ## %cleanup
	movq	-16(%rsp), %rax
	retq
                                        ## -- End function
	.private_extern	_avformat_index_get_entry_from_timestamp ## -- Begin function avformat_index_get_entry_from_timestamp
	.globl	_avformat_index_get_entry_from_timestamp
	.p2align	4
_avformat_index_get_entry_from_timestamp: ## @avformat_index_get_entry_from_timestamp
## %bb.0:                               ## %entry
	subq	$56, %rsp
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$-1431655766, 4(%rsp)           ## imm = 0xAAAAAAAA
	movq	8(%rsp), %rax
	movq	312(%rax), %rdi
	movq	8(%rsp), %rax
	movl	320(%rax), %esi
	movq	24(%rsp), %rdx
	movl	20(%rsp), %ecx
	callq	_ff_index_search_timestamp
	movl	%eax, 4(%rsp)
	cmpl	$0, 4(%rsp)
	jge	LBB9_2
## %bb.1:                               ## %if.then
	movq	$0, 40(%rsp)
	movl	$1, (%rsp)
	jmp	LBB9_3
LBB9_2:                                 ## %if.end
	movq	8(%rsp), %rax
	movq	312(%rax), %rax
	movslq	4(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 40(%rsp)
	movl	$1, (%rsp)
LBB9_3:                                 ## %cleanup
	movq	40(%rsp), %rax
	addq	$56, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_seek_frame_binary   ## -- Begin function ff_seek_frame_binary
	.globl	_ff_seek_frame_binary
	.p2align	4
_ff_seek_frame_binary:                  ## @ff_seek_frame_binary
## %bb.0:                               ## %entry
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdi, 192(%rsp)
	movl	%esi, 188(%rsp)
	movq	%rdx, 176(%rsp)
	movl	%ecx, 172(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 160(%rsp)
	movq	192(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 160(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 152(%rsp)
	movq	$0, 152(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 144(%rsp)
	movq	$0, 144(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 136(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 128(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 120(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 112(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 104(%rsp)
	movl	$-1431655766, 100(%rsp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 88(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 80(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 72(%rsp)
	cmpl	$0, 188(%rsp)
	jge	LBB10_2
## %bb.1:                               ## %if.then
	movl	$-1, 204(%rsp)
	movl	$1, 68(%rsp)
	jmp	LBB10_23
LBB10_2:                                ## %if.end
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	movq	%rax, 120(%rsp)
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	movq	%rax, 112(%rsp)
	movq	$-1, 128(%rsp)
	movq	192(%rsp), %rax
	movq	48(%rax), %rax
	movslq	188(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	cmpq	$0, 312(%rax)
	je	LBB10_18
## %bb.3:                               ## %if.then1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rdi
	movq	176(%rsp), %rsi
	movl	172(%rsp), %edx
	orl	$1, %edx
	callq	_av_index_search_timestamp
	movl	%eax, 100(%rsp)
	cmpl	$0, 100(%rsp)
	jle	LBB10_5
## %bb.4:                               ## %cond.true
	movl	100(%rsp), %eax
	movl	%eax, 52(%rsp)                  ## 4-byte Spill
	jmp	LBB10_6
LBB10_5:                                ## %cond.false
	xorl	%eax, %eax
	movl	%eax, 52(%rsp)                  ## 4-byte Spill
	jmp	LBB10_6
LBB10_6:                                ## %cond.end
	movl	52(%rsp), %eax                  ## 4-byte Reload
	movl	%eax, 100(%rsp)
	movq	72(%rsp), %rax
	movq	312(%rax), %rax
	movslq	100(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	176(%rsp), %rax
	jle	LBB10_8
## %bb.7:                               ## %lor.lhs.false
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	56(%rsp), %rcx
	movslq	20(%rcx), %rcx
	cmpq	%rcx, %rax
	jne	LBB10_9
LBB10_8:                                ## %if.then11
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 152(%rsp)
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 120(%rsp)
	jmp	LBB10_10
LBB10_9:                                ## %if.else
	jmp	LBB10_10
LBB10_10:                               ## %if.end14
	movq	80(%rsp), %rdi
	movq	176(%rsp), %rsi
	movl	172(%rsp), %edx
	andl	$-2, %edx
	callq	_av_index_search_timestamp
	movl	%eax, 100(%rsp)
## %bb.11:                              ## %do.body
	movl	100(%rsp), %eax
	movq	72(%rsp), %rcx
	cmpl	320(%rcx), %eax
	jl	LBB10_13
## %bb.12:                              ## %if.then18
	callq	_abort
LBB10_13:                               ## %if.end19
	jmp	LBB10_14
LBB10_14:                               ## %do.cond
	jmp	LBB10_15
LBB10_15:                               ## %do.end
	cmpl	$0, 100(%rsp)
	jl	LBB10_17
## %bb.16:                              ## %if.then22
	movq	72(%rsp), %rax
	movq	312(%rax), %rax
	movslq	100(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 144(%rsp)
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 112(%rsp)
	movq	144(%rsp), %rax
	movq	56(%rsp), %rcx
	movslq	20(%rcx), %rcx
	subq	%rcx, %rax
	movq	%rax, 128(%rsp)
LBB10_17:                               ## %if.end30
LBB10_18:                               ## %if.end31
	movq	192(%rsp), %rdi
	movl	188(%rsp), %esi
	movq	176(%rsp), %rdx
	movq	152(%rsp), %rcx
	movq	144(%rsp), %r8
	movq	128(%rsp), %r9
	movq	120(%rsp), %r14
	movq	112(%rsp), %rbx
	movl	172(%rsp), %r11d
	movq	160(%rsp), %rax
	movq	112(%rax), %rax
	leaq	104(%rsp), %r10
	movq	%r14, (%rsp)
	movq	%rbx, 8(%rsp)
	movl	%r11d, 16(%rsp)
	movq	%r10, 24(%rsp)
	movq	%rax, 32(%rsp)
	callq	_ff_gen_search
	movq	%rax, 136(%rsp)
	cmpq	$0, 136(%rsp)
	jge	LBB10_20
## %bb.19:                              ## %if.then35
	movl	$-1, 204(%rsp)
	movl	$1, 68(%rsp)
	jmp	LBB10_23
LBB10_20:                               ## %if.end36
	movq	192(%rsp), %rax
	movq	32(%rax), %rdi
	movq	136(%rsp), %rsi
	xorl	%edx, %edx
	callq	_avio_seek
	movq	%rax, 88(%rsp)
	cmpq	$0, %rax
	jge	LBB10_22
## %bb.21:                              ## %if.then40
	movq	88(%rsp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 204(%rsp)
	movl	$1, 68(%rsp)
	jmp	LBB10_23
LBB10_22:                               ## %if.end42
	movq	192(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	192(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	104(%rsp), %rdx
	callq	_avpriv_update_cur_dts
	movl	$0, 204(%rsp)
	movl	$1, 68(%rsp)
LBB10_23:                               ## %cleanup
	movl	204(%rsp), %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.private_extern	_ff_gen_search          ## -- Begin function ff_gen_search
	.globl	_ff_gen_search
	.p2align	4
_ff_gen_search:                         ## @ff_gen_search
## %bb.0:                               ## %entry
	subq	$136, %rsp
	movq	176(%rsp), %rax
	movq	168(%rsp), %rax
	movl	160(%rsp), %eax
	movq	152(%rsp), %rax
	movq	144(%rsp), %rax
	movq	%rdi, 112(%rsp)
	movl	%esi, 108(%rsp)
	movq	%rdx, 96(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 72(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 64(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 64(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 56(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 48(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 40(%rsp)
	movl	$-1431655766, 36(%rsp)          ## imm = 0xAAAAAAAA
	movl	$-1431655766, 32(%rsp)          ## imm = 0xAAAAAAAA
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 144(%rsp)
	jne	LBB11_4
## %bb.1:                               ## %if.then
	movq	64(%rsp), %rax
	movq	504(%rax), %rax
	movq	%rax, 88(%rsp)
	movq	112(%rsp), %rdi
	movl	108(%rsp), %esi
	movq	176(%rsp), %r8
	leaq	88(%rsp), %rdx
	movabsq	$9223372036854775807, %rcx      ## imm = 0x7FFFFFFFFFFFFFFF
	callq	_read_timestamp
	movq	%rax, 144(%rsp)
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 144(%rsp)
	jne	LBB11_3
## %bb.2:                               ## %if.then3
	movq	$-1, 120(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB11_52
LBB11_3:                                ## %if.end
	jmp	LBB11_4
LBB11_4:                                ## %if.end4
	movq	144(%rsp), %rax
	cmpq	96(%rsp), %rax
	jl	LBB11_6
## %bb.5:                               ## %if.then6
	movq	144(%rsp), %rcx
	movq	168(%rsp), %rax
	movq	%rcx, (%rax)
	movq	88(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB11_52
LBB11_6:                                ## %if.end7
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 152(%rsp)
	jne	LBB11_10
## %bb.7:                               ## %if.then9
	movq	112(%rsp), %rdi
	movl	108(%rsp), %esi
	movq	176(%rsp), %r8
	leaq	152(%rsp), %rdx
	leaq	80(%rsp), %rcx
	callq	_ff_find_last_ts
	movl	%eax, 32(%rsp)
	cmpl	$0, %eax
	jge	LBB11_9
## %bb.8:                               ## %if.then12
	movslq	32(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB11_52
LBB11_9:                                ## %if.end13
	movq	80(%rsp), %rax
	movq	%rax, 72(%rsp)
LBB11_10:                               ## %if.end14
	movq	152(%rsp), %rax
	cmpq	96(%rsp), %rax
	jg	LBB11_12
## %bb.11:                              ## %if.then17
	movq	152(%rsp), %rcx
	movq	168(%rsp), %rax
	movq	%rcx, (%rax)
	movq	80(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB11_52
LBB11_12:                               ## %if.end18
	jmp	LBB11_13
LBB11_13:                               ## %do.body
	movq	144(%rsp), %rax
	cmpq	152(%rsp), %rax
	jl	LBB11_15
## %bb.14:                              ## %if.then21
	callq	_abort
LBB11_15:                               ## %if.end22
	jmp	LBB11_16
LBB11_16:                               ## %do.cond
	jmp	LBB11_17
LBB11_17:                               ## %do.end
	movl	$0, 36(%rsp)
LBB11_18:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax
	cmpq	72(%rsp), %rax
	jge	LBB11_45
## %bb.19:                              ## %while.body
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_20
LBB11_20:                               ## %do.body25
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	72(%rsp), %rax
	cmpq	80(%rsp), %rax
	jle	LBB11_22
## %bb.21:                              ## %if.then28
	callq	_abort
LBB11_22:                               ## %if.end29
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_23
LBB11_23:                               ## %do.cond30
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_24
LBB11_24:                               ## %do.end31
                                        ##   in Loop: Header=BB11_18 Depth=1
	cmpl	$0, 36(%rsp)
	jne	LBB11_26
## %bb.25:                              ## %if.then34
                                        ##   in Loop: Header=BB11_18 Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rax
	subq	72(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	96(%rsp), %rdi
	subq	144(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	88(%rsp), %rsi
	movq	152(%rsp), %rdx
	subq	144(%rsp), %rdx
	callq	_av_rescale
	addq	88(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rax, 56(%rsp)
	jmp	LBB11_30
LBB11_26:                               ## %if.else
                                        ##   in Loop: Header=BB11_18 Depth=1
	cmpl	$1, 36(%rsp)
	jne	LBB11_28
## %bb.27:                              ## %if.then42
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	88(%rsp), %rax
	addq	72(%rsp), %rax
	sarq	%rax
	movq	%rax, 56(%rsp)
	jmp	LBB11_29
LBB11_28:                               ## %if.else44
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	88(%rsp), %rax
	movq	%rax, 56(%rsp)
LBB11_29:                               ## %if.end45
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_30
LBB11_30:                               ## %if.end46
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	56(%rsp), %rax
	cmpq	88(%rsp), %rax
	jg	LBB11_32
## %bb.31:                              ## %if.then49
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	88(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB11_35
LBB11_32:                               ## %if.else51
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	56(%rsp), %rax
	cmpq	72(%rsp), %rax
	jle	LBB11_34
## %bb.33:                              ## %if.then54
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
LBB11_34:                               ## %if.end55
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_35
LBB11_35:                               ## %if.end56
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	112(%rsp), %rdi
	movl	108(%rsp), %esi
	movq	176(%rsp), %r8
	leaq	56(%rsp), %rdx
	movabsq	$9223372036854775807, %rcx      ## imm = 0x7FFFFFFFFFFFFFFF
	callq	_read_timestamp
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	cmpq	80(%rsp), %rax
	jne	LBB11_37
## %bb.36:                              ## %if.then60
                                        ##   in Loop: Header=BB11_18 Depth=1
	movl	36(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 36(%rsp)
	jmp	LBB11_38
LBB11_37:                               ## %if.else61
                                        ##   in Loop: Header=BB11_18 Depth=1
	movl	$0, 36(%rsp)
LBB11_38:                               ## %if.end62
                                        ##   in Loop: Header=BB11_18 Depth=1
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 48(%rsp)
	jne	LBB11_40
## %bb.39:                              ## %if.then65
	movq	$-1, 120(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB11_52
LBB11_40:                               ## %if.end66
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	96(%rsp), %rax
	cmpq	48(%rsp), %rax
	jg	LBB11_42
## %bb.41:                              ## %if.then69
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	40(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 152(%rsp)
LBB11_42:                               ## %if.end71
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	96(%rsp), %rax
	cmpq	48(%rsp), %rax
	jl	LBB11_44
## %bb.43:                              ## %if.then74
                                        ##   in Loop: Header=BB11_18 Depth=1
	movq	56(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 144(%rsp)
LBB11_44:                               ## %if.end75
                                        ##   in Loop: Header=BB11_18 Depth=1
	jmp	LBB11_18
LBB11_45:                               ## %while.end
	movl	160(%rsp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB11_47
## %bb.46:                              ## %cond.true
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB11_48
LBB11_47:                               ## %cond.false
	movq	80(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB11_48:                               ## %cond.end
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movq	%rax, 56(%rsp)
	movl	160(%rsp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB11_50
## %bb.49:                              ## %cond.true78
	movq	144(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB11_51
LBB11_50:                               ## %cond.false79
	movq	152(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB11_51:                               ## %cond.end80
	movq	(%rsp), %rax                    ## 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rcx
	movq	168(%rsp), %rax
	movq	%rcx, (%rax)
	movq	56(%rsp), %rax
	movq	%rax, 120(%rsp)
	movl	$1, 28(%rsp)
LBB11_52:                               ## %cleanup
	movq	120(%rsp), %rax
	addq	$136, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_read_frame_flush    ## -- Begin function ff_read_frame_flush
	.globl	_ff_read_frame_flush
	.p2align	4
_ff_read_frame_flush:                   ## @ff_read_frame_flush
## %bb.0:                               ## %entry
	subq	$72, %rsp
	movq	%rdi, 48(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rdi
	callq	_ff_flush_packet_queue
	movl	$-1431655766, 36(%rsp)          ## imm = 0xAAAAAAAA
	movl	$0, 36(%rsp)
LBB12_1:                                ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_9 Depth 2
	movl	36(%rsp), %eax
	movq	48(%rsp), %rcx
	cmpl	44(%rcx), %eax
	jb	LBB12_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 32(%rsp)
	jmp	LBB12_17
LBB12_3:                                ## %for.body
                                        ##   in Loop: Header=BB12_1 Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rax
	movq	48(%rax), %rax
	movl	36(%rsp), %ecx
                                        ## kill: def $rcx killed $ecx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 24(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	cmpq	$0, 808(%rax)
	je	LBB12_5
## %bb.4:                               ## %if.then
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movq	808(%rax), %rdi
	callq	_av_parser_close
	movq	16(%rsp), %rax
	movq	$0, 808(%rax)
LBB12_5:                                ## %if.end
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movabsq	$-9223372036854775808, %rcx     ## imm = 0x8000000000000000
	movq	%rcx, 784(%rax)
	movq	16(%rsp), %rax
	movabsq	$-9223372036854775808, %rcx     ## imm = 0x8000000000000000
	movq	%rcx, 720(%rax)
	movq	16(%rsp), %rax
	movabsq	$-9223372036854775808, %rcx     ## imm = 0x8000000000000000
	cmpq	%rcx, 824(%rax)
	jne	LBB12_7
## %bb.6:                               ## %if.then5
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movabsq	$9223090561878065151, %rcx      ## imm = 0x7FFEFFFFFFFFFFFF
	movq	%rcx, 832(%rax)
	jmp	LBB12_8
LBB12_7:                                ## %if.else
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movabsq	$-9223372036854775808, %rcx     ## imm = 0x8000000000000000
	movq	%rcx, 832(%rax)
LBB12_8:                                ## %if.end7
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	48(%rsp), %rax
	movl	456(%rax), %ecx
	movq	16(%rsp), %rax
	movl	%ecx, 796(%rax)
	movl	$-1431655766, 12(%rsp)          ## imm = 0xAAAAAAAA
	movl	$0, 12(%rsp)
LBB12_9:                                ## %for.cond8
                                        ##   Parent Loop BB12_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$17, 12(%rsp)
	jl	LBB12_11
## %bb.10:                              ## %for.cond.cleanup10
                                        ##   in Loop: Header=BB12_1 Depth=1
	movl	$5, 32(%rsp)
	jmp	LBB12_13
LBB12_11:                               ## %for.body11
                                        ##   in Loop: Header=BB12_9 Depth=2
	movq	16(%rsp), %rax
	movslq	12(%rsp), %rcx
	movabsq	$-9223372036854775808, %rdx     ## imm = 0x8000000000000000
	movq	%rdx, 584(%rax,%rcx,8)
## %bb.12:                              ## %for.inc
                                        ##   in Loop: Header=BB12_9 Depth=2
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	LBB12_9
LBB12_13:                               ## %for.end
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	40(%rsp), %rax
	cmpl	$0, 568(%rax)
	je	LBB12_15
## %bb.14:                              ## %if.then15
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movl	$1, 732(%rax)
LBB12_15:                               ## %if.end17
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax
	movl	$0, 352(%rax)
## %bb.16:                              ## %for.inc18
                                        ##   in Loop: Header=BB12_1 Depth=1
	movl	36(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 36(%rsp)
	jmp	LBB12_1
LBB12_17:                               ## %for.end20
	addq	$72, %rsp
	retq
                                        ## -- End function
	.private_extern	_ff_find_last_ts        ## -- Begin function ff_find_last_ts
	.globl	_ff_find_last_ts
	.p2align	4
_ff_find_last_ts:                       ## @ff_find_last_ts
## %bb.0:                               ## %entry
	subq	$136, %rsp
	movq	%rdi, 120(%rsp)
	movl	%esi, 116(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%r8, 88(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 80(%rsp)
	movq	$1024, 80(%rsp)                 ## imm = 0x400
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 64(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 56(%rsp)
	movq	120(%rsp), %rax
	movq	32(%rax), %rdi
	callq	_avio_size
	movq	%rax, 56(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 48(%rsp)
LBB13_1:                                ## %do.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	48(%rsp), %rcx
	subq	80(%rsp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	cmpq	%rcx, %rax
	jle	LBB13_3
## %bb.2:                               ## %cond.true
                                        ##   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
	jmp	LBB13_4
LBB13_3:                                ## %cond.false
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	48(%rsp), %rax
	subq	80(%rsp), %rax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
LBB13_4:                                ## %cond.end
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	16(%rsp), %rax                  ## 8-byte Reload
	movq	%rax, 48(%rsp)
	movq	120(%rsp), %rdi
	movl	116(%rsp), %esi
	movq	72(%rsp), %rcx
	movq	88(%rsp), %r8
	leaq	48(%rsp), %rdx
	callq	_read_timestamp
	movq	%rax, 64(%rsp)
	movq	80(%rsp), %rax
	addq	80(%rsp), %rax
	movq	%rax, 80(%rsp)
## %bb.5:                               ## %do.cond
                                        ##   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	movabsq	$-9223372036854775808, %rcx     ## imm = 0x8000000000000000
	cmpq	%rcx, 64(%rsp)
	movb	%al, 15(%rsp)                   ## 1-byte Spill
	jne	LBB13_7
## %bb.6:                               ## %land.rhs
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	72(%rsp), %rax
	shlq	%rax
	cmpq	80(%rsp), %rax
	setg	%al
	movb	%al, 15(%rsp)                   ## 1-byte Spill
LBB13_7:                                ## %land.end
                                        ##   in Loop: Header=BB13_1 Depth=1
	movb	15(%rsp), %al                   ## 1-byte Reload
	testb	$1, %al
	jne	LBB13_1
## %bb.8:                               ## %do.end
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 64(%rsp)
	jne	LBB13_10
## %bb.9:                               ## %if.then
	movl	$-1, 132(%rsp)
	movl	$1, 44(%rsp)
	jmp	LBB13_28
LBB13_10:                               ## %if.end
	jmp	LBB13_11
LBB13_11:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 32(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 24(%rsp)
	movq	120(%rsp), %rdi
	movl	116(%rsp), %esi
	movq	88(%rsp), %r8
	leaq	32(%rsp), %rdx
	movabsq	$9223372036854775807, %rcx      ## imm = 0x7FFFFFFFFFFFFFFF
	callq	_read_timestamp
	movq	%rax, 24(%rsp)
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	cmpq	%rax, 24(%rsp)
	jne	LBB13_13
## %bb.12:                              ## %if.then10
                                        ##   in Loop: Header=BB13_11 Depth=1
	movl	$4, 44(%rsp)
	jmp	LBB13_21
LBB13_13:                               ## %if.end11
                                        ##   in Loop: Header=BB13_11 Depth=1
	jmp	LBB13_14
LBB13_14:                               ## %do.body12
                                        ##   in Loop: Header=BB13_11 Depth=1
	movq	32(%rsp), %rax
	cmpq	48(%rsp), %rax
	jg	LBB13_16
## %bb.15:                              ## %if.then14
	callq	_abort
LBB13_16:                               ## %if.end15
                                        ##   in Loop: Header=BB13_11 Depth=1
	jmp	LBB13_17
LBB13_17:                               ## %do.cond16
                                        ##   in Loop: Header=BB13_11 Depth=1
	jmp	LBB13_18
LBB13_18:                               ## %do.end17
                                        ##   in Loop: Header=BB13_11 Depth=1
	movq	24(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	32(%rsp), %rax
	cmpq	56(%rsp), %rax
	jl	LBB13_20
## %bb.19:                              ## %if.then19
                                        ##   in Loop: Header=BB13_11 Depth=1
	movl	$4, 44(%rsp)
	jmp	LBB13_21
LBB13_20:                               ## %if.end20
                                        ##   in Loop: Header=BB13_11 Depth=1
	movl	$0, 44(%rsp)
LBB13_21:                               ## %cleanup
                                        ##   in Loop: Header=BB13_11 Depth=1
	movl	44(%rsp), %eax
	testl	%eax, %eax
	je	LBB13_22
	jmp	LBB13_30
LBB13_30:                               ## %cleanup
	jmp	LBB13_23
LBB13_22:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB13_11 Depth=1
	jmp	LBB13_11
LBB13_23:                               ## %for.end
	cmpq	$0, 104(%rsp)
	je	LBB13_25
## %bb.24:                              ## %if.then22
	movq	64(%rsp), %rcx
	movq	104(%rsp), %rax
	movq	%rcx, (%rax)
LBB13_25:                               ## %if.end23
	cmpq	$0, 96(%rsp)
	je	LBB13_27
## %bb.26:                              ## %if.then25
	movq	48(%rsp), %rcx
	movq	96(%rsp), %rax
	movq	%rcx, (%rax)
LBB13_27:                               ## %if.end26
	movl	$0, 132(%rsp)
	movl	$1, 44(%rsp)
LBB13_28:                               ## %cleanup27
	movl	132(%rsp), %eax
	addq	$136, %rsp
	retq
## %bb.29:                              ## %unreachable
	ud2
                                        ## -- End function
	.p2align	4                               ## -- Begin function read_timestamp
_read_timestamp:                        ## @read_timestamp
## %bb.0:                               ## %entry
	subq	$56, %rsp
	movq	%rdi, 48(%rsp)
	movl	%esi, 44(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 16(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	movq	48(%rsp), %rdi
	movl	44(%rsp), %esi
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rcx
	callq	*%rax
	movq	%rax, 8(%rsp)
	cmpl	$0, 44(%rsp)
	jl	LBB14_2
## %bb.1:                               ## %if.then
	movq	48(%rsp), %rax
	movq	48(%rax), %rax
	movslq	44(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	8(%rsp), %rsi
	callq	_ff_wrap_timestamp
	movq	%rax, 8(%rsp)
LBB14_2:                                ## %if.end
	movq	8(%rsp), %rax
	addq	$56, %rsp
	retq
                                        ## -- End function
	.private_extern	_av_seek_frame          ## -- Begin function av_seek_frame
	.globl	_av_seek_frame
	.p2align	4
_av_seek_frame:                         ## @av_seek_frame
## %bb.0:                               ## %entry
	subq	$72, %rsp
	movq	%rdi, 56(%rsp)
	movl	%esi, 52(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 36(%rsp)
	movl	$-1431655766, 32(%rsp)          ## imm = 0xAAAAAAAA
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 136(%rax)
	je	LBB15_6
## %bb.1:                               ## %land.lhs.true
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 104(%rax)
	jne	LBB15_6
## %bb.2:                               ## %if.then
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 24(%rsp)
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	movq	%rax, 24(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movabsq	$9223372036854775807, %rax      ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, 16(%rsp)
	movl	36(%rsp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB15_4
## %bb.3:                               ## %if.then4
	movq	40(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	LBB15_5
LBB15_4:                                ## %if.else
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
LBB15_5:                                ## %if.end
	movq	56(%rsp), %rdi
	movl	52(%rsp), %esi
	movq	24(%rsp), %rdx
	movq	40(%rsp), %rcx
	movq	16(%rsp), %r8
	movl	36(%rsp), %r9d
	andl	$-2, %r9d
	callq	_avformat_seek_file
	movl	%eax, 68(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB15_9
LBB15_6:                                ## %if.end6
	movq	56(%rsp), %rdi
	movl	52(%rsp), %esi
	movq	40(%rsp), %rdx
	movl	36(%rsp), %ecx
	callq	_seek_frame_internal
	movl	%eax, 32(%rsp)
	cmpl	$0, 32(%rsp)
	jl	LBB15_8
## %bb.7:                               ## %if.then8
	movq	56(%rsp), %rdi
	callq	_avformat_queue_attached_pictures
	movl	%eax, 32(%rsp)
LBB15_8:                                ## %if.end10
	movl	32(%rsp), %eax
	movl	%eax, 68(%rsp)
	movl	$1, 12(%rsp)
LBB15_9:                                ## %cleanup
	movl	68(%rsp), %eax
	addq	$72, %rsp
	retq
                                        ## -- End function
	.private_extern	_avformat_seek_file     ## -- Begin function avformat_seek_file
	.globl	_avformat_seek_file
	.p2align	4
_avformat_seek_file:                    ## @avformat_seek_file
## %bb.0:                               ## %entry
	subq	$104, %rsp
	movq	%rdi, 88(%rsp)
	movl	%esi, 84(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movl	%r9d, 52(%rsp)
	movq	72(%rsp), %rax
	cmpq	64(%rsp), %rax
	jg	LBB16_2
## %bb.1:                               ## %lor.lhs.false
	movq	56(%rsp), %rax
	cmpq	64(%rsp), %rax
	jge	LBB16_3
LBB16_2:                                ## %if.then
	movl	$-1, 100(%rsp)
	jmp	LBB16_30
LBB16_3:                                ## %if.end
	cmpl	$-1, 84(%rsp)
	jl	LBB16_5
## %bb.4:                               ## %lor.lhs.false3
	movl	84(%rsp), %eax
	movq	88(%rsp), %rcx
	cmpl	44(%rcx), %eax
	jl	LBB16_6
LBB16_5:                                ## %if.then5
	movl	$-22, 100(%rsp)
	jmp	LBB16_30
LBB16_6:                                ## %if.end6
	movq	88(%rsp), %rax
	cmpl	$0, 292(%rax)
	jle	LBB16_8
## %bb.7:                               ## %if.then8
	movl	52(%rsp), %eax
	orl	$4, %eax
	movl	%eax, 52(%rsp)
LBB16_8:                                ## %if.end9
	movl	52(%rsp), %eax
	andl	$-2, %eax
	movl	%eax, 52(%rsp)
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 136(%rax)
	je	LBB16_15
## %bb.9:                               ## %if.then10
	movl	$-1431655766, 48(%rsp)          ## imm = 0xAAAAAAAA
	movq	88(%rsp), %rdi
	callq	_ff_read_frame_flush
	cmpl	$-1, 84(%rsp)
	jne	LBB16_12
## %bb.10:                              ## %land.lhs.true
	movq	88(%rsp), %rax
	cmpl	$1, 44(%rax)
	jne	LBB16_12
## %bb.11:                              ## %if.then14
	movl	$-1431655766, 40(%rsp)          ## imm = 0xAAAAAAAA
	movl	$-1431655766, 44(%rsp)          ## imm = 0xAAAAAAAA
	movq	88(%rsp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rdi
	movl	$1, 32(%rsp)
	movl	$1000000, 36(%rsp)              ## imm = 0xF4240
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdx
	callq	_av_rescale_q
	movq	%rax, 64(%rsp)
	movq	72(%rsp), %rdi
	movslq	44(%rsp), %rsi
	movslq	40(%rsp), %rax
	imulq	$1000000, %rax, %rdx            ## imm = 0xF4240
	movl	$8195, %ecx                     ## imm = 0x2003
	callq	_av_rescale_rnd
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rdi
	movslq	44(%rsp), %rsi
	movslq	40(%rsp), %rax
	imulq	$1000000, %rax, %rdx            ## imm = 0xF4240
	movl	$8194, %ecx                     ## imm = 0x2002
	callq	_av_rescale_rnd
	movq	%rax, 56(%rsp)
	movl	$0, 84(%rsp)
LBB16_12:                               ## %if.end26
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	movq	136(%rax), %rax
	movq	88(%rsp), %rdi
	movl	84(%rsp), %esi
	movq	72(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	movl	52(%rsp), %r9d
	callq	*%rax
	movl	%eax, 48(%rsp)
	cmpl	$0, 48(%rsp)
	jl	LBB16_14
## %bb.13:                              ## %if.then32
	movq	88(%rsp), %rdi
	callq	_avformat_queue_attached_pictures
	movl	%eax, 48(%rsp)
LBB16_14:                               ## %if.end34
	movl	48(%rsp), %eax
	movl	%eax, 100(%rsp)
	jmp	LBB16_30
LBB16_15:                               ## %if.end35
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 112(%rax)
	je	LBB16_17
## %bb.16:                              ## %if.then38
	jmp	LBB16_17
LBB16_17:                               ## %if.end39
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 104(%rax)
	jne	LBB16_19
## %bb.18:                              ## %lor.lhs.false42
	movb	$1, %al
	testb	$1, %al
	jne	LBB16_19
	jmp	LBB16_29
LBB16_19:                               ## %if.then43
	movl	$-1431655766, 28(%rsp)          ## imm = 0xAAAAAAAA
	movq	64(%rsp), %rdx
	subq	72(%rsp), %rdx
	movq	56(%rsp), %rsi
	subq	64(%rsp), %rsi
	xorl	%eax, %eax
	movl	$1, %ecx
	cmpq	%rsi, %rdx
	cmoval	%ecx, %eax
	movl	%eax, 28(%rsp)
	movl	$-1431655766, 24(%rsp)          ## imm = 0xAAAAAAAA
	movq	88(%rsp), %rdi
	movl	84(%rsp), %esi
	movq	64(%rsp), %rdx
	movl	52(%rsp), %ecx
	orl	28(%rsp), %ecx
	callq	_av_seek_frame
	movl	%eax, 24(%rsp)
	cmpl	$0, 24(%rsp)
	jge	LBB16_28
## %bb.20:                              ## %land.lhs.true52
	movq	64(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	LBB16_28
## %bb.21:                              ## %land.lhs.true55
	movq	56(%rsp), %rax
	cmpq	64(%rsp), %rax
	je	LBB16_28
## %bb.22:                              ## %if.then58
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	movl	84(%rsp), %eax
	movl	%eax, 20(%rsp)                  ## 4-byte Spill
	cmpl	$0, 28(%rsp)
	je	LBB16_24
## %bb.23:                              ## %cond.true
	movq	56(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB16_25
LBB16_24:                               ## %cond.false
	movq	72(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB16_25:                               ## %cond.end
	movl	20(%rsp), %esi                  ## 4-byte Reload
	movq	8(%rsp), %rdi                   ## 8-byte Reload
	movq	(%rsp), %rdx                    ## 8-byte Reload
	movl	52(%rsp), %ecx
	orl	28(%rsp), %ecx
	callq	_av_seek_frame
	movl	%eax, 24(%rsp)
	cmpl	$0, 24(%rsp)
	jl	LBB16_27
## %bb.26:                              ## %if.then65
	movq	88(%rsp), %rdi
	movl	84(%rsp), %esi
	movq	64(%rsp), %rdx
	movl	52(%rsp), %ecx
	movl	28(%rsp), %eax
	xorl	$1, %eax
	orl	%eax, %ecx
	callq	_av_seek_frame
	movl	%eax, 24(%rsp)
LBB16_27:                               ## %if.end68
	jmp	LBB16_28
LBB16_28:                               ## %if.end69
	movl	24(%rsp), %eax
	movl	%eax, 100(%rsp)
	jmp	LBB16_30
LBB16_29:                               ## %if.end70
	movl	$-1, 100(%rsp)
LBB16_30:                               ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function seek_frame_internal
_seek_frame_internal:                   ## @seek_frame_internal
## %bb.0:                               ## %entry
	subq	$56, %rsp
	movq	%rdi, 40(%rsp)
	movl	%esi, 36(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 20(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movl	$-1431655766, 4(%rsp)           ## imm = 0xAAAAAAAA
	movl	20(%rsp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	LBB17_4
## %bb.1:                               ## %if.then
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %eax
	andl	$32768, %eax                    ## imm = 0x8000
	cmpl	$0, %eax
	je	LBB17_3
## %bb.2:                               ## %if.then4
	movl	$-1, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_3:                                ## %if.end
	movq	40(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	40(%rsp), %rdi
	movl	36(%rsp), %esi
	movq	24(%rsp), %rdx
	movl	20(%rsp), %ecx
	callq	_seek_frame_byte
	movl	%eax, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_4:                                ## %if.end5
	cmpl	$0, 36(%rsp)
	jge	LBB17_8
## %bb.5:                               ## %if.then6
	movq	40(%rsp), %rdi
	callq	_av_find_default_stream_index
	movl	%eax, 36(%rsp)
	cmpl	$0, 36(%rsp)
	jge	LBB17_7
## %bb.6:                               ## %if.then9
	movl	$-1, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_7:                                ## %if.end10
	movq	40(%rsp), %rax
	movq	48(%rax), %rax
	movslq	36(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rdi
	movq	8(%rsp), %rax
	movslq	36(%rax), %rsi
	movq	8(%rsp), %rax
	movslq	32(%rax), %rax
	imulq	$1000000, %rax, %rdx            ## imm = 0xF4240
	callq	_av_rescale
	movq	%rax, 24(%rsp)
LBB17_8:                                ## %if.end14
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 104(%rax)
	je	LBB17_10
## %bb.9:                               ## %if.then17
	movq	40(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movq	40(%rsp), %rdi
	movl	36(%rsp), %esi
	movq	24(%rsp), %rdx
	movl	20(%rsp), %ecx
	callq	*%rax
	movl	%eax, 4(%rsp)
	jmp	LBB17_11
LBB17_10:                               ## %if.else
	movl	$-1, 4(%rsp)
LBB17_11:                               ## %if.end21
	cmpl	$0, 4(%rsp)
	jl	LBB17_13
## %bb.12:                              ## %if.then24
	movl	$0, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_13:                               ## %if.end25
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 112(%rax)
	je	LBB17_16
## %bb.14:                              ## %land.lhs.true
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %eax
	andl	$8192, %eax                     ## imm = 0x2000
	cmpl	$0, %eax
	jne	LBB17_16
## %bb.15:                              ## %if.then32
	movq	40(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	40(%rsp), %rdi
	movl	36(%rsp), %esi
	movq	24(%rsp), %rdx
	movl	20(%rsp), %ecx
	callq	_ff_seek_frame_binary
	movl	%eax, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_16:                               ## %if.else34
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %eax
	andl	$16384, %eax                    ## imm = 0x4000
	cmpl	$0, %eax
	jne	LBB17_18
## %bb.17:                              ## %if.then39
	movq	40(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	40(%rsp), %rdi
	movl	36(%rsp), %esi
	movq	24(%rsp), %rdx
	movl	20(%rsp), %ecx
	callq	_seek_frame_generic
	movl	%eax, 52(%rsp)
	movl	$1, (%rsp)
	jmp	LBB17_19
LBB17_18:                               ## %if.else41
	movl	$-1, 52(%rsp)
	movl	$1, (%rsp)
LBB17_19:                               ## %cleanup
	movl	52(%rsp), %eax
	addq	$56, %rsp
	retq
                                        ## -- End function
	.private_extern	_avformat_flush         ## -- Begin function avformat_flush
	.globl	_avformat_flush
	.p2align	4
_avformat_flush:                        ## @avformat_flush
## %bb.0:                               ## %entry
	pushq	%rax
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_ff_read_frame_flush
	xorl	%eax, %eax
	popq	%rcx
	retq
                                        ## -- End function
	.private_extern	_ff_rescale_interval    ## -- Begin function ff_rescale_interval
	.globl	_ff_rescale_interval
	.p2align	4
_ff_rescale_interval:                   ## @ff_rescale_interval
## %bb.0:                               ## %entry
	subq	$40, %rsp
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	movq	8(%rsp), %rax
	movq	(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	_av_rescale_q
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	movq	(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	movl	$8195, %ecx                     ## imm = 0x2003
	callq	_av_rescale_q_rnd
	movq	%rax, %rcx
	movq	16(%rsp), %rax
	movq	%rcx, (%rax)
	movq	(%rsp), %rax
	movq	(%rax), %rdi
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rdx
	movl	$8194, %ecx                     ## imm = 0x2002
	callq	_av_rescale_q_rnd
	movq	%rax, %rcx
	movq	(%rsp), %rax
	movq	%rcx, (%rax)
	addq	$40, %rsp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function seek_frame_byte
_seek_frame_byte:                       ## @seek_frame_byte
## %bb.0:                               ## %entry
	subq	$72, %rsp
	movq	%rdi, 56(%rsp)
	movl	%esi, 52(%rsp)
	movq	%rdx, 40(%rsp)
	movl	%ecx, 36(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 24(%rsp)
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 24(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	movq	504(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	56(%rsp), %rax
	movq	32(%rax), %rdi
	callq	_avio_size
	subq	$1, %rax
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rax
	cmpq	16(%rsp), %rax
	jge	LBB20_2
## %bb.1:                               ## %if.then
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	jmp	LBB20_5
LBB20_2:                                ## %if.else
	movq	40(%rsp), %rax
	cmpq	8(%rsp), %rax
	jle	LBB20_4
## %bb.3:                               ## %if.then3
	movq	8(%rsp), %rax
	movq	%rax, 40(%rsp)
LBB20_4:                                ## %if.end
	jmp	LBB20_5
LBB20_5:                                ## %if.end4
	movq	56(%rsp), %rax
	movq	32(%rax), %rdi
	movq	40(%rsp), %rsi
	xorl	%edx, %edx
	callq	_avio_seek
	movq	56(%rsp), %rax
	movl	$1, 328(%rax)
	xorl	%eax, %eax
	addq	$72, %rsp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function seek_frame_generic
_seek_frame_generic:                    ## @seek_frame_generic
## %bb.0:                               ## %entry
	subq	$136, %rsp
	movq	%rdi, 104(%rsp)
	movl	%esi, 100(%rsp)
	movq	%rdx, 88(%rsp)
	movl	%ecx, 84(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 72(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 72(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 64(%rsp)
	movq	104(%rsp), %rax
	movq	48(%rax), %rax
	movslq	100(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 64(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 56(%rsp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 48(%rsp)
	movl	$-1431655766, 44(%rsp)          ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 32(%rsp)
	movq	64(%rsp), %rdi
	movq	88(%rsp), %rsi
	movl	84(%rsp), %edx
	callq	_av_index_search_timestamp
	movl	%eax, 44(%rsp)
	cmpl	$0, 44(%rsp)
	jge	LBB21_4
## %bb.1:                               ## %land.lhs.true
	movq	56(%rsp), %rax
	cmpl	$0, 320(%rax)
	je	LBB21_4
## %bb.2:                               ## %land.lhs.true3
	movq	88(%rsp), %rax
	movq	56(%rsp), %rcx
	movq	312(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jge	LBB21_4
## %bb.3:                               ## %if.then
	movl	$-1, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_47
LBB21_4:                                ## %if.end
	cmpl	$0, 44(%rsp)
	jl	LBB21_6
## %bb.5:                               ## %lor.lhs.false
	movl	44(%rsp), %eax
	movq	56(%rsp), %rcx
	movl	320(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	LBB21_38
LBB21_6:                                ## %if.then10
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, 16(%rsp)
	movq	72(%rsp), %rax
	movq	552(%rax), %rax
	movq	%rax, 16(%rsp)
	movl	$-1431655766, 12(%rsp)          ## imm = 0xAAAAAAAA
	movl	$0, 12(%rsp)
	movq	56(%rsp), %rax
	cmpl	$0, 320(%rax)
	je	LBB21_15
## %bb.7:                               ## %if.then14
	jmp	LBB21_8
LBB21_8:                                ## %do.body
	movq	56(%rsp), %rax
	cmpq	$0, 312(%rax)
	jne	LBB21_10
## %bb.9:                               ## %if.then17
	callq	_abort
LBB21_10:                               ## %if.end18
	jmp	LBB21_11
LBB21_11:                               ## %do.cond
	jmp	LBB21_12
LBB21_12:                               ## %do.end
	movq	56(%rsp), %rax
	movq	312(%rax), %rax
	movq	56(%rsp), %rcx
	movl	320(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
	movq	104(%rsp), %rax
	movq	32(%rax), %rdi
	movq	48(%rsp), %rax
	movq	(%rax), %rsi
	xorl	%edx, %edx
	callq	_avio_seek
	movq	%rax, 32(%rsp)
	cmpq	$0, %rax
	jge	LBB21_14
## %bb.13:                              ## %if.then26
	movq	32(%rsp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_36
LBB21_14:                               ## %if.end27
	movq	104(%rsp), %rax
	movl	$1, 328(%rax)
	movq	104(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	48(%rsp), %rax
	movq	8(%rax), %rdx
	callq	_avpriv_update_cur_dts
	jmp	LBB21_18
LBB21_15:                               ## %if.else
	movq	104(%rsp), %rax
	movq	32(%rax), %rdi
	movq	72(%rsp), %rax
	movq	504(%rax), %rsi
	xorl	%edx, %edx
	callq	_avio_seek
	movq	%rax, 32(%rsp)
	cmpq	$0, %rax
	jge	LBB21_17
## %bb.16:                              ## %if.then33
	movq	32(%rsp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_36
LBB21_17:                               ## %if.end35
	movq	104(%rsp), %rax
	movl	$1, 328(%rax)
LBB21_18:                               ## %if.end37
	movq	16(%rsp), %rdi
	callq	_av_packet_unref
LBB21_19:                               ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB21_20 Depth 2
	movl	$-1431655766, 8(%rsp)           ## imm = 0xAAAAAAAA
LBB21_20:                               ## %do.body38
                                        ##   Parent Loop BB21_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	104(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_av_read_frame
	movl	%eax, 8(%rsp)
## %bb.21:                              ## %do.cond40
                                        ##   in Loop: Header=BB21_20 Depth=2
	cmpl	$-11, 8(%rsp)
	je	LBB21_20
## %bb.22:                              ## %do.end43
                                        ##   in Loop: Header=BB21_19 Depth=1
	cmpl	$0, 8(%rsp)
	jge	LBB21_24
## %bb.23:                              ## %if.then46
                                        ##   in Loop: Header=BB21_19 Depth=1
	movl	$4, 28(%rsp)
	jmp	LBB21_33
LBB21_24:                               ## %if.end47
                                        ##   in Loop: Header=BB21_19 Depth=1
	movl	100(%rsp), %eax
	movq	16(%rsp), %rcx
	cmpl	36(%rcx), %eax
	jne	LBB21_32
## %bb.25:                              ## %land.lhs.true51
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	cmpq	88(%rsp), %rax
	jle	LBB21_32
## %bb.26:                              ## %if.then54
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	16(%rsp), %rax
	movl	40(%rax), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	LBB21_28
## %bb.27:                              ## %if.then57
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	16(%rsp), %rdi
	callq	_av_packet_unref
	movl	$4, 28(%rsp)
	jmp	LBB21_33
LBB21_28:                               ## %if.end58
                                        ##   in Loop: Header=BB21_19 Depth=1
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 12(%rsp)
	cmpl	$1000, %eax                     ## imm = 0x3E8
	jle	LBB21_31
## %bb.29:                              ## %land.lhs.true61
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	cmpl	$132, 4(%rax)
	je	LBB21_31
## %bb.30:                              ## %if.then64
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	16(%rsp), %rdi
	callq	_av_packet_unref
	movl	$4, 28(%rsp)
	jmp	LBB21_33
LBB21_31:                               ## %if.end65
                                        ##   in Loop: Header=BB21_19 Depth=1
	jmp	LBB21_32
LBB21_32:                               ## %if.end66
                                        ##   in Loop: Header=BB21_19 Depth=1
	movq	16(%rsp), %rdi
	callq	_av_packet_unref
	movl	$0, 28(%rsp)
LBB21_33:                               ## %cleanup
                                        ##   in Loop: Header=BB21_19 Depth=1
	movl	28(%rsp), %eax
	testl	%eax, %eax
	je	LBB21_34
	jmp	LBB21_49
LBB21_49:                               ## %cleanup
	jmp	LBB21_35
LBB21_34:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB21_19 Depth=1
	jmp	LBB21_19
LBB21_35:                               ## %for.end
	movq	64(%rsp), %rdi
	movq	88(%rsp), %rsi
	movl	84(%rsp), %edx
	callq	_av_index_search_timestamp
	movl	%eax, 44(%rsp)
	movl	$0, 28(%rsp)
LBB21_36:                               ## %cleanup68
	movl	28(%rsp), %eax
	testl	%eax, %eax
	jne	LBB21_47
	jmp	LBB21_37
LBB21_37:                               ## %cleanup.cont71
	jmp	LBB21_38
LBB21_38:                               ## %if.end72
	cmpl	$0, 44(%rsp)
	jge	LBB21_40
## %bb.39:                              ## %if.then75
	movl	$-1, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_47
LBB21_40:                               ## %if.end76
	movq	104(%rsp), %rdi
	callq	_ff_read_frame_flush
	movq	104(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 104(%rax)
	je	LBB21_44
## %bb.41:                              ## %if.then78
	movq	104(%rsp), %rax
	movq	8(%rax), %rax
	movq	104(%rax), %rax
	movq	104(%rsp), %rdi
	movl	100(%rsp), %esi
	movq	88(%rsp), %rdx
	movl	84(%rsp), %ecx
	callq	*%rax
	cmpl	$0, %eax
	jl	LBB21_43
## %bb.42:                              ## %if.then84
	movl	$0, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_47
LBB21_43:                               ## %if.end85
	jmp	LBB21_44
LBB21_44:                               ## %if.end86
	movq	56(%rsp), %rax
	movq	312(%rax), %rax
	movslq	44(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
	movq	104(%rsp), %rax
	movq	32(%rax), %rdi
	movq	48(%rsp), %rax
	movq	(%rax), %rsi
	xorl	%edx, %edx
	callq	_avio_seek
	movq	%rax, 32(%rsp)
	cmpq	$0, %rax
	jge	LBB21_46
## %bb.45:                              ## %if.then95
	movq	32(%rsp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 116(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB21_47
LBB21_46:                               ## %if.end97
	movq	104(%rsp), %rax
	movl	$1, 328(%rax)
	movq	104(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	48(%rsp), %rax
	movq	8(%rax), %rdx
	callq	_avpriv_update_cur_dts
	movl	$0, 116(%rsp)
	movl	$1, 28(%rsp)
LBB21_47:                               ## %cleanup100
	movl	116(%rsp), %eax
	addq	$136, %rsp
	retq
## %bb.48:                              ## %unreachable
	ud2
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"file"

L_.str.1:                               ## @.str.1
	.asciz	"pipe"

L_.str.2:                               ## @.str.2
	.asciz	"cache"

.subsections_via_symbols
