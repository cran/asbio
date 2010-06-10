\name{samp.dist}
\alias{samp.dist}
\alias{samp.dist.fixn}
\alias{samp.dist.n}

\title{Animated representations of a statistic's sampling distribution}
\description{
Samples from a parent distribution without replacement with sample size = \code{s.size} \code{R} times.  At each iteration a statistic requested in \code{stat} is calculated. Thus a distribution of \code{R} statistic estimates is created. This distribution is shown as an animated relative frequency histogram. Sampling distributions for up to four different statistics utilizing two different parent distributions are possible.  Sampling distributions can be combined in various ways by specifying a function in \code{func} (see below). 
}
\usage{
samp.dist(parent, parent2 = parent, s.size = 1, s.size2 = s.size, n.seq = seq(1, 30), 
R = 1000, breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, stat4 = NULL, 
fix.n = TRUE, xlab = expression(bar(x)), ylab = "Relative frequency", ylim = NULL, 
func = NULL, nlegend = TRUE, est.density = TRUE, col.density = 4, lwd.density = 2, 
est.ylim = TRUE, anim = TRUE, interval = 0.01, col.anim = "rainbow", ...)

samp.dist.fixn(parent, parent2 = parent, s.size = 1, s.size2 = s.size, R = 1000, 
breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, stat4 = NULL, xlab = expression(bar(x)), 
ylab = "Relative frequency", func = NULL, nlegend = TRUE, anim = TRUE, interval = 0.01, 
col.anim = "rainbow", ...)

samp.dist.n(parent, R = 500, n.seq = seq(1, 30), stat = mean, xlab = expression(bar(x)), 
ylab = "Relative frequency", breaks = 30, func = NULL, nlegend = TRUE, est.density = TRUE, 
col.density = 4, lwd.density = 2, est.ylim = TRUE, ylim = NULL, interval = 0.5, 
col.anim = NULL, ...)

}
\arguments{
  \item{parent}{A vector containing observations from a parental distribution.  For computational efficiency datasets exceeding 100000 observations are not recommended.}
  \item{parent2}{An optional second parental distribution, useful for construction sampling distributions of test statistics.}
  \item{s.size}{Sample size to be taken at each of \code{R} iterations from the parental distribution.}
  \item{s.size2}{An optional second sample size if a second statistic is to be calculated.}
  \item{n.seq}{A two element vector specifying the smallest and largest in a range of demonstrated sample sizes.  Requires \code{fix.n=FALSE}.}
  \item{R}{The number of samples to be taken from parent distribution(s).}
  \item{breaks}{Number of breaks in the histogram.}
  \item{stat}{The statistic whose sampling distribution is to be represented.  Will work for any summary statistic; e.g. \code{\link{mean}}, \code{\link{var}}, \code{\link{median}}, etc.}
  \item{stat2}{An optional second statistic. Useful for conceptualizing sampling distributions of test statistics.  Calculated from sampling \code{parent2}.}
  \item{stat3}{An optional third statistic. The sampling distribution is created from the same sample data used for \code{stat}.}
  \item{stat4}{An optional fourth statistic. The sampling distribution is created from the same sample data used for \code{stat2}}.
  \item{fix.n}{Logical indicating whether or not sample size should be held constant in demonstrations (see below).}
  \item{xlab}{\emph{X}-axis label.}
  \item{ylab}{\emph{Y}-axis label.}
  \item{ylim}{Limits for \emph{Y}-axis.  Specify using a two element vector.}
  \item{func}{An optional function used to compare the sampling distributions of two statistics.  The function must have only sampling distributions, i.e. \code{s.dist1}, \code{s.dist2}, \code{s.dist3}, and/or \code{s.dist} as non-fixed arguments (see example below).}
  \item{nlegend}{A logical command, \code{TRUE} indicates that sample size for \code{parent} will be displayed.}
  \item{est.density}{A logical command, if \code{TRUE} then a density line is plotted over the histogram.  Only used if \code{fix.n = true}.}
  \item{col.density}{The color of the density line.  See \code{est.density} above.}
  \item{lwd.density}{The width of the density line.  See \code{est.density} above.} 
  \item{est.ylim}{Logical.  If \code{TRUE} \emph{Y}-axis limits are estimated logically for the animation.  Consistent \emph{Y}-axis limits make animations easier to visualize.  Only used if \code{fix.n = TRUE}.} 
  \item{anim}{A logical command indicating whether or not animation should be used.}
  \item{interval}{Animation speed.  Decreasing \code{interval} increases speed.}
  \item{col.anim}{Color to be used in animation.  Three changing color palettes: \code{\link{rainbow}}, \code{\link{gray}}, \code{\link{heat.colors}}, or "fixed" color types can be used.}
  \item{\dots}{Additional arguments from \code{\link{plot.histogram}}.}
}
\value{Returns a representation of a statistic's sampling distribution in the form of a histogram.
}

\details{Sampling distributions of individual statistics can be created, or the function can be used in more sophisticated ways, e.g. to create sampling distributions of ratios of statistics, i.e. \emph{t}*, \emph{F}* etc. (see examples below). To provide pedagogical clarity animation for figures is provided.  


Two general uses of the function are possible.

1) One can demonstrate the accumulation of statistics for a single size with or without animation.  This is useful because as more and more statistics are acquired the frequentist paradigm associated with sampling distributions becomes better represented (i.e the number of estimates is closer to infinity).  This is elucidated by allowing the default \code{fix.n = TRUE}.  Animation will be provided with the default \code{anim = TRUE}.  This approach also allows specification of up two parent distributions, up to two sample sizes, and up to four distinct statistics (i.e. four distinct sampling distributions, representing four distinct estimators can be created).  The arguments \code{stat} and \code{stat3} will be drawn from \code{parent}, while \code{stat3} and \code{stat4} will be drawn from \code{parent2}.  These distributions can be manipulated and combined in an infinite number of ways by with an auxiliary function called in the argument \code{func} (see examples below).  This allows depiction of sampling distributions made up of multiple estimators, e.g. test statistics.  


2) One can provide a seamless animated demonstration of the effect of varying sample size on a sampling distribution by specify \code{n.fixed = FALSE}   If \code{n.fixed = FALSE} is used then a range of sample sizes (integers) must also be specified as a two element vector in \code{n.seq}.  \code{n.fixed = FALSE} then the arguments \code{s.size} and \code{s.size2} will be superfluous and animation will always be used. Multiple statistics and parent populations are not supported if \code{n.fixed = FALSE}.
} 
   
