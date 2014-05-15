\name{ci.mu.oneside}
\alias{ci.mu.oneside}
\title{
One sided confidence interval for mu.
}
\description{
In some situations we may wish to quantify confidence in the region above or below a mean estimate.  
For instance, a biologist working with an endangered species may be interested in saying: 
"I am 95 percent confident that the true mean number of offspring is above a particular threshold."  
In a one-sided situation, we essentially let our confidence be 1- 2\eqn{\alpha} (instead of 1 - \eqn{\alpha}).  
Thus, if our significance level for a two-tailed test is \eqn{\alpha}, our one-tailed significance level will be 2\eqn{\alpha}.
}
\usage{
ci.mu.oneside(data, conf = 0.95, n = NULL, Var = NULL, xbar = NULL, 
summarized = FALSE, N = NULL, fpc = FALSE, tail = "upper")
}
\arguments{

  \item{data}{
A vector of quantitative data.  Required if \code{summarized=TRUE}.}
  \item{conf}{
Level of confidence; 1 - \emph{P}(type I error).
}
  \item{n}{
Sample size.  Required if \code{summarized=TRUE}. 
}
  \item{Var}{
Sample variance.  Required if \code{summarized=TRUE}.
}
  \item{xbar}{
Sample mean.  Required if \code{summarized=TRUE}.
}
  \item{summarized}{
Logical.  Indicates whether summary statistics instead of raw data should be used.
}
  \item{N}{
Population size.  Required if \code{summarized=TRUE}.
}
  \item{fpc}{
Logical.  Indicating whether finite population corrections should be made.
}
  \item{tail}{
Indicates what side the one sided confidence limit should be calculated for.  Choices are \code{"upper"} or \code{"lower"}.
}
}
\value{Returns a list of \code{class = "ci"}.  Default output is a matrix with the sample mean and either the upper or lower confidence limit.
}
\references{Bain, L. J., and Engelhardt, M. (1992) \emph{Introduction to probability and mathematical 
statistics}.  Duxbury press.  Belmont, CA, USA.
}
\author{
Ken Aho
}
\seealso{
\code{\link{ci.mu.t}}}
\examples{
ci.mu.oneside(rnorm(100))
}
\keyword{univar}
\keyword{htest}% __ONLY ONE__ keyword per line
