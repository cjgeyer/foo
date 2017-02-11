
#include <R.h>
#include <Rmath.h>
#include "foo.h"

/* call before generating any random variates */
void F77_SUB(rndstart)(void) { GetRNGstate(); }

/* call after done generating all random variates */
void F77_SUB(rndend)(void) { PutRNGstate(); }

/* call to generate one beta random variate */
double F77_SUB(myrbeta)(double *alpha1, double *alpha2)
{
    return rbeta(alpha1[0], alpha2[0]);
}

