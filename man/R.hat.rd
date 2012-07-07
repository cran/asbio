\name{R.hat}
\alias{R.hat}
\title{
R hat MCMC convergence statistic
}
\description{
The degree of convergence of a random Markov Chain can be estimated using the Gelman-Rubin convergence statistic, \eqn{\hat{R}},
based on the stability of outcomes between and within \emph{m} chains of the same length, \emph{n}.       
Values close to one indicate convergence to the underlying distribution.  Values greater than 1.1 indicate inadequate convergence.
}
\usage{

R.hat(M, burn.in = 0.5)
}
\arguments{
  \item{M}{
An \emph{n} x \emph{m} numeric matrix of Markov Chains. 
}
  \item{burn.in}{
The proportion of each chains to be used as a burn in period.  The default value, 0.5, means that only the latter half of the chains will be used in computing \eqn{\hat{R}}. 
}
}
\details{Gelman et al. (2003, pg. 296) provides insufficeint details to reproduce this function.  To get the real function see Gelman and Rubin (1992).  The authors list one other change in their Statlab version of this function at http://lib.stat.cmu.edu/S/itsim.  They recommend muliplying \code{sqrt(postvar/W)} by \code{sqrt((df + 3)/t(df + 1))}. The original code and this function can produce estimates below 1.  
}

\references{
Gelman, A. and D. B. Rubin  (1992) \emph{Inference from iterative simulation using multiple 
sequences (with discussion)}. Statistical Science, 7:457-511.

Gelman, A., Carlin, J. B., Stern, H. S., and D. B. Rubin (2003)  \emph{Bayesian Data Analysis, 2nd edition}.  Chapman and Hall/CRC.

See code recommended by Gelman et al. at:
http://lib.stat.cmu.edu/S/itsim
}
\author{
Ken Aho and unknown StatLib author
}
\keyword{graphs}
