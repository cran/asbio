\name{anscombe}
\alias{anscombe}
\docType{data}
\title{
Anscobe's quartet
}
\description{
A set of four bivariate datasets with the same conditional means, conditional variances, linear regressions, and correlations, but with dramatically different forms of association. 
}
\usage{data(anscombe)}
\format{
  A data frame with 11 observations on the following 8 variables.
  \describe{
    \item{\code{x1}}{The first conditional variable in the first bivariate dataset.}
    \item{\code{y1}}{The second conditional variable in the first bivariate dataset.}
    \item{\code{x2}}{The first conditional variable in the second bivariate dataset.}
    \item{\code{y2}}{The second conditional variable in the second bivariate dataset.}
    \item{\code{x3}}{The first conditional variable in the third bivariate dataset.}
    \item{\code{y3}}{The second conditional variable in the third bivariate dataset.}
    \item{\code{x4}}{The first conditional variable in the fourth bivariate dataset.}
    \item{\code{y4}}{The second conditional variable in the fourth bivariate dataset.}
  }
}
\details{
Anscombe (1973) used these datasets to demonstrate that summary statsitics are inadequate for describing association.
}
\source{
Anscombe, F. J.  1973.  Graphs in statistical analysis. \emph{American Statistician} 27 (1): 17-21.
}
\references{
Anscombe, F. J.  1973.  Graphs in statistical analysis. \emph{American Statistician} 27 (1): 17-21.
}
\examples{
par(mfrow=c(1,4), mar=c (5, 4, 4, .5))
with(anscombe, plot(x1, y1, xlab = expression(Y[1]), ylab = expression(Y[2]), main = paste("r = ",round(cor(x1, y1),2)))); abline(3,0.5) 
with(anscombe, plot(x2, y2, xlab = expression(Y[1]), ylab = expression(Y[2]), main = paste("r = ",round(cor(x2, y2),2)))); abline(3,0.5) 
with(anscombe, plot(x3, y3, xlab = expression(Y[1]), ylab = expression(Y[2]), main = paste("r = ",round(cor(x3, y3),2)))); abline(3,0.5) 
with(anscombe, plot(x4, y4, xlab = expression(Y[1]), ylab = expression(Y[2]), main = paste("r = ",round(cor(x4, y4),2)))); abline(3,0.5) 
mtext("(a)",side = 3, at = -50, line = 1); mtext("(b)",side = 3, at = -32, line = 1)
mtext("(c)",side = 3, at = -14, line = 1); mtext("(d)",side = 3, at = 5, line = 1)
}
\keyword{datasets}

