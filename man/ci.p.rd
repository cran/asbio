\name{ci.p}
\alias{ci.p}
\title{
Confidence interval estimation for the binomial parameter pi using five popular methods.
}
\description{
Confidence interval formulae for \eqn{\mu} are not appropriate for variables describing binary outcomes.  The function \code{p.conf} calculates confidence intervals for the binomial parameter \eqn{\pi} (probability of success) using raw or summarized data.  By default Agresti-Coull
 point estimators are used to estimate \eqn{\pi} and \eqn{\sigma_{\hat{\pi}}}.  If raw data are to be used (the default) then successes should be indicated as ones and failures as zeros in the \code{data} vector.  Finite population corrections can also be specified. 
 }
\usage{

ci.p(data, conf = 0.95, summarized = FALSE, phat = NULL, S.phat = NULL, 
fpc = FALSE, n = NULL, N = NULL, method="agresti.coull", plot = TRUE)
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
Estimate of \eqn{\pi}.  Required if \code{summarized = TRUE}.
}
  \item{S.phat}{Estimate of \eqn{\sigma_{\hat{\pi}}}.  Required if \code{summarized = TRUE}.
}
  \item{fpc}{
Logical.  Indicates whether finite population corrections should be used.  If \code{fpc = TRUE} then \code{N} must be specified.  Finite population corrections are not possible for \code{method = "exact"} or \code{method = "score"}.
}
  \item{n}{
Sample size.  Required if \code{summarized = TRUE}.
}
  \item{N}{
Population size.  Required if \code{fpc = TRUE}.
}
  \item{method}{
Type of method to be used in confidence interval calculations, \code{method ="agresti.coull"} is the default.  Other procedures include \code{method="asymptotic"} which provides the conventional normal approximation,    
\code{method = "score"}, \code{method = "LR"}, and \code{method="exact"} (see \bold{Details} below). Partial names can be used.  The \code{"exact"} method cannot be implemented if \code{summarized=TRUE}.
}
  \item{plot}{
Logical.  Should likelihood ratio plot be created with estimate from \code{method = "LR"}.
}
}
\details{
For the binomial distribution the parameter of interest is the probability of success, \eqn{\pi}.  ML estimators for the parameter, \eqn{\pi}, and its standard deviation, \eqn{\sigma_\pi} are: 
\deqn{\hat{\pi}=\frac{x}{n},}
\deqn{\sigma_{\hat{\pi}}=\sqrt{\frac{\hat{\pi}(1-\hat{\pi})}{n}}}
where \emph{x} is the number of successes and \emph{n} is the number of observations.

Because the sampling distribution of any ML estimator is asymptotically normal an "asymptotic" 100(1 - \eqn{\alpha})\% confidence interval for \eqn{\pi} is found using:

\deqn{\hat{\pi}\pm z_{1-(\alpha/2)}.}

This method has also been called the Wald confidence interval.

These estimators can create extremely inaccurate confidence intervals, particularly for small sample sizes or when \eqn{\pi} is near 0 or 1 (Agresti 2012).  A better method is to 
invert the Wald binomial test statistic and vary values for \eqn{\pi_0} in the test statistic numerator and standard error.  The interval consists of values of \eqn{\pi_0} 
in which result in a failure to reject H\eqn{_0} at \eqn{\alpha}. Bounds can be obtained by finding the roots of a quadratic expansion of the binomial likelihood function (See Agresti 2012).
This has been called a "score" confidence interval (Agresti 2012).  An simple approximation to this method can be obtained by adding the number two to the number of successes and failures (Agresti and Coull 1998).  The resulting Agresti-Coull estimators for \eqn{\pi} and \eqn{\sigma_{\hat{\pi}}} are:

\deqn{\hat{\pi}=\frac{x+2}{n+4},}
\deqn{\sigma_{\hat{\pi}}=\sqrt{\frac{\hat{\pi}(1-\hat{\pi})}{n+4}}.}

As above the 100(1 - \eqn{\alpha})\% confidence interval for the binomial parameter \eqn{\pi} is found using:

\deqn{\hat{\pi}\pm z_{1-(\alpha/2)}.}


The likelihood ratio method \code{method = "LR"} finds points in the binomial log-likelihood function where the difference between the maximum likelihood and likelihood function is closest to \eqn{\chi_1^{2}(1 - \alpha)/2} 
for support given in \eqn{\pi_0}.  As support the function uses \code{seq(0.00001, 0.99999, by = 0.00001)}. 


The "exact" method of Clopper and Pearson (1934) is bounded at the nominal limits, but actual coverage may be well below this level, particularly when \emph{n} is small and \eqn{\pi} is near 0 or 1.  

Agresti (2012) recommends the Agresti-Coull method over the normal approximation, the score method over the Agresti-Coull method, and the likelihood ratio method over all others.  The Clopper Pearson has been repeatedly criticized as being too conservative (Agresti and Coull 2012).   
}

\value{Returns a list of \code{class = "ci"}.  
  \item{pi.hat}{Estimate for \eqn{\pi}.}
  \item{S.p.hat}{Estimate for \eqn{\sigma_{\hat{\pi}}}.}
  \item{margin}{Confidence margin.}
  \item{ci}{Confidence interval.}
}
\references{
Agresti, A.  (2012) \emph{Categorical Data Analysis, 3rd edition}.  New York.  Wiley. 

Agresti, A., and Coull, B . A. (1998) Approximate is better than 'exact' for interval 
estimation of binomial proportions. \emph{The American Statistician}. 52: 119-126.

Clopper, C. and Pearson, S. (1934) The use of confidence or fiducial limits illustrated in 
the case of the Binomial. \emph{Biometrika} 26: 404-413.

Ott, R. L., and Longnecker, M. T. (2004) \emph{A First Course in Statistical Methods}.  
Thompson.

Wilson, E. B.(1927) Probable inference, the law of succession, and statistical inference. 
\emph{Journal of the American Statistical Association} 22: 209-212.

}
\author{Ken Aho
}
\note{This function contains only a few of the many methods that have been proposed for confidence interval estimation for \eqn{\pi}.
}
\seealso{\code{\link{ci.mu.z}}}
\examples{
#In 2001, it was estimated that 56,200 Americans would be diagnosed with 
# non-Hodgkin's lymphoma and that 26,300 would die from it (Cernan et al. 2002).  
# Here we find the 95% confidence interval for the probability of diagnosis, pi. 
ci.p(c(rep(0, 56200-26300),rep(1,26300)))
ci.p(c(rep(0, 56200-26300),rep(1,26300)), method = "LR")
} 
\keyword{univar}
\keyword{htest}