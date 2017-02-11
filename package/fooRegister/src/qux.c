
/* For more info read section 6.3 of Writing R Extensions (comes with every
 * R distribution and also found at CRAN and r-project.org.
 *
 * For how to figure out that there is a C function rbeta (which is called
 * by the R function rbeta and what its calling conventions are, you have
 * to RTFS, the source for R being available at CRAN.
 */

#include <R.h>
#include <Rmath.h>
#include "foo.h"

void qux(int *nin, double *sin, double *tin, double *x)
{
    int n = nin[0];
    double s = sin[0];
    double t = tin[0];

    int i;

    GetRNGstate();

    for (i = 0; i < n; i++)
        x[i] = rbeta(s, t);

    PutRNGstate();
}

