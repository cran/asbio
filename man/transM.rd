\name{transM}
\alias{transM}
\title{Transition matrix analysis}
\description{
Creates a plot showing expected numbers in organism specified age classes or life stages given survivorship probabilities from a transition matrix (cf. Caswell ). 
}
\usage{
transM(A, init, inter = 100, stage.names = seq(1, ncol(A)), leg.room = 1.5, ...)
}
\arguments{
  \item{A}{Transition matrix containing survivorship probabilities and fecundities see Caswell (2001).
}
  \item{init}{
A numeric vector containing initial numbers in each age class of interest. 
}
  \item{inter}{
Number of time intervals for which population numbers are to be calculated.
}
  \item{stage.names}{
A character vector giving life stage names.
}
  \item{leg.room}{
A \emph{Y}-axis multiplier intended to create room for a legend.
}
  \item{\dots}{
Additional arguments for \code{\link{plot}}
}
}

\value{
Returns a plot and proportions of the population in each age class for the number of time intervals in \code{inter}.
}
\references{
Caswell, H. 2001. \emph{Matrix population models: Construction, analysis and interpretation, 2nd Edition}. Sinauer Associates, Sunderland, Massachusetts.

Gurevitch, J., Scheiner, S. M., and G. A. Fox.  2006.  The ecology of Plants.  Sinauer.
}
\author{
Ken Aho
}
\examples{
#Endangered cactus data data from Gurevitch et al. (2006)
A<-matrix(nrow=3,ncol=3,data=c(.672,0,.561,0.018,0.849,0,0,0.138,0.969),
byrow=TRUE)
init<-c(10,2,1)
transM(A,init,inter=100,stage.names=c("Sm. Juv.","Lg. Juv.","Adults"),
xlab="Years from present",ylab="n")
}
