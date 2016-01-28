\name{bootstrap}
\alias{bootstrap}
\alias{print.bootstrap}
\title{A simple function for bootstrapping}
\description{
The function serves as a simplified alternative to the function \code{\link[boot]{boot}} from the library \code{boot}. 
}
\usage{
bootstrap(data, statistic, R = 1000, prob = NULL, matrix = FALSE)
}
\arguments{
  \item{data}{Raw data to be bootstrapped.  A vector or quantitative data or a matrix if \code{matrix =TRUE}.}
  \item{statistic}{A function whose output is a statistic (e.g. a sample mean).  The function must have only one argument, a call to data.}
  \item{R}{The number of bootstrap iterations.}
  \item{prob}{A vector of probability weights for paramteric bootstrapping.}
  \item{matrix}{A logical statement.  If \code{matrix = TRUE} then rows in the matrix are sampled as multivariate observations.}
}
\details{With bootstrapping we sample with replacement from a dataset of size \emph{n} with n samples \code{R} times. At each of the \code{R} iterations a statistical summary can be created resulting in a bootstrap distribution of statistics.}   
\value{
  Returns a list.  The utility function \code{asbio:::print.bootstrap} returns summary output.  Invisible items include the resampling distribution of the statistic, the data, the statistic, and the bootstrap samples.  
}
\references{
Manly, B. F. J.  (1997)  \emph{Randomization and Monte Carlo Methods in Biology, 2nd edition}.  
Chapman and Hall, London.
}
\author{Ken Aho}
\seealso{\code{\link[boot]{boot}}, \code{\link{ci.boot}}}
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

bootstrap(site18[,1],SW,R=1000,matrix=FALSE)
}
\keyword{manip}
