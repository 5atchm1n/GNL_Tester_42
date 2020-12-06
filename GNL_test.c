/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GNL_test.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/04 20:45:53 by sshakya           #+#    #+#             */
/*   Updated: 2020/12/07 00:32:08 by sshakya          ###   ########.fr       */
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
	printf("-------EOF------");
	printf("\nfinal return value = %d\n", k);

	// TEST 2

	fd = open("text/normal.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------EOF------");
	printf("\nfinal return value = %d\n", k);
	
	// TEST 3

	fd = open("text/64bit_line.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------EOF------");
	
	printf("\nfinal return value = %d\n", k);
	
	// TEST 4

	fd = open("text/bar.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------EOF------");
	
	printf("\nfinal return value = %d\n", k);
	
	
	// TEST 5


	fd = open("text/empty.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------EOF------");
	
	printf("\nfinal return value = %d\n", k);
	
	// TEST 6

	fd = open("text/64bit_paragraph.txt", O_RDONLY);
	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------EOF------");
	
	printf("\nfinal return value = %d\n", k);
	
	// ERROR TEST
	
	fd = open("fake", O_RDONLY);

	i = 1;
	while ((k = get_next_line(fd, &line_buff)) > 0)
	{
		printf("line = %d | %d | %s\n", i, k, line_buff);
		free(line_buff);
		i++;
	}
	printf("-------NO FILE------");
	
	printf("\nfinal return value = %d\n", k);
	

	
	return (0);
}
