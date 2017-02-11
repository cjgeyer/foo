
/* For more info read section 6.3 of Writing R Extensions (comes with every
 * R distribution and also found at CRAN and r-project.org.
 *
 * For how to figure out that there is a C function rbeta (which is called
 * by the R function rbeta and what its calling conventions are, you have
 * to RTFS, the source for R being available at CRAN.
 */

#include <R.h>
#include <Rinternals.h>
#include <Rmath.h>
#include "foo.h"

SEXP quux(SEXP nin, SEXP sin, SEXP tin)
{
    if (! isInteger(nin))
        error("'n' must be type integer");
    if (! isReal(sin))
        error("'alpha1' must be type double");
    if (! isReal(tin))
        error("'alpha2' must be type double");
    int n = INTEGER(nin)[0];
    double s = REAL(sin)[0];
    double t = REAL(tin)[0];

    SEXP result;
    PROTECT(result = allocVector(REALSXP, n));

    GetRNGstate();

    for (int i = 0; i < n; i++)
        REAL(result)[i] = rbeta(s, t);

    PutRNGstate();

    UNPROTECT(1);
    return result;
}

