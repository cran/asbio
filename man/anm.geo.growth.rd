\name{anm.geo.growth}
\alias{anm.geo.growth}
\alias{anm.exp.growth}
\alias{anm.log.growth}
\alias{anm.geo.growth.tck}
\alias{anm.exp.growth.tck}
\alias{anm.log.growth.tck}

\title{Animated depictions of population growth
}

\description{Animated depictions of geometric, exponential, and logistic growth.
}
\usage{

anm.geo.growth(n0, lambda, time = seq(0, 20), ylab = "Abundance",
xlab = "Time", interval = 0.1, ...)

anm.exp.growth(n, rmax, time = seq(0, 20), ylab = "Abundance", 
xlab = "Time", interval = 0.1, ...)

anm.log.growth(n, rmax, K, time = seq(0, 60), ylab = "Abundance", 
xlab = "Time", interval = 0.1, ...)

anm.geo.growth.tck()

anm.exp.growth.tck()

anm.log.growth.tck()
}

\arguments{

  \item{n0}{
Population size at time zero for geometric population growth.
}
  \item{lambda}{
Geometric growth rate.
}
  \item{time}{
A time sequence, i.e. a vector of integers which must include 0.
}
  \item{ylab}{
\emph{Y}-axis label.
}
  \item{xlab}{
\emph{X}-axis label
}
  \item{interval}{
Animation interval in seconds per frame.
}
  \item{\dots}{
Additional arguments to \code{\link{plot}}
}
  \item{n}{Initial population numbers for exponential and logistic growth
}
  \item{rmax}{
The maximum intrinsic rate of increase
}
  \item{K}{
The carrying capacity
}


}
\details{Presented here are three famous population growth models from ecology.  Geometric, exponential and logistic growth.  The first two model growth in the presence of unlimited resources.  Geometric growth is exponential growth assuming non-overlapping generations, and is computed as:

\deqn{N_t = N_{0}\lambda^t,}

where \eqn{N_t} is the number of individuals at time \emph{y}, \eqn{\lambda} is the geometric growth rate, and \emph{t} is time.

Exponential growth allows simultaneous existence of multiple generations, and is computed as:

\deqn{\frac{dN}{dt}=r_{max}N,}

where \eqn{r_{max}} is the maximum intrinsic rate of increase, i.e. max(birth rate - death rate), and \emph{N} is the population size.  With logistic growth, exponential growth is slowed as \emph{N} approaches the carrying capacity.  It is computed as: 

\deqn{\frac{dN}{dt}=r_{max}N\frac{K-N}{K},}

where \eqn{r_{max}} is the maximum rate of intrinsic increase, \eqn{N} is the population size, and \eqn{K} is the carrying capacity

Package \pkg{tcltk} allows implementation of all three models using GUIs.
}

\author{
Ken Aho
}

\seealso{\code{\link{anm.LVexp}}, \code{\link{anm.LVcomp}}
}
\examples{
\dontrun{
anm.geo.growth(10,2.4)
}
}
\keyword{graphs}
