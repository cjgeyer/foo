
 library(foo)

 x <- rnorm(10)

 x2 <- foo(x, type = "For")

 identical(x^2, x2)

