\name{ci.median}
\alias{ci.median}
\title{Confidence interval for the median
}
\description{
Function calculates the upper and lower confidence bounds for the true median, and calculates true coverage of the interval.}
\usage{

ci.median(x, conf = 0.95)
}
\arguments{
  \item{x}{A vector of quantitative data.
}
  \item{conf}{
The desired level of confidence 1 - \emph{P}(type I error).
}
}
\references{
Ott, R. L., and M. T. Longnecker (2004) \emph{A first course in statistical methods}.  
Thompson.

}
\author{
Ken Aho
}
\seealso{\code{\link{median}}}
\examples{
x<-rnorm(20)
ci.median(x)}
\keyword{univar}
