\name{see.power}
\alias{see.power}
\alias{see.power.tck}

\title{
Interactive depiction of type I and type II error and power 
}
\description{
Provides an interactive pedagogical display of power.
}
\usage{

see.power(alpha = NULL, sigma = NULL, n = NULL, effect = NULL,
test = "lower", xlim = c(-3, 3), strict = FALSE)

see.power.tck()
}

\arguments{

  \item{alpha}{Type I error.
}
  \item{sigma}{Standard deviation of underlying population.
}
  \item{n}{
sample size
}
  \item{effect}{
Effect size
}
  \item{test}{
Type of test, one of \code{c("lower","upper","two")}.
}
  \item{xlim}{
\emph{X}-axis limits
}

  \item{strict}{Causes the function to use a strict interpretation of power in a two-sided test.  If \code{strict = TRUE}
   then power for a two sided test will include the probability of rejection in the opposite tail of the true effect. If \code{strict = FALSE}
   (the default) power will be half the value of \eqn{\alpha} if the true effect size is zero.}
}
\details{
The function \code{see.power} provides an interactive display of power.  The function \code{see.power.tck} provides a \pkg{tcltk} GUI to manipulate \code{see.power}
}

\author{Ken Aho
}

\keyword{graphs}

