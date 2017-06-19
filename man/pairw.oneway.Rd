\name{pairw.oneway}
\alias{pairw.oneway}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Welch tests controlled for simultaneous inference
}
\description{
Conducts all possible pairwise Welch tests with adjustments to \emph{P}-values using methods from \code{\link{p.adjust}}
}
\usage{
pairw.oneway(y, x, conf = 0.95, digits = 5, method = "holm")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
Response variable
}
  \item{x}{
Explanatory variable
}
  \item{conf}{
Confidence level
}
  \item{digits}{
Number of digits in results
}
  \item{method}{
Generalized method for controlling family wise type one error.  These must be methods from \code{\link{p.adjust}}, i.e., \code{"holm"}, \code{"hochberg"}, \code{"hommel"}, \code{"bonferroni"}, \code{"BH"}, \code{"BY"}, \code{"fdr"}, \code{"none"}.  Names can be abbreviated. 
}
}

\value{
The function \code{pairw.oneway} and the confidence interval functions it calls return a list of \code{class = "pairw"}. 

1) the type of contrast (names are taken from levels in x),

2) the mean difference,

3) the lower confidence bound of the true mean difference,

4) the upper confidence bound of the true mean difference,

5) the hypothesis decision, given the prescribed significance level, and

6) the adjusted \emph{P}-value.

Other \code{invisible} objects include:
  \item{cont}{a vector of contrasts.}
  \item{conf}{The confidence level.}
  \item{band}{A two column matrix containing the lower and upper confidence bounds.}
}

\note{
Note that while \emph{P}-values will be adjusted for simultaneous inference (unless \code{method = "none"}), confidence interval width are generally \emph{not adjusted}.  In particular, CI widths correspond to Welch SEs and Satterthwaite \emph{t} degrees of freedoms  Thus they control for heteroscedasticity, however they do not control for family-wise levels of \eqn{\alpha} unless \code{method = "bonferroni"}, under which the restrictive confidence level \eqn{1 - (\alpha/2r)} is used, where \emph{r} is the number of comparisons. 
}

\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and Li., W  (2005)  \emph{Applied Linear Statistical Models, 5th edition}.  McGraw-Hill, Boston.
}
\author{
Ken Aho and Peter Eckert
}

\seealso{
\code{\link{p.adjust}}, \code{\link{pairw.anova}} 
}
\examples{
y <- rnorm(30)
x <- as.factor(c(rep(1,10), rep(2,10), rep(3, 10)))
p <- pairw.oneway(y,x)
p
plot(p)
}
\keyword{univar}
\keyword{htest}
