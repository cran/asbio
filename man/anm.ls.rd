\name{anm.ls}
\alias{anm.ls}
\alias{anm.ls.tck}
\title{
Animated plot of least squares function.
}
\description{Depicts the process of least squares estimation by plotting the least squares function with respect to a vector of estimate possibilities.
}
\usage{

anm.ls(X, poss=NULL, parameter = "mu", est.lty = 2, est.col = 2,
conv=diff(range(X))/50, anim=TRUE, plot.lsfunc = TRUE, plot.res = TRUE, 
interval=0.01, xlab=expression(paste("Estimates for ", italic(E),
"(",italic(X),")", sep = "")),...)

anm.ls.tck()
}
\arguments{

  \item{X}{
A numeric vector containing sample data.
}
  \item{poss}{
An ordered numeric sequence of possible parameter estimates.  Inclusion of the least squares estimate in the vector (e.g. \eqn{bar{X}} for \eqn{mu} will cause the least squares function be minimized at this value.
}
  \item{parameter}{
Parameter to be estimated.  Only estimation for \emph{E}(\emph{X}) is currently implemented.  Note that if  \emph{X} ~ \emph{N}(\eqn{\mu},\eqn{\sigma^2}) then \emph{E}(\emph{X}) =  \eqn{\mu}.}
  \item{est.lty}{
Line type to be used to indicate the least squares estimate.
}
  \item{est.col}{
Line color to be used to indicate the least squares estimate.
}
  \item{conv}{Precision of LS function.  Decreasing \code{conv} increases the smoothness and precision of the function.}
  \item{anim}{A logical command indicating whether animation should be used in plots.}  
  \item{plot.lsfunc}{A logical command indicating whether the least-squares function should be plotted.}
  \item{plot.res}{A logical command indicating whether a plot of residuals should be created.}
  \item{interval}{Speed of animation (in frames per second).  A smaller interval decreases speed.  May not work in all systems; see \code{\link{Sys.sleep}}.} 
  \item{xlab}{\emph{X}-axis label.}
  \item{\dots}{
Additional arguments to \code{\link{plot}}
}
}

\value{
A plot of the least squares function is returned along with the least squares estimate for E(\emph{X}) given a set of possibilities.  The function \code{anm.ls.tck} provides a GUI to run the function.
}
\author{
Ken Aho
}
\seealso{
\code{\link{loglik.plot}}
}
\examples{
\dontrun{X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
anm.ls(X)}
}
\keyword{graphs}
