.global _start
	.data
uniqstr15: .ascii "\xE2\x96\x83"
	uniqstr15_len = . - uniqstr15
uniqstr6: .ascii ";"
	uniqstr6_len = . - uniqstr6
uniqstr12: .ascii "m"
	uniqstr12_len = . - uniqstr12
uniqstr16: .ascii "\033[49m\n"
	uniqstr16_len = . - uniqstr16
uniqstr10: .ascii "\033[H"
	uniqstr10_len = . - uniqstr10
uniqstr13: .ascii "\033[38;2;"
	uniqstr13_len = . - uniqstr13
uniqstr9: .ascii "\033[2j\033[?25l"
	uniqstr9_len = . - uniqstr9
uniqstr11: .ascii "\033[48;2;"
	uniqstr11_len = . - uniqstr11
uniqstr7: .ascii ";"
	uniqstr7_len = . - uniqstr7
uniqstr14: .ascii "m"
	uniqstr14_len = . - uniqstr14

truestr: .ascii "true"
	truestr_len = . - truestr
falsestr: .ascii "false"
	falsestr_len = . - falsestr
	.align 2
display: .skip 52
	.text
_start:
	leal -4(%esp), %eax
	movl %eax, display+0
	subl $24, %esp # allocate locals
	call main_uniqstr17
	addl $24, %esp # deallocate locals
_end:               # do not care about clearing the stack
	movl $1, %eax   # _exit system call (check asm/unistd_32.h for the table)
	movl $0, %ebx   # error code 0
	int $0x80       # make system call
main_uniqstr17:
	movl $16777216, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -0(%eax)
	movl $80, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl $50, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr9, %ecx
	movl $uniqstr9_len, %edx
	int  $0x80
uniqstr44:
	movl $1, %eax

	test %eax, %eax
	jz uniqstr45
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr10, %ecx
	movl $uniqstr10_len, %edx
	int  $0x80
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -20(%eax)
uniqstr46:
	movl display+0, %eax
	movl -20(%eax), %eax
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
	jz uniqstr47
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -16(%eax)
uniqstr48:
	movl display+0, %eax
	movl -16(%eax), %eax
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
	jz uniqstr49
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr11, %ecx
	movl $uniqstr11_len, %edx
	int  $0x80
	pushl display+40
	movl display+0, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl $0, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax

	subl $64, %esp
	leal 68(%esp), %eax
	movl %eax, display+40
	call mainImage_uniqstr8
	movl display+40, %esp
	addl $4, %esp
	popl display+40
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr12, %ecx
	movl $uniqstr12_len, %edx
	int  $0x80
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr13, %ecx
	movl $uniqstr13_len, %edx
	int  $0x80
	pushl display+40
	movl display+0, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax

	subl $64, %esp
	leal 68(%esp), %eax
	movl %eax, display+40
	call mainImage_uniqstr8
	movl display+40, %esp
	addl $4, %esp
	popl display+40
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr14, %ecx
	movl $uniqstr14_len, %edx
	int  $0x80
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr15, %ecx
	movl $uniqstr15_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -16(%eax)

	jmp uniqstr48
uniqstr49:
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr16, %ecx
	movl $uniqstr16_len, %edx
	int  $0x80
	movl display+0, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -20(%eax)

	jmp uniqstr46
uniqstr47:
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $24, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $100, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr50
	movl $0, %eax

	pushl %eax
	movl display+0, %eax
	popl %ebx
	movl %ebx, -12(%eax)

	jmp uniqstr51
uniqstr50:

uniqstr51:

	jmp uniqstr44
uniqstr45:

	ret
sin24_uniqstr1:
	movl display+28, %eax
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
	jz uniqstr18
	movl $1, %eax

	pushl %eax
	movl display+28, %eax
	popl %ebx
	movl %ebx, -4(%eax)

	jmp uniqstr19
uniqstr18:
	movl $0, %eax
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+28, %eax
	popl %ebx
	movl %ebx, -4(%eax)
	movl $0, %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+28, %eax
	popl %ebx
	movl %ebx, -0(%eax)

uniqstr19:
uniqstr20:
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $79060768, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr21
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $105414357, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+28, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr20
uniqstr21:
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $26353589, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr22
	movl display+28, %eax
	movl -4(%eax), %eax
	pushl %eax
	pushl display+32
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $26353589, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+32
	call cos24_uniqstr2
	movl display+32, %esp
	addl $4, %esp
	popl display+32
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	ret

	jmp uniqstr23
uniqstr22:

