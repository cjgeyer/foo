R package `foo` is a toy R package to serve as an example for statistical
confusing classes.  (Actually now two packages, see the end of this README.)

It illustrates calling C or Fortran from R.

Each function that calls C from R needs both the C function and an R function
that calls it (so users don't have to know about this).  To illustrate this
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

This package also illustrates using the R uniform and nonuniform random number
generators inside C or FORTRAN called from R.
Again all three interfaces are illustrated

 * [`quf.f`](package/foo/src/quf.f) called via the R function `.Fortran`
 * [`qux.c`](package/foo/src/qux.c) called via the R function `.C`
 * [`quux.c`](package/foo/src/quux.c) called via the R function `.Call`

The FORTRAN one is a bit tricky because there is no R FORTRAN API for calling
the random number generators, so we write stub C functions that look like
FORTRAN functions to FORTRAN (a C function `fred` called from FORTRAN must be
wrapped with a macro `F77_SUB(fred)`, see [Section 6.6 of the book *Writing R Extensions*](http://cran.us.r-project.org/doc/manuals/r-release/R-exts.html#Calling-C-from-FORTRAN-and-vice-versa)).  Then we call these stub functions from
FORTRAN and these stub functions call the correct functions from the R C API.
These stub functions are in

 * [`crandom.c`](package/foo/src/crandom.c)

The other question is how does one know that the function in the R C API
that generates beta random variates is called `rbeta`?  And how does one
know what the arguments of this function mean?

You can find all of the include files for R (the entire public API) by doing

    R CMD config --cppflags

Take off the `-I` (a C compiler flag) and the rest is the directory where
all the include files are found.  Look in them for functions that have beta
in the name.  It turns out that there are a lot of them in the file

 * [`Rmath.h`](https://svn.r-project.org/R/trunk/src/include/Rmath.h0.in)

which can be found on-line or in the R source (if you have it).  We see
functions `pbeta`, `qbeta`, `dbeta`, `rbeta` that according to the comments
in `Rmath.h` are for the beta distribution and also `pnbeta` and so forth
that are for the noncentral beta distribution.  We probably want `rbeta`.
So we look at the source for that

 * [`rbeta.c`](https://svn.r-project.org/R/trunk/src/nmath/rbeta.c)

Although it is not totally clear from the comments, it seems that the argments
are the two shape parameters and each call returns one beta random variate.
So that's what we need to know to use this function.

R package `foo` illustrates the way you write this stuff as a beginner
(at writing R packages, not a beginner at R).
R package `fooRegister` illustrates the way you write this stuff as an expert.
The difference is registration of native routines.
Comparing the two packages shows what is required to do it the hard way
(the expert way).  The expert way really is better, but it is not recommended
for beginners.

CRAN package checks now complain if you do not do this registration of
native routines as illustrated in R package `fooRegister`.

