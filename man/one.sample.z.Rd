\name{one.sample.z}
\alias{one.sample.z}
\title{One sample z-test}
\description{
Provides a one-sample hypothesis test.  The test assumes that the underlying population is normal and furthermore that \eqn{\sigma} is known.}
\usage{
one.sample.z(data = NULL, null.mu, xbar = NULL, sigma, n = NULL, 
test = c("two.sided", "lower.tail", "upper.tail"))
}
\arguments{
  \item{data}{A vector of quantitative data.  Not required if \code{xbar} and \code{n} are supplied by the user.}
  \item{null.mu}{The expectation for the null distribution.}
  \item{xbar}{Sample mean.  Not required if \code{is.null(data)==FALSE}}
  \item{sigma}{The null distribution variance}
  \item{n}{The sample size. Not required if \code{is.null(data)==FALSE}}
  \item{test}{Type of test.  One of three must be specified \code{"two.sided", "lower.tail"}, or \code{"upper.tail"}}
}
\details{The function can use either raw data \code{is.null(data)==FALSE} or summarized data if \code{is.null(data)==TRUE}.  With the later \code{xbar} and \code{n} must be specified by the user.
}
\value{Returns a \emph{p}-value.
}
\author{Ken Aho}
\seealso{\code{\link{pnorm}}}
\examples{
one.sample.z(null.mu=131,xbar=126,sigma=12,n=85,test="two.sided")
}
\keyword{htest}
\keyword{univar}
