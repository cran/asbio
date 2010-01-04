\name{Hotelling}
\alias{Hotelling}
\title{Hotelling T-squared test}
\description{
The Hotelling \emph{T}-sqaured test provides a multivariate analog for a univariate test of two populations. 
}
\usage{
Hotelling(Y, X)
}
\arguments{
  \item{Y}{An \emph{n} x \emph{p} matrix of quantitative \emph{Y} variables.}
  \item{X}{A \emph{n} x 1 vector describing a factor with two factor levels.}
}
\details{
Details are provided in any introductory text on multivariate statistics.  
The same result will be given if a one way MANOVA is run on the data.
}
\value{
Returns a list
  \item{D.sq}{The Mahalanobis distance between the factor levels based on a pooled covariance matrix.}
  \item{T.sq}{The \eqn{T^2} test statistic}
  \item{table}{A table with the \emph{F}-statistic summary including the test statistic, numerator and denominator 
  degrees of freedom, and the \emph{p}-value}
}
\references{Everitt, B. (2005)  \emph{An R and S-plus companion to multivariate analysis}.  Springer.}
\author{Ken Aho}
\seealso{\code{\link{manova}}}
\examples{
Y1<-rnorm(100,15,3)
Y2<-rnorm(100,17,2)
X<-factor(c(rep(1,50),rep(2,50)))

Hotelling(cbind(Y1,Y2),X)
anova(lm(cbind(Y1,Y2)~X))
}
\keyword{multivariate}
\keyword{htest}
