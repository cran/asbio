\name{ci.median}
\alias{ci.median}
\title{Confidence interval for the median
}
\description{
Calculates the upper and lower confidence bounds for the true median, and calculates true coverage of the interval.}
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
\value{Returns a list of \code{class = "ci"}.  Default printed results are the paramter estimate and confidence bounds.  Other \code{invisible} objects include:
  \item{coverage}{The true coverage of the interval.}
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
