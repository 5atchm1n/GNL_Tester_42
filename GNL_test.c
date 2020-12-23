/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GNL_test.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/04 20:45:53 by sshakya           #+#    #+#             */
/*   Updated: 2020/12/23 01:32:47 by sshakya          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int		main(void)
{
	int		fd;
	char	*line_buff;
	int		k;
	int		i;

	line_buff = NULL;

	printf("\n--------------------------------------------\n");
	printf("\tLorem Ipsum - line as paragraph");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/lorem_ipsum.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 2

	printf("\n--------------------------------------------\n");
	printf("\tNORMAL TEXT");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/normal.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %3d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %3d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 3

	printf("\n--------------------------------------------\n");
	printf("\tANOTHER NORMAL TEXT");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/bar.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %3d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %3d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	// TEST 4

	printf("\n--------------------------------------------\n");
	printf("\tTHIS IS AN EMPTY FILE");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/empty.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 5

	printf("\n--------------------------------------------\n");
	printf("\t64 BIT PARAGRAPH");
	printf("\n--------------------------------------------\n\n");
	fd = open("text/64bit_paragraph.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);


	// TEST 6

	printf("\n--------------------------------------------\n");
	printf("\t64 bit line");
	printf("\n--------------------------------------------\n\n");
	fd = open("text/64bit_line.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 7

	printf("\n--------------------------------------------\n");
	printf("\t\"empty lines\"");
	printf("\n--------------------------------------------\n\n");
	fd = open("text/empty_lines", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 8

	printf("\n--------------------------------------------\n");
	printf("\t25 NEWLINES ");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/only_newline.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 8

	printf("\n--------------------------------------------\n");
	printf("\tTEST 1");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/test1.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 8

	printf("\n--------------------------------------------\n");
	printf("\tTEST 2");
	printf("\n--------------------------------------------\n\n");

	fd = open("text/test2.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %2d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %2d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// ERROR TEST

	printf("\n--------------------------------------------\n");
	printf("\tERROR RETURN TEST");
	printf("\n--------------------------------------------\n\n");
	fd = open("fake", O_RDONLY);

	i = 0;
	k = get_next_line(fd, &line_buff);
	if (k < 0)
		printf("ERROR RETURN - TEST PASS\n\n");
	else {
		printf("ERROR RETURN - FAILED");
	}

	return (0);
}
