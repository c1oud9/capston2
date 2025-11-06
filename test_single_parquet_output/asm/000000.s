	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_mbedtls_mpi_init       ## -- Begin function mbedtls_mpi_init
	.globl	_mbedtls_mpi_init
	.p2align	4
_mbedtls_mpi_init:                      ## @mbedtls_mpi_init
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB0_2
LBB0_2:                                 ## %do.end
	movq	-8(%rsp), %rax
	movl	$1, (%rax)
	movq	-8(%rsp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rsp), %rax
	movq	$0, 16(%rax)
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_free       ## -- Begin function mbedtls_mpi_free
	.globl	_mbedtls_mpi_free
	.p2align	4
_mbedtls_mpi_free:                      ## @mbedtls_mpi_free
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	cmpq	$0, (%rsp)
	jne	LBB1_2
## %bb.1:                               ## %if.then
	jmp	LBB1_5
LBB1_2:                                 ## %if.end
	movq	(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	LBB1_4
## %bb.3:                               ## %if.then2
	movq	(%rsp), %rax
	movq	16(%rax), %rdi
	movq	(%rsp), %rax
	movq	8(%rax), %rsi
	callq	__ZL19mbedtls_mpi_zeroizePmm
	movq	(%rsp), %rax
	movq	16(%rax), %rdi
	callq	_free
LBB1_4:                                 ## %if.end5
	movq	(%rsp), %rax
	movl	$1, (%rax)
	movq	(%rsp), %rax
	movq	$0, 8(%rax)
	movq	(%rsp), %rax
	movq	$0, 16(%rax)
LBB1_5:                                 ## %return
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL19mbedtls_mpi_zeroizePmm
__ZL19mbedtls_mpi_zeroizePmm:           ## @_ZL19mbedtls_mpi_zeroizePmm
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rsi
	shlq	$3, %rsi
	callq	_mbedtls_platform_zeroize
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_grow       ## -- Begin function mbedtls_mpi_grow
	.globl	_mbedtls_mpi_grow
	.p2align	4
_mbedtls_mpi_grow:                      ## @mbedtls_mpi_grow
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB3_2
LBB3_2:                                 ## %do.cond
	jmp	LBB3_3
LBB3_3:                                 ## %do.end
	cmpq	$10000, 16(%rsp)                ## imm = 0x2710
	jbe	LBB3_5
## %bb.4:                               ## %if.then
	movl	$-16, 36(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB3_12
LBB3_5:                                 ## %if.end
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	jae	LBB3_11
## %bb.6:                               ## %if.then2
	movq	16(%rsp), %rdi
	movl	$8, %esi
	callq	_calloc
	movq	%rax, 8(%rsp)
	cmpq	$0, %rax
	jne	LBB3_8
## %bb.7:                               ## %if.then4
	movl	$-16, 36(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB3_12
LBB3_8:                                 ## %if.end5
	movq	24(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	LBB3_10
## %bb.9:                               ## %if.then8
	movq	8(%rsp), %rdi
	movq	24(%rsp), %rax
	movq	16(%rax), %rsi
	movq	24(%rsp), %rax
	movq	8(%rax), %rdx
	shlq	$3, %rdx
	callq	_memcpy
	movq	24(%rsp), %rax
	movq	16(%rax), %rdi
	movq	24(%rsp), %rax
	movq	8(%rax), %rsi
	callq	__ZL19mbedtls_mpi_zeroizePmm
	movq	24(%rsp), %rax
	movq	16(%rax), %rdi
	callq	_free
LBB3_10:                                ## %if.end14
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, 8(%rax)
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, 16(%rax)
LBB3_11:                                ## %if.end17
	movl	$0, 36(%rsp)
	movl	$1, 4(%rsp)
LBB3_12:                                ## %cleanup
	movl	36(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_shrink     ## -- Begin function mbedtls_mpi_shrink
	.globl	_mbedtls_mpi_shrink
	.p2align	4
_mbedtls_mpi_shrink:                    ## @mbedtls_mpi_shrink
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB4_2
LBB4_2:                                 ## %do.cond
	jmp	LBB4_3
LBB4_3:                                 ## %do.end
	cmpq	$10000, 32(%rsp)                ## imm = 0x2710
	jbe	LBB4_5
## %bb.4:                               ## %if.then
	movl	$-16, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB4_20
LBB4_5:                                 ## %if.end
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	32(%rsp), %rax
	ja	LBB4_7
## %bb.6:                               ## %if.then2
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB4_20
LBB4_7:                                 ## %if.end3
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, 16(%rsp)
LBB4_8:                                 ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rsp)
	jbe	LBB4_13
## %bb.9:                               ## %for.body
                                        ##   in Loop: Header=BB4_8 Depth=1
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB4_11
## %bb.10:                              ## %if.then8
	jmp	LBB4_13
LBB4_11:                                ## %if.end9
                                        ##   in Loop: Header=BB4_8 Depth=1
	jmp	LBB4_12
LBB4_12:                                ## %for.inc
                                        ##   in Loop: Header=BB4_8 Depth=1
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB4_8
LBB4_13:                                ## %for.end
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	cmpq	32(%rsp), %rax
	jae	LBB4_15
## %bb.14:                              ## %if.then11
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
LBB4_15:                                ## %if.end12
	movq	16(%rsp), %rdi
	movl	$8, %esi
	callq	_calloc
	movq	%rax, 24(%rsp)
	cmpq	$0, %rax
	jne	LBB4_17
## %bb.16:                              ## %if.then15
	movl	$-16, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB4_20
LBB4_17:                                ## %if.end16
	movq	40(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	LBB4_19
## %bb.18:                              ## %if.then19
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rdx
	shlq	$3, %rdx
	callq	_memcpy
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	movq	40(%rsp), %rax
	movq	8(%rax), %rsi
	callq	__ZL19mbedtls_mpi_zeroizePmm
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	callq	_free
LBB4_19:                                ## %if.end24
	movq	16(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, 8(%rax)
	movq	24(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, 16(%rax)
	movl	$0, 52(%rsp)
	movl	$1, 12(%rsp)
LBB4_20:                                ## %cleanup
	movl	52(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_copy       ## -- Begin function mbedtls_mpi_copy
	.globl	_mbedtls_mpi_copy
	.p2align	4
_mbedtls_mpi_copy:                      ## @mbedtls_mpi_copy
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movl	$0, 28(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB5_2
LBB5_2:                                 ## %do.cond
	jmp	LBB5_3
LBB5_3:                                 ## %do.end
	jmp	LBB5_4
LBB5_4:                                 ## %do.body1
	jmp	LBB5_5
LBB5_5:                                 ## %do.cond2
	jmp	LBB5_6
LBB5_6:                                 ## %do.end3
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	jne	LBB5_8
## %bb.7:                               ## %if.then
	movl	$0, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB5_28
LBB5_8:                                 ## %if.end
	movq	32(%rsp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB5_12
## %bb.9:                               ## %if.then5
	movq	40(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	LBB5_11
## %bb.10:                              ## %if.then8
	movq	40(%rsp), %rax
	movl	$1, (%rax)
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	movq	40(%rsp), %rax
	movq	8(%rax), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
LBB5_11:                                ## %if.end10
	movl	$0, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB5_28
LBB5_12:                                ## %if.end11
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, 16(%rsp)
LBB5_13:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rsp)
	jbe	LBB5_18
## %bb.14:                              ## %for.body
                                        ##   in Loop: Header=BB5_13 Depth=1
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB5_16
## %bb.15:                              ## %if.then16
	jmp	LBB5_18
LBB5_16:                                ## %if.end17
                                        ##   in Loop: Header=BB5_13 Depth=1
	jmp	LBB5_17
LBB5_17:                                ## %for.inc
                                        ##   in Loop: Header=BB5_13 Depth=1
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB5_13
LBB5_18:                                ## %for.end
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	movl	(%rax), %ecx
	movq	40(%rsp), %rax
	movl	%ecx, (%rax)
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	jae	LBB5_25
## %bb.19:                              ## %if.then22
	jmp	LBB5_20
LBB5_20:                                ## %do.body23
	movq	40(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB5_22
## %bb.21:                              ## %if.then25
	jmp	LBB5_27
LBB5_22:                                ## %if.end26
	jmp	LBB5_23
LBB5_23:                                ## %do.cond27
	jmp	LBB5_24
LBB5_24:                                ## %do.end28
	jmp	LBB5_26
LBB5_25:                                ## %if.else
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	40(%rsp), %rax
	movq	8(%rax), %rdx
	subq	16(%rsp), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
LBB5_26:                                ## %if.end33
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	movq	32(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rdx
	shlq	$3, %rdx
	callq	_memcpy
LBB5_27:                                ## %cleanup
	movl	28(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	$1, 12(%rsp)
LBB5_28:                                ## %cleanup37
	movl	52(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_swap       ## -- Begin function mbedtls_mpi_swap
	.globl	_mbedtls_mpi_swap
	.p2align	4
_mbedtls_mpi_swap:                      ## @mbedtls_mpi_swap
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB6_2
LBB6_2:                                 ## %do.cond
	jmp	LBB6_3
LBB6_3:                                 ## %do.end
	jmp	LBB6_4
LBB6_4:                                 ## %do.body1
	jmp	LBB6_5
LBB6_5:                                 ## %do.cond2
	jmp	LBB6_6
LBB6_6:                                 ## %do.end3
	movq	-8(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, -24(%rsp)
	movq	-8(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rax)
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	-32(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rsp), %rcx
	movq	%rcx, 16(%rax)
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_lset       ## -- Begin function mbedtls_mpi_lset
	.globl	_mbedtls_mpi_lset
	.p2align	4
_mbedtls_mpi_lset:                      ## @mbedtls_mpi_lset
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	$-110, 20(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB7_2
LBB7_2:                                 ## %do.cond
	jmp	LBB7_3
LBB7_3:                                 ## %do.end
	jmp	LBB7_4
LBB7_4:                                 ## %do.body1
	movq	32(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_grow
	movl	%eax, 20(%rsp)
	cmpl	$0, %eax
	je	LBB7_6
## %bb.5:                               ## %if.then
	jmp	LBB7_12
LBB7_6:                                 ## %if.end
	jmp	LBB7_7
LBB7_7:                                 ## %do.cond2
	jmp	LBB7_8
LBB7_8:                                 ## %do.end3
	movq	32(%rsp), %rax
	movq	16(%rax), %rdi
	movq	32(%rsp), %rax
	movq	8(%rax), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
	cmpq	$0, 24(%rsp)
	jge	LBB7_10
## %bb.9:                               ## %cond.true
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	24(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB7_11
LBB7_10:                                ## %cond.false
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB7_11:                                ## %cond.end
	movq	8(%rsp), %rcx                   ## 8-byte Reload
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rcx, (%rax)
	movq	24(%rsp), %rdx
	movl	$1, %ecx
	movl	$4294967295, %eax               ## imm = 0xFFFFFFFF
	cmpq	$0, %rdx
	cmovll	%eax, %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
LBB7_12:                                ## %cleanup
	movl	20(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_get_bit    ## -- Begin function mbedtls_mpi_get_bit
	.globl	_mbedtls_mpi_get_bit
	.p2align	4
_mbedtls_mpi_get_bit:                   ## @mbedtls_mpi_get_bit
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB8_2
LBB8_2:                                 ## %do.end
	movq	-16(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$6, %rax
	cmpq	-24(%rsp), %rax
	ja	LBB8_4
## %bb.3:                               ## %if.then
	movl	$0, -4(%rsp)
	jmp	LBB8_5
LBB8_4:                                 ## %if.end
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-24(%rsp), %rcx
	shrq	$6, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rsp), %rcx
	andq	$63, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -4(%rsp)
LBB8_5:                                 ## %return
	movl	-4(%rsp), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_set_bit    ## -- Begin function mbedtls_mpi_set_bit
	.globl	_mbedtls_mpi_set_bit
	.p2align	4
_mbedtls_mpi_set_bit:                   ## @mbedtls_mpi_set_bit
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movb	%dl, %al
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movb	%al, 31(%rsp)
	movl	$0, 24(%rsp)
	movq	32(%rsp), %rax
	shrq	$6, %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rax
	andq	$63, %rax
	movq	%rax, 8(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB9_2
LBB9_2:                                 ## %do.cond
	jmp	LBB9_3
LBB9_3:                                 ## %do.end
	movzbl	31(%rsp), %eax
	cmpl	$0, %eax
	je	LBB9_6
## %bb.4:                               ## %land.lhs.true
	movzbl	31(%rsp), %eax
	cmpl	$1, %eax
	je	LBB9_6
## %bb.5:                               ## %if.then
	movl	$-4, 52(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB9_17
LBB9_6:                                 ## %if.end
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$6, %rax
	cmpq	32(%rsp), %rax
	ja	LBB9_15
## %bb.7:                               ## %if.then4
	movzbl	31(%rsp), %eax
	cmpl	$0, %eax
	jne	LBB9_9
## %bb.8:                               ## %if.then7
	movl	$0, 52(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB9_17
LBB9_9:                                 ## %if.end8
	jmp	LBB9_10
LBB9_10:                                ## %do.body9
	movq	40(%rsp), %rdi
	movq	16(%rsp), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 24(%rsp)
	cmpl	$0, %eax
	je	LBB9_12
## %bb.11:                              ## %if.then11
	jmp	LBB9_16
LBB9_12:                                ## %if.end12
	jmp	LBB9_13
LBB9_13:                                ## %do.cond13
	jmp	LBB9_14
LBB9_14:                                ## %do.end14
	jmp	LBB9_15
LBB9_15:                                ## %if.end15
	movq	8(%rsp), %rcx
	movl	$1, %edx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	xorq	$-1, %rdx
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	andq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movzbl	31(%rsp), %eax
	movl	%eax, %edx
	movq	8(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	orq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
LBB9_16:                                ## %cleanup
	movl	24(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	$1, 4(%rsp)
LBB9_17:                                ## %cleanup20
	movl	52(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_lsb        ## -- Begin function mbedtls_mpi_lsb
	.globl	_mbedtls_mpi_lsb
	.p2align	4
_mbedtls_mpi_lsb:                       ## @mbedtls_mpi_lsb
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	$0, -40(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB10_2
LBB10_2:                                ## %do.cond
	jmp	LBB10_3
LBB10_3:                                ## %do.end
	movq	$0, -24(%rsp)
LBB10_4:                                ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_6 Depth 2
	movq	-24(%rsp), %rax
	movq	-16(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jae	LBB10_13
## %bb.5:                               ## %for.body
                                        ##   in Loop: Header=BB10_4 Depth=1
	movq	$0, -32(%rsp)
LBB10_6:                                ## %for.cond1
                                        ##   Parent Loop BB10_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$64, -32(%rsp)
	jae	LBB10_11
## %bb.7:                               ## %for.body3
                                        ##   in Loop: Header=BB10_6 Depth=2
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-24(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-32(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	LBB10_9
## %bb.8:                               ## %if.then
	movq	-40(%rsp), %rax
	movq	%rax, -8(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB10_14
LBB10_9:                                ## %if.end
                                        ##   in Loop: Header=BB10_6 Depth=2
	jmp	LBB10_10
LBB10_10:                               ## %for.inc
                                        ##   in Loop: Header=BB10_6 Depth=2
	movq	-32(%rsp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rsp)
	movq	-40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rsp)
	jmp	LBB10_6
LBB10_11:                               ## %for.end
                                        ##   in Loop: Header=BB10_4 Depth=1
	jmp	LBB10_12
LBB10_12:                               ## %for.inc6
                                        ##   in Loop: Header=BB10_4 Depth=1
	movq	-24(%rsp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rsp)
	jmp	LBB10_4
LBB10_13:                               ## %for.end8
	movq	$0, -8(%rsp)
	movl	$1, -44(%rsp)
LBB10_14:                               ## %cleanup
	movq	-8(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_bitlen     ## -- Begin function mbedtls_mpi_bitlen
	.globl	_mbedtls_mpi_bitlen
	.p2align	4
_mbedtls_mpi_bitlen:                    ## @mbedtls_mpi_bitlen
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	24(%rsp), %rax
	cmpq	$0, 8(%rax)
	jne	LBB11_2
## %bb.1:                               ## %if.then
	movq	$0, 32(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB11_9
LBB11_2:                                ## %if.end
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	subq	$1, %rax
	movq	%rax, 16(%rsp)
LBB11_3:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rsp)
	jbe	LBB11_8
## %bb.4:                               ## %for.body
                                        ##   in Loop: Header=BB11_3 Depth=1
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB11_6
## %bb.5:                               ## %if.then4
	jmp	LBB11_8
LBB11_6:                                ## %if.end5
                                        ##   in Loop: Header=BB11_3 Depth=1
	jmp	LBB11_7
LBB11_7:                                ## %for.inc
                                        ##   in Loop: Header=BB11_3 Depth=1
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB11_3
LBB11_8:                                ## %for.end
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	__ZL11mbedtls_clzm
	movq	%rax, %rcx
	movl	$64, %eax
	subq	%rcx, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	shlq	$6, %rax
	addq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movl	$1, 4(%rsp)
LBB11_9:                                ## %cleanup
	movq	32(%rsp), %rax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL11mbedtls_clzm
__ZL11mbedtls_clzm:                     ## @_ZL11mbedtls_clzm
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movabsq	$-9223372036854775808, %rax     ## imm = 0x8000000000000000
	movq	%rax, -24(%rsp)
	movq	$0, -16(%rsp)
LBB12_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$64, -16(%rsp)
	jae	LBB12_6
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rsp), %rax
	andq	-24(%rsp), %rax
	cmpq	$0, %rax
	je	LBB12_4
## %bb.3:                               ## %if.then
	jmp	LBB12_6
LBB12_4:                                ## %if.end
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	-24(%rsp), %rax
	shrq	%rax
	movq	%rax, -24(%rsp)
## %bb.5:                               ## %for.inc
                                        ##   in Loop: Header=BB12_1 Depth=1
	movq	-16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rsp)
	jmp	LBB12_1
LBB12_6:                                ## %for.end
	movq	-16(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_size       ## -- Begin function mbedtls_mpi_size
	.globl	_mbedtls_mpi_size
	.p2align	4
_mbedtls_mpi_size:                      ## @mbedtls_mpi_size
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	addq	$7, %rax
	shrq	$3, %rax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_read_string ## -- Begin function mbedtls_mpi_read_string
	.globl	_mbedtls_mpi_read_string
	.p2align	4
_mbedtls_mpi_read_string:               ## @mbedtls_mpi_read_string
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 104(%rsp)
	movl	%esi, 100(%rsp)
	movq	%rdx, 88(%rsp)
	movl	$-110, 84(%rsp)
	movl	$1, 44(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB14_2
LBB14_2:                                ## %do.cond
	jmp	LBB14_3
LBB14_3:                                ## %do.end
	jmp	LBB14_4
LBB14_4:                                ## %do.body1
	jmp	LBB14_5
LBB14_5:                                ## %do.cond2
	jmp	LBB14_6
LBB14_6:                                ## %do.end3
	cmpl	$2, 100(%rsp)
	jl	LBB14_8
## %bb.7:                               ## %lor.lhs.false
	cmpl	$16, 100(%rsp)
	jle	LBB14_9
LBB14_8:                                ## %if.then
	movl	$-4, 116(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB14_66
LBB14_9:                                ## %if.end
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_init
	movq	88(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	LBB14_11
## %bb.10:                              ## %if.then6
	movq	104(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	$0, 116(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB14_66
LBB14_11:                               ## %if.end7
	movq	88(%rsp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	jne	LBB14_13
## %bb.12:                              ## %if.then11
	movq	88(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 88(%rsp)
	movl	$-1, 44(%rsp)
LBB14_13:                               ## %if.end12
	movq	88(%rsp), %rdi
	callq	_strlen
	movq	%rax, 56(%rsp)
	cmpl	$16, 100(%rsp)
	jne	LBB14_36
## %bb.14:                              ## %if.then14
	movabsq	$4611686018427387903, %rax      ## imm = 0x3FFFFFFFFFFFFFFF
	cmpq	%rax, 56(%rsp)
	jbe	LBB14_16
## %bb.15:                              ## %if.then16
	movl	$-4, 116(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB14_66
LBB14_16:                               ## %if.end17
	movq	56(%rsp), %rax
	shlq	$2, %rax
	shrq	$6, %rax
	movq	56(%rsp), %rcx
	shlq	$2, %rcx
	andq	$63, %rcx
	cmpq	$0, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
## %bb.17:                              ## %do.body21
	movq	104(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_19
## %bb.18:                              ## %if.then24
	jmp	LBB14_65
LBB14_19:                               ## %if.end25
	jmp	LBB14_20
LBB14_20:                               ## %do.cond26
	jmp	LBB14_21
LBB14_21:                               ## %do.end27
	jmp	LBB14_22
LBB14_22:                               ## %do.body28
	movq	104(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_24
## %bb.23:                              ## %if.then31
	jmp	LBB14_65
LBB14_24:                               ## %if.end32
	jmp	LBB14_25
LBB14_25:                               ## %do.cond33
	jmp	LBB14_26
LBB14_26:                               ## %do.end34
	movq	56(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	$0, 64(%rsp)
LBB14_27:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 72(%rsp)
	jbe	LBB14_35
## %bb.28:                              ## %for.body
                                        ##   in Loop: Header=BB14_27 Depth=1
	jmp	LBB14_29
LBB14_29:                               ## %do.body36
                                        ##   in Loop: Header=BB14_27 Depth=1
	movl	100(%rsp), %esi
	movq	88(%rsp), %rax
	movq	72(%rsp), %rcx
	subq	$1, %rcx
	leaq	32(%rsp), %rdi
	movsbl	(%rax,%rcx), %edx
	callq	__ZL13mpi_get_digitPmic
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_31
## %bb.30:                              ## %if.then40
	jmp	LBB14_65
LBB14_31:                               ## %if.end41
                                        ##   in Loop: Header=BB14_27 Depth=1
	jmp	LBB14_32
LBB14_32:                               ## %do.cond42
                                        ##   in Loop: Header=BB14_27 Depth=1
	jmp	LBB14_33
LBB14_33:                               ## %do.end43
                                        ##   in Loop: Header=BB14_27 Depth=1
	movq	32(%rsp), %rdx
	movq	64(%rsp), %rcx
	andq	$15, %rcx
	shlq	$2, %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	104(%rsp), %rax
	movq	16(%rax), %rax
	movq	64(%rsp), %rcx
	shrq	$4, %rcx
	orq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
## %bb.34:                              ## %for.inc
                                        ##   in Loop: Header=BB14_27 Depth=1
	movq	72(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 72(%rsp)
	movq	64(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 64(%rsp)
	jmp	LBB14_27
LBB14_35:                               ## %for.end
	jmp	LBB14_61
LBB14_36:                               ## %if.else
	jmp	LBB14_37
LBB14_37:                               ## %do.body49
	movq	104(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_39
## %bb.38:                              ## %if.then52
	jmp	LBB14_65
LBB14_39:                               ## %if.end53
	jmp	LBB14_40
LBB14_40:                               ## %do.cond54
	jmp	LBB14_41
LBB14_41:                               ## %do.end55
	movq	$0, 72(%rsp)
LBB14_42:                               ## %for.cond56
                                        ## =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	cmpq	56(%rsp), %rax
	jae	LBB14_60
## %bb.43:                              ## %for.body58
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_44
LBB14_44:                               ## %do.body59
                                        ##   in Loop: Header=BB14_42 Depth=1
	movl	100(%rsp), %esi
	movq	88(%rsp), %rax
	movq	72(%rsp), %rcx
	leaq	32(%rsp), %rdi
	movsbl	(%rax,%rcx), %edx
	callq	__ZL13mpi_get_digitPmic
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_46
## %bb.45:                              ## %if.then63
	jmp	LBB14_65
LBB14_46:                               ## %if.end64
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_47
LBB14_47:                               ## %do.cond65
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_48
LBB14_48:                               ## %do.end66
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_49
LBB14_49:                               ## %do.body67
                                        ##   in Loop: Header=BB14_42 Depth=1
	movq	104(%rsp), %rsi
	movslq	100(%rsp), %rdx
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_mul_int
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_51
## %bb.50:                              ## %if.then71
	jmp	LBB14_65
LBB14_51:                               ## %if.end72
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_52
LBB14_52:                               ## %do.cond73
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_53
LBB14_53:                               ## %do.end74
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_54
LBB14_54:                               ## %do.body75
                                        ##   in Loop: Header=BB14_42 Depth=1
	movq	104(%rsp), %rdi
	movq	32(%rsp), %rdx
	leaq	8(%rsp), %rsi
	callq	_mbedtls_mpi_add_int
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB14_56
## %bb.55:                              ## %if.then78
	jmp	LBB14_65
LBB14_56:                               ## %if.end79
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_57
LBB14_57:                               ## %do.cond80
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_58
LBB14_58:                               ## %do.end81
                                        ##   in Loop: Header=BB14_42 Depth=1
	jmp	LBB14_59
LBB14_59:                               ## %for.inc82
                                        ##   in Loop: Header=BB14_42 Depth=1
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	jmp	LBB14_42
LBB14_60:                               ## %for.end84
	jmp	LBB14_61
LBB14_61:                               ## %if.end85
	cmpl	$0, 44(%rsp)
	jge	LBB14_64
## %bb.62:                              ## %land.lhs.true
	movq	104(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	cmpq	$0, %rax
	je	LBB14_64
## %bb.63:                              ## %if.then89
	movq	104(%rsp), %rax
	movl	$-1, (%rax)
LBB14_64:                               ## %if.end91
	jmp	LBB14_65
LBB14_65:                               ## %cleanup
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	84(%rsp), %eax
	movl	%eax, 116(%rsp)
	movl	$1, 4(%rsp)
LBB14_66:                               ## %cleanup92
	movl	116(%rsp), %eax
	addq	$120, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL13mpi_get_digitPmic
__ZL13mpi_get_digitPmic:                ## @_ZL13mpi_get_digitPmic
	.cfi_startproc
## %bb.0:                               ## %entry
	movb	%dl, %al
	movq	%rdi, -16(%rsp)
	movl	%esi, -20(%rsp)
	movb	%al, -21(%rsp)
	movq	-16(%rsp), %rax
	movq	$255, (%rax)
	movsbl	-21(%rsp), %eax
	cmpl	$48, %eax
	jl	LBB15_3
## %bb.1:                               ## %land.lhs.true
	movsbl	-21(%rsp), %eax
	cmpl	$57, %eax
	jg	LBB15_3
## %bb.2:                               ## %if.then
	movsbl	-21(%rsp), %eax
	subl	$48, %eax
	movslq	%eax, %rcx
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
LBB15_3:                                ## %if.end
	movsbl	-21(%rsp), %eax
	cmpl	$65, %eax
	jl	LBB15_6
## %bb.4:                               ## %land.lhs.true7
	movsbl	-21(%rsp), %eax
	cmpl	$70, %eax
	jg	LBB15_6
## %bb.5:                               ## %if.then10
	movsbl	-21(%rsp), %eax
	subl	$55, %eax
	movslq	%eax, %rcx
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
LBB15_6:                                ## %if.end14
	movsbl	-21(%rsp), %eax
	cmpl	$97, %eax
	jl	LBB15_9
## %bb.7:                               ## %land.lhs.true17
	movsbl	-21(%rsp), %eax
	cmpl	$102, %eax
	jg	LBB15_9
## %bb.8:                               ## %if.then20
	movsbl	-21(%rsp), %eax
	subl	$87, %eax
	movslq	%eax, %rcx
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
LBB15_9:                                ## %if.end24
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	movslq	-20(%rsp), %rcx
	cmpq	%rcx, %rax
	jb	LBB15_11
## %bb.10:                              ## %if.then27
	movl	$-6, -4(%rsp)
	jmp	LBB15_12
LBB15_11:                               ## %if.end28
	movl	$0, -4(%rsp)
LBB15_12:                               ## %return
	movl	-4(%rsp), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_mul_int    ## -- Begin function mbedtls_mpi_mul_int
	.globl	_mbedtls_mpi_mul_int
	.p2align	4
_mbedtls_mpi_mul_int:                   ## @mbedtls_mpi_mul_int
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB16_2
LBB16_2:                                ## %do.end
	jmp	LBB16_3
LBB16_3:                                ## %do.body1
	jmp	LBB16_4
LBB16_4:                                ## %do.end2
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
LBB16_5:                                ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	$0, 16(%rsp)
	movb	%al, 7(%rsp)                    ## 1-byte Spill
	jbe	LBB16_7
## %bb.6:                               ## %land.rhs
                                        ##   in Loop: Header=BB16_5 Depth=1
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	sete	%al
	movb	%al, 7(%rsp)                    ## 1-byte Spill
LBB16_7:                                ## %land.end
                                        ##   in Loop: Header=BB16_5 Depth=1
	movb	7(%rsp), %al                    ## 1-byte Reload
	testb	$1, %al
	jne	LBB16_8
	jmp	LBB16_9
LBB16_8:                                ## %while.body
                                        ##   in Loop: Header=BB16_5 Depth=1
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB16_5
LBB16_9:                                ## %while.end
	cmpq	$0, 24(%rsp)
	je	LBB16_11
## %bb.10:                              ## %lor.lhs.false
	cmpq	$0, 16(%rsp)
	jne	LBB16_12
LBB16_11:                               ## %if.then
	movq	40(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 52(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB16_24
LBB16_12:                               ## %if.end
	movl	$-110, 8(%rsp)
## %bb.13:                              ## %do.body7
	movq	40(%rsp), %rdi
	movq	16(%rsp), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 8(%rsp)
	cmpl	$0, %eax
	je	LBB16_15
## %bb.14:                              ## %if.then10
	jmp	LBB16_23
LBB16_15:                               ## %if.end11
	jmp	LBB16_16
LBB16_16:                               ## %do.cond
	jmp	LBB16_17
LBB16_17:                               ## %do.end12
	jmp	LBB16_18
LBB16_18:                               ## %do.body13
	movq	40(%rsp), %rdi
	movq	32(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 8(%rsp)
	cmpl	$0, %eax
	je	LBB16_20
## %bb.19:                              ## %if.then16
	jmp	LBB16_23
LBB16_20:                               ## %if.end17
	jmp	LBB16_21
LBB16_21:                               ## %do.cond18
	jmp	LBB16_22
LBB16_22:                               ## %do.end19
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rax
	movq	16(%rax), %rsi
	movq	40(%rsp), %rax
	movq	16(%rax), %rdx
	movq	24(%rsp), %rcx
	subq	$1, %rcx
	callq	__ZL11mpi_mul_hlpmPKmPmm
LBB16_23:                               ## %cleanup
	movl	8(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	$1, 12(%rsp)
LBB16_24:                               ## %cleanup24
	movl	52(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_add_int    ## -- Begin function mbedtls_mpi_add_int
	.globl	_mbedtls_mpi_add_int
	.p2align	4
_mbedtls_mpi_add_int:                   ## @mbedtls_mpi_add_int
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB17_2
LBB17_2:                                ## %do.cond
	jmp	LBB17_3
LBB17_3:                                ## %do.end
	jmp	LBB17_4
LBB17_4:                                ## %do.body1
	jmp	LBB17_5
LBB17_5:                                ## %do.cond2
	jmp	LBB17_6
LBB17_6:                                ## %do.end3
	cmpq	$0, 48(%rsp)
	jge	LBB17_8
## %bb.7:                               ## %cond.true
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	48(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB17_9
LBB17_8:                                ## %cond.false
	movq	48(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB17_9:                                ## %cond.end
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rdx
	movl	$1, %eax
	movl	$4294967295, %ecx               ## imm = 0xFFFFFFFF
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movl	%eax, 24(%rsp)
	movq	$1, 32(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rdi
	movq	56(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	_mbedtls_mpi_add_mpi
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_write_string ## -- Begin function mbedtls_mpi_write_string
	.globl	_mbedtls_mpi_write_string
	.p2align	4
_mbedtls_mpi_write_string:              ## @mbedtls_mpi_write_string
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 120(%rsp)
	movl	%esi, 116(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rcx, 96(%rsp)
	movq	%r8, 88(%rsp)
	movl	$0, 84(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB18_2
LBB18_2:                                ## %do.cond
	jmp	LBB18_3
LBB18_3:                                ## %do.end
	jmp	LBB18_4
LBB18_4:                                ## %do.body1
	jmp	LBB18_5
LBB18_5:                                ## %do.cond2
	jmp	LBB18_6
LBB18_6:                                ## %do.end3
	jmp	LBB18_7
LBB18_7:                                ## %do.body4
	jmp	LBB18_8
LBB18_8:                                ## %do.cond5
	jmp	LBB18_9
LBB18_9:                                ## %do.end6
	cmpl	$2, 116(%rsp)
	jl	LBB18_11
## %bb.10:                              ## %lor.lhs.false
	cmpl	$16, 116(%rsp)
	jle	LBB18_12
LBB18_11:                               ## %if.then
	movl	$-4, 132(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB18_49
LBB18_12:                               ## %if.end
	movq	120(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	movq	%rax, 72(%rsp)
	cmpl	$4, 116(%rsp)
	jl	LBB18_14
## %bb.13:                              ## %if.then9
	movq	72(%rsp), %rax
	shrq	%rax
	movq	%rax, 72(%rsp)
LBB18_14:                               ## %if.end10
	cmpl	$16, 116(%rsp)
	jl	LBB18_16
## %bb.15:                              ## %if.then12
	movq	72(%rsp), %rax
	shrq	%rax
	movq	%rax, 72(%rsp)
LBB18_16:                               ## %if.end14
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 72(%rsp)
	movq	72(%rsp), %rax
	andq	$1, %rax
	addq	72(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	96(%rsp), %rax
	cmpq	72(%rsp), %rax
	jae	LBB18_18
## %bb.17:                              ## %if.then19
	movq	72(%rsp), %rcx
	movq	88(%rsp), %rax
	movq	%rcx, (%rax)
	movl	$-8, 132(%rsp)
	movl	$1, 36(%rsp)
	jmp	LBB18_49
LBB18_18:                               ## %if.end20
	movq	104(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rdi
	callq	_mbedtls_mpi_init
	movq	120(%rsp), %rax
	cmpl	$-1, (%rax)
	jne	LBB18_20
## %bb.19:                              ## %if.then22
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rsp)
	movb	$45, (%rax)
	movq	96(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 96(%rsp)
LBB18_20:                               ## %if.end23
	cmpl	$16, 116(%rsp)
	jne	LBB18_34
## %bb.21:                              ## %if.then25
	movq	120(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	$0, 8(%rsp)
LBB18_22:                               ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_24 Depth 2
	cmpq	$0, 24(%rsp)
	jbe	LBB18_33
## %bb.23:                              ## %for.body
                                        ##   in Loop: Header=BB18_22 Depth=1
	movq	$8, 16(%rsp)
LBB18_24:                               ## %for.cond28
                                        ##   Parent Loop BB18_22 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$0, 16(%rsp)
	jbe	LBB18_31
## %bb.25:                              ## %for.body30
                                        ##   in Loop: Header=BB18_24 Depth=2
	movq	120(%rsp), %rax
	movq	16(%rax), %rax
	movq	24(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 32(%rsp)
	cmpl	$0, 32(%rsp)
	jne	LBB18_29
## %bb.26:                              ## %land.lhs.true
                                        ##   in Loop: Header=BB18_24 Depth=2
	cmpq	$0, 8(%rsp)
	jne	LBB18_29
## %bb.27:                              ## %land.lhs.true37
                                        ##   in Loop: Header=BB18_24 Depth=2
	movq	24(%rsp), %rax
	addq	16(%rsp), %rax
	cmpq	$2, %rax
	je	LBB18_29
## %bb.28:                              ## %if.then40
                                        ##   in Loop: Header=BB18_24 Depth=2
	jmp	LBB18_30
LBB18_29:                               ## %if.end41
                                        ##   in Loop: Header=BB18_24 Depth=2
	movl	32(%rsp), %eax
	movl	$16, %ecx
	cltd
	idivl	%ecx
	movslq	%eax, %rcx
	leaq	L_.str(%rip), %rax
	movb	(%rax,%rcx), %cl
	movq	64(%rsp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, 64(%rsp)
	movb	%cl, (%rax)
	movl	32(%rsp), %eax
	movl	$16, %ecx
	cltd
	idivl	%ecx
	movslq	%edx, %rcx
	leaq	L_.str(%rip), %rax
	movb	(%rax,%rcx), %cl
	movq	64(%rsp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, 64(%rsp)
	movb	%cl, (%rax)
	movq	$1, 8(%rsp)
LBB18_30:                               ## %for.inc
                                        ##   in Loop: Header=BB18_24 Depth=2
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB18_24
LBB18_31:                               ## %for.end
                                        ##   in Loop: Header=BB18_22 Depth=1
	jmp	LBB18_32
LBB18_32:                               ## %for.inc48
                                        ##   in Loop: Header=BB18_22 Depth=1
	movq	24(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 24(%rsp)
	jmp	LBB18_22
LBB18_33:                               ## %for.end50
	jmp	LBB18_47
LBB18_34:                               ## %if.else
	jmp	LBB18_35
LBB18_35:                               ## %do.body51
	movq	120(%rsp), %rsi
	leaq	40(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB18_37
## %bb.36:                              ## %if.then54
	jmp	LBB18_48
LBB18_37:                               ## %if.end55
	jmp	LBB18_38
LBB18_38:                               ## %do.cond56
	jmp	LBB18_39
LBB18_39:                               ## %do.end57
	cmpl	$-1, 40(%rsp)
	jne	LBB18_41
## %bb.40:                              ## %if.then60
	movl	$1, 40(%rsp)
LBB18_41:                               ## %if.end62
	jmp	LBB18_42
LBB18_42:                               ## %do.body63
	movl	116(%rsp), %esi
	movq	96(%rsp), %rcx
	leaq	40(%rsp), %rdi
	leaq	64(%rsp), %rdx
	callq	__ZL13mpi_write_hlpP11mbedtls_mpiiPPcm
	movl	%eax, 84(%rsp)
	cmpl	$0, %eax
	je	LBB18_44
## %bb.43:                              ## %if.then66
	jmp	LBB18_48
LBB18_44:                               ## %if.end67
	jmp	LBB18_45
LBB18_45:                               ## %do.cond68
	jmp	LBB18_46
LBB18_46:                               ## %do.end69
	jmp	LBB18_47
LBB18_47:                               ## %if.end70
	movq	64(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 64(%rsp)
	movb	$0, (%rax)
	movq	64(%rsp), %rcx
	movq	104(%rsp), %rax
	subq	%rax, %rcx
	movq	88(%rsp), %rax
	movq	%rcx, (%rax)
LBB18_48:                               ## %cleanup
	leaq	40(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	84(%rsp), %eax
	movl	%eax, 132(%rsp)
	movl	$1, 36(%rsp)
LBB18_49:                               ## %cleanup72
	movl	132(%rsp), %eax
	addq	$136, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL13mpi_write_hlpP11mbedtls_mpiiPPcm
__ZL13mpi_write_hlpP11mbedtls_mpiiPPcm: ## @_ZL13mpi_write_hlpP11mbedtls_mpiiPPcm
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 72(%rsp)
	movl	%esi, 68(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movl	$-110, 44(%rsp)
	movq	$0, 24(%rsp)
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	addq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
LBB19_1:                                ## %do.body
                                        ## =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	cmpq	48(%rsp), %rax
	jb	LBB19_3
## %bb.2:                               ## %if.then
	movl	$-8, 84(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB19_20
LBB19_3:                                ## %if.end
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_4
LBB19_4:                                ## %do.body1
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	72(%rsp), %rsi
	movslq	68(%rsp), %rdx
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_mod_int
	movl	%eax, 44(%rsp)
	cmpl	$0, %eax
	je	LBB19_6
## %bb.5:                               ## %if.then3
	jmp	LBB19_19
LBB19_6:                                ## %if.end4
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_7
LBB19_7:                                ## %do.cond
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_8
LBB19_8:                                ## %do.end
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_9
LBB19_9:                                ## %do.body5
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	72(%rsp), %rdi
	movq	72(%rsp), %rdx
	movslq	68(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_div_int
	movl	%eax, 44(%rsp)
	cmpl	$0, %eax
	je	LBB19_11
## %bb.10:                              ## %if.then9
	jmp	LBB19_19
LBB19_11:                               ## %if.end10
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_12
LBB19_12:                               ## %do.cond11
                                        ##   in Loop: Header=BB19_1 Depth=1
	jmp	LBB19_13
LBB19_13:                               ## %do.end12
                                        ##   in Loop: Header=BB19_1 Depth=1
	cmpq	$10, 32(%rsp)
	jae	LBB19_15
## %bb.14:                              ## %if.then14
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	32(%rsp), %rax
	addq	$48, %rax
	movb	%al, %cl
	movq	16(%rsp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rsp)
	movb	%cl, -1(%rax)
	jmp	LBB19_16
LBB19_15:                               ## %if.else
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	32(%rsp), %rax
	subq	$10, %rax
	addq	$65, %rax
	movb	%al, %cl
	movq	16(%rsp), %rax
	movq	%rax, %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rsp)
	movb	%cl, -1(%rax)
LBB19_16:                               ## %if.end19
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	24(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 24(%rsp)
## %bb.17:                              ## %do.cond20
                                        ##   in Loop: Header=BB19_1 Depth=1
	movq	72(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jne	LBB19_1
## %bb.18:                              ## %do.end23
	movq	56(%rsp), %rax
	movq	(%rax), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	_memmove
	movq	24(%rsp), %rcx
	movq	56(%rsp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
LBB19_19:                               ## %cleanup
	movl	44(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	$1, 12(%rsp)
LBB19_20:                               ## %cleanup25
	movl	84(%rsp), %eax
	addq	$88, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_read_binary_le ## -- Begin function mbedtls_mpi_read_binary_le
	.globl	_mbedtls_mpi_read_binary_le
	.p2align	4
_mbedtls_mpi_read_binary_le:            ## @mbedtls_mpi_read_binary_le
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	$-110, 28(%rsp)
	movq	32(%rsp), %rax
	shrq	$3, %rax
	movq	32(%rsp), %rcx
	andq	$7, %rcx
	cmpq	$0, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 8(%rsp)
## %bb.1:                               ## %do.body
	movq	48(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	__ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB20_3
## %bb.2:                               ## %if.then
	jmp	LBB20_10
LBB20_3:                                ## %if.end
	jmp	LBB20_4
LBB20_4:                                ## %do.cond
	jmp	LBB20_5
LBB20_5:                                ## %do.end
	movq	$0, 16(%rsp)
LBB20_6:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	cmpq	32(%rsp), %rax
	jae	LBB20_9
## %bb.7:                               ## %for.body
                                        ##   in Loop: Header=BB20_6 Depth=1
	movq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, %edx
	movq	16(%rsp), %rcx
	andq	$7, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	shrq	$3, %rcx
	orq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
## %bb.8:                               ## %for.inc
                                        ##   in Loop: Header=BB20_6 Depth=1
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB20_6
LBB20_9:                                ## %for.end
	jmp	LBB20_10
LBB20_10:                               ## %cleanup
	movl	28(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
__ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim: ## @_ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	cmpq	$0, (%rsp)
	jne	LBB21_2
## %bb.1:                               ## %if.then
	movq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	$0, 20(%rsp)
	jmp	LBB21_5
LBB21_2:                                ## %if.else
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	(%rsp), %rax
	jne	LBB21_4
## %bb.3:                               ## %if.then2
	movq	8(%rsp), %rax
	movq	16(%rax), %rdi
	movq	(%rsp), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
	movq	8(%rsp), %rax
	movl	$1, (%rax)
	movl	$0, 20(%rsp)
	jmp	LBB21_5
LBB21_4:                                ## %if.else3
	movq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movq	8(%rsp), %rdi
	movq	(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 20(%rsp)
LBB21_5:                                ## %return
	movl	20(%rsp), %eax
	addq	$24, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_read_binary ## -- Begin function mbedtls_mpi_read_binary
	.globl	_mbedtls_mpi_read_binary
	.p2align	4
_mbedtls_mpi_read_binary:               ## @mbedtls_mpi_read_binary
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	$-110, 28(%rsp)
	movq	32(%rsp), %rax
	shrq	$3, %rax
	movq	32(%rsp), %rcx
	andq	$7, %rcx
	cmpq	$0, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	shlq	$3, %rax
	subq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB22_2
LBB22_2:                                ## %do.cond
	jmp	LBB22_3
LBB22_3:                                ## %do.end
	jmp	LBB22_4
LBB22_4:                                ## %do.body1
	jmp	LBB22_5
LBB22_5:                                ## %do.cond2
	jmp	LBB22_6
LBB22_6:                                ## %do.end3
	jmp	LBB22_7
LBB22_7:                                ## %do.body4
	movq	48(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	__ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB22_9
## %bb.8:                               ## %if.then
	jmp	LBB22_14
LBB22_9:                                ## %if.end
	jmp	LBB22_10
LBB22_10:                               ## %do.cond6
	jmp	LBB22_11
LBB22_11:                               ## %do.end7
	cmpq	$0, 32(%rsp)
	je	LBB22_13
## %bb.12:                              ## %if.then9
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, (%rsp)
	movq	(%rsp), %rdi
	addq	8(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	32(%rsp), %rdx
	callq	_memcpy
	movq	48(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rsi
	callq	__ZL21mpi_bigendian_to_hostPmm
LBB22_13:                               ## %if.end11
	jmp	LBB22_14
LBB22_14:                               ## %cleanup
	movl	28(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL21mpi_bigendian_to_hostPmm
__ZL21mpi_bigendian_to_hostPmm:         ## @_ZL21mpi_bigendian_to_hostPmm
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	cmpq	$0, 40(%rsp)
	jne	LBB23_2
## %bb.1:                               ## %if.then
	movl	$1, 20(%rsp)
	jmp	LBB23_7
LBB23_2:                                ## %if.end
	movq	48(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	subq	$1, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, 24(%rsp)
LBB23_3:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax
	cmpq	24(%rsp), %rax
	ja	LBB23_6
## %bb.4:                               ## %for.body
                                        ##   in Loop: Header=BB23_3 Depth=1
	movq	32(%rsp), %rax
	movq	(%rax), %rdi
	callq	__ZL26mpi_uint_bigendian_to_hostm
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rax
	movq	(%rax), %rdi
	callq	__ZL26mpi_uint_bigendian_to_hostm
	movq	%rax, %rcx
	movq	32(%rsp), %rax
	movq	%rcx, (%rax)
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, (%rax)
## %bb.5:                               ## %for.inc
                                        ##   in Loop: Header=BB23_3 Depth=1
	movq	32(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	addq	$-8, %rax
	movq	%rax, 24(%rsp)
	jmp	LBB23_3
LBB23_6:                                ## %for.end
	movl	$0, 20(%rsp)
LBB23_7:                                ## %cleanup
## %bb.8:                               ## %cleanup.cont
	addq	$56, %rsp
	retq
## %bb.9:                               ## %unreachable
	ud2
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_write_binary_le ## -- Begin function mbedtls_mpi_write_binary_le
	.globl	_mbedtls_mpi_write_binary_le
	.p2align	4
_mbedtls_mpi_write_binary_le:           ## @mbedtls_mpi_write_binary_le
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$3, %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	cmpq	40(%rsp), %rax
	jae	LBB24_2
## %bb.1:                               ## %if.then
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	LBB24_9
LBB24_2:                                ## %if.else
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
LBB24_3:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	cmpq	32(%rsp), %rax
	jae	LBB24_8
## %bb.4:                               ## %for.body
                                        ##   in Loop: Header=BB24_3 Depth=1
	movq	56(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	shrq	$3, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	16(%rsp), %rcx
	andq	$7, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
	cmpq	$0, %rax
	je	LBB24_6
## %bb.5:                               ## %if.then4
	movl	$-8, 68(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB24_16
LBB24_6:                                ## %if.end
                                        ##   in Loop: Header=BB24_3 Depth=1
	jmp	LBB24_7
LBB24_7:                                ## %for.inc
                                        ##   in Loop: Header=BB24_3 Depth=1
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB24_3
LBB24_8:                                ## %for.end
	jmp	LBB24_9
LBB24_9:                                ## %if.end5
	movq	$0, 16(%rsp)
LBB24_10:                               ## %for.cond6
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	cmpq	24(%rsp), %rax
	jae	LBB24_13
## %bb.11:                              ## %for.body8
                                        ##   in Loop: Header=BB24_10 Depth=1
	movq	56(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	shrq	$3, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	16(%rsp), %rcx
	andq	$7, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
	movb	%al, %dl
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.12:                              ## %for.inc17
                                        ##   in Loop: Header=BB24_10 Depth=1
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB24_10
LBB24_13:                               ## %for.end19
	movq	32(%rsp), %rax
	cmpq	40(%rsp), %rax
	jae	LBB24_15
## %bb.14:                              ## %if.then21
	movq	48(%rsp), %rdi
	addq	32(%rsp), %rdi
	movq	40(%rsp), %rdx
	subq	32(%rsp), %rdx
	xorl	%esi, %esi
	callq	_memset
LBB24_15:                               ## %if.end22
	movl	$0, 68(%rsp)
	movl	$1, 12(%rsp)
LBB24_16:                               ## %cleanup
	movl	68(%rsp), %eax
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_write_binary ## -- Begin function mbedtls_mpi_write_binary
	.globl	_mbedtls_mpi_write_binary
	.p2align	4
_mbedtls_mpi_write_binary:              ## @mbedtls_mpi_write_binary
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB25_2
LBB25_2:                                ## %do.cond
	jmp	LBB25_3
LBB25_3:                                ## %do.end
	jmp	LBB25_4
LBB25_4:                                ## %do.body1
	jmp	LBB25_5
LBB25_5:                                ## %do.cond2
	jmp	LBB25_6
LBB25_6:                                ## %do.end3
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$3, %rax
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	cmpq	40(%rsp), %rax
	jae	LBB25_8
## %bb.7:                               ## %if.then
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rax
	addq	40(%rsp), %rax
	xorl	%ecx, %ecx
                                        ## kill: def $rcx killed $ecx
	subq	32(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rdi
	movq	40(%rsp), %rdx
	subq	32(%rsp), %rdx
	xorl	%esi, %esi
	callq	_memset
	jmp	LBB25_15
LBB25_8:                                ## %if.else
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
LBB25_9:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	cmpq	32(%rsp), %rax
	jae	LBB25_14
## %bb.10:                              ## %for.body
                                        ##   in Loop: Header=BB25_9 Depth=1
	movq	56(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rsp), %rcx
	shrq	$3, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rsp), %rcx
	andq	$7, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
	cmpq	$0, %rax
	je	LBB25_12
## %bb.11:                              ## %if.then9
	movl	$-8, 68(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB25_20
LBB25_12:                               ## %if.end
                                        ##   in Loop: Header=BB25_9 Depth=1
	jmp	LBB25_13
LBB25_13:                               ## %for.inc
                                        ##   in Loop: Header=BB25_9 Depth=1
	movq	8(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 8(%rsp)
	jmp	LBB25_9
LBB25_14:                               ## %for.end
	jmp	LBB25_15
LBB25_15:                               ## %if.end10
	movq	$0, 8(%rsp)
LBB25_16:                               ## %for.cond11
                                        ## =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	cmpq	24(%rsp), %rax
	jae	LBB25_19
## %bb.17:                              ## %for.body13
                                        ##   in Loop: Header=BB25_16 Depth=1
	movq	56(%rsp), %rax
	movq	16(%rax), %rax
	movq	8(%rsp), %rcx
	shrq	$3, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	8(%rsp), %rcx
	andq	$7, %rcx
	shlq	$3, %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$255, %rax
	movb	%al, %dl
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	subq	8(%rsp), %rcx
	subq	$1, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.18:                              ## %for.inc24
                                        ##   in Loop: Header=BB25_16 Depth=1
	movq	8(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 8(%rsp)
	jmp	LBB25_16
LBB25_19:                               ## %for.end26
	movl	$0, 68(%rsp)
	movl	$1, 4(%rsp)
LBB25_20:                               ## %cleanup
	movl	68(%rsp), %eax
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_shift_l    ## -- Begin function mbedtls_mpi_shift_l
	.globl	_mbedtls_mpi_shift_l
	.p2align	4
_mbedtls_mpi_shift_l:                   ## @mbedtls_mpi_shift_l
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movl	$-110, 52(%rsp)
	movq	$0, 16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB26_2
LBB26_2:                                ## %do.cond
	jmp	LBB26_3
LBB26_3:                                ## %do.end
	movq	56(%rsp), %rax
	shrq	$6, %rax
	movq	%rax, 32(%rsp)
	movq	56(%rsp), %rax
	andq	$63, %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	addq	56(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$6, %rax
	cmpq	40(%rsp), %rax
	jae	LBB26_10
## %bb.4:                               ## %if.then
	jmp	LBB26_5
LBB26_5:                                ## %do.body1
	movq	64(%rsp), %rdi
	movq	40(%rsp), %rsi
	shrq	$6, %rsi
	movq	40(%rsp), %rax
	andq	$63, %rax
	cmpq	$0, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	%rax, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 52(%rsp)
	cmpl	$0, %eax
	je	LBB26_7
## %bb.6:                               ## %if.then7
	jmp	LBB26_27
LBB26_7:                                ## %if.end
	jmp	LBB26_8
LBB26_8:                                ## %do.cond8
	jmp	LBB26_9
LBB26_9:                                ## %do.end9
	jmp	LBB26_10
LBB26_10:                               ## %if.end10
	movl	$0, 52(%rsp)
	cmpq	$0, 32(%rsp)
	jbe	LBB26_20
## %bb.11:                              ## %if.then12
	movq	64(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 40(%rsp)
LBB26_12:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	jbe	LBB26_15
## %bb.13:                              ## %for.body
                                        ##   in Loop: Header=BB26_12 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	subq	32(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	subq	$1, %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.14:                              ## %for.inc
                                        ##   in Loop: Header=BB26_12 Depth=1
	movq	40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB26_12
LBB26_15:                               ## %for.end
	jmp	LBB26_16
LBB26_16:                               ## %for.cond19
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 40(%rsp)
	jbe	LBB26_19
## %bb.17:                              ## %for.body21
                                        ##   in Loop: Header=BB26_16 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	subq	$1, %rcx
	movq	$0, (%rax,%rcx,8)
## %bb.18:                              ## %for.inc25
                                        ##   in Loop: Header=BB26_16 Depth=1
	movq	40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB26_16
LBB26_19:                               ## %for.end27
	jmp	LBB26_20
LBB26_20:                               ## %if.end28
	cmpq	$0, 24(%rsp)
	jbe	LBB26_26
## %bb.21:                              ## %if.then30
	movq	32(%rsp), %rax
	movq	%rax, 40(%rsp)
LBB26_22:                               ## %for.cond31
                                        ## =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	movq	64(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jae	LBB26_25
## %bb.23:                              ## %for.body34
                                        ##   in Loop: Header=BB26_22 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$64, %ecx
	subq	24(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, (%rsp)                    ## 8-byte Spill
	movq	(%rax,%rdx,8), %rdx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	(%rsp), %rcx                    ## 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	movq	16(%rsp), %rdx
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	orq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
## %bb.24:                              ## %for.inc42
                                        ##   in Loop: Header=BB26_22 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB26_22
LBB26_25:                               ## %for.end43
	jmp	LBB26_26
LBB26_26:                               ## %if.end44
	jmp	LBB26_27
LBB26_27:                               ## %cleanup
	movl	52(%rsp), %eax
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_shift_r    ## -- Begin function mbedtls_mpi_shift_r
	.globl	_mbedtls_mpi_shift_r
	.p2align	4
_mbedtls_mpi_shift_r:                   ## @mbedtls_mpi_shift_r
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	$0, 32(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB27_2
LBB27_2:                                ## %do.cond
	jmp	LBB27_3
LBB27_3:                                ## %do.end
	movq	64(%rsp), %rax
	shrq	$6, %rax
	movq	%rax, 48(%rsp)
	movq	64(%rsp), %rax
	andq	$63, %rax
	movq	%rax, 40(%rsp)
	movq	48(%rsp), %rax
	movq	72(%rsp), %rcx
	cmpq	8(%rcx), %rax
	ja	LBB27_6
## %bb.4:                               ## %lor.lhs.false
	movq	48(%rsp), %rax
	movq	72(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB27_7
## %bb.5:                               ## %land.lhs.true
	cmpq	$0, 40(%rsp)
	jbe	LBB27_7
LBB27_6:                                ## %if.then
	movq	72(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 84(%rsp)
	movl	$1, 20(%rsp)
	jmp	LBB27_24
LBB27_7:                                ## %if.end
	cmpq	$0, 48(%rsp)
	jbe	LBB27_17
## %bb.8:                               ## %if.then5
	movq	$0, 56(%rsp)
LBB27_9:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	movq	72(%rsp), %rcx
	movq	8(%rcx), %rcx
	subq	48(%rsp), %rcx
	cmpq	%rcx, %rax
	jae	LBB27_12
## %bb.10:                              ## %for.body
                                        ##   in Loop: Header=BB27_9 Depth=1
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	addq	48(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.11:                              ## %for.inc
                                        ##   in Loop: Header=BB27_9 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB27_9
LBB27_12:                               ## %for.end
	jmp	LBB27_13
LBB27_13:                               ## %for.cond10
                                        ## =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	movq	72(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jae	LBB27_16
## %bb.14:                              ## %for.body13
                                        ##   in Loop: Header=BB27_13 Depth=1
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	movq	$0, (%rax,%rcx,8)
## %bb.15:                              ## %for.inc16
                                        ##   in Loop: Header=BB27_13 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB27_13
LBB27_16:                               ## %for.end18
	jmp	LBB27_17
LBB27_17:                               ## %if.end19
	cmpq	$0, 40(%rsp)
	jbe	LBB27_23
## %bb.18:                              ## %if.then21
	movq	72(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 56(%rsp)
LBB27_19:                               ## %for.cond23
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	jbe	LBB27_22
## %bb.20:                              ## %for.body25
                                        ##   in Loop: Header=BB27_19 Depth=1
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	$64, %ecx
	subq	40(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rdx
	subq	$1, %rdx
	movq	%rdx, 8(%rsp)                   ## 8-byte Spill
	movq	(%rax,%rdx,8), %rdx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rdx
	movq	8(%rsp), %rcx                   ## 8-byte Reload
	movq	%rdx, (%rax,%rcx,8)
	movq	32(%rsp), %rdx
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	subq	$1, %rcx
	orq	(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	24(%rsp), %rax
	movq	%rax, 32(%rsp)
## %bb.21:                              ## %for.inc36
                                        ##   in Loop: Header=BB27_19 Depth=1
	movq	56(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB27_19
LBB27_22:                               ## %for.end37
	jmp	LBB27_23
LBB27_23:                               ## %if.end38
	movl	$0, 84(%rsp)
	movl	$1, 20(%rsp)
LBB27_24:                               ## %cleanup
	movl	84(%rsp), %eax
	addq	$88, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_cmp_abs    ## -- Begin function mbedtls_mpi_cmp_abs
	.globl	_mbedtls_mpi_cmp_abs
	.p2align	4
_mbedtls_mpi_cmp_abs:                   ## @mbedtls_mpi_cmp_abs
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB28_2
LBB28_2:                                ## %do.cond
	jmp	LBB28_3
LBB28_3:                                ## %do.end
	jmp	LBB28_4
LBB28_4:                                ## %do.body1
	jmp	LBB28_5
LBB28_5:                                ## %do.cond2
	jmp	LBB28_6
LBB28_6:                                ## %do.end3
	movq	-16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rsp)
LBB28_7:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rsp)
	jbe	LBB28_12
## %bb.8:                               ## %for.body
                                        ##   in Loop: Header=BB28_7 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB28_10
## %bb.9:                               ## %if.then
	jmp	LBB28_12
LBB28_10:                               ## %if.end
                                        ##   in Loop: Header=BB28_7 Depth=1
	jmp	LBB28_11
LBB28_11:                               ## %for.inc
                                        ##   in Loop: Header=BB28_7 Depth=1
	movq	-32(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rsp)
	jmp	LBB28_7
LBB28_12:                               ## %for.end
	movq	-24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rsp)
LBB28_13:                               ## %for.cond6
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rsp)
	jbe	LBB28_18
## %bb.14:                              ## %for.body8
                                        ##   in Loop: Header=BB28_13 Depth=1
	movq	-24(%rsp), %rax
	movq	16(%rax), %rax
	movq	-40(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB28_16
## %bb.15:                              ## %if.then13
	jmp	LBB28_18
LBB28_16:                               ## %if.end14
                                        ##   in Loop: Header=BB28_13 Depth=1
	jmp	LBB28_17
LBB28_17:                               ## %for.inc15
                                        ##   in Loop: Header=BB28_13 Depth=1
	movq	-40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rsp)
	jmp	LBB28_13
LBB28_18:                               ## %for.end17
	cmpq	$0, -32(%rsp)
	jne	LBB28_21
## %bb.19:                              ## %land.lhs.true
	cmpq	$0, -40(%rsp)
	jne	LBB28_21
## %bb.20:                              ## %if.then20
	movl	$0, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB28_34
LBB28_21:                               ## %if.end21
	movq	-32(%rsp), %rax
	cmpq	-40(%rsp), %rax
	jbe	LBB28_23
## %bb.22:                              ## %if.then23
	movl	$1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB28_34
LBB28_23:                               ## %if.end24
	movq	-40(%rsp), %rax
	cmpq	-32(%rsp), %rax
	jbe	LBB28_25
## %bb.24:                              ## %if.then26
	movl	$-1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB28_34
LBB28_25:                               ## %if.end27
	jmp	LBB28_26
LBB28_26:                               ## %for.cond28
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rsp)
	jbe	LBB28_33
## %bb.27:                              ## %for.body30
                                        ##   in Loop: Header=BB28_26 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	-32(%rsp), %rdx
	subq	$1, %rdx
	cmpq	(%rcx,%rdx,8), %rax
	jbe	LBB28_29
## %bb.28:                              ## %if.then38
	movl	$1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB28_34
LBB28_29:                               ## %if.end39
                                        ##   in Loop: Header=BB28_26 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	-32(%rsp), %rdx
	subq	$1, %rdx
	cmpq	(%rcx,%rdx,8), %rax
	jae	LBB28_31
## %bb.30:                              ## %if.then47
	movl	$-1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB28_34
LBB28_31:                               ## %if.end48
                                        ##   in Loop: Header=BB28_26 Depth=1
	jmp	LBB28_32
LBB28_32:                               ## %for.inc49
                                        ##   in Loop: Header=BB28_26 Depth=1
	movq	-32(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rsp)
	jmp	LBB28_26
LBB28_33:                               ## %for.end51
	movl	$0, -4(%rsp)
	movl	$1, -44(%rsp)
LBB28_34:                               ## %cleanup
	movl	-4(%rsp), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_cmp_mpi    ## -- Begin function mbedtls_mpi_cmp_mpi
	.globl	_mbedtls_mpi_cmp_mpi
	.p2align	4
_mbedtls_mpi_cmp_mpi:                   ## @mbedtls_mpi_cmp_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB29_2
LBB29_2:                                ## %do.cond
	jmp	LBB29_3
LBB29_3:                                ## %do.end
	jmp	LBB29_4
LBB29_4:                                ## %do.body1
	jmp	LBB29_5
LBB29_5:                                ## %do.cond2
	jmp	LBB29_6
LBB29_6:                                ## %do.end3
	movq	-16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rsp)
LBB29_7:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rsp)
	jbe	LBB29_12
## %bb.8:                               ## %for.body
                                        ##   in Loop: Header=BB29_7 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB29_10
## %bb.9:                               ## %if.then
	jmp	LBB29_12
LBB29_10:                               ## %if.end
                                        ##   in Loop: Header=BB29_7 Depth=1
	jmp	LBB29_11
LBB29_11:                               ## %for.inc
                                        ##   in Loop: Header=BB29_7 Depth=1
	movq	-32(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rsp)
	jmp	LBB29_7
LBB29_12:                               ## %for.end
	movq	-24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rsp)
LBB29_13:                               ## %for.cond6
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rsp)
	jbe	LBB29_18
## %bb.14:                              ## %for.body8
                                        ##   in Loop: Header=BB29_13 Depth=1
	movq	-24(%rsp), %rax
	movq	16(%rax), %rax
	movq	-40(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB29_16
## %bb.15:                              ## %if.then13
	jmp	LBB29_18
LBB29_16:                               ## %if.end14
                                        ##   in Loop: Header=BB29_13 Depth=1
	jmp	LBB29_17
LBB29_17:                               ## %for.inc15
                                        ##   in Loop: Header=BB29_13 Depth=1
	movq	-40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rsp)
	jmp	LBB29_13
LBB29_18:                               ## %for.end17
	cmpq	$0, -32(%rsp)
	jne	LBB29_21
## %bb.19:                              ## %land.lhs.true
	cmpq	$0, -40(%rsp)
	jne	LBB29_21
## %bb.20:                              ## %if.then20
	movl	$0, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_21:                               ## %if.end21
	movq	-32(%rsp), %rax
	cmpq	-40(%rsp), %rax
	jbe	LBB29_23
## %bb.22:                              ## %if.then23
	movq	-16(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_23:                               ## %if.end24
	movq	-40(%rsp), %rax
	cmpq	-32(%rsp), %rax
	jbe	LBB29_25
## %bb.24:                              ## %if.then26
	movq	-24(%rsp), %rcx
	xorl	%eax, %eax
	subl	(%rcx), %eax
	movl	%eax, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_25:                               ## %if.end29
	movq	-16(%rsp), %rax
	cmpl	$0, (%rax)
	jle	LBB29_28
## %bb.26:                              ## %land.lhs.true32
	movq	-24(%rsp), %rax
	cmpl	$0, (%rax)
	jge	LBB29_28
## %bb.27:                              ## %if.then35
	movl	$1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_28:                               ## %if.end36
	movq	-24(%rsp), %rax
	cmpl	$0, (%rax)
	jle	LBB29_31
## %bb.29:                              ## %land.lhs.true39
	movq	-16(%rsp), %rax
	cmpl	$0, (%rax)
	jge	LBB29_31
## %bb.30:                              ## %if.then42
	movl	$-1, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_31:                               ## %if.end43
	jmp	LBB29_32
LBB29_32:                               ## %for.cond44
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rsp)
	jbe	LBB29_39
## %bb.33:                              ## %for.body46
                                        ##   in Loop: Header=BB29_32 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	-32(%rsp), %rdx
	subq	$1, %rdx
	cmpq	(%rcx,%rdx,8), %rax
	jbe	LBB29_35
## %bb.34:                              ## %if.then54
	movq	-16(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_35:                               ## %if.end56
                                        ##   in Loop: Header=BB29_32 Depth=1
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-32(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-24(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	-32(%rsp), %rdx
	subq	$1, %rdx
	cmpq	(%rcx,%rdx,8), %rax
	jae	LBB29_37
## %bb.36:                              ## %if.then64
	movq	-16(%rsp), %rcx
	xorl	%eax, %eax
	subl	(%rcx), %eax
	movl	%eax, -4(%rsp)
	movl	$1, -44(%rsp)
	jmp	LBB29_40
LBB29_37:                               ## %if.end67
                                        ##   in Loop: Header=BB29_32 Depth=1
	jmp	LBB29_38
LBB29_38:                               ## %for.inc68
                                        ##   in Loop: Header=BB29_32 Depth=1
	movq	-32(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rsp)
	jmp	LBB29_32
LBB29_39:                               ## %for.end70
	movl	$0, -4(%rsp)
	movl	$1, -44(%rsp)
LBB29_40:                               ## %cleanup
	movl	-4(%rsp), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_cmp_int    ## -- Begin function mbedtls_mpi_cmp_int
	.globl	_mbedtls_mpi_cmp_int
	.p2align	4
_mbedtls_mpi_cmp_int:                   ## @mbedtls_mpi_cmp_int
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB30_2
LBB30_2:                                ## %do.cond
	jmp	LBB30_3
LBB30_3:                                ## %do.end
	cmpq	$0, 40(%rsp)
	jge	LBB30_5
## %bb.4:                               ## %cond.true
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	40(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB30_6
LBB30_5:                                ## %cond.false
	movq	40(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB30_6:                                ## %cond.end
	movq	(%rsp), %rax                    ## 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rdx
	movl	$1, %eax
	movl	$4294967295, %ecx               ## imm = 0xFFFFFFFF
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movl	%eax, 16(%rsp)
	movq	$1, 24(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_add_abs    ## -- Begin function mbedtls_mpi_add_abs
	.globl	_mbedtls_mpi_add_abs
	.p2align	4
_mbedtls_mpi_add_abs:                   ## @mbedtls_mpi_add_abs
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movl	$-110, 60(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB31_2
LBB31_2:                                ## %do.cond
	jmp	LBB31_3
LBB31_3:                                ## %do.end
	jmp	LBB31_4
LBB31_4:                                ## %do.body1
	jmp	LBB31_5
LBB31_5:                                ## %do.cond2
	jmp	LBB31_6
LBB31_6:                                ## %do.end3
	jmp	LBB31_7
LBB31_7:                                ## %do.body4
	jmp	LBB31_8
LBB31_8:                                ## %do.cond5
	jmp	LBB31_9
LBB31_9:                                ## %do.end6
	movq	80(%rsp), %rax
	cmpq	64(%rsp), %rax
	jne	LBB31_11
## %bb.10:                              ## %if.then
	movq	72(%rsp), %rax
	movq	%rax, (%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	(%rsp), %rax
	movq	%rax, 64(%rsp)
LBB31_11:                               ## %if.end
	movq	80(%rsp), %rax
	cmpq	72(%rsp), %rax
	je	LBB31_18
## %bb.12:                              ## %if.then8
	jmp	LBB31_13
LBB31_13:                               ## %do.body9
	movq	80(%rsp), %rdi
	movq	72(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 60(%rsp)
	cmpl	$0, %eax
	je	LBB31_15
## %bb.14:                              ## %if.then11
	jmp	LBB31_44
LBB31_15:                               ## %if.end12
	jmp	LBB31_16
LBB31_16:                               ## %do.cond13
	jmp	LBB31_17
LBB31_17:                               ## %do.end14
	jmp	LBB31_18
LBB31_18:                               ## %if.end15
	movq	80(%rsp), %rax
	movl	$1, (%rax)
	movq	64(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 40(%rsp)
LBB31_19:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 40(%rsp)
	jbe	LBB31_24
## %bb.20:                              ## %for.body
                                        ##   in Loop: Header=BB31_19 Depth=1
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	40(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB31_22
## %bb.21:                              ## %if.then19
	jmp	LBB31_24
LBB31_22:                               ## %if.end20
                                        ##   in Loop: Header=BB31_19 Depth=1
	jmp	LBB31_23
LBB31_23:                               ## %for.inc
                                        ##   in Loop: Header=BB31_19 Depth=1
	movq	40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 40(%rsp)
	jmp	LBB31_19
LBB31_24:                               ## %for.end
	jmp	LBB31_25
LBB31_25:                               ## %do.body21
	movq	80(%rsp), %rdi
	movq	40(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 60(%rsp)
	cmpl	$0, %eax
	je	LBB31_27
## %bb.26:                              ## %if.then24
	jmp	LBB31_44
LBB31_27:                               ## %if.end25
	jmp	LBB31_28
LBB31_28:                               ## %do.cond26
	jmp	LBB31_29
LBB31_29:                               ## %do.end27
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 32(%rsp)
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	$0, 48(%rsp)
LBB31_30:                               ## %for.cond30
                                        ## =>This Inner Loop Header: Depth=1
	movq	48(%rsp), %rax
	cmpq	40(%rsp), %rax
	jae	LBB31_33
## %bb.31:                              ## %for.body32
                                        ##   in Loop: Header=BB31_30 Depth=1
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	cmpq	8(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	16(%rsp), %rax
	movq	%rax, 16(%rsp)
## %bb.32:                              ## %for.inc38
                                        ##   in Loop: Header=BB31_30 Depth=1
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	32(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 24(%rsp)
	jmp	LBB31_30
LBB31_33:                               ## %for.end40
	jmp	LBB31_34
LBB31_34:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rsp)
	je	LBB31_43
## %bb.35:                              ## %while.body
                                        ##   in Loop: Header=BB31_34 Depth=1
	movq	48(%rsp), %rax
	movq	80(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jb	LBB31_42
## %bb.36:                              ## %if.then44
                                        ##   in Loop: Header=BB31_34 Depth=1
	jmp	LBB31_37
LBB31_37:                               ## %do.body45
                                        ##   in Loop: Header=BB31_34 Depth=1
	movq	80(%rsp), %rdi
	movq	48(%rsp), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 60(%rsp)
	cmpl	$0, %eax
	je	LBB31_39
## %bb.38:                              ## %if.then49
	jmp	LBB31_44
LBB31_39:                               ## %if.end50
                                        ##   in Loop: Header=BB31_34 Depth=1
	jmp	LBB31_40
LBB31_40:                               ## %do.cond51
                                        ##   in Loop: Header=BB31_34 Depth=1
	jmp	LBB31_41
LBB31_41:                               ## %do.end52
                                        ##   in Loop: Header=BB31_34 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	48(%rsp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, 24(%rsp)
LBB31_42:                               ## %if.end54
                                        ##   in Loop: Header=BB31_34 Depth=1
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	cmpq	16(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 48(%rsp)
	movq	24(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 24(%rsp)
	jmp	LBB31_34
LBB31_43:                               ## %while.end
	jmp	LBB31_44
LBB31_44:                               ## %cleanup
	movl	60(%rsp), %eax
	addq	$88, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_sub_abs    ## -- Begin function mbedtls_mpi_sub_abs
	.globl	_mbedtls_mpi_sub_abs
	.p2align	4
_mbedtls_mpi_sub_abs:                   ## @mbedtls_mpi_sub_abs
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movl	$-110, 28(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB32_2
LBB32_2:                                ## %do.cond
	jmp	LBB32_3
LBB32_3:                                ## %do.end
	jmp	LBB32_4
LBB32_4:                                ## %do.body1
	jmp	LBB32_5
LBB32_5:                                ## %do.cond2
	jmp	LBB32_6
LBB32_6:                                ## %do.end3
	jmp	LBB32_7
LBB32_7:                                ## %do.body4
	jmp	LBB32_8
LBB32_8:                                ## %do.cond5
	jmp	LBB32_9
LBB32_9:                                ## %do.end6
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
LBB32_10:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 16(%rsp)
	jbe	LBB32_15
## %bb.11:                              ## %for.body
                                        ##   in Loop: Header=BB32_10 Depth=1
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB32_13
## %bb.12:                              ## %if.then
	jmp	LBB32_15
LBB32_13:                               ## %if.end
                                        ##   in Loop: Header=BB32_10 Depth=1
	jmp	LBB32_14
LBB32_14:                               ## %for.inc
                                        ##   in Loop: Header=BB32_10 Depth=1
	movq	16(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB32_10
LBB32_15:                               ## %for.end
	movq	16(%rsp), %rax
	movq	40(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jbe	LBB32_17
## %bb.16:                              ## %if.then11
	movl	$-10, 28(%rsp)
	jmp	LBB32_37
LBB32_17:                               ## %if.end12
	jmp	LBB32_18
LBB32_18:                               ## %do.body13
	movq	48(%rsp), %rdi
	movq	40(%rsp), %rax
	movq	8(%rax), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB32_20
## %bb.19:                              ## %if.then16
	jmp	LBB32_37
LBB32_20:                               ## %if.end17
	jmp	LBB32_21
LBB32_21:                               ## %do.cond18
	jmp	LBB32_22
LBB32_22:                               ## %do.end19
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	jbe	LBB32_24
## %bb.23:                              ## %if.then22
	movq	48(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	40(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rsi
	movq	40(%rsp), %rax
	movq	8(%rax), %rdx
	subq	16(%rsp), %rdx
	shlq	$3, %rdx
	callq	_memcpy
LBB32_24:                               ## %if.end28
	movq	48(%rsp), %rax
	movq	8(%rax), %rax
	movq	40(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jbe	LBB32_26
## %bb.25:                              ## %if.then32
	movq	48(%rsp), %rax
	movq	16(%rax), %rdi
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	48(%rsp), %rax
	movq	8(%rax), %rdx
	movq	40(%rsp), %rax
	subq	8(%rax), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
LBB32_26:                               ## %if.end40
	movq	16(%rsp), %rdi
	movq	48(%rsp), %rax
	movq	16(%rax), %rsi
	movq	40(%rsp), %rax
	movq	16(%rax), %rdx
	movq	32(%rsp), %rax
	movq	16(%rax), %rcx
	callq	__ZL11mpi_sub_hlpmPmPKmS1_
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	LBB32_36
## %bb.27:                              ## %if.then46
	jmp	LBB32_28
LBB32_28:                               ## %for.cond47
                                        ## =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rcx
	movq	48(%rsp), %rdx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpq	8(%rdx), %rcx
	movb	%al, 7(%rsp)                    ## 1-byte Spill
	jae	LBB32_30
## %bb.29:                              ## %land.rhs
                                        ##   in Loop: Header=BB32_28 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	sete	%al
	movb	%al, 7(%rsp)                    ## 1-byte Spill
LBB32_30:                               ## %land.end
                                        ##   in Loop: Header=BB32_28 Depth=1
	movb	7(%rsp), %al                    ## 1-byte Reload
	testb	$1, %al
	jne	LBB32_31
	jmp	LBB32_33
LBB32_31:                               ## %for.body53
                                        ##   in Loop: Header=BB32_28 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$-1, %rdx
	movq	%rdx, (%rax,%rcx,8)
## %bb.32:                              ## %for.inc57
                                        ##   in Loop: Header=BB32_28 Depth=1
	movq	16(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 16(%rsp)
	jmp	LBB32_28
LBB32_33:                               ## %for.end58
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jne	LBB32_35
## %bb.34:                              ## %if.then61
	movl	$-10, 28(%rsp)
	jmp	LBB32_37
LBB32_35:                               ## %if.end62
	movq	48(%rsp), %rax
	movq	16(%rax), %rax
	movq	16(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$-1, %rdx
	movq	%rdx, (%rax,%rcx,8)
LBB32_36:                               ## %if.end66
	movq	48(%rsp), %rax
	movl	$1, (%rax)
LBB32_37:                               ## %cleanup
	movl	28(%rsp), %eax
	addq	$56, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL11mpi_sub_hlpmPmPKmS1_
__ZL11mpi_sub_hlpmPmPKmS1_:             ## @_ZL11mpi_sub_hlpmPmPKmS1_
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rdx, -24(%rsp)
	movq	%rcx, -32(%rsp)
	movq	$0, -48(%rsp)
	movq	$0, -40(%rsp)
LBB33_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax
	cmpq	-8(%rsp), %rax
	jae	LBB33_4
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB33_1 Depth=1
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	-48(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -64(%rsp)
	movq	-24(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	subq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	movq	-40(%rsp), %rdx
	cmpq	(%rcx,%rdx,8), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-64(%rsp), %rax
	movq	%rax, -48(%rsp)
	movq	-56(%rsp), %rdx
	movq	-32(%rsp), %rax
	movq	-40(%rsp), %rcx
	subq	(%rax,%rcx,8), %rdx
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.3:                               ## %for.inc
                                        ##   in Loop: Header=BB33_1 Depth=1
	movq	-40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rsp)
	jmp	LBB33_1
LBB33_4:                                ## %for.end
	movq	-48(%rsp), %rax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_add_mpi    ## -- Begin function mbedtls_mpi_add_mpi
	.globl	_mbedtls_mpi_add_mpi
	.p2align	4
_mbedtls_mpi_add_mpi:                   ## @mbedtls_mpi_add_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB34_2
LBB34_2:                                ## %do.cond
	jmp	LBB34_3
LBB34_3:                                ## %do.end
	jmp	LBB34_4
LBB34_4:                                ## %do.body1
	jmp	LBB34_5
LBB34_5:                                ## %do.cond2
	jmp	LBB34_6
LBB34_6:                                ## %do.end3
	jmp	LBB34_7
LBB34_7:                                ## %do.body4
	jmp	LBB34_8
LBB34_8:                                ## %do.cond5
	jmp	LBB34_9
LBB34_9:                                ## %do.end6
	movq	24(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	24(%rsp), %rax
	movl	(%rax), %eax
	movq	16(%rsp), %rcx
	imull	(%rcx), %eax
	cmpl	$0, %eax
	jge	LBB34_24
## %bb.10:                              ## %if.then
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_abs
	cmpl	$0, %eax
	jl	LBB34_17
## %bb.11:                              ## %if.then11
	jmp	LBB34_12
LBB34_12:                               ## %do.body12
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB34_14
## %bb.13:                              ## %if.then15
	jmp	LBB34_31
LBB34_14:                               ## %if.end
	jmp	LBB34_15
LBB34_15:                               ## %do.cond16
	jmp	LBB34_16
LBB34_16:                               ## %do.end17
	movl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
	jmp	LBB34_23
LBB34_17:                               ## %if.else
	jmp	LBB34_18
LBB34_18:                               ## %do.body19
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB34_20
## %bb.19:                              ## %if.then22
	jmp	LBB34_31
LBB34_20:                               ## %if.end23
	jmp	LBB34_21
LBB34_21:                               ## %do.cond24
	jmp	LBB34_22
LBB34_22:                               ## %do.end25
	xorl	%ecx, %ecx
	subl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
LBB34_23:                               ## %if.end27
	jmp	LBB34_30
LBB34_24:                               ## %if.else28
	jmp	LBB34_25
LBB34_25:                               ## %do.body29
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	_mbedtls_mpi_add_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB34_27
## %bb.26:                              ## %if.then32
	jmp	LBB34_31
LBB34_27:                               ## %if.end33
	jmp	LBB34_28
LBB34_28:                               ## %do.cond34
	jmp	LBB34_29
LBB34_29:                               ## %do.end35
	movl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
LBB34_30:                               ## %if.end37
	jmp	LBB34_31
LBB34_31:                               ## %cleanup
	movl	12(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_sub_mpi    ## -- Begin function mbedtls_mpi_sub_mpi
	.globl	_mbedtls_mpi_sub_mpi
	.p2align	4
_mbedtls_mpi_sub_mpi:                   ## @mbedtls_mpi_sub_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB35_2
LBB35_2:                                ## %do.cond
	jmp	LBB35_3
LBB35_3:                                ## %do.end
	jmp	LBB35_4
LBB35_4:                                ## %do.body1
	jmp	LBB35_5
LBB35_5:                                ## %do.cond2
	jmp	LBB35_6
LBB35_6:                                ## %do.end3
	jmp	LBB35_7
LBB35_7:                                ## %do.body4
	jmp	LBB35_8
LBB35_8:                                ## %do.cond5
	jmp	LBB35_9
LBB35_9:                                ## %do.end6
	movq	24(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 8(%rsp)
	movq	24(%rsp), %rax
	movl	(%rax), %eax
	movq	16(%rsp), %rcx
	imull	(%rcx), %eax
	cmpl	$0, %eax
	jle	LBB35_24
## %bb.10:                              ## %if.then
	movq	24(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_abs
	cmpl	$0, %eax
	jl	LBB35_17
## %bb.11:                              ## %if.then11
	jmp	LBB35_12
LBB35_12:                               ## %do.body12
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB35_14
## %bb.13:                              ## %if.then15
	jmp	LBB35_31
LBB35_14:                               ## %if.end
	jmp	LBB35_15
LBB35_15:                               ## %do.cond16
	jmp	LBB35_16
LBB35_16:                               ## %do.end17
	movl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
	jmp	LBB35_23
LBB35_17:                               ## %if.else
	jmp	LBB35_18
LBB35_18:                               ## %do.body19
	movq	32(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB35_20
## %bb.19:                              ## %if.then22
	jmp	LBB35_31
LBB35_20:                               ## %if.end23
	jmp	LBB35_21
LBB35_21:                               ## %do.cond24
	jmp	LBB35_22
LBB35_22:                               ## %do.end25
	xorl	%ecx, %ecx
	subl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
LBB35_23:                               ## %if.end27
	jmp	LBB35_30
LBB35_24:                               ## %if.else28
	jmp	LBB35_25
LBB35_25:                               ## %do.body29
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	callq	_mbedtls_mpi_add_abs
	movl	%eax, 12(%rsp)
	cmpl	$0, %eax
	je	LBB35_27
## %bb.26:                              ## %if.then32
	jmp	LBB35_31
LBB35_27:                               ## %if.end33
	jmp	LBB35_28
LBB35_28:                               ## %do.cond34
	jmp	LBB35_29
LBB35_29:                               ## %do.end35
	movl	8(%rsp), %ecx
	movq	32(%rsp), %rax
	movl	%ecx, (%rax)
LBB35_30:                               ## %if.end37
	jmp	LBB35_31
LBB35_31:                               ## %cleanup
	movl	12(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_sub_int    ## -- Begin function mbedtls_mpi_sub_int
	.globl	_mbedtls_mpi_sub_int
	.p2align	4
_mbedtls_mpi_sub_int:                   ## @mbedtls_mpi_sub_int
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB36_2
LBB36_2:                                ## %do.cond
	jmp	LBB36_3
LBB36_3:                                ## %do.end
	jmp	LBB36_4
LBB36_4:                                ## %do.body1
	jmp	LBB36_5
LBB36_5:                                ## %do.cond2
	jmp	LBB36_6
LBB36_6:                                ## %do.end3
	cmpq	$0, 48(%rsp)
	jge	LBB36_8
## %bb.7:                               ## %cond.true
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	48(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB36_9
LBB36_8:                                ## %cond.false
	movq	48(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB36_9:                                ## %cond.end
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movq	%rax, 16(%rsp)
	movq	48(%rsp), %rdx
	movl	$1, %eax
	movl	$4294967295, %ecx               ## imm = 0xFFFFFFFF
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movl	%eax, 24(%rsp)
	movq	$1, 32(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	64(%rsp), %rdi
	movq	56(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	_mbedtls_mpi_sub_mpi
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_mul_mpi    ## -- Begin function mbedtls_mpi_mul_mpi
	.globl	_mbedtls_mpi_mul_mpi
	.p2align	4
_mbedtls_mpi_mul_mpi:                   ## @mbedtls_mpi_mul_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movl	$-110, 76(%rsp)
	movl	$0, 4(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB37_2
LBB37_2:                                ## %do.cond
	jmp	LBB37_3
LBB37_3:                                ## %do.end
	jmp	LBB37_4
LBB37_4:                                ## %do.body1
	jmp	LBB37_5
LBB37_5:                                ## %do.cond2
	jmp	LBB37_6
LBB37_6:                                ## %do.end3
	jmp	LBB37_7
LBB37_7:                                ## %do.body4
	jmp	LBB37_8
LBB37_8:                                ## %do.cond5
	jmp	LBB37_9
LBB37_9:                                ## %do.end6
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_init
	movq	96(%rsp), %rax
	cmpq	88(%rsp), %rax
	jne	LBB37_16
## %bb.10:                              ## %if.then
	jmp	LBB37_11
LBB37_11:                               ## %do.body7
	movq	88(%rsp), %rsi
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB37_13
## %bb.12:                              ## %if.then9
	jmp	LBB37_57
LBB37_13:                               ## %if.end
	jmp	LBB37_14
LBB37_14:                               ## %do.cond10
	jmp	LBB37_15
LBB37_15:                               ## %do.end11
	leaq	32(%rsp), %rax
	movq	%rax, 88(%rsp)
LBB37_16:                               ## %if.end12
	movq	96(%rsp), %rax
	cmpq	80(%rsp), %rax
	jne	LBB37_23
## %bb.17:                              ## %if.then14
	jmp	LBB37_18
LBB37_18:                               ## %do.body15
	movq	80(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB37_20
## %bb.19:                              ## %if.then18
	jmp	LBB37_57
LBB37_20:                               ## %if.end19
	jmp	LBB37_21
LBB37_21:                               ## %do.cond20
	jmp	LBB37_22
LBB37_22:                               ## %do.end21
	leaq	8(%rsp), %rax
	movq	%rax, 80(%rsp)
LBB37_23:                               ## %if.end22
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 64(%rsp)
LBB37_24:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 64(%rsp)
	jbe	LBB37_29
## %bb.25:                              ## %for.body
                                        ##   in Loop: Header=BB37_24 Depth=1
	movq	88(%rsp), %rax
	movq	16(%rax), %rax
	movq	64(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB37_27
## %bb.26:                              ## %if.then25
	jmp	LBB37_29
LBB37_27:                               ## %if.end26
                                        ##   in Loop: Header=BB37_24 Depth=1
	jmp	LBB37_28
LBB37_28:                               ## %for.inc
                                        ##   in Loop: Header=BB37_24 Depth=1
	movq	64(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 64(%rsp)
	jmp	LBB37_24
LBB37_29:                               ## %for.end
	cmpq	$0, 64(%rsp)
	jne	LBB37_31
## %bb.30:                              ## %if.then28
	movl	$1, 4(%rsp)
LBB37_31:                               ## %if.end29
	movq	80(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 56(%rsp)
LBB37_32:                               ## %for.cond31
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	jbe	LBB37_37
## %bb.33:                              ## %for.body33
                                        ##   in Loop: Header=BB37_32 Depth=1
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	subq	$1, %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	LBB37_35
## %bb.34:                              ## %if.then38
	jmp	LBB37_37
LBB37_35:                               ## %if.end39
                                        ##   in Loop: Header=BB37_32 Depth=1
	jmp	LBB37_36
LBB37_36:                               ## %for.inc40
                                        ##   in Loop: Header=BB37_32 Depth=1
	movq	56(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB37_32
LBB37_37:                               ## %for.end42
	cmpq	$0, 56(%rsp)
	jne	LBB37_39
## %bb.38:                              ## %if.then44
	movl	$1, 4(%rsp)
LBB37_39:                               ## %if.end45
	jmp	LBB37_40
LBB37_40:                               ## %do.body46
	movq	96(%rsp), %rdi
	movq	64(%rsp), %rsi
	addq	56(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB37_42
## %bb.41:                              ## %if.then49
	jmp	LBB37_57
LBB37_42:                               ## %if.end50
	jmp	LBB37_43
LBB37_43:                               ## %do.cond51
	jmp	LBB37_44
LBB37_44:                               ## %do.end52
	jmp	LBB37_45
LBB37_45:                               ## %do.body53
	movq	96(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB37_47
## %bb.46:                              ## %if.then56
	jmp	LBB37_57
LBB37_47:                               ## %if.end57
	jmp	LBB37_48
LBB37_48:                               ## %do.cond58
	jmp	LBB37_49
LBB37_49:                               ## %do.end59
	jmp	LBB37_50
LBB37_50:                               ## %for.cond60
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, 56(%rsp)
	jbe	LBB37_53
## %bb.51:                              ## %for.body62
                                        ##   in Loop: Header=BB37_50 Depth=1
	movq	64(%rsp), %rdi
	movq	88(%rsp), %rax
	movq	16(%rax), %rsi
	movq	96(%rsp), %rax
	movq	16(%rax), %rdx
	movq	56(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdx
	addq	$-8, %rdx
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rcx
	callq	__ZL11mpi_mul_hlpmPKmPmm
## %bb.52:                              ## %for.inc69
                                        ##   in Loop: Header=BB37_50 Depth=1
	movq	56(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB37_50
LBB37_53:                               ## %for.end71
	cmpl	$0, 4(%rsp)
	je	LBB37_55
## %bb.54:                              ## %if.then72
	movq	96(%rsp), %rax
	movl	$1, (%rax)
	jmp	LBB37_56
LBB37_55:                               ## %if.else
	movq	88(%rsp), %rax
	movl	(%rax), %ecx
	movq	80(%rsp), %rax
	imull	(%rax), %ecx
	movq	96(%rsp), %rax
	movl	%ecx, (%rax)
LBB37_56:                               ## %if.end76
	jmp	LBB37_57
LBB37_57:                               ## %cleanup
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	76(%rsp), %eax
	addq	$104, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL11mpi_mul_hlpmPKmPmm
__ZL11mpi_mul_hlpmPKmPmm:               ## @_ZL11mpi_mul_hlpmPKmPmm
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movq	%rcx, -24(%rsp)
	movq	$0, -32(%rsp)
LBB38_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$16, (%rsp)
	jb	LBB38_4
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB38_1 Depth=1
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-56(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -40(%rsp)
	movq	%rax, -48(%rsp)
	movq	-48(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-40(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-32(%rsp), %rax
	addq	-56(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	cmpq	-32(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-64(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	addq	-56(%rsp), %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	movq	-16(%rsp), %rcx
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-64(%rsp), %rax
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
## %bb.3:                               ## %for.inc
                                        ##   in Loop: Header=BB38_1 Depth=1
	movq	(%rsp), %rax
	subq	$16, %rax
	movq	%rax, (%rsp)
	jmp	LBB38_1
LBB38_4:                                ## %for.end
	jmp	LBB38_5
LBB38_5:                                ## %for.cond252
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$8, (%rsp)
	jb	LBB38_8
## %bb.6:                               ## %for.body254
                                        ##   in Loop: Header=BB38_5 Depth=1
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-32(%rsp), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rcx
	movq	-88(%rsp), %rax
	addq	%rcx, %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	movq	(%rcx), %rcx
	subq	%rcx, %rax
	adcq	$0, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -72(%rsp)
	movq	%rax, -80(%rsp)
	movq	-80(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-72(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-32(%rsp), %rax
	addq	-88(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	cmpq	-32(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-96(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	addq	-88(%rsp), %rax
	movq	%rax, -88(%rsp)
	movq	-88(%rsp), %rax
	movq	-16(%rsp), %rcx
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-96(%rsp), %rax
	movq	%rax, -96(%rsp)
	movq	-96(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-88(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
## %bb.7:                               ## %for.inc386
                                        ##   in Loop: Header=BB38_5 Depth=1
	movq	(%rsp), %rax
	subq	$8, %rax
	movq	%rax, (%rsp)
	jmp	LBB38_5
LBB38_8:                                ## %for.end388
	jmp	LBB38_9
LBB38_9:                                ## %for.cond389
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, (%rsp)
	jbe	LBB38_12
## %bb.10:                              ## %for.body391
                                        ##   in Loop: Header=BB38_9 Depth=1
	movq	-8(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -8(%rsp)
	movq	(%rax), %rax
	movq	-24(%rsp), %rcx
	mulq	%rcx
	movq	%rdx, -104(%rsp)
	movq	%rax, -112(%rsp)
	movq	-112(%rsp), %rax
	movq	%rax, -120(%rsp)
	movq	-104(%rsp), %rax
	movq	%rax, -128(%rsp)
	movq	-32(%rsp), %rax
	addq	-120(%rsp), %rax
	movq	%rax, -120(%rsp)
	movq	-120(%rsp), %rax
	cmpq	-32(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-128(%rsp), %rax
	movq	%rax, -128(%rsp)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	addq	-120(%rsp), %rax
	movq	%rax, -120(%rsp)
	movq	-120(%rsp), %rax
	movq	-16(%rsp), %rcx
	cmpq	(%rcx), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	addq	-128(%rsp), %rax
	movq	%rax, -128(%rsp)
	movq	-128(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	-120(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, -16(%rsp)
	movq	%rcx, (%rax)
## %bb.11:                              ## %for.inc411
                                        ##   in Loop: Header=BB38_9 Depth=1
	movq	(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, (%rsp)
	jmp	LBB38_9
LBB38_12:                               ## %for.end412
	jmp	LBB38_13
LBB38_13:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rsp)
	je	LBB38_15
## %bb.14:                              ## %while.body
                                        ##   in Loop: Header=BB38_13 Depth=1
	movq	-32(%rsp), %rcx
	movq	-16(%rsp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rsp), %rax
	movq	(%rax), %rax
	cmpq	-32(%rsp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, -32(%rsp)
	movq	-16(%rsp), %rax
	addq	$8, %rax
	movq	%rax, -16(%rsp)
	jmp	LBB38_13
LBB38_15:                               ## %while.end
	popq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_div_mpi    ## -- Begin function mbedtls_mpi_div_mpi
	.globl	_mbedtls_mpi_div_mpi
	.p2align	4
_mbedtls_mpi_div_mpi:                   ## @mbedtls_mpi_div_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$264, %rsp                      ## imm = 0x108
	.cfi_def_cfa_offset 272
	movq	%rdi, 248(%rsp)
	movq	%rsi, 240(%rsp)
	movq	%rdx, 232(%rsp)
	movq	%rcx, 224(%rsp)
	movl	$-110, 220(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB39_2
LBB39_2:                                ## %do.cond
	jmp	LBB39_3
LBB39_3:                                ## %do.end
	jmp	LBB39_4
LBB39_4:                                ## %do.body1
	jmp	LBB39_5
LBB39_5:                                ## %do.cond2
	jmp	LBB39_6
LBB39_6:                                ## %do.end3
	movq	224(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jne	LBB39_8
## %bb.7:                               ## %if.then
	movl	$-12, 260(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB39_164
LBB39_8:                                ## %if.end
	leaq	160(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	112(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	88(%rsp), %rdi
	callq	_mbedtls_mpi_init
	movl	$1, 64(%rsp)
	movq	$3, 72(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	232(%rsp), %rdi
	movq	224(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_abs
	cmpl	$0, %eax
	jge	LBB39_24
## %bb.9:                               ## %if.then7
	cmpq	$0, 248(%rsp)
	je	LBB39_16
## %bb.10:                              ## %if.then9
	jmp	LBB39_11
LBB39_11:                               ## %do.body10
	movq	248(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_13
## %bb.12:                              ## %if.then13
	jmp	LBB39_163
LBB39_13:                               ## %if.end14
	jmp	LBB39_14
LBB39_14:                               ## %do.cond15
	jmp	LBB39_15
LBB39_15:                               ## %do.end16
	jmp	LBB39_16
LBB39_16:                               ## %if.end17
	cmpq	$0, 240(%rsp)
	je	LBB39_23
## %bb.17:                              ## %if.then19
	jmp	LBB39_18
LBB39_18:                               ## %do.body20
	movq	240(%rsp), %rdi
	movq	232(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_20
## %bb.19:                              ## %if.then23
	jmp	LBB39_163
LBB39_20:                               ## %if.end24
	jmp	LBB39_21
LBB39_21:                               ## %do.cond25
	jmp	LBB39_22
LBB39_22:                               ## %do.end26
	jmp	LBB39_23
LBB39_23:                               ## %if.end27
	movl	$0, 260(%rsp)
	movl	$1, 28(%rsp)
	jmp	LBB39_164
LBB39_24:                               ## %if.end28
	jmp	LBB39_25
LBB39_25:                               ## %do.body29
	movq	232(%rsp), %rsi
	leaq	160(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_27
## %bb.26:                              ## %if.then32
	jmp	LBB39_163
LBB39_27:                               ## %if.end33
	jmp	LBB39_28
LBB39_28:                               ## %do.cond34
	jmp	LBB39_29
LBB39_29:                               ## %do.end35
	jmp	LBB39_30
LBB39_30:                               ## %do.body36
	movq	224(%rsp), %rsi
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_32
## %bb.31:                              ## %if.then39
	jmp	LBB39_163
LBB39_32:                               ## %if.end40
	jmp	LBB39_33
LBB39_33:                               ## %do.cond41
	jmp	LBB39_34
LBB39_34:                               ## %do.end42
	movl	$1, 136(%rsp)
	movl	$1, 160(%rsp)
## %bb.35:                              ## %do.body45
	movq	232(%rsp), %rax
	movq	8(%rax), %rsi
	addq	$2, %rsi
	leaq	112(%rsp), %rdi
	callq	_mbedtls_mpi_grow
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_37
## %bb.36:                              ## %if.then49
	jmp	LBB39_163
LBB39_37:                               ## %if.end50
	jmp	LBB39_38
LBB39_38:                               ## %do.cond51
	jmp	LBB39_39
LBB39_39:                               ## %do.end52
	jmp	LBB39_40
LBB39_40:                               ## %do.body53
	leaq	112(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_42
## %bb.41:                              ## %if.then56
	jmp	LBB39_163
LBB39_42:                               ## %if.end57
	jmp	LBB39_43
LBB39_43:                               ## %do.cond58
	jmp	LBB39_44
LBB39_44:                               ## %do.end59
	jmp	LBB39_45
LBB39_45:                               ## %do.body60
	movq	232(%rsp), %rax
	movq	8(%rax), %rsi
	addq	$2, %rsi
	leaq	88(%rsp), %rdi
	callq	_mbedtls_mpi_grow
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_47
## %bb.46:                              ## %if.then65
	jmp	LBB39_163
LBB39_47:                               ## %if.end66
	jmp	LBB39_48
LBB39_48:                               ## %do.cond67
	jmp	LBB39_49
LBB39_49:                               ## %do.end68
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	andq	$63, %rax
	movq	%rax, 184(%rsp)
	cmpq	$63, 184(%rsp)
	jae	LBB39_61
## %bb.50:                              ## %if.then71
	movl	$63, %eax
	subq	184(%rsp), %rax
	movq	%rax, 184(%rsp)
## %bb.51:                              ## %do.body72
	movq	184(%rsp), %rsi
	leaq	160(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_53
## %bb.52:                              ## %if.then75
	jmp	LBB39_163
LBB39_53:                               ## %if.end76
	jmp	LBB39_54
LBB39_54:                               ## %do.cond77
	jmp	LBB39_55
LBB39_55:                               ## %do.end78
	jmp	LBB39_56
LBB39_56:                               ## %do.body79
	movq	184(%rsp), %rsi
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_58
## %bb.57:                              ## %if.then82
	jmp	LBB39_163
LBB39_58:                               ## %if.end83
	jmp	LBB39_59
LBB39_59:                               ## %do.cond84
	jmp	LBB39_60
LBB39_60:                               ## %do.end85
	jmp	LBB39_62
LBB39_61:                               ## %if.else
	movq	$0, 184(%rsp)
LBB39_62:                               ## %if.end86
	movq	168(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 200(%rsp)
	movq	144(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 192(%rsp)
## %bb.63:                              ## %do.body91
	movq	200(%rsp), %rsi
	subq	192(%rsp), %rsi
	shlq	$6, %rsi
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_65
## %bb.64:                              ## %if.then95
	jmp	LBB39_163
LBB39_65:                               ## %if.end96
	jmp	LBB39_66
LBB39_66:                               ## %do.cond97
	jmp	LBB39_67
LBB39_67:                               ## %do.end98
	jmp	LBB39_68
LBB39_68:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	leaq	160(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB39_75
## %bb.69:                              ## %while.body
                                        ##   in Loop: Header=BB39_68 Depth=1
	movq	128(%rsp), %rax
	movq	200(%rsp), %rcx
	subq	192(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax,%rcx,8)
## %bb.70:                              ## %do.body103
                                        ##   in Loop: Header=BB39_68 Depth=1
	leaq	160(%rsp), %rsi
	leaq	136(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_72
## %bb.71:                              ## %if.then106
	jmp	LBB39_163
LBB39_72:                               ## %if.end107
                                        ##   in Loop: Header=BB39_68 Depth=1
	jmp	LBB39_73
LBB39_73:                               ## %do.cond108
                                        ##   in Loop: Header=BB39_68 Depth=1
	jmp	LBB39_74
LBB39_74:                               ## %do.end109
                                        ##   in Loop: Header=BB39_68 Depth=1
	jmp	LBB39_68
LBB39_75:                               ## %while.end
	jmp	LBB39_76
LBB39_76:                               ## %do.body110
	movq	200(%rsp), %rsi
	subq	192(%rsp), %rsi
	shlq	$6, %rsi
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_78
## %bb.77:                              ## %if.then115
	jmp	LBB39_163
LBB39_78:                               ## %if.end116
	jmp	LBB39_79
LBB39_79:                               ## %do.cond117
	jmp	LBB39_80
LBB39_80:                               ## %do.end118
	movq	200(%rsp), %rax
	movq	%rax, 208(%rsp)
LBB39_81:                               ## %for.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB39_92 Depth 2
	movq	208(%rsp), %rax
	cmpq	192(%rsp), %rax
	jbe	LBB39_141
## %bb.82:                              ## %for.body
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	152(%rsp), %rcx
	movq	192(%rsp), %rdx
	cmpq	(%rcx,%rdx,8), %rax
	jb	LBB39_84
## %bb.83:                              ## %if.then125
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	$-1, (%rax,%rcx,8)
	jmp	LBB39_85
LBB39_84:                               ## %if.else130
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rsi
	movq	152(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	__ZL19mbedtls_int_div_intmmmPm
	movq	%rax, %rdx
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	%rdx, (%rax,%rcx,8)
LBB39_85:                               ## %if.end143
                                        ##   in Loop: Header=BB39_81 Depth=1
	cmpq	$2, 208(%rsp)
	jae	LBB39_87
## %bb.86:                              ## %cond.true
                                        ##   in Loop: Header=BB39_81 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
	jmp	LBB39_88
LBB39_87:                               ## %cond.false
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	$2, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
LBB39_88:                               ## %cond.end
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	16(%rsp), %rcx                  ## 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rcx, (%rax)
	cmpq	$1, 208(%rsp)
	jae	LBB39_90
## %bb.89:                              ## %cond.true151
                                        ##   in Loop: Header=BB39_81 Depth=1
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB39_91
LBB39_90:                               ## %cond.false152
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB39_91:                               ## %cond.end156
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	8(%rsp), %rcx                   ## 8-byte Reload
	movq	80(%rsp), %rax
	movq	%rcx, 8(%rax)
	movq	176(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, 16(%rax)
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax,%rcx,8)
LBB39_92:                               ## %do.body169
                                        ##   Parent Loop BB39_81 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$-1, %rdx
	movq	%rdx, (%rax,%rcx,8)
## %bb.93:                              ## %do.body174
                                        ##   in Loop: Header=BB39_92 Depth=2
	leaq	88(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_95
## %bb.94:                              ## %if.then177
	jmp	LBB39_163
LBB39_95:                               ## %if.end178
                                        ##   in Loop: Header=BB39_92 Depth=2
	jmp	LBB39_96
LBB39_96:                               ## %do.cond179
                                        ##   in Loop: Header=BB39_92 Depth=2
	jmp	LBB39_97
LBB39_97:                               ## %do.end180
                                        ##   in Loop: Header=BB39_92 Depth=2
	cmpq	$1, 192(%rsp)
	jae	LBB39_99
## %bb.98:                              ## %cond.true182
                                        ##   in Loop: Header=BB39_92 Depth=2
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB39_100
LBB39_99:                               ## %cond.false183
                                        ##   in Loop: Header=BB39_92 Depth=2
	movq	152(%rsp), %rax
	movq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB39_100:                              ## %cond.end187
                                        ##   in Loop: Header=BB39_92 Depth=2
	movq	(%rsp), %rcx                    ## 8-byte Reload
	movq	104(%rsp), %rax
	movq	%rcx, (%rax)
	movq	152(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	(%rax,%rcx,8), %rcx
	movq	104(%rsp), %rax
	movq	%rcx, 8(%rax)
## %bb.101:                             ## %do.body195
                                        ##   in Loop: Header=BB39_92 Depth=2
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	leaq	88(%rsp), %rsi
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_mul_int
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_103
## %bb.102:                             ## %if.then202
	jmp	LBB39_163
LBB39_103:                              ## %if.end203
                                        ##   in Loop: Header=BB39_92 Depth=2
	jmp	LBB39_104
LBB39_104:                              ## %do.cond204
                                        ##   in Loop: Header=BB39_92 Depth=2
	jmp	LBB39_105
LBB39_105:                              ## %do.end205
                                        ##   in Loop: Header=BB39_92 Depth=2
	jmp	LBB39_106
LBB39_106:                              ## %do.cond206
                                        ##   in Loop: Header=BB39_92 Depth=2
	leaq	88(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jg	LBB39_92
## %bb.107:                             ## %do.end209
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_108
LBB39_108:                              ## %do.body210
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	leaq	88(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	_mbedtls_mpi_mul_int
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_110
## %bb.109:                             ## %if.then217
	jmp	LBB39_163
LBB39_110:                              ## %if.end218
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_111
LBB39_111:                              ## %do.cond219
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_112
LBB39_112:                              ## %do.end220
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_113
LBB39_113:                              ## %do.body221
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	208(%rsp), %rsi
	subq	192(%rsp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	leaq	88(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_115
## %bb.114:                             ## %if.then227
	jmp	LBB39_163
LBB39_115:                              ## %if.end228
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_116
LBB39_116:                              ## %do.cond229
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_117
LBB39_117:                              ## %do.end230
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_118
LBB39_118:                              ## %do.body231
                                        ##   in Loop: Header=BB39_81 Depth=1
	leaq	160(%rsp), %rsi
	leaq	88(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_120
## %bb.119:                             ## %if.then234
	jmp	LBB39_163
LBB39_120:                              ## %if.end235
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_121
LBB39_121:                              ## %do.cond236
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_122
LBB39_122:                              ## %do.end237
                                        ##   in Loop: Header=BB39_81 Depth=1
	leaq	160(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jge	LBB39_139
## %bb.123:                             ## %if.then240
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_124
LBB39_124:                              ## %do.body241
                                        ##   in Loop: Header=BB39_81 Depth=1
	leaq	88(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_126
## %bb.125:                             ## %if.then244
	jmp	LBB39_163
LBB39_126:                              ## %if.end245
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_127
LBB39_127:                              ## %do.cond246
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_128
LBB39_128:                              ## %do.end247
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_129
LBB39_129:                              ## %do.body248
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	208(%rsp), %rsi
	subq	192(%rsp), %rsi
	subq	$1, %rsi
	shlq	$6, %rsi
	leaq	88(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_131
## %bb.130:                             ## %if.then254
	jmp	LBB39_163
LBB39_131:                              ## %if.end255
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_132
LBB39_132:                              ## %do.cond256
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_133
LBB39_133:                              ## %do.end257
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_134
LBB39_134:                              ## %do.body258
                                        ##   in Loop: Header=BB39_81 Depth=1
	leaq	160(%rsp), %rsi
	leaq	88(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_136
## %bb.135:                             ## %if.then261
	jmp	LBB39_163
LBB39_136:                              ## %if.end262
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_137
LBB39_137:                              ## %do.cond263
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_138
LBB39_138:                              ## %do.end264
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	128(%rsp), %rax
	movq	208(%rsp), %rcx
	subq	192(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$-1, %rdx
	movq	%rdx, (%rax,%rcx,8)
LBB39_139:                              ## %if.end270
                                        ##   in Loop: Header=BB39_81 Depth=1
	jmp	LBB39_140
LBB39_140:                              ## %for.inc
                                        ##   in Loop: Header=BB39_81 Depth=1
	movq	208(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 208(%rsp)
	jmp	LBB39_81
LBB39_141:                              ## %for.end
	cmpq	$0, 248(%rsp)
	je	LBB39_148
## %bb.142:                             ## %if.then273
	jmp	LBB39_143
LBB39_143:                              ## %do.body274
	movq	248(%rsp), %rdi
	leaq	112(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_145
## %bb.144:                             ## %if.then277
	jmp	LBB39_163
LBB39_145:                              ## %if.end278
	jmp	LBB39_146
LBB39_146:                              ## %do.cond279
	jmp	LBB39_147
LBB39_147:                              ## %do.end280
	movq	232(%rsp), %rax
	movl	(%rax), %ecx
	movq	224(%rsp), %rax
	imull	(%rax), %ecx
	movq	248(%rsp), %rax
	movl	%ecx, (%rax)
LBB39_148:                              ## %if.end285
	cmpq	$0, 240(%rsp)
	je	LBB39_162
## %bb.149:                             ## %if.then287
	jmp	LBB39_150
LBB39_150:                              ## %do.body288
	movq	184(%rsp), %rsi
	leaq	160(%rsp), %rdi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_152
## %bb.151:                             ## %if.then291
	jmp	LBB39_163
LBB39_152:                              ## %if.end292
	jmp	LBB39_153
LBB39_153:                              ## %do.cond293
	jmp	LBB39_154
LBB39_154:                              ## %do.end294
	movq	232(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, 160(%rsp)
## %bb.155:                             ## %do.body297
	movq	240(%rsp), %rdi
	leaq	160(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 220(%rsp)
	cmpl	$0, %eax
	je	LBB39_157
## %bb.156:                             ## %if.then300
	jmp	LBB39_163
LBB39_157:                              ## %if.end301
	jmp	LBB39_158
LBB39_158:                              ## %do.cond302
	jmp	LBB39_159
LBB39_159:                              ## %do.end303
	movq	240(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jne	LBB39_161
## %bb.160:                             ## %if.then306
	movq	240(%rsp), %rax
	movl	$1, (%rax)
LBB39_161:                              ## %if.end308
	jmp	LBB39_162
LBB39_162:                              ## %if.end309
	jmp	LBB39_163
LBB39_163:                              ## %cleanup
	leaq	160(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	136(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	112(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	88(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	32(%rsp), %rdi
	movl	$24, %esi
	callq	_mbedtls_platform_zeroize
	movl	220(%rsp), %eax
	movl	%eax, 260(%rsp)
	movl	$1, 28(%rsp)
LBB39_164:                              ## %cleanup311
	movl	260(%rsp), %eax
	addq	$264, %rsp                      ## imm = 0x108
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL19mbedtls_int_div_intmmmPm
__ZL19mbedtls_int_div_intmmmPm:         ## @_ZL19mbedtls_int_div_intmmmPm
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	cmpq	56(%rsp), %rax
	je	LBB40_2
## %bb.1:                               ## %lor.lhs.false
	movq	72(%rsp), %rax
	cmpq	56(%rsp), %rax
	jb	LBB40_5
LBB40_2:                                ## %if.then
	cmpq	$0, 48(%rsp)
	je	LBB40_4
## %bb.3:                               ## %if.then3
	movq	48(%rsp), %rax
	movq	$-1, (%rax)
LBB40_4:                                ## %if.end
	movq	$-1, 80(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB40_10
LBB40_5:                                ## %if.end4
	movq	72(%rsp), %rax
	movq	%rax, 40(%rsp)
	movq	$0, 32(%rsp)
	movq	64(%rsp), %rdx
	movq	32(%rsp), %rax
	movq	40(%rsp), %rcx
	orq	%rdx, %rax
	movq	%rcx, 40(%rsp)
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	56(%rsp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	callq	___udivti3
	movq	%rdx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	testq	%rax, %rax
	je	LBB40_7
	jmp	LBB40_6
LBB40_6:                                ## %if.then8
	movq	$0, 24(%rsp)
	movq	$-1, 16(%rsp)
LBB40_7:                                ## %if.end9
	cmpq	$0, 48(%rsp)
	je	LBB40_9
## %bb.8:                               ## %if.then11
	movq	32(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	56(%rsp), %rdx
	imulq	%rdx, %rax
	subq	%rax, %rcx
	movq	48(%rsp), %rax
	movq	%rcx, (%rax)
LBB40_9:                                ## %if.end14
	movq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	movl	$1, 12(%rsp)
LBB40_10:                               ## %cleanup
	movq	80(%rsp), %rax
	addq	$88, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_div_int    ## -- Begin function mbedtls_mpi_div_int
	.globl	_mbedtls_mpi_div_int
	.p2align	4
_mbedtls_mpi_div_int:                   ## @mbedtls_mpi_div_int
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB41_2
LBB41_2:                                ## %do.cond
	jmp	LBB41_3
LBB41_3:                                ## %do.end
	cmpq	$0, 40(%rsp)
	jge	LBB41_5
## %bb.4:                               ## %cond.true
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	40(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
	jmp	LBB41_6
LBB41_5:                                ## %cond.false
	movq	40(%rsp), %rax
	movq	%rax, (%rsp)                    ## 8-byte Spill
LBB41_6:                                ## %cond.end
	movq	(%rsp), %rax                    ## 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	40(%rsp), %rdx
	movl	$1, %eax
	movl	$4294967295, %ecx               ## imm = 0xFFFFFFFF
	cmpq	$0, %rdx
	cmovll	%ecx, %eax
	movl	%eax, 16(%rsp)
	movq	$1, 24(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	movq	64(%rsp), %rdi
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rdx
	leaq	16(%rsp), %rcx
	callq	_mbedtls_mpi_div_mpi
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_mod_mpi    ## -- Begin function mbedtls_mpi_mod_mpi
	.globl	_mbedtls_mpi_mod_mpi
	.p2align	4
_mbedtls_mpi_mod_mpi:                   ## @mbedtls_mpi_mod_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movl	$-110, 4(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB42_2
LBB42_2:                                ## %do.cond
	jmp	LBB42_3
LBB42_3:                                ## %do.end
	jmp	LBB42_4
LBB42_4:                                ## %do.body1
	jmp	LBB42_5
LBB42_5:                                ## %do.cond2
	jmp	LBB42_6
LBB42_6:                                ## %do.end3
	jmp	LBB42_7
LBB42_7:                                ## %do.body4
	jmp	LBB42_8
LBB42_8:                                ## %do.cond5
	jmp	LBB42_9
LBB42_9:                                ## %do.end6
	movq	8(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jge	LBB42_11
## %bb.10:                              ## %if.then
	movl	$-10, 36(%rsp)
	movl	$1, (%rsp)
	jmp	LBB42_34
LBB42_11:                               ## %if.end
	jmp	LBB42_12
LBB42_12:                               ## %do.body7
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_mbedtls_mpi_div_mpi
	movl	%eax, 4(%rsp)
	cmpl	$0, %eax
	je	LBB42_14
## %bb.13:                              ## %if.then10
	jmp	LBB42_33
LBB42_14:                               ## %if.end11
	jmp	LBB42_15
LBB42_15:                               ## %do.cond12
	jmp	LBB42_16
LBB42_16:                               ## %do.end13
	jmp	LBB42_17
LBB42_17:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jge	LBB42_24
## %bb.18:                              ## %while.body
                                        ##   in Loop: Header=BB42_17 Depth=1
	jmp	LBB42_19
LBB42_19:                               ## %do.body16
                                        ##   in Loop: Header=BB42_17 Depth=1
	movq	24(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 4(%rsp)
	cmpl	$0, %eax
	je	LBB42_21
## %bb.20:                              ## %if.then19
	jmp	LBB42_33
LBB42_21:                               ## %if.end20
                                        ##   in Loop: Header=BB42_17 Depth=1
	jmp	LBB42_22
LBB42_22:                               ## %do.cond21
                                        ##   in Loop: Header=BB42_17 Depth=1
	jmp	LBB42_23
LBB42_23:                               ## %do.end22
                                        ##   in Loop: Header=BB42_17 Depth=1
	jmp	LBB42_17
LBB42_24:                               ## %while.end
	jmp	LBB42_25
LBB42_25:                               ## %while.cond23
                                        ## =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB42_32
## %bb.26:                              ## %while.body26
                                        ##   in Loop: Header=BB42_25 Depth=1
	jmp	LBB42_27
LBB42_27:                               ## %do.body27
                                        ##   in Loop: Header=BB42_25 Depth=1
	movq	24(%rsp), %rdi
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdx
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 4(%rsp)
	cmpl	$0, %eax
	je	LBB42_29
## %bb.28:                              ## %if.then30
	jmp	LBB42_33
LBB42_29:                               ## %if.end31
                                        ##   in Loop: Header=BB42_25 Depth=1
	jmp	LBB42_30
LBB42_30:                               ## %do.cond32
                                        ##   in Loop: Header=BB42_25 Depth=1
	jmp	LBB42_31
LBB42_31:                               ## %do.end33
                                        ##   in Loop: Header=BB42_25 Depth=1
	jmp	LBB42_25
LBB42_32:                               ## %while.end34
	jmp	LBB42_33
LBB42_33:                               ## %cleanup
	movl	4(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	$1, (%rsp)
LBB42_34:                               ## %cleanup35
	movl	36(%rsp), %eax
	addq	$40, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_mod_int    ## -- Begin function mbedtls_mpi_mod_int
	.globl	_mbedtls_mpi_mod_int
	.p2align	4
_mbedtls_mpi_mod_int:                   ## @mbedtls_mpi_mod_int
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movq	%rdx, -32(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB43_2
LBB43_2:                                ## %do.cond
	jmp	LBB43_3
LBB43_3:                                ## %do.end
	jmp	LBB43_4
LBB43_4:                                ## %do.body1
	jmp	LBB43_5
LBB43_5:                                ## %do.cond2
	jmp	LBB43_6
LBB43_6:                                ## %do.end3
	cmpq	$0, -32(%rsp)
	jne	LBB43_8
## %bb.7:                               ## %if.then
	movl	$-12, -4(%rsp)
	movl	$1, -68(%rsp)
	jmp	LBB43_22
LBB43_8:                                ## %if.end
	cmpq	$0, -32(%rsp)
	jge	LBB43_10
## %bb.9:                               ## %if.then5
	movl	$-10, -4(%rsp)
	movl	$1, -68(%rsp)
	jmp	LBB43_22
LBB43_10:                               ## %if.end6
	cmpq	$1, -32(%rsp)
	jne	LBB43_12
## %bb.11:                              ## %if.then8
	movq	-16(%rsp), %rax
	movq	$0, (%rax)
	movl	$0, -4(%rsp)
	movl	$1, -68(%rsp)
	jmp	LBB43_22
LBB43_12:                               ## %if.end9
	cmpq	$2, -32(%rsp)
	jne	LBB43_14
## %bb.13:                              ## %if.then11
	movq	-24(%rsp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	andq	$1, %rcx
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
	movl	$0, -4(%rsp)
	movl	$1, -68(%rsp)
	jmp	LBB43_22
LBB43_14:                               ## %if.end12
	movq	-24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rsp)
	movq	$0, -56(%rsp)
LBB43_15:                               ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rsp)
	jbe	LBB43_18
## %bb.16:                              ## %for.body
                                        ##   in Loop: Header=BB43_15 Depth=1
	movq	-24(%rsp), %rax
	movq	16(%rax), %rax
	movq	-40(%rsp), %rcx
	subq	$1, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -48(%rsp)
	movq	-56(%rsp), %rax
	shlq	$32, %rax
	movq	-48(%rsp), %rcx
	shrq	$32, %rcx
	orq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rsp)
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rcx
	imulq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-48(%rsp), %rax
	shlq	$32, %rax
	movq	%rax, -48(%rsp)
	movq	-56(%rsp), %rax
	shlq	$32, %rax
	movq	-48(%rsp), %rcx
	shrq	$32, %rcx
	orq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movq	-56(%rsp), %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	divq	-32(%rsp)
	movq	%rax, -64(%rsp)
	movq	-64(%rsp), %rcx
	imulq	-32(%rsp), %rcx
	movq	-56(%rsp), %rax
	subq	%rcx, %rax
	movq	%rax, -56(%rsp)
## %bb.17:                              ## %for.inc
                                        ##   in Loop: Header=BB43_15 Depth=1
	movq	-40(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rsp)
	jmp	LBB43_15
LBB43_18:                               ## %for.end
	movq	-24(%rsp), %rax
	cmpl	$0, (%rax)
	jge	LBB43_21
## %bb.19:                              ## %land.lhs.true
	cmpq	$0, -56(%rsp)
	je	LBB43_21
## %bb.20:                              ## %if.then26
	movq	-32(%rsp), %rax
	subq	-56(%rsp), %rax
	movq	%rax, -56(%rsp)
LBB43_21:                               ## %if.end28
	movq	-56(%rsp), %rcx
	movq	-16(%rsp), %rax
	movq	%rcx, (%rax)
	movl	$0, -4(%rsp)
	movl	$1, -68(%rsp)
LBB43_22:                               ## %cleanup
	movl	-4(%rsp), %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_exp_mod    ## -- Begin function mbedtls_mpi_exp_mod
	.globl	_mbedtls_mpi_exp_mod
	.p2align	4
_mbedtls_mpi_exp_mod:                   ## @mbedtls_mpi_exp_mod
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$1816, %rsp                     ## imm = 0x718
	.cfi_def_cfa_offset 1824
	movq	%rdi, 1800(%rsp)
	movq	%rsi, 1792(%rsp)
	movq	%rdx, 1784(%rsp)
	movq	%rcx, 1776(%rsp)
	movq	%r8, 1768(%rsp)
	movl	$-110, 1764(%rsp)
	movq	$1, 1736(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB44_2
LBB44_2:                                ## %do.cond
	jmp	LBB44_3
LBB44_3:                                ## %do.end
	jmp	LBB44_4
LBB44_4:                                ## %do.body1
	jmp	LBB44_5
LBB44_5:                                ## %do.cond2
	jmp	LBB44_6
LBB44_6:                                ## %do.end3
	jmp	LBB44_7
LBB44_7:                                ## %do.body4
	jmp	LBB44_8
LBB44_8:                                ## %do.cond5
	jmp	LBB44_9
LBB44_9:                                ## %do.end6
	jmp	LBB44_10
LBB44_10:                               ## %do.body7
	jmp	LBB44_11
LBB44_11:                               ## %do.cond8
	jmp	LBB44_12
LBB44_12:                               ## %do.end9
	movq	1776(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jle	LBB44_14
## %bb.13:                              ## %lor.lhs.false
	movq	1776(%rsp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB44_15
LBB44_14:                               ## %if.then
	movl	$-4, 1812(%rsp)
	movl	$1, 24(%rsp)
	jmp	LBB44_173
LBB44_15:                               ## %if.end
	movq	1784(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jge	LBB44_17
## %bb.16:                              ## %if.then13
	movl	$-4, 1812(%rsp)
	movl	$1, 24(%rsp)
	jmp	LBB44_173
LBB44_17:                               ## %if.end14
	movq	1784(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	cmpq	$8192, %rax                     ## imm = 0x2000
	ja	LBB44_19
## %bb.18:                              ## %lor.lhs.false17
	movq	1776(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	cmpq	$8192, %rax                     ## imm = 0x2000
	jbe	LBB44_20
LBB44_19:                               ## %if.then20
	movl	$-4, 1812(%rsp)
	movl	$1, 24(%rsp)
	jmp	LBB44_173
LBB44_20:                               ## %if.end21
	movq	1776(%rsp), %rsi
	leaq	1680(%rsp), %rdi
	callq	__ZL14mpi_montg_initPmPK11mbedtls_mpi
	leaq	1648(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	1624(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	56(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	movl	$1536, %edx                     ## imm = 0x600
	callq	_memset
	movq	1784(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	movq	%rax, 1728(%rsp)
	cmpq	$671, 1728(%rsp)                ## imm = 0x29F
	jbe	LBB44_22
## %bb.21:                              ## %cond.true
	movl	$6, %eax
	movl	%eax, 20(%rsp)                  ## 4-byte Spill
	jmp	LBB44_29
LBB44_22:                               ## %cond.false
	cmpq	$239, 1728(%rsp)
	jbe	LBB44_24
## %bb.23:                              ## %cond.true25
	movl	$5, %eax
	movl	%eax, 16(%rsp)                  ## 4-byte Spill
	jmp	LBB44_28
LBB44_24:                               ## %cond.false26
	cmpq	$79, 1728(%rsp)
	jbe	LBB44_26
## %bb.25:                              ## %cond.true28
	movl	$4, %eax
	movl	%eax, 12(%rsp)                  ## 4-byte Spill
	jmp	LBB44_27
LBB44_26:                               ## %cond.false29
	movq	1728(%rsp), %rdx
	movl	$1, %eax
	movl	$3, %ecx
	cmpq	$23, %rdx
	cmoval	%ecx, %eax
	movl	%eax, 12(%rsp)                  ## 4-byte Spill
LBB44_27:                               ## %cond.end
	movl	12(%rsp), %eax                  ## 4-byte Reload
	movl	%eax, 16(%rsp)                  ## 4-byte Spill
LBB44_28:                               ## %cond.end32
	movl	16(%rsp), %eax                  ## 4-byte Reload
	movl	%eax, 20(%rsp)                  ## 4-byte Spill
LBB44_29:                               ## %cond.end34
	movl	20(%rsp), %eax                  ## 4-byte Reload
	cltq
	movq	%rax, 1744(%rsp)
	movq	1776(%rsp), %rax
	movq	8(%rax), %rax
	addq	$1, %rax
	movq	%rax, 1720(%rsp)
## %bb.30:                              ## %do.body36
	movq	1800(%rsp), %rdi
	movq	1720(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_32
## %bb.31:                              ## %if.then39
	jmp	LBB44_165
LBB44_32:                               ## %if.end40
	jmp	LBB44_33
LBB44_33:                               ## %do.cond41
	jmp	LBB44_34
LBB44_34:                               ## %do.end42
	jmp	LBB44_35
LBB44_35:                               ## %do.body43
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	movq	1720(%rsp), %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_37
## %bb.36:                              ## %if.then47
	jmp	LBB44_165
LBB44_37:                               ## %if.end48
	jmp	LBB44_38
LBB44_38:                               ## %do.cond49
	jmp	LBB44_39
LBB44_39:                               ## %do.end50
	jmp	LBB44_40
LBB44_40:                               ## %do.body51
	movq	1720(%rsp), %rsi
	shlq	%rsi
	leaq	1624(%rsp), %rdi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_42
## %bb.41:                              ## %if.then54
	jmp	LBB44_165
LBB44_42:                               ## %if.end55
	jmp	LBB44_43
LBB44_43:                               ## %do.cond56
	jmp	LBB44_44
LBB44_44:                               ## %do.end57
	movq	1792(%rsp), %rax
	cmpl	$-1, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, 28(%rsp)
	cmpl	$0, 28(%rsp)
	je	LBB44_51
## %bb.45:                              ## %if.then60
	jmp	LBB44_46
LBB44_46:                               ## %do.body61
	movq	1792(%rsp), %rsi
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_48
## %bb.47:                              ## %if.then64
	jmp	LBB44_165
LBB44_48:                               ## %if.end65
	jmp	LBB44_49
LBB44_49:                               ## %do.cond66
	jmp	LBB44_50
LBB44_50:                               ## %do.end67
	movl	$1, 32(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 1792(%rsp)
LBB44_51:                               ## %if.end69
	cmpq	$0, 1768(%rsp)
	je	LBB44_53
## %bb.52:                              ## %lor.lhs.false71
	movq	1768(%rsp), %rax
	cmpq	$0, 16(%rax)
	jne	LBB44_71
LBB44_53:                               ## %if.then74
	jmp	LBB44_54
LBB44_54:                               ## %do.body75
	leaq	1648(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_56
## %bb.55:                              ## %if.then78
	jmp	LBB44_165
LBB44_56:                               ## %if.end79
	jmp	LBB44_57
LBB44_57:                               ## %do.cond80
	jmp	LBB44_58
LBB44_58:                               ## %do.end81
	jmp	LBB44_59
LBB44_59:                               ## %do.body82
	movq	1776(%rsp), %rax
	movq	8(%rax), %rsi
	shlq	%rsi
	shlq	$6, %rsi
	leaq	1648(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_61
## %bb.60:                              ## %if.then88
	jmp	LBB44_165
LBB44_61:                               ## %if.end89
	jmp	LBB44_62
LBB44_62:                               ## %do.cond90
	jmp	LBB44_63
LBB44_63:                               ## %do.end91
	jmp	LBB44_64
LBB44_64:                               ## %do.body92
	movq	1776(%rsp), %rdx
	leaq	1648(%rsp), %rsi
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_mod_mpi
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_66
## %bb.65:                              ## %if.then95
	jmp	LBB44_165
LBB44_66:                               ## %if.end96
	jmp	LBB44_67
LBB44_67:                               ## %do.cond97
	jmp	LBB44_68
LBB44_68:                               ## %do.end98
	cmpq	$0, 1768(%rsp)
	je	LBB44_70
## %bb.69:                              ## %if.then100
	movq	1768(%rsp), %rax
	movq	1648(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	1656(%rsp), %rcx
	movq	%rcx, 8(%rax)
	movq	1664(%rsp), %rcx
	movq	%rcx, 16(%rax)
LBB44_70:                               ## %if.end101
	jmp	LBB44_72
LBB44_71:                               ## %if.else
	movq	1768(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, 1648(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 1656(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 1664(%rsp)
LBB44_72:                               ## %if.end102
	movq	1792(%rsp), %rdi
	movq	1776(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB44_84
## %bb.73:                              ## %if.then105
	jmp	LBB44_74
LBB44_74:                               ## %do.body106
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	movq	1792(%rsp), %rsi
	movq	1776(%rsp), %rdx
	callq	_mbedtls_mpi_mod_mpi
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_76
## %bb.75:                              ## %if.then110
	jmp	LBB44_165
LBB44_76:                               ## %if.end111
	jmp	LBB44_77
LBB44_77:                               ## %do.cond112
	jmp	LBB44_78
LBB44_78:                               ## %do.end113
	jmp	LBB44_79
LBB44_79:                               ## %do.body114
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	movq	1776(%rsp), %rax
	movq	8(%rax), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_81
## %bb.80:                              ## %if.then120
	jmp	LBB44_165
LBB44_81:                               ## %if.end121
	jmp	LBB44_82
LBB44_82:                               ## %do.cond122
	jmp	LBB44_83
LBB44_83:                               ## %do.end123
	jmp	LBB44_90
LBB44_84:                               ## %if.else124
	jmp	LBB44_85
LBB44_85:                               ## %do.body125
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	movq	1792(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_87
## %bb.86:                              ## %if.then129
	jmp	LBB44_165
LBB44_87:                               ## %if.end130
	jmp	LBB44_88
LBB44_88:                               ## %do.cond131
	jmp	LBB44_89
LBB44_89:                               ## %do.end132
	jmp	LBB44_90
LBB44_90:                               ## %if.end133
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1648(%rsp), %rsi
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
## %bb.91:                              ## %do.body135
	movq	1800(%rsp), %rdi
	leaq	1648(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_93
## %bb.92:                              ## %if.then138
	jmp	LBB44_165
LBB44_93:                               ## %if.end139
	jmp	LBB44_94
LBB44_94:                               ## %do.cond140
	jmp	LBB44_95
LBB44_95:                               ## %do.end141
	movq	1800(%rsp), %rdi
	movq	1776(%rsp), %rsi
	movq	1680(%rsp), %rdx
	leaq	1624(%rsp), %rcx
	callq	__ZL11mpi_montredP11mbedtls_mpiPKS_mS2_
	cmpq	$1, 1744(%rsp)
	jbe	LBB44_125
## %bb.96:                              ## %if.then143
	movq	1736(%rsp), %rax
	movq	1744(%rsp), %rcx
	subq	$1, %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, 1720(%rsp)
## %bb.97:                              ## %do.body144
	leaq	80(%rsp), %rdi
	imulq	$24, 1720(%rsp), %rax
	addq	%rax, %rdi
	movq	1776(%rsp), %rax
	movq	8(%rax), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_99
## %bb.98:                              ## %if.then150
	jmp	LBB44_165
LBB44_99:                               ## %if.end151
	jmp	LBB44_100
LBB44_100:                              ## %do.cond152
	jmp	LBB44_101
LBB44_101:                              ## %do.end153
	jmp	LBB44_102
LBB44_102:                              ## %do.body154
	leaq	80(%rsp), %rdi
	imulq	$24, 1720(%rsp), %rax
	addq	%rax, %rdi
	leaq	80(%rsp), %rsi
	addq	$24, %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_104
## %bb.103:                             ## %if.then159
	jmp	LBB44_165
LBB44_104:                              ## %if.end160
	jmp	LBB44_105
LBB44_105:                              ## %do.cond161
	jmp	LBB44_106
LBB44_106:                              ## %do.end162
	movq	$0, 1728(%rsp)
LBB44_107:                              ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	1728(%rsp), %rax
	movq	1744(%rsp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jae	LBB44_110
## %bb.108:                             ## %for.body
                                        ##   in Loop: Header=BB44_107 Depth=1
	leaq	80(%rsp), %rdi
	imulq	$24, 1720(%rsp), %rax
	addq	%rax, %rdi
	leaq	80(%rsp), %rsi
	imulq	$24, 1720(%rsp), %rax
	addq	%rax, %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
## %bb.109:                             ## %for.inc
                                        ##   in Loop: Header=BB44_107 Depth=1
	movq	1728(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
	jmp	LBB44_107
LBB44_110:                              ## %for.end
	movq	1720(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
LBB44_111:                              ## %for.cond168
                                        ## =>This Inner Loop Header: Depth=1
	movq	1728(%rsp), %rax
	movq	1736(%rsp), %rdx
	movq	1744(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	LBB44_124
## %bb.112:                             ## %for.body171
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_113
LBB44_113:                              ## %do.body172
                                        ##   in Loop: Header=BB44_111 Depth=1
	leaq	80(%rsp), %rdi
	imulq	$24, 1728(%rsp), %rax
	addq	%rax, %rdi
	movq	1776(%rsp), %rax
	movq	8(%rax), %rsi
	addq	$1, %rsi
	callq	_mbedtls_mpi_grow
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_115
## %bb.114:                             ## %if.then178
	jmp	LBB44_165
LBB44_115:                              ## %if.end179
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_116
LBB44_116:                              ## %do.cond180
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_117
LBB44_117:                              ## %do.end181
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_118
LBB44_118:                              ## %do.body182
                                        ##   in Loop: Header=BB44_111 Depth=1
	leaq	80(%rsp), %rdi
	imulq	$24, 1728(%rsp), %rax
	addq	%rax, %rdi
	movq	1728(%rsp), %rax
	subq	$1, %rax
	leaq	80(%rsp), %rsi
	imulq	$24, %rax, %rax
	addq	%rax, %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_120
## %bb.119:                             ## %if.then188
	jmp	LBB44_165
LBB44_120:                              ## %if.end189
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_121
LBB44_121:                              ## %do.cond190
                                        ##   in Loop: Header=BB44_111 Depth=1
	jmp	LBB44_122
LBB44_122:                              ## %do.end191
                                        ##   in Loop: Header=BB44_111 Depth=1
	leaq	80(%rsp), %rdi
	imulq	$24, 1728(%rsp), %rax
	addq	%rax, %rdi
	leaq	80(%rsp), %rsi
	addq	$24, %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
## %bb.123:                             ## %for.inc194
                                        ##   in Loop: Header=BB44_111 Depth=1
	movq	1728(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
	jmp	LBB44_111
LBB44_124:                              ## %for.end196
	jmp	LBB44_125
LBB44_125:                              ## %if.end197
	movq	1784(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 1712(%rsp)
	movq	$0, 1704(%rsp)
	movq	$0, 1696(%rsp)
	movq	$0, 1752(%rsp)
	movq	$0, 1672(%rsp)
LBB44_126:                              ## %while.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB44_139 Depth 2
	jmp	LBB44_127
LBB44_127:                              ## %while.body
                                        ##   in Loop: Header=BB44_126 Depth=1
	cmpq	$0, 1704(%rsp)
	jne	LBB44_131
## %bb.128:                             ## %if.then200
                                        ##   in Loop: Header=BB44_126 Depth=1
	cmpq	$0, 1712(%rsp)
	jne	LBB44_130
## %bb.129:                             ## %if.then202
	jmp	LBB44_149
LBB44_130:                              ## %if.end203
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	1712(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 1712(%rsp)
	movq	$64, 1704(%rsp)
LBB44_131:                              ## %if.end204
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	1704(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 1704(%rsp)
	movq	1784(%rsp), %rax
	movq	16(%rax), %rax
	movq	1712(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	1704(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shrq	%cl, %rax
	andq	$1, %rax
	movq	%rax, 1688(%rsp)
	cmpq	$0, 1688(%rsp)
	jne	LBB44_134
## %bb.132:                             ## %land.lhs.true
                                        ##   in Loop: Header=BB44_126 Depth=1
	cmpq	$0, 1672(%rsp)
	jne	LBB44_134
## %bb.133:                             ## %if.then211
                                        ##   in Loop: Header=BB44_126 Depth=1
	jmp	LBB44_126
LBB44_134:                              ## %if.end212
                                        ##   in Loop: Header=BB44_126 Depth=1
	cmpq	$0, 1688(%rsp)
	jne	LBB44_137
## %bb.135:                             ## %land.lhs.true214
                                        ##   in Loop: Header=BB44_126 Depth=1
	cmpq	$1, 1672(%rsp)
	jne	LBB44_137
## %bb.136:                             ## %if.then216
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	1800(%rsp), %rdi
	movq	1800(%rsp), %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
	jmp	LBB44_126
LBB44_137:                              ## %if.end217
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	$2, 1672(%rsp)
	movq	1696(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1696(%rsp)
	movq	1688(%rsp), %rax
	movq	1744(%rsp), %rcx
	subq	1696(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rax
	orq	1752(%rsp), %rax
	movq	%rax, 1752(%rsp)
	movq	1696(%rsp), %rax
	cmpq	1744(%rsp), %rax
	jne	LBB44_148
## %bb.138:                             ## %if.then222
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	$0, 1728(%rsp)
LBB44_139:                              ## %for.cond223
                                        ##   Parent Loop BB44_126 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	1728(%rsp), %rax
	cmpq	1744(%rsp), %rax
	jae	LBB44_142
## %bb.140:                             ## %for.body225
                                        ##   in Loop: Header=BB44_139 Depth=2
	movq	1800(%rsp), %rdi
	movq	1800(%rsp), %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
## %bb.141:                             ## %for.inc226
                                        ##   in Loop: Header=BB44_139 Depth=2
	movq	1728(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
	jmp	LBB44_139
LBB44_142:                              ## %for.end228
                                        ##   in Loop: Header=BB44_126 Depth=1
	jmp	LBB44_143
LBB44_143:                              ## %do.body229
                                        ##   in Loop: Header=BB44_126 Depth=1
	leaq	80(%rsp), %rsi
	movq	1744(%rsp), %rcx
	movl	$1, %edx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	1752(%rsp), %rcx
	leaq	56(%rsp), %rdi
	callq	__ZL10mpi_selectP11mbedtls_mpiPKS_mm
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_145
## %bb.144:                             ## %if.then234
	jmp	LBB44_165
LBB44_145:                              ## %if.end235
                                        ##   in Loop: Header=BB44_126 Depth=1
	jmp	LBB44_146
LBB44_146:                              ## %do.cond236
                                        ##   in Loop: Header=BB44_126 Depth=1
	jmp	LBB44_147
LBB44_147:                              ## %do.end237
                                        ##   in Loop: Header=BB44_126 Depth=1
	movq	1800(%rsp), %rdi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	56(%rsp), %rsi
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
	movq	1672(%rsp), %rax
	addq	$-1, %rax
	movq	%rax, 1672(%rsp)
	movq	$0, 1696(%rsp)
	movq	$0, 1752(%rsp)
LBB44_148:                              ## %if.end239
                                        ##   in Loop: Header=BB44_126 Depth=1
	jmp	LBB44_126
LBB44_149:                              ## %while.end
	movq	$0, 1728(%rsp)
LBB44_150:                              ## %for.cond240
                                        ## =>This Inner Loop Header: Depth=1
	movq	1728(%rsp), %rax
	cmpq	1696(%rsp), %rax
	jae	LBB44_155
## %bb.151:                             ## %for.body242
                                        ##   in Loop: Header=BB44_150 Depth=1
	movq	1800(%rsp), %rdi
	movq	1800(%rsp), %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
	movq	1752(%rsp), %rax
	shlq	%rax
	movq	%rax, 1752(%rsp)
	movq	1752(%rsp), %rax
	movq	1736(%rsp), %rdx
	movq	1744(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	%rdx, %rcx
	andq	%rcx, %rax
	cmpq	$0, %rax
	je	LBB44_153
## %bb.152:                             ## %if.then247
                                        ##   in Loop: Header=BB44_150 Depth=1
	movq	1800(%rsp), %rdi
	leaq	80(%rsp), %rsi
	addq	$24, %rsi
	movq	1776(%rsp), %rdx
	movq	1680(%rsp), %rcx
	leaq	1624(%rsp), %r8
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
LBB44_153:                              ## %if.end249
                                        ##   in Loop: Header=BB44_150 Depth=1
	jmp	LBB44_154
LBB44_154:                              ## %for.inc250
                                        ##   in Loop: Header=BB44_150 Depth=1
	movq	1728(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
	jmp	LBB44_150
LBB44_155:                              ## %for.end252
	movq	1800(%rsp), %rdi
	movq	1776(%rsp), %rsi
	movq	1680(%rsp), %rdx
	leaq	1624(%rsp), %rcx
	callq	__ZL11mpi_montredP11mbedtls_mpiPKS_mS2_
	cmpl	$0, 28(%rsp)
	je	LBB44_164
## %bb.156:                             ## %land.lhs.true254
	movq	1784(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	LBB44_164
## %bb.157:                             ## %land.lhs.true257
	movq	1784(%rsp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	LBB44_164
## %bb.158:                             ## %if.then262
	movq	1800(%rsp), %rax
	movl	$-1, (%rax)
## %bb.159:                             ## %do.body264
	movq	1800(%rsp), %rdi
	movq	1776(%rsp), %rsi
	movq	1800(%rsp), %rdx
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 1764(%rsp)
	cmpl	$0, %eax
	je	LBB44_161
## %bb.160:                             ## %if.then267
	jmp	LBB44_165
LBB44_161:                              ## %if.end268
	jmp	LBB44_162
LBB44_162:                              ## %do.cond269
	jmp	LBB44_163
LBB44_163:                              ## %do.end270
	jmp	LBB44_164
LBB44_164:                              ## %if.end271
	jmp	LBB44_165
LBB44_165:                              ## %cleanup
	movq	1736(%rsp), %rax
	movq	1744(%rsp), %rcx
	subq	$1, %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rax
	movq	%rax, 1728(%rsp)
LBB44_166:                              ## %for.cond274
                                        ## =>This Inner Loop Header: Depth=1
	movq	1728(%rsp), %rax
	movq	1736(%rsp), %rdx
	movq	1744(%rsp), %rcx
                                        ## kill: def $cl killed $rcx
	shlq	%cl, %rdx
	movq	%rdx, %rcx
	cmpq	%rcx, %rax
	jae	LBB44_169
## %bb.167:                             ## %for.body277
                                        ##   in Loop: Header=BB44_166 Depth=1
	leaq	80(%rsp), %rdi
	imulq	$24, 1728(%rsp), %rax
	addq	%rax, %rdi
	callq	_mbedtls_mpi_free
## %bb.168:                             ## %for.inc279
                                        ##   in Loop: Header=BB44_166 Depth=1
	movq	1728(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 1728(%rsp)
	jmp	LBB44_166
LBB44_169:                              ## %for.end281
	leaq	80(%rsp), %rdi
	addq	$24, %rdi
	callq	_mbedtls_mpi_free
	leaq	1624(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	56(%rsp), %rdi
	callq	_mbedtls_mpi_free
	cmpq	$0, 1768(%rsp)
	je	LBB44_171
## %bb.170:                             ## %lor.lhs.false284
	movq	1768(%rsp), %rax
	cmpq	$0, 16(%rax)
	jne	LBB44_172
LBB44_171:                              ## %if.then287
	leaq	1648(%rsp), %rdi
	callq	_mbedtls_mpi_free
LBB44_172:                              ## %if.end288
	movl	1764(%rsp), %eax
	movl	%eax, 1812(%rsp)
	movl	$1, 24(%rsp)
LBB44_173:                              ## %cleanup289
	movl	1812(%rsp), %eax
	addq	$1816, %rsp                     ## imm = 0x718
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL14mpi_montg_initPmPK11mbedtls_mpi
__ZL14mpi_montg_initPmPK11mbedtls_mpi:  ## @_ZL14mpi_montg_initPmPK11mbedtls_mpi
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rsp)
	movq	-32(%rsp), %rax
	movq	%rax, -24(%rsp)
	movq	-32(%rsp), %rax
	addq	$2, %rax
	andq	$4, %rax
	shlq	%rax
	addq	-24(%rsp), %rax
	movq	%rax, -24(%rsp)
	movl	$64, -36(%rsp)
LBB45_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -36(%rsp)
	jb	LBB45_4
## %bb.2:                               ## %for.body
                                        ##   in Loop: Header=BB45_1 Depth=1
	movq	-32(%rsp), %rcx
	imulq	-24(%rsp), %rcx
	movl	$2, %eax
	subq	%rcx, %rax
	imulq	-24(%rsp), %rax
	movq	%rax, -24(%rsp)
## %bb.3:                               ## %for.inc
                                        ##   in Loop: Header=BB45_1 Depth=1
	movl	-36(%rsp), %eax
	shrl	%eax
	movl	%eax, -36(%rsp)
	jmp	LBB45_1
LBB45_4:                                ## %for.end
	movq	-24(%rsp), %rcx
	xorq	$-1, %rcx
	addq	$1, %rcx
	movq	-8(%rsp), %rax
	movq	%rcx, (%rax)
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_: ## @_ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%r8, 64(%rsp)
	movq	64(%rsp), %rax
	movq	16(%rax), %rdi
	movq	64(%rsp), %rax
	movq	8(%rax), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
	movq	64(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	48(%rsp), %rax
	jae	LBB46_2
## %bb.1:                               ## %cond.true
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	jmp	LBB46_3
LBB46_2:                                ## %cond.false
	movq	48(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
LBB46_3:                                ## %cond.end
	movq	8(%rsp), %rax                   ## 8-byte Reload
	movq	%rax, 40(%rsp)
	movq	$0, 56(%rsp)
LBB46_4:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	cmpq	48(%rsp), %rax
	jae	LBB46_7
## %bb.5:                               ## %for.body
                                        ##   in Loop: Header=BB46_4 Depth=1
	movq	96(%rsp), %rax
	movq	16(%rax), %rax
	movq	56(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	32(%rsp), %rcx
	movq	88(%rsp), %rdx
	movq	16(%rdx), %rdx
	imulq	(%rdx), %rcx
	addq	%rcx, %rax
	imulq	72(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rdi
	movq	88(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rdx
	movq	32(%rsp), %rcx
	callq	__ZL11mpi_mul_hlpmPKmPmm
	movq	48(%rsp), %rdi
	movq	80(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rcx
	callq	__ZL11mpi_mul_hlpmPKmPmm
	movq	32(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%rax, %rdx
	addq	$8, %rdx
	movq	%rdx, 16(%rsp)
	movq	%rcx, (%rax)
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	$0, 8(%rax,%rcx,8)
## %bb.6:                               ## %for.inc
                                        ##   in Loop: Header=BB46_4 Depth=1
	movq	56(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	jmp	LBB46_4
LBB46_7:                                ## %for.end
	movq	96(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rsi
	movq	48(%rsp), %rdx
	shlq	$3, %rdx
	callq	_memcpy
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	48(%rsp), %rdi
	movq	16(%rsp), %rsi
	movq	16(%rsp), %rdx
	movq	80(%rsp), %rax
	movq	16(%rax), %rcx
	callq	__ZL11mpi_sub_hlpmPmPKmS1_
	movq	%rax, %rsi
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdx
	subq	%rsi, %rdx
	movq	%rdx, (%rax,%rcx,8)
	movq	48(%rsp), %rdi
	movq	96(%rsp), %rax
	movq	16(%rax), %rsi
	movq	16(%rsp), %rdx
	movq	16(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
                                        ## kill: def $al killed $al killed $rax
	movzbl	%al, %ecx
	callq	__Z31mbedtls_ct_mpi_uint_cond_assignmPmPKmh
	addq	$104, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL11mpi_montredP11mbedtls_mpiPKS_mS2_
__ZL11mpi_montredP11mbedtls_mpiPKS_mS2_: ## @_ZL11mpi_montredP11mbedtls_mpiPKS_mS2_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movq	%rcx, 40(%rsp)
	movq	$1, 32(%rsp)
	movq	32(%rsp), %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, 8(%rsp)
	cltq
	movq	%rax, 16(%rsp)
	leaq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	64(%rsp), %rdi
	movq	56(%rsp), %rdx
	movq	48(%rsp), %rcx
	movq	40(%rsp), %r8
	leaq	8(%rsp), %rsi
	callq	__ZL11mpi_montmulP11mbedtls_mpiPKS_S2_mS2_
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL10mpi_selectP11mbedtls_mpiPKS_mm
__ZL10mpi_selectP11mbedtls_mpiPKS_mm:   ## @_ZL10mpi_selectP11mbedtls_mpiPKS_mm
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 72(%rsp)
	movq	%rsi, 64(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rcx, 48(%rsp)
	movl	$-110, 44(%rsp)
	movq	$0, 32(%rsp)
LBB48_1:                                ## %for.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax
	cmpq	56(%rsp), %rax
	jb	LBB48_3
## %bb.2:                               ## %for.cond.cleanup
	movl	$2, 28(%rsp)
	jmp	LBB48_10
LBB48_3:                                ## %for.body
                                        ##   in Loop: Header=BB48_1 Depth=1
	jmp	LBB48_4
LBB48_4:                                ## %do.body
                                        ##   in Loop: Header=BB48_1 Depth=1
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)                   ## 8-byte Spill
	movq	64(%rsp), %rax
	imulq	$24, 32(%rsp), %rcx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)                  ## 8-byte Spill
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	callq	__Z23mbedtls_ct_size_bool_eqmm
	movq	8(%rsp), %rdi                   ## 8-byte Reload
	movq	16(%rsp), %rsi                  ## 8-byte Reload
                                        ## kill: def $al killed $al killed $eax
	movzbl	%al, %edx
	callq	_mbedtls_mpi_safe_cond_assign
	movl	%eax, 44(%rsp)
	cmpl	$0, %eax
	je	LBB48_6
## %bb.5:                               ## %if.then
	movl	$7, 28(%rsp)
	jmp	LBB48_10
LBB48_6:                                ## %if.end
                                        ##   in Loop: Header=BB48_1 Depth=1
	jmp	LBB48_7
LBB48_7:                                ## %do.cond
                                        ##   in Loop: Header=BB48_1 Depth=1
	jmp	LBB48_8
LBB48_8:                                ## %do.end
                                        ##   in Loop: Header=BB48_1 Depth=1
	jmp	LBB48_9
LBB48_9:                                ## %for.inc
                                        ##   in Loop: Header=BB48_1 Depth=1
	movq	32(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 32(%rsp)
	jmp	LBB48_1
LBB48_10:                               ## %cleanup
	movl	28(%rsp), %eax
	movl	%eax, 4(%rsp)                   ## 4-byte Spill
	subl	$2, %eax
	je	LBB48_11
	jmp	LBB48_14
LBB48_14:                               ## %cleanup
	movl	4(%rsp), %eax                   ## 4-byte Reload
	subl	$7, %eax
	je	LBB48_12
	jmp	LBB48_13
LBB48_11:                               ## %for.end
	jmp	LBB48_12
LBB48_12:                               ## %cleanup3
	movl	44(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	$1, 28(%rsp)
LBB48_13:                               ## %cleanup4
	movl	84(%rsp), %eax
	addq	$88, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_gcd        ## -- Begin function mbedtls_mpi_gcd
	.globl	_mbedtls_mpi_gcd
	.p2align	4
_mbedtls_mpi_gcd:                       ## @mbedtls_mpi_gcd
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	%rsi, 88(%rsp)
	movq	%rdx, 80(%rsp)
	movl	$-110, 76(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB49_2
LBB49_2:                                ## %do.cond
	jmp	LBB49_3
LBB49_3:                                ## %do.end
	jmp	LBB49_4
LBB49_4:                                ## %do.body1
	jmp	LBB49_5
LBB49_5:                                ## %do.cond2
	jmp	LBB49_6
LBB49_6:                                ## %do.end3
	jmp	LBB49_7
LBB49_7:                                ## %do.body4
	jmp	LBB49_8
LBB49_8:                                ## %do.cond5
	jmp	LBB49_9
LBB49_9:                                ## %do.end6
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_init
## %bb.10:                              ## %do.body7
	movq	88(%rsp), %rsi
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_12
## %bb.11:                              ## %if.then
	jmp	LBB49_71
LBB49_12:                               ## %if.end
	jmp	LBB49_13
LBB49_13:                               ## %do.cond8
	jmp	LBB49_14
LBB49_14:                               ## %do.end9
	jmp	LBB49_15
LBB49_15:                               ## %do.body10
	movq	80(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_17
## %bb.16:                              ## %if.then13
	jmp	LBB49_71
LBB49_17:                               ## %if.end14
	jmp	LBB49_18
LBB49_18:                               ## %do.cond15
	jmp	LBB49_19
LBB49_19:                               ## %do.end16
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_lsb
	movq	%rax, 64(%rsp)
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_lsb
	movq	%rax, 56(%rsp)
	cmpq	$0, 56(%rsp)
	jne	LBB49_22
## %bb.20:                              ## %land.lhs.true
	leaq	8(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_get_bit
	cmpl	$0, %eax
	jne	LBB49_22
## %bb.21:                              ## %if.then22
	movq	96(%rsp), %rdi
	movq	88(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	jmp	LBB49_71
LBB49_22:                               ## %if.end24
	movq	56(%rsp), %rax
	cmpq	64(%rsp), %rax
	jae	LBB49_24
## %bb.23:                              ## %if.then26
	movq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
LBB49_24:                               ## %if.end27
	movl	$1, 8(%rsp)
	movl	$1, 32(%rsp)
LBB49_25:                               ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	leaq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	je	LBB49_60
## %bb.26:                              ## %while.body
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_27
LBB49_27:                               ## %do.body31
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_lsb
	movq	%rax, %rsi
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_29
## %bb.28:                              ## %if.then35
	jmp	LBB49_71
LBB49_29:                               ## %if.end36
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_30
LBB49_30:                               ## %do.cond37
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_31
LBB49_31:                               ## %do.end38
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_32
LBB49_32:                               ## %do.body39
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_lsb
	movq	%rax, %rsi
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_34
## %bb.33:                              ## %if.then43
	jmp	LBB49_71
LBB49_34:                               ## %if.end44
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_35
LBB49_35:                               ## %do.cond45
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_36
LBB49_36:                               ## %do.end46
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB49_48
## %bb.37:                              ## %if.then49
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_38
LBB49_38:                               ## %do.body50
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	32(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_40
## %bb.39:                              ## %if.then53
	jmp	LBB49_71
LBB49_40:                               ## %if.end54
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_41
LBB49_41:                               ## %do.cond55
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_42
LBB49_42:                               ## %do.end56
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_43
LBB49_43:                               ## %do.body57
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_45
## %bb.44:                              ## %if.then60
	jmp	LBB49_71
LBB49_45:                               ## %if.end61
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_46
LBB49_46:                               ## %do.cond62
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_47
LBB49_47:                               ## %do.end63
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_59
LBB49_48:                               ## %if.else
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_49
LBB49_49:                               ## %do.body64
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	8(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_abs
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_51
## %bb.50:                              ## %if.then67
	jmp	LBB49_71
LBB49_51:                               ## %if.end68
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_52
LBB49_52:                               ## %do.cond69
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_53
LBB49_53:                               ## %do.end70
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_54
LBB49_54:                               ## %do.body71
                                        ##   in Loop: Header=BB49_25 Depth=1
	leaq	8(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_56
## %bb.55:                              ## %if.then74
	jmp	LBB49_71
LBB49_56:                               ## %if.end75
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_57
LBB49_57:                               ## %do.cond76
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_58
LBB49_58:                               ## %do.end77
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_59
LBB49_59:                               ## %if.end78
                                        ##   in Loop: Header=BB49_25 Depth=1
	jmp	LBB49_25
LBB49_60:                               ## %while.end
	jmp	LBB49_61
LBB49_61:                               ## %do.body79
	movq	64(%rsp), %rsi
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_shift_l
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_63
## %bb.62:                              ## %if.then82
	jmp	LBB49_71
LBB49_63:                               ## %if.end83
	jmp	LBB49_64
LBB49_64:                               ## %do.cond84
	jmp	LBB49_65
LBB49_65:                               ## %do.end85
	jmp	LBB49_66
LBB49_66:                               ## %do.body86
	movq	96(%rsp), %rdi
	leaq	8(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 76(%rsp)
	cmpl	$0, %eax
	je	LBB49_68
## %bb.67:                              ## %if.then89
	jmp	LBB49_71
LBB49_68:                               ## %if.end90
	jmp	LBB49_69
LBB49_69:                               ## %do.cond91
	jmp	LBB49_70
LBB49_70:                               ## %do.end92
	jmp	LBB49_71
LBB49_71:                               ## %cleanup
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	76(%rsp), %eax
	addq	$104, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_fill_random ## -- Begin function mbedtls_mpi_fill_random
	.globl	_mbedtls_mpi_fill_random
	.p2align	4
_mbedtls_mpi_fill_random:               ## @mbedtls_mpi_fill_random
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movl	$-110, 28(%rsp)
	movq	48(%rsp), %rax
	shrq	$3, %rax
	movq	48(%rsp), %rcx
	andq	$7, %rcx
	cmpq	$0, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB50_2
LBB50_2:                                ## %do.cond
	jmp	LBB50_3
LBB50_3:                                ## %do.end
	jmp	LBB50_4
LBB50_4:                                ## %do.body1
	jmp	LBB50_5
LBB50_5:                                ## %do.cond2
	jmp	LBB50_6
LBB50_6:                                ## %do.end3
	jmp	LBB50_7
LBB50_7:                                ## %do.body4
	movq	56(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	__ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB50_9
## %bb.8:                               ## %if.then
	jmp	LBB50_14
LBB50_9:                                ## %if.end
	jmp	LBB50_10
LBB50_10:                               ## %do.cond6
	jmp	LBB50_11
LBB50_11:                               ## %do.end7
	cmpq	$0, 48(%rsp)
	jne	LBB50_13
## %bb.12:                              ## %if.then9
	movl	$0, 68(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB50_15
LBB50_13:                               ## %if.end10
	movq	56(%rsp), %rdi
	movq	48(%rsp), %rsi
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rcx
	callq	__ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_
	movl	%eax, 28(%rsp)
LBB50_14:                               ## %cleanup
	movl	28(%rsp), %eax
	movl	%eax, 68(%rsp)
	movl	$1, 12(%rsp)
LBB50_15:                               ## %cleanup12
	movl	68(%rsp), %eax
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_
__ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_: ## @_ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movq	%rdx, 40(%rsp)
	movq	%rcx, 32(%rsp)
	movl	$-110, 28(%rsp)
	movq	48(%rsp), %rax
	shrq	$3, %rax
	movq	48(%rsp), %rcx
	andq	$7, %rcx
	cmpq	$0, %rcx
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %ecx
                                        ## kill: def $rcx killed $ecx
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	shlq	$3, %rax
	subq	48(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	16(%rsp), %rax
	jae	LBB51_2
## %bb.1:                               ## %if.then
	movl	$-4, 68(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB51_9
LBB51_2:                                ## %if.end
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	movq	8(%rsp), %rdx
	xorl	%esi, %esi
	callq	_memset
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rax
	shlq	$3, %rax
	addq	%rax, %rdi
	movq	56(%rsp), %rax
	movq	8(%rax), %rdx
	subq	16(%rsp), %rdx
	shlq	$3, %rdx
	xorl	%esi, %esi
	callq	_memset
## %bb.3:                               ## %do.body
	movq	40(%rsp), %rax
	movq	32(%rsp), %rdi
	movq	56(%rsp), %rcx
	movq	16(%rcx), %rsi
	addq	8(%rsp), %rsi
	movq	48(%rsp), %rdx
	callq	*%rax
	movl	%eax, 28(%rsp)
	cmpl	$0, %eax
	je	LBB51_5
## %bb.4:                               ## %if.then10
	jmp	LBB51_8
LBB51_5:                                ## %if.end11
	jmp	LBB51_6
LBB51_6:                                ## %do.cond
	jmp	LBB51_7
LBB51_7:                                ## %do.end
	movq	56(%rsp), %rax
	movq	16(%rax), %rdi
	movq	16(%rsp), %rsi
	callq	__ZL21mpi_bigendian_to_hostPmm
LBB51_8:                                ## %cleanup
	movl	28(%rsp), %eax
	movl	%eax, 68(%rsp)
	movl	$1, 4(%rsp)
LBB51_9:                                ## %cleanup13
	movl	68(%rsp), %eax
	addq	$72, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_random     ## -- Begin function mbedtls_mpi_random
	.globl	_mbedtls_mpi_random
	.p2align	4
_mbedtls_mpi_random:                    ## @mbedtls_mpi_random
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 104(%rsp)
	movq	%rsi, 96(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%r8, 72(%rsp)
	movl	$-4, 68(%rsp)
	movl	$1, 60(%rsp)
	movl	$0, 56(%rsp)
	movq	88(%rsp), %rdi
	callq	_mbedtls_mpi_bitlen
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	addq	$7, %rax
	shrq	$3, %rax
	movq	%rax, 40(%rsp)
	cmpq	$0, 96(%rsp)
	jge	LBB52_2
## %bb.1:                               ## %if.then
	movl	$-4, 116(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB52_48
LBB52_2:                                ## %if.end
	movq	88(%rsp), %rdi
	movq	96(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jg	LBB52_4
## %bb.3:                               ## %if.then3
	movl	$-4, 116(%rsp)
	movl	$1, 12(%rsp)
	jmp	LBB52_48
LBB52_4:                                ## %if.end4
	movq	40(%rsp), %rdx
	movl	$250, %eax
	movl	$30, %ecx
	cmpq	$4, %rdx
	cmoval	%ecx, %eax
	movl	%eax, 64(%rsp)
	leaq	16(%rsp), %rdi
	callq	_mbedtls_mpi_init
## %bb.5:                               ## %do.body
	movq	104(%rsp), %rdi
	movq	88(%rsp), %rax
	movq	8(%rax), %rsi
	callq	__ZL24mbedtls_mpi_resize_clearP11mbedtls_mpim
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_7
## %bb.6:                               ## %if.then8
	jmp	LBB52_47
LBB52_7:                                ## %if.end9
	jmp	LBB52_8
LBB52_8:                                ## %do.cond
	jmp	LBB52_9
LBB52_9:                                ## %do.end
	jmp	LBB52_10
LBB52_10:                               ## %do.body10
	movq	88(%rsp), %rax
	movq	8(%rax), %rsi
	leaq	16(%rsp), %rdi
	callq	_mbedtls_mpi_grow
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_12
## %bb.11:                              ## %if.then14
	jmp	LBB52_47
LBB52_12:                               ## %if.end15
	jmp	LBB52_13
LBB52_13:                               ## %do.cond16
	jmp	LBB52_14
LBB52_14:                               ## %do.end17
	jmp	LBB52_15
LBB52_15:                               ## %do.body18
	movq	96(%rsp), %rsi
	leaq	16(%rsp), %rdi
	callq	_mbedtls_mpi_lset
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_17
## %bb.16:                              ## %if.then21
	jmp	LBB52_47
LBB52_17:                               ## %if.end22
	jmp	LBB52_18
LBB52_18:                               ## %do.cond23
	jmp	LBB52_19
LBB52_19:                               ## %do.end24
	jmp	LBB52_20
LBB52_20:                               ## %do.body25
                                        ## =>This Inner Loop Header: Depth=1
	jmp	LBB52_21
LBB52_21:                               ## %do.body26
                                        ##   in Loop: Header=BB52_20 Depth=1
	movq	104(%rsp), %rdi
	movq	40(%rsp), %rsi
	movq	80(%rsp), %rdx
	movq	72(%rsp), %rcx
	callq	__ZL24mpi_fill_random_internalP11mbedtls_mpimPFiPvPhmES1_
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_23
## %bb.22:                              ## %if.then29
	jmp	LBB52_47
LBB52_23:                               ## %if.end30
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_24
LBB52_24:                               ## %do.cond31
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_25
LBB52_25:                               ## %do.end32
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_26
LBB52_26:                               ## %do.body33
                                        ##   in Loop: Header=BB52_20 Depth=1
	movq	104(%rsp), %rdi
	movq	40(%rsp), %rsi
	shlq	$3, %rsi
	subq	48(%rsp), %rsi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_28
## %bb.27:                              ## %if.then36
	jmp	LBB52_47
LBB52_28:                               ## %if.end37
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_29
LBB52_29:                               ## %do.cond38
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_30
LBB52_30:                               ## %do.end39
                                        ##   in Loop: Header=BB52_20 Depth=1
	movl	64(%rsp), %eax
	addl	$-1, %eax
	movl	%eax, 64(%rsp)
	cmpl	$0, %eax
	jne	LBB52_32
## %bb.31:                              ## %if.then41
	movl	$-14, 68(%rsp)
	jmp	LBB52_47
LBB52_32:                               ## %if.end42
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_33
LBB52_33:                               ## %do.body43
                                        ##   in Loop: Header=BB52_20 Depth=1
	movq	104(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	60(%rsp), %rdx
	callq	_mbedtls_mpi_lt_mpi_ct
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_35
## %bb.34:                              ## %if.then46
	jmp	LBB52_47
LBB52_35:                               ## %if.end47
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_36
LBB52_36:                               ## %do.cond48
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_37
LBB52_37:                               ## %do.end49
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_38
LBB52_38:                               ## %do.body50
                                        ##   in Loop: Header=BB52_20 Depth=1
	movq	104(%rsp), %rdi
	movq	88(%rsp), %rsi
	leaq	56(%rsp), %rdx
	callq	_mbedtls_mpi_lt_mpi_ct
	movl	%eax, 68(%rsp)
	cmpl	$0, %eax
	je	LBB52_40
## %bb.39:                              ## %if.then53
	jmp	LBB52_47
LBB52_40:                               ## %if.end54
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_41
LBB52_41:                               ## %do.cond55
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_42
LBB52_42:                               ## %do.end56
                                        ##   in Loop: Header=BB52_20 Depth=1
	jmp	LBB52_43
LBB52_43:                               ## %do.cond57
                                        ##   in Loop: Header=BB52_20 Depth=1
	movb	$1, %al
	cmpl	$0, 60(%rsp)
	movb	%al, 11(%rsp)                   ## 1-byte Spill
	jne	LBB52_45
## %bb.44:                              ## %lor.rhs
                                        ##   in Loop: Header=BB52_20 Depth=1
	cmpl	$0, 56(%rsp)
	sete	%al
	movb	%al, 11(%rsp)                   ## 1-byte Spill
LBB52_45:                               ## %lor.end
                                        ##   in Loop: Header=BB52_20 Depth=1
	movb	11(%rsp), %al                   ## 1-byte Reload
	testb	$1, %al
	jne	LBB52_20
## %bb.46:                              ## %do.end60
	jmp	LBB52_47
LBB52_47:                               ## %cleanup
	leaq	16(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	68(%rsp), %eax
	movl	%eax, 116(%rsp)
	movl	$1, 12(%rsp)
LBB52_48:                               ## %cleanup61
	movl	116(%rsp), %eax
	addq	$120, %rsp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	_mbedtls_mpi_inv_mod    ## -- Begin function mbedtls_mpi_inv_mod
	.globl	_mbedtls_mpi_inv_mod
	.p2align	4
_mbedtls_mpi_inv_mod:                   ## @mbedtls_mpi_inv_mod
	.cfi_startproc
## %bb.0:                               ## %entry
	subq	$264, %rsp                      ## imm = 0x108
	.cfi_def_cfa_offset 272
	movq	%rdi, 248(%rsp)
	movq	%rsi, 240(%rsp)
	movq	%rdx, 232(%rsp)
	movl	$-110, 228(%rsp)
## %bb.1:                               ## %do.body
	jmp	LBB53_2
LBB53_2:                                ## %do.cond
	jmp	LBB53_3
LBB53_3:                                ## %do.end
	jmp	LBB53_4
LBB53_4:                                ## %do.body1
	jmp	LBB53_5
LBB53_5:                                ## %do.cond2
	jmp	LBB53_6
LBB53_6:                                ## %do.end3
	jmp	LBB53_7
LBB53_7:                                ## %do.body4
	jmp	LBB53_8
LBB53_8:                                ## %do.cond5
	jmp	LBB53_9
LBB53_9:                                ## %do.end6
	movq	232(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jg	LBB53_11
## %bb.10:                              ## %if.then
	movl	$-4, 260(%rsp)
	movl	$1, 4(%rsp)
	jmp	LBB53_179
LBB53_11:                               ## %if.end
	leaq	176(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	152(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	128(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	104(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	200(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	80(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	56(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_init
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_init
## %bb.12:                              ## %do.body7
	movq	240(%rsp), %rsi
	movq	232(%rsp), %rdx
	leaq	200(%rsp), %rdi
	callq	_mbedtls_mpi_gcd
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_14
## %bb.13:                              ## %if.then10
	jmp	LBB53_178
LBB53_14:                               ## %if.end11
	jmp	LBB53_15
LBB53_15:                               ## %do.cond12
	jmp	LBB53_16
LBB53_16:                               ## %do.end13
	leaq	200(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	je	LBB53_18
## %bb.17:                              ## %if.then16
	movl	$-14, 228(%rsp)
	jmp	LBB53_178
LBB53_18:                               ## %if.end17
	jmp	LBB53_19
LBB53_19:                               ## %do.body18
	movq	240(%rsp), %rsi
	movq	232(%rsp), %rdx
	leaq	176(%rsp), %rdi
	callq	_mbedtls_mpi_mod_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_21
## %bb.20:                              ## %if.then21
	jmp	LBB53_178
LBB53_21:                               ## %if.end22
	jmp	LBB53_22
LBB53_22:                               ## %do.cond23
	jmp	LBB53_23
LBB53_23:                               ## %do.end24
	jmp	LBB53_24
LBB53_24:                               ## %do.body25
	leaq	152(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_26
## %bb.25:                              ## %if.then28
	jmp	LBB53_178
LBB53_26:                               ## %if.end29
	jmp	LBB53_27
LBB53_27:                               ## %do.cond30
	jmp	LBB53_28
LBB53_28:                               ## %do.end31
	jmp	LBB53_29
LBB53_29:                               ## %do.body32
	movq	232(%rsp), %rsi
	leaq	80(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_31
## %bb.30:                              ## %if.then35
	jmp	LBB53_178
LBB53_31:                               ## %if.end36
	jmp	LBB53_32
LBB53_32:                               ## %do.cond37
	jmp	LBB53_33
LBB53_33:                               ## %do.end38
	jmp	LBB53_34
LBB53_34:                               ## %do.body39
	movq	232(%rsp), %rsi
	leaq	56(%rsp), %rdi
	callq	_mbedtls_mpi_copy
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_36
## %bb.35:                              ## %if.then42
	jmp	LBB53_178
LBB53_36:                               ## %if.end43
	jmp	LBB53_37
LBB53_37:                               ## %do.cond44
	jmp	LBB53_38
LBB53_38:                               ## %do.end45
	jmp	LBB53_39
LBB53_39:                               ## %do.body46
	leaq	128(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_41
## %bb.40:                              ## %if.then49
	jmp	LBB53_178
LBB53_41:                               ## %if.end50
	jmp	LBB53_42
LBB53_42:                               ## %do.cond51
	jmp	LBB53_43
LBB53_43:                               ## %do.end52
	jmp	LBB53_44
LBB53_44:                               ## %do.body53
	leaq	104(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_46
## %bb.45:                              ## %if.then56
	jmp	LBB53_178
LBB53_46:                               ## %if.end57
	jmp	LBB53_47
LBB53_47:                               ## %do.cond58
	jmp	LBB53_48
LBB53_48:                               ## %do.end59
	jmp	LBB53_49
LBB53_49:                               ## %do.body60
	leaq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_51
## %bb.50:                              ## %if.then63
	jmp	LBB53_178
LBB53_51:                               ## %if.end64
	jmp	LBB53_52
LBB53_52:                               ## %do.cond65
	jmp	LBB53_53
LBB53_53:                               ## %do.end66
	jmp	LBB53_54
LBB53_54:                               ## %do.body67
	leaq	8(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_lset
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_56
## %bb.55:                              ## %if.then70
	jmp	LBB53_178
LBB53_56:                               ## %if.end71
	jmp	LBB53_57
LBB53_57:                               ## %do.cond72
	jmp	LBB53_58
LBB53_58:                               ## %do.end73
	jmp	LBB53_59
LBB53_59:                               ## %do.body74
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB53_60 Depth 2
                                        ##     Child Loop BB53_91 Depth 2
	jmp	LBB53_60
LBB53_60:                               ## %while.cond
                                        ##   Parent Loop BB53_59 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	168(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB53_90
## %bb.61:                              ## %while.body
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_62
LBB53_62:                               ## %do.body76
                                        ##   in Loop: Header=BB53_60 Depth=2
	leaq	152(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_64
## %bb.63:                              ## %if.then79
	jmp	LBB53_178
LBB53_64:                               ## %if.end80
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_65
LBB53_65:                               ## %do.cond81
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_66
LBB53_66:                               ## %do.end82
                                        ##   in Loop: Header=BB53_60 Depth=2
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB53_68
## %bb.67:                              ## %lor.lhs.false
                                        ##   in Loop: Header=BB53_60 Depth=2
	movq	120(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	LBB53_79
LBB53_68:                               ## %if.then91
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_69
LBB53_69:                               ## %do.body92
                                        ##   in Loop: Header=BB53_60 Depth=2
	leaq	128(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_71
## %bb.70:                              ## %if.then95
	jmp	LBB53_178
LBB53_71:                               ## %if.end96
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_72
LBB53_72:                               ## %do.cond97
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_73
LBB53_73:                               ## %do.end98
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_74
LBB53_74:                               ## %do.body99
                                        ##   in Loop: Header=BB53_60 Depth=2
	leaq	104(%rsp), %rsi
	leaq	176(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_76
## %bb.75:                              ## %if.then102
	jmp	LBB53_178
LBB53_76:                               ## %if.end103
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_77
LBB53_77:                               ## %do.cond104
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_78
LBB53_78:                               ## %do.end105
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_79
LBB53_79:                               ## %if.end106
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_80
LBB53_80:                               ## %do.body107
                                        ##   in Loop: Header=BB53_60 Depth=2
	leaq	128(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_82
## %bb.81:                              ## %if.then110
	jmp	LBB53_178
LBB53_82:                               ## %if.end111
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_83
LBB53_83:                               ## %do.cond112
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_84
LBB53_84:                               ## %do.end113
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_85
LBB53_85:                               ## %do.body114
                                        ##   in Loop: Header=BB53_60 Depth=2
	leaq	104(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_87
## %bb.86:                              ## %if.then117
	jmp	LBB53_178
LBB53_87:                               ## %if.end118
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_88
LBB53_88:                               ## %do.cond119
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_89
LBB53_89:                               ## %do.end120
                                        ##   in Loop: Header=BB53_60 Depth=2
	jmp	LBB53_60
LBB53_90:                               ## %while.end
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_91
LBB53_91:                               ## %while.cond121
                                        ##   Parent Loop BB53_59 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	72(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB53_121
## %bb.92:                              ## %while.body126
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_93
LBB53_93:                               ## %do.body127
                                        ##   in Loop: Header=BB53_91 Depth=2
	leaq	56(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_95
## %bb.94:                              ## %if.then130
	jmp	LBB53_178
LBB53_95:                               ## %if.end131
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_96
LBB53_96:                               ## %do.cond132
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_97
LBB53_97:                               ## %do.end133
                                        ##   in Loop: Header=BB53_91 Depth=2
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB53_99
## %bb.98:                              ## %lor.lhs.false138
                                        ##   in Loop: Header=BB53_91 Depth=2
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	andq	$1, %rax
	cmpq	$0, %rax
	je	LBB53_110
LBB53_99:                               ## %if.then143
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_100
LBB53_100:                              ## %do.body144
                                        ##   in Loop: Header=BB53_91 Depth=2
	leaq	32(%rsp), %rsi
	leaq	80(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_102
## %bb.101:                             ## %if.then147
	jmp	LBB53_178
LBB53_102:                              ## %if.end148
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_103
LBB53_103:                              ## %do.cond149
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_104
LBB53_104:                              ## %do.end150
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_105
LBB53_105:                              ## %do.body151
                                        ##   in Loop: Header=BB53_91 Depth=2
	leaq	8(%rsp), %rsi
	leaq	176(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_107
## %bb.106:                             ## %if.then154
	jmp	LBB53_178
LBB53_107:                              ## %if.end155
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_108
LBB53_108:                              ## %do.cond156
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_109
LBB53_109:                              ## %do.end157
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_110
LBB53_110:                              ## %if.end158
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_111
LBB53_111:                              ## %do.body159
                                        ##   in Loop: Header=BB53_91 Depth=2
	leaq	32(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_113
## %bb.112:                             ## %if.then162
	jmp	LBB53_178
LBB53_113:                              ## %if.end163
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_114
LBB53_114:                              ## %do.cond164
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_115
LBB53_115:                              ## %do.end165
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_116
LBB53_116:                              ## %do.body166
                                        ##   in Loop: Header=BB53_91 Depth=2
	leaq	8(%rsp), %rdi
	movl	$1, %esi
	callq	_mbedtls_mpi_shift_r
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_118
## %bb.117:                             ## %if.then169
	jmp	LBB53_178
LBB53_118:                              ## %if.end170
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_119
LBB53_119:                              ## %do.cond171
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_120
LBB53_120:                              ## %do.end172
                                        ##   in Loop: Header=BB53_91 Depth=2
	jmp	LBB53_91
LBB53_121:                              ## %while.end173
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	152(%rsp), %rdi
	leaq	56(%rsp), %rsi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB53_138
## %bb.122:                             ## %if.then176
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_123
LBB53_123:                              ## %do.body177
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	152(%rsp), %rsi
	leaq	56(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_125
## %bb.124:                             ## %if.then180
	jmp	LBB53_178
LBB53_125:                              ## %if.end181
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_126
LBB53_126:                              ## %do.cond182
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_127
LBB53_127:                              ## %do.end183
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_128
LBB53_128:                              ## %do.body184
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	128(%rsp), %rsi
	leaq	32(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_130
## %bb.129:                             ## %if.then187
	jmp	LBB53_178
LBB53_130:                              ## %if.end188
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_131
LBB53_131:                              ## %do.cond189
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_132
LBB53_132:                              ## %do.end190
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_133
LBB53_133:                              ## %do.body191
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	104(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_135
## %bb.134:                             ## %if.then194
	jmp	LBB53_178
LBB53_135:                              ## %if.end195
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_136
LBB53_136:                              ## %do.cond196
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_137
LBB53_137:                              ## %do.end197
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_154
LBB53_138:                              ## %if.else
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_139
LBB53_139:                              ## %do.body198
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	56(%rsp), %rsi
	leaq	152(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_141
## %bb.140:                             ## %if.then201
	jmp	LBB53_178
LBB53_141:                              ## %if.end202
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_142
LBB53_142:                              ## %do.cond203
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_143
LBB53_143:                              ## %do.end204
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_144
LBB53_144:                              ## %do.body205
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	32(%rsp), %rsi
	leaq	128(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_146
## %bb.145:                             ## %if.then208
	jmp	LBB53_178
LBB53_146:                              ## %if.end209
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_147
LBB53_147:                              ## %do.cond210
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_148
LBB53_148:                              ## %do.end211
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_149
LBB53_149:                              ## %do.body212
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	8(%rsp), %rsi
	leaq	104(%rsp), %rdx
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_151
## %bb.150:                             ## %if.then215
	jmp	LBB53_178
LBB53_151:                              ## %if.end216
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_152
LBB53_152:                              ## %do.cond217
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_153
LBB53_153:                              ## %do.end218
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_154
LBB53_154:                              ## %if.end219
                                        ##   in Loop: Header=BB53_59 Depth=1
	jmp	LBB53_155
LBB53_155:                              ## %do.cond220
                                        ##   in Loop: Header=BB53_59 Depth=1
	leaq	152(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jne	LBB53_59
## %bb.156:                             ## %do.end223
	jmp	LBB53_157
LBB53_157:                              ## %while.cond224
                                        ## =>This Inner Loop Header: Depth=1
	leaq	32(%rsp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_mbedtls_mpi_cmp_int
	cmpl	$0, %eax
	jge	LBB53_164
## %bb.158:                             ## %while.body227
                                        ##   in Loop: Header=BB53_157 Depth=1
	jmp	LBB53_159
LBB53_159:                              ## %do.body228
                                        ##   in Loop: Header=BB53_157 Depth=1
	movq	232(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_add_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_161
## %bb.160:                             ## %if.then231
	jmp	LBB53_178
LBB53_161:                              ## %if.end232
                                        ##   in Loop: Header=BB53_157 Depth=1
	jmp	LBB53_162
LBB53_162:                              ## %do.cond233
                                        ##   in Loop: Header=BB53_157 Depth=1
	jmp	LBB53_163
LBB53_163:                              ## %do.end234
                                        ##   in Loop: Header=BB53_157 Depth=1
	jmp	LBB53_157
LBB53_164:                              ## %while.end235
	jmp	LBB53_165
LBB53_165:                              ## %while.cond236
                                        ## =>This Inner Loop Header: Depth=1
	movq	232(%rsp), %rsi
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_cmp_mpi
	cmpl	$0, %eax
	jl	LBB53_172
## %bb.166:                             ## %while.body239
                                        ##   in Loop: Header=BB53_165 Depth=1
	jmp	LBB53_167
LBB53_167:                              ## %do.body240
                                        ##   in Loop: Header=BB53_165 Depth=1
	movq	232(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movq	%rsi, %rdi
	callq	_mbedtls_mpi_sub_mpi
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_169
## %bb.168:                             ## %if.then243
	jmp	LBB53_178
LBB53_169:                              ## %if.end244
                                        ##   in Loop: Header=BB53_165 Depth=1
	jmp	LBB53_170
LBB53_170:                              ## %do.cond245
                                        ##   in Loop: Header=BB53_165 Depth=1
	jmp	LBB53_171
LBB53_171:                              ## %do.end246
                                        ##   in Loop: Header=BB53_165 Depth=1
	jmp	LBB53_165
LBB53_172:                              ## %while.end247
	jmp	LBB53_173
LBB53_173:                              ## %do.body248
	movq	248(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	_mbedtls_mpi_copy
	movl	%eax, 228(%rsp)
	cmpl	$0, %eax
	je	LBB53_175
## %bb.174:                             ## %if.then251
	jmp	LBB53_178
LBB53_175:                              ## %if.end252
	jmp	LBB53_176
LBB53_176:                              ## %do.cond253
	jmp	LBB53_177
LBB53_177:                              ## %do.end254
	jmp	LBB53_178
LBB53_178:                              ## %cleanup
	leaq	176(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	152(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	128(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	104(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	200(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	80(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	56(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	32(%rsp), %rdi
	callq	_mbedtls_mpi_free
	leaq	8(%rsp), %rdi
	callq	_mbedtls_mpi_free
	movl	228(%rsp), %eax
	movl	%eax, 260(%rsp)
	movl	$1, 4(%rsp)
LBB53_179:                              ## %cleanup255
	movl	260(%rsp), %eax
	addq	$264, %rsp                      ## imm = 0x108
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4                               ## -- Begin function _ZL26mpi_uint_bigendian_to_hostm
__ZL26mpi_uint_bigendian_to_hostm:      ## @_ZL26mpi_uint_bigendian_to_hostm
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, -8(%rsp)
	movq	-8(%rsp), %rax
	bswapq	%rax
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"0123456789ABCDEF"

.subsections_via_symbols
