\name{potash}
\alias{potash}
\docType{data}
\title{
Potash/cotton strength data
}
\description{
An oft-cited RCBD example is an agricultural experiment which evaluates the effect of levels of of soil K2O (potash) on the breaking strength of cotton fibers (Cochran and Cox 1957).  Five levels of K2O were used in the soil subplots (36, 54, 72, 108, and 144 lbs per acre) and a single sample of cotton was taken from each of five subplot.  The experiment had three blocks, and each of the K2O treatments was randomly assigned to the five subplots within each block.  
}
\usage{data(potash)}
\format{
  A data frame with 15 observations on the following 3 variables.
  \describe{
    \item{\code{treatment}}{a factor with levels \code{36} \code{54} \code{72} \code{108} \code{144}}
    \item{\code{block}}{a factor with levels \code{1} \code{2} \code{3}}
    \item{\code{strength}}{a numeric vector}
  }
}
\source{
Cochran, W. G. and G. M. Cox.  1957. \emph{Experimental Designs (Second Edition)}. New York: John Wiley & Sons.
}

\keyword{datasets}

