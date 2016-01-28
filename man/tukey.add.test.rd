\name{tukey.add.test}
\alias{tukey.add.test}
\alias{print.addtest} 
\title{Tukey's test of additivity.}
\description{With an RBD we are testing the null hypothesis that there is no treatment effect in any block.  As a result randomized block designs including RBDs, Latin Squares, and spherical repeated measures assume that there is no interaction effect between blocks and main factors (i.e. main effects and block are additive).  We can test this assumption with the Tukey's test for additivity.  We address the following hypotheses:

H\eqn{_0}: Main effects and blocks are additive, versus H\eqn{_A}: Main effects and blocks are non-additive.}
\usage{

tukey.add.test(y, A, B)
}
\arguments{

  \item{y}{Response variable. Vector of quantitative data.}
  \item{A}{Main effects.  Generally a vector of categorical data.}
  \item{B}{Blocking variable.  A vector of categories (blocks).}
}
\details{
Tukey's test for additivity is best for detecting simple block x treatment interactions; for instance, when lines in an interaction plot cross.  As a result interaction plots should be used for diagnosis of other types of interactions.  A high probability of type II error results from the inability Tukey's additivity test to detect complex interactions (Kirk 1995).  As a result a conservative value of  should be used, i.e. 0.1 - 0.25. 
}
\value{
Returns a table with test results.
}
\references{
Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li. (2005)  \emph{Applied Linear Statistical Models, 5th edition}.  McGraw-Hill, Boston.

Kirk, R. E.  1995.  \emph{Experimental Design}.  Brooks/Cole.  Pacific Grove, CA.
}
\author{Orginal author unknown.  Modified by K. Aho}
\examples{
treatment<-as.factor(c(36,54,72,108,144,36,54,72,108,144,36,54,72,108,144))
block<-as.factor(c(rep(1,5),rep(2,5),rep(3,5)))
strength<-c(7.62,8.14,7.76,7.17,7.46,8,8.15,7.73,7.57,7.68, 7.93,7.87,7.74, 7.8,7.21)
tukey.add.test(strength,treatment,block)
}

\keyword{univar}
\keyword{htest}
