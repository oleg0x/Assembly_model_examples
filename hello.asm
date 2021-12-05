; nasm -f elf64 -g -F dwarf hello.asm -l hello.lst
; ld hello.o -o hello				(use _start)
; gcc -no-pie hello.o -o hello		(use main)

; elf64 - Executable and Linkable Format for 64-bit
; dwarf - Debugging With Arbitrary Record Formats
; pie - position independent executable

section .data
	msg1		db		"Hello, World!", 10, 0

	msg2		db		"Alive and Kicking!", 10, 0
	msg2_len 	equ		$ - msg2 - 1



section .bss				; Block Started by Symbol



section .text
	global _start
_start:
;	global main
;main:
	push	rbp				; Пролог функции
	mov		rbp, rsp		; Пролог функции

	mov		rax, 1			; write
	mov		rdi, 1			; to stdout
	mov		rsi, msg1		; string to display
	mov		rdx, 14			; length of the string, without 0
	syscall

	mov		rax, 1			; write
	mov		rdi, 1			; to stdout
	mov		rsi, msg2		; string to display
	mov		rdx, msg2_len	; length of the string, without 0
	syscall

	mov		rsp, rbp		; Эпилог функции
	pop		rbp				; Эпилог функции

	mov		rax, 60			; 60 = exit
	mov		rdi, 0			; 0 = success exit code
	syscall
