\name{ci.p}
\alias{ci.p}
\title{
Confidence interval estimation for the binomial parameter p.
}
\description{
Confidence interval formulae for \eqn{\mu} are not appropriate for variables describing binary outcomes.  The function \code{p.conf} calculates confidence intervals for the binomial parameter \emph{p} (probability of success) using raw or summarized data.  By default Wilson point estimators are used to estimate \eqn{p} and \eqn{\sigma_{\hat{p}}}.  If raw data are to be used (the default) then successes should be indicated as ones and failures as zeros in the \code{data} vector.  Finite population corrections can also be specified. Three methods for confidence intervals can be implemented: the normal approximation, Wilson estimators i.e. the adjusted Wald method (Wilson 1927), and the Clopper-Pearson exact method (Clopper and Pearson 1934).  Agresti and Coull (1998) reccomend the Wilson estimation method.
}
\usage{

ci.p(data, conf = 0.95, summarized = FALSE, phat = NULL, S.phat = NULL, 
fpc = FALSE, n = NULL, N = NULL, method="wilson")
}
\arguments{

  \item{data}{
A vector of binary data.  Required if \code{summarized = FALSE}.
}
  \item{conf}{
Level of confidence 1 \emph{P}(type I error).
}
  \item{summarized}{
Logical; indicate whether raw data or summary stats are to be used. 
}
  \item{phat}{
Estimate of \emph{p}.  Required if \code{summarized = TRUE}.
}
  \item{S.phat}{Estimate of \eqn{\sigma_{\hat{p}}}.  Required if \code{summarized = TRUE}.
}
  \item{fpc}{
Logical.  Indicates whether finite population corrections should be used.  If \code{fpc = TRUE} then \code{N} must be specified.  Finite population corrections are not possible for \code{method = "exact"}
}
  \item{n}{
Sample size.  Required if \code{summarized = TRUE}.
}
  \item{N}{
Population size.  Required if \code{fpc = TRUE}.
}
  \item{method}{
Type of method to be used in confidence interval calculations, \code{method ="wilson"} is the default, although there are two other options, \code{method="approximation"} provides the conventional normal approximation.  \code{method="exact"}) provides the Clopper Pearson (1934) method.  The \code{exact} method cannot be implemented if \code{summarized=TRUE}.
}
}
\details{
For the binomial distribution the parameter of interest is the probability of success, \emph{p}.  The parameter, \emph{p}, and its standard deviation, \eqn{\sigma_p} , can be estimated with: 
\deqn{\hat{p}=\frac{x}{n},}
\deqn{S_{\hat{p}}=\sqrt{\frac{\hat{p}(1-\hat{p})}{n}}}
where \emph{x} is the number of succeses and \emph{n} is the number of observations.

Agresti and Coull (1998) reported that these estimators can create extremely inaccurate confidence intervals.  As a result Ott and Longnecker (2004) recommend the Wilson estimators for estimation of \emph{p} and \eqn{\sigma_{\hat{p}}} (Wilson 1927).

\deqn{\hat{p}=\frac{x+2}{n+4},}
\deqn{S_{\hat{p}}=\sqrt{\frac{\hat{p}(1-\hat{p})}{n+4}}}

A 100(1 - \eqn{\alpha})\% confidence interval for the binomial parameter \emph{p} is found using:

\deqn{\hat{p}\pm z_{1-(\alpha/2)}.}

The "exact" method of Clopper and Pearson (1934) is bounded at the nominal limits, but actual coverage may greatly exceed nominal coverage.  Confidence bounds for the Clopper and Pearson (1934) method are derived (in part) using quantiles from the \emph{F}-distribution.  

\deqn{C_L=\frac{x}{(x+(n-x+1)F^{*}_{1-\alpha/2}}}
where \eqn{F^{*}\sim F(2n-2x+2,2x)}
\deqn{C_U=\frac{(x+1)F^{*}_{1-\alpha/2}}{n-x+(x+1)F^{*}_{1-\alpha/2}}}  
where \eqn{F^{*}\sim F(2x-2,2n-2x)}.
}

\value{Returns a list of \code{class = "ci"}.  Default printed results are the parameter estimate and confidence bounds.  Other objects are \code{invisible}.  In particular, if \code{method = "wilson" or "approximation"} returns a list with four items:
  \item{p.hat}{Estimate for \emph{p}.}
  \item{S.p.hat}{Estimate for \eqn{\sigma_{\hat{p}}}.}
  \item{margin}{Confidence margin.}
  \item{ci}{Confidence interval.}
If \code{method = "wilson"} the function returns the confidence interval, \code{ci}, only, i.e. no other \code{invisible} components exist.
}
\references{
Agresti, A., and Coull, B . A. (1998) Approximate is better than 'exact' for interval 
estimation of binomial proportions. \emph{The American Statistician}. 52: 119-126.

Clopper, C. and Pearson, S. (1934) The use of confidence or fiducial limits illustrated in 
the case of the Binomial. \emph{Biometrika} 26: 404-413.

Ott, R. L., and Longnecker, M. T. (2004) \emph{A first course in statistical methods}.  
Thompson.

Wilson, E. B.(1927) Probable inference, the law of succession, and statistical inference. 
\emph{Journal of the American Statistical Association} 22: 209-212.

}
\author{Ken Aho
}
\note{This function contains only a few of the many methods that have been proposed for confidence interval estimation for \emph{p}.
}
\seealso{\code{\link{ci.mu.z}}, \code{\link{ci.p}}}
\examples{
#In 2001, it was estimated that 56,200 Americans would be diagnosed with 
# non-Hodgkin's lymphoma and that 26,300 would die from it (Cernan et al. 2002).  
# Here we find the 95% confidence interval for the probability of diagnosis, p. 
ci.p(c(rep(0, 56200-26300),rep(1,26300)))
} 
\keyword{univar}
\keyword{htest}
