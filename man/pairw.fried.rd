\name{pairw.fried}
\alias{pairw.fried}
\alias{FR.multi.comp}
\title{Multiple pairwise comparison procedure to accompany a Friedman test.}
\description{Replaces now defunct \code{FR.multi.comp}.  As with ANOVA we can examine multiple pairwise comparisons from a Friedman test after we have rejected othe overall null hypothesis.  
However we will need to account for family-wise type I error in these comparisons which will be non-orthogonal.  A conservative multiple comparison method used here is based on the Bonferroni procedure.
}
\usage{

pairw.fried(y, x, blocks, nblocks, conf = 0.95)
}
\arguments{

  \item{y}{A vector of responses, i.e. quantitative data.}
  \item{x}{A categorical vector of factor levels.}
  \item{blocks}{A categorical vector of blocks.}
  \item{nblocks}{The number of blocks.}
  \item{conf}{The level of confidence.  1 - \emph{P}(type I error).}
}

\value{
Returns a list of \code{class = "pairw"}.  The utility print function returns a descriptive head and a six column summary dataframe containing: 

1) the type of contrast (names are taken from levels in \code{x}),

2) the mean rank difference,
 
3) the lower confidence bound of the true mean rank difference,
 
4) the upper confidence bound of the true mean rank difference, 

5) the hypothesis decision given the prescribed significance level, and

6) the adjusted \emph{P}-value.
}
\references{
Fox, J. R., and Randall, J. E. (1970)  Relationship between forearm tremor and the biceps electromyogram.  \emph{Journal of Applied Physiology}  29: 103-108.

Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li (2005)  \emph{Applied Linear Statistical Models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\seealso{\code{\link{friedman.test}}, \code{\link{plot.pairw}}}
\examples{
#Data from Fox and Randall (1970)
tremors <- data.frame(freq = c(2.58, 2.63, 2.62, 2.85, 3.01, 2.7, 2.83, 3.15, 
3.43, 3.47, 2.78, 2.71, 3.02, 3.14, 3.35, 2.36, 2.49, 2.58, 2.86, 3.1, 2.67, 
2.96, 3.08, 3.32, 3.41, 2.43, 2.5, 2.85, 3.06, 3.07), weights = 
factor(rep(c(7.5, 5, 2.5, 1.25, 0), 6)), block = factor(rep (1 : 6, each = 5)))

fr <- with(tremors, pairw.fried(y = freq, x = weights, blocks = block, nblocks = 6, conf = .95))
fr
plot(fr, loc.meas = median, int = "IQR")
# you can also try: plot(fr, type = 2, las = 2)
}
\keyword{htest}
\keyword{univar}
