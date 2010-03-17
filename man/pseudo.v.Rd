\name{pseudo.v}
\alias{pseudo.v}
\title{Jacknife pseudo-values}
\description{
The function returns first-order jackknife pseudovalues which can be used to create jackknife summaries, e.g. the jackknife parameter estimate, and the jackknife standard error.  The function can be run on univariate data \code{(matrix = FALSE)} or multivariate data \code{(matrix =TRUE)}.  In the later case matrix rows are treated as multivariate observations.   
}
\usage{
pseudo.v(data, statistic, matrix = FALSE)
}
\arguments{
  \item{data}{A vector \code{(matrix =FALSE)} or matrix \code{(matrix=TRUE)} of quantitative data.}
  \item{statistic}{A function whose output is a statistic (e.g. a sample mean).  The function must have only one argument, a call to \code{data}.}
  \item{matrix}{A logical statement.  If \code{matrix = TRUE} then rows in the matrix are sampled as multivariate observations.}
}
\details{
In the first order jackknife procedure a statistic \eqn{\hat{\theta}} is calculated using all \emph{n} samples, it is then calculated with the first observation removed \eqn{\hat{\theta}}\eqn{_{-1}}, with only the second observation removed, \eqn{\hat{\theta}}\eqn{_{-2}}, and so on.  This process is repeated for all \emph{n} samples.  The resulting vector of size \emph{n} contains pseudovalues for their respective observations.
}
\value{
A vector of first-order jackknife pseudovalues is returned.
}
\references{Manly, B. F. J.  (1997)  \emph{Randomization and Monte Carlo methods in biology, 2nd edition}.  
Chapman and Hall, London.}
\author{Ken Aho}

\seealso{\code{\link{empinf}}, \code{\link{boot}}, \code{\link{bootstrap}}}
\examples{
library(vegan)
data(varespec)
# A partial set of observations from a single plot for a Scandinavian moss/vascular plant/lichen survey.
site18<-data.frame(t(varespec[1,][1:20]))

#Shannon-Weiner diversity
SW<-function(data){
d<-data[data!=0]
p<-d/sum(d)
-1*sum(p*log(p))
}

pv<-pseudo.v(site18,SW)
}

