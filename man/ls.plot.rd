\name{ls.plot}
\alias{ls.plot}

\title{
Plot of least squares function.
}
\description{Depicts the process of least squares estimation by ploting the least squares function with respect to a vector of estimate possibilities.
}
\usage{

ls.plot(X, possibilities, parameter = "mu", est.lty = 2, est.col = 2, ...)
}
\arguments{

  \item{X}{
A numericeric veector containing sample data.
}
  \item{possibilities}{
An ordered numeric sequence of possible parameter estimates.  Inclusion of the least squares estimate in the vector (e.g. \eqn{bar{X}} for \eqn{mu} will cause the least squares function be minimized at this value.
}
  \item{parameter}{
Parameter to be estimated.  Only estimation for E(\emph{X}) is currently implemented.  Note that if  \emph{X} ~ N(\eqn{mu},\eqn{sigma^2}) that E(\emph{X}) =  \eqn{mu}.}

  \item{est.lty}{
Line type to be used to indicate the least squares estimate.
}
  \item{est.col}{
Line color to be used to indicate the least squares estimate.
}
  \item{\dots}{
Additional arguments to \code{\link{plot}}
}
}

\value{
A plot of the least squares function is reurned along with the least squares estimate for E(\emph{X}) given a set of possibilities.
}
\author{
Ken Aho
}
\seealso{
\code{\link{loglik.plot}}
}
\examples{
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
possibilities<-seq(8,14,.01)
ls.plot(X,possibilities, xlab=expression(paste("Estimates for ", mu)))

}
\keyword{graphs}
