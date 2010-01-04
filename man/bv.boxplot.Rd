\name{bv.boxplot}
\alias{bv.boxplot}
\title{Bivariate boxplots}
\description{
Creates diagnostic bivariate boxplots using the method of Goldberg and Iglewicz (1992).  
The boxplots can be used to check assumptions of bivariate normality.  The default \code{robust=TRUE}
option relies on on a biweight estimator function written by Everitt (2004).
}
\usage{
bv.boxplot(X, Y, robust = TRUE, D = 7, xlab = "X", ylab = "Y")
}
\arguments{
  \item{X}{First of two quantitative variables making up the bivariate distribution.}
  \item{Y}{Second of two quantitative variables making up the bivariate distribution.}
  \item{robust}{Logical.  Robust estimators, i.e. \code{robust = TRUE} are recommended.}
  \item{D}{The default \code{D = 7} lets the fence be equal to a 99 percent confidence interval for an individual observation.}
  \item{xlab}{Caption for \emph{X} axis.}
  \item{ylab}{Caption for \emph{Y} axis.}
}
\details{
Two ellipses are drawn.  The inner is the "hinge" which contains 50 percent of the data.  The outer is the "fence".  
Observations outside of the "fence" constitute possible troublesome outliers.  The function bivariate from Everitt (2004) is used calculate the biweight \emph{M}-estimators of location, scale and correlation if \code{robust = TRUE} (the default). 
}
\value{
A diagnostic plot is returned
}
\references{
Everitt, B.  2005.  \emph{An R and S-plus companion to multivariate analysis}.  Springer.

Goldberg, K. M., and B. Ingelwicz.  1992.  Bivariate extensions of the boxplot.  
\emph{Technometrics} 34: 307-320.
}
\author{Ken Aho, the function relies on an Everitt (2004) function for robust \emph{M}-estimation.}
\seealso{\code{\link{boxplot}}}
\examples{
Y1<-rnorm(100,17,3)
Y2<-rnorm(100,13,2)
bv.boxplot(Y1,Y2)
}
\keyword{graphs}
\keyword{multivariate}
