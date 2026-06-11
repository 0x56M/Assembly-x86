%macro sys_exit 0
		mov eax, 60
		xor edi, edi
		syscall
	%endmacro
