# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afeuerst <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/03/08 16:12:19 by afeuerst          #+#    #+#              #
#    Updated: 2019/03/08 16:40:10 by afeuerst         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = mod1
SOURCE = ./sources/main.swift

all: $(NAME)

$(NAME): $(SOURCE)
	xcrun -sdk macosx swiftc $(SOURCE) -o $(NAME)

clean:
	

fclean:
	rm -rf $(NAME)

re: fclean all
