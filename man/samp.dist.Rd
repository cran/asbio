\name{samp.dist}
\alias{samp.dist}
\title{Representation of a statistic's sampling distribution}
\description{
Samples from a parent distribution without replacement with sample size = \code{s.size} \code{R} times.  At each iteration a statistic requested in \code{stat} is calculated. Thus a distribution of \code{R} statistic estimates is created. This distribution is shown as a relative frequency histogram. Sampling distributions for up to four different statistics utilizing two different parent distributions.  Statistic conceptual sampling distributions can be combined in various way by specifying a function in func (see below). 
}
\usage{
samp.dist(parent, parent2 = parent, s.size = 1, s.size2 = s.size,R = 1000, breaks = 30, stat = mean, stat2 = NULL, stat3 = NULL, stat4 = NULL, xlab = expression(bar(X)),ylab="Relative frequency",func=NULL)
}
\arguments{
  \item{parent}{A vector containing observations from a parental distribution.}
  \item{parent2}{An optional second parental distribution, useful for construction sampling distributions of test statistics}
  \item{s.size}{Sample size to be taken at each of \code{R} iterations from the parental distribution.}
  \item{s.size2}{An optional second sample size if a second statistic is to be calculated.}
  \item{R}{The number of samples to be taken.}
  \item{breaks}{Number of breaks in the histogram.}
  \item{stat}{The statistic whose sampling distribution is to be represented.  Will work for any statistic with the single argument \code{data}.}
  \item{stat2}{An optional second statistic. Useful for conceptualizing sampling distributions of test statistics.  Calculated from sampling \code{parent2}.}
  \item{stat3}{An optional third statistic. The sampling distribution is created from the same sample data used for \code{stat}.}
  \item{stat4}{An optional fourth statistic. The sampling distribution is created from the same sample data used for \code{stat2}}.
  \item{xlab}{X-axis label.}
  \item{ylab}{Y-axis label.}
  \item{func}{An optional function used to compare the sampling distributions of two statistics.  The function must have only sampling dsitributions, i.e. \code{s.dist1}, \code{s.dist2}, \code{s.dist3}, and/or \code{s.dist} as non-fixed arguments (see example below) }
  }
\value{Returns a representation of a statistics sampling distribution in the form of a histogram.
  }
\details{Sampling distributions of individual statistics can be created, or the function can be used in more sophisticated ways, e.g. to create sampling distributions of ratios of statistics, i.e. \emph{t}*, \emph{F}* etc. (see examples below).}   
\author{Ken Aho}
\examples{
##Central limit theorem
exp.parent<-rexp(1000000)
par(mfrow=c(2,2),mar=c(4.4,4.5,1,0.5))
samp.dist(parent=exp.parent, s.size=1, R=100) ## n = 1
samp.dist(parent=exp.parent, s.size=5, R=100) ## n = 5
samp.dist(parent=exp.parent, s.size=10, R=100) ## n = 10
samp.dist(parent=exp.parent, s.size=50, R=100) ## n = 50 

##Distribution of t-statistics under valid and invalid assumptions
#valid
parent<-rnorm(100000)
t.star<-function(s.dist1,s.dist2,s.dist3,s.dist4,s.size=6,s.size2=s.size){
MSE<-(((s.size-1)*s.dist3)+((s.size2-1)*s.dist4))/(s.size+s.size2-2)
func.res<-(s.dist1-s.dist2)/(sqrt(MSE)*sqrt((1/s.size)+(1/s.size2)))
func.res}

samp.dist(parent, parent2=parent, s.size=6, R=1000, breaks=35,stat=mean,stat2=mean,stat3=var,stat4=var,xlab="t*", ylab="Relative frequency",func=t.star)
curve(dt(x,10),from=-6,to=6,add=TRUE,lwd=2)
legend("topleft",lwd=2,col=1,legend="t(10)")

#invalid; same means but different variances and other distributional characteristics.
parent<-runif(100000, min=0,max=2)
parent2<-rexp(100000)

samp.dist(parent, parent2=parent2, s.size=6, R=1000, breaks=35,stat=mean,stat2=mean,stat3=var,stat4=var,xlab="t*", ylab="Relative frequency",func=t.star)
curve(dt(x,10),from=-6,to=6,add=TRUE,lwd=2)
legend("topleft",lwd=2,col=1,legend="t(10)")
}
