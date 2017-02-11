
 library(fooRegister)

 x <- rnorm(10)

 x2 <- foo(x, type = "Call")

 identical(x^2, x2)

 y <- x

 y[1] <- NA
 try(foo(y, type = "Call"))

 y[1] <- NaN
 try(foo(y, type = "Call"))

 y[1] <- Inf
 try(foo(y, type = "Call"))

