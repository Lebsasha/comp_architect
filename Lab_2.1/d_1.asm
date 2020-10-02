	.file	"main.cpp"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.cpp"
	.loc 1 2 1
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 3 5
	movl	$3, -80(%rbp)
	movl	$4, -76(%rbp)
	movl	$5, -72(%rbp)
	movl	$1, -68(%rbp)
	.loc 1 4 6
	leaq	-80(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 5 6
	leaq	-80(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -32(%rbp)
	.loc 1 6 5
	movl	-80(%rbp), %eax
	movl	%eax, -12(%rbp)
.L6:
	.loc 1 7 9
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L2
.LBB2:
.LBB3:
	.loc 1 9 11
	leaq	-80(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
.L5:
	.loc 1 9 11 is_stmt 0 discriminator 1
	movq	-24(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L3
	.loc 1 9 9 is_stmt 1 discriminator 2
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	.loc 1 10 5 discriminator 2
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 10 1 discriminator 2
	cmpl	%eax, -12(%rbp)
	jle	.L4
	.loc 1 12 5
	movq	-56(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -12(%rbp)
.L4:
	.loc 1 9 1 discriminator 3
	addq	$4, -24(%rbp)
	jmp	.L5
.L3:
.LBE3:
	.loc 1 14 3
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	.loc 1 15 1
	addq	$4, -8(%rbp)
.LBE2:
	.loc 1 7 1
	jmp	.L6
.L2:
	.loc 1 17 1
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfc
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF6
	.byte	0x4
	.long	.LASF7
	.long	.LASF8
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF9
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.long	0xcf
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf
	.uleb128 0x3
	.string	"arr"
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.long	0xd6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x3
	.string	"p"
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF0
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF1
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x3
	.string	"x"
	.byte	0x1
	.byte	0x9
	.byte	0x9
	.long	0xf3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.long	.LASF2
	.long	0xf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.long	.LASF3
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.long	.LASF4
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	0xcf
	.long	0xe6
	.uleb128 0x9
	.long	0xe6
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.long	.LASF5
	.uleb128 0xb
	.byte	0x8
	.long	0xcf
	.uleb128 0xc
	.byte	0x8
	.long	0xcf
	.uleb128 0xc
	.byte	0x8
	.long	0xd6
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"/home/alexander/Documents/University/Comp_architect/Lab_2.1"
.LASF2:
	.string	"__for_range"
.LASF7:
	.string	"main.cpp"
.LASF4:
	.string	"__for_end"
.LASF6:
	.string	"GNU C++14 8.3.0 -mtune=generic -march=x86-64 -g"
.LASF9:
	.string	"main"
.LASF5:
	.string	"long unsigned int"
.LASF0:
	.string	"pEnd"
.LASF3:
	.string	"__for_begin"
.LASF1:
	.string	"minn"
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
