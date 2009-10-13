\name{loglik.norm.plot}
\alias{loglik.plot}
\alias{loglik.norm.plot}
\alias{loglik.exp.plot}
\alias{loglik.pois.plot}
\alias{loglik.binom.plot}
\title{Plots of log-likelihood functions}
\description{
Plots the normal, exponential, Poisson and binomial log likelihood functions.  In particular, likelihoods for parameter estimates are calculated from the pdfs given a particular dataset.  For the normal pdf a fixed value for the parameter which is not being estimated (\eqn{\mu} or \eqn{\sigma^2} is established using OLS.  It is actually irrelevant how how the other parameter is estimated so long as it is held constant when maximizing likelihood for the parameter of interest.
}
\usage{

loglik.norm.plot(X, parameter = c("mu", "sigma.sq"), possibilities, 
plot.density=TRUE)

loglik.pois.plot(X, possibilities)

loglik.binom.plot(X,possibilities)

loglik.exp.plot(X,possibilities, plot.density=TRUE)
}
\arguments{

  \item{X}{A vector of quantitative data.  Conceptually these should be counts for the Poisson 
log-likelihood function and binary responses (0,1) for the binomial log likelihood function.  Data elements for the exponential log likelihood function must be greater than zero.}
  \item{parameter}{The parameter for which ML estimation is desired in \code{loglik.norm.plot}  Specification of either \code{"mu"} or \code{"sigma.sq"} is required for the normal log likelihood function.  No specification is required for exponential, Poisson, and binomial log likelihood functions since these distributions are generally specified with a single parameter, i.e. theta for the exponential, lambda for the Poisson distribution, and \emph{p} (the probability of a success) for the binomial distribution.}
  \item{possibilities}{A vector containing a sequence of possible parameter estimates (the function will choose one of these as the ML estimate).}
  \item{plot.density}{A logical command for \code{loglik.norm.plot} and \code{loglik.exp.plot} indicating whether a second graph in which densities are plotted on the pdf should be created.}
}
\details{These plots are helpful in explaining the workings of ML estimation for parameters.  For demonstration purposes be sure to include the estimate that you "want" to maximize log-likelihood function in the vector of possibilities, e.g.\code{mean(X)}. 
}
\value{
A plot of the normal, Poisson, exponential, or binomial log-likelihood function is returned.
}
\author{Ken Aho}
\seealso{\code{\link{dnorm}}, \code{\link{dpois}}, \code{\link{dexp}}, \code{\link{dbinom}}}
\examples{

##Normal log likelihood estimation of mu.
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
mean(X)
possibilities.mu<-seq(8,14,.01)
loglik.norm.plot(X,parameter="mu",possibilities.mu)

##Normal log likelihood estimation of sigma squared.
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
var(X)
possibilities.var<-seq(1,1.45,.001)
loglik.norm.plot(X,parameter="sigma.sq",possibilities.var)

##Exponential log likelihood estimation of theta
X<-c(0.82,0.32,0.14,0.41,0.09,0.32,0.74,4.17,0.36,1.80,0.74,0.07,0.45,2.33,0.21,
0.79,0.29,0.75,3.45)
possibilities.exp<-seq(.7,1.3,.0001)
loglik.exp.plot(X,possibilities.exp)

##Poisson log likelihood estimation of lambda.
X<-c(1,3,4,0,2,3,4,3,5)
mean(X)
possibilities.poi<-seq(2.7,2.83,.001)
loglik.pois.plot(X,possibilities.poi)

##Binomial log likelihood estimation of p.
X<-c(1,1,0,0,0,1,0,0,0,0)
mean(X)
possibilities<-seq(.2,.4,.01)
loglik.binom.plot(X,possibilities)
}
\keyword{univar}
\keyword{graphs}
