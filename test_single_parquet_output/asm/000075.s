	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function exp_rotation
LCPI0_0:
	.long	0xffffffff                      ## float NaN
LCPI0_1:
	.long	0x3fc90fdb                      ## float 1.57079637
LCPI0_2:
	.long	0x3f800000                      ## float 1
LCPI0_3:
	.long	0x3f000000                      ## float 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_exp_rotation
	.globl	_exp_rotation
	.p2align	4
_exp_rotation:                          ## @exp_rotation
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -36(%rbp)
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -40(%rbp)
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -44(%rbp)
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -48(%rbp)
	movl	$-1431655766, -52(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -52(%rbp)
	movl	$-1431655766, -56(%rbp)         ## imm = 0xAAAAAAAA
	movl	-24(%rbp), %eax
	shll	%eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_2
## %bb.1:                               ## %lor.lhs.false
	cmpl	$0, -28(%rbp)
	jne	LBB0_3
LBB0_2:                                 ## %if.then
	movl	$1, -60(%rbp)
	jmp	LBB0_20
LBB0_3:                                 ## %if.end
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	leaq	_exp_rotation.SPREAD_FACTOR(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	cvtsi2ssl	-12(%rbp), %xmm1
	movss	LCPI0_2(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	mulss	%xmm1, %xmm0
	movl	-12(%rbp), %eax
	movl	-56(%rbp), %ecx
	imull	-24(%rbp), %ecx
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm1
	movss	LCPI0_3(%rip), %xmm0            ## xmm0 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	mulss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	LCPI0_1(%rip), %xmm0            ## xmm0 = [1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	mulss	-48(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	LCPI0_2(%rip), %xmm1            ## xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	subss	-48(%rbp), %xmm1
	movss	LCPI0_1(%rip), %xmm0            ## xmm0 = [1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	mulss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	-20(%rbp), %ecx
	shll	$3, %ecx
	cmpl	%ecx, %eax
	jl	LBB0_8
## %bb.4:                               ## %if.then18
	movl	$1, -52(%rbp)
LBB0_5:                                 ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	imull	-52(%rbp), %eax
	addl	-52(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	-20(%rbp), %ecx
	sarl	$2, %ecx
	addl	%ecx, %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_7
## %bb.6:                               ## %while.body
                                        ##   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_5
LBB0_7:                                 ## %while.end
	jmp	LBB0_8
LBB0_8:                                 ## %if.end25
	movl	-12(%rbp), %edi
	movl	-20(%rbp), %esi
	callq	_celt_udiv
	movl	%eax, -12(%rbp)
	movl	$0, -32(%rbp)
LBB0_9:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_19
## %bb.10:                              ## %for.body
                                        ##   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -16(%rbp)
	jge	LBB0_14
## %bb.11:                              ## %if.then31
                                        ##   in Loop: Header=BB0_9 Depth=1
	cmpl	$0, -52(%rbp)
	je	LBB0_13
## %bb.12:                              ## %if.then32
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	movl	-52(%rbp), %edx
	movss	-40(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_exp_rotation1
LBB0_13:                                ## %if.end34
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	movss	-36(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movl	$1, %edx
	callq	_exp_rotation1
	jmp	LBB0_17
LBB0_14:                                ## %if.else
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	movss	-36(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               ## imm = 0x80000000
	movd	%eax, %xmm1
	movl	$1, %edx
	callq	_exp_rotation1
	cmpl	$0, -52(%rbp)
	je	LBB0_16
## %bb.15:                              ## %if.then42
                                        ##   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %eax
	imull	-12(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	movl	-52(%rbp), %edx
	movss	-40(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movd	%xmm1, %eax
	xorl	$2147483648, %eax               ## imm = 0x80000000
	movd	%eax, %xmm1
	callq	_exp_rotation1
LBB0_16:                                ## %if.end47
                                        ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_17
LBB0_17:                                ## %if.end48
                                        ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_18
LBB0_18:                                ## %for.inc
                                        ##   in Loop: Header=BB0_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_9
LBB0_19:                                ## %for.end
	movl	$0, -60(%rbp)
LBB0_20:                                ## %cleanup
## %bb.21:                              ## %cleanup.cont
	addq	$64, %rsp
	popq	%rbp
	retq
## %bb.22:                              ## %unreachable
	ud2
                                        ## -- End function
	.p2align	4                               ## -- Begin function celt_udiv
_celt_udiv:                             ## @celt_udiv
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	xorl	%edx, %edx
	divl	-8(%rbp)
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function exp_rotation1
LCPI2_0:
	.long	0xffffffff                      ## float NaN
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_exp_rotation1:                         ## @exp_rotation1
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movss	LCPI2_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -32(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movss	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               ## imm = 0x80000000
	movd	%eax, %xmm0
	movss	%xmm0, -32(%rbp)
	movl	$0, -28(%rbp)
LBB2_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	-16(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB2_4
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB2_1 Depth=1
	movss	LCPI2_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -44(%rbp)
	movss	LCPI2_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm0
	movss	-24(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-44(%rbp), %xmm0
	movss	-32(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-48(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, -40(%rbp)
	movss	%xmm0, (%rax)
## %bb.3:                               ## %for.inc
                                        ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_1
LBB2_4:                                 ## %for.end
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	shll	%edx
	subl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	shll	%ecx
	subl	%ecx, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
LBB2_5:                                 ## %for.cond16
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	jl	LBB2_8
## %bb.6:                               ## %for.body18
                                        ##   in Loop: Header=BB2_5 Depth=1
	movss	LCPI2_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -52(%rbp)
	movss	LCPI2_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -56(%rbp)
	movq	-40(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -56(%rbp)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm0
	movss	-24(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm0
	movss	-32(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$-4, %rcx
	movq	%rcx, -40(%rbp)
	movss	%xmm0, (%rax)
## %bb.7:                               ## %for.inc33
                                        ##   in Loop: Header=BB2_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_5
LBB2_8:                                 ## %for.end34
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function op_pvq_search_c
LCPI3_0:
	.quad	0x7fffffffffffffff              ## double NaN
	.quad	0x7fffffffffffffff              ## double NaN
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0
LCPI3_1:
	.long	0xffffffff                      ## float NaN
LCPI3_2:
	.long	0x26901d7d                      ## float 1.0E-15
LCPI3_3:
	.long	0x42800000                      ## float 64
LCPI3_4:
	.long	0x3f800000                      ## float 1
LCPI3_5:
	.long	0x3f4ccccd                      ## float 0.800000011
LCPI3_6:
	.long	0x40000000                      ## float 2
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_op_pvq_search_c
	.globl	_op_pvq_search_c
	.p2align	4
_op_pvq_search_c:                       ## @op_pvq_search_c
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	%rax, -56(%rbp)
	movl	$-1431655766, -60(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -64(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -68(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1, -72(%rbp)
	movl	$-1, -76(%rbp)
	movl	$-1, -80(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, %rdx
	shlq	$2, %rdx
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, -128(%rbp)                ## 8-byte Spill
	movq	%rdi, %rsp
	movl	$170, %esi
	callq	_memset
                                        ## kill: def $rcx killed $rax
	movq	-128(%rbp), %rax                ## 8-byte Reload
	movq	%rax, -48(%rbp)
	movslq	-32(%rbp), %rax
	movq	%rax, %rdx
	shlq	$2, %rdx
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, -120(%rbp)                ## 8-byte Spill
	movq	%rdi, %rsp
	movl	$170, %esi
	callq	_memset
	movq	-120(%rbp), %rax                ## 8-byte Reload
	movq	%rax, -56(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movl	$0, -64(%rbp)
LBB3_1:                                 ## %do.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	xorps	%xmm0, %xmm0
	ucomiss	(%rax,%rcx,4), %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %edx
	movq	-56(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	LCPI3_0(%rip), %xmm1            ## xmm1 = [NaN,NaN]
	pand	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
## %bb.2:                               ## %do.cond
                                        ##   in Loop: Header=BB3_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_1
## %bb.3:                               ## %do.end
	xorps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	xorps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -68(%rbp)
	movl	-28(%rbp), %eax
	movl	-32(%rbp), %ecx
	sarl	%ecx
	cmpl	%ecx, %eax
	jle	LBB3_17
## %bb.4:                               ## %if.then
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -84(%rbp)
	movl	$0, -64(%rbp)
LBB3_5:                                 ## %do.body20
                                        ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	addss	-72(%rbp), %xmm0
	movss	%xmm0, -72(%rbp)
## %bb.6:                               ## %do.cond23
                                        ##   in Loop: Header=BB3_5 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_5
## %bb.7:                               ## %do.end27
	movss	-72(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI3_2(%rip), %xmm1            ## xmm1 = [1.0E-15,0.0E+0,0.0E+0,0.0E+0]
	ucomiss	%xmm1, %xmm0
	jbe	LBB3_9
## %bb.8:                               ## %land.lhs.true
	movss	LCPI3_3(%rip), %xmm0            ## xmm0 = [6.4E+1,0.0E+0,0.0E+0,0.0E+0]
	ucomiss	-72(%rbp), %xmm0
	ja	LBB3_13
LBB3_9:                                 ## %if.then32
	movq	-16(%rbp), %rax
	movss	LCPI3_4(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, (%rax)
	movl	$1, -64(%rbp)
LBB3_10:                                ## %do.body34
                                        ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
## %bb.11:                              ## %do.cond37
                                        ##   in Loop: Header=BB3_10 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_10
## %bb.12:                              ## %do.end41
	movss	LCPI3_4(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -72(%rbp)
LBB3_13:                                ## %if.end
	cvtsi2ssl	-28(%rbp), %xmm0
	movss	LCPI3_5(%rip), %xmm1            ## xmm1 = [8.00000011E-1,0.0E+0,0.0E+0,0.0E+0]
	addss	%xmm1, %xmm0
	movss	LCPI3_4(%rip), %xmm1            ## xmm1 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	divss	-72(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -84(%rbp)
	movl	$0, -64(%rbp)
LBB3_14:                                ## %do.body45
                                        ## =>This Inner Loop Header: Depth=1
	movss	-84(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_floor
	cvttsd2si	%xmm0, %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm0
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-76(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	mulss	(%rax,%rcx,4), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -76(%rbp)
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movss	LCPI3_6(%rip), %xmm0            ## xmm0 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	mulss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movl	-68(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -68(%rbp)
## %bb.15:                              ## %do.cond75
                                        ##   in Loop: Header=BB3_14 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_14
## %bb.16:                              ## %do.end79
LBB3_17:                                ## %if.end80
	movl	-68(%rbp), %eax
	movl	-32(%rbp), %ecx
	addl	$3, %ecx
	cmpl	%ecx, %eax
	jle	LBB3_19
## %bb.18:                              ## %if.then84
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -88(%rbp)
	cvtsi2ssl	-68(%rbp), %xmm0
	movss	%xmm0, -88(%rbp)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-88(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	mulss	(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -80(%rbp)
	movl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	addl	(%rax), %ecx
	movl	%ecx, (%rax)
	movl	$0, -68(%rbp)
LBB3_19:                                ## %if.end93
	movl	$0, -60(%rbp)
LBB3_20:                                ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_22 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	LBB3_28
## %bb.21:                              ## %for.body
                                        ##   in Loop: Header=BB3_20 Depth=1
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -92(%rbp)
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -96(%rbp)
	movl	$-1431655766, -100(%rbp)        ## imm = 0xAAAAAAAA
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -104(%rbp)
	movss	LCPI3_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -108(%rbp)
	movl	$0, -100(%rbp)
	movss	LCPI3_4(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	addss	-80(%rbp), %xmm0
	movss	%xmm0, -80(%rbp)
	movss	-76(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	addss	(%rax), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-92(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-96(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)
	movss	-92(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -104(%rbp)
	movl	$1, -64(%rbp)
LBB3_22:                                ## %do.body102
                                        ##   Parent Loop BB3_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movss	-76(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-64(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-92(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm0
	movss	%xmm0, -92(%rbp)
	movss	-108(%rbp), %xmm0               ## xmm0 = mem[0],zero,zero,zero
	mulss	-92(%rbp), %xmm0
	movss	-96(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-104(%rbp), %xmm1
	ucomiss	%xmm1, %xmm0
	seta	%al
	xorb	$-1, %al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	cltq
	cmpq	$0, %rax
	je	LBB3_24
## %bb.23:                              ## %if.then116
                                        ##   in Loop: Header=BB3_22 Depth=2
	movss	-96(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -108(%rbp)
	movss	-92(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -104(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -100(%rbp)
LBB3_24:                                ## %if.end117
                                        ##   in Loop: Header=BB3_22 Depth=2
	jmp	LBB3_25
LBB3_25:                                ## %do.cond118
                                        ##   in Loop: Header=BB3_22 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_22
## %bb.26:                              ## %do.end122
                                        ##   in Loop: Header=BB3_20 Depth=1
	movss	-76(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-100(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	movslq	-100(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -80(%rbp)
	movq	-48(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movss	LCPI3_6(%rip), %xmm0            ## xmm0 = [2.0E+0,0.0E+0,0.0E+0,0.0E+0]
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
## %bb.27:                              ## %for.inc
                                        ##   in Loop: Header=BB3_20 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB3_20
LBB3_28:                                ## %for.end
	movl	$0, -64(%rbp)
LBB3_29:                                ## %do.body136
                                        ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-56(%rbp), %rcx
	movslq	-64(%rbp), %rsi
	xorl	%eax, %eax
	subl	(%rcx,%rsi,4), %eax
	xorl	%eax, %edx
	movq	-56(%rbp), %rax
	movslq	-64(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.30:                              ## %do.cond147
                                        ##   in Loop: Header=BB3_29 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB3_29
## %bb.31:                              ## %do.end151
	movss	-80(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -132(%rbp)               ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB3_33
## %bb.32:                              ## %SP_return
	movss	-132(%rbp), %xmm0               ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB3_33:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function alg_quant
LCPI4_0:
	.long	0xffffffff                      ## float NaN
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_alg_quant
	.globl	_alg_quant
	.p2align	4
_alg_quant:                             ## @alg_quant
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movl	24(%rbp), %eax
	movl	16(%rbp), %eax
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -56(%rbp)
	movss	LCPI4_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -60(%rbp)
	movl	$-1431655766, -64(%rbp)         ## imm = 0xAAAAAAAA
	cmpl	$0, -24(%rbp)
	jg	LBB4_3
## %bb.1:                               ## %if.then
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_10
## %bb.2:                               ## %SP_return
	leaq	L_.str(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$338, %edx                      ## imm = 0x152
	callq	_celt_fatal
LBB4_3:                                 ## %if.end
	cmpl	$1, -20(%rbp)
	jg	LBB4_6
## %bb.4:                               ## %if.then2
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_10
## %bb.5:                               ## %SP_return1
	leaq	L_.str.2(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$339, %edx                      ## imm = 0x153
	callq	_celt_fatal
LBB4_6:                                 ## %if.end3
	movslq	-20(%rbp), %rax
	leaq	12(,%rax,4), %rdx
	leaq	27(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	movq	%rdi, %rsp
	movl	$170, %esi
	callq	_memset
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	$1, %edx
	callq	_exp_rotation
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	24(%rbp), %r8d
	callq	_op_pvq_search_sse2
	movss	%xmm0, -60(%rbp)
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	_encode_pulses
	cmpl	$0, 16(%rbp)
	je	LBB4_8
## %bb.7:                               ## %if.then4
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movss	-60(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_normalise_residual
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	$4294967295, %edx               ## imm = 0xFFFFFFFF
	callq	_exp_rotation
LBB4_8:                                 ## %if.end5
	movq	-56(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	_extract_collapse_mask
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	movl	%eax, -76(%rbp)                 ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_10
## %bb.9:                               ## %SP_return2
	movl	-76(%rbp), %eax                 ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB4_10:                                ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function normalise_residual
LCPI5_0:
	.long	0x3f800000                      ## float 1
LCPI5_1:
	.long	0xffffffff                      ## float NaN
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_normalise_residual:                    ## @normalise_residual
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movss	%xmm0, -24(%rbp)
	movss	%xmm1, -28(%rbp)
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movss	LCPI5_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -36(%rbp)
	movss	LCPI5_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -40(%rbp)
	movss	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	_sqrt
	cvtsd2ss	%xmm0, %xmm1
	movss	LCPI5_0(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	divss	%xmm1, %xmm0
	mulss	-28(%rbp), %xmm0
	movss	%xmm0, -40(%rbp)
	movl	$0, -32(%rbp)
LBB5_1:                                 ## %do.body
                                        ## =>This Inner Loop Header: Depth=1
	movss	-40(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	mulss	%xmm1, %xmm0
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
## %bb.2:                               ## %do.cond
                                        ##   in Loop: Header=BB5_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	cmpl	-20(%rbp), %eax
	jl	LBB5_1
## %bb.3:                               ## %do.end
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function extract_collapse_mask
_extract_collapse_mask:                 ## @extract_collapse_mask
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$-1431655766, -28(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	cmpl	$1, -24(%rbp)
	jg	LBB6_2
## %bb.1:                               ## %if.then
	movl	$1, -4(%rbp)
	movl	$1, -40(%rbp)
	jmp	LBB6_9
LBB6_2:                                 ## %if.end
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	callq	_celt_udiv
	movl	%eax, -32(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -36(%rbp)
LBB6_3:                                 ## %do.body
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_4 Depth 2
	movl	$-1431655766, -44(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -48(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
LBB6_4:                                 ## %do.body1
                                        ##   Parent Loop BB6_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	imull	-32(%rbp), %ecx
	addl	-44(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	orl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
## %bb.5:                               ## %do.cond
                                        ##   in Loop: Header=BB6_4 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	cmpl	-32(%rbp), %eax
	jl	LBB6_4
## %bb.6:                               ## %do.end
                                        ##   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, -48(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	-36(%rbp), %ecx
                                        ## kill: def $cl killed $ecx
	shll	%cl, %eax
	orl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
## %bb.7:                               ## %do.cond5
                                        ##   in Loop: Header=BB6_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	cmpl	-24(%rbp), %eax
	jl	LBB6_3
## %bb.8:                               ## %do.end9
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -40(%rbp)
LBB6_9:                                 ## %cleanup
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function alg_unquant
LCPI7_0:
	.long	0xffffffff                      ## float NaN
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_alg_unquant
	.globl	_alg_unquant
	.p2align	4
_alg_unquant:                           ## @alg_unquant
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	%r9, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movss	LCPI7_0(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -48(%rbp)
	movl	$-1431655766, -52(%rbp)         ## imm = 0xAAAAAAAA
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -64(%rbp)
	cmpl	$0, -24(%rbp)
	jg	LBB7_3
## %bb.1:                               ## %if.then
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_8
## %bb.2:                               ## %SP_return
	leaq	L_.str.3(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$371, %edx                      ## imm = 0x173
	callq	_celt_fatal
LBB7_3:                                 ## %if.end
	cmpl	$1, -20(%rbp)
	jg	LBB7_6
## %bb.4:                               ## %if.then2
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_8
## %bb.5:                               ## %SP_return1
	leaq	L_.str.4(%rip), %rdi
	leaq	L_.str.1(%rip), %rsi
	movl	$372, %edx                      ## imm = 0x174
	callq	_celt_fatal
LBB7_6:                                 ## %if.end3
	movslq	-20(%rbp), %rax
	movq	%rax, %rdx
	shlq	$2, %rdx
	leaq	15(,%rax,4), %rax
	andq	$-16, %rax
	movq	%rsp, %rdi
	subq	%rax, %rdi
	movq	%rdi, -80(%rbp)                 ## 8-byte Spill
	movq	%rdi, %rsp
	movl	$170, %esi
	callq	_memset
	movq	-80(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	-40(%rbp), %rcx
	callq	_decode_pulses
	movss	%xmm0, -48(%rbp)
	movq	-64(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	movss	-48(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-44(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_normalise_residual
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %ecx
	movl	-24(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	$4294967295, %edx               ## imm = 0xFFFFFFFF
	callq	_exp_rotation
	movq	-64(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	_extract_collapse_mask
	movl	%eax, -52(%rbp)
	movl	-52(%rbp), %eax
	movl	%eax, -68(%rbp)                 ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_8
## %bb.7:                               ## %SP_return2
	movl	-68(%rbp), %eax                 ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB7_8:                                 ## %CallStackCheckFailBlk
	callq	___stack_chk_fail
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function renormalise_vector
LCPI8_0:
	.long	0x3f800000                      ## float 1
LCPI8_1:
	.long	0x26901d7d                      ## float 1.0E-15
LCPI8_2:
	.long	0xffffffff                      ## float NaN
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_renormalise_vector
	.globl	_renormalise_vector
	.p2align	4
_renormalise_vector:                    ## @renormalise_vector
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movss	%xmm0, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1431655766, -24(%rbp)         ## imm = 0xAAAAAAAA
	movss	LCPI8_2(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -28(%rbp)
	movss	LCPI8_2(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -32(%rbp)
	movss	LCPI8_2(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -36(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	_celt_inner_prod_sse
	movaps	%xmm0, %xmm1
	movss	LCPI8_1(%rip), %xmm0            ## xmm0 = [1.0E-15,0.0E+0,0.0E+0,0.0E+0]
	addss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)
	movss	-36(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	_sqrt
	cvtsd2ss	%xmm0, %xmm1
	movss	LCPI8_0(%rip), %xmm0            ## xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	divss	%xmm1, %xmm0
	mulss	-16(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$0, -24(%rbp)
LBB8_1:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB8_4
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB8_1 Depth=1
	movss	-32(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-48(%rbp), %rax
	mulss	(%rax), %xmm0
	movq	-48(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	addq	$4, %rax
	movq	%rax, -48(%rbp)
## %bb.3:                               ## %for.inc
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB8_1
LBB8_4:                                 ## %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function stereo_itheta
LCPI9_0:
	.long	0x26901d7d                      ## float 1.0E-15
LCPI9_1:
	.long	0xffffffff                      ## float NaN
LCPI9_2:
	.long	0x3f000000                      ## float 0.5
LCPI9_3:
	.long	0x4622f987                      ## float 10430.3818
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_stereo_itheta
	.globl	_stereo_itheta
	.p2align	4
_stereo_itheta:                         ## @stereo_itheta
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	$-1431655766, -32(%rbp)         ## imm = 0xAAAAAAAA
	movl	$-1431655766, -36(%rbp)         ## imm = 0xAAAAAAAA
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -40(%rbp)
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -44(%rbp)
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -48(%rbp)
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -52(%rbp)
	movss	LCPI9_0(%rip), %xmm0            ## xmm0 = [1.0E-15,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -52(%rbp)
	movss	LCPI9_0(%rip), %xmm0            ## xmm0 = [1.0E-15,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -48(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB9_6
## %bb.1:                               ## %if.then
	movl	$0, -32(%rbp)
LBB9_2:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB9_5
## %bb.3:                               ## %for.body
                                        ##   in Loop: Header=BB9_2 Depth=1
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -56(%rbp)
	movss	LCPI9_1(%rip), %xmm0            ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -60(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	addss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -56(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-48(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-56(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-56(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -48(%rbp)
	movss	-52(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-60(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
## %bb.4:                               ## %for.inc
                                        ##   in Loop: Header=BB9_2 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB9_2
LBB9_5:                                 ## %for.end
	jmp	LBB9_7
LBB9_6:                                 ## %if.else
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movl	-24(%rbp), %edx
	callq	_celt_inner_prod_sse
	addss	-48(%rbp), %xmm0
	movss	%xmm0, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-24(%rbp), %edx
	callq	_celt_inner_prod_sse
	addss	-52(%rbp), %xmm0
	movss	%xmm0, -52(%rbp)
LBB9_7:                                 ## %if.end
	movss	-48(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	_sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-52(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	_sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	callq	_fast_atan2f
	movss	LCPI9_3(%rip), %xmm1            ## xmm1 = [1.04303818E+4,0.0E+0,0.0E+0,0.0E+0]
	mulss	%xmm0, %xmm1
	movss	LCPI9_2(%rip), %xmm0            ## xmm0 = [5.0E-1,0.0E+0,0.0E+0,0.0E+0]
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	_floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2, 0x0                          ## -- Begin function fast_atan2f
LCPI10_0:
	.long	0x219392ef                      ## float 1.00000005E-18
LCPI10_1:
	.long	0xffffffff                      ## float NaN
LCPI10_2:
	.long	0xbfc90fdb                      ## float -1.57079637
LCPI10_3:
	.long	0x3fc90fdb                      ## float 1.57079637
LCPI10_4:
	.long	0x3edcf805                      ## float 0.431579739
LCPI10_5:
	.long	0x3db00965                      ## float 0.0859554186
LCPI10_6:
	.long	0x3f2db121                      ## float 0.678484022
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4
_fast_atan2f:                           ## @fast_atan2f
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	LCPI10_1(%rip), %xmm0           ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -16(%rbp)
	movss	LCPI10_1(%rip), %xmm0           ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -20(%rbp)
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-16(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm1
	movss	LCPI10_0(%rip), %xmm0           ## xmm0 = [1.00000005E-18,0.0E+0,0.0E+0,0.0E+0]
	ucomiss	%xmm1, %xmm0
	jbe	LBB10_2
## %bb.1:                               ## %if.then
	xorps	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB10_5
LBB10_2:                                ## %if.end
	movss	-16(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	LBB10_4
## %bb.3:                               ## %if.then3
	movss	LCPI10_1(%rip), %xmm0           ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -28(%rbp)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI10_6(%rip), %xmm1           ## xmm1 = [6.78484022E-1,0.0E+0,0.0E+0,0.0E+0]
	mulss	-16(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_5(%rip), %xmm2           ## xmm2 = [8.59554186E-2,0.0E+0,0.0E+0,0.0E+0]
	mulss	-16(%rbp), %xmm2
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movd	%xmm0, %eax
	xorl	$2147483648, %eax               ## imm = 0x80000000
	movd	%eax, %xmm0
	mulss	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_4(%rip), %xmm2           ## xmm2 = [4.31579739E-1,0.0E+0,0.0E+0,0.0E+0]
	mulss	-16(%rbp), %xmm2
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	divss	-28(%rbp), %xmm0
	movss	-8(%rbp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_2(%rip), %xmm4           ## xmm4 = [-1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	LCPI10_3(%rip), %xmm3           ## xmm3 = [1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	xorps	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	andps	%xmm4, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB10_5
LBB10_4:                                ## %if.else
	movss	LCPI10_1(%rip), %xmm0           ## xmm0 = [NaN,0.0E+0,0.0E+0,0.0E+0]
	movss	%xmm0, -32(%rbp)
	movss	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI10_6(%rip), %xmm1           ## xmm1 = [6.78484022E-1,0.0E+0,0.0E+0,0.0E+0]
	mulss	-20(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	-16(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_5(%rip), %xmm2           ## xmm2 = [8.59554186E-2,0.0E+0,0.0E+0,0.0E+0]
	mulss	-20(%rbp), %xmm2
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm0
	movss	-16(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_4(%rip), %xmm2           ## xmm2 = [4.31579739E-1,0.0E+0,0.0E+0,0.0E+0]
	mulss	-20(%rbp), %xmm2
	addss	%xmm2, %xmm1
	mulss	%xmm1, %xmm0
	divss	-32(%rbp), %xmm0
	movss	-8(%rbp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI10_2(%rip), %xmm4           ## xmm4 = [-1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	LCPI10_3(%rip), %xmm3           ## xmm3 = [1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	xorps	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	andps	%xmm4, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	mulss	-8(%rbp), %xmm1
	movss	LCPI10_2(%rip), %xmm4           ## xmm4 = [-1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	movss	LCPI10_3(%rip), %xmm3           ## xmm3 = [1.57079637E+0,0.0E+0,0.0E+0,0.0E+0]
	xorps	%xmm2, %xmm2
	cmpltss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	andps	%xmm4, %xmm2
	andnps	%xmm3, %xmm1
	orps	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	movl	$1, -24(%rbp)
LBB10_5:                                ## %cleanup
	movss	-4(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	2, 0x0                          ## @exp_rotation.SPREAD_FACTOR
_exp_rotation.SPREAD_FACTOR:
	.long	15                              ## 0xf
	.long	10                              ## 0xa
	.long	5                               ## 0x5

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"assertion failed: K>0\nalg_quant() needs at least one pulse"

L_.str.1:                               ## @.str.1
	.asciz	"../../third_party/opus/src/celt/vq.c"

L_.str.2:                               ## @.str.2
	.asciz	"assertion failed: N>1\nalg_quant() needs at least two dimensions"

L_.str.3:                               ## @.str.3
	.asciz	"assertion failed: K>0\nalg_unquant() needs at least one pulse"

L_.str.4:                               ## @.str.4
	.asciz	"assertion failed: N>1\nalg_unquant() needs at least two dimensions"

.subsections_via_symbols
