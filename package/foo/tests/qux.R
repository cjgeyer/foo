
set.seed(42)
library(foo)

save.seed <- .Random.seed
x1 <- rbeta(4, 1.5, 0.75)
.Random.seed <- save.seed
x2 <- myrandom(4, 1.5, 0.75)
.Random.seed <- save.seed
x3 <- myrandom(4, 1.5, 0.75)
x4 <- myrandom(4, 1.5, 0.75)
identical(x1, x2) # should be TRUE
identical(x1, x3) # should be TRUE
identical(x1, x4) # should be FALSE

.Random.seed <- save.seed
x5 <- myrandom(4, 1.5, 0.75, type = "Fortran")
.Random.seed <- save.seed
x6 <- myrandom(4, 1.5, 0.75, type = "Fortran")
x7 <- myrandom(4, 1.5, 0.75, type = "Fortran")
identical(x1, x5) # should be TRUE
identical(x1, x6) # should be TRUE
identical(x1, x7) # should be FALSE
identical(x4, x7) # should be TRUE
