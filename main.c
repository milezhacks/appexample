#include <stdio.h>
#include "example.h"

int main(int argc, char* argv[])
{
    int i = 23;
    int j = 37;

    int p = foo(i, j);
    printf("Product of %d * %d = %d\n", i, j, p);
    return 0;
}

