
set.seed(42)
library(fooRegister)

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

.Random.seed <- save.seed
x8 <- myrandom(4, 1.5, 0.75, type = "Call")
.Random.seed <- save.seed
x9 <- myrandom(4, 1.5, 0.75, type = "Call")
x10 <- myrandom(4, 1.5, 0.75, type = "Call")
identical(x1, x8) # should be TRUE
identical(x1, x9) # should be TRUE
identical(x1, x10) # should be FALSE
identical(x4, x10) # should be TRUE
