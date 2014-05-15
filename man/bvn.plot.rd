\name{bvn.plot}
\alias{bvn.plot}
\title{
Make plots of bivariate normal distributions
}
\description{
The function uses functions from \pkg{lattice} and \pkg{mvtnorm} to make wireframe plots of bivariate normal distributions.  Remember that the covariance 
must be less than the product of the marginal standard deviations (square roots of the diagonal elements).  
}
\usage{
bvn.plot(mu = c(0, 0), cv = 0, vr = c(1, 1), res = 0.3, xlab = expression(y[1]), 
ylab = expression(y[2]), zlab = expression(paste("f(", y[1], ",", y[2], ")")), ...)
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
\item{xlab}{
\emph{X}-axis label.
}
\item{ylab}{
\emph{Y}-axis label.
}
\item{zlab}{
\emph{Z}-axis label.
}
\item{\dots}{
Additional arguments from \code{\link{wireframe}}.}
}
\author{
Ken Aho
}
\keyword{graphs}

