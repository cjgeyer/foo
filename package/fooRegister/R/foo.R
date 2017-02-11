
foo <- function(x, type = c("C", "Fortran", "Call")) {
    type <- match.arg(type)
    stopifnot(is.numeric(x))

    if (type == "Fortran") {
        out <- .Fortran(C_foo, x = as.double(x), n = length(x))
        return(out$x)
    }
    if (type == "C") {
        out <- .C(C_bar, x = as.double(x), n = length(x))
        return(out$x)
    }
    if (type == "Call") {
        out <- .Call(C_baz, x = as.double(x))
        return(out)
    }
}

