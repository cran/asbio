\name{BDM.test}
\alias{BDM.test}
\alias{BDM.2way}
\title{Brunner-Dette-Munk test}
\description{One and two way heteroscedastic rank-based permutation tests.  Two way designs are assumed to be factorial, i.e. interactions are tested.
}
\usage{

BDM.test(Y, X)

BDM.2way(Y, X1, X2)
}
\arguments{
  \item{Y}{Vector of response data.  A quantitative vector}
  \item{X}{A vector of factor levels for a one-way analysis.  To be used with \code{BDM.test}}
  \item{X1}{A vector of factor levels for the first factor in a two-way factorial design.  To be used with \code{BDM.2way}.}
  \item{X2}{A vector of factor levels for the second factor in a two-way factorial design.  To be used with \code{BDM.2way}.}
}
\details{
A problem with the Kruskal-Wallis test is that, while it does not assume normality for groups, it still assumes homoscedasticity (i.e. the groups have the same distributional shape).  As a solution Brunner et al. (1997) proposed a heteroscedastic version of the Kruskal-Wallis test which utilizes the \emph{F}-distribution.  Along with being robust to non-normality and heteroscedasticity, calculations of exact \emph{p}-values using the Brunner-Dette-Munk method are not made more complex by tied values.  This is another obvious advantage over the traditional Kruskal-Wallis approach.    
}
\value{
 Returns a list with two components
  \item{Q}{The "relative effects" for each group.}
  \item{Table}{An ANOVA type table with hypothesis test results.}
}
\references{
Brunner, E., Dette, H., and A. Munk (1997)  Box-type approximations in nonparametric 
factorial designs.  \emph{Journal of the American Statistical Association}.  92: 1494-1502.

Wilcox, R. R.  (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.

}
\author{Ken Aho}
\note{Code based on Wilcox (2005)
}
\seealso{\code{\link{kruskal.test}}, \code{\link{trim.test}}}
\examples{
rye<-c(50,49.8,52.3,44.5,62.3,74.8,72.5,80.2,47.6,39.5,47.7,50.7)
nutrient<-factor(c(rep(1,4),rep(2,4),rep(3,4)))
BDM.test(Y=rye,X=nutrient)
}
\keyword{htest}
\keyword{univar}
