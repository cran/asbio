\name{FR.multi.comp}
\alias{FR.multi.comp}
\title{Multiple pairwise comparison procedure to accompany a Friedman test.}
\description{As with ANOVA we can examine multiple pairwise comparisons from a Freidman test after we have rejected our omnibus null hypothesis.  However we will need to account for the fact that these comparisons will be non-orthogonal.  A conservative multiple comparison method used here is based on the Bonferroni procedure.
}
\usage{

FR.multi.comp(Y, X, blocks, nblocks, conf = 0.95)
}
\arguments{

  \item{Y}{A vector of responses, i.e. quantitative data.}
  \item{X}{A categorical vector of factor levels.}
  \item{blocks}{A categorical vector of blocks.}
  \item{nblocks}{The number of blocks.}
  \item{conf}{The level of confidence.  1 - \emph{P}(type I error).}
}

\value{
Returns a six column dataframe containing: 
1) the type of contrast (names are taken from levels in \code{x}),

2) the mean rank difference,
 
3) the lower confidence bound of the true mean rank difference,
 
4) the upper confidence bound of the true mean rank difference, 

5) the hypothesis decision rule given the prescribed significance level, and

6) the adjusted \emph{p}-value.
}
\references{
Fox, J. R., and Randall, J. E. (1970)  Relationship between forearm tremor and the biceps electromyogram.  \emph{Journal of Applied Physiology}  29: 103-108.

Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\seealso{\code{\link{friedman.test}}}
\examples{
#Data from Fox and Randall (1970)
Tremors<-data.frame(freq=c(2.58,2.63,2.62,2.85,3.01,2.7,2.83,3.15,3.43,3.47,2.78,2.71,3.02,3.14,3.35,2.36,2.49,2.58,2.86,3.1,2.67,2.96,3.08,3.32,3.41,2.43,2.5,2.85,3.06,3.07), weights=factor(rep (c(7.5,5,2.5,1.25,0), 6)),block=factor(rep (1:6,each=5)))
attach(Tremors)
FR.multi.comp(Y=freq,X=weights,blocks=block,nblocks=6, conf=.95)
}
\keyword{htest}
\keyword{univar}
