; nasm -f elf64 -g -F dwarf hello.asm -l hello.lst
; ld hello.o -o zzz				(use _start)
; gcc -no-pie hello.o -o zzz	(use main)

section .text
	global main
main:

; General-purpose registers

	mov		rax, 100
	mov		eax, 100
	mov		ax,  100		; Accumulator for operands and results data
	mov		al,  100
	mov		ah,  100

	mov		rbx, 100
	mov		ebx, 100
	mov		bx,  100		; Base register
	mov		bl,  100
	mov		bh,  100

	mov		rcx, 100
	mov		ecx, 100
	mov		cx,  100		; Counter for string and loop operations
	mov		cl,  100
	mov		ch,  100

	mov		rdx, 100
	mov		edx, 100
	mov		dx,  100		; Data Register, I/O pointer
	mov		dl,  100
	mov		dh,  100

	mov		rsi, 100
	mov		esi, 100
	mov		si,  100		; Source Index
	mov		sil, 100

	mov		rdi, 100
	mov		edi, 100
	mov		di,  100		; Destination Index
	mov		dil, 100

	mov		rbp, 100
	mov		ebp, 100
	mov		bp,  100		; Base Pointer, pointer to data on stack
	mov		bpl, 100

	mov		rsp, 100
	mov		esp, 100
	mov		sp,  100		; Stack Pointer
	mov		spl, 100

	mov		r8,  100		; 8 bytes
	mov		r8d, 100		; Double word = 4 bytes
	mov		r8w, 100		; Word = 2 bytes
	mov		r8b, 100		; Byte

;	...		...

	mov		r15,  100
	mov		r15d, 100
	mov		r15w, 100
	mov		r15b, 100



; Segment Registers

;	CS, DS, SS, ES, FS, GS		; Hold 16-bit segment selectors

; In 64-bit mode CS, DS, ES, SS are treated as if each segment base is 0,
; regardless of the value of the associated segment descriptor base.
; This creates a flat address space for code, data, and stack.



; Flags register

; The 32-bit EFLAGS register contains a group of status flags, a control flag,
; and a group of system flags.
; There are no instructions that allow the whole register to be examined or
; modified directly.

; The status flags of the EFLAGS register:
; CF - Carry flag
; PF - Parity flag
; AF - Auxiliary Carry flag
; ZF - Zero flag
; SF - Sign flag
; OF - Overflow flag

; The control flag of the EFLAGS register:
; DF - direction flag

;The system flags and IOPL field in the EFLAGS register:
; TF - Trap flag
; VM - Virtual-8086 mode flag
; ...
; They should not be modified by application programs.

; In 64-bit mode, EFLAGS is extended to 64 bits and called RFLAGS.
; The upper 32 bits of RFLAGS register is reserved.
; The lower 32 bits of RFLAGS is the same as EFLAGS.



; Instruction pointer

; EIP - instruction pointer
; RIP

; The instruction pointer register contains the offset in the current code
; segment for the next instruction to be executed.
; The EIP register cannot be accessed directly by software
; In 64-bit mode, the RIP register becomes the instruction pointer.
; This register holds the 64-bit offset of the next instruction to be executed.
