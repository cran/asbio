\name{AP.test}
\alias{AP.test}
\title{Agresti-Pendergrast test}
\description{
Provides a more powerful alternative to Friedman's test for blocked (dependent) data with a single replicate.
}
\usage{
AP.test(Y)
}
\arguments{

  \item{Y}{A matrix with treatments in columns and blocks (e.g. subjects) in rows.}
}
\details{
The Agresti-Pendergrast test is more powerful than Friedman's test, given normality, and remains powerful in heavier tailed distributions (Wilcox 2005).  
}
\value{
Returns a dataframe showing the numerator and denominator degrees of freedom, \emph{F} test statistic, and \emph{p}-value.
}
\references{
Wilcox, R. R.  (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\note{code based on Wilcox (2005).} 

\seealso{\code{\link{friedman.test}}, \code{\link{MS.test}}}
\examples{
temp<-c(2.58,2.63,2.62,2.85,3.01,2.7,2.83,3.15,3.43,3.47,2.78,2.71,3.02,3.14,3.35,
2.36,2.49,2.58,2.86,3.1,2.67,2.96,3.08,3.32,3.41,2.43,2.5,2.85,3.06,3.07)
Y<- matrix(nrow=6,ncol=5,data=temp,byrow=TRUE)
AP.test(Y)}
\keyword{htest}
\keyword{univar}
