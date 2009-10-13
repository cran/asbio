\name{perm.fact.test}
\alias{perm.fact.test}
\title{Permutation test for two and three way factorial designs.}
\description{
Provides permutation tests for two and three way designs, using permutations of of the response vector with respect to factor levels.  One way permutation tests are provided by \code{\link{MC.test}}, and the function \code{oneway_test} in \code{coin}.
}
\usage{

perm.fact.test(Y, X1, X2, X3 = NA, perm = 100)
}
\arguments{

  \item{Y}{A vector of response data.  A quantitative vector.}
  \item{X1}{A vector of factor levels describing factor one.}
  \item{X2}{A vector of factor levels describing factor two.}
  \item{X3}{If necessary, a vector of factor levels describing factor three.}
  \item{perm}{Number of permutations.}
}
\details{
The method used here is based on Manly (1997). 
}
\value{
A dataframe is returned describing initial \emph{F} test statistics for main effects and interactions, degrees of freedom, and permutation \emph{p}-values.
}
\references{
Manly, B. F. J. (1997)  \emph{Randomization and Monte Carlo methods in biology, 2nd edition}.  
Chapman and Hall, London.
}
\author{Ken Aho}
\seealso{\code{\link{MC.test}}}
\examples{
lizard<-data.frame(ants=c(13,242,105,8,59,20,515,488,88,18,44,21,182,21,7,24,312,68,
460,1223,990,140,40,27),size=factor(c(rep(1,12),rep(2,12))),
month=factor(rep(rep(c(1,2,3,4),each=3),2)))
attach(lizard)
perm.fact.test(ants,month,size,perm=100)
}
\keyword{univar}
\keyword{htest}
