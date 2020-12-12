/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GNL_test.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/04 20:45:53 by sshakya           #+#    #+#             */
/*   Updated: 2020/12/12 23:21:21 by sshakya          ###   ########.fr       */
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
	
	fd = open("text/lorem_ipsum.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 2

	fd = open("text/normal.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);

	// TEST 3

	fd = open("text/64bit_line.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	// TEST 4

	fd = open("text/bar.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	
	
	// TEST 5


	fd = open("text/empty.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	
	// TEST 6

	fd = open("text/64bit_paragraph.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	
	
	// ERROR TEST
	
	fd = open("fake", O_RDONLY);

	i = 0;
	k = get_next_line(fd, &line_buff);
	if (k < 0)
		printf("ERROR RETURN - TEST PASS");
	else {
	printf("line = %d | %d | %s\n", i, k, line_buff);
	free(line_buff);
	}
	
	return (0);
}
