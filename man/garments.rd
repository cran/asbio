\name{garments}
\alias{garments}
\docType{data}
\title{
Garment Latin square data from Littell et al. (2002)
}
\description{
Four materials (A, B, C, D) used in permenant press garments are subjected to a test fro shrinkag.  The four materials are placed are placed in a heat chamber with with four settings (pos).  The test is conducted in four runs (run). 
}
\usage{data(garments)}
\format{
  A data frame with 16 observations on the following 4 variables.
  \describe{
    \item{\code{run}}{Test run, a factor with levels \code{1} \code{2} \code{3} \code{4}}
    \item{\code{pos}}{Heat position, a factor with levels \code{1} \code{2} \code{3} \code{4}}
    \item{\code{mat}}{Fabric materials, a factor with levels \code{A} \code{B} \code{C} \code{D}}
    \item{\code{shrink}}{Shrinkage measure, a numeric vector}
  }
}

\source{
Littell, R. C., Stroup, W. W., and R. J. Fruend (2002)  \emph{SAS for Linear Models}.  John 
Wiley and Associates.
}
\keyword{datasets}
