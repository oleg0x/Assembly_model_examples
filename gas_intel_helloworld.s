# as gas_intel_helloworld.s -o gas_intel_helloworld.o && ld gas_intel_helloworld.o -o zzz

.intel_syntax

.global _start			# точка входа в программу



.data
msg:
	.ascii "Hello, world! (Intel syntax)\n"
	len = . - msg		# длина строки



.text
_start:
	mov		%eax, 4			# системный вызов write
	mov		%ebx, 1			# поток № 1 — stdout
	mov		%ecx, OFFSET FLAT:msg   # указатель на выводимую строку
							# OFFSET FLAT означает использовать тот адрес,
							# который msg будет иметь во время загрузки
	mov		%edx, len		# длина строки
	int		0x80			# вызов ядра

	mov		%eax, 1			# системный вызов №1 — sys_exit
	xor		%ebx, %ebx		# выход с кодом 0
	int		0x80			# вызов ядра
