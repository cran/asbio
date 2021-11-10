\name{pairw.kw}
\alias{pairw.kw}
\alias{KW.multi.comp}
\title{Multiple pairwise comparison procedure to accompany a Kruskal-Wallis test}
\description{
Replaces the defunct \code{KW.multi.comp}. As with ANOVA we can examine multiple pairwise comparisons from a Kruskal-Wallis test after we have rejected our omnibus null hypothesis.  
However we will need to account for the fact that these comparisons will be non-orthogonal.  A conservative multiple comparison method used here is based on the Bonferroni inequality.
}
\usage{

pairw.kw(y, x, conf)
}
\arguments{

  \item{y}{The response variable.  A vector of quantitative responses.}
  \item{x}{An explanatory variable.  A vector of factor levels.}
  \item{conf}{The level of desired confidence, 1 - \emph{P}(type I error).}
}

\value{
Returns a list of \code{class = "pairw"}.  The utility print function returns a descriptive head and a six column summary dataframe containing: 

1) the type of contrast (names are taken from levels in \code{x}),

2) the mean rank difference, 

3) the lower confidence bound of the true mean rank difference, 

4) the upper confidence bound of the true mean rank difference, 

5) the hypothesis decision given the prescribed significance level, 

6) the adjusted \emph{P}-value.
}
\seealso{\code{\link{pairw.anova}}, \code{\link{pairw.fried}}, \code{\link{plot.pairw}}}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li (2005)  \emph{Applied Linear Statistical Models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho and Richard Boyce.  Richard provided an adjustment for ties.  Thanks to Paule Bodson-Clermont for pointing out issues with the default behaviour of \code{\link{rank}}, leading to incorrect answers from \code{pair.kw} given missing vaues.
}
\examples{
rye.data <- data.frame(rye = c(50, 49.8, 52.3, 44.5, 62.3, 74.8, 72.5, 80.2, 
47.6, 39.5, 47.7,50.7), nutrient = factor(c(rep(1, 4), rep(2, 4), rep(3, 4))))
kw <- with(rye.data, pairw.kw(y = rye, x = nutrient, conf = .95))
kw
plot(kw, loc.meas = median, int = "IQR")
# you can also try: plot(kw, type = 2)
}
\keyword{univar}
\keyword{htest}
