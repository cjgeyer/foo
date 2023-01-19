
foo <- function(x, type = c("C", "Fortran", "Call")) {
    type <- match.arg(type)
    stopifnot(is.numeric(x))

    switch(type,
        "Fortran" = .Fortran(C_foo, x = as.double(x), n = length(x))$x,
        "C" = .C(C_bar, x = as.double(x), n = length(x))$x,
        "Call" = .Call(C_baz, x = as.double(x))
    )
}

