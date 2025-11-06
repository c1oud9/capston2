	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main                           ## -- Begin function main
	.p2align	4
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 20(%rsp)
	movl	$0, 16(%rsp)
	movq	_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	leaq	L_.str(%rip), %rsi
	movl	$16, %edx
	movb	$0, %al
	callq	_fprintf
	movq	$0, 8(%rsp)
LBB0_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$16, 8(%rsp)
	jb	LBB0_3
## %bb.2:                               ## %for.cond.cleanup
	jmp	LBB0_8
LBB0_3:                                 ## %for.body
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	8(%rsp), %rcx
	leaq	__ZL16test_suite_tests(%rip), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	callq	*(%rax)
	movl	%eax, 4(%rsp)
	cmpl	$0, 4(%rsp)
	je	LBB0_5
## %bb.4:                               ## %if.then
                                        ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, 16(%rsp)
	movq	_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rsp), %rdx
	addq	$1, %rdx
	movq	8(%rsp), %rcx
	leaq	__ZL16test_suite_tests(%rip), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	leaq	L_.str.1(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	jmp	LBB0_6
LBB0_5:                                 ## %if.else
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	_stdout@GOTPCREL(%rip), %rax
	movq	(%rax), %rdi
	movq	8(%rsp), %rdx
	addq	$1, %rdx
	movq	8(%rsp), %rcx
	leaq	__ZL16test_suite_tests(%rip), %rax
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rcx
	leaq	L_.str.2(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
LBB0_6:                                 ## %if.end
                                        ##   in Loop: Header=BB0_1 Depth=1
## %bb.7:                               ## %for.inc
                                        ##   in Loop: Header=BB0_1 Depth=1
	movq	8(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 8(%rsp)
	jmp	LBB0_1
LBB0_8:                                 ## %for.end
	movl	16(%rsp), %eax
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2_f32v
__ZL20test_simde_vzip2_f32v:            ## @_ZL20test_simde_vzip2_f32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$760, %rsp                      ## imm = 0x2F8
	.cfi_def_cfa_offset 768
	leaq	128(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2_f32v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 120(%rsp)
LBB1_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 120(%rsp)
	jb	LBB1_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 116(%rsp)
	jmp	LBB1_12
LBB1_3:                                 ## %for.body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	120(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 360(%rsp)
	movq	360(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 352(%rsp)
	movq	352(%rsp), %rax
	movq	%rax, 344(%rsp)
	movsd	344(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 648(%rsp)
	movsd	648(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 664(%rsp)
	movsd	664(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 336(%rsp)
	movsd	336(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)
	movsd	96(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movq	120(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	136(%rsp,%rax,8), %rax
	movq	%rax, 400(%rsp)
	movq	400(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 392(%rsp)
	movq	392(%rsp), %rax
	movq	%rax, 384(%rsp)
	movsd	384(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 624(%rsp)
	movsd	624(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 640(%rsp)
	movsd	640(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 376(%rsp)
	movsd	376(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movsd	80(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movsd	104(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movsd	88(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 64(%rsp)
	movsd	64(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movsd	56(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 560(%rsp)
	movsd	560(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movsd	%xmm0, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movsd	%xmm0, 536(%rsp)
	movsd	544(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 512(%rsp)
	movsd	512(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 704(%rsp)
	movsd	704(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 696(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movsd	712(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 520(%rsp)
	movsd	536(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 680(%rsp)
	movsd	680(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 672(%rsp)
	movq	672(%rsp), %rax
	movq	%rax, 688(%rsp)
	movsd	688(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rcx
	movq	504(%rsp), %rax
	movq	%rcx, 488(%rsp)
	movsd	488(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 744(%rsp)
	movq	744(%rsp), %rcx
	movsd	%xmm0, 736(%rsp)
	movq	736(%rsp), %rax
	movq	%rcx, 728(%rsp)
	movq	%rax, 720(%rsp)
	movq	728(%rsp), %mm0
	movq	720(%rsp), %mm1
	punpckhdq	%mm1, %mm0              ## mm0 = mm0[1],mm1[1]
	movq	%mm0, 752(%rsp)
	movsd	752(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 472(%rsp)
	movq	472(%rsp), %rax
	movq	%rax, 528(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 584(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 576(%rsp)
	movsd	576(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 592(%rsp)
	movsd	592(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movsd	456(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 568(%rsp)
	movsd	568(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movsd	48(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB1_1 Depth=1
	movsd	72(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)                 ## 8-byte Spill
	movq	120(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	144(%rsp,%rax,8), %rax
	movq	%rax, 440(%rsp)
	movq	440(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 432(%rsp)
	movq	432(%rsp), %rax
	movq	%rax, 424(%rsp)
	movsd	424(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 600(%rsp)
	movsd	600(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	movsd	616(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 416(%rsp)
	movsd	416(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)                  ## 8-byte Spill
	movl	$1, %edi
	callq	__ZL32simde_test_f32_precision_to_slopi
	movsd	8(%rsp), %xmm1                  ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	movsd	16(%rsp), %xmm0                 ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movsd	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 24(%rsp)
	movsd	24(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$44, %esi
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.21(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_
	cmpl	$0, %eax
	je	LBB1_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$1, 332(%rsp)
	movl	$1, 116(%rsp)
	jmp	LBB1_9
LBB1_6:                                 ## %if.end
                                        ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_7
LBB1_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_8
LBB1_8:                                 ## %do.end
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	$0, 116(%rsp)
LBB1_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB1_1 Depth=1
	movl	116(%rsp), %eax
	testl	%eax, %eax
	jne	LBB1_12
	jmp	LBB1_10
LBB1_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_11
LBB1_11:                                ## %for.inc
                                        ##   in Loop: Header=BB1_1 Depth=1
	movq	120(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	jmp	LBB1_1
LBB1_12:                                ## %cleanup22
	movl	116(%rsp), %eax
	subl	$2, %eax
	jne	LBB1_14
	jmp	LBB1_13
LBB1_13:                                ## %for.end
	movl	$0, 332(%rsp)
	movl	$1, 116(%rsp)
LBB1_14:                                ## %cleanup24
	movl	332(%rsp), %eax
	addq	$760, %rsp                      ## imm = 0x2F8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL19test_simde_vzip2_s8v
__ZL19test_simde_vzip2_s8v:             ## @_ZL19test_simde_vzip2_s8v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL19test_simde_vzip2_s8v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB2_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB2_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB2_12
LBB2_3:                                 ## %for.body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 640(%rsp)
	movq	640(%rsp), %rax
	movq	%rax, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 648(%rsp)
	movsd	648(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	movq	616(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 624(%rsp)
	movsd	624(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 688(%rsp)
	movq	688(%rsp), %rax
	movq	%rax, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 696(%rsp)
	movsd	696(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 664(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 672(%rsp)
	movsd	672(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 728(%rsp)
	movq	728(%rsp), %rcx
	movsd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rcx, 712(%rsp)
	movq	%rax, 704(%rsp)
	movq	712(%rsp), %mm0
	movq	704(%rsp), %mm1
	punpckhbw	%mm1, %mm0              ## mm0 = mm0[4],mm1[4],mm0[5],mm1[5],mm0[6],mm1[6],mm0[7],mm1[7]
	movq	%mm0, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 568(%rsp)
	movq	568(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	560(%rsp), %rax
	movq	%rax, 576(%rsp)
	movsd	576(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 592(%rsp)
	movq	592(%rsp), %rax
	movq	%rax, 584(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 600(%rsp)
	movsd	600(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$88, %esi
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.23(%rip), %rcx
	callq	__ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB2_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB2_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB2_9
LBB2_6:                                 ## %if.end
                                        ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_7
LBB2_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_8
LBB2_8:                                 ## %do.end
                                        ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, 100(%rsp)
LBB2_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB2_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB2_12
	jmp	LBB2_10
LBB2_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_11
LBB2_11:                                ## %for.inc
                                        ##   in Loop: Header=BB2_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB2_1
LBB2_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB2_14
	jmp	LBB2_13
LBB2_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB2_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2_s16v
__ZL20test_simde_vzip2_s16v:            ## @_ZL20test_simde_vzip2_s16v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2_s16v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB3_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB3_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB3_12
LBB3_3:                                 ## %for.body
                                        ##   in Loop: Header=BB3_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 640(%rsp)
	movq	640(%rsp), %rax
	movq	%rax, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 648(%rsp)
	movsd	648(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	movq	616(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 624(%rsp)
	movsd	624(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 688(%rsp)
	movq	688(%rsp), %rax
	movq	%rax, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 696(%rsp)
	movsd	696(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 664(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 672(%rsp)
	movsd	672(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 728(%rsp)
	movq	728(%rsp), %rcx
	movsd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rcx, 712(%rsp)
	movq	%rax, 704(%rsp)
	movq	712(%rsp), %mm0
	movq	704(%rsp), %mm1
	punpckhwd	%mm1, %mm0              ## mm0 = mm0[2],mm1[2],mm0[3],mm1[3]
	movq	%mm0, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 568(%rsp)
	movq	568(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	560(%rsp), %rax
	movq	%rax, 576(%rsp)
	movsd	576(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB3_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 592(%rsp)
	movq	592(%rsp), %rax
	movq	%rax, 584(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 600(%rsp)
	movsd	600(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$132, %esi
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.25(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB3_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB3_9
LBB3_6:                                 ## %if.end
                                        ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_8
LBB3_8:                                 ## %do.end
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, 100(%rsp)
LBB3_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB3_12
	jmp	LBB3_10
LBB3_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_11
LBB3_11:                                ## %for.inc
                                        ##   in Loop: Header=BB3_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB3_1
LBB3_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB3_14
	jmp	LBB3_13
LBB3_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB3_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2_s32v
__ZL20test_simde_vzip2_s32v:            ## @_ZL20test_simde_vzip2_s32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2_s32v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB4_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB4_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB4_12
LBB4_3:                                 ## %for.body
                                        ##   in Loop: Header=BB4_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 672(%rsp)
	movq	672(%rsp), %rax
	movq	%rax, 688(%rsp)
	movsd	688(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 648(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 664(%rsp)
	movsd	664(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 728(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 704(%rsp)
	movq	704(%rsp), %rax
	movq	%rax, 696(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movsd	712(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 584(%rsp)
	movq	584(%rsp), %rcx
	movsd	%xmm0, 576(%rsp)
	movq	576(%rsp), %rax
	movq	%rcx, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	568(%rsp), %mm0
	movq	560(%rsp), %mm1
	punpckhdq	%mm1, %mm0              ## mm0 = mm0[1],mm1[1]
	movq	%mm0, 592(%rsp)
	movsd	592(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	%rax, 616(%rsp)
	movsd	616(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB4_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	624(%rsp), %rax
	movq	%rax, 640(%rsp)
	movsd	640(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$176, %esi
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.26(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB4_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB4_9
LBB4_6:                                 ## %if.end
                                        ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_7
LBB4_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_8
LBB4_8:                                 ## %do.end
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, 100(%rsp)
LBB4_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB4_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB4_12
	jmp	LBB4_10
LBB4_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_11
LBB4_11:                                ## %for.inc
                                        ##   in Loop: Header=BB4_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB4_1
LBB4_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB4_14
	jmp	LBB4_13
LBB4_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB4_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL19test_simde_vzip2_u8v
__ZL19test_simde_vzip2_u8v:             ## @_ZL19test_simde_vzip2_u8v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL19test_simde_vzip2_u8v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB5_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB5_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB5_12
LBB5_3:                                 ## %for.body
                                        ##   in Loop: Header=BB5_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 672(%rsp)
	movq	672(%rsp), %rax
	movq	%rax, 688(%rsp)
	movsd	688(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 648(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 664(%rsp)
	movsd	664(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 728(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 704(%rsp)
	movq	704(%rsp), %rax
	movq	%rax, 696(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movsd	712(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 584(%rsp)
	movq	584(%rsp), %rcx
	movsd	%xmm0, 576(%rsp)
	movq	576(%rsp), %rax
	movq	%rcx, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	568(%rsp), %mm0
	movq	560(%rsp), %mm1
	punpckhbw	%mm1, %mm0              ## mm0 = mm0[4],mm1[4],mm0[5],mm1[5],mm0[6],mm1[6],mm0[7],mm1[7]
	movq	%mm0, 592(%rsp)
	movsd	592(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	%rax, 616(%rsp)
	movsd	616(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB5_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	624(%rsp), %rax
	movq	%rax, 640(%rsp)
	movsd	640(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$220, %esi
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.27(%rip), %rcx
	callq	__ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB5_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB5_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB5_9
LBB5_6:                                 ## %if.end
                                        ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_7
LBB5_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_8
LBB5_8:                                 ## %do.end
                                        ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, 100(%rsp)
LBB5_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB5_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB5_12
	jmp	LBB5_10
LBB5_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_11
LBB5_11:                                ## %for.inc
                                        ##   in Loop: Header=BB5_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB5_1
LBB5_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB5_14
	jmp	LBB5_13
LBB5_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB5_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2_u16v
__ZL20test_simde_vzip2_u16v:            ## @_ZL20test_simde_vzip2_u16v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2_u16v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB6_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB6_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB6_12
LBB6_3:                                 ## %for.body
                                        ##   in Loop: Header=BB6_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 672(%rsp)
	movq	672(%rsp), %rax
	movq	%rax, 688(%rsp)
	movsd	688(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 648(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 664(%rsp)
	movsd	664(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 728(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 704(%rsp)
	movq	704(%rsp), %rax
	movq	%rax, 696(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movsd	712(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 584(%rsp)
	movq	584(%rsp), %rcx
	movsd	%xmm0, 576(%rsp)
	movq	576(%rsp), %rax
	movq	%rcx, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	568(%rsp), %mm0
	movq	560(%rsp), %mm1
	punpckhwd	%mm1, %mm0              ## mm0 = mm0[2],mm1[2],mm0[3],mm1[3]
	movq	%mm0, 592(%rsp)
	movsd	592(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	%rax, 616(%rsp)
	movsd	616(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB6_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	624(%rsp), %rax
	movq	%rax, 640(%rsp)
	movsd	640(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$263, %esi                      ## imm = 0x107
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.29(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB6_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB6_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB6_9
LBB6_6:                                 ## %if.end
                                        ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_7
LBB6_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_8
LBB6_8:                                 ## %do.end
                                        ##   in Loop: Header=BB6_1 Depth=1
	movl	$0, 100(%rsp)
LBB6_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB6_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB6_12
	jmp	LBB6_10
LBB6_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_11
LBB6_11:                                ## %for.inc
                                        ##   in Loop: Header=BB6_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB6_1
LBB6_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB6_14
	jmp	LBB6_13
LBB6_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB6_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2_u32v
__ZL20test_simde_vzip2_u32v:            ## @_ZL20test_simde_vzip2_u32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$744, %rsp                      ## imm = 0x2E8
	.cfi_def_cfa_offset 752
	leaq	112(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2_u32v.test_vec(%rip), %rsi
	movl	$192, %edx
	callq	_memcpy
	movq	$0, 104(%rsp)
LBB7_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 104(%rsp)
	jb	LBB7_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 100(%rsp)
	jmp	LBB7_12
LBB7_3:                                 ## %for.body
                                        ##   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	112(%rsp,%rax,8), %rax
	movq	%rax, 344(%rsp)
	movq	344(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 336(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movsd	328(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 680(%rsp)
	movq	680(%rsp), %rax
	movq	%rax, 672(%rsp)
	movq	672(%rsp), %rax
	movq	%rax, 688(%rsp)
	movsd	688(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 320(%rsp)
	movq	320(%rsp), %rax
	movq	%rax, 352(%rsp)
	movsd	352(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 80(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	120(%rsp,%rax,8), %rax
	movq	%rax, 384(%rsp)
	movq	384(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 376(%rsp)
	movq	376(%rsp), %rax
	movq	%rax, 368(%rsp)
	movsd	368(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 648(%rsp)
	movq	648(%rsp), %rax
	movq	%rax, 664(%rsp)
	movsd	664(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 360(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 392(%rsp)
	movsd	392(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, 48(%rsp)
	movsd	48(%rsp), %xmm1                 ## xmm1 = mem[0],zero
	movq	%rax, 40(%rsp)
	movsd	40(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm1, 544(%rsp)
	movq	544(%rsp), %rcx
	movsd	%xmm0, 536(%rsp)
	movq	536(%rsp), %rax
	movq	%rcx, 528(%rsp)
	movq	%rax, 520(%rsp)
	movq	528(%rsp), %rax
	movq	%rax, 496(%rsp)
	movsd	496(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 728(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 736(%rsp)
	movsd	736(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movq	520(%rsp), %rax
	movq	%rax, 480(%rsp)
	movsd	480(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 704(%rsp)
	movq	704(%rsp), %rax
	movq	%rax, 696(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 712(%rsp)
	movsd	712(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 488(%rsp)
	movq	504(%rsp), %rcx
	movq	488(%rsp), %rax
	movq	%rcx, 472(%rsp)
	movsd	472(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movq	%rax, 464(%rsp)
	movsd	464(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 584(%rsp)
	movq	584(%rsp), %rcx
	movsd	%xmm0, 576(%rsp)
	movq	576(%rsp), %rax
	movq	%rcx, 568(%rsp)
	movq	%rax, 560(%rsp)
	movq	568(%rsp), %mm0
	movq	560(%rsp), %mm1
	punpckhdq	%mm1, %mm0              ## mm0 = mm0[1],mm1[1]
	movq	%mm0, 592(%rsp)
	movsd	592(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 456(%rsp)
	movq	456(%rsp), %rax
	movq	%rax, 512(%rsp)
	movq	512(%rsp), %rax
	movq	%rax, 448(%rsp)
	movsd	448(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 608(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	%rax, 616(%rsp)
	movsd	616(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 440(%rsp)
	movq	440(%rsp), %rax
	movq	%rax, 552(%rsp)
	movsd	552(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB7_1 Depth=1
	movq	56(%rsp), %rcx
	movq	104(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	128(%rsp,%rax,8), %rax
	movq	%rax, 424(%rsp)
	movq	424(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 416(%rsp)
	movq	416(%rsp), %rax
	movq	%rax, 408(%rsp)
	movsd	408(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 632(%rsp)
	movq	632(%rsp), %rax
	movq	%rax, 624(%rsp)
	movq	624(%rsp), %rax
	movq	%rax, 640(%rsp)
	movsd	640(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 400(%rsp)
	movq	400(%rsp), %rax
	movq	%rax, 432(%rsp)
	movsd	432(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm1                  ## xmm1 = mem[0],zero
	leaq	L_.str.19(%rip), %rdi
	movl	$306, %esi                      ## imm = 0x132
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.30(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB7_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB7_1 Depth=1
	movl	$1, 316(%rsp)
	movl	$1, 100(%rsp)
	jmp	LBB7_9
LBB7_6:                                 ## %if.end
                                        ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_7
LBB7_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_8
LBB7_8:                                 ## %do.end
                                        ##   in Loop: Header=BB7_1 Depth=1
	movl	$0, 100(%rsp)
LBB7_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB7_1 Depth=1
	movl	100(%rsp), %eax
	testl	%eax, %eax
	jne	LBB7_12
	jmp	LBB7_10
LBB7_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_11
LBB7_11:                                ## %for.inc
                                        ##   in Loop: Header=BB7_1 Depth=1
	movq	104(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 104(%rsp)
	jmp	LBB7_1
LBB7_12:                                ## %cleanup21
	movl	100(%rsp), %eax
	subl	$2, %eax
	jne	LBB7_14
	jmp	LBB7_13
LBB7_13:                                ## %for.end
	movl	$0, 316(%rsp)
	movl	$1, 100(%rsp)
LBB7_14:                                ## %cleanup23
	movl	316(%rsp), %eax
	addq	$744, %rsp                      ## imm = 0x2E8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_f32v
__ZL21test_simde_vzip2q_f32v:           ## @_ZL21test_simde_vzip2q_f32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$968, %rsp                      ## imm = 0x3C8
	.cfi_def_cfa_offset 976
	leaq	96(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_f32v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 88(%rsp)
LBB8_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 88(%rsp)
	jb	LBB8_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 84(%rsp)
	jmp	LBB8_12
LBB8_3:                                 ## %for.body
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	88(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	96(%rsp,%rax), %rax
	movq	%rax, 536(%rsp)
	movq	536(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 512(%rsp)
	movaps	512(%rsp), %xmm0
	movaps	%xmm0, 496(%rsp)
	movapd	496(%rsp), %xmm0
	movapd	%xmm0, 848(%rsp)
	movaps	848(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 64(%rsp)
	movq	88(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	112(%rsp,%rax), %rax
	movq	%rax, 584(%rsp)
	movq	584(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 560(%rsp)
	movaps	560(%rsp), %xmm0
	movaps	%xmm0, 544(%rsp)
	movapd	544(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	64(%rsp), %xmm1
	movaps	48(%rsp), %xmm0
	movaps	%xmm1, 720(%rsp)
	movaps	%xmm0, 704(%rsp)
	movaps	720(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movaps	896(%rsp), %xmm0
	movaps	%xmm0, 912(%rsp)
	movapd	912(%rsp), %xmm0
	movapd	%xmm0, 672(%rsp)
	movaps	704(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 656(%rsp)
	movaps	672(%rsp), %xmm1
	movaps	656(%rsp), %xmm0
	movaps	%xmm1, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	movaps	944(%rsp), %xmm0
	movaps	928(%rsp), %xmm1
	unpckhps	%xmm1, %xmm0                    ## xmm0 = xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movaps	%xmm0, 688(%rsp)
	movq	688(%rsp), %rax
	movq	%rax, 640(%rsp)
	movq	696(%rsp), %rax
	movq	%rax, 648(%rsp)
	movapd	640(%rsp), %xmm0
	movapd	%xmm0, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movaps	736(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB8_1 Depth=1
	movaps	32(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)                 ## 16-byte Spill
	leaq	96(%rsp), %rax
	imulq	$48, 88(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 632(%rsp)
	movq	632(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 608(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 616(%rsp)
	movq	608(%rsp), %rax
	movq	%rax, 592(%rsp)
	movq	616(%rsp), %rax
	movq	%rax, 600(%rsp)
	movapd	592(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 768(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 776(%rsp)
	movaps	768(%rsp), %xmm0
	movaps	%xmm0, (%rsp)                   ## 16-byte Spill
	movl	$1, %edi
	callq	__ZL32simde_test_f32_precision_to_slopi
	movaps	(%rsp), %xmm1                   ## 16-byte Reload
	movaps	%xmm0, %xmm2
	movaps	16(%rsp), %xmm0                 ## 16-byte Reload
	leaq	L_.str.19(%rip), %rdi
	movl	$349, %esi                      ## imm = 0x15D
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.31(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_
	cmpl	$0, %eax
	je	LBB8_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	$1, 492(%rsp)
	movl	$1, 84(%rsp)
	jmp	LBB8_9
LBB8_6:                                 ## %if.end
                                        ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_7
LBB8_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_8
LBB8_8:                                 ## %do.end
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	$0, 84(%rsp)
LBB8_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	84(%rsp), %eax
	testl	%eax, %eax
	jne	LBB8_12
	jmp	LBB8_10
LBB8_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_11
LBB8_11:                                ## %for.inc
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	88(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 88(%rsp)
	jmp	LBB8_1
LBB8_12:                                ## %cleanup15
	movl	84(%rsp), %eax
	subl	$2, %eax
	jne	LBB8_14
	jmp	LBB8_13
LBB8_13:                                ## %for.end
	movl	$0, 492(%rsp)
	movl	$1, 84(%rsp)
LBB8_14:                                ## %cleanup17
	movl	492(%rsp), %eax
	addq	$968, %rsp                      ## imm = 0x3C8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2q_s8v
__ZL20test_simde_vzip2q_s8v:            ## @_ZL20test_simde_vzip2q_s8v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2q_s8v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB9_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB9_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB9_12
LBB9_3:                                 ## %for.body
                                        ##   in Loop: Header=BB9_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movaps	784(%rsp), %xmm0
	movaps	%xmm0, 768(%rsp)
	movaps	768(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 848(%rsp)
	movapd	848(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 912(%rsp)
	movaps	%xmm0, 896(%rsp)
	movaps	912(%rsp), %xmm0
	movaps	896(%rsp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 704(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 712(%rsp)
	movdqa	704(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB9_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$417, %esi                      ## imm = 0x1A1
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.32(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB9_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB9_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB9_9
LBB9_6:                                 ## %if.end
                                        ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_7
LBB9_7:                                 ## %do.cond
                                        ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_8
LBB9_8:                                 ## %do.end
                                        ##   in Loop: Header=BB9_1 Depth=1
	movl	$0, 52(%rsp)
LBB9_9:                                 ## %cleanup
                                        ##   in Loop: Header=BB9_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB9_12
	jmp	LBB9_10
LBB9_10:                                ## %cleanup.cont
                                        ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_11
LBB9_11:                                ## %for.inc
                                        ##   in Loop: Header=BB9_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB9_1
LBB9_12:                                ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB9_14
	jmp	LBB9_13
LBB9_13:                                ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB9_14:                                ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_s16v
__ZL21test_simde_vzip2q_s16v:           ## @_ZL21test_simde_vzip2q_s16v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_s16v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB10_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB10_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB10_12
LBB10_3:                                ## %for.body
                                        ##   in Loop: Header=BB10_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movaps	784(%rsp), %xmm0
	movaps	%xmm0, 768(%rsp)
	movaps	768(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 848(%rsp)
	movapd	848(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 912(%rsp)
	movaps	%xmm0, 896(%rsp)
	movaps	912(%rsp), %xmm0
	movaps	896(%rsp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 704(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 712(%rsp)
	movdqa	704(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB10_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$461, %esi                      ## imm = 0x1CD
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.33(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB10_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB10_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB10_9
LBB10_6:                                ## %if.end
                                        ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_7
LBB10_7:                                ## %do.cond
                                        ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_8
LBB10_8:                                ## %do.end
                                        ##   in Loop: Header=BB10_1 Depth=1
	movl	$0, 52(%rsp)
LBB10_9:                                ## %cleanup
                                        ##   in Loop: Header=BB10_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB10_12
	jmp	LBB10_10
LBB10_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_11
LBB10_11:                               ## %for.inc
                                        ##   in Loop: Header=BB10_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB10_1
LBB10_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB10_14
	jmp	LBB10_13
LBB10_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB10_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_s32v
__ZL21test_simde_vzip2q_s32v:           ## @_ZL21test_simde_vzip2q_s32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_s32v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB11_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB11_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB11_12
LBB11_3:                                ## %for.body
                                        ##   in Loop: Header=BB11_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movaps	784(%rsp), %xmm0
	movaps	%xmm0, 768(%rsp)
	movaps	768(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 848(%rsp)
	movapd	848(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 912(%rsp)
	movaps	%xmm0, 896(%rsp)
	movaps	912(%rsp), %xmm0
	movaps	896(%rsp), %xmm1
	punpckhdq	%xmm1, %xmm0            ## xmm0 = xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 704(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 712(%rsp)
	movdqa	704(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB11_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$504, %esi                      ## imm = 0x1F8
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.34(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB11_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB11_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB11_9
LBB11_6:                                ## %if.end
                                        ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_7
LBB11_7:                                ## %do.cond
                                        ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_8
LBB11_8:                                ## %do.end
                                        ##   in Loop: Header=BB11_1 Depth=1
	movl	$0, 52(%rsp)
LBB11_9:                                ## %cleanup
                                        ##   in Loop: Header=BB11_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB11_12
	jmp	LBB11_10
LBB11_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_11
LBB11_11:                               ## %for.inc
                                        ##   in Loop: Header=BB11_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB11_1
LBB11_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB11_14
	jmp	LBB11_13
LBB11_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB11_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_s64v
__ZL21test_simde_vzip2q_s64v:           ## @_ZL21test_simde_vzip2q_s64v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_s64v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB12_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB12_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB12_12
LBB12_3:                                ## %for.body
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 784(%rsp)
	movaps	784(%rsp), %xmm0
	movaps	%xmm0, 768(%rsp)
	movaps	768(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 848(%rsp)
	movapd	848(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 912(%rsp)
	movaps	%xmm0, 896(%rsp)
	movaps	912(%rsp), %xmm0
	movaps	896(%rsp), %xmm1
	punpckhqdq	%xmm1, %xmm0            ## xmm0 = xmm0[1],xmm1[1]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 720(%rsp)
	movq	720(%rsp), %rax
	movq	%rax, 704(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 712(%rsp)
	movdqa	704(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB12_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$547, %esi                      ## imm = 0x223
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.35(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB12_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB12_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB12_9
LBB12_6:                                ## %if.end
                                        ##   in Loop: Header=BB12_1 Depth=1
	jmp	LBB12_7
LBB12_7:                                ## %do.cond
                                        ##   in Loop: Header=BB12_1 Depth=1
	jmp	LBB12_8
LBB12_8:                                ## %do.end
                                        ##   in Loop: Header=BB12_1 Depth=1
	movl	$0, 52(%rsp)
LBB12_9:                                ## %cleanup
                                        ##   in Loop: Header=BB12_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB12_12
	jmp	LBB12_10
LBB12_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB12_1 Depth=1
	jmp	LBB12_11
LBB12_11:                               ## %for.inc
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB12_1
LBB12_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB12_14
	jmp	LBB12_13
LBB12_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB12_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL20test_simde_vzip2q_u8v
__ZL20test_simde_vzip2q_u8v:            ## @_ZL20test_simde_vzip2q_u8v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL20test_simde_vzip2q_u8v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB13_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB13_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB13_12
LBB13_3:                                ## %for.body
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 848(%rsp)
	movaps	848(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movaps	896(%rsp), %xmm0
	movaps	%xmm0, 912(%rsp)
	movapd	912(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 720(%rsp)
	movaps	%xmm0, 704(%rsp)
	movaps	720(%rsp), %xmm0
	movaps	704(%rsp), %xmm1
	punpckhbw	%xmm1, %xmm0            ## xmm0 = xmm0[8],xmm1[8],xmm0[9],xmm1[9],xmm0[10],xmm1[10],xmm0[11],xmm1[11],xmm0[12],xmm1[12],xmm0[13],xmm1[13],xmm0[14],xmm1[14],xmm0[15],xmm1[15]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB13_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 784(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 768(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 776(%rsp)
	movdqa	768(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$615, %esi                      ## imm = 0x267
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.37(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB13_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB13_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB13_9
LBB13_6:                                ## %if.end
                                        ##   in Loop: Header=BB13_1 Depth=1
	jmp	LBB13_7
LBB13_7:                                ## %do.cond
                                        ##   in Loop: Header=BB13_1 Depth=1
	jmp	LBB13_8
LBB13_8:                                ## %do.end
                                        ##   in Loop: Header=BB13_1 Depth=1
	movl	$0, 52(%rsp)
LBB13_9:                                ## %cleanup
                                        ##   in Loop: Header=BB13_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB13_12
	jmp	LBB13_10
LBB13_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB13_1 Depth=1
	jmp	LBB13_11
LBB13_11:                               ## %for.inc
                                        ##   in Loop: Header=BB13_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB13_1
LBB13_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB13_14
	jmp	LBB13_13
LBB13_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB13_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_u16v
__ZL21test_simde_vzip2q_u16v:           ## @_ZL21test_simde_vzip2q_u16v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_u16v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB14_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB14_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB14_12
LBB14_3:                                ## %for.body
                                        ##   in Loop: Header=BB14_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 848(%rsp)
	movaps	848(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movaps	896(%rsp), %xmm0
	movaps	%xmm0, 912(%rsp)
	movapd	912(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 720(%rsp)
	movaps	%xmm0, 704(%rsp)
	movaps	720(%rsp), %xmm0
	movaps	704(%rsp), %xmm1
	punpckhwd	%xmm1, %xmm0            ## xmm0 = xmm0[4],xmm1[4],xmm0[5],xmm1[5],xmm0[6],xmm1[6],xmm0[7],xmm1[7]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB14_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 784(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 768(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 776(%rsp)
	movdqa	768(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$658, %esi                      ## imm = 0x292
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.38(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB14_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB14_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB14_9
LBB14_6:                                ## %if.end
                                        ##   in Loop: Header=BB14_1 Depth=1
	jmp	LBB14_7
LBB14_7:                                ## %do.cond
                                        ##   in Loop: Header=BB14_1 Depth=1
	jmp	LBB14_8
LBB14_8:                                ## %do.end
                                        ##   in Loop: Header=BB14_1 Depth=1
	movl	$0, 52(%rsp)
LBB14_9:                                ## %cleanup
                                        ##   in Loop: Header=BB14_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB14_12
	jmp	LBB14_10
LBB14_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB14_1 Depth=1
	jmp	LBB14_11
LBB14_11:                               ## %for.inc
                                        ##   in Loop: Header=BB14_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB14_1
LBB14_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB14_14
	jmp	LBB14_13
LBB14_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB14_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_u32v
__ZL21test_simde_vzip2q_u32v:           ## @_ZL21test_simde_vzip2q_u32v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_u32v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB15_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB15_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB15_12
LBB15_3:                                ## %for.body
                                        ##   in Loop: Header=BB15_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 848(%rsp)
	movaps	848(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movaps	896(%rsp), %xmm0
	movaps	%xmm0, 912(%rsp)
	movapd	912(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 720(%rsp)
	movaps	%xmm0, 704(%rsp)
	movaps	720(%rsp), %xmm0
	movaps	704(%rsp), %xmm1
	punpckhdq	%xmm1, %xmm0            ## xmm0 = xmm0[2],xmm1[2],xmm0[3],xmm1[3]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB15_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 784(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 768(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 776(%rsp)
	movdqa	768(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$702, %esi                      ## imm = 0x2BE
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.39(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB15_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB15_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB15_9
LBB15_6:                                ## %if.end
                                        ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_7
LBB15_7:                                ## %do.cond
                                        ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_8
LBB15_8:                                ## %do.end
                                        ##   in Loop: Header=BB15_1 Depth=1
	movl	$0, 52(%rsp)
LBB15_9:                                ## %cleanup
                                        ##   in Loop: Header=BB15_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB15_12
	jmp	LBB15_10
LBB15_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_11
LBB15_11:                               ## %for.inc
                                        ##   in Loop: Header=BB15_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB15_1
LBB15_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB15_14
	jmp	LBB15_13
LBB15_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB15_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21test_simde_vzip2q_u64v
__ZL21test_simde_vzip2q_u64v:           ## @_ZL21test_simde_vzip2q_u64v
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$936, %rsp                      ## imm = 0x3A8
	.cfi_def_cfa_offset 944
	leaq	64(%rsp), %rdi
	leaq	l___const._ZL21test_simde_vzip2q_u64v.test_vec(%rip), %rsi
	movl	$384, %edx                      ## imm = 0x180
	callq	_memcpy
	movq	$0, 56(%rsp)
LBB16_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, 56(%rsp)
	jb	LBB16_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 52(%rsp)
	jmp	LBB16_12
LBB16_3:                                ## %for.body
                                        ##   in Loop: Header=BB16_1 Depth=1
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	64(%rsp,%rax), %rax
	movq	%rax, 504(%rsp)
	movq	504(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 480(%rsp)
	movaps	480(%rsp), %xmm0
	movaps	%xmm0, 464(%rsp)
	movapd	464(%rsp), %xmm0
	movapd	%xmm0, 848(%rsp)
	movaps	848(%rsp), %xmm0
	movaps	%xmm0, 832(%rsp)
	movaps	832(%rsp), %xmm0
	movaps	%xmm0, 32(%rsp)
	movq	56(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	shlq	$4, %rax
	leaq	80(%rsp,%rax), %rax
	movq	%rax, 552(%rsp)
	movq	552(%rsp), %rax
	movups	(%rax), %xmm0
	movaps	%xmm0, 528(%rsp)
	movaps	528(%rsp), %xmm0
	movaps	%xmm0, 512(%rsp)
	movapd	512(%rsp), %xmm0
	movapd	%xmm0, 816(%rsp)
	movaps	816(%rsp), %xmm0
	movaps	%xmm0, 800(%rsp)
	movaps	800(%rsp), %xmm0
	movaps	%xmm0, 16(%rsp)
	movaps	32(%rsp), %xmm1
	movaps	16(%rsp), %xmm0
	movaps	%xmm1, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, 896(%rsp)
	movaps	896(%rsp), %xmm0
	movaps	%xmm0, 912(%rsp)
	movapd	912(%rsp), %xmm0
	movapd	%xmm0, 640(%rsp)
	movaps	672(%rsp), %xmm0
	movaps	%xmm0, 864(%rsp)
	movaps	864(%rsp), %xmm0
	movaps	%xmm0, 880(%rsp)
	movapd	880(%rsp), %xmm0
	movapd	%xmm0, 624(%rsp)
	movaps	640(%rsp), %xmm1
	movaps	624(%rsp), %xmm0
	movaps	%xmm1, 720(%rsp)
	movaps	%xmm0, 704(%rsp)
	movaps	720(%rsp), %xmm0
	movaps	704(%rsp), %xmm1
	punpckhqdq	%xmm1, %xmm0            ## xmm0 = xmm0[1],xmm1[1]
	movdqa	%xmm0, 656(%rsp)
	movq	656(%rsp), %rax
	movq	%rax, 608(%rsp)
	movq	664(%rsp), %rax
	movq	%rax, 616(%rsp)
	movapd	608(%rsp), %xmm0
	movapd	%xmm0, 752(%rsp)
	movq	752(%rsp), %rax
	movq	%rax, 736(%rsp)
	movq	760(%rsp), %rax
	movq	%rax, 744(%rsp)
	movdqa	736(%rsp), %xmm0
	movdqa	%xmm0, (%rsp)
## %bb.4:                               ## %do.body
                                        ##   in Loop: Header=BB16_1 Depth=1
	movdqa	(%rsp), %xmm0
	leaq	64(%rsp), %rax
	imulq	$48, 56(%rsp), %rcx
	addq	%rcx, %rax
	addq	$32, %rax
	movq	%rax, 600(%rsp)
	movq	600(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 576(%rsp)
	movq	8(%rax), %rax
	movq	%rax, 584(%rsp)
	movq	576(%rsp), %rax
	movq	%rax, 560(%rsp)
	movq	584(%rsp), %rax
	movq	%rax, 568(%rsp)
	movapd	560(%rsp), %xmm1
	movapd	%xmm1, 784(%rsp)
	movq	784(%rsp), %rax
	movq	%rax, 768(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 776(%rsp)
	movdqa	768(%rsp), %xmm1
	leaq	L_.str.19(%rip), %rdi
	movl	$745, %esi                      ## imm = 0x2E9
	leaq	L_.str.20(%rip), %rdx
	leaq	L_.str.40(%rip), %rcx
	callq	__ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_
	cmpl	$0, %eax
	je	LBB16_6
## %bb.5:                               ## %if.then
                                        ##   in Loop: Header=BB16_1 Depth=1
	movl	$1, 460(%rsp)
	movl	$1, 52(%rsp)
	jmp	LBB16_9
LBB16_6:                                ## %if.end
                                        ##   in Loop: Header=BB16_1 Depth=1
	jmp	LBB16_7
LBB16_7:                                ## %do.cond
                                        ##   in Loop: Header=BB16_1 Depth=1
	jmp	LBB16_8
LBB16_8:                                ## %do.end
                                        ##   in Loop: Header=BB16_1 Depth=1
	movl	$0, 52(%rsp)
LBB16_9:                                ## %cleanup
                                        ##   in Loop: Header=BB16_1 Depth=1
	movl	52(%rsp), %eax
	testl	%eax, %eax
	jne	LBB16_12
	jmp	LBB16_10
LBB16_10:                               ## %cleanup.cont
                                        ##   in Loop: Header=BB16_1 Depth=1
	jmp	LBB16_11
LBB16_11:                               ## %for.inc
                                        ##   in Loop: Header=BB16_1 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB16_1
LBB16_12:                               ## %cleanup14
	movl	52(%rsp), %eax
	subl	$2, %eax
	jne	LBB16_14
	jmp	LBB16_13
LBB16_13:                               ## %for.end
	movl	$0, 460(%rsp)
	movl	$1, 52(%rsp)
LBB16_14:                               ## %cleanup16
	movl	460(%rsp), %eax
	addq	$936, %rsp                      ## imm = 0x3A8
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_f32x2_Dv2_fS_fPKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movsd	%xmm1, 8(%rsp)                  ## 8-byte Spill
	movaps	%xmm0, %xmm1
	movsd	8(%rsp), %xmm0                  ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm1, 112(%rsp)
	movsd	112(%rsp), %xmm1                ## xmm1 = mem[0],zero
	movsd	%xmm0, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm1, 96(%rsp)
	movsd	%xmm0, 88(%rsp)
	movss	%xmm2, 84(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movsd	96(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movsd	24(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movsd	152(%rsp), %xmm0                ## xmm0 = mem[0],zero
	leaq	40(%rsp), %rax
	movq	%rax, 144(%rsp)
	movsd	%xmm0, 136(%rsp)
	movsd	136(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)
	movsd	120(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movsd	176(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 128(%rsp)
	movq	144(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rcx, (%rax)
	movsd	88(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movsd	216(%rsp), %xmm0                ## xmm0 = mem[0],zero
	leaq	32(%rsp), %rax
	movq	%rax, 208(%rsp)
	movsd	%xmm0, 200(%rsp)
	movsd	200(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 184(%rsp)
	movsd	184(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 232(%rsp)
	movsd	232(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 224(%rsp)
	movq	224(%rsp), %rax
	movq	%rax, 240(%rsp)
	movsd	240(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 192(%rsp)
	movq	208(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movss	84(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$2, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_
	addq	$248, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function _ZL32simde_test_f32_precision_to_slopi
LCPI18_0:
	.long	0x41200000                      ## float 10
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
__ZL32simde_test_f32_precision_to_slopi: ## @_ZL32simde_test_f32_precision_to_slopi
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	cmpl	$2147483647, 4(%rsp)            ## imm = 0x7FFFFFFF
	sete	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB18_2
## %bb.1:                               ## %cond.true
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rsp)                   ## 4-byte Spill
	jmp	LBB18_3
LBB18_2:                                ## %cond.false
	cvtsi2ssl	4(%rsp), %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               ## imm = 0x80000000
	movd	%eax, %xmm1
	movss	LCPI18_0(%rip), %xmm0           ## xmm0 = [1.0E+1,0.0E+0,0.0E+0,0.0E+0]
	callq	_powf
	movss	%xmm0, (%rsp)                   ## 4-byte Spill
LBB18_3:                                ## %cond.end
	movss	(%rsp), %xmm0                   ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_
__ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_: ## @_ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	96(%rsp), %rax
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movss	%xmm0, 52(%rsp)
	movq	%rcx, 40(%rsp)
	movl	%r8d, 36(%rsp)
	movq	%r9, 24(%rsp)
	movq	$0, 16(%rsp)
LBB19_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	cmpq	72(%rsp), %rax
	jb	LBB19_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 12(%rsp)
	jmp	LBB19_7
LBB19_3:                                ## %for.body
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rsp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	56(%rsp), %rax
	movq	16(%rsp), %rcx
	movss	(%rax,%rcx,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movss	52(%rsp), %xmm2                 ## xmm2 = mem[0],zero,zero,zero
	callq	__ZL20simde_test_equal_f32fff
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB19_5
## %bb.4:                               ## %if.then
	movq	40(%rsp), %rsi
	movl	36(%rsp), %edx
	movq	24(%rsp), %rcx
	movq	16(%rsp), %r8
	movq	96(%rsp), %r9
	movq	16(%rsp), %rax
	movq	64(%rsp), %rdi
	movq	16(%rsp), %r10
	movss	(%rdi,%r10,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	56(%rsp), %rdi
	movq	16(%rsp), %r10
	movss	(%rdi,%r10,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	L_.str.22(%rip), %rdi
	movq	%rax, (%rsp)
	movb	$2, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 84(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB19_7
LBB19_5:                                ## %if.end
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_6
LBB19_6:                                ## %for.inc
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB19_1
LBB19_7:                                ## %cleanup
	movl	12(%rsp), %eax
	subl	$1, %eax
	je	LBB19_9
	jmp	LBB19_11
LBB19_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 84(%rsp)
LBB19_9:                                ## %return
	movl	84(%rsp), %eax
	addq	$88, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function _ZL20simde_test_equal_f32fff
LCPI20_0:
	.long	0xff800000                      ## float -Inf
LCPI20_1:
	.long	0x7f800000                      ## float +Inf
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
__ZL20simde_test_equal_f32fff:          ## @_ZL20simde_test_equal_f32fff
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movss	%xmm0, 32(%rsp)
	movss	%xmm1, 28(%rsp)
	movss	%xmm2, 24(%rsp)
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm0
	setp	%al
	testb	$1, %al
	jne	LBB20_1
	jmp	LBB20_2
LBB20_1:                                ## %if.then
	movss	28(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm0
	setp	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 36(%rsp)
	jmp	LBB20_15
LBB20_2:                                ## %if.else
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	andl	$2147483647, %eax               ## imm = 0x7FFFFFFF
	subl	$2139095040, %eax               ## imm = 0x7F800000
	sete	%al
	testb	$1, %al
	jne	LBB20_3
	jmp	LBB20_6
LBB20_3:                                ## %if.then1
	movss	32(%rsp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	movss	28(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movb	$1, %al
	ucomiss	%xmm1, %xmm0
	movb	%al, 15(%rsp)                   ## 1-byte Spill
	ja	LBB20_5
## %bb.4:                               ## %lor.rhs
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	28(%rsp), %xmm0
	seta	%al
	movb	%al, 15(%rsp)                   ## 1-byte Spill
LBB20_5:                                ## %lor.end
	movb	15(%rsp), %al                   ## 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 36(%rsp)
	jmp	LBB20_15
LBB20_6:                                ## %if.else3
	movss	24(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	LBB20_8
	jp	LBB20_8
## %bb.7:                               ## %if.then5
	movl	28(%rsp), %ecx
	movl	32(%rsp), %eax
	subl	%ecx, %eax
	setne	%al
	movzbl	%al, %eax
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 36(%rsp)
	jmp	LBB20_15
LBB20_8:                                ## %if.else8
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	subss	24(%rsp), %xmm0
	movss	%xmm0, 20(%rsp)
	movss	20(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	32(%rsp), %xmm0
	sete	%al
	setnp	%cl
	andb	%cl, %al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB20_10
## %bb.9:                               ## %if.then14
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI20_0(%rip), %xmm1           ## xmm1 = [-Inf,0.0E+0,0.0E+0,0.0E+0]
	callq	_nextafterf
	movss	%xmm0, 20(%rsp)
LBB20_10:                               ## %if.end
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	addss	24(%rsp), %xmm0
	movss	%xmm0, 16(%rsp)
	movss	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	32(%rsp), %xmm0
	sete	%al
	setnp	%cl
	andb	%cl, %al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB20_12
## %bb.11:                              ## %if.then22
	movss	32(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI20_1(%rip), %xmm1           ## xmm1 = [+Inf,0.0E+0,0.0E+0,0.0E+0]
	callq	_nextafterf
	movss	%xmm0, 16(%rsp)
LBB20_12:                               ## %if.end24
	movss	28(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	ucomiss	20(%rsp), %xmm0
	movb	%al, 14(%rsp)                   ## 1-byte Spill
	jb	LBB20_14
## %bb.13:                              ## %land.rhs
	movss	28(%rsp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	movss	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	setae	%al
	movb	%al, 14(%rsp)                   ## 1-byte Spill
LBB20_14:                               ## %land.end
	movb	14(%rsp), %al                   ## 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 36(%rsp)
LBB20_15:                               ## %return
	movl	36(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_test_debug_printf_PKcz
__ZL24simde_test_debug_printf_PKcz:     ## @_ZL24simde_test_debug_printf_PKcz
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	testb	%al, %al
	je	LBB21_2
## %bb.1:                               ## %entry
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm4, 128(%rsp)
	movaps	%xmm5, 144(%rsp)
	movaps	%xmm6, 160(%rsp)
	movaps	%xmm7, 176(%rsp)
LBB21_2:                                ## %entry
	movq	%r9, 56(%rsp)
	movq	%r8, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdi, 224(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 208(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 200(%rsp)
	movl	$48, 196(%rsp)
	movl	$8, 192(%rsp)
	movq	_stderr@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	movq	(%rax), %rdi
	movq	224(%rsp), %rsi
	leaq	192(%rsp), %rdx
	callq	_vfprintf
                                        ## kill: def $ecx killed $eax
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movq	(%rax), %rdi
	callq	_fflush
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_
__ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_: ## @_ZL38simde_test_arm_neon_assert_equal_i8x8_Dv8_aS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$8, %edi
	movq	%rax, (%rsp)
	callq	__ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_
__ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_: ## @_ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB23_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB23_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB23_7
LBB23_3:                                ## %for.body
                                        ##   in Loop: Header=BB23_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB23_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movsbl	(%rax,%rdi), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movsbl	(%rax,%rdi), %eax
	leaq	L_.str.24(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB23_7
LBB23_5:                                ## %if.end
                                        ##   in Loop: Header=BB23_1 Depth=1
	jmp	LBB23_6
LBB23_6:                                ## %for.inc
                                        ##   in Loop: Header=BB23_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB23_1
LBB23_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB23_9
	jmp	LBB23_11
LBB23_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB23_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i16x4_Dv4_sS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$4, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_
__ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB25_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB25_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB25_7
LBB25_3:                                ## %for.body
                                        ##   in Loop: Header=BB25_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movswl	(%rax,%rcx,2), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	movswl	(%rcx,%rdx,2), %ecx
	cmpl	%ecx, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB25_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movswl	(%rax,%rdi,2), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movswl	(%rax,%rdi,2), %eax
	leaq	L_.str.24(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB25_7
LBB25_5:                                ## %if.end
                                        ##   in Loop: Header=BB25_1 Depth=1
	jmp	LBB25_6
LBB25_6:                                ## %for.inc
                                        ##   in Loop: Header=BB25_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB25_1
LBB25_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB25_9
	jmp	LBB25_11
LBB25_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB25_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i32x2_Dv2_iS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$2, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_
__ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB27_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB27_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB27_7
LBB27_3:                                ## %for.body
                                        ##   in Loop: Header=BB27_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB27_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movl	(%rax,%rdi,4), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movl	(%rax,%rdi,4), %eax
	leaq	L_.str.24(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB27_7
LBB27_5:                                ## %if.end
                                        ##   in Loop: Header=BB27_1 Depth=1
	jmp	LBB27_6
LBB27_6:                                ## %for.inc
                                        ##   in Loop: Header=BB27_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB27_1
LBB27_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB27_9
	jmp	LBB27_11
LBB27_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB27_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_
__ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_: ## @_ZL38simde_test_arm_neon_assert_equal_u8x8_Dv8_hS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$8, %edi
	movq	%rax, (%rsp)
	callq	__ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_
__ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_: ## @_ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB29_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB29_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB29_7
LBB29_3:                                ## %for.body
                                        ##   in Loop: Header=BB29_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	movzbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB29_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movzbl	(%rax,%rdi), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movzbl	(%rax,%rdi), %eax
	leaq	L_.str.28(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB29_7
LBB29_5:                                ## %if.end
                                        ##   in Loop: Header=BB29_1 Depth=1
	jmp	LBB29_6
LBB29_6:                                ## %for.inc
                                        ##   in Loop: Header=BB29_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB29_1
LBB29_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB29_9
	jmp	LBB29_11
LBB29_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB29_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u16x4_Dv4_tS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$4, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_
__ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB31_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB31_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB31_7
LBB31_3:                                ## %for.body
                                        ##   in Loop: Header=BB31_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movzwl	(%rax,%rcx,2), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	movzwl	(%rcx,%rdx,2), %ecx
	cmpl	%ecx, %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB31_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movzwl	(%rax,%rdi,2), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movzwl	(%rax,%rdi,2), %eax
	leaq	L_.str.28(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB31_7
LBB31_5:                                ## %if.end
                                        ##   in Loop: Header=BB31_1 Depth=1
	jmp	LBB31_6
LBB31_6:                                ## %for.inc
                                        ##   in Loop: Header=BB31_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB31_1
LBB31_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB31_9
	jmp	LBB31_11
LBB31_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB31_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u32x2_Dv2_jS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movsd	%xmm0, 96(%rsp)
	movq	96(%rsp), %r8
	movsd	%xmm1, 88(%rsp)
	movq	88(%rsp), %rax
	movq	%r8, 80(%rsp)
	movq	%rax, 72(%rsp)
	movq	%rdi, 64(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 16(%rsp)
	movsd	16(%rsp), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movq	136(%rsp), %rax
	leaq	32(%rsp), %rcx
	movq	%rcx, 128(%rsp)
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 104(%rsp)
	movsd	104(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 152(%rsp)
	movq	152(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 160(%rsp)
	movsd	160(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 112(%rsp)
	movq	128(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movsd	8(%rsp), %xmm0                  ## xmm0 = mem[0],zero
	movsd	%xmm0, 200(%rsp)
	movq	200(%rsp), %rax
	leaq	24(%rsp), %rcx
	movq	%rcx, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 168(%rsp)
	movsd	168(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 216(%rsp)
	movq	216(%rsp), %rax
	movq	%rax, 208(%rsp)
	movq	208(%rsp), %rax
	movq	%rax, 224(%rsp)
	movsd	224(%rsp), %xmm0                ## xmm0 = mem[0],zero
	movsd	%xmm0, 176(%rsp)
	movq	192(%rsp), %rax
	movq	176(%rsp), %rcx
	movq	%rcx, (%rax)
	leaq	32(%rsp), %rsi
	leaq	24(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	60(%rsp), %r8d
	movq	48(%rsp), %r9
	movq	40(%rsp), %rax
	movl	$2, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_
	addq	$232, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_
__ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB33_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB33_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB33_7
LBB33_3:                                ## %for.body
                                        ##   in Loop: Header=BB33_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB33_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movl	(%rax,%rdi,4), %r10d
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movl	(%rax,%rdi,4), %eax
	leaq	L_.str.28(%rip), %rdi
	movq	%r11, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB33_7
LBB33_5:                                ## %if.end
                                        ##   in Loop: Header=BB33_1 Depth=1
	jmp	LBB33_6
LBB33_6:                                ## %for.inc
                                        ##   in Loop: Header=BB33_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB33_1
LBB33_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB33_9
	jmp	LBB33_11
LBB33_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB33_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_f32x4_Dv4_fS_fPKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$296, %rsp                      ## imm = 0x128
	.cfi_def_cfa_offset 304
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm1, 96(%rsp)
	movss	%xmm2, 92(%rsp)
	movq	%rdi, 80(%rsp)
	movl	%esi, 76(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	leaq	32(%rsp), %rax
	movaps	112(%rsp), %xmm0
	movq	%rax, 168(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	144(%rsp), %xmm0
	movaps	%xmm0, 176(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, 192(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 200(%rsp)
	movapd	192(%rsp), %xmm0
	movapd	%xmm0, 128(%rsp)
	movq	168(%rsp), %rax
	movq	128(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	136(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movaps	96(%rsp), %xmm0
	movq	%rax, 248(%rsp)
	movaps	%xmm0, 224(%rsp)
	movaps	224(%rsp), %xmm0
	movaps	%xmm0, 256(%rsp)
	movq	256(%rsp), %rax
	movq	%rax, 272(%rsp)
	movq	264(%rsp), %rax
	movq	%rax, 280(%rsp)
	movapd	272(%rsp), %xmm0
	movapd	%xmm0, 208(%rsp)
	movq	248(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	216(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movss	92(%rsp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movq	80(%rsp), %rcx
	movl	76(%rsp), %r8d
	movq	64(%rsp), %r9
	movq	56(%rsp), %rax
	movl	$4, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vf32_mPKfS0_fPKciS2_S2_
	addq	$296, %rsp                      ## imm = 0x128
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i8x16_Dv16_aS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$16, %edi
	movq	%rax, (%rsp)
	callq	__ZL23simde_assert_equal_vi8_mPKaS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i16x8_Dv8_sS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$8, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vi16_mPKsS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i32x4_Dv4_iS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$4, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vi32_mPKiS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_i64x2_Dv2_lS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$2, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_
__ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vi64_mPKlS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB39_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB39_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB39_7
LBB39_3:                                ## %for.body
                                        ##   in Loop: Header=BB39_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	cmpq	(%rcx,%rdx,8), %rax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB39_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	(%rax,%rdi,8), %r10
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	leaq	L_.str.36(%rip), %rdi
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB39_7
LBB39_5:                                ## %if.end
                                        ##   in Loop: Header=BB39_1 Depth=1
	jmp	LBB39_6
LBB39_6:                                ## %for.inc
                                        ##   in Loop: Header=BB39_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB39_1
LBB39_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB39_9
	jmp	LBB39_11
LBB39_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB39_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u8x16_Dv16_hS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$16, %edi
	movq	%rax, (%rsp)
	callq	__ZL23simde_assert_equal_vu8_mPKhS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u16x8_Dv8_tS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$8, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vu16_mPKtS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u32x4_Dv4_jS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$4, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vu32_mPKjS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_
__ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_: ## @_ZL39simde_test_arm_neon_assert_equal_u64x2_Dv2_mS_PKciS1_S1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_def_cfa_offset 288
	movdqa	%xmm0, 96(%rsp)
	movdqa	%xmm1, 80(%rsp)
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	leaq	32(%rsp), %rax
	movdqa	96(%rsp), %xmm0
	movq	%rax, 152(%rsp)
	movdqa	%xmm0, 128(%rsp)
	movdqa	128(%rsp), %xmm0
	movdqa	%xmm0, 160(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 184(%rsp)
	movapd	176(%rsp), %xmm0
	movapd	%xmm0, 112(%rsp)
	movq	152(%rsp), %rax
	movq	112(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	120(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	16(%rsp), %rax
	movdqa	80(%rsp), %xmm0
	movq	%rax, 232(%rsp)
	movdqa	%xmm0, 208(%rsp)
	movdqa	208(%rsp), %xmm0
	movdqa	%xmm0, 240(%rsp)
	movq	240(%rsp), %rax
	movq	%rax, 256(%rsp)
	movq	248(%rsp), %rax
	movq	%rax, 264(%rsp)
	movapd	256(%rsp), %xmm0
	movapd	%xmm0, 192(%rsp)
	movq	232(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	200(%rsp), %rcx
	movq	%rcx, 8(%rax)
	leaq	32(%rsp), %rsi
	leaq	16(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	68(%rsp), %r8d
	movq	56(%rsp), %r9
	movq	48(%rsp), %rax
	movl	$2, %edi
	movq	%rax, (%rsp)
	callq	__ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_
	addq	$280, %rsp                      ## imm = 0x118
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_
__ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_: ## @_ZL24simde_assert_equal_vu64_mPKmS0_PKciS2_S2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	112(%rsp), %rax
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movl	%r8d, 60(%rsp)
	movq	%r9, 48(%rsp)
	movq	$0, 40(%rsp)
LBB44_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	LBB44_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 36(%rsp)
	jmp	LBB44_7
LBB44_3:                                ## %for.body
                                        ##   in Loop: Header=BB44_1 Depth=1
	movq	80(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	72(%rsp), %rcx
	movq	40(%rsp), %rdx
	cmpq	(%rcx,%rdx,8), %rax
	setne	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	cmpq	$0, %rax
	je	LBB44_5
## %bb.4:                               ## %if.then
	movq	64(%rsp), %rsi
	movl	60(%rsp), %edx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	movq	112(%rsp), %r9
	movq	40(%rsp), %r11
	movq	80(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	(%rax,%rdi,8), %r10
	movq	72(%rsp), %rax
	movq	40(%rsp), %rdi
	movq	(%rax,%rdi,8), %rax
	leaq	L_.str.41(%rip), %rdi
	movq	%r11, (%rsp)
	movq	%r10, 8(%rsp)
	movq	%rax, 16(%rsp)
	movb	$0, %al
	callq	__ZL24simde_test_debug_printf_PKcz
	movl	$1, 100(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB44_7
LBB44_5:                                ## %if.end
                                        ##   in Loop: Header=BB44_1 Depth=1
	jmp	LBB44_6
LBB44_6:                                ## %for.inc
                                        ##   in Loop: Header=BB44_1 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB44_1
LBB44_7:                                ## %cleanup
	movl	36(%rsp), %eax
	subl	$1, %eax
	je	LBB44_9
	jmp	LBB44_11
LBB44_11:                               ## %cleanup
## %bb.8:                               ## %for.end
	movl	$0, 100(%rsp)
LBB44_9:                                ## %return
	movl	100(%rsp), %eax
	addq	$104, %rsp
	retq
## %bb.10:                              ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1..%zu\n"

	.section	__DATA,__const
	.p2align	4, 0x0                          ## @_ZL16test_suite_tests
__ZL16test_suite_tests:
	.quad	__ZL20test_simde_vzip2_f32v
	.quad	L_.str.3
	.quad	__ZL19test_simde_vzip2_s8v
	.quad	L_.str.4
	.quad	__ZL20test_simde_vzip2_s16v
	.quad	L_.str.5
	.quad	__ZL20test_simde_vzip2_s32v
	.quad	L_.str.6
	.quad	__ZL19test_simde_vzip2_u8v
	.quad	L_.str.7
	.quad	__ZL20test_simde_vzip2_u16v
	.quad	L_.str.8
	.quad	__ZL20test_simde_vzip2_u32v
	.quad	L_.str.9
	.quad	__ZL21test_simde_vzip2q_f32v
	.quad	L_.str.10
	.quad	__ZL20test_simde_vzip2q_s8v
	.quad	L_.str.11
	.quad	__ZL21test_simde_vzip2q_s16v
	.quad	L_.str.12
	.quad	__ZL21test_simde_vzip2q_s32v
	.quad	L_.str.13
	.quad	__ZL21test_simde_vzip2q_s64v
	.quad	L_.str.14
	.quad	__ZL20test_simde_vzip2q_u8v
	.quad	L_.str.15
	.quad	__ZL21test_simde_vzip2q_u16v
	.quad	L_.str.16
	.quad	__ZL21test_simde_vzip2q_u32v
	.quad	L_.str.17
	.quad	__ZL21test_simde_vzip2q_u64v
	.quad	L_.str.18

	.section	__TEXT,__cstring,cstring_literals
L_.str.1:                               ## @.str.1
	.asciz	"not ok %zu zip2/%s\n"

L_.str.2:                               ## @.str.2
	.asciz	"ok %zu zip2/%s\n"

L_.str.3:                               ## @.str.3
	.asciz	"vzip2_f32"

L_.str.4:                               ## @.str.4
	.asciz	"vzip2_s8"

L_.str.5:                               ## @.str.5
	.asciz	"vzip2_s16"

L_.str.6:                               ## @.str.6
	.asciz	"vzip2_s32"

L_.str.7:                               ## @.str.7
	.asciz	"vzip2_u8"

L_.str.8:                               ## @.str.8
	.asciz	"vzip2_u16"

L_.str.9:                               ## @.str.9
	.asciz	"vzip2_u32"

L_.str.10:                              ## @.str.10
	.asciz	"vzip2q_f32"

L_.str.11:                              ## @.str.11
	.asciz	"vzip2q_s8"

L_.str.12:                              ## @.str.12
	.asciz	"vzip2q_s16"

L_.str.13:                              ## @.str.13
	.asciz	"vzip2q_s32"

L_.str.14:                              ## @.str.14
	.asciz	"vzip2q_s64"

L_.str.15:                              ## @.str.15
	.asciz	"vzip2q_u8"

L_.str.16:                              ## @.str.16
	.asciz	"vzip2q_u16"

L_.str.17:                              ## @.str.17
	.asciz	"vzip2q_u32"

L_.str.18:                              ## @.str.18
	.asciz	"vzip2q_u64"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2_f32v.test_vec
l___const._ZL20test_simde_vzip2_f32v.test_vec:
	.long	0xc2623333                      ## float -56.5499992
	.long	0x441a80a4                      ## float 618.010009
	.long	0x445090a4                      ## float 834.260009
	.long	0xc3fe999a                      ## float -509.200012
	.long	0x441a80a4                      ## float 618.010009
	.long	0xc3fe999a                      ## float -509.200012
	.long	0x4392a51f                      ## float 293.290009
	.long	0xc4517b85                      ## float -837.929992
	.long	0xc3cc570a                      ## float -408.679993
	.long	0x43d73c29                      ## float 430.470001
	.long	0xc4517b85                      ## float -837.929992
	.long	0x43d73c29                      ## float 430.470001
	.long	0x435e0a3d                      ## float 222.039993
	.long	0xc340dc29                      ## float -192.860001
	.long	0x440d9ae1                      ## float 566.419983
	.long	0x444e970a                      ## float 826.359985
	.long	0xc340dc29                      ## float -192.860001
	.long	0x444e970a                      ## float 826.359985
	.long	0xc3c5c3d7                      ## float -395.529999
	.long	0x4415c1ec                      ## float 599.030029
	.long	0xc40ada3d                      ## float -555.409973
	.long	0x41b6f5c3                      ## float 22.8700008
	.long	0x4415c1ec                      ## float 599.030029
	.long	0x41b6f5c3                      ## float 22.8700008
	.long	0x44721c29                      ## float 968.440002
	.long	0x42bf9eb8                      ## float 95.8099975
	.long	0xc41fa51f                      ## float -638.580017
	.long	0x444c10a4                      ## float 816.260009
	.long	0x42bf9eb8                      ## float 95.8099975
	.long	0x444c10a4                      ## float 816.260009
	.long	0xc43ea0a4                      ## float -762.510009
	.long	0x446cad71                      ## float 946.710021
	.long	0xc3b975c3                      ## float -370.920013
	.long	0x445dd7ae                      ## float 887.369995
	.long	0x446cad71                      ## float 946.710021
	.long	0x445dd7ae                      ## float 887.369995
	.long	0xc3e4dae1                      ## float -457.709991
	.long	0xc3deeb85                      ## float -445.839996
	.long	0xc313c7ae                      ## float -147.779999
	.long	0xc43cbe14                      ## float -754.96997
	.long	0xc3deeb85                      ## float -445.839996
	.long	0xc43cbe14                      ## float -754.96997
	.long	0x444b9a3d                      ## float 814.409973
	.long	0x43d91d71                      ## float 434.230011
	.long	0x43d1547b                      ## float 418.660004
	.long	0xc37223d7                      ## float -242.139999
	.long	0x43d91d71                      ## float 434.230011
	.long	0xc37223d7                      ## float -242.139999

	.section	__TEXT,__cstring,cstring_literals
L_.str.19:                              ## @.str.19
	.asciz	"test/arm/neon/zip2.cpp"

L_.str.20:                              ## @.str.20
	.asciz	"r"

L_.str.21:                              ## @.str.21
	.asciz	"simde_vld1_f32(test_vec[i].r)"

L_.str.22:                              ## @.str.22
	.asciz	"%s:%d: assertion failed: %s[%zu] ~= %s[%zu] (%f ~= %f)\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL19test_simde_vzip2_s8v.test_vec
l___const._ZL19test_simde_vzip2_s8v.test_vec:
	.ascii	"F\260\314^!F\376_"
	.ascii	"\361U\177K\202;1\320"
	.ascii	"!\202F;\3761_\320"
	.ascii	"_W\020(f\370J\234"
	.ascii	"\213\317#\206\270\257\251\376"
	.ascii	"f\270\370\257J\251\234\376"
	.ascii	"_u]\201\274[\340\255"
	.ascii	"\260`\3702\233*\003\372"
	.ascii	"\274\233[*\340\003\255\372"
	.ascii	"\201\023\"\347\013m\203\226"
	.ascii	"<\247\034\364V\305\363\265"
	.ascii	"\013Vm\305\203\363\226\265"
	.ascii	";P6\367\253\027\244["
	.ascii	"w\234\216\022\306\221\fH"
	.ascii	"\253\306\027\221\244\f[H"
	.ascii	"\244//\257\234\263E\330"
	.ascii	"Za\315\260&\300ea"
	.ascii	"\234&\263\300Ee\330a"
	.ascii	"\020\234X\273\263\374\026*"
	.ascii	"\231\244<_5H\247\331"
	.ascii	"\2635\374H\026\247*\331"
	.ascii	"w\327\210\023\212\315\354\344"
	.ascii	".\271\224Uy\371\266\211"
	.ascii	"\212y\315\371\354\266\344\211"

	.section	__TEXT,__cstring,cstring_literals
L_.str.23:                              ## @.str.23
	.asciz	"simde_vld1_s8(test_vec[i].r)"

L_.str.24:                              ## @.str.24
	.asciz	"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%d == %d)\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2_s16v.test_vec
l___const._ZL20test_simde_vzip2_s16v.test_vec:
	.short	31586                           ## 0x7b62
	.short	34509                           ## 0x86cd
	.short	5600                            ## 0x15e0
	.short	59838                           ## 0xe9be
	.short	32317                           ## 0x7e3d
	.short	13734                           ## 0x35a6
	.short	18228                           ## 0x4734
	.short	34012                           ## 0x84dc
	.short	5600                            ## 0x15e0
	.short	18228                           ## 0x4734
	.short	59838                           ## 0xe9be
	.short	34012                           ## 0x84dc
	.short	11907                           ## 0x2e83
	.short	17733                           ## 0x4545
	.short	12727                           ## 0x31b7
	.short	47741                           ## 0xba7d
	.short	19182                           ## 0x4aee
	.short	40027                           ## 0x9c5b
	.short	32649                           ## 0x7f89
	.short	60239                           ## 0xeb4f
	.short	12727                           ## 0x31b7
	.short	32649                           ## 0x7f89
	.short	47741                           ## 0xba7d
	.short	60239                           ## 0xeb4f
	.short	7419                            ## 0x1cfb
	.short	56177                           ## 0xdb71
	.short	12082                           ## 0x2f32
	.short	28612                           ## 0x6fc4
	.short	27310                           ## 0x6aae
	.short	58020                           ## 0xe2a4
	.short	32946                           ## 0x80b2
	.short	13671                           ## 0x3567
	.short	12082                           ## 0x2f32
	.short	32946                           ## 0x80b2
	.short	28612                           ## 0x6fc4
	.short	13671                           ## 0x3567
	.short	44207                           ## 0xacaf
	.short	26234                           ## 0x667a
	.short	63453                           ## 0xf7dd
	.short	52256                           ## 0xcc20
	.short	31553                           ## 0x7b41
	.short	52072                           ## 0xcb68
	.short	47098                           ## 0xb7fa
	.short	62902                           ## 0xf5b6
	.short	63453                           ## 0xf7dd
	.short	47098                           ## 0xb7fa
	.short	52256                           ## 0xcc20
	.short	62902                           ## 0xf5b6
	.short	10452                           ## 0x28d4
	.short	1744                            ## 0x6d0
	.short	37975                           ## 0x9457
	.short	1397                            ## 0x575
	.short	6655                            ## 0x19ff
	.short	45544                           ## 0xb1e8
	.short	20378                           ## 0x4f9a
	.short	18918                           ## 0x49e6
	.short	37975                           ## 0x9457
	.short	20378                           ## 0x4f9a
	.short	1397                            ## 0x575
	.short	18918                           ## 0x49e6
	.short	24827                           ## 0x60fb
	.short	55727                           ## 0xd9af
	.short	53079                           ## 0xcf57
	.short	39077                           ## 0x98a5
	.short	3402                            ## 0xd4a
	.short	17507                           ## 0x4463
	.short	6853                            ## 0x1ac5
	.short	39226                           ## 0x993a
	.short	53079                           ## 0xcf57
	.short	6853                            ## 0x1ac5
	.short	39077                           ## 0x98a5
	.short	39226                           ## 0x993a
	.short	2626                            ## 0xa42
	.short	39327                           ## 0x999f
	.short	5279                            ## 0x149f
	.short	40607                           ## 0x9e9f
	.short	34605                           ## 0x872d
	.short	51023                           ## 0xc74f
	.short	13782                           ## 0x35d6
	.short	53520                           ## 0xd110
	.short	5279                            ## 0x149f
	.short	13782                           ## 0x35d6
	.short	40607                           ## 0x9e9f
	.short	53520                           ## 0xd110
	.short	49045                           ## 0xbf95
	.short	60586                           ## 0xecaa
	.short	20366                           ## 0x4f8e
	.short	55428                           ## 0xd884
	.short	59485                           ## 0xe85d
	.short	8733                            ## 0x221d
	.short	22274                           ## 0x5702
	.short	17595                           ## 0x44bb
	.short	20366                           ## 0x4f8e
	.short	22274                           ## 0x5702
	.short	55428                           ## 0xd884
	.short	17595                           ## 0x44bb

	.section	__TEXT,__cstring,cstring_literals
L_.str.25:                              ## @.str.25
	.asciz	"simde_vld1_s16(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2_s32v.test_vec
l___const._ZL20test_simde_vzip2_s32v.test_vec:
	.long	3166526933                      ## 0xbcbd5dd5
	.long	500102932                       ## 0x1dcef714
	.long	3468882474                      ## 0xcec2f22a
	.long	2023511124                      ## 0x789c5454
	.long	500102932                       ## 0x1dcef714
	.long	2023511124                      ## 0x789c5454
	.long	1458785856                      ## 0x56f34e40
	.long	3459382769                      ## 0xce31fdf1
	.long	3708737036                      ## 0xdd0ed60c
	.long	2044523428                      ## 0x79dcf3a4
	.long	3459382769                      ## 0xce31fdf1
	.long	2044523428                      ## 0x79dcf3a4
	.long	1681234256                      ## 0x64359950
	.long	3145794449                      ## 0xbb810391
	.long	1250510070                      ## 0x4a8944f6
	.long	3636602264                      ## 0xd8c22598
	.long	3145794449                      ## 0xbb810391
	.long	3636602264                      ## 0xd8c22598
	.long	1697559923                      ## 0x652eb573
	.long	3207815091                      ## 0xbf335fb3
	.long	3650896437                      ## 0xd99c4235
	.long	2236839989                      ## 0x85537835
	.long	3207815091                      ## 0xbf335fb3
	.long	2236839989                      ## 0x85537835
	.long	2733213713                      ## 0xa2e98811
	.long	2187160204                      ## 0x825d6a8c
	.long	1187833774                      ## 0x46cce7ae
	.long	2149551628                      ## 0x801f8e0c
	.long	2187160204                      ## 0x825d6a8c
	.long	2149551628                      ## 0x801f8e0c
	.long	4142222659                      ## 0xf6e54d43
	.long	3803519149                      ## 0xe2b518ad
	.long	2411483482                      ## 0x8fbc515a
	.long	3675525065                      ## 0xdb140fc9
	.long	3803519149                      ## 0xe2b518ad
	.long	3675525065                      ## 0xdb140fc9
	.long	595459479                       ## 0x237dfd97
	.long	379968360                       ## 0x16a5db68
	.long	3462230466                      ## 0xce5d71c2
	.long	1129217279                      ## 0x434e7cff
	.long	379968360                       ## 0x16a5db68
	.long	1129217279                      ## 0x434e7cff
	.long	1983460297                      ## 0x763933c9
	.long	2790911820                      ## 0xa659ef4c
	.long	171316544                       ## 0xa361540
	.long	3152366116                      ## 0xbbe54a24
	.long	2790911820                      ## 0xa659ef4c
	.long	3152366116                      ## 0xbbe54a24

	.section	__TEXT,__cstring,cstring_literals
L_.str.26:                              ## @.str.26
	.asciz	"simde_vld1_s32(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL19test_simde_vzip2_u8v.test_vec
l___const._ZL19test_simde_vzip2_u8v.test_vec:
	.ascii	"\\S6\200\275\261\224\314"
	.ascii	"\003\b!#M\273\275\233"
	.ascii	"\275M\261\273\224\275\314\233"
	.asciz	"\267\016`\215\016\231\345"
	.ascii	"u\273~\261\257s\314\013"
	.ascii	"\016\257\231s\345\314\000\013"
	.ascii	"\306\002\213\203\263\037P\266"
	.ascii	"(q\332u,\227\020\344"
	.ascii	"\263,\037\227P\020\266\344"
	.ascii	"\246pq\264\tV\265~"
	.ascii	"\0213/\300\246\373\313l"
	.ascii	"\t\246V\373\265\313~l"
	.ascii	"\376V\357\261v?h\236"
	.ascii	"\261B\023\335\331#\301\177"
	.ascii	"v\331?#h\301\236\177"
	.ascii	"\22324\234\210\351\033\232"
	.ascii	"\034JZ\302F&.D"
	.ascii	"\210F\351&\033.\232D"
	.ascii	"|\035\365\362]]\220\016"
	.ascii	"\237\243\353y\306\255\370Y"
	.ascii	"]\306]\255\220\370\016Y"
	.ascii	"\337,\366h\025\021\0021"
	.ascii	"[\\\363\241\202!\345\377"
	.ascii	"\025\202\021!\002\3451\377"

	.section	__TEXT,__cstring,cstring_literals
L_.str.27:                              ## @.str.27
	.asciz	"simde_vld1_u8(test_vec[i].r)"

L_.str.28:                              ## @.str.28
	.asciz	"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%u == %u)\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2_u16v.test_vec
l___const._ZL20test_simde_vzip2_u16v.test_vec:
	.short	17902                           ## 0x45ee
	.short	53967                           ## 0xd2cf
	.short	20983                           ## 0x51f7
	.short	42835                           ## 0xa753
	.short	47613                           ## 0xb9fd
	.short	55873                           ## 0xda41
	.short	16028                           ## 0x3e9c
	.short	21060                           ## 0x5244
	.short	20983                           ## 0x51f7
	.short	16028                           ## 0x3e9c
	.short	42835                           ## 0xa753
	.short	21060                           ## 0x5244
	.short	47255                           ## 0xb897
	.short	46865                           ## 0xb711
	.short	60625                           ## 0xecd1
	.short	64413                           ## 0xfb9d
	.short	53844                           ## 0xd254
	.short	24480                           ## 0x5fa0
	.short	58718                           ## 0xe55e
	.short	19663                           ## 0x4ccf
	.short	60625                           ## 0xecd1
	.short	58718                           ## 0xe55e
	.short	64413                           ## 0xfb9d
	.short	19663                           ## 0x4ccf
	.short	40490                           ## 0x9e2a
	.short	8478                            ## 0x211e
	.short	29168                           ## 0x71f0
	.short	60872                           ## 0xedc8
	.short	2346                            ## 0x92a
	.short	51143                           ## 0xc7c7
	.short	3144                            ## 0xc48
	.short	57113                           ## 0xdf19
	.short	29168                           ## 0x71f0
	.short	3144                            ## 0xc48
	.short	60872                           ## 0xedc8
	.short	57113                           ## 0xdf19
	.short	10948                           ## 0x2ac4
	.short	38295                           ## 0x9597
	.short	13334                           ## 0x3416
	.short	27536                           ## 0x6b90
	.short	12550                           ## 0x3106
	.short	25802                           ## 0x64ca
	.short	39190                           ## 0x9916
	.short	16560                           ## 0x40b0
	.short	13334                           ## 0x3416
	.short	39190                           ## 0x9916
	.short	27536                           ## 0x6b90
	.short	16560                           ## 0x40b0
	.short	52792                           ## 0xce38
	.short	10337                           ## 0x2861
	.short	10559                           ## 0x293f
	.short	27157                           ## 0x6a15
	.short	56626                           ## 0xdd32
	.short	31281                           ## 0x7a31
	.short	19177                           ## 0x4ae9
	.short	44378                           ## 0xad5a
	.short	10559                           ## 0x293f
	.short	19177                           ## 0x4ae9
	.short	27157                           ## 0x6a15
	.short	44378                           ## 0xad5a
	.short	61813                           ## 0xf175
	.short	35650                           ## 0x8b42
	.short	54053                           ## 0xd325
	.short	11254                           ## 0x2bf6
	.short	49156                           ## 0xc004
	.short	6800                            ## 0x1a90
	.short	16474                           ## 0x405a
	.short	37466                           ## 0x925a
	.short	54053                           ## 0xd325
	.short	16474                           ## 0x405a
	.short	11254                           ## 0x2bf6
	.short	37466                           ## 0x925a
	.short	47887                           ## 0xbb0f
	.short	20154                           ## 0x4eba
	.short	53220                           ## 0xcfe4
	.short	5816                            ## 0x16b8
	.short	59820                           ## 0xe9ac
	.short	38289                           ## 0x9591
	.short	60212                           ## 0xeb34
	.short	43330                           ## 0xa942
	.short	53220                           ## 0xcfe4
	.short	60212                           ## 0xeb34
	.short	5816                            ## 0x16b8
	.short	43330                           ## 0xa942
	.short	34268                           ## 0x85dc
	.short	308                             ## 0x134
	.short	11096                           ## 0x2b58
	.short	23596                           ## 0x5c2c
	.short	48363                           ## 0xbceb
	.short	17782                           ## 0x4576
	.short	53501                           ## 0xd0fd
	.short	3287                            ## 0xcd7
	.short	11096                           ## 0x2b58
	.short	53501                           ## 0xd0fd
	.short	23596                           ## 0x5c2c
	.short	3287                            ## 0xcd7

	.section	__TEXT,__cstring,cstring_literals
L_.str.29:                              ## @.str.29
	.asciz	"simde_vld1_u16(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2_u32v.test_vec
l___const._ZL20test_simde_vzip2_u32v.test_vec:
	.long	711269039                       ## 0x2a651aaf
	.long	1500404369                      ## 0x596e5a91
	.long	481603462                       ## 0x1cb4af86
	.long	3826687848                      ## 0xe4169f68
	.long	1500404369                      ## 0x596e5a91
	.long	3826687848                      ## 0xe4169f68
	.long	2274796837                      ## 0x8796a525
	.long	1676736426                      ## 0x63f0f7aa
	.long	1950206382                      ## 0x743dc9ae
	.long	1098409105                      ## 0x41786491
	.long	1676736426                      ## 0x63f0f7aa
	.long	1098409105                      ## 0x41786491
	.long	275504510                       ## 0x106bdd7e
	.long	3194608184                      ## 0xbe69da38
	.long	4057603465                      ## 0xf1da1d89
	.long	3805671612                      ## 0xe2d5f0bc
	.long	3194608184                      ## 0xbe69da38
	.long	3805671612                      ## 0xe2d5f0bc
	.long	1080650902                      ## 0x40696c96
	.long	295917923                       ## 0x11a35963
	.long	3028672803                      ## 0xb485e123
	.long	3287678277                      ## 0xc3f5fd45
	.long	295917923                       ## 0x11a35963
	.long	3287678277                      ## 0xc3f5fd45
	.long	332620251                       ## 0x13d361db
	.long	3302046779                      ## 0xc4d13c3b
	.long	381070169                       ## 0x16b6ab59
	.long	855149468                       ## 0x32f88b9c
	.long	3302046779                      ## 0xc4d13c3b
	.long	855149468                       ## 0x32f88b9c
	.long	1517445623                      ## 0x5a7261f7
	.long	3714848186                      ## 0xdd6c15ba
	.long	999485942                       ## 0x3b92f1f6
	.long	3405744111                      ## 0xcaff87ef
	.long	3714848186                      ## 0xdd6c15ba
	.long	3405744111                      ## 0xcaff87ef
	.long	601740008                       ## 0x23ddd2e8
	.long	1760079375                      ## 0x68e8ae0f
	.long	4118715993                      ## 0xf57e9e59
	.long	556234281                       ## 0x21277629
	.long	1760079375                      ## 0x68e8ae0f
	.long	556234281                       ## 0x21277629
	.long	2457573847                      ## 0x927b99d7
	.long	2775574447                      ## 0xa56fe7af
	.long	3370189273                      ## 0xc8e101d9
	.long	1905451145                      ## 0x7192e089
	.long	2775574447                      ## 0xa56fe7af
	.long	1905451145                      ## 0x7192e089

	.section	__TEXT,__cstring,cstring_literals
L_.str.30:                              ## @.str.30
	.asciz	"simde_vld1_u32(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_f32v.test_vec
l___const._ZL21test_simde_vzip2q_f32v.test_vec:
	.long	0x4477d8f6                      ## float 991.390014
	.long	0xc44cd51f                      ## float -819.330017
	.long	0xc38e0b85                      ## float -284.089996
	.long	0xc33ce3d7                      ## float -188.889999
	.long	0xc47638f6                      ## float -984.890014
	.long	0xc2eab333                      ## float -117.349998
	.long	0x445ebb85                      ## float 890.929992
	.long	0x438ad1ec                      ## float 277.640015
	.long	0xc38e0b85                      ## float -284.089996
	.long	0x445ebb85                      ## float 890.929992
	.long	0xc33ce3d7                      ## float -188.889999
	.long	0x438ad1ec                      ## float 277.640015
	.long	0x4395f70a                      ## float 299.929993
	.long	0x43042666                      ## float 132.149994
	.long	0xc3300a3d                      ## float -176.039993
	.long	0x441680a4                      ## float 602.010009
	.long	0x43c5eb85                      ## float 395.839996
	.long	0x43f110a4                      ## float 482.130005
	.long	0x43fce3d7                      ## float 505.779999
	.long	0xc41c1852                      ## float -624.380005
	.long	0xc3300a3d                      ## float -176.039993
	.long	0x43fce3d7                      ## float 505.779999
	.long	0x441680a4                      ## float 602.010009
	.long	0xc41c1852                      ## float -624.380005
	.long	0xc3f2828f                      ## float -485.019989
	.long	0x43761eb8                      ## float 246.119995
	.long	0xc36268f6                      ## float -226.410004
	.long	0xc4251a3d                      ## float -660.409973
	.long	0x439870a4                      ## float 304.880005
	.long	0x44088852                      ## float 546.130005
	.long	0x4439ac29                      ## float 742.690002
	.long	0xc4220333                      ## float -648.049988
	.long	0xc36268f6                      ## float -226.410004
	.long	0x4439ac29                      ## float 742.690002
	.long	0xc4251a3d                      ## float -660.409973
	.long	0xc4220333                      ## float -648.049988
	.long	0xc4734a3d                      ## float -973.159973
	.long	0x43af3852                      ## float 350.440002
	.long	0x4422deb8                      ## float 651.47998
	.long	0xc44217ae                      ## float -776.369995
	.long	0xc3292e14                      ## float -169.179993
	.long	0x43de851f                      ## float 445.040009
	.long	0xc471a148                      ## float -966.520019
	.long	0xc331ca3d                      ## float -177.789993
	.long	0x4422deb8                      ## float 651.47998
	.long	0xc471a148                      ## float -966.520019
	.long	0xc44217ae                      ## float -776.369995
	.long	0xc331ca3d                      ## float -177.789993
	.long	0x441c6d71                      ## float 625.710022
	.long	0xc37a9c29                      ## float -250.610001
	.long	0x441e547b                      ## float 633.320007
	.long	0x4420347b                      ## float 640.820007
	.long	0x441e028f                      ## float 632.039978
	.long	0x44031000                      ## float 524.25
	.long	0xc2a3199a                      ## float -81.550003
	.long	0xc2880f5c                      ## float -68.0299988
	.long	0x441e547b                      ## float 633.320007
	.long	0xc2a3199a                      ## float -81.550003
	.long	0x4420347b                      ## float 640.820007
	.long	0xc2880f5c                      ## float -68.0299988
	.long	0xc3abcb85                      ## float -343.589996
	.long	0x44399ae1                      ## float 742.419982
	.long	0xc3e9028f                      ## float -466.019989
	.long	0xc46cf000                      ## float -947.75
	.long	0x43608ccd                      ## float 224.550003
	.long	0xc4700f5c                      ## float -960.23999
	.long	0xc40f0852                      ## float -572.130005
	.long	0x4438e148                      ## float 739.520019
	.long	0xc3e9028f                      ## float -466.019989
	.long	0xc40f0852                      ## float -572.130005
	.long	0xc46cf000                      ## float -947.75
	.long	0x4438e148                      ## float 739.520019
	.long	0x438ef0a4                      ## float 285.880005
	.long	0x434975c3                      ## float 201.460007
	.long	0xc4663852                      ## float -920.880004
	.long	0xc3cc9eb8                      ## float -409.23999
	.long	0xc37c6666                      ## float -252.399994
	.long	0x444d73d7                      ## float 821.809997
	.long	0xc2653333                      ## float -57.2999992
	.long	0xc3618f5c                      ## float -225.559998
	.long	0xc4663852                      ## float -920.880004
	.long	0xc2653333                      ## float -57.2999992
	.long	0xc3cc9eb8                      ## float -409.23999
	.long	0xc3618f5c                      ## float -225.559998
	.long	0x432c4000                      ## float 172.25
	.long	0xc3cae7ae                      ## float -405.809998
	.long	0xbff5c28f                      ## float -1.91999996
	.long	0xc4793b85                      ## float -996.929992
	.long	0xc4703148                      ## float -960.770019
	.long	0x41fc7ae1                      ## float 31.5599995
	.long	0xc32eb852                      ## float -174.720001
	.long	0x44263c29                      ## float 664.940002
	.long	0xbff5c28f                      ## float -1.91999996
	.long	0xc32eb852                      ## float -174.720001
	.long	0xc4793b85                      ## float -996.929992
	.long	0x44263c29                      ## float 664.940002

	.section	__TEXT,__cstring,cstring_literals
L_.str.31:                              ## @.str.31
	.asciz	"simde_vld1q_f32(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2q_s8v.test_vec
l___const._ZL20test_simde_vzip2q_s8v.test_vec:
	.ascii	"U\f$\034zo@\236\277K0\276[\357\274\254"
	.ascii	"B\215\341\337\024\200\007\240\247\276\335\003\177\f\022\324"
	.ascii	"\277\247K\2760\335\276\003[\177\357\f\274\022\254\324"
	.ascii	"\0316\361\223\24611e|a#\327P\340\203\223"
	.ascii	"mdr\202\344y\"\2148\377\217\267\f\242\213%"
	.ascii	"|8a\377#\217\327\267P\f\340\242\203\213\223%"
	.ascii	"\330|\270~\255\351\344)J\007\000\232\347\203-U"
	.ascii	"\347\237\327\314\031\371XQ\371\347\b\005\211\223*b"
	.ascii	"J\371\007\347\000\b\232\005\347\211\203\223-*Ub"
	.ascii	"\020\342\340\275\313\304\347\025\314\347\257\263k\335\bR"
	.ascii	"|\337\036\225\331v\346\322^\356\327\347\202\001I\222"
	.ascii	"\314^\347\356\257\327\263\347k\202\335\001\bIR\222"
	.ascii	"\343*O\256\3566\303\272\036rn\211Ov\333\314"
	.ascii	"V\372a/pH\001\3166\330\266\270\331\377J\274"
	.ascii	"\0366r\330n\266\211\270O\331v\377\333J\314\274"
	.ascii	")\232j\030\320-\322\356\237@w\357\267S\273\r"
	.ascii	"M\034<\275d=\214\233\025BS\356A\236\252k"
	.ascii	"\237\025@BwS\357\356\267AS\236\273\252\rk"
	.ascii	"8\024\203\bAU\367\340\226n\317M\301\212Z\016"
	.ascii	"\247\226\314\013\323X\246\350\232\372\326\333\230\200F\320"
	.ascii	"\226\232n\372\317\326M\333\301\230\212\200ZF\016\320"
	.ascii	"\224\311\330\325\037\317\265\265>\205\002\377\017\\\016\266"
	.ascii	"\362\332\302\3052h\255\314b\203\247\372\003\356\312\227"
	.ascii	">b\205\203\002\247\377\372\017\003\\\356\016\312\266\227"

	.section	__TEXT,__cstring,cstring_literals
L_.str.32:                              ## @.str.32
	.asciz	"simde_vld1q_s8(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_s16v.test_vec
l___const._ZL21test_simde_vzip2q_s16v.test_vec:
	.short	29172                           ## 0x71f4
	.short	1064                            ## 0x428
	.short	55496                           ## 0xd8c8
	.short	43505                           ## 0xa9f1
	.short	23069                           ## 0x5a1d
	.short	25595                           ## 0x63fb
	.short	31505                           ## 0x7b11
	.short	59301                           ## 0xe7a5
	.short	45075                           ## 0xb013
	.short	36181                           ## 0x8d55
	.short	11474                           ## 0x2cd2
	.short	33930                           ## 0x848a
	.short	1073                            ## 0x431
	.short	46303                           ## 0xb4df
	.short	43472                           ## 0xa9d0
	.short	50317                           ## 0xc48d
	.short	23069                           ## 0x5a1d
	.short	1073                            ## 0x431
	.short	25595                           ## 0x63fb
	.short	46303                           ## 0xb4df
	.short	31505                           ## 0x7b11
	.short	43472                           ## 0xa9d0
	.short	59301                           ## 0xe7a5
	.short	50317                           ## 0xc48d
	.short	46362                           ## 0xb51a
	.short	58312                           ## 0xe3c8
	.short	47502                           ## 0xb98e
	.short	43916                           ## 0xab8c
	.short	34579                           ## 0x8713
	.short	9231                            ## 0x240f
	.short	46082                           ## 0xb402
	.short	5644                            ## 0x160c
	.short	24932                           ## 0x6164
	.short	13987                           ## 0x36a3
	.short	11661                           ## 0x2d8d
	.short	48826                           ## 0xbeba
	.short	39217                           ## 0x9931
	.short	370                             ## 0x172
	.short	67                              ## 0x43
	.short	24006                           ## 0x5dc6
	.short	34579                           ## 0x8713
	.short	39217                           ## 0x9931
	.short	9231                            ## 0x240f
	.short	370                             ## 0x172
	.short	46082                           ## 0xb402
	.short	67                              ## 0x43
	.short	5644                            ## 0x160c
	.short	24006                           ## 0x5dc6
	.short	36533                           ## 0x8eb5
	.short	17216                           ## 0x4340
	.short	52296                           ## 0xcc48
	.short	23535                           ## 0x5bef
	.short	65108                           ## 0xfe54
	.short	22144                           ## 0x5680
	.short	36018                           ## 0x8cb2
	.short	5740                            ## 0x166c
	.short	4077                            ## 0xfed
	.short	31308                           ## 0x7a4c
	.short	1852                            ## 0x73c
	.short	27960                           ## 0x6d38
	.short	43680                           ## 0xaaa0
	.short	58223                           ## 0xe36f
	.short	13738                           ## 0x35aa
	.short	24641                           ## 0x6041
	.short	65108                           ## 0xfe54
	.short	43680                           ## 0xaaa0
	.short	22144                           ## 0x5680
	.short	58223                           ## 0xe36f
	.short	36018                           ## 0x8cb2
	.short	13738                           ## 0x35aa
	.short	5740                            ## 0x166c
	.short	24641                           ## 0x6041
	.short	33219                           ## 0x81c3
	.short	2979                            ## 0xba3
	.short	37454                           ## 0x924e
	.short	41575                           ## 0xa267
	.short	59280                           ## 0xe790
	.short	17144                           ## 0x42f8
	.short	25971                           ## 0x6573
	.short	24664                           ## 0x6058
	.short	42356                           ## 0xa574
	.short	45530                           ## 0xb1da
	.short	4780                            ## 0x12ac
	.short	19486                           ## 0x4c1e
	.short	36284                           ## 0x8dbc
	.short	26416                           ## 0x6730
	.short	29122                           ## 0x71c2
	.short	34503                           ## 0x86c7
	.short	59280                           ## 0xe790
	.short	36284                           ## 0x8dbc
	.short	17144                           ## 0x42f8
	.short	26416                           ## 0x6730
	.short	25971                           ## 0x6573
	.short	29122                           ## 0x71c2
	.short	24664                           ## 0x6058
	.short	34503                           ## 0x86c7
	.short	27378                           ## 0x6af2
	.short	16529                           ## 0x4091
	.short	63741                           ## 0xf8fd
	.short	36322                           ## 0x8de2
	.short	56287                           ## 0xdbdf
	.short	21200                           ## 0x52d0
	.short	10304                           ## 0x2840
	.short	46258                           ## 0xb4b2
	.short	36045                           ## 0x8ccd
	.short	31077                           ## 0x7965
	.short	33950                           ## 0x849e
	.short	23494                           ## 0x5bc6
	.short	62993                           ## 0xf611
	.short	54466                           ## 0xd4c2
	.short	35175                           ## 0x8967
	.short	22874                           ## 0x595a
	.short	56287                           ## 0xdbdf
	.short	62993                           ## 0xf611
	.short	21200                           ## 0x52d0
	.short	54466                           ## 0xd4c2
	.short	10304                           ## 0x2840
	.short	35175                           ## 0x8967
	.short	46258                           ## 0xb4b2
	.short	22874                           ## 0x595a
	.short	60403                           ## 0xebf3
	.short	61594                           ## 0xf09a
	.short	31972                           ## 0x7ce4
	.short	50046                           ## 0xc37e
	.short	20055                           ## 0x4e57
	.short	38678                           ## 0x9716
	.short	51318                           ## 0xc876
	.short	17484                           ## 0x444c
	.short	45397                           ## 0xb155
	.short	62397                           ## 0xf3bd
	.short	33589                           ## 0x8335
	.short	18254                           ## 0x474e
	.short	4217                            ## 0x1079
	.short	57371                           ## 0xe01b
	.short	30105                           ## 0x7599
	.short	36154                           ## 0x8d3a
	.short	20055                           ## 0x4e57
	.short	4217                            ## 0x1079
	.short	38678                           ## 0x9716
	.short	57371                           ## 0xe01b
	.short	51318                           ## 0xc876
	.short	30105                           ## 0x7599
	.short	17484                           ## 0x444c
	.short	36154                           ## 0x8d3a
	.short	54368                           ## 0xd460
	.short	17533                           ## 0x447d
	.short	64336                           ## 0xfb50
	.short	43016                           ## 0xa808
	.short	7753                            ## 0x1e49
	.short	49215                           ## 0xc03f
	.short	35814                           ## 0x8be6
	.short	15108                           ## 0x3b04
	.short	49469                           ## 0xc13d
	.short	29231                           ## 0x722f
	.short	32069                           ## 0x7d45
	.short	48825                           ## 0xbeb9
	.short	54414                           ## 0xd48e
	.short	10143                           ## 0x279f
	.short	55625                           ## 0xd949
	.short	43700                           ## 0xaab4
	.short	7753                            ## 0x1e49
	.short	54414                           ## 0xd48e
	.short	49215                           ## 0xc03f
	.short	10143                           ## 0x279f
	.short	35814                           ## 0x8be6
	.short	55625                           ## 0xd949
	.short	15108                           ## 0x3b04
	.short	43700                           ## 0xaab4
	.short	12973                           ## 0x32ad
	.short	65006                           ## 0xfdee
	.short	63021                           ## 0xf62d
	.short	30629                           ## 0x77a5
	.short	58644                           ## 0xe514
	.short	64311                           ## 0xfb37
	.short	15216                           ## 0x3b70
	.short	44342                           ## 0xad36
	.short	26108                           ## 0x65fc
	.short	16672                           ## 0x4120
	.short	55779                           ## 0xd9e3
	.short	28928                           ## 0x7100
	.short	40878                           ## 0x9fae
	.short	63384                           ## 0xf798
	.short	19832                           ## 0x4d78
	.short	9633                            ## 0x25a1
	.short	58644                           ## 0xe514
	.short	40878                           ## 0x9fae
	.short	64311                           ## 0xfb37
	.short	63384                           ## 0xf798
	.short	15216                           ## 0x3b70
	.short	19832                           ## 0x4d78
	.short	44342                           ## 0xad36
	.short	9633                            ## 0x25a1

	.section	__TEXT,__cstring,cstring_literals
L_.str.33:                              ## @.str.33
	.asciz	"simde_vld1q_s16(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_s32v.test_vec
l___const._ZL21test_simde_vzip2q_s32v.test_vec:
	.long	3847096490                      ## 0xe54e08aa
	.long	1960556641                      ## 0x74dbb861
	.long	1546653011                      ## 0x5c300d53
	.long	3999398733                      ## 0xee61fb4d
	.long	4149252110                      ## 0xf750900e
	.long	1570097258                      ## 0x5d95c86a
	.long	2366570634                      ## 0x8d0f008a
	.long	3484112421                      ## 0xcfab5625
	.long	1546653011                      ## 0x5c300d53
	.long	2366570634                      ## 0x8d0f008a
	.long	3999398733                      ## 0xee61fb4d
	.long	3484112421                      ## 0xcfab5625
	.long	3216374110                      ## 0xbfb5f95e
	.long	70553777                        ## 0x43490b1
	.long	3949028509                      ## 0xeb61649d
	.long	1842987615                      ## 0x6dd9c25f
	.long	3160746322                      ## 0xbc652952
	.long	2065300209                      ## 0x7b19faf1
	.long	537471482                       ## 0x200929fa
	.long	3740251263                      ## 0xdeefb47f
	.long	3949028509                      ## 0xeb61649d
	.long	537471482                       ## 0x200929fa
	.long	1842987615                      ## 0x6dd9c25f
	.long	3740251263                      ## 0xdeefb47f
	.long	1604166829                      ## 0x5f9da4ad
	.long	3529756980                      ## 0xd263d134
	.long	2512241717                      ## 0x95bdc435
	.long	3640825478                      ## 0xd9029686
	.long	2962581439                      ## 0xb09567bf
	.long	1546366817                      ## 0x5c2baf61
	.long	1467757784                      ## 0x577c34d8
	.long	2520083432                      ## 0x96356be8
	.long	2512241717                      ## 0x95bdc435
	.long	1467757784                      ## 0x577c34d8
	.long	3640825478                      ## 0xd9029686
	.long	2520083432                      ## 0x96356be8
	.long	1156961040                      ## 0x44f5d310
	.long	3658897572                      ## 0xda1658a4
	.long	2742014749                      ## 0xa36fd31d
	.long	679244137                       ## 0x287c7169
	.long	987239129                       ## 0x3ad812d9
	.long	2576745665                      ## 0x999604c1
	.long	569381432                       ## 0x21f01238
	.long	2394367614                      ## 0x8eb7267e
	.long	2742014749                      ## 0xa36fd31d
	.long	569381432                       ## 0x21f01238
	.long	679244137                       ## 0x287c7169
	.long	2394367614                      ## 0x8eb7267e
	.long	2647829753                      ## 0x9dd2acf9
	.long	561506564                       ## 0x2177e904
	.long	650503868                       ## 0x26c5e6bc
	.long	827212120                       ## 0x314e4158
	.long	342566739                       ## 0x146b2753
	.long	1672282667                      ## 0x63ad022b
	.long	2458164756                      ## 0x92849e14
	.long	3173006276                      ## 0xbd203bc4
	.long	650503868                       ## 0x26c5e6bc
	.long	2458164756                      ## 0x92849e14
	.long	827212120                       ## 0x314e4158
	.long	3173006276                      ## 0xbd203bc4
	.long	3965383655                      ## 0xec5af3e7
	.long	2551042780                      ## 0x980dd2dc
	.long	280941240                       ## 0x10bed2b8
	.long	1732316436                      ## 0x67410d14
	.long	1602006324                      ## 0x5f7cad34
	.long	3284281775                      ## 0xc3c229af
	.long	2337687495                      ## 0x8b5647c7
	.long	1783133826                      ## 0x6a487682
	.long	280941240                       ## 0x10bed2b8
	.long	2337687495                      ## 0x8b5647c7
	.long	1732316436                      ## 0x67410d14
	.long	1783133826                      ## 0x6a487682
	.long	1163305833                      ## 0x4556a369
	.long	769549173                       ## 0x2dde6375
	.long	1245617206                      ## 0x4a3e9c36
	.long	3719397289                      ## 0xddb17fa9
	.long	3678154028                      ## 0xdb3c2d2c
	.long	513802071                       ## 0x1e9fff57
	.long	3366647110                      ## 0xc8aaf546
	.long	3576885867                      ## 0xd532f26b
	.long	1245617206                      ## 0x4a3e9c36
	.long	3366647110                      ## 0xc8aaf546
	.long	3719397289                      ## 0xddb17fa9
	.long	3576885867                      ## 0xd532f26b
	.long	169511061                       ## 0xa1a8895
	.long	574159084                       ## 0x2238f8ec
	.long	1047295637                      ## 0x3e6c7695
	.long	572268021                       ## 0x221c1df5
	.long	2734512203                      ## 0xa2fd584b
	.long	2646645847                      ## 0x9dc09c57
	.long	4251347601                      ## 0xfd666a91
	.long	4073887837                      ## 0xf2d2985d
	.long	1047295637                      ## 0x3e6c7695
	.long	4251347601                      ## 0xfd666a91
	.long	572268021                       ## 0x221c1df5
	.long	4073887837                      ## 0xf2d2985d

	.section	__TEXT,__cstring,cstring_literals
L_.str.34:                              ## @.str.34
	.asciz	"simde_vld1q_s32(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_s64v.test_vec
l___const._ZL21test_simde_vzip2q_s64v.test_vec:
	.quad	3389154455161181546             ## 0x2f08b2053cd0956a
	.quad	7789600881989832426             ## 0x6c1a38bb2912ceea
	.quad	-6216138325886961127            ## 0xa9bbd7208ad0fa19
	.quad	8128889602060271500             ## 0x70cf9e063d2b3f8c
	.quad	7789600881989832426             ## 0x6c1a38bb2912ceea
	.quad	8128889602060271500             ## 0x70cf9e063d2b3f8c
	.quad	4280588231775133491             ## 0x3b67b45138ac9f33
	.quad	-3843400407768008318            ## 0xcaa97fb13d657982
	.quad	-2503139029515142790            ## 0xdd4310509a55797a
	.quad	4595617808483249743             ## 0x3fc6ea0c561a6e4f
	.quad	-3843400407768008318            ## 0xcaa97fb13d657982
	.quad	4595617808483249743             ## 0x3fc6ea0c561a6e4f
	.quad	-6190516375007038583            ## 0xaa16de27db777389
	.quad	8490571704889211736             ## 0x75d491fb09e77b58
	.quad	-8558999586011666166            ## 0x893853395b0f290a
	.quad	-4175499598915218751            ## 0xc60da53ccedf52c1
	.quad	8490571704889211736             ## 0x75d491fb09e77b58
	.quad	-4175499598915218751            ## 0xc60da53ccedf52c1
	.quad	-4905907207152761576            ## 0xbbeab76340a18518
	.quad	7900326818308542771             ## 0x6da399622ec5d133
	.quad	-4070128137537015102            ## 0xc7840005fbc8b2c2
	.quad	2402004138219365202             ## 0x2155a2098f956352
	.quad	7900326818308542771             ## 0x6da399622ec5d133
	.quad	2402004138219365202             ## 0x2155a2098f956352
	.quad	-2286056552104069593            ## 0xe0464bad8b61f627
	.quad	7416498006436743965             ## 0x66ecb1a47f0e0b1d
	.quad	518167619684185188              ## 0x730e6b46962b464
	.quad	-8109598195675904694            ## 0x8f74eb685396c54a
	.quad	7416498006436743965             ## 0x66ecb1a47f0e0b1d
	.quad	-8109598195675904694            ## 0x8f74eb685396c54a
	.quad	4498921349512353505             ## 0x3e6f61218e1ad6e1
	.quad	-7820595108767695508            ## 0x9377aa2f11be7d6c
	.quad	727944592766064991              ## 0xa1a2dc013fcd95f
	.quad	9001237270419583218             ## 0x7cead19b5a5db0f2
	.quad	-7820595108767695508            ## 0x9377aa2f11be7d6c
	.quad	9001237270419583218             ## 0x7cead19b5a5db0f2
	.quad	-3312544423324482393            ## 0xd2077a65c90b04a7
	.quad	-3478649799431698953            ## 0xcfb95a7026e3c5f7
	.quad	-3026702744038492620            ## 0xd5fefde3f4e2b634
	.quad	-3115054789748040787            ## 0xd4c51a2c49305bad
	.quad	-3478649799431698953            ## 0xcfb95a7026e3c5f7
	.quad	-3115054789748040787            ## 0xd4c51a2c49305bad
	.quad	4780188694459830302             ## 0x4256a44a849dd01e
	.quad	-4059675570677991062            ## 0xc7a92293da68396a
	.quad	3931846471610764248             ## 0x3690b988bbbb8bd8
	.quad	-498416479562121196             ## 0xf91544da417fc014
	.quad	-4059675570677991062            ## 0xc7a92293da68396a
	.quad	-498416479562121196             ## 0xf91544da417fc014

	.section	__TEXT,__cstring,cstring_literals
L_.str.35:                              ## @.str.35
	.asciz	"simde_vld1q_s64(test_vec[i].r)"

L_.str.36:                              ## @.str.36
	.asciz	"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%ld == %ld)\n"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL20test_simde_vzip2q_u8v.test_vec
l___const._ZL20test_simde_vzip2q_u8v.test_vec:
	.ascii	"\177\023\376X8\017cM3pYn\252+a&"
	.ascii	"\271gO\223\002\022\362w3\023\030-\207w\000\006"
	.ascii	"33p\023Y\030n-\252\207+wa\000&\006"
	.ascii	"\213\376_\303\016\302\020A2i\257\334\224\020\003N"
	.ascii	"xR\341zd\323\361\227\346\n\304m\201\304t\f"
	.ascii	"2\346i\n\257\304\334m\224\201\020\304\003tN\f"
	.ascii	"\303\323\317\321\225\337\022\307H\301\243\335\322\246+J"
	.ascii	"\370\f\304]\337\266\364\305\300\2713A}\247N@"
	.ascii	"H\300\301\271\2433\335A\322}\246\247+NJ@"
	.ascii	"z\035\021\017\375#\326E\345y\"\267 M\001\030"
	.ascii	"Y\305u8{j\376;#1}\240\330\313\341R"
	.ascii	"\345#y1\"}\267\240 \330M\313\001\341\030R"
	.ascii	"\350\362a\345\0267+\373\260M\262\320\233\263\351\364"
	.ascii	"x^-\364\310+/\353\\\254\2144wm\206`"
	.ascii	"\260\\M\254\262\214\3204\233w\263m\351\206\364`"
	.ascii	"_\347Eu\036pp\316\276\"\237Y\325\210MN"
	.ascii	"\346zB\257\245q\232\001\036&5\225\223\273\365\363"
	.ascii	"\276\036\"&\2375Y\225\325\223\210\273M\365N\363"
	.ascii	"\242;h\300\253\331\217i\373.\302\321\266\020\037\234"
	.ascii	"\212aK0\322\3461\360\fg\206\240\"{\223\305"
	.ascii	"\373\f.g\302\206\321\240\266\"\020{\037\223\234\305"
	.ascii	"\266\373\205b\324\024\313\320B\216\241\370\236\300\225("
	.ascii	"!\340X\363\306\212\344\323\361js\023\345\006\330\234"
	.ascii	"B\361\216j\241s\370\023\236\345\300\006\225\330(\234"

	.section	__TEXT,__cstring,cstring_literals
L_.str.37:                              ## @.str.37
	.asciz	"simde_vld1q_u8(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_u16v.test_vec
l___const._ZL21test_simde_vzip2q_u16v.test_vec:
	.short	56843                           ## 0xde0b
	.short	48859                           ## 0xbedb
	.short	62267                           ## 0xf33b
	.short	16307                           ## 0x3fb3
	.short	14313                           ## 0x37e9
	.short	51328                           ## 0xc880
	.short	63506                           ## 0xf812
	.short	34614                           ## 0x8736
	.short	29688                           ## 0x73f8
	.short	53182                           ## 0xcfbe
	.short	19541                           ## 0x4c55
	.short	62702                           ## 0xf4ee
	.short	38625                           ## 0x96e1
	.short	4081                            ## 0xff1
	.short	60683                           ## 0xed0b
	.short	5668                            ## 0x1624
	.short	14313                           ## 0x37e9
	.short	38625                           ## 0x96e1
	.short	51328                           ## 0xc880
	.short	4081                            ## 0xff1
	.short	63506                           ## 0xf812
	.short	60683                           ## 0xed0b
	.short	34614                           ## 0x8736
	.short	5668                            ## 0x1624
	.short	65484                           ## 0xffcc
	.short	2005                            ## 0x7d5
	.short	35058                           ## 0x88f2
	.short	56390                           ## 0xdc46
	.short	51135                           ## 0xc7bf
	.short	53668                           ## 0xd1a4
	.short	55999                           ## 0xdabf
	.short	46936                           ## 0xb758
	.short	5965                            ## 0x174d
	.short	41607                           ## 0xa287
	.short	30051                           ## 0x7563
	.short	17814                           ## 0x4596
	.short	34571                           ## 0x870b
	.short	5716                            ## 0x1654
	.short	31093                           ## 0x7975
	.short	16685                           ## 0x412d
	.short	51135                           ## 0xc7bf
	.short	34571                           ## 0x870b
	.short	53668                           ## 0xd1a4
	.short	5716                            ## 0x1654
	.short	55999                           ## 0xdabf
	.short	31093                           ## 0x7975
	.short	46936                           ## 0xb758
	.short	16685                           ## 0x412d
	.short	632                             ## 0x278
	.short	27464                           ## 0x6b48
	.short	36490                           ## 0x8e8a
	.short	19015                           ## 0x4a47
	.short	60245                           ## 0xeb55
	.short	5403                            ## 0x151b
	.short	29893                           ## 0x74c5
	.short	5068                            ## 0x13cc
	.short	21387                           ## 0x538b
	.short	61109                           ## 0xeeb5
	.short	19657                           ## 0x4cc9
	.short	54323                           ## 0xd433
	.short	35027                           ## 0x88d3
	.short	18667                           ## 0x48eb
	.short	6145                            ## 0x1801
	.short	31113                           ## 0x7989
	.short	60245                           ## 0xeb55
	.short	35027                           ## 0x88d3
	.short	5403                            ## 0x151b
	.short	18667                           ## 0x48eb
	.short	29893                           ## 0x74c5
	.short	6145                            ## 0x1801
	.short	5068                            ## 0x13cc
	.short	31113                           ## 0x7989
	.short	53530                           ## 0xd11a
	.short	42212                           ## 0xa4e4
	.short	11104                           ## 0x2b60
	.short	46574                           ## 0xb5ee
	.short	2582                            ## 0xa16
	.short	56522                           ## 0xdcca
	.short	38782                           ## 0x977e
	.short	2543                            ## 0x9ef
	.short	42218                           ## 0xa4ea
	.short	46071                           ## 0xb3f7
	.short	11248                           ## 0x2bf0
	.short	50312                           ## 0xc488
	.short	29619                           ## 0x73b3
	.short	46092                           ## 0xb40c
	.short	38539                           ## 0x968b
	.short	42285                           ## 0xa52d
	.short	2582                            ## 0xa16
	.short	29619                           ## 0x73b3
	.short	56522                           ## 0xdcca
	.short	46092                           ## 0xb40c
	.short	38782                           ## 0x977e
	.short	38539                           ## 0x968b
	.short	2543                            ## 0x9ef
	.short	42285                           ## 0xa52d
	.short	4711                            ## 0x1267
	.short	51017                           ## 0xc749
	.short	14397                           ## 0x383d
	.short	21629                           ## 0x547d
	.short	18242                           ## 0x4742
	.short	49200                           ## 0xc030
	.short	8158                            ## 0x1fde
	.short	51657                           ## 0xc9c9
	.short	49347                           ## 0xc0c3
	.short	46204                           ## 0xb47c
	.short	1259                            ## 0x4eb
	.short	40568                           ## 0x9e78
	.short	33911                           ## 0x8477
	.short	594                             ## 0x252
	.short	32794                           ## 0x801a
	.short	33447                           ## 0x82a7
	.short	18242                           ## 0x4742
	.short	33911                           ## 0x8477
	.short	49200                           ## 0xc030
	.short	594                             ## 0x252
	.short	8158                            ## 0x1fde
	.short	32794                           ## 0x801a
	.short	51657                           ## 0xc9c9
	.short	33447                           ## 0x82a7
	.short	61842                           ## 0xf192
	.short	53065                           ## 0xcf49
	.short	50729                           ## 0xc629
	.short	27427                           ## 0x6b23
	.short	21262                           ## 0x530e
	.short	60459                           ## 0xec2b
	.short	62578                           ## 0xf472
	.short	14005                           ## 0x36b5
	.short	12980                           ## 0x32b4
	.short	41194                           ## 0xa0ea
	.short	25142                           ## 0x6236
	.short	44606                           ## 0xae3e
	.short	37350                           ## 0x91e6
	.short	432                             ## 0x1b0
	.short	22545                           ## 0x5811
	.short	41859                           ## 0xa383
	.short	21262                           ## 0x530e
	.short	37350                           ## 0x91e6
	.short	60459                           ## 0xec2b
	.short	432                             ## 0x1b0
	.short	62578                           ## 0xf472
	.short	22545                           ## 0x5811
	.short	14005                           ## 0x36b5
	.short	41859                           ## 0xa383
	.short	52297                           ## 0xcc49
	.short	29298                           ## 0x7272
	.short	38547                           ## 0x9693
	.short	41437                           ## 0xa1dd
	.short	2281                            ## 0x8e9
	.short	23693                           ## 0x5c8d
	.short	17404                           ## 0x43fc
	.short	45202                           ## 0xb092
	.short	31861                           ## 0x7c75
	.short	43856                           ## 0xab50
	.short	36830                           ## 0x8fde
	.short	50265                           ## 0xc459
	.short	2592                            ## 0xa20
	.short	12741                           ## 0x31c5
	.short	18530                           ## 0x4862
	.short	43988                           ## 0xabd4
	.short	2281                            ## 0x8e9
	.short	2592                            ## 0xa20
	.short	23693                           ## 0x5c8d
	.short	12741                           ## 0x31c5
	.short	17404                           ## 0x43fc
	.short	18530                           ## 0x4862
	.short	45202                           ## 0xb092
	.short	43988                           ## 0xabd4
	.short	17941                           ## 0x4615
	.short	43037                           ## 0xa81d
	.short	64220                           ## 0xfadc
	.short	50761                           ## 0xc649
	.short	54786                           ## 0xd602
	.short	65058                           ## 0xfe22
	.short	46105                           ## 0xb419
	.short	36526                           ## 0x8eae
	.short	65328                           ## 0xff30
	.short	3642                            ## 0xe3a
	.short	37774                           ## 0x938e
	.short	44754                           ## 0xaed2
	.short	39069                           ## 0x989d
	.short	65503                           ## 0xffdf
	.short	46048                           ## 0xb3e0
	.short	62890                           ## 0xf5aa
	.short	54786                           ## 0xd602
	.short	39069                           ## 0x989d
	.short	65058                           ## 0xfe22
	.short	65503                           ## 0xffdf
	.short	46105                           ## 0xb419
	.short	46048                           ## 0xb3e0
	.short	36526                           ## 0x8eae
	.short	62890                           ## 0xf5aa

	.section	__TEXT,__cstring,cstring_literals
L_.str.38:                              ## @.str.38
	.asciz	"simde_vld1q_u16(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_u32v.test_vec
l___const._ZL21test_simde_vzip2q_u32v.test_vec:
	.long	478890778                       ## 0x1c8b4b1a
	.long	1273886894                      ## 0x4bedf8ae
	.long	298449113                       ## 0x11c9f8d9
	.long	1553786033                      ## 0x5c9ce4b1
	.long	3000604583                      ## 0xb2d997a7
	.long	2965413592                      ## 0xb0c09ed8
	.long	2252713574                      ## 0x8645ae66
	.long	1703353163                      ## 0x65871b4b
	.long	298449113                       ## 0x11c9f8d9
	.long	2252713574                      ## 0x8645ae66
	.long	1553786033                      ## 0x5c9ce4b1
	.long	1703353163                      ## 0x65871b4b
	.long	360780391                       ## 0x15811267
	.long	3831524875                      ## 0xe4606e0b
	.long	418720102                       ## 0x18f52966
	.long	3027538189                      ## 0xb474910d
	.long	6769960                         ## 0x674d28
	.long	1387341804                      ## 0x52b127ec
	.long	551089877                       ## 0x20d8f6d5
	.long	2038849298                      ## 0x79865f12
	.long	418720102                       ## 0x18f52966
	.long	551089877                       ## 0x20d8f6d5
	.long	3027538189                      ## 0xb474910d
	.long	2038849298                      ## 0x79865f12
	.long	2106460018                      ## 0x7d8e0772
	.long	3697405814                      ## 0xdc61ef76
	.long	653547032                       ## 0x26f45618
	.long	265972199                       ## 0xfda69e7
	.long	2718974390                      ## 0xa21041b6
	.long	1056227688                      ## 0x3ef4c168
	.long	3378433207                      ## 0xc95eccb7
	.long	2655183916                      ## 0x9e42e42c
	.long	653547032                       ## 0x26f45618
	.long	3378433207                      ## 0xc95eccb7
	.long	265972199                       ## 0xfda69e7
	.long	2655183916                      ## 0x9e42e42c
	.long	1645990380                      ## 0x621bd1ec
	.long	3627973824                      ## 0xd83e7cc0
	.long	3120444370                      ## 0xb9fe33d2
	.long	1388894620                      ## 0x52c8d99c
	.long	2213926938                      ## 0x83f5d81a
	.long	1371662745                      ## 0x51c1e999
	.long	3793362870                      ## 0xe21a1fb6
	.long	4034944260                      ## 0xf0805d04
	.long	3120444370                      ## 0xb9fe33d2
	.long	3793362870                      ## 0xe21a1fb6
	.long	1388894620                      ## 0x52c8d99c
	.long	4034944260                      ## 0xf0805d04
	.long	3998391086                      ## 0xee529b2e
	.long	3922104343                      ## 0xe9c69017
	.long	1604502979                      ## 0x5fa2c5c3
	.long	3098700446                      ## 0xb8b26a9e
	.long	3694896963                      ## 0xdc3ba743
	.long	1177418896                      ## 0x462dfc90
	.long	539510812                       ## 0x2028481c
	.long	3541084325                      ## 0xd310a8a5
	.long	1604502979                      ## 0x5fa2c5c3
	.long	539510812                       ## 0x2028481c
	.long	3098700446                      ## 0xb8b26a9e
	.long	3541084325                      ## 0xd310a8a5
	.long	1522623043                      ## 0x5ac16243
	.long	3057879026                      ## 0xb64387f2
	.long	3927303500                      ## 0xea15e54c
	.long	2476984144                      ## 0x93a3c750
	.long	4285521518                      ## 0xff6fde6e
	.long	4148534747                      ## 0xf7459ddb
	.long	2316791525                      ## 0x8a176ee5
	.long	1516054294                      ## 0x5a5d2716
	.long	3927303500                      ## 0xea15e54c
	.long	2316791525                      ## 0x8a176ee5
	.long	2476984144                      ## 0x93a3c750
	.long	1516054294                      ## 0x5a5d2716
	.long	2075401865                      ## 0x7bb41e89
	.long	4063361189                      ## 0xf231f8a5
	.long	769411037                       ## 0x2ddc47dd
	.long	2109767438                      ## 0x7dc07f0e
	.long	964440158                       ## 0x397c305e
	.long	2989539789                      ## 0xb230c1cd
	.long	1178355503                      ## 0x463c472f
	.long	4154497390                      ## 0xf7a0996e
	.long	769411037                       ## 0x2ddc47dd
	.long	1178355503                      ## 0x463c472f
	.long	2109767438                      ## 0x7dc07f0e
	.long	4154497390                      ## 0xf7a0996e
	.long	1550996663                      ## 0x5c7254b7
	.long	709796940                       ## 0x2a4ea44c
	.long	4183239659                      ## 0xf9572beb
	.long	141957290                       ## 0x87618aa
	.long	356643400                       ## 0x1541f248
	.long	3821498804                      ## 0xe3c771b4
	.long	640222136                       ## 0x262903b8
	.long	1394461084                      ## 0x531dc99c
	.long	4183239659                      ## 0xf9572beb
	.long	640222136                       ## 0x262903b8
	.long	141957290                       ## 0x87618aa
	.long	1394461084                      ## 0x531dc99c

	.section	__TEXT,__cstring,cstring_literals
L_.str.39:                              ## @.str.39
	.asciz	"simde_vld1q_u32(test_vec[i].r)"

	.section	__TEXT,__const
	.p2align	4, 0x0                          ## @__const._ZL21test_simde_vzip2q_u64v.test_vec
l___const._ZL21test_simde_vzip2q_u64v.test_vec:
	.quad	4280958701235489246             ## 0x3b690541dd4249de
	.quad	-6911062290932232781            ## 0xa016f97678630db3
	.quad	6878166422813626130             ## 0x5f7427eb61d34f12
	.quad	-6064950336084893787            ## 0xabd4f7cd85461fa5
	.quad	-6911062290932232781            ## 0xa016f97678630db3
	.quad	-6064950336084893787            ## 0xabd4f7cd85461fa5
	.quad	-3477357133013903552            ## 0xcfbdf21c81891740
	.quad	3104490981576679679             ## 0x2b155e19754820ff
	.quad	-5334513691619694419            ## 0xb5f8000f998ce8ad
	.quad	8545878496494894880             ## 0x76990f36ed3a3f20
	.quad	3104490981576679679             ## 0x2b155e19754820ff
	.quad	8545878496494894880             ## 0x76990f36ed3a3f20
	.quad	1374078459952243238             ## 0x1311b51442f82226
	.quad	7285027289849944533             ## 0x65199db8ee8859d5
	.quad	-4158239011070106234            ## 0xc64af7a695fea586
	.quad	-4980334037555772106            ## 0xbae24c946cb38536
	.quad	7285027289849944533             ## 0x65199db8ee8859d5
	.quad	-4980334037555772106            ## 0xbae24c946cb38536
	.quad	7247714085351774830             ## 0x64950d8f82fcda6e
	.quad	4721016760819653991             ## 0x41846bbb1f521d67
	.quad	-5729386339991387375            ## 0xb07d217ab7d68311
	.quad	-1444249766679793498            ## 0xebf4fe7d3a1c30a6
	.quad	4721016760819653991             ## 0x41846bbb1f521d67
	.quad	-1444249766679793498            ## 0xebf4fe7d3a1c30a6
	.quad	7263466160932188377             ## 0x64cd03fd686ef0d9
	.quad	-7197587232675127519            ## 0x9c1d088bdc831f21
	.quad	-4992855827463015541            ## 0xbab5d0140553f38b
	.quad	-6311257424913968896            ## 0xa869e8cf7df4d100
	.quad	-7197587232675127519            ## 0x9c1d088bdc831f21
	.quad	-6311257424913968896            ## 0xa869e8cf7df4d100
	.quad	-343717390064691240             ## 0xfb3adedad611d7d8
	.quad	5847067349770288893             ## 0x5124f4c688d7befd
	.quad	5239669095272970216             ## 0x48b70b47fc5677e8
	.quad	7805915270211808220             ## 0x6c542e94abc5abdc
	.quad	5847067349770288893             ## 0x5124f4c688d7befd
	.quad	7805915270211808220             ## 0x6c542e94abc5abdc
	.quad	4673466768805750021             ## 0x40db7d43e0426505
	.quad	-8119165876650265797            ## 0x8f52eda701c9b33b
	.quad	-8073753792995350427            ## 0x8ff443b3ac8ca865
	.quad	-1229607043980412178            ## 0xeeef8ee8823abaee
	.quad	-8119165876650265797            ## 0x8f52eda701c9b33b
	.quad	-1229607043980412178            ## 0xeeef8ee8823abaee
	.quad	-1623642574934887949            ## 0xe977a9ae36ce31f3
	.quad	-7884892358541950884            ## 0x92933c2d04ea405c
	.quad	5847417664724475876             ## 0x51263362973f1fe4
	.quad	-2034286796307471891            ## 0xe3c4c2efd6d361ed
	.quad	-7884892358541950884            ## 0x92933c2d04ea405c
	.quad	-2034286796307471891            ## 0xe3c4c2efd6d361ed

	.section	__TEXT,__cstring,cstring_literals
L_.str.40:                              ## @.str.40
	.asciz	"simde_vld1q_u64(test_vec[i].r)"

L_.str.41:                              ## @.str.41
	.asciz	"%s:%d: assertion failed: %s[%zu] == %s[%zu] (%lu == %lu)\n"

.subsections_via_symbols
