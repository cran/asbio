\name{qq.Plot}
\alias{qq.Plot}

\title{
Normal quantile plots for multiple factor levels
}
\description{
Provides quantile plots for one or more factor levels overlaid on a single graph.
}
\usage{

qq.Plot(y, x = NULL, col = 1, pch = 1, main = "", R = 5000, fit.lty = 1, env.lty = 2, 
conf = 0.95, type = "point", ylim = NULL, xlab = "Normal quantiles", 
ylab = "Studentized observed quantiles", ...)
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
  \item{ylim}{
A two element vector defining the lower and upper \emph{y}-axis limits . 
}
  \item{xlab}{
\emph{X}-axis label. 
}
  \item{ylab}{
\emph{Y}-axis label. 
}
  \item{\dots}{
Other arguments from \code{\link{plot}}. 
}
}

\author{
Ken Aho
}
\note{
Unlike \code{\link{qqnorm}} observed quantiles are studentized.
}


\seealso{
\code{\link{qqnorm}}, \code{\link{qqline}},  \code{\link{envelope}}
}
\examples{
y <- rnorm(50)
x <- c(rep(1, 25), rep(2, 25))
qq.Plot(y, x)
}
