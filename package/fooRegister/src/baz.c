
#include <R.h>
#include <Rinternals.h>
#include "foo.h"

SEXP baz(SEXP x)
{
    if (! isReal(x))
        error("'x' must be type double");
    int n = LENGTH(x);
    for (int i = 0; i < n; i++)
        if (! R_finite(REAL(x)[i]))
            error("'x' must be all finite-valued");

    SEXP result;
    PROTECT(result = allocVector(REALSXP, n));
    for (int i = 0; i < n; i++) {
        double foo = REAL(x)[i];
        REAL(result)[i] = foo * foo;
    }
    UNPROTECT(1);
    return result;
}

