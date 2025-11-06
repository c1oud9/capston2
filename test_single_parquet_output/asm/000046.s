	.build_version macos, 26, 0
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	_vpx_set_worker_interface ## -- Begin function vpx_set_worker_interface
	.globl	_vpx_set_worker_interface
	.p2align	4
_vpx_set_worker_interface:              ## @vpx_set_worker_interface
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	LBB0_7
## %bb.1:                               ## %lor.lhs.false
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB0_7
## %bb.2:                               ## %lor.lhs.false2
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	LBB0_7
## %bb.3:                               ## %lor.lhs.false4
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB0_7
## %bb.4:                               ## %lor.lhs.false6
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	LBB0_7
## %bb.5:                               ## %lor.lhs.false8
	movq	-16(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	LBB0_7
## %bb.6:                               ## %lor.lhs.false10
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	jne	LBB0_8
LBB0_7:                                 ## %if.then
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_8:                                 ## %if.end
	movq	-16(%rbp), %rsi
	leaq	_g_worker_interface(%rip), %rdi
	movl	$48, %edx
	callq	_memcpy
	movl	$1, -4(%rbp)
LBB0_9:                                 ## %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.private_extern	_vpx_get_worker_interface ## -- Begin function vpx_get_worker_interface
	.globl	_vpx_get_worker_interface
	.p2align	4
_vpx_get_worker_interface:              ## @vpx_get_worker_interface
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_g_worker_interface(%rip), %rax
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function init
_init:                                  ## @init
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	movl	$48, %edx
	callq	_memset
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function reset
_reset:                                 ## @reset
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$-1431655766, -20(%rbp)         ## imm = 0xAAAAAAAA
	movl	$1, -20(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, 40(%rax)
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jae	LBB3_13
## %bb.1:                               ## %if.then
	movl	$1, %edi
	movl	$96, %esi
	callq	_vpx_calloc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB3_3
## %bb.2:                               ## %if.then3
	movl	$0, -4(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB3_17
LBB3_3:                                 ## %if.end
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_pthread_mutex_init
	cmpl	$0, %eax
	je	LBB3_5
## %bb.4:                               ## %if.then6
	jmp	LBB3_11
LBB3_5:                                 ## %if.end7
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_pthread_cond_init
	cmpl	$0, %eax
	je	LBB3_7
## %bb.6:                               ## %if.then11
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_destroy
	jmp	LBB3_11
LBB3_7:                                 ## %if.end15
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_lock
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$88, %rdi
	movq	-16(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	_thread_loop(%rip), %rdx
	callq	_pthread_create
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB3_9
## %bb.8:                               ## %if.then23
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
LBB3_9:                                 ## %if.end25
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_unlock
	cmpl	$0, -20(%rbp)
	jne	LBB3_12
## %bb.10:                              ## %if.then30
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_destroy
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	callq	_pthread_cond_destroy
LBB3_11:                                ## %Error
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_vpx_free
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movl	$0, -4(%rbp)
	movl	$1, -24(%rbp)
	jmp	LBB3_17
LBB3_12:                                ## %if.end39
	jmp	LBB3_16
LBB3_13:                                ## %if.else
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jbe	LBB3_15
## %bb.14:                              ## %if.then42
	movq	-16(%rbp), %rdi
	callq	_sync
	movl	%eax, -20(%rbp)
LBB3_15:                                ## %if.end44
	jmp	LBB3_16
LBB3_16:                                ## %if.end45
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -24(%rbp)
LBB3_17:                                ## %cleanup
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function sync
_sync:                                  ## @sync
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	_change_state
	movq	-8(%rbp), %rax
	cmpl	$0, 40(%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function launch
_launch:                                ## @launch
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$2, %esi
	callq	_change_state
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function execute
_execute:                               ## @execute
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	LBB6_2
## %bb.1:                               ## %if.then
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rsi
	callq	*%rax
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	movq	-8(%rbp), %rax
	orl	40(%rax), %ecx
	movl	%ecx, 40(%rax)
LBB6_2:                                 ## %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function end
_end:                                   ## @end
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	LBB7_2
## %bb.1:                               ## %if.then
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	_change_state
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	88(%rax), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	_pthread_join
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_destroy
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	callq	_pthread_cond_destroy
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_vpx_free
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
LBB7_2:                                 ## %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function thread_loop
_thread_loop:                           ## @thread_loop
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$-6148914691236517206, %rax     ## imm = 0xAAAAAAAAAAAAAAAA
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	$-1431655766, -20(%rbp)         ## imm = 0xAAAAAAAA
	movl	$0, -20(%rbp)
LBB8_1:                                 ## %while.cond
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_3 Depth 2
	cmpl	$0, -20(%rbp)
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	LBB8_2
	jmp	LBB8_11
LBB8_2:                                 ## %while.body
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_lock
LBB8_3:                                 ## %while.cond1
                                        ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	LBB8_5
## %bb.4:                               ## %while.body2
                                        ##   in Loop: Header=BB8_3 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	_pthread_cond_wait
	jmp	LBB8_3
LBB8_5:                                 ## %while.end
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$2, 8(%rax)
	jne	LBB8_7
## %bb.6:                               ## %if.then
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	_execute
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	LBB8_10
LBB8_7:                                 ## %if.else
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	LBB8_9
## %bb.8:                               ## %if.then12
                                        ##   in Loop: Header=BB8_1 Depth=1
	movl	$1, -20(%rbp)
LBB8_9:                                 ## %if.end
                                        ##   in Loop: Header=BB8_1 Depth=1
	jmp	LBB8_10
LBB8_10:                                ## %if.end13
                                        ##   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	callq	_pthread_cond_signal
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_unlock
	jmp	LBB8_1
LBB8_11:                                ## %while.end20
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	addq	$32, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.p2align	4                               ## -- Begin function change_state
_change_state:                          ## @change_state
## %bb.0:                               ## %entry
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB9_2
## %bb.1:                               ## %if.then
	jmp	LBB9_10
LBB9_2:                                 ## %if.end
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_lock
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	jb	LBB9_9
## %bb.3:                               ## %if.then3
	jmp	LBB9_4
LBB9_4:                                 ## %while.cond
                                        ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpl	$1, 8(%rax)
	je	LBB9_6
## %bb.5:                               ## %while.body
                                        ##   in Loop: Header=BB9_4 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	callq	_pthread_cond_wait
	jmp	LBB9_4
LBB9_6:                                 ## %while.end
	cmpl	$1, -12(%rbp)
	je	LBB9_8
## %bb.7:                               ## %if.then11
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$40, %rdi
	callq	_pthread_cond_signal
LBB9_8:                                 ## %if.end16
	jmp	LBB9_9
LBB9_9:                                 ## %if.end17
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	_pthread_mutex_unlock
LBB9_10:                                ## %return
	addq	$16, %rsp
	popq	%rbp
	retq
                                        ## -- End function
	.section	__DATA,__data
	.p2align	3, 0x0                          ## @g_worker_interface
_g_worker_interface:
	.quad	_init
	.quad	_reset
	.quad	_sync
	.quad	_launch
	.quad	_execute
	.quad	_end

.subsections_via_symbols
