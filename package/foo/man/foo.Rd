\name{foo}
\alias{foo}
\title{Square Numbers}
\description{
  Squares a vector of numbers.
}
\usage{
foo(x, type = c("C", "Fortran", "Call"))
}
\arguments{
  \item{x}{a vector of type \code{"numeric"}.}
  \item{type}{a character string saying which foreign function call
    interface is used.}
}
\value{
  the vector of squares of elements of \code{x}.
}
\examples{
foo(1:5)
}
\keyword{misc}
