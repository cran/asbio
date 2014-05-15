\name{moose.sel}
\alias{goat.sel}
\alias{quail.sel}
\alias{elk.sel}
\alias{bighorn.sel}
\alias{moose.sel}
\alias{juniper.sel}
\docType{data}
\title{
Datasets for resource use and availability
}
\description{
A collection of datasets which can be used to calculate and compare selection ratios
}
\usage{data(moose.sel)}
\format{
  Dataframes with observations on the following variables.
  \describe{
    \item{\code{resources}}{A factor listing resource types.}
    \item{\code{avail}}{Proportional availability (for datasets without n2 and y2).}
    \item{\code{y1}}{A numeric vector: number of times the resouce was used.}
    \item{\code{y2}}{A numeric vector: number of time the resource was observed.}
    \item{\code{n1}}{A numeric vector: number of times that all resources were used.}
    \item{\code{n2}}{A numeric vector: number of times that all resources were observed.}
  }
}
\source{
Manly BF, McDonald LL, Thomas DL, McDonald TL, Erickson WP (2002) \emph{Resource Selection by Animals: Statistical Design and Analysis for Field Studies.  2nd  edn}.  Kluwer, New York
}
\keyword{datasets}




