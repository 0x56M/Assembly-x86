%macro sys_write 0
		mov eax, 1
		mov edi, 1
		mov esi, msg
		mov edx, MSG_SIZE
		syscall
	%endmacro
