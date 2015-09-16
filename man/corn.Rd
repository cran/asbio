\name{corn}
\alias{corn}
\docType{data}
\title{
Corn yield data
}
\description{
Hoshmand (2006) described a split plot design to test grain yield of corn with respect to corn hybrids (split plots) and nitrogen (in whole plots).  The experiment was replicated at two blocks.
}
\usage{data(corn)}
\format{
  A data frame with 40 observations on the following 4 variables.
  \describe{
    \item{\code{yield}}{Corn yield in bushels per acre.}
    \item{\code{hybrid}}{Type of hybrid, P = pioneer, levels were: \code{A632xLH38} \code{LH74xLH51} \code{Mo17xA634} \code{P3732} \code{P3747}.}
    \item{\code{N}}{Nitrogen addition in lbs/acre \code{0} \code{70} \code{140} \code{210}.}
    \item{\code{block}}{A blocking factor with levels \code{1} \code{2}.}
  }
}

\source{
Hoshmand, A. R.  (2006) \emph{Design of Experiments for Agriculture and the Natural Sciences 2nd Edition}.  Chapman and Hall.
}

\keyword{datasets}

