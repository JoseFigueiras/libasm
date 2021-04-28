				global		_ft_write
				extern		___error

				section		.text
_ft_write:
				mov			rax, 0x2000004
				syscall
				cmp			rax, 0
				jl			error
				ret
error:
				mov			r8, rax
				call		___error
				mov			[rax], r8
				mov			rax, r8
				ret
