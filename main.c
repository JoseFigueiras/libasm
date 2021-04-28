#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include "libasm.h"

int		main(void)
{
	char	*str1;
	char	*str2;

	write(1, "HI\n", -3);
	printf("og errno: %d\n", errno);
	ft_write(1, "HI\n", -3);
	printf("ft errno: %d\n", errno);
	str1 = strdup("nigga");
	printf("og_strlen: %d\n", (int)strlen(str1));
	printf("ft_strlen: %d\n", (int)ft_strlen(str1));
	//----
	str2 = malloc(20);
	strcpy(str1, "testing");
	printf("og_strcpy: %s \n", str1);
	strcpy(str2, "testing");
	printf("ft_strcpy: %s \n", str2);
	//----
	printf("og_strcmp: %d\n", strcmp("Hey ma", "Hey man"));
	printf("ft_strcmp: %d\n", ft_strcmp("hey ma", "hey man"));
	//----
	printf("og_strdup: %s\n", strdup("Hello World!"));
	printf("ft_strdup: %s\n", ft_strdup("Hello World!"));
	return (0);
}
