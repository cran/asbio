\name{Bayes.disc}
\alias{Bayes.disc}
\alias{Bayes.disc.tck}
\title{
Bayesian graphical summaries for discrete or categorical data.
}
\description{
An simple function for for summarizing a Bayesian analysis given discrete or categorical variables and priors.
}
\usage{

Bayes.disc(Likelihood, Prior, data.name = "data", plot = TRUE, 
c.data = seq(1, length(Prior)), ...)

Bayes.disc.tck()
}

\arguments{

  \item{Likelihood}{A vector of sample distribution probabilities.  This must be in the same order as \code{Prior}, i.e. if \eqn{\theta_1} is the first element in \code{Prior}, then \eqn{data|\theta_1} must be the first element in \code{Data}.
}
  \item{Prior}{
A vector of prior probabilities, or weights.
}
  \item{data.name}{A name for data in conditional statements.
}
  \item{plot}{
Logical, indicating whether a plot should be made.
}
  \item{c.data}{
A character string of names for discrete classes
}
  \item{\dots}{
Additional arguments to \code{\link{plot}}.
}
}

\author{
Ken Aho
}
\keyword{graphs}
