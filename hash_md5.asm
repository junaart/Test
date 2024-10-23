	format elf64

	public _start

	extrn MD5

	include "func.asm"

	section '.data' writable

	buffer db "qwerty",0

	section '.bss' writable

	hash rb 100

	section '.text' executable

_start:
	mov rdi, buffer
	mov rsi, 6
	mov rdx, hash
	cinvoke  MD5

	mov rsi, hash
	call print_str
	call new_line
	call exit
