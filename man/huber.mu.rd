\name{huber.mu}
\alias{huber.mu}
\title{Huber M-estimator of location}
\description{The Huber \emph{M}-estimator is a robust high efficiency estimator of location that has probably been under-utilized by biologists. It is based on maximizing the likelihood of a weighting function.  This is accomplished using an iterative least squares process.  The Newton Raphson algorithm is used here.  The function usually converges fairly quickly (< 10 iterations).  The function uses the Median Absolute Deviation function, \code{mad}, from \code{MASS}.  Note that if MAD = 0, then \code{NA} is returned.
}
\usage{
huber.mu(x, c = 1.28, iter = 20, conv = 1e-07)
}
\arguments{
  \item{x}{A vector of quantitative data.}
  \item{c}{Stop criterion.  The value \code{c = 1.28} gives 95 percent efficiency of the mean given normality.}
  \item{iter}{Maximum number of iterations.}
  \item{conv}{Convergence criterion.}
}
\value{
Returns Huber's \emph{M}-estimator of location.}  
\seealso{\code{\link{huber.one.step}}, \code{\link{huber.NR}}}
\references{ 
Huber, P. J. (2004)  \emph{Robust Statistics}. Wiley.

Wilcox, R. R. (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\examples{
x<-rnorm(100)
huber.mu(x)
}

