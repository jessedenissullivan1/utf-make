#include <stdio.h>
#include <string.h>

#include "bar.h"

void t_bar(){
	if (memcmp(bar(), "bar", 3) == 0){
		printf("bar is working\n");
	} else {
		printf("bar is not working\n");
	}
}