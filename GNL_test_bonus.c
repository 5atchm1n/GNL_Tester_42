/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GNL_test_bonus.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: sshakya <sshakya@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/04 20:45:53 by sshakya           #+#    #+#             */
/*   Updated: 2020/12/16 05:43:09 by sshakya          ###   ########.fr       */
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
	int		fd2;
	char	*line;
	int		j;
	int		i;

	line = NULL;
	
	j = 1;
	
	printf("-----------------------------------------\n");
	printf("   TEST BONUS  \n");
	printf("-----------------------------------------\n\n");

	if (!(fd = open("text/mix_marge1", O_RDONLY)))
	{
		printf("\nError in open\n");
		return (0);
	}
	if (!(fd2 = open("text/mix_marge2", O_RDONLY)))
	{
		printf("\nError in open\n");
		return (0);
	}
	while (j < 8)
	{
		if ((i = get_next_line(fd, &line)) > 0)
			printf("%s\n", line);
		free(line);
		j++;
	}
	while (j < 13)
	{
		if ((i = get_next_line(fd2, &line)) > 0)
			printf("%s\n", line);
		free(line);
		j++;
	}
	if ((i = get_next_line(fd, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	if ((i = get_next_line(fd2, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	if ((i = get_next_line(fd2, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	if ((i = get_next_line(fd, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	if ((i = get_next_line(fd2, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	if ((i = get_next_line(fd, &line)) > 0)
		printf("%s\n", line);
	free(line);
	j++;
	while (j < 23)
	{
		if ((i = get_next_line(fd2, &line)) > 0)
			printf("%s\n", line);
		free(line);
		j++;
	}
	get_next_line(fd2, &line);
	printf("%s\n", line);
	free(line);
	j++;
	while (j < 25)
	{
		if ((i = get_next_line(fd, &line)) > 0)
			printf("%s\n", line);
		free(line);
		j++;
	}
	get_next_line(fd, &line);
	printf("%s\n", line);
	free(line);
	close(fd);
	close(fd2);

	return (0);
}
