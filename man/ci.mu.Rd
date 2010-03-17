\name{ci.mu.z}
\alias{ci.mu.z}
\alias{ci.mu.t}
\alias{print.ci}
\title{Z and t confidence intervals for mu.}
\description{
These functions calculate \emph{t} and \emph{z} confidence intervals for \eqn{\mu}. \emph{Z} confidence intervals require specification (and thus knowledge) of \eqn{\sigma}. Both methods assume underlying normal distributions. Finite population corrections are provided if requested.
}
\usage{

ci.mu.z(data, conf = 0.95, sigma = 1, summarized = FALSE, xbar = NULL,
fpc = FALSE, N = NULL, n = NULL)

ci.mu.t(data, conf = 0.95, summarized = FALSE, xbar = NULL, st.dev = NULL, 
fpc = FALSE, N = NULL, n = NULL)
}
\arguments{
  \item{data}{A vector of quantitative data.  Required if \code{summarized = FALSE}}
  \item{conf}{Confidence level; 1 - alpha.}
  \item{sigma}{The population standard deviation.}
  \item{summarized}{A logical statement specifying whether statistical summaries are to be used.  If \code{summarized = FALSE}, then the sample mean and the sample standard deviation (\code{t.conf} only) are calculated from the vector provided in \code{data}.  If \code{summarized = FALSE} then the sample mean \code{xbar}, the sample size \code{n}, and, in the case of \code{ci.mu.t},  the sample standard deviation \code{st.dev}, must be provided by the user.}
  \item{xbar}{The sample mean.  Required if \code{summarized = TRUE}.}
  \item{fpc}{A logical statement specifying whether a finite population correction should be made.  If \code{fpc = TRUE} then both the sample size \code{n} and the population size \code{N} must be specified.}
  \item{N}{The population size.  Required if \code{fpc=TRUE}}
  \item{st.dev}{The sample standard deviation.  Required if \code{summarized=TRUE}.}
  \item{n}{The sample size.  Required if \code{summarized = TRUE}.}
}
\details{\code{ci.mu.z} and \code{ci.mu.t} calculate confidence intervals for either summarized data or a 
dataset provided in \code{data}.  Finite population corrections are made if a user specifies \code{fpc=TRUE} and 
specifies some value for \code{N}.} 

\value{Returns a list of \code{class = "ci"}.  Default printed results are the paramter estimate and confidence bounds.  Other \code{invisible} objects include:
  \item{Margin}{the confidence margin.}
}
\references{Lohr, S. L. (1999)  \emph{Stampling: design and analysis}.  Duxbury Press.  Pacific Grove, USA.}
\author{Ken Aho}
\seealso{\code{\link{pnorm}}, \code{\link{pt}}}
\examples{
#With summarized=FALSE 
x<-c(5,10,5,20,30,15,20,25,0,5,10,5,7,10,20,40,30,40,10,5,0,0,3,20,30)
ci.mu.z(x,conf=.95,sigma=4,summarized=FALSE)
ci.mu.t(x,conf=.95,summarized=FALSE)
#With summarized = TRUE
ci.mu.z(x,conf=.95,sigma=4,xbar=14.6,n=25,summarized=TRUE)
ci.mu.t(x,conf=.95,st.dev=4,xbar=14.6,n=25,summarized=TRUE)
#with finite population correction and summarized = TRUE
ci.mu.z(x,conf=.95,sigma=4,xbar=14.6,n=25,summarized=TRUE,fpc=TRUE,N=100)
ci.mu.t(x,conf=.95,st.dev=4,xbar=14.6,n=25,summarized=TRUE,fpc=TRUE,N=100)
}
\keyword{univar}
\keyword{htest}
