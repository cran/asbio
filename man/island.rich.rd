\name{island.rich}
\Rdversion{1.1}
\alias{island.rich}
\docType{data}
\title{Mammal richness data with respect to montane island area.
}
\description{Among other things the theory of island biogeography (Wilson and McArthur 1967) predicts that species richness
will increase with increasing island area. Islands, however, need not be a body of land
in water. Lomolino et al. (1989) investigated the relationship between the area of
montane forest patches and the richness of mammal fauna in the Southwestern United States.
His data are compiled here.
}
\usage{data(island.rich)}
\format{
This data frame contains the following columns:
   \describe{
    \item{Island}{
      a factor with the montane island names.
         }
    \item{Richness}{
      a numeric vector providing the the number of mammal species identified per island.
         }
    \item{Area_km2}{
      Montane island area in (in km^2).
    }
  }
}
\source{
Lomolino, M. V., J. H. Brown and R. Davis (1989) Island biogeography of montane forest mammals in the
American Southwest. \emph{Ecology} 70:180-194.
}
\keyword{datasets}
