\name{HL.mean}
\alias{HL.mean}
\title{Hodges-Lehman estimator of location}
\description{Calculates the Hodges-Lehman estimate of location, which are consistent for the true pseudomedian, using Walsh averages (Hollander and Wolfe 1999, pgs. 51-55), and if specified, provides confidence intervals for the true pseudomedian.  In a symmetric distribution the median and pseudomedian will be identical.}
\usage{HL.mean(x, conf = NULL, method = "exact")}
\arguments{
  \item{x}{A vector of quantitative data.}
  \item{conf}{A proportion specifying 1 - \emph{P}(type I error).}
  \item{method}{method for confidence interval calculation.  One of \code{"approx"}, which uses a normal approximation, or \code{"exact"}, which uses the Wilcoxon sign-rank quantile function (see Hollander and Wolfe 1999).}
}
\author{Ken Aho}
\references{Hollander, M., and Wolfe, D. A  (1999) \emph{Nonparametric Statistical Methods}. New York: John Wiley & Sons.}
\seealso{\code{\link{H.mean}}, \code{\link{G.mean}}}
\examples{# Hamilton depression scale (Hollander and Wolfe 1999)
x<-c( -0.952, 0.147, -1.022, -0.430, -0.620, -0.590, -0.490,  0.080, -0.010)
HL.mean(x, conf = .96)
}


