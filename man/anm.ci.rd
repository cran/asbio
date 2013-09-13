\name{anm.ci}
\alias{anm.ci}
\alias{anm.ci.tck}
\title{
Animation demonstrations of confidence intervals.
}
\description{
Provides animated depictions of confidence intervals for \eqn{\mu}, \eqn{\sigma^{2}}, the population median, and the binomial parameter \emph{p}.
}
\usage{

anm.ci(parent=expression(rnorm(n)), par.val, conf = 0.95, sigma = NULL, 
  par.type = c("mu", "median", "sigma.sq", "p"), n.est = 100, 
  n = 50, err.col = 2, par.col = 4, interval = 0.1, ...) 

anm.ci.tck()

}

\arguments{
  \item{parent}{A parental distribution; ideally a distribution with known parameters.}
  \item{par.val}{True parameter value which is being estimated.}
  \item{conf}{Confidence level: 1-\emph{P}(type I error).}
  \item{sigma}{Sigma from the normal pdf, if known.}
  \item{par.type}{The parameter whose confidence intervals to be estimated. There are currently four choices.  These are the normal pdf parameters \eqn{\mu} and \eqn{\sigma^{2}}, the population median, and the binomial parameter, \emph{p}.}
  \item{n.est}{The number of confidence intervals to be created.}
  \item{n}{The sample size used for each confidence interval.}
  \item{err.col}{The line color of the intervals which do not include the true value.}
  \item{par.col}{The line color denoting the parameter value.}
  \item{interval}{The time interval for animation (in seconds).  Smaller intervals speed up animation}
  \item{\dots}{Additional arguments to \code{\link{plot}}.}
}
\details{
Provides an animated plot showing confidence intervals with respect to a known parameter.  Intervals which do not contain the parameter are emphasized with different colors.  Loading package \pkg{tcltk} allows use of function \code{anm.ci.tck} which provides an interactive GUI to run the function. 
}
\value{
Returns a plot.
}
\author{Ken Aho}
\seealso{Additional documentation for methods provided in: \code{\link{ci.mu.t}}, \code{\link{ci.mu.z}}, \code{\link{ci.median}}, \code{\link{ci.sigma}}, and \code{\link{ci.p}}.
}
\examples{
\dontrun{
parent<-rnorm(100000)
anm.ci(parent, par.val=0, conf =.95, sigma =1, par.type="mu")
anm.ci(parent, par.val=1, conf =.95, par.type="sigma.sq")
anm.ci(parent, par.val=0, conf =.95, par.type="median")
parent<-rbinom(100000,1,p=.65)
anm.ci(parent, par.val=0.65, conf =.95, par.type="p")
##Interactive GUI, requires package 'tcltk'
anm.ci.tck()
}
}
\keyword{graphs}
