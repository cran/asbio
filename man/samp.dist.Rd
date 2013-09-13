\name{samp.dist}
\alias{samp.dist}
\alias{samp.dist.snap}
\alias{samp.dist.method.tck}
\alias{samp.dist.tck}
\alias{samp.dist.snap.tck1}
\alias{samp.dist.snap.tck2}
\alias{dirty.dist}
\alias{samp.dist.n}

\title{Animated and/or snapshot representations of a statistic's sampling distribution}
\description{
This help page describes a series of \pkg{asbio} functions for depicting sampling distributions.  The function \code{samp.dist} samples from a parent distribution without replacement with sample size = \code{s.size}, 
\code{R} times.  At each iteration a statistic requested in \code{stat} is calculated. Thus a distribution of \code{R} statistic estimates is created.  
The function \code{samp.dist} shows this distribution as an animated \code{anim = TRUE} or non-animated \code{anim = FALSE} density histogram.   
Sampling distributions for up to four different statistics utilizing two different parent distributions are possible using \code{samp.dist}.  
Sampling distributions can be combined in various ways by specifying a function in \code{func} (see below). 
The function \code{samp.dist.n} was designed to show (with animation) how sampling disributions vary with sample size, and is still under development.  
The function \code{samp.dist.snap} creates snapshots, i.e. simultaneous views of a sampling distribution at particular sample sizes. 
The function \code{dirty.dist} can be used to create contaminated parent distributions.
}
\usage{

samp.dist(parent = NULL, parent2 = NULL, biv.parent = NULL, s.size = 1, s.size2
 = NULL, R = 1000, nbreaks = 50, stat = mean, stat2 = NULL, stat3 = NULL, stat4 
 = NULL, xlab = expression(bar(x)), func = NULL, show.n = TRUE, show.SE = FALSE, 
 anim = TRUE, interval = 0.01, col.anim = "rainbow", digits = 3, ...)

samp.dist.snap(parent = NULL, parent2 = NULL, biv.parent = NULL, stat = mean, 
stat2 = NULL, stat3 = NULL, stat4 = NULL, s.size = c(1, 3, 6, 10, 20, 50), 
s.size2 = NULL, R = 1000, func = NULL, xlab = expression(bar(x)), 
show.SE = TRUE, fits = NULL, show.fits = TRUE, xlim = NULL, ylim = NULL, ...)

samp.dist.method.tck()

samp.dist.tck(statc = "mean")

samp.dist.snap.tck1(statc = "mean")

samp.dist.snap.tck2(statc = "mean")

dirty.dist(s.size, parent = expression(rnorm(1)), 
cont = expression(rnorm(1, mean = 10)), prop.cont = 0.1)

samp.dist.n(parent, R = 500, n.seq = seq(1, 30), stat = mean, xlab = expression(bar(x)), 
    nbreaks = 50, func = NULL, show.n = TRUE, 
    show.SE = FALSE, est.density = TRUE, col.density = 4, lwd.density = 2, 
    est.ylim = TRUE, ylim = NULL, anim = TRUE, interval = 0.5, 
    col.anim = NULL, digits = 3, ...) 
}

\arguments{

  \item{parent}{A vector or vector generating function, describing the parental distribution.  
  Any collection of values can be used. When using random value generators for 
  parental distributions, for CPU effiency (and accuracy) one should use \code{parent = expression(rpdf(s.size, ...))}. Datasets exceeding 100000 observations are not recommended.}
  \item{parent2}{An optional second parental distribution (see \code{parent} above), 
  useful for the construction of sampling distributions of test statistics.  
  When using random value generators use \code{parent2 = expression(rpdf(s.size2, ...))}.}
  \item{biv.parent}{A bivariate (two column) distribution.}
  \item{s.size}{An integer defining sample size (or a vector of integers in the case of \code{samp.dist.snap}) to be taken at each of \code{R} iterations from the parental distribution.}
  \item{s.size2}{An optional integer definining a second sample size if a second statistic is to be calculated.  Again, this will be a vector of integers in the of \code{samp.dist.snap}.}
  \item{R}{The number of samples to be taken from parent distribution(s).}
  \item{nbreaks}{Number of breaks in the histogram.}
  \item{stat}{The statistic whose sampling distribution is to be represented.  Will work for any summary statistic that only requires a call to data; e.g. \code{\link{mean}}, \code{\link{var}}, \code{\link{median}}, etc.}
  \item{stat2}{An optional second statistic. Useful for conceptualizing sampling distributions of test statistics.  Calculated from sampling \code{parent2}.}
  \item{stat3}{An optional third statistic. The sampling distribution is created from the same sample data used for \code{stat}.}
  \item{stat4}{An optional fourth statistic. The sampling distribution is created from the same sample data used for \code{stat2}.}
  \item{xlab}{\emph{X}-axis label.}  
  \item{func}{An optional function used to manipulate a sampling distribution or to combine the sampling distributions of two or more statistics.  
  The function must contain the following arguemets (although they needn't all be used in the function):  
  \code{s.dist}, \code{s.dist2}, \code{s.size}, and \code{s.size2}.  When sampling from a 
  single parent distribution use \code{s.dist3} in the place of \code{s.dist2}.  
  For an estimator invovlving two parent distributions and four statistics, six arguments will be required: 
  \code{s.dist}, \code{s.dist2}, \code{s.dist3}, \code{s.dist4}. 
  \code{s.size}, and \code{s.size2} , \code{s.dist3}, and  as non-fixed arguments (see example below).}
  \item{show.n}{A logical command, \code{TRUE} indicates that sample size for \code{parent} will be displayed.}
  \item{show.SE}{A logical command, \code{TRUE} indicates that bootstrap standard error for the statistic will be displayed.}
  \item{anim}{A logical command indicating whether or not animation should be used.}
  \item{interval}{Animation speed.  Decreasing \code{interval} increases speed.}
  \item{col.anim}{Color to be used in animation.  Three changing color palettes: \code{\link{rainbow}}, \code{\link{gray}}, \code{\link{heat.colors}}, or "fixed" color types can be used.}
  \item{digits}{The number of digits to be displayed in the bootstrap standard error.}
  \item{fits}{Fitted distributions for \code{samp.dist.snap}  A function with two argument: \code{s.size} and \code{s.size2}} 
  \item{show.fits}{Logical indicating whether or not fits should be shown (fits 
  will not be shown if no fitting function is specified regardless of whether this is \code{TRUE} or \code{FALSE}}
  \item{xlim}{A two element numeric vector defining the upper and lower limits of the \emph{X}-axis.}
  \item{ylim}{A two element numeric vector defining the upper and lower limits of the \emph{Y}-axis.} 
  \item{statc}{Presets for certain statistics.  Currently one of \code{"custom", "mean", 
  "median", "trimmed mean", "Winsorized mean", "Huber estimator", "H-L estimator", 
  "sd", "var", "IQR", "MAD", "(n-1)S^2/sigma^2", "F*", "t* (1 sample)", "t* (2 sample)", "Pearson correlation"} or \code{"covariance"}.
}
  \item{cont}{A distribution representing a source of contamination in the parent population.  Used by function \code{dirty.dist}.}
  \item{prop.cont}{The proportion of the parent distribution that is contaminated by \code{code}.}
  \item{n.seq}{A range of sample sizes for \code{samp.dist.n}}
  \item{est.density}{A logical command for \code{samp.dist.n}. if \code{TRUE} then a density line is plotted over the histogram.  Only used if \code{fix.n = true}.}
  \item{col.density}{The color of the density line for \code{samp.dist.n}.  See \code{est.density} above.}
  \item{lwd.density}{The width of the density line for \code{samp.dist.n}.  See \code{est.density} above.} 
  \item{est.ylim}{Logical.  If \code{TRUE} \emph{Y}-axis limits are estimated logically for the animation in \code{samp.dist.n}.  Consistent \emph{Y}-axis limits make animations easier to visualize.  Only used if \code{fix.n = TRUE}.} 
  \item{\dots}{Additional arguments from \code{\link{plot.histogram}}.}
}
\value{Returns a representation of a statistic's sampling distribution in the form of a histogram.
}

\details{Sampling distributions of individual statistics can be created with \code{samp.dist}, or the function can be used in more sophisticated ways, e.g. 
to create sampling distributions of ratios of statistics, i.e. \emph{t}*, \emph{F}* etc. (see examples below). To provide pedagogical clarity animation for figures is provided.    
To calculate bivariate statistics, specify the parent distribution with \code{biv.parent} and the statistic with \code{func} (see below). 


Two general uses of the function \code{samp.dist} are possible.
1) One can demonstrate the accumulation of statistics for a single sample size using animation.  
This is useful because as more and more statistics are acquired the frequentist paradigm associated with sampling distributions becomes better represented (i.e the number of estimates is closer to infinity).  This is elucidated by allowing the default \code{fix.n = TRUE}.  Animation will be provided with the default \code{anim = TRUE}.  Up two parent distributions, up to two sample sizes, and up to four distinct statistics (i.e. four distinct sampling distributions, representing four distinct estimators) can be used.  The arguments \code{stat} and \code{stat3} will be drawn from \code{parent}, while \code{stat3} and \code{stat4} will be drawn from \code{parent2}.  These distributions can be manipulated and combined in an infinite number of ways with an auxiliary function called in the argument \code{func} (see examples below).  This allows depiction of sampling distributions made up of multiple estimators, e.g. test statistics.  
2) One can provide simultaneous snapshots of a sampling distribution at a particular sample size with the function \code{samp.dist.snap}. 

Loading the package \pkg{tcltk} allows use of the functions \code{samp.dist.tck}, \code{samp.dist.method.tck}, \code{samp.dist.snap.tck1} and \code{samp.dist.snap.tck2}, 
which provide interactive GUIs that run \code{samp.dist}.

} 
\author{
Ken Aho
}
\examples{
\dontrun{
##Central limit theorem
#Snapshots of four sample sizes.
samp.dist.snap(parent=expression(rexp(s.size)), s.size = c(1,5,10,50), R = 1000)

##sample mean animation
samp.dist(parent=expression(rexp(s.size)), col.anim="heat.colors", interval=.3)

##Distribution of t-statistics from a pooled variance t-test under valid and invalid assumptions
#valid
t.star<-function(s.dist1, s.dist2, s.dist3, s.dist4, s.size = 6, s.size2 = 
s.size2){
MSE<-(((s.size - 1) * s.dist3) + ((s.size2 - 1) * s.dist4))/(s.size + s.size2-2)
func.res <- (s.dist1 - s.dist2)/(sqrt(MSE) * sqrt((1/s.size) + (1/s.size2)))
func.res}

samp.dist(parent = expression(rnorm(s.size)), parent2 = 
expression(rnorm(s.size2)), s.size=6, s.size2 = 6, R=1000, stat = mean, 
stat2 = mean, stat3 = var, stat4 = var, xlab = "t*", func = t.star)

curve(dt(x, 10), from = -6, to = 6, add = TRUE, lwd = 2)
legend("topleft", lwd = 2, col = 1, legend = "t(10)")

#invalid; same population means (null true) but different variances and other distributional 
#characteristics.
samp.dist(parent = expression(runif(s.size, min = 0, max = 2)), parent2 = 
expression(rexp(s.size2)), s.size=6, s.size2 = 6, R = 1000, stat = mean, 
stat2 = mean, stat3 = var, stat4 = var, xlab = "t*", func = t.star)

curve(dt(x, 10),from = -6, to = 6,add = TRUE, lwd = 2)
legend("topleft", lwd = 2, col = 1, legend = "t(10)")

## Pearson's R
require(mvtnorm)
BVN <- function(s.size) rmvnorm(s.size, c(0, 0), sigma = matrix(ncol = 2, 
nrow = 2, data = c(1, 0, 0, 1)))
samp.dist(biv.parent = expression(BVN(s.size)), s.size = 20, func = cor, xlab = "r")
                                                  
#Interactive GUI, require package 'tcltk'
samp.dist.tck("S^2")
samp.dist.snap.tck1("Huber estimator")
samp.dist.snap.tck2("F*")
}
}
\keyword{graphs}