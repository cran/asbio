\name{ci.impt}
\alias{ci.impt}
\title{Confidence interval for the product of two proportions
}
\description{
Provides one and two-tailed confidence intervals for the true product of two proportions.   
}
\usage{

ci.impt(y1, n1, y2 = NULL, n2 = NULL, avail.known = FALSE, pi.2 = NULL, 
conf = .95, x100 = TRUE, alternative = "two.sided", bonf = TRUE, wald = FALSE)
}

\arguments{

  \item{y1}{
The number of successes associated with the first proportion.
}
  \item{n1}{
The number of trials associated with the first proportion.
}
  \item{y2}{
The number of successes associated with the second proportion.  Not used if \code{avail.known = TRUE}.
}
  \item{n2}{
The number of trials associated with the first proportion.  Not used if \code{avail.known = TRUE}.
}
  \item{avail.known}{
Logical.  Are the proportions \eqn{\pi_{2i}} known?  If \code{avail.known = TRUE} these proportions should specified in the \code{pi.2} argument.  
}
  \item{pi.2}{
Proportions for \eqn{\pi_{2i}}.  Required if \code{avail.known = TRUE}.
  }
  \item{conf}{
Confidence level, i.e., 1 - \eqn{\alpha}.
}  
  \item{x100}{
Logical.  If true, estimate is multiplied by 100.
}
  \item{alternative}{
One of \code{"two.sided", "less", "greater"}.  Allows lower, upper, and two-tailed confidence intervals.  If \code{alternative = "two.sided"} (the default),  
then a conventional two-sided confidence interval is given.  The specifications \code{alternative = "less"} and \code{alternative = "greater"} provide lower and upper tailed CIs, respectively.
}

  \item{bonf}{
Logical.  If \code{bonf = TRUE}, and the number of requested intervals is greater than one, then Bonferroni-adjusted intervals are returned.
}
  \item{wald}{
Logical.  If \code{avail.known = TRUE} one can apply one of two standard error estimators.  The default is a delta-derived estimator.  If \code{wald = TRUE} is specified a modified Wald standard error estimator is used.  
}

}

\details{
Let \eqn{Y_1} and \eqn{Y_2} be multinomial random variables with parameters \eqn{n_1}, \eqn{\pi_{1i}} and \eqn{n_2}, \eqn{\pi_{2i}}, respectively; where \eqn{i = 1,2,\dots, r}.  
Under delta derivation, the log of the products of \eqn{\pi_{1i}} and \eqn{\pi_{2i}} (or the log of a product of \eqn{\pi_{1i}} and \eqn{\pi_{2i}} and a constant) is asymptotically normal with mean 
\eqn{log(\pi_{1i} \times \pi_{2i})} 
and variance \eqn{(1 - \pi_{1i})/\pi_{1i}n_1 + (1 - \pi_{2i})/ \pi_{2i}n_2}. Thus, an asymptotic \eqn{(1 - \alpha)100} percent confidence interval for \eqn{\pi_{1i} \times \pi_{2i}} is given by:

\deqn{
\hat{\pi}_{1i} \times \hat{\pi}_{2i} \times exp(\pm z_{1-(\alpha/2)}\hat{\sigma}_i)
}
where: \eqn{\hat{\sigma}^2_i = \frac{(1 - \hat{\pi}_{1i})}{\hat{\pi}_{1i}n_1} + \frac{(1 - \hat{\pi}_{2i})}{\hat{\pi}_{2i}n_2}} and \eqn{z_{1-(\alpha/2)}} 
is the standard normal inverse CDF at probability \eqn{1 - \alpha}.
}


\value{Returns a list of \code{class = "ci"}.  Printed results are the paramter estimate and confidence bounds. }


\author{
Ken Aho
}
\note{
Method will perform poorly given unbalanced sample sizes.
}
\references{
Aho, K., and Bowyer, T. 2015. Confidence intervals for a product of proportions: Implications for importance values. \emph{Ecosphere} 6(11): 1-7.
}

\seealso{
\code{\link{ci.prat}}, \code{\link{ci.p}}
}
\examples{
ci.impt(30,40, 25,40)
}

