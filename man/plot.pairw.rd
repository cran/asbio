\name{plot.pairw}
\alias{plot.pairw}

\title{
Plots confidence intervals for objects from class pairw 
}
\description{
Provides a utility confidence interval plotting function for objects of \code{class = "pairw"}, i.e. objects from \code{pairw.anova}, \code{pair.fried}, and \code{pairw.kw}. 
}
\usage{
\method{plot}{pairw}(x, col = 1, lty = NULL, lwd = NULL, cap.length = 0.1, xlab = "", main = NULL, ...)
}
\arguments{

  \item{x}{
An object of class \code{pairw}.
}
  \item{col}{
Confidence bar color, see \code{\link{par}}.
}
  \item{lty}{
Confidence bar line type, see \code{\link{par}}.
}
  \item{lwd}{
Confidence bar line width, see \code{\link{par}}.
}
 \item{cap.length}{
Widths for caps on interval bars (in inches).
}
  \item{xlab}{
X-axis label.
}
  \item{main}{
Main cpation.  Defaults to a descriptive head.
}
  \item{\dots}{
Additional arguments from \code{\link{barplot}}.
}
}

\author{
Ken Aho
}
\seealso{
\code{\link{pairw.anova}}, \code{\link{pairw.fried}}, \code{\link{pairw.kw}}, \code{\link{barplot}}, \code{\link{TukeyHSD}}
}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-as.factor(c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4))

plot(pairw.anova(y=eggs,x=trt,method="scheffe"))

#Data from Fox and Randall (1970)
tremors <- data.frame(freq = c(2.58, 2.63, 2.62, 2.85, 3.01, 2.7, 2.83, 3.15, 
3.43, 3.47, 2.78, 2.71, 3.02, 3.14, 3.35, 2.36, 2.49, 2.58, 2.86, 3.1, 2.67, 
2.96, 3.08, 3.32, 3.41, 2.43, 2.5, 2.85, 3.06, 3.07), weights = 
factor(rep(c(7.5, 5, 2.5, 1.25, 0), 6)), block = factor(rep (1 : 6, each = 5)))

plot(with(tremors, pairw.fried(y = freq, x = weights, blocks = block, nblocks = 
6, conf = .95)))

rye.data <- data.frame(rye = c(50, 49.8, 52.3, 44.5, 62.3, 74.8, 72.5, 80.2, 
47.6, 39.5, 47.7,50.7), nutrient = factor(c(rep(1, 4), rep(2, 4), rep(3, 4))))

plot(with(rye.data, pairw.kw(y = rye, x = nutrient, conf = .95)))
}

\keyword{graphs}
\keyword{htest}
