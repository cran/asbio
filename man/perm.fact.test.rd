\name{perm.fact.test}
\alias{perm.fact.test}
\title{Permutation test for two and three way factorial designs}
\description{
Provides permutation tests for two and three way designs, using permutations of of the response vector with respect to factor levels.  One way permutation tests are provided by \code{\link{MC.test}}, and the function \code{oneway_test} in \code{coin}.
}
\usage{
perm.fact.test(Y, X1, X2, X3 = NA, perm = 100, method = "a")
}
\arguments{

  \item{Y}{A vector of response data.  A quantitative vector.}
  \item{X1}{A vector of factor levels describing factor one.}
  \item{X2}{A vector of factor levels describing factor two.}
  \item{X3}{If necessary, a vector of factor levels describing factor three.}
  \item{perm}{Number of permutations.}
  \item{method}{Either \code{"a"} or \code{"b"}, see below.}
}
\details{
Manly (1997) describes five factorial permutation methods which allow testing of interactions.  None of these should be considered to be extensively tested or strongly supported by the statistical literature.
(a) In the first method observations are randomly allocated to factorial treatments preserving the sample size for each treatment.  
Permutation distributions of the \emph{F} statistics for A, B, and AB are used for statistical tests.
(b) In the second method observations are randomized as above but permutation distributions of MSA, MSB and MSAB are obtained. 
(c) Edgington (1995) recommended a restricted randomization procedure where observations within a main effect are randomized while holding other effects constant.  
Either mean squares or \emph{F} statistics can be used to create permutation distributions.  
Edgington emphasized that testing interactions with this method are not possible, but that by randomizing over all AB combinations (as in alternative "a" above) provides a test statistic sensitive to interactions.       
(d) Still and White (1981) recommended a restricted testing procedure (as in (c) above) but recommended testing interactions after "subtracting" main effects.  
(e) Ter Braak (1992) recommended replacing observations by their residuals from the initial linear model.  These are then permuted, assuming that sample sizes were equal to original sample sizes across interactions of treatments.  Permutation distributions of the \emph{F} statistics for A, B, and AB are then used for statistical tests.
Manly (1997) recommends methods a, b, d, or e. Methods a and b are currently implemented.

}
\value{
A dataframe is returned describing initial \emph{F} test statistics for main effects and interactions, degrees of freedom, and permutation \emph{P}-values.
}
\references{
Edgington, E. S. (1995)  \emph{Randomization Tests, 3rd edition}.  Marcel Dekker, New York.  

Manly, B. F. J. (1997)  \emph{Randomization and Monte Carlo Methods in Biology, 2nd edition}.  
Chapman and Hall, London.

Still, A. W., and A. P. White  (1981)  The approximate randomization test as an 
alternative to the \emph{F} test in analysis of variance.  \emph{British Journal of Mathematics and Statistical Psychology}.  34: 243-252.

Ter Braak, C. F. J.  (1992)  Permutation versus bootstrap significance tests in multiple 
regression and ANOVA.  In Jockel, K. J. (ed). \emph{Bootstrapping and Related Techniques}.  Springer-Verlag, Berlin.
}

\author{Ken Aho}
\seealso{\code{\link{MC.test}}}
\examples{
lizard<-data.frame(ants=c(13,242,105,8,59,20,515,488,88,18,44,21,182,21,7,24,312,68,
460,1223,990,140,40,27),size=factor(c(rep(1,12),rep(2,12))),
month=factor(rep(rep(c(1,2,3,4),each=3),2)))
attach(lizard)
perm.fact.test(ants,month,size,perm=100, method = "b")
}
\keyword{univar}
\keyword{htest}
