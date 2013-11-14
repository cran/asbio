\name{mcmc.norm.hier}
\alias{mcmc.norm.hier}
\alias{norm.hier.summary}

\title{
Gibbs sampling of normal hierarchical models
}
\description{
These functions are designed for Gibbs sampling comparison of groups with normal hierarchical models (see Gelman 2003), and for providing appropriate summaries.    
}
\usage{

mcmc.norm.hier(data, length = 1000, n.chains = 5)

norm.hier.summary(M, burn.in = 0.5, cred = 0.95, conv.log = TRUE)
}

\arguments{
  \item{data}{
A numerical matrix with groups in columns and observations in rows.
}
  \item{length}{
An integer specifying the length of MCMC chains.
}
  \item{n.chains}{
The number of chains to be computed for each parameter
}

  \item{M}{
An output array from \code{mcmc.norm.hier}.
}
  \item{burn.in}{
The burn in period for the chains.  The default value, 0.5, indicates that only the latter half of chains should be used for calculating summaries. 
}

  \item{cred}{
Credibility interval width. 
}

  \item{conv.log}{
A logical argument indicating whether convergence for \eqn{\sigma} and \eqn{\tau} should be considered on a log scale.
}
}
\details{
An important Bayesian application is the comparison of groups within a normal hierarchical model.  We assume that the data from each group are independent and from normal populations with means \eqn{\theta[j]}, \eqn{j = (1,...,J)}, and a common variance, \eqn{\sigma^2}. We also assume that group means, are normally distributed with an unknown mean, \eqn{\mu}, and an unknown variance , \eqn{\tau^2}.  A uniform prior distribution is assumed for     
\eqn{\mu, log\sigma} and \eqn{\tau}; \eqn{\sigma} is logged to facilitate conjugacy.  The function \code{mcmc.norm.hier} provides posterior distributions of \eqn{\theta[j]}'s, \eqn{\mu, \sigma} and \eqn{\tau}.  The distributions are dervided from univariate conditional distributions dervided from the multivariate likelihood function.  These conditional distributions provide a situation conducive to MCMC Gibbs sampling. Gelman et al. (2003) provide excellent summaries of these sorts of models.  

The function \code{mcmc.summary} provides statsitical summaries for the output array from \code{mcmc.norm.hier} including credible intervals (empirically derived directly from chains) and the Gelman/Rubin convergence criterion, \eqn{\hat{R}}.
}
\value{
The function \code{mcmc.norm.hier} reurns a three dimensional (step x variable x chain) array.  The function \code{mcmc.summary} returns a summary table containing credible intervals and the Gelman/Rubin convergence criterion, \eqn{\hat{R}}.
}
\references{
Gelman, A., Carlin, J. B., Stern, H. S., and D. B. Rubin (2003) \emph{Bayesian data analysis, 2nd edition}.  Chapman and Hall/CRC.
}
\author{
Ken Aho
}
\seealso{
\code{\link{R.hat}}
}
\examples{
\dontrun{
data(cuckoo)
mcmc.norm.hier(cuckoo,10,2)
}
}
