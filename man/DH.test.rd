\name{DH.test}
\alias{DH.test}
\title{Doornik-Hansen test for multivariate normality.}
\description{
The Doornik-Hansen test for multivariate normality is a powerful alternative to the 
Shapiro-Wilk test.
}
\usage{

DH.test(Y, Y.names = NULL)
}
\arguments{

  \item{Y}{An \emph{n} x \emph{p} a dataframe of dependent variables.}
  \item{Y.names}{Names of \code{Y} variables; should be a 1 x \emph{p} character string.}
}
\details{
An assumption of multivariate normality is exceedingly difficult to verify.  Hypothesis 
tests tend to be too stringent, and multivariate diagnostic plots only allow viewing 
of two variables at a time.  Univariate normality of course can be verified using normal 
probability plots.  However while marginal non-normality indicates multivariate non-normality, 
marginal normality does not insure that \emph{Y} variables collectively follow a multivariate normal 
distribution.  

The Doornik-Hansen test for multivariate normality (Doornik and Hansen 2008) is based on the 
skewness and kurtosis of multivariate data that is transformed to insure independence.  
The DH test is more powerful than the Shapiro-Wilk test for most tested multivariate 
distributions (Doornik and Hansen 2008).  The function \code{DH.test} also runs the Doornik-Hansen 
test for both multivariate and univariate normality.  The later test follows 
directly from the work of Bowman and Shenton (1975), Shenton and Bowman (1977) and D'Agostino (1970).

}
\value{
Returns a list with two objects.
  \item{multi}{A dataframe containing multivariate results, i.e. the test statistic, \emph{E}, the 
  degrees of freedom and the \emph{p}-value.}
  \item{comp2 }{A dataframe with \emph{p} rows detailing univariate tests. Columns in the dataframe contain
  the test statistics, degrees of freedom and \emph{P}-values.}
}
\references{
D'Agostino, R. B. (1970). Transformation to normality of the null distribution of g1, \emph{Biometrika}
57: 679-681.

Doornik, J.A. and Hansen, H. (2008). An Omnibus test for univariate and multivariate 
normality. \emph{Oxford Bulletin of Economics and Statistics} 70, 927-939.

Shenton, L. R. and Bowman, K. O. (1977). A bivariate model for the distribution of b1 and b2,
\emph{Journal of the American Statistical Association} 72: 206.211.
}
\author{Ken Aho}
\note{As with all inferential normality tests our null hypothesis is that the underlying population 
is normal, in this case multivariate normal.
}
\seealso{\code{\link{shapiro.test}}, \code{\link{bv.boxplot}}}
\examples{
data(iris)#The ubiquitous multivariate iris data.
DH.test(iris[,1:4],Y.names=names(iris[,1:4]))
}
\keyword{htest}
\keyword{multivariate}
