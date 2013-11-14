\name{sedum.ts}
\alias{sedum.ts}
\docType{data}
\title{
CO2 exchange time series data 
}
\description{
Gurevitch et al. (1986) demonstrated time series analysis with data describing change in CO2 concentration of airstreams passing over a \emph{Sedum wrightii} test plant.  
}
\usage{data(sedum.ts)}
\format{
  A data frame with 24 observations on the following 3 variables.
  \describe{
    \item{\code{exchange}}{CO2 exchange, measured as: [change in CO2 concentration (g/mg)]/ plant fresh mass (g).  Thus units are 1/mg.  Positive values indicate net CO2 uptake while negative values indicate net CO2 output. }
    \item{\code{time}}{A numeric vector indicating two hour intervals}
    \item{\code{treatment}}{\code{Dry} = water withheld for several week, \code{Wet} = plant well watered.}
  }
}

\source{
Gurevitch, J. and S. T. Chester, Jr.  1986.  Analysis of repeated measures experiments.  \emph{Ecology} 67(1): 251-255.

}

\keyword{datasets}

