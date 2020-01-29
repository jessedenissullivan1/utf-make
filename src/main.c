#include <stdio.h>

#include "foo.h"
#include "bar.h"

int main(int argc, char const *argv[])
{
	printf("%s\n", foo());
	printf("%s\n", bar());
	return 0;
}