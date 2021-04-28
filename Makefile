BIN =		libasm.a

INCDIR =	./includes

SRCS =		ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS =		$(SRCS:.s=.o)

%.o:		%.s
	nasm -f elf64 $< -o $@

$(BIN):	$(OBJS)
	ar rcs $(BIN) $(OBJS)

all:		$(BIN)
	
clean:
	rm -f *.o

fclean: clean
	rm -f $(BIN)
	rm -f test

re: fclean all

test: re
	gcc main.c $(BIN) -I$(INCDIR) -o test
	./test