uniqstr23:
	movl display+28, %eax
	movl -4(%eax), %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $16777216, %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+28, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $131, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $2785856, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	ret

	ret

cos24_uniqstr2:
	movl display+32, %eax
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
	jz uniqstr24
	movl $0, %eax
	pushl %eax
	movl display+32, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+32, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr25
uniqstr24:

uniqstr25:
uniqstr26:
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $79060768, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr27
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $105414357, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+32, %eax
	popl %ebx
	movl %ebx, -0(%eax)

	jmp uniqstr26
uniqstr27:
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $26353589, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr28
	movl $0, %eax
	pushl %eax
	pushl display+28
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $26353589, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $8, %esp
	leal 8(%esp), %eax
	movl %eax, display+28
	call sin24_uniqstr1
	movl display+28, %esp
	addl $4, %esp
	popl display+28
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

	jmp uniqstr29
uniqstr28:

uniqstr29:
	movl $16777216, %eax
	pushl %eax
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+32, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $27, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $8333243, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	ret

	ret

sqrt_uniqstr4:
	movl display+36, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $2147483647, %eax
	pushl %eax
	movl display+36, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr32
	movl $2, %eax
	pushl %eax
	pushl display+36
	movl display+36, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $4, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+36, %eax
	movl -4(%eax), %eax
	pushl %eax

	subl $20, %esp
	leal 24(%esp), %eax
	movl %eax, display+36
	call sqrt_uniqstr4
	movl display+36, %esp
	addl $4, %esp
	popl display+36
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	ret

	jmp uniqstr33
uniqstr32:

uniqstr33:
	movl display+36, %eax
	movl -4(%eax), %eax

	pushl %eax
	movl display+36, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl display+36, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+36, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+36, %eax
	popl %ebx
	movl %ebx, -16(%eax)
uniqstr34:
	movl $1, %eax

	test %eax, %eax
	jz uniqstr35
	movl display+36, %eax
	movl -8(%eax), %eax

	pushl %eax
	movl display+36, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	movl display+36, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+36, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl display+36, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+36, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	pushl display+44
	movl display+36, %eax
	movl -8(%eax), %eax
	pushl %eax
	movl display+36, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+44
	call abs_uniqstr3
	movl display+44, %esp
	addl $4, %esp
	popl display+44
	pushl %eax
	movl $1, %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jle 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr36
	movl display+36, %eax
	movl -8(%eax), %eax
	ret

	jmp uniqstr37
uniqstr36:

uniqstr37:

	jmp uniqstr34
uniqstr35:

	ret
abs_uniqstr3:
	movl display+44, %eax
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
	jz uniqstr30
	movl $0, %eax
	pushl %eax
	movl display+44, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	ret

	jmp uniqstr31
uniqstr30:
	movl display+44, %eax
	movl -0(%eax), %eax
	ret

uniqstr31:

	ret


