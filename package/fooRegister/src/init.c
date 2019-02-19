
// See Sections 5.4 and 6.16 of Writing R Extensions
//
// Remove styles, which are deprecated in R-3.3.3

#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include <R_ext/Visibility.h>
#include "foo.h"

static R_NativePrimitiveArgType bar_types[2] = {REALSXP, INTSXP};

static R_NativePrimitiveArgType qux_types[4] =
    {INTSXP, REALSXP, REALSXP, REALSXP};

static R_CMethodDef cMethods[] = {
    {"bar", (DL_FUNC) &bar, 2, bar_types},
    {"qux", (DL_FUNC) &qux, 4, qux_types},
    {NULL, NULL, 0, NULL}
};
 
static R_CallMethodDef callMethods[]  = {
    {"baz", (DL_FUNC) &baz, 1},
    {"quux", (DL_FUNC) &quux, 3},
    {NULL, NULL, 0}
};

static R_FortranMethodDef fortranMethods[] = {
    {"foo", (DL_FUNC) &F77_SUB(foo), 2, bar_types},
    {"quf", (DL_FUNC) &F77_SUB(quf), 4, qux_types},
    {NULL, NULL, 0, NULL}
};
 
void attribute_visible R_init_fooRegister(DllInfo *info)
{
    R_registerRoutines(info, cMethods, callMethods, fortranMethods, NULL);
    R_useDynamicSymbols(info, FALSE);
    R_forceSymbols(info, TRUE);
}

