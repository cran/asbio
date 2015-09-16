\name{anm.mc.bvn}
\alias{anm.mc.bvn}
\alias{anm.mc.norm}
\alias{anm.mc.bvn.tck}

\title{
Animation of Markov Chain Monte Carlo walks in bivariate normal space
}
\description{
The algorithm can use three different variants on MCMC random walks: Gibbs sampling, the Metropolis algorithm, and the Metropolis-Hastings algorithms to move through univariate \code{anm.mc.norm} and bivariate normal probability space.  The jumping distribution is also bivariate normal with a mean vector at the current bivariate coordinates.  The jumping kernel modifies the jumping distribution through multiplying the variance covariance of this distribution by the specified constant. 
}
\usage{
anm.mc.bvn(start = c(-4, -4), mu = c(0, 0), sigma = matrix(2, 2, data = c(1, 0,
 0, 1)), length = 1000, sim = "M", jump.kernel = 0.2, xlim = c(-4, 4),
 ylim = c(-4, 4), interval = 0.01, show.leg = TRUE, cex.leg = 1, ...)

anm.mc.norm(start = -4, mu = 0, sigma = 1, length = 2000, sim = "M",
 jump.kernel = 0.2, xlim = c(-4, 4), ylim = c(0, 0.4), interval = 0.01,
 show.leg = TRUE,...)

anm.mc.bvn.tck()
}



\arguments{

  \item{start}{
A two element vector specifying the bivariate starting coordinates.
}
  \item{mu}{
A two element vector specifying the mean vector for the proposal distribution.
}
  \item{sigma}{
A 2 x 2 matrix specifying the variance covariance matrix for the proposal distribution.    
}
  \item{length}{
The length of the MCMC chain.
}
  \item{sim}{
Simulation method used.  Must be one of \code{"G"} idicating Gibbs sampling, \code{"M"} indicating the Metropolis algorithm, or \code{"MH"} indicating the Metropolis-Hastings algorithm (Gibbs sampling is not implemented for \code{anm.mc.norm}).
}
  \item{jump.kernel}{
A number > 0 that will serve as a (squared) multiplier for the proposal variance covariance.  The result of this multiplication will be used as the variance covariance matrix for the jumping distribution.   
}
  \item{xlim}{
A two element vector describing the upper and lower limits of the \emph{x}-axis.
}
  \item{ylim}{
A two element vector describing the upper and lower limits of the \emph{y}-axis.
}
  \item{interval}{
Animation interval
}
  \item{show.leg}{
Logical.  Indicating whether or not the chain length should be shown.
}

 \item{cex.leg}{
Character expansion for legend.
}

  \item{\dots}{
Additional arguments from \code{\link{plot}}.
}
}


\value{
The functon returns two plots.  These are: 1) the proposal bivariate normal distribution in which darker shading indicates higher density, and 2) an animated plot showing the MCMC algorithm walking through the probability space.
}
\references{
Gelman, A., Carlin, J. B., Stern, H. S., and D. B. Rubin (2003)  \emph{Bayesian data analysis, 2nd edition}.  Chapman and Hall/CRC. 
}
\author{
Ken Aho
}
\keyword{graphs}

