
foo <- function(x, type = c("C", "Fortran", "Call")) {
    type <- match.arg(type)
    stopifnot(is.numeric(x))

    if (type == "Fortran") {
        out <- .Fortran("foo", x = as.double(x), n = length(x))
        return(out$x)
    }
    if (type == "C") {
        out <- .C("bar", x = as.double(x), n = length(x))
        return(out$x)
    }
    if (type == "Call") {
        return(.Call("baz", x = as.double(x)))
    }
}

