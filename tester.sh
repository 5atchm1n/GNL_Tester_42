# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 00:17:04 by sshakya           #+#    #+#              #
#    Updated: 2020/12/17 05:12:49 by sshakya          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

orange=$'\033[0;33m'
lblue=$'\033[1;34m'
blue=$'\033[34m'
green=$'\033[0;32m'
reset=$'\033[0m'


################################################################################
################################################################################

echo ""
echo ""
echo "$green TESTING GET_NEXT_LINE $reset"


################################################################################
################################################################################

echo ""
echo "$blue BUFFER = $orange 2  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=2

./a.out > test_out/user_output_2

echo "$green test complete $reset"

echo ""

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=2

./a.out > mem_test 2>mem_error_2

if [ ! -s "mem_error_2" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
		rm mem_error_2
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi
	
rm mem_test

echo ""

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 8  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=8

./a.out > test_out/user_output_8

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=8

./a.out > mem_test 2>mem_error_8

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_8
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 16  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=16

./a.out > test_out/user_output_16

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=16

./a.out > mem_test 2>mem_error_16

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_16
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""
################################################################################
###############################################################################

echo "$blue RUNNING BUFFER = $orange 32  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=32

./a.out > test_out/user_output_32

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=32

./a.out > mem_test 2>mem_error_32

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_32
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""
################################################################################
################################################################################

echo ""
echo "$blue BUFFER = $orange 64  $reset"

clang -Wall -Wextra -Werror  -D BUFFER_SIZE=64 get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c

./a.out > test_out/user_output_64

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=64

./a.out > mem_test 2>mem_error_64

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_64
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 128  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=128

./a.out > test_out/user_output_128

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=128

./a.out > mem_test 2>mem_error_128

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_128
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""

################################################################################
################################################################################

echo "$blue BUFFER = $orange 1024  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=1024

./a.out > test_out/user_output_1024

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=1024

./a.out > mem_test 2>mem_error_1024

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_1024
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test

echo ""

################################################################################
################################################################################

echo ""
echo "$green TESTING BONUS $reset"
echo ""

################################################################################
################################################################################



###############################################################################

echo "$blue BONUS = $orange buffer = 2  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=2

./a.out > test_out/user_output_bonus_2

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=2

./a.out > mem_test_bonus 2>mem_error_bonus_2

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_bonus_2
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test_bonus

echo ""
################################################################################
################################################################################

echo "$blue BONUS = $orange buffer = 8  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=8

./a.out > test_out/user_output_bonus_8 2> test_out/user_output_bonus_8

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=8

./a.out > mem_test_bonus 2>mem_error_bonus_8

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_bonus_8
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test_bonus

echo ""
################################################################################
################################################################################

echo "$blue BONUS = $orange buffer = 32  $reset"

clang -Wall -Wextra -Werror get_next_line.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=32

./a.out > test_out/user_output_bonus_32 2> test_out/user_output_bonus_32

echo "$green test complete $reset"

clang -Wall -Wextra -Werror -fsanitize=address get_next_line.c get_next_line.h get_next_line_utils.c GNL_test.c -D BUFFER_SIZE=32

./a.out > mem_test_bonus 2>mem_error_bonus_32

echo ""

if [ ! -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
	rm mem_error_bonus_32
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test_bonus

echo ""
################################################################################
################################################################################



diff -u test_out/user_output_2 test_out/user_output_8 >> test_out/diff_output
diff -u test_out/user_output_2 test_out/user_output_16 >> test_out/diff_output
diff -u test_out/user_output_2 test_out/user_output_32 >> test_out/diff_output
diff -u test_out/user_output_2 test_out/user_output_128 >> test_out/diff_output
diff -u test_out/user_output_2 test_out/user_output_1024 >> test_out/diff_output

diff -u test_out/user_output_2 test_out/user_output_8 >> test_out/diff_output
diff -u test_out/user_output_2 test_out/user_output_1024 >> test_out/diff_output
#echo ""

#echo "$blue checking diff file $orange $reset"

#if [ -s "diff_output" ] 
#then
#	echo "$orange TEST FAILED $reset"
#	echo "check diff_output for info"
#else
#	echo "$green TEST PASSED $reset"
#fi
