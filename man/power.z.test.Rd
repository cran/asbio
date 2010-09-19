\name{power.z.test}
\alias{power.z.test}
\title{Power analysis for a one sample z-test}
\description{
A power analysis for a one sample z-test. The function requires alpha, sigma, 
the effect size, the type of test (one tailed or two-tailed), and either power 
(1 - beta) or \emph{n} (sample size).  If \emph{n} is provided, then power is calculated.  Conversely, 
if one provides power, but not \emph{n}, then n is calculated.
}
\usage{

power.z.test(sigma = 1, n = NULL, power = NULL, alpha = 0.05, effect = NULL, 
test = c("two.tail", "one.tail"), strict = FALSE)
}
\arguments{
  \item{sigma}{The population variance}
  \item{n}{The sample size.  Not required if \code{power} is specified.}
  \item{power}{The desired power.  Not required if \code{n} is specified.}
  \item{alpha}{Probability of type I error.}
  \item{effect}{Effect size.}
  \item{test}{One of two choices: \code{"two.tail"} or \code{"one.tail"}.}
  \item{strict}{Causes the function to use a strict interpretation of power in a two-sided test.  If strict = TRUE then power for a two sided test will include the probability of rejection in the opposite tail of the true effect. If strict = FALSE (the default) power will be half the value of \eqn{\alpha} if the true effect size is zero.}
}
\value{
  Returns a list
  \item{sigma}{The prescribed population variance.}
  \item{n}{The sample size.}
  \item{power}{The power.}
  \item{alpha}{The type I error probability.}
  \item{test}{The type of test prescribed.}
  \item{effect}{The effect size.}
}
\references{Bain, L. J., and M. Engelhardt (1992)  \emph{Introduction to probability and mathematical 
statistics}.  Duxbury press.  Belmont, CA, USA.
}
\author{Ken Aho}
\seealso{\code{\link{pnorm}}}
\examples{
power.z.test(sigma=6,effect=5,power=.9,test="one.tail")
}
