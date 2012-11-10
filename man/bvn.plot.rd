\name{bvn.plot}
\alias{bvn.plot}
\title{
make plots of bivariate normal distributions
}
\description{
The function uses functions from \pkg{lattice} and \pkg{mvtnorm} to make wireframe plots of bivariate normal distributions.  Remember that the covariance must be less than the product of the marginal standard deviations (square roots of the diaganol elements).  
}
\usage{
bvn.plot(mu = c(0, 0), cv = 0, vr = c(1, 1), res = 0.3, ...)
}

\arguments{
  \item{mu}{
A vector cotanining the joint distribution means.
}
  \item{cv}{
A number, indicating the covariance of the two variables.  
}
  \item{vr}{
The diagonal elements in the variance covariance matrix.
}
  \item{res}{
Plot resolution.  Smaller valaues create a more detailed wireframe plot.
}
\item{\dots}{
Additional arguments from \code{\link{wireframe}}.}
}
\author{
Ken Aho
}
\keyword{graphs}

