\name{Pairw.test}
\alias{Pairw.test}
\alias{LSD.test}
\alias{BonferroniCI}
\alias{TukeyCI}
\alias{ScheffeCI}
\title{Conducts pairwise post hoc tests associated with an ANOVA.}
\description{
Conducts all possible pairwise tests with adjustments to \emph{p}-values using one of four methods:  Least Significant difference, Bonferroni, Tukey's honest significantly difference (HSD), or Scheffe's method. 
}
\usage{

Pairw.test(y, x, conf.level = 0.95, method = c("LSD", "Bonf", "Tukey", "Sheffe"), 
MSE = NULL, df.err = NULL)

LSD.test(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

BonferroniCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

TukeyCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

ScheffeCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)
}
\arguments{
  \item{y}{A quantitative vector containing the response variable}
  \item{x}{A categorical vector containing the groups (e.g. factor levels or treatments)}
  \item{conf.level}{1 - \emph{P}(type I error)}
  \item{method}{One of four possible choices: \code{"LSD", "Bonf", "Tukey", "Sheffe"}}
  \item{MSE}{Value of MSE from the omnibus ANOVA.  Default = \code{NULL}}
  \item{df.err}{Degrees of freedom error from the omnibus ANOVA.  Default = \code{NULL}}
}
\details{Adjustment for simultaneous inference is a contentious subject and will not be discussed at length here.  For description of methods go to Kutner et al. (2005).  For multifactor models, MSE and the residual degrees of freedom (used in the computation of confidence intervals for all pairwise methods used here) will vary depending on the experimental design and the number of factors.  Thus, for multifactor designs the user should specify the residual degrees of freedom and MSE from the omnibus ANOVA.  This will be unnecessary for one-way ANOVAs}
\value{
Returns a six column dataframe containing: 

1) the type of contrast (names are taken from levels in \code{x}),

2) the mean difference, 

3) the lower confidence bound of the true mean difference, 

4) the upper confidence bound of the true mean difference, 

5) the hypothesis decision rule given the prescribed significance level, and 

6) the adjusted \emph{p}-value.
}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and Li., W  (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\note{Different forms of these functions have existed for years without implementation into libraries.  My version here, based on the function \code{\link{outer}} is unique.}
\seealso{\code{\link{TukeyHSD}}}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-as.factor(c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4))
Pairw.test(x=trt,y=eggs,method="LSD")##LSD method
Pairw.test(x=trt,y=eggs,method="Bonf")##Bonferroni
Pairw.test(x=trt,y=eggs,method="Tukey")##Tukey HSD
Pairw.test(x=trt,y=eggs,method="Scheffe")##Sheffe
}
\keyword{univar}
\keyword{htest}
