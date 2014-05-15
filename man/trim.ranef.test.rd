\name{trim.ranef.test}
\alias{trim.ranef.test}
\title{Robust test for random factors using trimmed means.}
\description{Provides a robust hypothesis test for the null: \emph{Var}(\emph{X}) = 0, for a population of random factor levels. 
}
\usage{
trim.ranef.test(Y, X, tr = 0.2)
}
\arguments{
  \item{Y}{Vector of response data. A quantitative vector.}
  \item{X}{Vector of factor levels}
  \item{tr}{Amount of trimming.  A number from 0-0.5.}
}
\details{
Robust analyses for random effect designs are particularly important since standard random effects models provide poor control over type I error when assumptions of normality and homoscedasticity are violated.   Specifically, Wilcox (1994) showed that even with equal sample sizes, and moderately large samples, actual probability of type I error can exceed 0.3 if normality and homoscedasticity are violated.  
}
\value{
Returns a list with three components dataframe describing numerator and denominator degrees of freedom, the \emph{F} test statistic and the \emph{p}-value.
}
\references{Wilcox, R. R. (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\note{code based on Wilcox (2005)}
\examples{
rye<-c(50,49.8,52.3,44.5,62.3,74.8,72.5,80.2,47.6,39.5,47.7,50.7)
nutrient<-factor(c(rep(1,4),rep(2,4),rep(3,4)))
trim.ranef.test(rye,nutrient,tr=.2)
}

\keyword{htest}
\keyword{univar}
