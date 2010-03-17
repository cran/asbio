\name{ci.sigma}
\alias{ci.sigma}
\title{
Confidence interval for the sample variance.
}
\description{
The function calculates confidence intervals for \eqn{\sigma^2}.  We assume that the parent population is normal.}
\usage{
ci.sigma(data, conf = 0.95, S.sq = NULL, n = NULL, summarized = FALSE)
}
\arguments{
  \item{data}{A vector of quantitative data.  Required if \code{summarized=FALSE}.}
  \item{conf}{Level of confidence.  1 - \emph{P}(type I error).}
  \item{S.sq}{Sample variance, required if \code{summarized=TRUE}.}
  \item{n}{Sample size, required if \code{summarized=TRUE}.}
  \item{summarized}{Logical.  If \code{summarized=TRUE} then the user must supply \code{S.sq} and \code{n}
}
}
\value{Returns a list of \code{class = "ci"}.  Default printed results are the paramter estimate and confidence bounds.  Other objects are \code{invisible}.}
\references{Bain, L. J., and M. Engelhardt.  1992.  \emph{Introduction to probability and mathematical 
statistics}.  Duxbury press.  Belmont, CA, USA.

}
\author{Ken Aho
}
\seealso{\code{\link{ci.mu.z}}}

\examples{
ci.sigma(rnorm(20))
}
\keyword{univar}
\keyword{htest}
