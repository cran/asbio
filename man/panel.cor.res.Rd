\name{panel.cor.res}
\alias{panel.cor.res}
\alias{panel.lm}
\title{Functions for customizing correlation matrices}
\description{
The functions here can be used to customize upper and lower triangles in 
correlation matrices.  In particular \code{panel.cor.res} provides correlation 
coefficients (any alternative from \code{\link{cor}} can be used) and \emph{p}-values for correlation 
tests.  The function \code{panel.lm} puts linear fitted lines from simple linear 
regression in scatterplots.  Note that the function \code{\link{panel.smooth}} provides a 
smoother fit.
}
\usage{
panel.cor.res(x, y, digits = 2, meth = "pearson", cex.cor=1)
panel.lm(x, y, col = par("col"), bg = NA, pch = par("pch"), cex = 1,
col.line = 2,lty = par("lty"))
}
\arguments{
  \item{x}{variable 1 in  correlation}
  \item{y}{variable 2 in correlation}
  \item{digits}{number of digits in text for \code{panel.cor.res}}
  \item{meth}{type of correlation coefficeint from \code{panel.cor.res}, one of \code{"pearson"}, \code{"spearman"}, \code{"kendall"}}
  \item{cex.cor}{size of text in \code{panel.lm}}
  \item{col}{color of points in \code{panel.lm}}
  \item{bg}{background color of points in \code{panel.lm}}
  \item{pch}{type of symbols for points in \code{panel.lm}}
  \item{cex}{symbol size in \code{panel.lm}}
  \item{lty}{line type in \code{panel.lm}}
  \item{col.line}{color of lines in \code{panel.lm}}
}
\author{Ken Aho}
\seealso{\code{\link{cor}}, \code{\link{cor.test}}, \code{\link{panel.smooth}}}
\examples{
data(asthma)
attach(asthma)
pairs(asthma,cex.labels=1,cex=.95,gap=.1,lower.panel=panel.cor.res,
upper.panel=panel.lm)
}
\keyword{graphs}
\keyword{htest}
