\name{boot.ci.M}
\alias{boot.ci.M}
\alias{print.bci}
\title{Bootstrap CI of M-estimators differences of two samples}
\description{
Creates a bootstrap confidence interval for location differences for two samples.  The default location
estimator is the Huber one-step estimator, although any estimator can be used.  The function is based on 
a function written by Wilcox (2005).  Note, importantly, that \emph{P}-values may be in conflict with the confidence interval bounds.
}
\usage{
boot.ci.M(X1, X2, alpha = 0.05, est = huber.one.step, R = 1000)
}
\arguments{
  \item{X1}{Sample from population one.}
  \item{X2}{Sample from population two.}
  \item{alpha}{Significance level.}
  \item{est}{Location estimator; default is the Huber one step estimator.}
  \item{R}{Number of bootstrap samples.}

}
\value{
  Returns a list with one component, a dataframe containing summary information from the analysis:  
    \item{R.used}{The number of bootstrap samples used.  This may not = \code{R} if \code{NAs} occur because \emph{MAD} = 0.} 
    \item{ci.type}{The method used to construct the confidence interval.}
    \item{conf}{The level of confidence used.}
    \item{se}{The bootstrap distribution of differences standard error.}
    \item{original}{The original, observed difference.}
    \item{lower}{Lower confidence bound.}
    \item{upper}{Upper confidence bound.}
   
  }
\references{
Manly, B. F. J.  (1997)  \emph{Randomization and Monte Carlo methods in biology, 2nd edition}.  
Chapman and Hall, London.

Wilcox, R. R. (2005) \emph{Introduction to Robust Estimation and Hypothesis Testing, 2nd edition}.  Elsevier, 
Burlington, MA.

}
\author{Ken Aho and R. R. Wilcox from whom I stole liberally from code in the function \code{m2ci} on R-forge}
\seealso{\code{\link{bootstrap}}, \code{\link{ci.boot}}}
\examples{
\dontrun{
X1<-rnorm(100,2,2.5)
X2<-rnorm(100,3,3)
boot.ci.M(X1,X2)
}
}
\keyword{manip}
\keyword{htest}
\keyword{univar}
