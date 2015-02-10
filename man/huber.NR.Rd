\name{huber.NR}
\alias{huber.NR}
\title{Huber M-estimator iterative least squares algorithm}
\description{
Algorithm for calculating fully iterated or one step Huber \emph{M}-estimators of location.
}                                                                                   
\usage{
huber.NR(x, c = 1.28, iter = 20)
}
\arguments{
  \item{x}{A vector of quantitative data}
  \item{c}{Bend criterion.  The value \code{c = 1.28} gives 95 percent efficiency of the mean given normality.
  }
  \item{iter}{Maximum number of iterations}
}
\details{The Huber \emph{M}-estimator is a robust high efficiency estimator of location that has probably been under-utilized by biologists. It is based on maximizing the likelihood of a weighting function.  This is accomplished using an iterative least squares process.  The Newton Raphson algorithm is used here.  The function usually converges fairly quickly < 10 iterations.  The function uses the Median Absolute Deviation function, \code{\link{mad}}.  Note that if MAD = 0, then \code{NA} is returned.
}
\value{
Returns iterative least squares iterations which converge to Huber's \emph{M}-estimator.  The first element in the vector is the sample median.  The second element is the Huber one-step estimate. 
}
\seealso{\code{\link{huber.one.step}}, \code{\link{huber.mu}}, \code{\link{mad}}}
\references{ 
Huber, P. J.  (2004)  \emph{Robust Statistics}. Wiley.

Wilcox, R. R.   (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\examples{
x<-rnorm(100)
huber.NR(x)
}

