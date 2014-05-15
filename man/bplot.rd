\name{bplot}
\alias{bplot}
\title{
Barplots with error bars for pairwise comparisons.
}
\description{
Creates barplots for displaying statistical summaries by treatment (e.g. means, medians, \emph{M}-estimates of location, standard deviation, variance, etc.)and 
their error estimates by treatment (i.e. standard errors, confidence intervals, \emph{IQR}s, \emph{IQR} confidence intervals, and \emph{MAD} intervals). Custom intervals can also be created.  
The function can also display letters indicating if results are significant after adjustment for simultaneous inference.
}
\usage{
bplot(y, x, bar.col = "gray", loc.meas = mean, order = FALSE, int = "SE",
 conf = 0.95, uiw = NULL, liw = NULL, sfrac = 0.1, slty = 1, scol = 1,
 slwd = 1, exp.fact = 1.5, simlett = FALSE, lett.side = 3, lett = NULL,
 cex.lett = 1, names.arg = NULL, ylim = NULL, horiz = FALSE, ...)
}

\arguments{
  \item{y}{A quantitative vector representing the response variable.}
  \item{x}{A categorical vector representing treatments (e.g. factor levels).}
  \item{bar.col}{Color of bar.}
  \item{loc.meas}{Measure of location or other summary statistic, e.g. mean, median, etc.}
  \item{order}{Logical, if \code{TRUE}, then treatments are ordered by their location statistics.}
  \item{int}{Type of error bar to be drawn, must be one of \code{"SE"}, \code{"CI"}, \code{\link{IQR}}, \code{"MAD"}, or \code{"IQR.CI"}.  IQR-derived confidence intervals are based on +/-1.58 IQR/sqrt(n) and provide an approximate 95\% confidence interval for the difference in two medians.  The measure can be attributed to Chambers et al. (1983, p. 62), given McGill et al. (1978, p. 16). It is based on asymptotic normality of the median and assumes roughly equal sample sizes for the two medians being compared.  The interval is apparently insensitive to the underlying distributions of the samples. }
  \item{conf}{Level of confidence, 1 - \emph{P}(type I error).}
  \item{uiw}{Upper \emph{y}-coordinate for the error bar, if \code{NULL} then this will be computed from \code{int}.} 
  \item{liw}{Lower \emph{y}-coordinate for the error bar, if \code{NULL} then this will be computed from \code{int}.}  
  \item{sfrac}{Scaling factor for the size of the "serifs" (end bars) on the confidence bars, in \emph{x}-axis units.}
  \item{slty}{Line type for error bars.}
  \item{scol}{Line color for error bars.}
  \item{slwd}{Line width for error bars.}
  \item{exp.fact}{A multiplication factor indicating how much extra room is made for drawing letters in top of graph.  Only used if \code{simlett = TRUE}.}
  \item{simlett}{A logical statement indicating whether or not letters should be shown above bars indicating that populations means have been determined to be significantly different. }
  \item{lett.side}{Side that letters will be drawn on, 1 = bottom, 2 = left, 3 = top, 4 = right.}
  \item{lett}{A vector of letters or some other code to display multiple comparison results.}
  \item{cex.lett}{Character expansion for multiple comparison result letters.}
  \item{names.arg}{A vector of names to be plotted below each bar or error bar. If this argument is omitted, then the names are taken from the names attribute of \code{y}.}
  \item{ylim}{Upper and lower limits of the \emph{Y}-axis}
  \item{horiz}{Logical value. If \code{FALSE}, then bars are drawn vertically with the first bar to the left. If \code{TRUE}, then bars are drawn horizontally with the first at the bottom.}
  \item{\dots}{Additional arguments from \code{\link{barplot}}.}
}
\details{
It is often desirable to display the results of a pairwise comparison procedure using sample measures of location and error bars.  This functions allows these sorts of plots to be made. The function is essentially a wrapper for the function \code{\link{barplot}}.
}
\value{
A plot is returned.
}
\author{Ken Aho}
\seealso{\code{\link{barplot}}}
\references{Chambers, J. M., Cleveland, W. S., Kleiner, B. and Tukey, P. A. (1983) \emph{Graphical Methods for Data Analysis}. Wadsworth & Brooks/Cole.
McGill, R., Tukey, J. W. and Larsen, W. A. (1978) Variations of box plots. \emph{The American Statistician} 32, 12-16.}  
\examples{
eggs<-c(11,17,16,14,15,12,10,15,19,11,23,20,18,17,27,33,22,26,28)
trt<-c(1,1,1,1,1,2,2,2,2,2,3,3,3,3,4,4,4,4,4)
bplot(y=eggs, x=factor(trt),int="SE",xlab="Treatment",ylab="Mean number of eggs",
simlett=TRUE, lett=c("b","b","b","a"))
}
\keyword{graphs}