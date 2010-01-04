\name{Shep.comp}
\alias{Shep.comp}
\title{Shepard plot type comparisons for PCoA}
\description{
Calculates raw \eqn{R^2}, Linear fit \eqn{R^2} and non-metric \eqn{R^2} for PCoA ordinations.
}
\usage{
Shep.comp(dis, max.dim = 10)
}
\arguments{

  \item{dis}{A dissimilarity matrix.  Any index from \code{\link{get.dist}} can be used. }
  \item{max.dim}{The maximum number of \code{\link{cmdscale}} dimensions for which correlations should be calculated.}
}
\details{
 The function Shep.comp in asbio creates calculates three sorts correlations coefficients across all specified PCoA  dimensionalities. 
  
1) Pearson's correlations of observed distances (in the distance matrix) and fitted distances (in a PCoA ordination); i.e. "raw fits." 

2) Pearson's correlations between the monotonic fitted line and the observed distances "linear fits". 

3) A correlation based on stress and calculated as 1 - \eqn{S^2} (Oksanen 2008), where: 
\deqn{S = \sqrt{\frac{\sum_{i \neq j}{\hat{d}_{ij}-d_{ij}^2}}{\sum_{i \neq j}{d_{ij}}^2,}}}{%
S = sqrt(sum(d.hat[ij]-d[ij])^2/sum[ij]^2)} 

where \eqn{\hat{d}_{ij}} is the distance between rank order of distance between point \emph{i} and \emph{j} in the final configuration (i.e. the fitted monotonic stressplot line), and \eqn{d_{ij}} is the distance between point \emph{i} and \emph{j} in the original distance matrix.

The first type of correlation "raw fits" should probably not be used since the relationship between community dissimilarity and a configuration may be strong while being non-linear. The second correlation should be linear even if the relationship between observed dissimilarity and dissimilarities in the final configuration are non-linear, and is often referred to as the linear fit (Oksanen 2008).  The final type of correlation has been called "non-metric" fit (Oksanen 2008).  

}
\value{
Returns a matrix with three columns containing \eqn{R^2} for raw, linear, and non-metric \eqn{R^2}'s.
}
\references{
Oksanen, J. (2008)  \emph{Multivariate analysis of ecological communities in R: vegan tutorial}. 
\url{http://cc.oulu.fi/~jarioksa/opetus/metodi/vegantutor.pdf}
}
\author{Ken Aho}
\seealso{\code{\link{get.dist}}, \code{\link{cmdscale}}}
\examples{
data(varespec)
d<-get.dist(varespec,"steinhaus")
Shep.comp(d,max.dim=10)}
\keyword{multivariate}
