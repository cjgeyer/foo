
 library(foo)

 x <- rnorm(10)

 x2 <- foo(x, type = "C")

 identical(x^2, x2)

