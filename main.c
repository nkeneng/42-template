/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: stevennkeneng <snkeneng@student.42ber      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/09 19:13:25 by stevennke         #+#    #+#             */
/*   Updated: 2024/09/09 20:32:16 by stevennke        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "{push_swap}.h"

int	main(int argc, char *argv[])
{
	ft_printf("Number of arguments: %d\n", argc);
	for (int i = 0; i < argc; i++)
	{
		printf("Argument %d: %s\n", i, argv[i]);
	}
	return (EXIT_SUCCESS);
}
