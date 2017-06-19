\name{huber.one.step}
\alias{huber.one.step}
\title{Huber one step M-estimator}
\description{
Returns the first Raphson-Newton iteration of the function \code{Huber.NR}.
}
\usage{
huber.one.step(x, c = 1.28)
}
\arguments{

  \item{x}{Vector of quantitative data}
  \item{c}{Bend criterion.  The value \code{c = 1.28} gives 95\% efficiency of the mean given normality.}
}
\details{The Huber \emph{M}-estimator function usually converges fairly quickly, hence the justification of the Huber one step estimator.  The function uses the Median Absolute Deviation function, \code{\link{mad}}.  If MAD = 0, then \code{NA} is returned.
}
\value{Returns the Huber one step estimator.}
\seealso{\code{\link{huber.mu}}, \code{\link{huber.NR}}, \code{\link{mad}}}
\references{
Huber, P. J.  (2004)  \emph{Robust Statistics}. Wiley.

Wilcox, R. R.   (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\examples{
x<-rnorm(100)
huber.one.step(x)
}

