\name{plotCI.reg}
\alias{plotCI.reg}
\title{Plots a simple linear regression along with confidence and prediction intervals.

}
\description{Plots the fitted line from a simple linear regression (y ~ x) and (if requested) confidence and prediction intervals. 
}
\usage{

plotCI.reg(x, y, conf = 0.95, CI = TRUE, PI = TRUE, resid = FALSE, reg.col = 1, 
CI.col = 2, PI.col = 4, reg.lty = 1, CI.lty = 2, PI.lty = 3, reg.lwd = 1, 
CI.lwd = 1, resid.lty = 3, resid.col = 4,...)
}
\arguments{
  \item{x}{The explanatory variable, a numeric vector.}
  \item{y}{The response variable, a numeric vector}
  \item{conf}{The level of confidence; 1 - \emph{P}(type I error)}
  \item{CI}{Logical; should the confidence interval be plotted?}
  \item{PI}{Logical; should the prediction interval be plotted?}
  \item{resid}{Logical; should residuals be plotted?}
  \item{reg.col}{Color of the fitted regression line.}
  \item{CI.col}{Color of the confidence interval lines.}
  \item{PI.col}{Color of the prediction interval lines.}
  \item{reg.lty}{Line type for the fitted regression line.}
  \item{CI.lty}{Line type for the confidence interval.}
  \item{PI.lty}{Line type for the confidence interval.}
  \item{reg.lwd}{Line width for the regression line.}
  \item{CI.lwd}{Line widths for the confidence and prediction intervals.}
  \item{resid.lty}{Line width for the regression line.}
  \item{resid.col}{Line color for residual lines.}
  \item{\dots}{Additional arguments from \code{\link{plot}}}
  }

\value{
Returns a plot with a regression line and (if requested) confidence and prediction intervals} 

\author{Ken Aho
}
\seealso{\code{\link{plot}}, \code{\link{predict}}}

\examples{
y<-c(1,2,1,3,4,2,3,4,3,5,6)
x<-c(2,3,1,4,5,4,5,6,7,6,8)
plotCI.reg(x,y)
}
\keyword{graphs}
\keyword{htest}
\keyword{univar}
