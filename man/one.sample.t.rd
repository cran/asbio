\name{one.sample.t}
\alias{one.sample.t}
\title{One sample t-test}
\description{
Provides a one-sample hypothesis test.  The test assumes that the underlying population is normal.}
\usage{
one.sample.t(data = NULL, null.mu = 0, xbar = NULL, sd, n = NULL, 
alternative = "not.equal", conf = 0.95)
}
\arguments{
  \item{data}{A vector of quantitative data.  Not required if \code{xbar} and \code{n} are supplied by the user.}
  \item{null.mu}{The expectation for the null distribution.}
  \item{xbar}{Sample mean.  Not required if \code{is.null(data)==FALSE}}
  \item{sd}{The sample standard deviation. Not required if \code{is.null(data)==FALSE}}
  \item{n}{The sample size. Not required if \code{is.null(data)==FALSE}}
  \item{alternative}{Type of test.  One of three must be specified \code{"not.equal", "less"}, or \code{"greater"}}
  \item{conf}{Confidence level.}
}
\details{The function can use either raw data \code{is.null(data)==FALSE} or summarized data if \code{is.null(data)==TRUE}.  With the later \code{xbar}\code{s}, and \code{n} must be specified by the user.
}

\value{Returns a test statistic and a \emph{p}-value.
}
\author{Ken Aho}
\seealso{\code{\link{pt}}}
\examples{
one.sample.t(null.mu = 131, xbar = 126, sd = 12, n = 85, 
alternative = "not.equal")
}
\keyword{htest}
\keyword{univar}
