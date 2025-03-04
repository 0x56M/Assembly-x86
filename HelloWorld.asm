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

;Criamos os dois arquivos abaixo que contém o conteúdo das macros que serão lidas pelas diretivas "%include" e chamadas pelo nome digitado, conforme o arquivo acima
;Cada macro ficará em um arquivo diferente

	%macro sys_write 0
		mov eax, 1
		mov edi, 1
		mov esi, msg
		mov edx, MSG_SIZE
		syscall
	%endmacro

	%macro sys_exit 0
		mov eax, 60
		xor edi, edi
		syscall
	%endmacro
