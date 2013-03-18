\name{mosquito}
\alias{mosquito}
\docType{data}
\title{
Mosquito wing length data
}
\description{
Sokal and Rohlf (2012) describe an experiment to gauge the variability in wing length in female mosquitos (\emph{Aedes intrudens}).  
Four females were randomly selected from three cages and two measurements were made on the left wing of each female.  
Both cage and female (in cage) can be seen as random effects.  
}
\usage{data(mosquito)}
\format{
  A data frame with 24 observations on the following 4 variables.
  \describe{
    \item{\code{length}}{Wing length in micrometers}
    \item{\code{cage}}{Cage number.}
    \item{\code{female}}{Female (in cage) number}
    \item{\code{measures}}{Measurement (in female in cage) number, i.e. pseudoreplicates in female.}
    
  }
}

\source{
Sokal, R. R., and F. J. Rohlf (2012)  \emph{Biometry, 4th edition}.  W. H. Freeman and Co., New York. 
}
\keyword{datasets}

