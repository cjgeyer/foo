This is a toy R package to serve as an example statistical confusing classes.

It illustrates calling C or Fortran from R.

Each function that calls C from R needs both the C function and an R function
that calls (so users don't have to know about this).  To illustrate this
we have an R function `foo` ([package/foo/R/foo.R](package/foo/R/foo.R))
that calls either C or FORTRAN depending on an optional argument `type`.
The functions that it calls are

 * [`foo.f`](package/foo/src/foo.f) called via the R function `.Fortran`
 * [`bar.c`](package/foo/src/bar.c) called via the R function `.C`
 * [`baz.c`](package/foo/src/baz.c) called via the R function `.Call`
     (which allows manipulating R objects of all types in
     C, but which is harder to use than the `.C` interface)

All of these functions do the same completely boring task (squaring the
elements of a vector).  The point is just to show computation moving from R
to C and back.

It also illustrates using the R uniform and nonuniform random number
generators inside C or FORTRAN called from R.
Again all three interfaces are illustrated

 * [`quf.f`](package/foo/src/quf.f) called via the R function `.Fortran`
 * [`qux.c`](package/foo/src/qux.c) called via the R function `.C`
 * [`quux.c`](package/foo/src/quux.c) called via the R function `.Call`

The FORTRAN one is a bit tricky because there is no R FORTRAN API for calling
the random number generators, so we write stub C functions that look like
FORTRAN functions to FORTRAN (a C function `fred` called from FORTRAN must be
wrapped with a macro `F77_SUB(foo)`, see [Section 6.6 of the book *Writing R Extensions*](http://cran.us.r-project.org/doc/manuals/r-release/R-exts.html#Calling-C-from-FORTRAN-and-vice-versa)).  Then we call these stub functions from
FORTRAN and these stub functions call the correct functions from the R C API.


