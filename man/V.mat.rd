\name{V.mat}
\alias{V.mat}
\title{Pooled covariance matrices for multivariate procedures.}
\description{Calculates a pooled covariance matrix ala Legendre and Legendre (1998).  This is required for a number of multivariate procedures including the Kullback statistic for multivariate homoscedasticity, and Hotelling's test.
}
\usage{

V.mat(Y, X)
}
\arguments{

  \item{Y}{An \emph{n} x \emph{p} matrix of quantitative dependent variables.}
  \item{X}{A \emph{n} x 1 of categorical groups (e.g. factor levels).}
}
\references{Legendre, P, and L. Legendre (1998) \emph{Numerical ecology, 2nd English edition}.  Elsevier, 
Amsterdam, The Netherlands. 
}
\author{Ken Aho}
\seealso{\code{\link{Kullback}}, \code{\link{Hotelling}}}
\examples{
Y1<-rnorm(100,12,2)
Y2<-rnorm(100,14,2)
X<-c(rep(1,50),rep(2,50))
V.mat(cbind(Y1,Y2),X)}
\keyword{multivariate}
