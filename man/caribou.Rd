\name{caribou}
\alias{caribou}
\docType{data}
\title{
Caribou count data
}
\description{Stratified random sampling was used to estimate the size of the Nelchina herd of Alaskan caribou (\emph{Rangifer tarandus}) in February 1962 (Siniff and Skoog 1964).  
The total population of sample units (for which responses would be counts of caribou) consisted of 699 four mile\eqn{^2} areas.  This population was divided into six strata, and each of these was randomly sampled.
}

\usage{data(caribou)}
\format{
  A data frame with 6 observations on the following 5 variables.
  \describe{
    \item{\code{stratum}}{Strata; a factor with levels \code{A} \code{B} \code{C} \code{D} \code{E} \code{F}}
    \item{\code{N.h}}{Strata population size}
    \item{\code{n.h}}{Strata sample size}
    \item{\code{x.bar.h}}{Strata means}
    \item{\code{var.h}}{Strata variances}
  }
}

\source{
Siniff, D. B., and R. O. Skoog (1964)  Aerial censusing of caribou using stratified random sampling.  
\emph{Journal of Wildlife Management} 28: 391-401. 

}

\keyword{datasets}

