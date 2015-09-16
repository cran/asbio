\name{moose.sel}
\alias{mule.sel}
\alias{goat.sel}
\alias{quail.sel}
\alias{elk.sel}
\alias{bighorn.sel}
\alias{bighornAZ.sel}
\alias{moose.sel}
\alias{juniper.sel}
\docType{data}
\title{
Datasets for resource use and availability
}
\description{
A collection of datasets which can be used to calculate and compare selection ratios. Datasets are: \code{goat.sel, mule.sel, quail.sel, elk.sel, bighorn.sel, bighornAZ.sel, juniper.sel} and are described (briefly) in Manly et al. (2002) and Aho and Bowyer (in review).
}
\usage{data(moose.sel)
data(goat.sel)
data(quail.sel)
data(elk.sel)
data(bighorn.sel)
data(bighornAZ.sel)
data(juniper.sel)
}

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
\references{
Aho, K and Bowyer, T (in review) Confidence intervals for ratios of multinomial proportions: Implications for selection ratios.  \emph{Methods in eclogy and Evolution}.  }
\keyword{datasets}




