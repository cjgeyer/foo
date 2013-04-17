
myrandom <- function(n, alpha1, alpha2, type = c("C", "Fortran")) {
    type <- match.arg(type)
    stopifnot(is.numeric(n))
    stopifnot(length(n) == 1)
    stopifnot(n == round(n))
    stopifnot(n > 1)
    stopifnot(is.numeric(alpha1))
    stopifnot(length(alpha1) == 1)
    stopifnot(is.finite(alpha1))
    stopifnot(alpha1 > 0)
    stopifnot(is.numeric(alpha2))
    stopifnot(length(alpha2) == 1)
    stopifnot(is.finite(alpha2))
    stopifnot(alpha2 > 0)

    if (type == "Fortran") {
        stop("Fortran not implemented yet")
    }
    if (type == "C") {
        out <- .C("qux", n = as.integer(n), alpha1 = as.double(alpha1),
            alpha2 = as.double(alpha2), x = double(n), PACKAGE = "foo")
        return(out$x)
    }
}

