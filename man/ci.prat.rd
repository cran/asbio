\name{ci.prat}
\alias{ci.prat}

\title{
Confidence intervals for the ratio of binomial proportions
}
\description{
Two methods were described by Koopman (1984) for obtaining confidence intervals for the ratio of two binomial proportions: log-transform and chi-squared.  Both are implemented here. Koopman (1984) suggested methods for handling extreme cases of x, n, y, and m (see below).  These are applied through exception handling here.
}
\usage{

ci.prat(x, m, y, n, conf = 0.95, method = "log", bonf = FALSE)
}

\arguments{

  \item{x}{
The ratio numerator number of successes.  A scalar or vector.
}
  \item{m}{
The ratio numerator number of trials.  A scalar or vector of \code{length(x)}
}
  \item{y}{
The ratio denominator number of successes.  A scalar or vector of \code{length(x)}
}
  \item{n}{
The ratio denominator number of trials. A scalar or vector of \code{length(x)}
}
  \item{conf}{
The level of confidence, i.e. 1 - \emph{P}(type I error). 
}
  \item{method}{
Confidence interval method.  One of "log" or "chisq".
}
  \item{bonf}{
Logical, indicating whether or not Bonferroni corrections should be applied for simultaneous inference if \code{x, y, n} and \code{m} are vectors.  }  
}
\details{
See Aho and Bowyer (in review) for computational details.
}

\references{
Aho, K., and T. Bowyer.  In review.  Log-transform your resource selection ratios.  Ecology Letters.

Koopman, P. A. R. 1984. Confidence intervals for the ratio of two binomial proportions. \emph{Biometrics} 40:513-517.
}
\author{
Ken Aho
}
\seealso{
\code{\link{ci.p}}
}
\examples{
# From Koopman (1984)
ci.prat(x = 36, m = 40, y = 16, n = 80, method = "log")
ci.prat(x = 36, m = 40, y = 16, n = 80, method = "chisq")
}
