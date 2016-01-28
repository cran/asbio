\name{qq.Plot}
\alias{qq.Plot}

\title{
Normal quantile plots for single or multiple factor levels
}
\description{
Provides quantile plots for one or more factor levels overlaid on a single graph.  If \code{plot.CI = TRUE}, then 
code for bootsrapped confidence provided in the documentation for \code{\link{boot}} is applied to create confidence envelopes. If \code{plot.CI = FALSE}, \code{\link{qqnorm}} and \code{\link{qqline}} are used to create overlaid normal probability plots given multiple categories in \code{x}.
}

\usage{

qq.Plot(y, x = NULL, col = NULL, pch = NULL, main = "", R = 5000, fit.lty = 1, 
env.lty = 2, conf = 0.95, type = "point", ylim = NULL, xlim = NULL, xlab = NULL, 
ylab = NULL, plot.CI = FALSE, ...)
}

\arguments{

\item{y}{
The response variable
}
  \item{x}{
A categorical variables to subset \emph{y}
}
  \item{col}{
A scalar or vector with length equivelent to the number of levels in \emph{x}, describing colors of points and lines for levels in \emph{x}. 
}
  \item{pch}{
A scalar or vector with length equivelent to the number of levels in \emph{x}, describing symbols for levels in \emph{x}. 
}
  \item{main}{
Main title.
}
  \item{R}{
Number of bootstrap samples for calculating confidence envelopes
}
  \item{fit.lty}{
Line type for fit line(s).
}
  \item{env.lty}{
Line type for fit line(s).
}
  \item{conf}{
Level of confidence in confidence envelopes.
}
  \item{type}{
Type of bootstrapped confidence envelope.  One of \code{"point"} or \code{"overall"}. 
}
  \item{xlim}{
A two element vector defining the lower and upper \emph{x}-axis limits . 
}
  \item{ylim}{
A two element vector defining the lower and upper \emph{y}-axis limits . 
}
  \item{xlab}{
\emph{X}-axis label. 
}
  \item{ylab}{
\emph{Y}-axis label. 
}
  \item{plot.CI}{
Logical, specifying whether or not confidence ellipses should be plotted. 
}
  \item{\dots}{
Other arguments from \code{\link{plot}}. 
}
}

\author{
Ken Aho
}

\seealso{
\code{\link{qqnorm}}, \code{\link{qqline}},  \code{\link{envelope}}, \code{\link{boot}}
}
\examples{
y <- rnorm(50)
x <- c(rep(1, 25), rep(2, 25))
qq.Plot(y, x)
}
