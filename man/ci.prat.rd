\name{ci.prat}
\alias{ci.prat}

\title{
Confidence intervals for the ratio of binomial and multinomial proportions
}

\description{
A number of methods have been develeloped for obtaining confidence intervals for the ratio of two binomial proportions.  These include the Wald/Katz-log method (Katz et al. 1978), 
adjusted-log (Walter 1975, Pettigrew et al. 1986), Koopman asymptotic score (Koopman 1984), Inverse hyperbolic sine transformation (Newman 2001), the Bailey method (Bailey (1987), 
and the Noether (1957) procedure. Koopman results are found iteratively for most intervals using root finding.   
}

\usage{
ci.prat(y1, n1, y2, n2, conf = 0.95, method = "katz.log", 
bonf = FALSE, tol = .Machine$double.eps^0.25)
}

\arguments{

  \item{y1}{
The ratio numerator number of successes.  A scalar or vector.
}
  \item{n1}{
The ratio numerator number of trials.  A scalar or vector of \code{length(y1)}
}
  \item{y2}{
The ratio denominator number of successes.  A scalar or vector of \code{length(y1)}
}
  \item{n2}{
The ratio denominator number of trials. A scalar or vector of \code{length(y1)}
}
  \item{conf}{
The level of confidence, i.e. 1 - \emph{P}(type I error). 
}
  \item{method}{
Confidence interval method.  One of "adj.log","bailey","katz.log","koopman","sinh-1" or "noether".  Partial distinct names can be used.  
}
  \item{bonf}{
Logical, indicating whether or not Bonferroni corrections should be applied for simultaneous inference if \code{y1, y2, n1} and \code{n2} are vectors.}  
  
  \item{tol}{The desired accuracy (convergence tolerance) for the iterative root finding procedure when finding Koopman and Agresti-Min intevals. The default is taken to be the smallest positive floating-point number 
  of the workstation implementing the function, raised to the 0.25 power, and will normally be approximately 0.0001.}

}
\details{
See Aho and Bowyer (in review) for computational details.   Koopman et al. (1984) suggested methods for handling extreme cases of y1, n1, y2, and n2 (see below).  These are applied through exception handling here.  
}

\references{
Agresti, A., Min, Y. (2001) On small-sample confidence intervals for parameters in discrete distributions.  \emph{Biometrics} 57: 963-971.

Aho, K., and Bowyer, T. (In review)  Asymptotic confidence intervals for ratios of proportions with an emphasis on ratios of multinomial random variables (selection ratios). \emph{Ecological Modelling}.

Bailey, B.J.R. (1987) Confidence limits to the risk ratio.  \emph{Biometrics} 43(1): 201-205.

Katz, D., Baptista, J., Azen, S. P., and Pike, M. C. (1978) Obtaining confidence intervals for the risk ratio in cohort studies. \emph{Biometrics} 34: 469-474

Koopman, P. A. R. (1984) Confidence intervals for the ratio of two binomial proportions. \emph{Biometrics} 40:513-517.

Manly, B. F., McDonald, L. L., Thomas, D. L., McDonald, T. L. and Erickson, W.P. (2002)  \emph{Resource Selection by Animals: Statistical Design and Analysis for Field Studies.  2nd  edn.}  Kluwer, New York, NY

Newcombe, R. G. (2001)  Logit confidence intervals and the inverse sinh transformation.  \emph{The American Statistician} 55: 200-202.

Pettigrew H. M., Gart, J. J., Thomas, D. G. (1986)  The bias and higher cumulants of the logarithm of a
binomial variate.  \emph{Biometrika} 73(2): 425-435.

Walter, S. D. (1975) The distribution of Levins measure of attributable risk. \emph{Biometrika} 62(2): 371-374.
}
\author{
Ken Aho
}
\seealso{
\code{\link{ci.p}}
}
\examples{
# From Koopman (1984)
ci.prat(y1 = 36, n1 = 40, y2 = 16, n2 = 80, method = "katz")
ci.prat(y1 = 36, n1 = 40, y2 = 16, n2 = 80, method = "koop")
}
