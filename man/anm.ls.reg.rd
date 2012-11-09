\name{anm.ls.reg}
\alias{anm.ls.reg}
\alias{anm.ls.reg.tck}
\title{
Animated plot of least squares function.
}
\description{Depicts the process of least squares estimation of simple linear regression parameters by plotting the least squares function with respect to a estimate possibilities for the intercept or slope.
}
\usage{

anm.ls.reg(X, Y, parameter="slope", nmax=50, interval = 0.1,...)

anm.ls.reg.tck()
}
\arguments{

  \item{X}{
A numeric vector containing explanatory data.
}
  \item{Y}{
A numeric vector containing response data.
}
  \item{parameter}{
Parameter to be estimated.  Either "slope" or "intercept".}
  \item{nmax}{The number of parameter estimates to be depicted.  The true LS estimate will always be in the center of this sequence.}
  \item{interval}{Speed of animation (in frames per second).  A smaller interval decreases speed.  May not work in all systems; see \code{\link{Sys.sleep}}.} 
  \item{\dots}{
Additional arguments to \code{\link{plot}}
}
}

\value{
An animated plot of the plot pssible regression lines is created along with an animated plot of the residual sum of squares. The function \code{anm.ls.reg.tck} provides a GUI to run the function.
}
\author{
Ken Aho
}
\seealso{
\code{\link{loglik.plot}}, \code{\link{anm.ls}}
}
\examples{
\dontrun{
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
Y<-log(X)
anm.ls.reg(X, Y, parameter = "slope")}
}
\keyword{graphs}
