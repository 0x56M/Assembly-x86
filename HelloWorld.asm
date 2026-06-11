bits 32

section .rodata
	msg db `Hello, World\n`
	MSG_SIZE equ $ - msg
	
section .text

global _start

_start:

	%include "syscallwrite.asm"
	sys_write
	%include "syscallexit.asm"
	sys_exit
