				global		ft_strcpy

				section		.text
ft_strcpy:		mov			rax, rdi				; cpy dest to ret
				mov			r8, 0					; init i as 0

.loop:			cmp			BYTE [rsi + r8], 0		; if (*src == 0)
				je			return					; if yes then return
				mov			r9, [rsi + r8]			; copy *(src + i) to temp
				mov			[rdi + r8], r9			; copy temp to *(dest + i)
				inc			r8						; i++
				jmp			.loop

return:			ret
