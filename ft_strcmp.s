				global		_ft_strcmp

				section		.text
_ft_strcmp:
				mov			r8, 0
.loop:
				cmp			BYTE [rdi + r8], 0
				je			return
				mov			r9b, BYTE [rdi + r8]
				cmp			r9b, BYTE [rsi + r8]
				jne			return
				inc			r8
				jmp			.loop
return:
				mov			r9b, BYTE [rdi + r8]
				mov			r10b, BYTE [rsi + r8]
				cmp			r9b, r10b
				je			equal
				cmp			r9b, r10b
				jg			greater
				jmp			lesser
equal:
				mov			rax, 0
				ret
greater:
				mov			rax, 1
				ret
lesser:
				mov			rax, -1
				ret
