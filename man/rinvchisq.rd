\name{rinvchisq}
\alias{rinvchisq}

\title{
Random draws from a scaled inverse chi-square distribution
}
\description{
The distribution is an important component of Bayesian normal hierarchical models with uniform priors.
}
\usage{

rinvchisq(n, df, scale = 1/df)
}
\arguments{
  \item{n}{
The number of random draws.
}
  \item{df}{
Degrees of freedom parameter.
}
  \item{scale}{
Scale non-centrality parameter.
}
}
\details{
Code based on a function with same name in package \pkg{goeR}.
}
\seealso{
The function is a wrapper for \code{\link{rchisq}}.}

