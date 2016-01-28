\name{ci.boot}
\alias{ci.boot}
\alias{print.ciboot}

\title{
Bootstrap confidence intervals
}
\description{
Bootstrap confidence intervals for the output of function \code{bootstrap}.  Up to five different interval estimation methods can be called simultaneously: 
the normal approximation, the basic bootstrap, the percentile method, the bias corrected and accelerated method (BCa), and the studentized bootstrap method. 
}
\usage{

ci.boot(x, method = "all", sigma.t = NULL, conf = 0.95)

}

\arguments{

  \item{x}{
For \code{ci.boot} the list output from \code{bootstrap}. 
}
  \item{method}{
CI interval method to be used.  One of \code{"all"}, \code{"norm"}, \code{"basic"}, \code{"perc"}, \code{"BCa"}, or \code{"student"}.  Partial matches are allowed.
}
  \item{sigma.t}{
Vector of standard errors in association with studentized intervals.
}
  \item{conf}{
Confidence level; 1 - \emph{P}(Type I error).
}
}

\references{
Manly, B. F. J.  (1997)  \emph{Randomization and Monte Carlo Methods in Biology, 2nd edition}.  
Chapman and Hall, London.
}
\author{
Ken Aho
}
\seealso{
\code{\link[boot]{boot}}, \code{\link{bootstrap}},
}
\examples{


data(vs)
# A partial set of observations from a single plot for a Scandinavian 
# moss/vascular plant/lichen survey.
site18<-t(vs[1,])

#Shannon-Weiner diversity
SW<-function(data){
d<-data[data!=0]
p<-d/sum(d)
-1*sum(p*log(p))
}

b <- bootstrap(site18[,1],SW)
ci.boot(b)
}
\keyword{manip}