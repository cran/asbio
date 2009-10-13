\name{rat}
\alias{rat}
\docType{data}
\title{
Rat glycogen data from Sokal and Rohlf (1995).
}
\description{
This dataset from Sokal and Rohlf (1995) is often used to demonstrate psuedoreplication. Six rats were randomly given one of three treatments: "control", "compound 217", and "compound 217 + sugar".  After a short period of time the rats were euthanized and the glycogen content of their livers was measured.  Two glycogen measurements were made for three different preparations of each liver.  Clearly the liver preparations and measurements on those preparations are nested in each rat, and are not independent. 
}
\usage{data(rat)}
\format{
  A data frame with 36 observations on the following 4 variables.
  \describe{
    \item{\code{Glycogen}}{A numeric vector describing glycogen levels.  Units are arbitrary.}
    \item{\code{Treatment}}{A character vector describing the type of nutritional compound being used 1 = "control", 2 = "compound 217", 3 = "compound 217 + sugar".}
    \item{\code{Rat}}{Rat number assigned to each treatment}
    \item{\code{Liver}}{Portion of liver used in analysis}
  }
}
\source{
Sokal, R. R., and Rohlf, F. J. (1995)  \emph{Biometry}.  W. H. Freeman and Co., New York. 
}
\keyword{datasets}

