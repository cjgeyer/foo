
#ifndef FOOREGISTER_FOO_H
#define FOOREGISTER_FOO_H

#include <R.h>
#include <Rinternals.h>

void bar(double *x, int *nin);

void qux(int *nin, double *sin, double *tin, double *x);

SEXP baz(SEXP x);

SEXP quux(SEXP nin, SEXP sin, SEXP tin);

void F77_SUB(foo)(double *x, int *nin);

void F77_SUB(quf)(int *nin, double *sin, double *tin, double *x);

#endif /* FOOREGISTER_FOO_H */

