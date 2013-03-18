\name{ant.dew}
\alias{ant.dew}
\docType{data}
\title{
Ant honeydew data
}
\description{
Wright et al. (2000) examined behavior of red wood ants (\emph{Formica rufus}), a species that harvests honeydew in aphids.  
Worker ants traveled from their nests to nearby trees to forage honeydew from homopterans.  Ants descending trees were laden with food and weighed more, given a particular ant head width, then unladen, ascending ants.  
The authors were interested in comparing regression parameters of the ascending and descending ant to create a predictive model of honeydew foraging load for a given ant size.  
}
\usage{data(ant.dew)}
\format{
  A data frame with 72 observations on the following 3 variables.
  \describe{
    \item{\code{head.width}}{Ant head width in mm}
    \item{\code{ant.mass}}{Ant mass in mg}
    \item{\code{direction}}{Direction of travel \code{A} = ascending, \code{D} = descending}
  }
}
\details{
Data approximated from Fig. 1 in Wright et al. (2002)
}
\source{
Wright, P. J., Bonser, R., and U. O. Chukwu  (2000) The size-distance relationship in the 
wood ant \emph{Formica rufa}. \emph{Ecological Entomology} 25(2): 226-233.
}
\keyword{datasets}

