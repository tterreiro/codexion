# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hde-andr <hde-andr@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/11/02 14:42:01 by hde-andr          #+#    #+#              #
#    Updated: 2026/11/02 14:43:43 by hde-andr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = codexion

SRCS = linked_list_util.c input_check.c ./operations/push.c ./operations/r_rotate.c ./operations/rotate.c ./operations/swap.c util.c \
		sort.c sort_util.c pushswap.c init.c

OBJS = $(SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror

%.o: %.c
	gcc -Wall -Wextra -Werror -I. -c $< -o  $@

all: $(NAME)

$(NAME): $(OBJS)
	cc $(CFLAGS) $(OBJS) -o $(NAME)
clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

£.PHONY: all clean fclean re