\name{SM.temp.moist}
\alias{SM.temp.moist}
\docType{data}
\title{
Alpine soil temperature and moisture time series
}
\description{
Soil temperature and water availabilty from Mt. Washburn in Yellowstone National Park.  Data were taken at depth of 5cm from a late snowmelt site at UTM 4960736.977	544792.225 zone 12 NAD 83, elevation 3070m.   
}
\usage{data(SM.temp.moist)}
\format{
  A data frame with 30 observations on the following 4 variables.
  \describe{
    \item{\code{year}}{A numeric vector describing year.}
    \item{\code{julian.day}}{The julian date}
    \item{\code{Temp_C}}{Temperature in degrees celsius.}
    \item{\code{Moisture}}{Soil water availability sensor reading.  A reading of 35 is approximately equal to -1.5 MPa.}
  }
}
\source{
Aho, K. (2006)  Alpine ecology and subalpine cliff ecology in the Northern Rocky 
Mountains.  Doctoral dissertation, Montana State University, 458 pgs.
}
\keyword{datasets}