\seealso{\code{\link{plot.histogram}}, \code{\link{hist}}, \code{\link{bootstrap}}.}
\author{Ken Aho}
\examples{

###Not run

##Central limit theorem
#Four sample sizes, one at a time
exp.parent<-rexp(100000)
samp.dist(parent=exp.parent, s.size=1, R=1000) ## n = 1
samp.dist(parent=exp.parent, s.size=5, R=1000) ## n = 5
samp.dist(parent=exp.parent, s.size=10, R=1000) ## n = 10
samp.dist(parent=exp.parent, s.size=50, R=1000)## n = 50 

#All four at once
par(mfrow=c(2,2),mar=c(4.4,4.5,1,0.5))
samp.dist(parent=exp.parent, s.size=1, R=300,anim=FALSE) ## n = 1
samp.dist(parent=exp.parent, s.size=5, R=300,anim=FALSE) ## n = 5
samp.dist(parent=exp.parent, s.size=10, R=300,anim=FALSE) ## n = 10
samp.dist(parent=exp.parent, s.size=50, R=300,anim=FALSE) ## n = 50 

##n not fixed -- sample mean
exp.parent<-rexp(10000)
samp.dist(parent=exp.parent, R=300,col.anim="heat.colors",fix.n=FALSE,interval=.3)

##n not fixed -- sample mean and sample median (both are consistent and unbiased
# but which is more efficient for mu?).  
# This will take a few seconds.
parent<-rnorm(10000)
dev.new()
samp.dist(parent, R=1000,col.anim="heat.colors",fix.n=FALSE,interval=.3,xlim=c(-1,1),ylim=c(0,2.5),est.ylim=FALSE,breaks=50)
dev.new()
samp.dist(parent, R=1000,col.anim="heat.colors",fix.n=FALSE,interval=.3,stat=median,
xlab="Median",xlim=c(-1,1),ylim=c(0,2.5),est.ylim=FALSE,breaks=50)

##Distribution of t-statistics under valid and invalid assumptions
#valid
parent<-rnorm(100000)
t.star<-function(s.dist1,s.dist2,s.dist3,s.dist4,s.size=6,s.size2=s.size){
MSE<-(((s.size-1)*s.dist3)+((s.size2-1)*s.dist4))/(s.size+s.size2-2)
func.res<-(s.dist1-s.dist2)/(sqrt(MSE)*sqrt((1/s.size)+(1/s.size2)))
func.res}

samp.dist(parent, parent2=parent, s.size=6, R=1000, breaks=35,stat=mean,stat2=mean,
stat3=var,stat4=var,xlab="t*", ylab="Relative frequency",func=t.star,nlegend=FALSE)

curve(dt(x,10),from=-6,to=6,add=TRUE,lwd=2)
legend("topleft",lwd=2,col=1,legend="t(10)")

#invalid; same means (null true) but different variances and other distributional characteristics.
parent<-runif(100000, min=0,max=2)
parent2<-rexp(100000)

samp.dist(parent, parent2=parent2, s.size=6, R=1000, breaks=35,stat=mean,stat2=mean,
stat3=var,stat4=var,xlab="t*", ylab="Relative frequency",func=t.star,nlegend=FALSE)
curve(dt(x,10),from=-6,to=6,add=TRUE,lwd=2)
legend("topleft",lwd=2,col=1,legend="t(10)")
}
