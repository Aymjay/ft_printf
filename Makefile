# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: darabi <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/30 18:19:45 by darabi            #+#    #+#              #
#    Updated: 2015/12/12 17:01:27 by darabi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRCS =  ft_printf.c \
		precision.c mask_unicode.c width.c null_char.c wstr_precision.c\
		flags/flags.c flags/type_flags.c flags/checking_for.c n_func.c\
		conv/applying.c conv/conversion.c conv/zero_conv.c\
		alloc/ft_alloc.c alloc/to_str.c libft/ft_atoi.c alloc/ft_del_str.c\
		libft/ft_strncpy.c libft/ft_strcmp.c libft/ft_putstr.c color_part_two.c \
		libft/ft_strcpy.c libft/ft_strlen.c libft/ft_strdup.c \
		test/h_test.c test/jz_test.c test/l_test.c test/basic_test.c \
		itoa/ft_itoa_ll.c itoa/reverse.c libft/ft_strwdup.c color.c \

OB = 	type_flags.o applying.o basic_test.o checking_for.o conversion.o \
		flags.o ft_alloc.o ft_atoi.o mask_unicode.o n_func.o\
		ft_printf.o ft_strcmp.o ft_strcpy.o to_str.o wstr_precision.o\
		ft_strdup.o ft_strlen.o ft_strncpy.o h_test.o jz_test.o l_test.o precision.o \
		reverse.o width.o ft_itoa_ll.o null_char.o zero_conv.o ft_strwdup.o color.o \
		ft_putstr.o color_part_two.o ft_del_str.o\

FLAGS = -Werror -Wall -Wextra

$(NAME):
		gcc -c $(FLAGS) $(SRCS)
		ar rc $(NAME) $(OB)
		ranlib $(NAME)

all: $(NAME)

clean:
	rm -f $(OB)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY : all clean fclean re
