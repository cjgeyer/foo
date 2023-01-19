
foo <- function(x, type = c("C", "Fortran", "Call")) {
    type <- match.arg(type)
    stopifnot(is.numeric(x))

    switch(type,
        "Fortran" = .Fortran("foo", x = as.double(x), n = length(x),
            PACKAGE = "foo")$x,
        "C" = .C("bar", x = as.double(x), n = length(x), PACKAGE = "foo")$x,
        "Call" = .Call("baz", x = as.double(x), PACKAGE = "foo")
    )
}

