\name{KW.multi.comp}
\alias{KW.multi.comp}
\title{Multiple pairwise comparison procedure to accompany a Kruskal-Wallis test}
\description{
As with ANOVA we can examine multiple pairwise comparisons from a Kruskal-Wallis test after we have rejected our omnibus null hypothesis.  However we will need to account for the fact that these comparisons will be non-orthogonal.  A conservative multiple comparison method used here is based on the Bonferroni procedure.
}
\usage{

KW.multi.comp(Y, X, conf)
}
\arguments{

  \item{Y}{The response variable.  A vector of quantitative responses.}
  \item{X}{An explanatory variable.  A vector of factor levels.}
  \item{conf}{The level of desired confidence, 1 - \emph{P}(type I error).}
}

\value{
Returns a six column dataframe containing: 

1) the type of contrast (names are taken from levels in \code{x}),

2) the mean rank difference, 

3) the lower confidence bound of the true mean rank difference, 

4) the upper confidence bound of the true mean rank difference, 

5) the hypothesis decision rule given the prescribed significance level, 

6) the adjusted \emph{p}-value.
}
\seealso{\code{\link{Pairw.test}}, \code{\link{FR.multi.comp}}}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\examples{
rye.data<-data.frame(rye=c(50,49.8,52.3,44.5,62.3,74.8,72.5,80.2,47.6,39.5,47.7,
50.7),nutrient=factor(c(rep(1,4),rep(2,4),rep(3,4))))
attach(rye.data)
KW.multi.comp(Y=rye,X=nutrient,conf=.95)
}
\keyword{univar}
\keyword{htest}
