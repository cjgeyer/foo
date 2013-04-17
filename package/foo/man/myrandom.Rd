\name{myrandom}
\alias{myrandom}
\title{Simulate Beta Random Variates}
\description{
   Does the same thing as \code{\link{rbeta}}.
}
\usage{
myrandom(n, alpha1, alpha2, type = c("C", "Fortran"))
}
\arguments{
  \item{n}{integer, the number of random variates to simulate.} 
  \item{alpha1}{first parameter of the beta distribution.}
  \item{alpha2}{second parameter of the beta distribution.}
  \item{type}{a character string saying which foreign function call
    interface is used.}
}
\value{
  the vector of beta random variates.
}
\examples{
myrandom(5, pi, 1 / pi)
}
\keyword{misc}
