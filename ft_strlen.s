				global		ft_strlen

				section		.text
ft_strlen:		mov			rax, 0					; init ret value as 0

.loop:			cmp			BYTE [rdi + rax], 0		; if *str == 0
				je			return					; return
				inc			rax						; increment ret value
				jmp			.loop					; restart loop

return:			ret
