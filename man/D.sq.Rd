\name{D.sq}
\alias{D.sq}
\title{Mahalanobis distance for two sites using a pooled covariance matrix}
\description{Allows much easier multivariate comparisons of groups of sites then provided by the function \code{mahalanobis} in the \code{base} library.
}
\usage{
D.sq(g1, g2)
}
\arguments{

  \item{g1}{Community vector for site 1}
  \item{g2}{Community vector for site 2} 
}
\references{
Legendre, P, and L. Legendre  (1998)  \emph{Numerical ecology, 2nd English edition}.  Elsevier, 
Amsterdam, The Netherlands. 
}
\author{Ken Aho}
\seealso{\code{\link{mahalanobis}}}
\examples{
g1<-matrix(ncol=3,nrow=3,data=c(1,0,3,2,1,3,4,0,2))
g2<-matrix(ncol=3,nrow=3,data=c(1,2,4,5,2,3,4,3,1))
D.sq(g1,g2)$D.sq
 }
\keyword{multivariate}
