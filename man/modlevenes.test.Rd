\name{modlevenes.test}
\alias{modlevenes.test}
\title{Modified Levene's test}
\description{
Conducts the modified Levene's test for homoscedastic populations.
}
\usage{

modlevenes.test(x, groups)
}
\arguments{

  \item{x}{Vector of residuals from a linear model.}
  \item{groups}{Vector of factor levels.}
}
\details{
The modified Levene's test is a test for homoscedsticity that (unlike the classic \emph{F}-test) is robust to violations of normality (Conover et al. 1981).  In a Modified Levene's test we calculate \eqn{d_{ij}=|e_{ij} - \tilde{e}_{i}|} where \eqn{\tilde{e}_i} is the \emph{i}th factor level residual median.  We then run an ANOVA on the \eqn{d_{ij}}'s.  If the \emph{p}-value is < \eqn{\alpha}, we reject the null and conclude that the population error variances are not equal.  
}
\value{
An ANOVA table is returned with the modified Levene's test results.
}
\references{
Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li. (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}

\seealso{\code{\link{fligner.test}}}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-as.factor(c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4))
lm1<-lm(eggs~trt)
modlevenes.test(residuals(lm1),trt)

}
\keyword{univar}
\keyword{htest}