mainImage_uniqstr8:
	movl $2, %eax
	pushl %eax
	movl display+40, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -8(%eax)
	movl $2, %eax
	pushl %eax
	movl display+40, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -12(%eax)
	pushl display+28
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax

	subl $8, %esp
	leal 8(%esp), %eax
	movl %eax, display+28
	call sin24_uniqstr1
	movl display+28, %esp
	addl $4, %esp
	popl display+28
	pushl %eax
	movl display+40, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -32(%eax)
	pushl display+28
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax

	subl $8, %esp
	leal 8(%esp), %eax
	movl %eax, display+28
	call sin24_uniqstr1
	movl display+28, %esp
	addl $4, %esp
	popl display+28
	pushl %eax
	movl display+40, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -36(%eax)
	pushl display+32
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $2, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax

	subl $4, %esp
	leal 4(%esp), %eax
	movl %eax, display+32
	call cos24_uniqstr2
	movl display+32, %esp
	addl $4, %esp
	popl display+32
	pushl %eax
	movl display+40, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -40(%eax)
	pushl display+28
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax
	movl $4, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax

	subl $8, %esp
	leal 8(%esp), %eax
	movl %eax, display+28
	call sin24_uniqstr1
	movl display+28, %esp
	addl $4, %esp
	popl display+28
	pushl %eax
	movl display+40, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -44(%eax)
	pushl display+28
	movl display+0, %eax
	movl -12(%eax), %eax
	pushl %eax

	subl $8, %esp
	leal 8(%esp), %eax
	movl %eax, display+28
	call sin24_uniqstr1
	movl display+28, %esp
	addl $4, %esp
	popl display+28
	pushl %eax
	movl display+40, %eax
	movl -12(%eax), %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -48(%eax)
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $6, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	pushl display+48
	pushl display+36
	movl display+40, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -36(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $20, %esp
	leal 24(%esp), %eax
	movl %eax, display+36
	call sqrt_uniqstr4
	movl display+36, %esp
	addl $4, %esp
	popl display+36
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $100, %eax
	pushl %eax
	movl $10000, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+48
	call CLAMP_uniqstr5
	movl display+48, %esp
	addl $4, %esp
	popl display+48
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -52(%eax)
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $6, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	pushl display+48
	pushl display+36
	movl display+40, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -32(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -40(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $20, %esp
	leal 24(%esp), %eax
	movl %eax, display+36
	call sqrt_uniqstr4
	movl display+36, %esp
	addl $4, %esp
	popl display+36
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $100, %eax
	pushl %eax
	movl $10000, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+48
	call CLAMP_uniqstr5
	movl display+48, %esp
	addl $4, %esp
	popl display+48
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -56(%eax)
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $6, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	pushl display+48
	pushl display+36
	movl display+40, %eax
	movl -44(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -44(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -48(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -48(%eax), %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax

	subl $20, %esp
	leal 24(%esp), %eax
	movl %eax, display+36
	call sqrt_uniqstr4
	movl display+36, %esp
	addl $4, %esp
	popl display+36
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $100, %eax
	pushl %eax
	movl $10000, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+48
	call CLAMP_uniqstr5
	movl display+48, %esp
	addl $4, %esp
	popl display+48
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -60(%eax)
	movl display+40, %eax
	movl -52(%eax), %eax
	pushl %eax
	movl display+40, %eax
	movl -56(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -60(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl $22, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	subl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -28(%eax)
	movl $255, %eax
	pushl %eax
	movl $17, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -16(%eax)
	movl $255, %eax
	pushl %eax
	movl $8, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl display+40, %eax
	movl -28(%eax), %eax
	pushl %eax
	movl display+0, %eax
	movl -0(%eax), %eax
	movl %eax, %ebx
	popl %eax
	addl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	movl %eax, %ebx
	popl %eax
	imull %ebx, %eax
	pushl %eax
	movl $10, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax
	pushl %eax
	movl $4096, %eax
	movl %eax, %ebx
	popl %eax
	cdq
	idivl %ebx, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -20(%eax)
	movl $255, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -24(%eax)
	movl display+40, %eax
	movl -28(%eax), %eax
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
	jz uniqstr42
	movl $0, %eax

	pushl %eax
	movl display+40, %eax
	popl %ebx
	movl %ebx, -24(%eax)

	jmp uniqstr43
uniqstr42:

uniqstr43:
	pushl display+48
	movl display+40, %eax
	movl -16(%eax), %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl $255, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+48
	call CLAMP_uniqstr5
	movl display+48, %esp
	addl $4, %esp
	popl display+48

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr6, %ecx
	movl $uniqstr6_len, %edx
	int  $0x80
	pushl display+48
	movl display+40, %eax
	movl -20(%eax), %eax
	pushl %eax
	movl $0, %eax
	pushl %eax
	movl $255, %eax
	pushl %eax

	subl $12, %esp
	leal 20(%esp), %eax
	movl %eax, display+48
	call CLAMP_uniqstr5
	movl display+48, %esp
	addl $4, %esp
	popl display+48

	pushl %eax
	call print_int32
	addl $4, %esp
	movl $4, %eax
	movl $1, %ebx
	movl $uniqstr7, %ecx
	movl $uniqstr7_len, %edx
	int  $0x80
	movl display+40, %eax
	movl -24(%eax), %eax

	pushl %eax
	call print_int32
	addl $4, %esp

	ret
CLAMP_uniqstr5:
	movl display+48, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+48, %eax
	movl -8(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jg 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr38
	movl display+48, %eax
	movl -8(%eax), %eax
	ret

	jmp uniqstr39
uniqstr38:

uniqstr39:
	movl display+48, %eax
	movl -0(%eax), %eax
	pushl %eax
	movl display+48, %eax
	movl -4(%eax), %eax
	movl %eax, %ebx
	popl %eax
	cmp %ebx, %eax
	movl $1, %eax
	jl 1f
	xorl %eax, %eax
1:

	test %eax, %eax
	jz uniqstr40
	movl display+48, %eax
	movl -4(%eax), %eax
	ret

	jmp uniqstr41
uniqstr40:

uniqstr41:
	movl display+48, %eax
	movl -0(%eax), %eax
	ret

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

