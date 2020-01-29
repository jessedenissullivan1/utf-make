#include <stdio.h>
#include <string.h>

#include "foo.h"

void t_foo(){
	if (memcmp(foo(), "foo", 3) == 0){
		printf("Foo is working\n");
	} else {
		printf("Foo is not working\n");
	}
}