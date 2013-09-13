\name{trim.test}
\alias{trim.test}
\title{Robust one way trimmed means test.}
\description{A robust heteroscedastic  procedure using trimmed means.
}
\usage{
trim.test(Y, X, tr = 0.2)
}
\arguments{
  \item{Y}{A vector of responses.  A quantitative vector}
  \item{X}{A vector of factor levels.}
  \item{tr}{The degree of trimming.  A value from 0-0.5.}
}
\details{The method utilized here is based on the simple idea of replacing means with trimmed means and standard error estimates, based on all the data, with the standard error of the trimmed mean (Wilcox 2005).  The method has the additional benefit of being resistant to heteroscedasticity due to the use of the Welch method for calculating degrees of freedom.  With no trimming the degrees of freedom reduce to those of the one way Welch procedure in \code{\link{oneway.test}}.
}
\value{Returns a dataframe with numerator and denominator degrees of freedom, a test statistic, and a \emph{p}-value based on the \emph{F}-distribution.
}
\references{
Wilcox, R. R.   2005.  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\note{code based on Wilcox (2005) 
}
\seealso{\code{\link{oneway.test}}}
\examples{
rye<-c(50,49.8,52.3,44.5,62.3,74.8,72.5,80.2,47.6,39.5,47.7,50.7)
nutrient<-factor(c(rep(1,4),rep(2,4),rep(3,4)))
trim.test(rye,nutrient,tr=.2)
}
\keyword{htest}
\keyword{univar}
