\name{bplot}
\alias{bplot}
\title{Barplots with standard errors and CIs for pairwise comparisons.}
\description{
Creates barplots displaying treatment means with standard error or confidence interval error bars.  Can also display letters indicating if results were significant after adjustment for simultaneous inference.
}
\usage{
bplot(y, x, int = c("SE", "CI"), conf = 0.95, plot.ci = TRUE, bar = TRUE, simlett = FALSE, bar.col = "gray", lett = NULL, exp.fact = 2, xlab = "x", ylab = "y", err = "y", sfrac = 0.01, gap = 0, slty = par("lty"), scol = NULL, pt.bg = par("bg"), ...)
}
\arguments{

  \item{y}{A quantitative vector representing the response variable.}
  \item{x}{A categorical vector representing treatments (e.g. factor levels).}
  \item{int}{Type of error bar to be drawn, either \code{"SE"} of \code{"CI"}.}
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
  \item{\dots}{Additional arguments from \code{\link{barplot}}.}
}
\details{
It is often desirable to display the results of a pairwise comparison procedure using sample means and error bars.  This functions allows these sorts of plots to be made. Note that this function is essentially a wrapper for the function \code{\link{barplot}} and \code{\link[plotrix]{plotCI}}.  Much of the documentation here follows directly from B. Boklker.
}
\value{
A plot is returned.
}
\author{Ken Aho created the wrapper for \code{\link{barplot}}.  To create the function \code{\link[plotrix]{plotCI}} Ben Bolker documented and tweaked a function provided by Bill Venables.}
\seealso{\code{\link{barplot}}, \code{\link[plotrix]{plotCI}}}
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4)
bplot(y=eggs, x=trt,int="SE",xlab="Treatment",ylab="Mean number of eggs",names.arg=c(1,2,3,4),simlett=TRUE,lett=c("b","b","b","a"))
}
\keyword{graphs}
\keyword{univar}
