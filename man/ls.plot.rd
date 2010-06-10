\name{ls.plot}
\alias{ls.plot}

\title{
Plot of least squares function.
}
\description{Depicts the process of least squares estimation by plotting the least squares function with respect to a vector of estimate possibilities.
}
\usage{

ls.plot(X, poss=NULL, parameter = "mu", est.lty = 2, est.col = 2,
conv=0.01, anim=TRUE, interval=0.01,...)
}
\arguments{

  \item{X}{
A numeric vector containing sample data.
}
  \item{poss}{
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
  \item{conv}{Precision of LS function, decreasing \code{conv} increases the smoothness and precision of the function.}
  \item{anim}{A logical command indicating whether animation should be used in plots.}
  \item{interval}{Speed of animation.  A smaller interval decreases speed.  May not work in all systems; see \code{\link{Sys.sleep}}.} 
  \item{\dots}{
Additional arguments to \code{\link{plot}}
}
}

\value{
A plot of the least squares function is returned along with the least squares estimate for E(\emph{X}) given a set of possibilities.
}
\author{
Ken Aho
}
\seealso{
\code{\link{loglik.plot}}
}
\examples{
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
ls.plot(X,xlab=expression(paste("Estimates for ", mu)))

}
\keyword{graphs}
