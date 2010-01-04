\name{zconf}
\alias{zconf}
\alias{tconf}
\title{Z and t confidence intervals for mu.}
\description{
These functions calculate \emph{t} and \emph{Z} confidence intervals for mu.  \emph{Z} confidence intervals require specification of sigma. Both methods assume underlying normal distributions. Finite population corrections are provided if requested.
}
\usage{

zconf(data, conf = 0.95, sigma, summarized = FALSE, xbar = NULL, fpc = FALSE, N = NULL, n = NULL)

tconf(data, conf = 0.95, summarized = FALSE, xbar = NULL, st.dev = NULL, n = NULL, fpc = FALSE, N = NULL)
}
\arguments{
  \item{data}{A vector of quantitative data.  Required if \code{summarized = FALSE}}
  \item{conf}{Confidence level; 1 - alpha.}
  \item{sigma}{The population standard deviation.}
  \item{summarized}{A logical statement specifying whether statistical summaries are to be used.  If \code{summarized = FALSE}, then the sample mean and the sample standard deviation (\code{t.conf} only) are calculated from the vector provided in \code{data}.  If \code{summarized = FALSE} then the sample mean \code{xbar}, the sample size \code{n}, and, in the case of \code{t.conf},  the sample standard deviation \code{st.dev}, must be provided by the user.}
  \item{xbar}{The sample mean.  Required if \code{summarized = TRUE}.}
  \item{fpc}{A logical statement specifying whether a finite population correction should be made.  If \code{fpc = TRUE} then both the sample size \code{n} and the population size \code{N} must be specified.}
  \item{N}{The population size.  Required if \code{fpc=TRUE}}
  \item{st.dev}{The sample standard deviation.  Required if \code{summarized=TRUE}.}
  \item{n}{The sample size.  Required if \code{summarized = TRUE}.}
}
\details{\code{Z.conf} and \code{t.conf} calculate confidence intervals for either summarized data or a 
dataset provided in \code{data}.  Finite population corrections are made if a user specifies \code{fpc=TRUE} and 
specifies some value for \code{N}.} 
\value{
  Returns a list
  \item{Margin}{the confidence margin}
  \item{CI}{the upper and lower confidence bounds}
}
\references{Lohr, S. L. (1999)  \emph{Sampling: design and analysis}.  Duxbury Press.  Pacific Grove, USA.}
\author{Ken Aho}
\seealso{\code{\link{pnorm}}, \code{\link{pt}}}
\examples{
#With summarized=FALSE 
x<-c(5,10,5,20,30,15,20,25,0,5,10,5,7,10,20,40,30,40,10,5,0,0,3,20,30)
zconf(x,conf=.95,sigma=4,summarized=FALSE)
tconf(x,conf=.95,summarized=FALSE)
#With summarized = TRUE
zconf(x,conf=.95,sigma=4,xbar=14.6,n=25,summarized=TRUE)
tconf(x,conf=.95,st.dev=4,xbar=14.6,n=25,summarized=TRUE)
#with finite population correction and summarized = TRUE
zconf(x,conf=.95,sigma=4,xbar=14.6,n=25,summarized=TRUE,fpc=TRUE,N=100)
tconf(x,conf=.95,st.dev=4,xbar=14.6,n=25,summarized=TRUE,fpc=TRUE,N=100)
}
