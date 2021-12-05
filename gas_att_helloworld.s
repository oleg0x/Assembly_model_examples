# as gas_att_helloworld.s -o gas_att_helloworld.o && ld gas_att_helloworld.o -o zzz

.global _start



.data
msg:
	.ascii "Hello, world! (AT&T syntax)\n"		# inline ascii string
	len = . - msg		# assign (current address - address of msg start) to 'len'



.text
_start:
	movl	$4, %eax		# code for "write" syscall
	movl	$1, %ebx		# file descriptor for stdout (1st arg)
	movl	$msg, %ecx		# address of msg string (2nd arg)
	movl	$len, %edx		# length (3rd arg)
	int		$0x80			# interrupt with location 0x80, which invokes the kernel's system call procedure

	movl	$1, %eax		# "exit"
	movl	$0, %ebx		# 0 for success
	int		$0x80
