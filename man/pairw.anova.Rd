\name{pairw.anova}
\alias{pairw.anova}
\alias{lsdCI}
\alias{bonfCI}
\alias{tukeyCI}
\alias{scheffeCI}
\alias{dunnettCI}
\alias{scheffe.cont}
\alias{bonf.cont}
\alias{print.pairw}

\title{Conducts pairwise post hoc and planned comparisons associated with an ANOVA}
\description{
The function pairw.anova replaces the defunct \code{Pairw.test}. Conducts all possible pairwise tests with adjustments to \emph{P}-values using one of five methods: Least Significant difference (LSD), Bonferroni, Tukey-Kramer honest significantly difference (HSD), Scheffe's method, or Dunnett's method. 
Dunnett's method requires specification of a control group, and does not return adjusted \emph{P}-values.  The functions \code{scheffe.cont}\code{bonf.cont} allow Bonferroni and Scheffe's family-wise adjustment of individual planned pairwise contrasts.    
}
\usage{

pairw.anova(y, x, conf.level = 0.95, method = "tukey", 
MSE = NULL, df.err = NULL, control = NULL)

lsdCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

bonfCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

tukeyCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

scheffeCI(y, x, conf.level = 0.95, MSE = NULL, df.err = NULL)

dunnettCI(y, x, conf.level = 0.95, control = NULL)

scheffe.cont(y, x, lvl = c("x1", "x2"), conf.level = 0.95, MSE = NULL, df.err = NULL)

bonf.cont(y, x, lvl = c("x1", "x2"), conf.level = 0.95, MSE = NULL, df.err = NULL, comps = 1)

}
\arguments{
  \item{y}{A quantitative vector containing the response variable}
  \item{x}{A categorical vector containing the groups (e.g. factor levels or treatments)}
  \item{conf.level}{1 - \emph{P}(type I error)}
  \item{method}{One of five possible choices: \code{"lsd", "bonf", "tukey", "scheffe", "dunnett"}}
  \item{MSE}{Value of MSE from the ANOVA model.  Default = \code{NULL}}
  \item{df.err}{Degrees of freedom error from the omnibus ANOVA.  Default = \code{NULL}}
  \item{control}{Control group for Dunnett's test.}
  \item{lvl}{A two element vector defining two factor levels to be compared using Scheffe's and the Bonferroni method.}
  \item{comps}{The number of comparisons to be made in the Bonferroni method.}
}  
\details{Adjustment of comparison type I error for simultaneous inference is a contentious subject and will not be discussed here.  For description of methods go to Kutner et al. (2005). For models where the number of factors is >= 2, MSE and the residual degrees of freedom (used in the computation of confidence intervals for all pairwise methods used here) will vary depending on the experimental design and the number of factors.  
Thus, for multifactor designs the user should specify the residual degrees of freedom and MSE from the overall ANOVA.  This will be unnecessary for one-way ANOVAs.}
\value{
The function \code{pairw.anova} and the confidence interval functions it calls return a list of \code{class = "pairw"}.  For all but the LSD test (which also returns LSD) and Dunnett's test (which does not return adjusted \emph{P}-values), the utility function \code{print.pairw} returns a descriptive head and a six column summary dataframe containing: 

1) the type of contrast (names are taken from levels in \code{x}),

2) the mean difference, 

3) the lower confidence bound of the true mean difference, 

4) the upper confidence bound of the true mean difference, 

5) the hypothesis decision rule given the prescribed significance level, and 

6) the adjusted \emph{P}-value.

Other \code{invisible} objects include:
  \item{cont}{a vector of contrasts.}
  \item{conf}{The confidence level.}
  \item{band}{A two column matrix containing the lower and upper confidence bounds.}

The \code{pairw} class also has a utility function \code{\link{plot.pairw}} which provides a plot of confidence intervals for the true difference of each comparison.  
}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and Li., W  (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.
}
\author{Ken Aho}
\note{Different forms of these functions have existed for years without implementation into libraries.  My version here, based on the function \code{\link{outer}} is unique.}
\seealso{\code{\link{plot.pairw}}.  Functions from library \pkg{mult.comp} provide more sophisticated comparisons including customized contrasts and one tailed tests.}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-as.factor(c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4))

pairw.anova(y=eggs,x=trt,method="lsd")##LSD method
pairw.anova(y=eggs,x=trt,method="bonf")##Bonferroni
pairw.anova(y=eggs,x=trt,method="scheffe")##Sheffe
pairw.anova(y=eggs,x=trt,method="tukey")##Tukey HSD

blood.count <- data.frame(bc=c(7.4,8.5,7.2,8.24,9.84,8.32,9.76,8.8,7.68,9.36,12.8,9.68,12.16,9.2,10.55), trt=c(rep("C",6),rep("A",4),rep("B",5)))
with(blood.count,pairw.anova(y=bc,x=trt,control="C",method="dunnett"))##Dunnett

scheffe.cont(y=eggs,x=trt,lvl=c(1,3)) 
scheffe.cont(y=eggs,x=trt,lvl=c(1,2))

bonf.cont(y=eggs,x=trt,lvl=c(1,3), comps = 2) 
bonf.cont(y=eggs,x=trt,lvl=c(1,2), comps = 2) 
}

\keyword{univar}
\keyword{htest}
