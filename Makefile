CC = gcc
CFLAGS = -Wall -Wextra -Werror -I./
NAME = libft.a
LIBFT_DIR = ./libft
GNL_DIR = ./get_next_line
PRINTF_DIR = ./ft_printf
SOURCES = $(LIBFT_DIR)/ft_isalnum.c $(LIBFT_DIR)/ft_isascii.c $(LIBFT_DIR)/ft_isdigit.c $(LIBFT_DIR)/ft_isprint.c $(LIBFT_DIR)/ft_strlen.c $(LIBFT_DIR)/ft_tolower.c $(LIBFT_DIR)/ft_toupper.c $(LIBFT_DIR)/ft_isalpha.c $(LIBFT_DIR)/ft_strlcat.c \
$(LIBFT_DIR)/ft_strlcpy.c $(LIBFT_DIR)/ft_bzero.c $(LIBFT_DIR)/ft_memcpy.c $(LIBFT_DIR)/ft_memset.c $(LIBFT_DIR)/ft_memmove.c $(LIBFT_DIR)/ft_memchr.c $(LIBFT_DIR)/ft_memcmp.c $(LIBFT_DIR)/ft_strchr.c $(LIBFT_DIR)/ft_strrchr.c $(LIBFT_DIR)/ft_strncmp.c \
$(LIBFT_DIR)/ft_strnstr.c $(LIBFT_DIR)/ft_atoi.c $(LIBFT_DIR)/ft_calloc.c $(LIBFT_DIR)/ft_strdup.c $(LIBFT_DIR)/ft_substr.c $(LIBFT_DIR)/ft_strjoin.c $(LIBFT_DIR)/ft_strtrim.c $(LIBFT_DIR)/ft_split.c $(LIBFT_DIR)/ft_itoa.c $(LIBFT_DIR)/ft_strmapi.c $(LIBFT_DIR)/ft_striteri.c \
$(LIBFT_DIR)/ft_putchar_fd.c $(LIBFT_DIR)/ft_putendl_fd.c $(LIBFT_DIR)/ft_putstr_fd.c $(LIBFT_DIR)/ft_putnbr_fd.c $(PRINTF_DIR)/ft_printf.c $(PRINTF_DIR)/ft_printhexa.c $(LIBFT_DIR)/ft_putchar_fd.c $(LIBFT_DIR)/ft_putnbr_fd.c $(LIBFT_DIR)/ft_putstr_fd.c $(LIBFT_DIR)/ft_toupper.c \
$(PRINTF_DIR)/ft_unsigned_putnbr_fd.c $(PRINTF_DIR)/ft_print_base10.c $(PRINTF_DIR)/ft_print_base16.c $(PRINTF_DIR)/ft_print_characters.c \
$(PRINTF_DIR)/ft_print_percent.c $(PRINTF_DIR)/ft_print_pointer.c $(LIBFT_DIR)/ft_lstnew.c $(LIBFT_DIR)/ft_lstadd_front.c $(LIBFT_DIR)/ft_lstsize.c $(LIBFT_DIR)/ft_lstlast.c $(LIBFT_DIR)/ft_lstadd_back.c $(LIBFT_DIR)/ft_lstdelone.c \
$(LIBFT_DIR)/ft_lstclear.c $(LIBFT_DIR)/ft_lstiter.c $(GNL_DIR)/get_next_line.c $(GNL_DIR)/get_next_line_utils.c
OBJECTS = $(SOURCES:.c=.o)
BONUS_OBJECTS = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	rm -f $(OBJECTS) $(BONUS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re