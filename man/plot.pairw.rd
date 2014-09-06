\name{plot.pairw}
\alias{plot.pairw}

\title{
Plots confidence intervals and/or bars with letters indicating significant differences for objects from class pairw 
}
\description{
Provides a utility confidence interval plotting function for objects of \code{class = "pairw"}, i.e. objects from \code{pairw.anova}, \code{pair.fried}, and \code{pairw.kw}. 
}
\usage{
\method{plot}{pairw}(x, type = 1, lcol = 1, lty = NULL, lwd = NULL, 
cap.length = 0.1, xlab = "", main = NULL, ...)
}
\arguments{

  \item{x}{
An object of class \code{pairw}.
}
  \item{type}{
Two types of plots can be made.  Type 1 is a barplot with identical letters over bars if the differences are not significant after adjustment for simultaneous inference.  Type 1 plots can be modified using \code{\link{bplot}} arguments.  A type 2 plot shows confidence intervals for true differences. 
}
  \item{lcol}{
Confidence bar line color for a type 2 plot, see \code{\link{par}}.
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
Additional arguments from \code{\link{bplot}} or \code{\link{barplot}} for type 1 and 2 graphs, respectively.
}
}

\author{
Ken Aho.  Letters for type 1 graphs obtained using the function \code{\link{multcompLetters}} from package \pkg{multcompView} which uses the algorithm of Peipho (2004). 
}
\references{
Piepho, H-P (2004) An algorithm for a letter-based representation of all-pairwise comparisons. \emph{Journal of Computational and Graphical Statistics} 13(2): 456-466. 
}
\seealso{
\code{\link{pairw.anova}}, \code{\link{pairw.fried}}, \code{\link{pairw.kw}}, \code{\link{barplot}}, \code{\link{bplot}}, \code{\link{multcompLetters}}
}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-as.factor(c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4))

# Type 1 plot
plot(pairw.anova(y = eggs, x = trt, method = "scheffe", conf = .8), int = "CI", 
conf = .8)
# Type 2 plot
plot(pairw.anova(y = eggs, x = trt, method = "scheffe", conf = .8), type = 2)

# Data from Fox and Randall (1970)
tremors <- data.frame(freq = c(2.58, 2.63, 2.62, 2.85, 3.01, 2.7, 2.83, 3.15, 
3.43, 3.47, 2.78, 2.71, 3.02, 3.14, 3.35, 2.36, 2.49, 2.58, 2.86, 3.1, 2.67, 
2.96, 3.08, 3.32, 3.41, 2.43, 2.5, 2.85, 3.06, 3.07), weights = 
factor(rep(c(7.5, 5, 2.5, 1.25, 0), 6)), block = factor(rep (1 : 6, each = 5)))

plot(with(tremors, pairw.fried(y = freq, x = weights, blocks = block, nblocks = 
6, conf = .95)), loc.meas = median, int = "IQR", bar.col = "lightgreen", 
lett.side = 4, density = 3, horiz = TRUE) # Note how blocking increases power 

rye.data <- data.frame(rye = c(50, 49.8, 52.3, 44.5, 62.3, 74.8, 72.5, 80.2, 
47.6, 39.5, 47.7,50.7), nutrient = factor(c(rep(1, 4), rep(2, 4), rep(3, 4))))

plot(with(rye.data, pairw.kw(y = rye, x = nutrient, conf = .95)), type = 2)
}

\keyword{graphs}
\keyword{htest}
