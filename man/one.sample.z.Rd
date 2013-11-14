\name{one.sample.z}
\alias{one.sample.z}
\title{One sample z-test}
\description{
Provides a one-sample hypothesis test.  The test assumes that the underlying population is normal and furthermore that \eqn{\sigma} is known.}
\usage{
one.sample.z(data = NULL, null.mu = 0, xbar = NULL, sigma, n = NULL, 
alternative = c("two.sided", "lower", "upper"))
}
\arguments{
  \item{data}{A vector of quantitative data.  Not required if \code{xbar} and \code{n} are supplied by the user.}
  \item{null.mu}{The expectation for the null distribution.}
  \item{xbar}{Sample mean.  Not required if \code{is.null(data)==FALSE}}
  \item{sigma}{The null distribution standard deviation}
  \item{n}{The sample size. Not required if \code{is.null(data)==FALSE}}
  \item{alternative}{Type of test.  One of three must be specified \code{"two.sided", "lower"}, or \code{"upper"}}
}
\details{The function can use either raw data \code{is.null(data)==FALSE} or summarized data if \code{is.null(data)==TRUE}.  With the later \code{xbar} and \code{n} must be specified by the user.
}
\value{Returns a test statistic and a \emph{p}-value.
}
\author{Ken Aho}
\seealso{\code{\link{pnorm}}}
\examples{
one.sample.z(null.mu=131,xbar=126,sigma=12,n=85,alternative="two.sided")
}
\keyword{htest}
\keyword{univar}
