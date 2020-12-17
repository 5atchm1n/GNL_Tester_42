# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    tester.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/07 00:17:04 by sshakya           #+#    #+#              #
#    Updated: 2020/12/17 03:46:42 by sshakya          ###   ########.fr        #
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

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=2

./a.out > test_out/user_output_2

#diff -u test_out/test_output_2 test_out/user_output_2 >> diff_output

echo "$green test complete $reset"

echo ""

if clang -Wall -Wextra -Werror -fsanitize=address get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=2 | grep -q 'ERROR'
then
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi
echo ""

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 8  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=8

./a.out > test_out/user_output_8

diff -u test_out/user_output_8 test_out/user_output_2 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=8 -fsanitize=address | grep -q 'ERROR'
then	
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi

echo ""

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 16  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=16

./a.out > test_out/user_output_16

diff -u test_out/user_output_8 test_out/user_output_16 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=16 -fsanitize=address | grep -q 'ERROR'
then	
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi

echo ""

################################################################################
###############################################################################

echo "$blue RUNNING BUFFER = $orange 32  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=32

./a.out > test_out/user_output_32

diff -u test_out/user_output_16 test_out/user_output_32 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=32 -fsanitize=address | grep -q 'ERROR'
then	
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi

################################################################################
################################################################################

echo ""
echo "$blue BUFFER = $orange 64  $reset"

clang -Wall -Wextra -Werror  -D BUFFER_SIZE=64 get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c

./a.out > test_out/user_output_64

#diff -u test_out/test_output_64 test_out/user_output_64 > diff_output
diff -u test_out/user_output_32 test_out/user_output_64 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror  -D BUFFER_SIZE=64 -fsanitize=address get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c | grep -q 'ERROR'
then
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi

################################################################################
################################################################################

echo "$blue RUNNING BUFFER = $orange 128  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=128

./a.out > test_out/user_output_128

#diff -u test_out/test_output_128 test_out/user_output_128 >> diff_output
diff -u test_out/user_output_64 test_out/user_output_128 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=32 -fsanitize=address | grep -q 'ERROR'
then	
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi

################################################################################
################################################################################

echo "$blue BUFFER = $orange 1024  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=1024

./a.out > test_out/user_output_1024

#diff -u test_out/test_output_1024 test_out/user_output_1024 >> diff_output
diff -u test_out/user_output_128 test_out/user_output_1024 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=1024 -fsanitize=address | grep -q 'ERROR'
then
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi
echo ""

###############################################################################

echo "$blue BONUS = $orange buffer = 2  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=2

./a.out > test_out/user_output_bonus_2

#diff -u test_out/test_output_1024 test_out/user_output_1024 >> diff_output
#diff -u test_out/user_output_128 test_out/user_output_1024 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=2 -fsanitize=address | grep -q 'ERROR'
then
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi
echo ""
################################################################################
################################################################################

echo "$blue BONUS = $orange buffer = 8  $reset"

clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=8

./a.out > test_out/user_output_bonus_8

#diff -u test_out/test_output_1024 test_out/user_output_1024 >> diff_output
diff -u test_out/user_output_bonus_2 test_out/user_output_bonus_8 >> test_out/diff_output

echo "$green test complete $reset"

echo ""
if clang -Wall -Wextra -Werror get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test_bonus.c -D BUFFER_SIZE=8 -fsanitize=address | grep -q 'ERROR'
then
	echo "$blue fsanitize=address $orange FAIL $reset"
else
	echo "$blue fsanitize=address $green PASS $reset"
fi
echo ""
################################################################################
################################################################################
#echo ""

#echo "$blue checking diff file $orange $reset"

#if [ -s "diff_output" ] 
#then
#	echo "$orange TEST FAILED $reset"
#	echo "check diff_output for info"
#else
#	echo "$green TEST PASSED $reset"
#fi
