\name{loglik.plot}
\alias{loglik.plot}
\alias{loglik.norm.plot}
\alias{loglik.pois.plot}
\alias{loglik.binom.plot}
\alias{loglik.exp.plot}
\alias{loglik.custom.plot}
\title{Plots of log-likelihood functions}
\description{
Plots the normal, exponential, Poisson, binomial and "custom" log likelihood functions.  Likelihoods for parameter estimates are calculated from the pdfs given a particular dataset.  For the normal distribution a fixed value for the parameter which is not being estimated (\eqn{\mu} or \eqn{\sigma^2}) is established using MLE.  It is actually irrelevant how how the other parameter is estimated so long as it is held constant when maximizing likelihood for the parameter of interest.
}
\usage{
loglik.plot(X, dist = c("norm", "poi", "bin", "exp", "custom"), 
plot.likfunc = TRUE, parameter = NULL, func = NULL, poss = NULL, 
plot.density = TRUE, xlab = NULL, ylab = NULL, conv = 0.01, anim = TRUE, 
interval = 0.01, ...)

loglik.norm.plot(X, parameter = c("mu", "sigma.sq"), poss = NULL, 
plot.likfunc = TRUE, plot.density = TRUE, xlab = NULL, ylab = NULL, 
conv = 0.01, anim = TRUE, interval = 0.01, ...)

loglik.pois.plot(X, poss = NULL, plot.likfunc = TRUE, 
plot.density = TRUE, xlab = NULL, ylab = NULL, conv = 0.01, 
anim = TRUE, interval = 0.01, ...)

loglik.binom.plot(X, poss = NULL, plot.likfunc = TRUE, 
plot.density = TRUE, xlab = NULL, ylab = NULL, anim = TRUE, 
interval = 0.01, conv = 0.01, ...)

loglik.exp.plot(X, poss = NULL, plot.likfunc = TRUE, 
plot.density = TRUE, xlab = NULL, ylab = NULL, conv = 0.01, 
anim = TRUE, interval = 0.01, ...)

loglik.custom.plot(X, func, poss, anim = TRUE, interval = 0.01, 
xlab, ylab, ...)
}

\arguments{

  \item{X}{A vector of quantitative data.  The function does not currently handle extremely large datasets, n > 500. Data should be integers (counts) for the Poisson 
log-likelihood function, and binary responses (0,1) for the binomial log likelihood function.  Data elements for the exponential log likelihood function must be greater than zero.}
  \item{parameter}{The parameter for which ML estimation is desired in \code{loglik.norm.plot}  Specification of either \code{"mu"} or \code{"sigma.sq"} is required for the normal log likelihood function.  No specification is required for exponential, Poisson, and binomial log likelihood functions since these distributions are generally specified with a single parameter, i.e. \eqn{\theta} for the exponential, \eqn{\lambda} for the Poisson distribution, and \emph{p} (the probability of a success) for the binomial distribution.}
  \item{poss}{An optional vector containing a sequence of possible parameter estimates.  Elements in the vector must be distinct.  The likelihood functions will choose one of these as the ML estimate.  If \code{poss} is not specified a vector of appropriate possibilities is provided by the function.}
  \item{dist}{The type of assumed distribution there are currently five possibilities: \code{"norm", "poi", "binom", "exp",} and \code{"custom"}.  Use of custom distributions requires specification of a custom likelihood function in the argument \code{func}.}
  \item{plot.likfunc}{A logical command for indicating whether a graph in which the log-likelihood function is plotted should be created.}
  \item{plot.density}{A logical command for indicating whether a second graph in which densities are plotted on the pdf should be created.}
  \item{xlab}{Optional \emph{X}-axis label.}
  \item{ylab}{Optional \emph{Y}-axis label.}
  \item{conv}{Precision of likelihood function, decreasing \code{conv} increases the smoothness and precision of the ML function.}
  \item{anim}{A logical command indicating whether animation should be used in plots.}
  \item{interval}{Speed of animation.  A smaller interval decreases speed.  May not work in all systems; see \code{\link{Sys.sleep}}.} 
  \item{func}{Custom likelihood function to be specified when using \code{loglik.custom.plot}.  The function should have two arguments.  An optional call to data, and the likelihood function parameter (see example below).} 
  \item{\dots}{Additional arguments from \code{\link{plot}} can be specified for likelihood function plots.}
}

\details{These plots are helpful in explaining the workings of ML estimation for parameters.  Animation is included as an option to further clarify processes.  
When specifying \code{poss} be sure to include the estimate that you "want" the log-likelihood function to maximize in the vector of possibilities, e.g. \code{mean(X)} for estimation of \eqn{\mu}.  Animation in the second (pdf) plot will be sped up, using a primitive routine, for large datasets with many densities.   
}

\value{
A plot of the normal, Poisson, exponential, binomial, or a custom log-likelihood function is returned along with a plot of the pdf with ML estimates for parameters.  On this second graph densities of observations are plotted.  The second graph is not created for custom likelihood functions.
}

\author{Ken Aho}
\seealso{\code{\link{dnorm}}, \code{\link{dpois}}, \code{\link{dexp}}, \code{\link{dbinom}}}
\examples{

##Not run

##Normal log likelihood estimation of mu.
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
loglik.plot(X,dist="norm",parameter="mu")

##Normal log likelihood estimation of sigma squared.
X<-c(11.2,10.8,9.0,12.4,12.1,10.3,10.4,10.6,9.3,11.8)
loglik.plot(X,dist="norm",parameter="sigma.sq")

##Exponential log likelihood estimation of theta
X<-c(0.82,0.32,0.14,0.41,0.09,0.32,0.74,4.17,0.36,1.80,0.74,0.07,0.45,2.33,0.21,
0.79,0.29,0.75,3.45)
loglik.plot(X,dist="exp")

##Poisson log likelihood estimation of lambda.
X<-c(1,3,4,0,2,3,4,3,5)
loglik.plot(X,dist="poi")

##Binomial log likelihood estimation of p.
X<-c(1,1,0,0,0,1,0,0,0,0)
loglik.plot(X,dist="bin")

##Custom log-likelihood function
func<-function(X=NULL,theta)theta^5*(1-theta)^10
loglik.plot(X=NULL,func=func,dist="custom",poss=seq(0,1,0.01),
xlab="Possibilities",ylab="Log-likelihood")             
}
\keyword{univar}
\keyword{graphs}
