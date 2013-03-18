\name{g.test}
\alias{g.test}

\title{
Likelihood ratio test for tabular data
}
\description{
Provides likelihood ratio tests for one way and multiway tables.
}
\usage{

g.test(y, correct = FALSE, pi.null = NULL)
}

\arguments{

  \item{y}{
A vector of at least 2 elements, or a matrix.  Must contain only non-negative integers.
}
  \item{correct}{
Logial.  Indicating whether Yates correction for continuity should be used.
}
  \item{pi.null}{
Optional vector or matrix of null proportions.  Must sum to one.
}
}
\author{
Ken Aho
}
\examples{
obs <- c(6022, 2001)
g.test(obs, pi.null = c(0.75, 0.25))
}
\keyword{htest}

