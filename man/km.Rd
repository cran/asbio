\name{km}
\alias{km}
\title{Kaplan-Meier survivorship.}
\description{
Calculates survivorship for individuals in a population over time based on the 
method of Kaplan-Meier; cf. Pollock et al. (1989).
}
\usage{
km(s, d, c, var = c("O", "G"), conf = 0.95)
}
\arguments{

  \item{s}{Vector of numbers of survivors in each age or time class.}
  \item{d}{Vector of the number of deaths in each age or time class.}
  \item{c}{Vector describing the number of censored individuals in each age or time class.}
  \item{var}{Type of procedure used to calculate variance in confidence intervals \code{"O"} = Oakes, \code{"G"} = Greenwood.}
  \item{conf}{Level of confidence for confidence interval calculations; 1 - \emph{P}(type I error)}
}
\details{
Details for this index are given in Pollock et al. (1989).
}
\value{
Returns a list with the follwoing components
  \item{s.hat}{A vector of estimated survivorship probabilities from the 1st age class onward.}
  \item{Greenwood.Var}{The estimated Greenwood variance for each age class.}
  \item{Oakes.Var}{The estimated Oakes variance for each age class.}
  \item{CI}{Upper and lower confidence bound to the true survivorship.}     
}
\references{Pollock, K. H., Winterstein, S. R., and Curtis, P. D. (1989) Survival 
analysis in telemetry studies: the staggered entry design.  \emph{Journal of wildlife 
managment}.  53(1):7-1.}
\author{Ken Aho}
\examples{
##Example from Pollock (1989)
r<-c(18,18,18,16,16,16,15,15,13,10,8,8,7)
d<-c(0,0,2,0,0,1,0,1,1,1,0,0,0)
c<-c(0,0,0,0,0,0,0,1,2,1,0,1,0)
s<-r+d+c
km(s,d,c)
}
\keyword{univar}
\keyword{htest}
