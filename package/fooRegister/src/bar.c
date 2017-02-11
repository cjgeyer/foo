#include "foo.h"

void bar(double *x, int *nin)
{
int n = nin[0];

for (int i = 0; i < n; i++)
    x[i] = x[i] * x[i];
}

