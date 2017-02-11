
// See Section 5.4 of Writing R Extensions
// Also see Rdynload.h in the R include files for the possible
//     values of the enum R_NativeArgStyle

#include <Rdefines.h>
#include <R_ext/Rdynload.h>
#include "foo.h"

static R_NativePrimitiveArgType bar_types[2] = {REALSXP, INTSXP};

static R_NativeArgStyle bar_styles[2] = {R_ARG_IN_OUT, R_ARG_IN};

static R_NativePrimitiveArgType qux_types[4] =
    {INTSXP, REALSXP, REALSXP, REALSXP};

static R_NativeArgStyle qux_styles[4] =
    {R_ARG_IN, R_ARG_IN, R_ARG_IN, R_ARG_OUT};

static R_CMethodDef cMethods[] = {
    {"bar", (DL_FUNC) &bar, 2, bar_types, bar_styles},
    {"qux", (DL_FUNC) &qux, 4, qux_types, qux_styles},
    {NULL, NULL, 0, NULL, NULL}
};
 
static R_CallMethodDef callMethods[]  = {
    {"baz", (DL_FUNC) &baz, 1},
    {"quux", (DL_FUNC) &quux, 3},
    {NULL, NULL, 0}
};

static R_FortranMethodDef fortranMethods[] = {
    {"foo", (DL_FUNC) &F77_SUB(foo), 2, bar_types, bar_styles},
    {"quf", (DL_FUNC) &F77_SUB(quf), 4, qux_types, qux_styles},
    {NULL, NULL, 0, NULL, NULL}
};
 
void R_init_fooRegister(DllInfo *info)
{
    R_registerRoutines(info, cMethods, callMethods, fortranMethods, NULL);
}

