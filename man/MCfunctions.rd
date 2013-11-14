\name{MC}
\alias{MC}
\alias{Rf}
\alias{mat.pow}

\title{
Simple functions for MCMC demonstrations
}
\description{
Function \code{MC} creates random MArkov Chain from a transitions matrix.  Function \code{Rf} presents proportional summaries of discrete states from \code{MC}.  Function \code{mat.pow} finds the exponential expnasion of a martix.  Required for finding the expectations of a transition matrix. 
}
\usage{
MC(T, start, length)
Rf(res)
mat.pow(mat, pow)
}

\arguments{

  \item{T}{
A symmetric transition matrix.
}
  \item{start}{
Starting state
}
  \item{length}{
Length of the chain to be created
}

  \item{res}{
Results from \code{MC}.
}

  \item{mat}{
A symmetric matrix.
}
  \item{pow}{
Power the matrix is to be raised to.
}
}


\author{
Ken Aho
}

\examples{
A <- matrix(nrow = 4, ncol = 4, c(0.5, 0.5, 0, 0, 0.25, 0.5, 0.25,0, 0, 0.25, 0.5, 0.25, 
0, 0, 0.5, 0.5), byrow = TRUE)
pi.0 <- c(1, 0, 0, 0)
Tp10 <- mat.pow(A, 10)
chain <- MC(A, 1, 100)
Rf(chain)
}

\keyword{manip}

