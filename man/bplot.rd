\name{bplot}
\alias{bplot}
\title{Barplots with standard errors and CIs for pairwise comparisons.}
\description{
Creates barplots displaying treatment measures of location (e.g. means, or medians) along with error bars (i.e. standard errors or confidence intervals or IQRs).  Can also display letters indicating if results were significant after adjustment for simultaneous inference.
}
\usage{
bplot(y, x, int = c("SE","CI","IQR","IQR.CI"), conf = 0.95, plot.ci = TRUE, 
bar = TRUE, simlett = FALSE, bar.col = "gray", lett = NULL, exp.fact = 2, 
xlab = "x", ylab = "y", err = "y", sfrac = 0.01, gap = 0, slty = par("lty"), 
scol = NULL,  pt.bg = par("bg"),order=FALSE,names.arg=NULL, width=1, 
loc.meas=mean, cex.lab=1, cex.axis=1, cex.names=1, las=par("las"), 
horiz = FALSE, ylim = NULL,...)
}
\arguments{

  \item{y}{A quantitative vector representing the response variable.}
  \item{x}{A categorical vector representing treatments (e.g. factor levels).}
  \item{int}{Type of error bar to be drawn, one of \code{"SE"}, \code{"CI"}, \code{\link{IQR}}, or \code{"IQR.CI"}.  IQR-derived confidence intervals are based on +/-1.58 IQR/sqrt(n) and provide an approximate 95\% confidence interval for the difference in two medians.  The measure can be attributed to Chambers et al. (1983, p. 62), given McGill et al. (1978, p. 16). It is based on asymptotic normality of the median and assumes roughly equal sample sizes for the two medians being compared.  The interval is apparently insensitive to the underlying distributions of the samples. }
  \item{conf}{Level of confidence, 1 - \emph{P}(type I error).}
  \item{plot.ci}{Logical; indicating whether or not error bars are to be plotted.}
  \item{bar}{Logical; specifies whether a barplot or just error bars should be shown.}
  \item{bar.col}{Color of bar.}
  \item{simlett}{A logical statement indicating whether or not letters should be shown above bars indicating that populations means have been determined to be significantly different. }
  \item{lett}{A vector of letters or some other code to display multiple comparison results.}
  \item{exp.fact}{A multiplication factor indicating how much extra room is made for drawing letters in top of graph.  Only used if \code{simlett = TRUE}.}
  \item{xlab}{X axis label for plot.}
  \item{ylab}{Y axis label for plot.}
  \item{err}{The direction of error bars: \code{x} for horizontal, \code{y} for vertical.}
  \item{sfrac}{Scaling factor for the size of the "serifs" (end bars) on the confidence bars, in x-axis units.}
  \item{gap}{Size of gap in error bars around points (default 0; for \code{gap=TRUE} gives gap size of 0.01).}
  \item{slty}{Line type for error bars.}
  \item{scol}{Line color for error bars.}
  \item{pt.bg}{Background color of points.  If \code{pch=NA}, no points are drawn (e.g. leaving room for text labels instead).}
  \item{order}{Logical, if \code{TRUE}, then treatments are ordered by their location statistics.}
  \item{names.arg}{A vector of names to be plotted below each bar or error bar. If this argument is omitted, then the names are taken from the names attribute of \code{y}}.
  \item{width}{Optional vector of bar widths.}
  \item{loc.meas}{Measure of location to be used for treatments, e.g. \code{\link{mean}} or \code{\link{median}}.} 
  \item{cex.lab}{Size of axis labels}
  \item{cex.axis}{Expansion factor for numeric axis labels.}
  \item{cex.names}{Expansion factor for axis names (bar labels).}
  \item{las}{Style of axis labels.  See \code{\link{par}}.}
  \item{horiz}{Logical value. If \code{FALSE}, then bars are drawn vertically with the first bar to the left. If \code{TRUE}, then bars are drawn horizontally with the first at the bottom.}
  \item{ylim}{Limits for Y-axis.}
  \item{\dots}{Additional arguments from \code{\link[plotrix]{plotCI}}.}
}
\details{
It is often desirable to display the results of a pairwise comparison procedure using sample measures of location and error bars.  This functions allows these sorts of plots to be made. Note that this function is essentially a wrapper for the function \code{\link{barplot}} and \code{\link[plotrix]{plotCI}}.  Much of the documentation here follows directly from B. Boklker and the documentation for \code{\link{barplot}}.
}
\value{
A plot is returned.
}
\author{Ken Aho created the wrapper for \code{\link{barplot}}.  To create the function \code{\link[plotrix]{plotCI}} Ben Bolker documented and tweaked a function provided by Bill Venables.}
\seealso{\code{\link{barplot}}, \code{\link[plotrix]{plotCI}}}
\references{Chambers, J. M., Cleveland, W. S., Kleiner, B. and Tukey, P. A. (1983) \emph{Graphical Methods for Data Analysis}. Wadsworth & Brooks/Cole.
McGill, R., Tukey, J. W. and Larsen, W. A. (1978) Variations of box plots. \emph{The American Statistician} 32, 12-16.}  
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4)
bplot(y=eggs, x=factor(trt),int="SE",xlab="Treatment",ylab="Mean number of eggs",
simlett=TRUE, lett=c("b","b","b","a"),pch=NA)
}
\keyword{graphs}
\keyword{univar}
