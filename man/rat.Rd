\name{rat}
\alias{rat}
\docType{data}
\title{
Rat glycogen data from Sokal and Rohlf (2012).
}
\description{
This dataset from Sokal and Rohlf (2012) can be used to demonstrate pseudoreplication. Six rats were randomly given one of three treatments: "control", "compound 217", and "compound 217 + sugar".  After a short period of time the rats were euthanized and the glycogen content of their livers was measured.  Two glycogen measurements were made for three different preparations of each liver.  Clearly the liver preparations and measurements on those preparations are nested in each rat, and are not independent. 
}
\usage{data(rat)}
\format{
  A data frame with 36 observations on the following 4 variables.
  \describe{
    \item{\code{glycogen}}{A numeric vector describing glycogen levels.  Units are arbitrary.}
    \item{\code{diet}}{Nutritional compound: 1 = "control", 2 = "compound 217", 3 = "compound 217 + sugar".}
    \item{\code{rat}}{Rat animal number.}
    \item{\code{liver}}{Liver preparation.}
    \item{\code{measure}}{Measurement number.}
  }
}
\source{
Sokal, R. R., and Rohlf, F. J. (2012)  \emph{Biometry, 4th edition}.  W. H. Freeman and Co., New York. 
}
\keyword{datasets}

