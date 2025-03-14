.global _start
	.data
uniqstr20: .ascii "P3\n"
	uniqstr20_len = . - uniqstr20
uniqstr23: .ascii " "
	uniqstr23_len = . - uniqstr23
uniqstr22: .ascii "\n255\n"
	uniqstr22_len = . - uniqstr22
uniqstr24: .ascii " "
	uniqstr24_len = . - uniqstr24
uniqstr21: .ascii " "
	uniqstr21_len = . - uniqstr21

truestr: .ascii "true"
	truestr_len = . - truestr
falsestr: .ascii "false"
	falsestr_len = . - falsestr
	.align 2
display: .skip 156
	.text
_start:
	leal -4(%esp), %eax
	movl %eax, display+0
	subl $272, %esp # allocate locals
	call main_uniqstr25
	addl $272, %esp # deallocate locals
_end:               # do not care about clearing the stack
	movl $1, %eax   # _exit system call (check asm/unistd_32.h for the table)
	movl $0, %ebx   # error code 0
	int $0x80       # make system call
main_uniqstr25:
	movl $320, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -0(%eax)
	movl $240, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl $30, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl $1337, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -168(%eax)
	pushl display+84
	movl $30, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $40, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	pushl display+84
	movl $110, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+84
	movl $70, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	pushl display+84
	movl $20, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $130, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl $102, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl $179, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -48(%eax)
	pushl display+84
	movl $20, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -52(%eax)
	pushl display+84
	movl $60, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -56(%eax)
	pushl display+84
	movl $110, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -60(%eax)
	pushl display+84
	movl $23, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -64(%eax)
	pushl display+84
	movl $160, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -68(%eax)
	movl $179, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -72(%eax)
	movl $179, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -76(%eax)
	movl $102, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -80(%eax)
	pushl display+84
	movl $60, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -84(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -88(%eax)
	pushl display+84
	movl $70, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -92(%eax)
	pushl display+84
	movl $20, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -96(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -100(%eax)
	movl $102, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -104(%eax)
	movl $153, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -108(%eax)
	pushl display+84
	movl $28, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -112(%eax)
	pushl display+84
	movl $11, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -116(%eax)
	pushl display+84
	movl $70, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -120(%eax)
	pushl display+84
	movl $9, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -124(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -128(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -132(%eax)
	movl $77, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -136(%eax)
	pushl display+84
	movl $50, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -140(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $100, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -144(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $70, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -148(%eax)
	pushl display+84
	movl $80, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -152(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -156(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -160(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -164(%eax)
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr20, %ecx
	movl $uniqstr20_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -0(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr21, %ecx
	movl $uniqstr21_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -4(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr22, %ecx
	movl $uniqstr22_len, %edx
	int  $0x80
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -176(%eax)
uniqstr130:
	movl display+0, %eax
	movl -176(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr131
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -172(%eax)
uniqstr132:
	movl display+0, %eax
	movl -172(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr133
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -212(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -216(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -220(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -180(%eax)
uniqstr134:
	movl display+0, %eax
	movl -180(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr135
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -200(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -204(%eax)
	movl $255, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -208(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -224(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -228(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -232(%eax)
	pushl display+84
	movl display+0, %eax
	movl -172(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -236(%eax)
	pushl display+84
	movl display+0, %eax
	movl -176(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -240(%eax)
	pushl display+84
	movl $250, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -244(%eax)
	movl display+0, %eax
	movl -236(%eax), %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -184(%eax)
	movl display+0, %eax
	movl -244(%eax), %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -188(%eax)
	pushl display+108
	pushl display+116
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax
	pushl display+120
	pushl display+84
	movl $866, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax
	pushl display+84
	movl $1000, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+120
	movl display+0, %eax
	movl -188(%eax), %eax
	pushl %eax
	pushl display+84
	movl $2, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -236(%eax)
	pushl display+108
	pushl display+120
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -188(%eax), %eax
	pushl %eax
	pushl display+120
	pushl display+84
	movl $866, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax
	pushl display+84
	movl $1000, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -244(%eax)
	pushl display+128
	pushl display+108
	pushl display+108
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+128
	call fp32_sqrt_uniqstr13
	movl display+128, %esp
	addl $4, %esp
	popl display+128

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -184(%eax)
	pushl display+120
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -236(%eax)
	pushl display+120
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -240(%eax)
	pushl display+120
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -244(%eax)
	pushl display+152
	movl $0, %eax
	pushl %eax

	subl $48, %esp
	leal 48(%esp), %eax
	movl %eax, display+152
	call trace_uniqstr19
	movl display+152, %esp
	addl $4, %esp
	popl display+152
	movl display+0, %eax
	movl -212(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -200(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -212(%eax)
	movl display+0, %eax
	movl -216(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -204(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -216(%eax)
	movl display+0, %eax
	movl -220(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -208(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -220(%eax)
	movl display+0, %eax
	movl -180(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -180(%eax)

	jmp uniqstr134
uniqstr135:
	movl display+0, %eax
	movl -212(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -200(%eax)
	movl display+0, %eax
	movl -216(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -204(%eax)
	movl display+0, %eax
	movl -220(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -208(%eax)
	movl display+0, %eax
	movl -200(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr23, %ecx
	movl $uniqstr23_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -204(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr24, %ecx
	movl $uniqstr24_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -208(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp
	pushl $10           # '\n'
	movl $4, %eax       # write system call
	movl $1, %ebx       # stdout
	leal 0(%esp), %ecx  # address of the character
	movl $1, %edx       # one byte
	int  $0x80          # make system call
	addl $4, %esp
	movl display+0, %eax
	movl -172(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -172(%eax)

	jmp uniqstr132
uniqstr133:
	movl display+0, %eax
	movl -176(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -176(%eax)

	jmp uniqstr130
uniqstr131:

	ret
fp32_normalize_uniqstr1:
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr26
	movl $0, %eax
	ret

	jmp uniqstr27
uniqstr26:

uniqstr27:
uniqstr28:
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+80, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl $127, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax

	test %eax, %eax
	jz uniqstr29
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+80, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -4(%eax)

	jmp uniqstr28
uniqstr29:
uniqstr30:
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $16777216, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr31
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+80, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -4(%eax)

	jmp uniqstr30
uniqstr31:
	movl display+80, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr32
	movl $0, %eax
	pushl %eax
	movl $2147483648, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr33
uniqstr32:
	movl $0, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -0(%eax)

uniqstr33:
	movl display+80, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $127, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl display+80, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+80, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+80, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+80, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+80, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	ret

	ret

fp32_from_int_uniqstr2:
	movl display+84, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr34
	pushl display+80
	movl $1, %eax
	pushl %eax
	movl $23, %eax
	pushl %eax
	movl display+84, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+80
	call fp32_normalize_uniqstr1
	movl display+80, %esp
	addl $4, %esp
	popl display+80
	ret

	jmp uniqstr35
uniqstr34:
	pushl display+80
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $23, %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl display+84, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+80
	call fp32_normalize_uniqstr1
	movl display+80, %esp
	addl $4, %esp
	popl display+80
	ret

uniqstr35:

	ret

fp32_sign_uniqstr3:
	movl display+88, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr36
	movl $1, %eax
	ret

	jmp uniqstr37
uniqstr36:
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

uniqstr37:

	ret

fp32_exponent_uniqstr4:
	movl display+92, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr38
	movl display+92, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+92, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr39
uniqstr38:

uniqstr39:
	movl display+92, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $127, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

	ret

fp32_mantissa_uniqstr5:
	movl display+96, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr40
	movl display+96, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+96, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr41
uniqstr40:

uniqstr41:
	movl display+96, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+96, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl display+96, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+96, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+96, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+96, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax

	test %eax, %eax
	jz uniqstr42
	movl $0, %eax
	ret

	jmp uniqstr43
uniqstr42:

uniqstr43:
	movl $8388608, %eax
	pushl %eax
	movl display+96, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	ret

	ret

fp32_to_int_uniqstr6:
	pushl display+88
	movl display+100, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	pushl display+92
	movl display+100, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+96
	movl display+100, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+100, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr44
	movl $0, %eax
	ret

	jmp uniqstr45
uniqstr44:

uniqstr45:
uniqstr46:
	movl display+100, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jne 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr47
	movl display+100, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr48
	movl display+100, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr50
	movl display+100, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -12(%eax)

	jmp uniqstr51
uniqstr50:
	movl display+100, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr52
	movl $0, %eax
	pushl %eax
	movl $2147483648, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

	jmp uniqstr53
uniqstr52:
	movl $2147483647, %eax
	ret

uniqstr53:

uniqstr51:
	movl display+100, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -8(%eax)

	jmp uniqstr49
uniqstr48:
	movl display+100, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+100, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+100, %eax
	popl %ebx
	movl %ebx, -8(%eax)

uniqstr49:

	jmp uniqstr46
uniqstr47:
	movl display+100, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+100, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	ret

	ret

fp32_flip_sign_uniqstr7:
	movl display+104, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr54
	movl display+104, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

	jmp uniqstr55
uniqstr54:
	movl display+104, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	ret

uniqstr55:

	ret

fp32_add_uniqstr8:
	pushl display+88
	movl display+108, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+88
	movl display+108, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	pushl display+92
	movl display+108, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	pushl display+92
	movl display+108, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+96
	movl display+108, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	pushl display+96
	movl display+108, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -28(%eax)
uniqstr56:
	movl display+108, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -20(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr57
	movl display+108, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+108, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -20(%eax)

	jmp uniqstr56
uniqstr57:
uniqstr58:
	movl display+108, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -20(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr59
	movl display+108, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+108, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -16(%eax)

	jmp uniqstr58
uniqstr59:
	movl display+108, %eax
	movl -8(%eax), %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+108, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr60
	movl display+108, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -32(%eax)

	jmp uniqstr61
uniqstr60:
	movl display+108, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+108, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr62
	movl $0, %eax
	pushl %eax
	movl display+108, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl $0, %eax
	pushl %eax
	movl display+108, %eax
	movl -32(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+108, %eax
	popl %ebx
	movl %ebx, -32(%eax)

	jmp uniqstr63
uniqstr62:

uniqstr63:

uniqstr61:
	pushl display+80
	movl display+108, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+108, %eax
	movl -32(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+80
	call fp32_normalize_uniqstr1
	movl display+80, %esp
	addl $4, %esp
	popl display+80
	ret

	ret

fp32_sub_uniqstr9:
	pushl display+108
	movl display+112, %eax
	movl -0(%eax), %eax
	pushl %eax
	pushl display+104
	movl display+112, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+104
	call fp32_flip_sign_uniqstr7
	movl display+104, %esp
	addl $4, %esp
	popl display+104
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	ret

	ret

fp32_mul_uniqstr10:
	pushl display+88
	movl display+116, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+88
	movl display+116, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+92
	movl display+116, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	pushl display+92
	movl display+116, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	pushl display+96
	movl display+116, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	pushl display+96
	movl display+116, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+116, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+116, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+116, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+116, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	movl display+116, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -40(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -48(%eax)
	movl display+116, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -44(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -52(%eax)
	movl display+116, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -40(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -56(%eax)
	movl display+116, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -44(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -60(%eax)
	movl display+116, %eax
	movl -60(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -52(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax
	pushl %eax
	movl display+116, %eax
	movl -56(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -64(%eax)
	movl display+116, %eax
	movl -48(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -52(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+116, %eax
	movl -56(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+116, %eax
	movl -64(%eax), %eax
	pushl %eax
	movl $16777216, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -68(%eax)
	movl display+116, %eax
	movl -64(%eax), %eax
	pushl %eax
	movl $16777216, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+116, %eax
	popl %ebx
	movl %ebx, -64(%eax)
	pushl display+80
	movl display+116, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -20(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+116, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+116, %eax
	movl -24(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+116, %eax
	movl -68(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+80
	call fp32_normalize_uniqstr1
	movl display+80, %esp
	addl $4, %esp
	popl display+80
	ret

	ret

fp32_div_uniqstr11:
	pushl display+88
	movl display+120, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+88
	movl display+120, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+88
	call fp32_sign_uniqstr3
	movl display+88, %esp
	addl $4, %esp
	popl display+88

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+92
	movl display+120, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	pushl display+92
	movl display+120, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+92
	call fp32_exponent_uniqstr4
	movl display+92, %esp
	addl $4, %esp
	popl display+92

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	pushl display+96
	movl display+120, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	pushl display+96
	movl display+120, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+96
	call fp32_mantissa_uniqstr5
	movl display+96, %esp
	addl $4, %esp
	popl display+96

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+120, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr64
	movl $0, %eax
	ret

	jmp uniqstr65
uniqstr64:

uniqstr65:
	movl display+120, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+120, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+120, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -24(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $24, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+120, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	je 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr66
	movl $1, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+120, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr68
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -40(%eax)

	jmp uniqstr69
uniqstr68:

uniqstr69:

	jmp uniqstr67
uniqstr66:

uniqstr67:
uniqstr70:
	movl display+120, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $8388608, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr71
	movl display+120, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+120, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr72
	movl display+120, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+120, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -28(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+120, %eax
	popl %ebx
	movl %ebx, -40(%eax)

	jmp uniqstr73
uniqstr72:

uniqstr73:

	jmp uniqstr70
uniqstr71:
	pushl display+80
	movl display+120, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -20(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+120, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl display+120, %eax
	movl -36(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+80
	call fp32_normalize_uniqstr1
	movl display+80, %esp
	addl $4, %esp
	popl display+80
	ret

	ret

fp32_abs_uniqstr12:
	movl display+124, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr74
	movl display+124, %eax
	movl -0(%eax), %eax
	ret

	jmp uniqstr75
uniqstr74:
	movl display+124, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $1073741824, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	ret

uniqstr75:

	ret

fp32_sqrt_uniqstr13:
	movl display+128, %eax
	movl -0(%eax), %eax

	pushl %eax
	movl display+128, %eax
	popl %ebx
	movl %ebx, -4(%eax)
uniqstr76:
	movl $1, %eax

	test %eax, %eax
	jz uniqstr77
	movl display+128, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+128, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+120
	pushl display+108
	movl display+128, %eax
	movl -4(%eax), %eax
	pushl %eax
	pushl display+120
	movl display+128, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+128, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+84
	movl $2, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+128, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl display+128, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+128, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+128, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+128, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax
	pushl %eax
	movl display+128, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+128, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+128, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+128, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	orl %ebx, %eax

	test %eax, %eax
	jz uniqstr78
	movl display+128, %eax
	movl -4(%eax), %eax
	ret

	jmp uniqstr79
uniqstr78:

uniqstr79:

	jmp uniqstr76
uniqstr77:

	ret

rand_uniqstr14:
	movl display+0, %eax
	movl -168(%eax), %eax
	pushl %eax
	movl $25173, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $13849, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $65536, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %edx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -168(%eax)
	movl display+0, %eax
	movl -168(%eax), %eax
	ret

	ret

fp32_rand_uniqstr15:
	pushl display+120
	pushl display+84
	movl $2, %eax
	pushl %eax
	pushl display+132

	subl $0, %esp
	leal -4(%esp), %eax
	movl %eax, display+132
	call rand_uniqstr14
	movl display+132, %esp
	addl $4, %esp
	popl display+132
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $32768, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax
	pushl display+84
	movl $32768, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	ret

	ret

point_inside_rectangle_uniqstr16:
	pushl display+112
	movl display+140, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+140, %eax
	movl -8(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:
	pushl %eax
	pushl display+112
	movl display+140, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+140, %eax
	movl -16(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax
	pushl %eax
	pushl display+112
	movl display+140, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+140, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax
	pushl %eax
	pushl display+112
	movl display+140, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+140, %eax
	movl -20(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	andl %ebx, %eax
	ret

	ret

ray_box_intersect_uniqstr17:
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)
	pushl display+112
	pushl display+124
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+124
	call fp32_abs_uniqstr12
	movl display+124, %esp
	addl $4, %esp
	popl display+124
	pushl %eax
	movl $981668463, %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr80
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr82
	movl display+144, %eax
	movl -0(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)

	jmp uniqstr83
uniqstr82:
	movl display+144, %eax
	movl -12(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $1, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)

uniqstr83:
	pushl display+120
	pushl display+112
	movl display+144, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr84
	pushl display+108
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -248(%eax)
	pushl display+108
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -252(%eax)
	pushl display+108
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -256(%eax)
	pushl display+140
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -20(%eax), %eax
	pushl %eax

	subl $24, %esp
	leal 44(%esp), %eax
	movl %eax, display+140
	call point_inside_rectangle_uniqstr16
	movl display+140, %esp
	addl $4, %esp
	popl display+140

	test %eax, %eax
	jz uniqstr86
	movl $1, %eax
	ret

	jmp uniqstr87
uniqstr86:

uniqstr87:

	jmp uniqstr85
uniqstr84:

uniqstr85:

	jmp uniqstr81
uniqstr80:

uniqstr81:
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)
	pushl display+112
	pushl display+124
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+124
	call fp32_abs_uniqstr12
	movl display+124, %esp
	addl $4, %esp
	popl display+124
	pushl %eax
	movl $981668463, %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr88
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr90
	movl display+144, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)

	jmp uniqstr91
uniqstr90:
	movl display+144, %eax
	movl -16(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $1, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)

uniqstr91:
	pushl display+120
	pushl display+112
	movl display+144, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr92
	pushl display+108
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -248(%eax)
	pushl display+108
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -252(%eax)
	pushl display+108
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -256(%eax)
	pushl display+140
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -20(%eax), %eax
	pushl %eax

	subl $24, %esp
	leal 44(%esp), %eax
	movl %eax, display+140
	call point_inside_rectangle_uniqstr16
	movl display+140, %esp
	addl $4, %esp
	popl display+140

	test %eax, %eax
	jz uniqstr94
	movl $1, %eax
	ret

	jmp uniqstr95
uniqstr94:

uniqstr95:

	jmp uniqstr93
uniqstr92:

uniqstr93:

	jmp uniqstr89
uniqstr88:

uniqstr89:
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)
	pushl display+112
	pushl display+124
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+124
	call fp32_abs_uniqstr12
	movl display+124, %esp
	addl $4, %esp
	popl display+124
	pushl %eax
	movl $981668463, %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr96
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr98
	movl display+144, %eax
	movl -8(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)

	jmp uniqstr99
uniqstr98:
	movl display+144, %eax
	movl -20(%eax), %eax

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+84
	movl $1, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)

uniqstr99:
	pushl display+120
	pushl display+112
	movl display+144, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+144, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr100
	pushl display+108
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -248(%eax)
	pushl display+108
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -252(%eax)
	pushl display+108
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -256(%eax)
	pushl display+140
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+144, %eax
	movl -16(%eax), %eax
	pushl %eax

	subl $24, %esp
	leal 44(%esp), %eax
	movl %eax, display+140
	call point_inside_rectangle_uniqstr16
	movl display+140, %esp
	addl $4, %esp
	popl display+140

	test %eax, %eax
	jz uniqstr102
	movl $1, %eax
	ret

	jmp uniqstr103
uniqstr102:

uniqstr103:

	jmp uniqstr101
uniqstr100:

uniqstr101:

	jmp uniqstr97
uniqstr96:

uniqstr97:
	movl $0, %eax
	ret

	ret

ray_sphere_intersect_uniqstr18:
	pushl display+112
	movl display+148, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	pushl display+112
	movl display+148, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+112
	movl display+148, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	pushl display+108
	pushl display+108
	pushl display+116
	movl display+148, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	movl display+148, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	movl display+148, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	pushl display+108
	pushl display+116
	movl display+148, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+112
	pushl display+116
	movl display+148, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -28(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+108
	pushl display+108
	pushl display+116
	movl display+148, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -16(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	movl display+148, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -20(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	movl display+148, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+148, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr104
	movl $0, %eax
	ret

	jmp uniqstr105
uniqstr104:

uniqstr105:
	pushl display+112
	movl display+148, %eax
	movl -28(%eax), %eax
	pushl %eax
	pushl display+128
	movl display+148, %eax
	movl -32(%eax), %eax
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+128
	call fp32_sqrt_uniqstr13
	movl display+128, %esp
	addl $4, %esp
	popl display+128
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112

	pushl %eax
	movl display+148, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+148, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr106
	movl $0, %eax
	ret

	jmp uniqstr107
uniqstr106:

uniqstr107:
	pushl display+108
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -36(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -248(%eax)
	pushl display+108
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -36(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -252(%eax)
	pushl display+108
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+148, %eax
	movl -36(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -256(%eax)
	pushl display+120
	pushl display+112
	movl display+148, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+148, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -260(%eax)
	pushl display+120
	pushl display+112
	movl display+148, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+148, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -264(%eax)
	pushl display+120
	pushl display+112
	movl display+148, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl display+148, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -268(%eax)
	movl $1, %eax
	ret

	ret

trace_uniqstr19:
	movl display+152, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr108
	movl display+0, %eax
	movl -200(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -200(%eax)
	movl display+0, %eax
	movl -204(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -204(%eax)
	movl display+0, %eax
	movl -208(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -208(%eax)
	ret

	jmp uniqstr109
uniqstr108:

uniqstr109:
	pushl display+84
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+144
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -32(%eax), %eax
	pushl %eax

	subl $32, %esp
	leal 52(%esp), %eax
	movl %eax, display+144
	call ray_box_intersect_uniqstr17
	movl display+144, %esp
	addl $4, %esp
	popl display+144

	test %eax, %eax
	jz uniqstr110
	movl display+0, %eax
	movl -36(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+0, %eax
	movl -40(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+0, %eax
	movl -44(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	movl display+0, %eax
	movl -260(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+0, %eax
	movl -264(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+0, %eax
	movl -268(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+0, %eax
	movl -248(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+0, %eax
	movl -252(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	movl display+0, %eax
	movl -256(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	pushl display+108
	pushl display+108
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -8(%eax)

	jmp uniqstr111
uniqstr110:

uniqstr111:
	pushl display+144
	movl display+0, %eax
	movl -48(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -52(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -56(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -60(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -64(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -68(%eax), %eax
	pushl %eax

	subl $32, %esp
	leal 52(%esp), %eax
	movl %eax, display+144
	call ray_box_intersect_uniqstr17
	movl display+144, %esp
	addl $4, %esp
	popl display+144

	test %eax, %eax
	jz uniqstr112
	pushl display+108
	pushl display+108
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	pushl display+112
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	orl %ebx, %eax

	test %eax, %eax
	jz uniqstr114
	movl display+152, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+0, %eax
	movl -72(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+0, %eax
	movl -76(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+0, %eax
	movl -80(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	movl display+0, %eax
	movl -260(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+0, %eax
	movl -264(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+0, %eax
	movl -268(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+0, %eax
	movl -248(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+0, %eax
	movl -252(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	movl display+0, %eax
	movl -256(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -20(%eax)

	jmp uniqstr115
uniqstr114:

uniqstr115:

	jmp uniqstr113
uniqstr112:

uniqstr113:
	pushl display+148
	movl display+0, %eax
	movl -84(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -88(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -92(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -96(%eax), %eax
	pushl %eax

	subl $40, %esp
	leal 52(%esp), %eax
	movl %eax, display+148
	call ray_sphere_intersect_uniqstr18
	movl display+148, %esp
	addl $4, %esp
	popl display+148

	test %eax, %eax
	jz uniqstr116
	pushl display+108
	pushl display+108
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	pushl display+112
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	orl %ebx, %eax

	test %eax, %eax
	jz uniqstr118
	movl display+152, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+0, %eax
	movl -100(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+0, %eax
	movl -104(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+0, %eax
	movl -108(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	movl display+0, %eax
	movl -260(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+0, %eax
	movl -264(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+0, %eax
	movl -268(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+0, %eax
	movl -248(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+0, %eax
	movl -252(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	movl display+0, %eax
	movl -256(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -20(%eax)

	jmp uniqstr119
uniqstr118:

uniqstr119:

	jmp uniqstr117
uniqstr116:

uniqstr117:
	pushl display+148
	movl display+0, %eax
	movl -112(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -116(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -120(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -124(%eax), %eax
	pushl %eax

	subl $40, %esp
	leal 52(%esp), %eax
	movl %eax, display+148
	call ray_sphere_intersect_uniqstr18
	movl display+148, %esp
	addl $4, %esp
	popl display+148

	test %eax, %eax
	jz uniqstr120
	pushl display+108
	pushl display+108
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	pushl display+112
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	orl %ebx, %eax

	test %eax, %eax
	jz uniqstr122
	movl display+152, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+0, %eax
	movl -128(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	movl display+0, %eax
	movl -132(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	movl display+0, %eax
	movl -136(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	movl display+0, %eax
	movl -260(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+0, %eax
	movl -264(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl display+0, %eax
	movl -268(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	movl display+0, %eax
	movl -248(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+0, %eax
	movl -252(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	movl display+0, %eax
	movl -256(%eax), %eax

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -20(%eax)

	jmp uniqstr123
uniqstr122:

uniqstr123:

	jmp uniqstr121
uniqstr120:

uniqstr121:
	pushl display+148
	movl display+0, %eax
	movl -140(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -144(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -148(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -152(%eax), %eax
	pushl %eax

	subl $40, %esp
	leal 52(%esp), %eax
	movl %eax, display+148
	call ray_sphere_intersect_uniqstr18
	movl display+148, %esp
	addl $4, %esp
	popl display+148

	test %eax, %eax
	jz uniqstr124
	pushl display+108
	pushl display+108
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -248(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -224(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -252(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -228(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+112
	movl display+0, %eax
	movl -256(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -232(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+152, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	pushl display+112
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:
	pushl %eax
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:
	movl %eax, %ebx
	popl %eax
	orl %ebx, %eax

	test %eax, %eax
	jz uniqstr126
	ret

	jmp uniqstr127
uniqstr126:

uniqstr127:

	jmp uniqstr125
uniqstr124:

uniqstr125:
	movl display+152, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jge 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr128
	movl display+0, %eax
	movl -200(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -36(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -200(%eax)
	movl display+0, %eax
	movl -204(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -40(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -204(%eax)
	movl display+0, %eax
	movl -208(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -44(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -208(%eax)
	movl display+152, %eax
	movl -12(%eax), %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -224(%eax)
	movl display+152, %eax
	movl -16(%eax), %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -228(%eax)
	movl display+152, %eax
	movl -20(%eax), %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -232(%eax)
	pushl display+116
	pushl display+84
	movl $2, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax
	pushl display+108
	pushl display+108
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -24(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -28(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+152, %eax
	movl -32(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -184(%eax)
	pushl display+108
	pushl display+112
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+152, %eax
	movl -24(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+120
	pushl display+136

	subl $0, %esp
	leal -4(%esp), %eax
	movl %eax, display+136
	call fp32_rand_uniqstr15
	movl display+136, %esp
	addl $4, %esp
	popl display+136
	pushl %eax
	pushl display+84
	movl $12, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -236(%eax)
	pushl display+108
	pushl display+112
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+152, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+120
	pushl display+136

	subl $0, %esp
	leal -4(%esp), %eax
	movl %eax, display+136
	call fp32_rand_uniqstr15
	movl display+136, %esp
	addl $4, %esp
	popl display+136
	pushl %eax
	pushl display+84
	movl $12, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -240(%eax)
	pushl display+108
	pushl display+112
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	pushl display+116
	movl display+152, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $8, %esp
	leal 12(%esp), %eax
	movl %eax, display+112
	call fp32_sub_uniqstr9
	movl display+112, %esp
	addl $4, %esp
	popl display+112
	pushl %eax
	pushl display+120
	pushl display+136

	subl $0, %esp
	leal -4(%esp), %eax
	movl %eax, display+136
	call fp32_rand_uniqstr15
	movl display+136, %esp
	addl $4, %esp
	popl display+136
	pushl %eax
	pushl display+84
	movl $12, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+84
	call fp32_from_int_uniqstr2
	movl display+84, %esp
	addl $4, %esp
	popl display+84
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -244(%eax)
	pushl display+128
	pushl display+108
	pushl display+108
	pushl display+116
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax
	pushl display+116
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax

	subl $72, %esp
	leal 76(%esp), %eax
	movl %eax, display+116
	call fp32_mul_uniqstr10
	movl display+116, %esp
	addl $4, %esp
	popl display+116
	pushl %eax

	subl $40, %esp
	leal 44(%esp), %eax
	movl %eax, display+108
	call fp32_add_uniqstr8
	movl display+108, %esp
	addl $4, %esp
	popl display+108
	pushl %eax

	subl $12, %esp
	leal 12(%esp), %eax
	movl %eax, display+128
	call fp32_sqrt_uniqstr13
	movl display+128, %esp
	addl $4, %esp
	popl display+128

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -184(%eax)
	pushl display+120
	movl display+0, %eax
	movl -236(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -236(%eax)
	pushl display+120
	movl display+0, %eax
	movl -240(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -240(%eax)
	pushl display+120
	movl display+0, %eax
	movl -244(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -184(%eax), %eax
	pushl %eax

	subl $44, %esp
	leal 48(%esp), %eax
	movl %eax, display+120
	call fp32_div_uniqstr11
	movl display+120, %esp
	addl $4, %esp
	popl display+120

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -244(%eax)
	pushl display+152
	movl display+152, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax

	subl $48, %esp
	leal 48(%esp), %eax
	movl %eax, display+152
	call trace_uniqstr19
	movl display+152, %esp
	addl $4, %esp
	popl display+152

	jmp uniqstr129
uniqstr128:
	movl display+0, %eax
	movl -200(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -200(%eax)
	movl display+0, %eax
	movl -204(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -204(%eax)
	movl display+0, %eax
	movl -208(%eax), %eax
	pushl %eax
	movl $102, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $255, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -208(%eax)

uniqstr129:

	ret



print_int32:
	movl 4(%esp), %eax  # the number to print
	cdq
	xorl %edx, %eax
	subl %edx, %eax     # abs(%eax)
	pushl $10           # base 10
	movl %esp, %ecx     # buffer for the string to print
	subl $16, %esp      # max 10 digits for a 32-bit number (keep %esp dword-aligned)
0:	xorl %edx, %edx     #     %edx = 0
	divl 16(%esp)       #     %eax = %edx:%eax/10 ; %edx = %edx:%eax % 10
	decl %ecx           #     allocate one more digit
	addb $48, %dl       #     %edx += '0'       # 0,0,0,0,0,0,0,0,0,0,'1','2','3','4','5','6'
	movb %dl, (%ecx)    #     store the digit   # ^                   ^                    ^
	test %eax, %eax     #                       # %esp                %ecx (after)         %ecx (before)
	jnz 0b              # until %eax==0         #                     <----- %edx = 6 ----->
	cmp %eax, 24(%esp)  # if the number is negative
	jge 0f
	decl %ecx           # allocate one more character
	movb $45, 0(%ecx)   # '-'
0:	movl $4, %eax       # write system call
	movl $1, %ebx       # stdout
	leal 16(%esp), %edx # the buffer to print
	subl %ecx, %edx     # number of digits
	int $0x80           # make system call
	addl $20, %esp      # deallocate the buffer
	ret

