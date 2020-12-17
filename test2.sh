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

clang -Wall -Wextra -Werror -fsanitize=address get_next_line_2.c get_next_line.h get_next_line_utils.c GNL_test2.c -D BUFFER_SIZE=2


./a.out > mem_test 2>mem_error

if [ -s "mem_error" ]

then
	
	echo "$blue fsanitize=address $green PASS $reset"
else
	echo "$blue fsanitize=address $orange FAIL $reset"
fi

rm mem_test
rm mem_error

echo ""

