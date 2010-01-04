\name{Mrpp}
\alias{Mrpp}
\alias{print.Mrpp}
\title{Multi-response permutation procedure.  A wrapper for mrpp from vegan.}
\description{
While \code{\link[vegan]{mrpp}} in library \code{vegan} directly tests the hypothesis of identical multivariate disributions using a permutation procedure, PC-ORD approximates the distribution of  using a Pearson type III distribution which accommodates the fact that the permutation distribution is often significantly skewed (McCune and Grace 2002).  The Pearson type III distribution is similar to the binomial distribution when \emph{p} \eqn{\neq} \emph{q} (Abramowitz and Stegun 1972). 
}
\usage{

Mrpp(dat, grouping, permutations = 1000, distance = "euclidean", weight.type = 1, strata)
}
\arguments{
  \item{dat}{data matrix or data frame in which rows are samples and columns are response variable(s), or a dissimilarity object or a symmetric square matrix of dissimilarities.}
  \item{grouping}{Factor or numeric index for grouping observations.}
  \item{permutations}{Factor or numeric index for grouping observations.}
  \item{distance}{Choice of distance metric that measures the dissimilarity between two observations .  The function \code{vegdist} is used to calculate dissimilarities.}
  \item{weight.type}{choice of group weights. See Details below for options.}
  \item{strata}{An integer vector or factor specifying the strata for permutation. If supplied, observations are permuted only within the specified strata.}
}
\details{
\code{Mrpp} provides additional output to \code{\link[vegan]{mrpp}} including a \emph{T} statistic and a Pearson's type III \emph{p}-value.  The Pearson Type III distribution has three parameters: a mean, standard deviation  , and a shape parameter  , based on the skewness of the empirical distribution.  These are estimated, and \emph{p}-values are calculated in the wrapper function \code{Mrpp} using functions from the library \code{lmomco} (Asquith 2008).  See documentation from \code{\link[vegan]{mrpp}} for additional information.
}
\value{
The function returns a list of class \code{Mrpp} with following items:
  \item{call}{Function call.}
  \item{delta}{The overall weighted mean of group mean distances.}
  \item{E.delta}{expected delta, under the null hypothesis of no group structure. This is the mean of original dissimilarities.}
  \item{CS}{Classification strength (Van Sickle 1997) with \code{weight.type = 3} and \code{NA} with other weights.}
  \item{n}{Number of observations in each class.}
  \item{classdelta}{Mean dissimilarities within classes. The overall delta is the weighted average of these values with given \code{weight.type}.}
  \item{Pvalue}{Significance of the test.}
  \item{distance}{Choice of distance metric used; the "method" entry of the dist object.}
  \item{weight.type}{The choice of group weights used.}
  \item{boot.deltas}{The vector of "permuted deltas," the deltas calculated from each of the permuted datasets.}
  \item{permutations}{The number of permutations used.}

}
\references{
McCune, B. and Grace, J. B. (2002) \emph{Analysis of Ecological Communities. MjM Software Design}, Gleneden Beach, Oregon, USA. 

Mielke P. W. and Berry, K. J. (2001) \emph{Permutation Methods: A Distance Function Approach}. Springer Series in Statistics. Springer. 

Van Sickle, J. (1997) Using mean similarity dendrograms to evaluate classifications. \emph{Journal of Agricultural, Biological, and Environmental Statistics} 2:370-388. 

}
\author{M. Herny H. Stevens \email{HStevens@muohio.edu} and Jari Oksanen.  Wrapper created by Ken Aho}
\examples{
library(vegan)
data(dune)
data(dune.env)
Mrpp(dune, dune.env$Management)
}
\keyword{htest}
\keyword{multivariate}
