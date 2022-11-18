\name{potato}
\alias{potato}
\docType{data}
\title{Fisher's Rothamsted potato data

}
\description{
In his "Statistical Methods for Research Workers" Fisher (1925) introduced the world to ANOVA using data from the  Rothamsted Agricultural Experimental Station.  In one example, Fisher compared potato yield (per plant) for twelve potato varieties and three fertilizer treatments (a basal manure application, along with sulfur and chloride addition).   
Three replicates were measured for each of the 12 x 3 = 36 treatment combinations. 
}
\usage{data(potato)}
\format{
  A data frame with 108 observations on the following 4 variables.
  \describe{
    \item{\code{Yield}}{Potato yield in lbs per plant}
    \item{\code{Variety}}{Potato variety: \code{Ajax} \code{Arran comrade} \code{British queen} \code{Duke of York} \code{Epicure} \code{Great Scot} \code{Iron duke} \code{K of K} \code{Kerrs pink} \code{Nithsdale} \code{Tinwald perfection} \code{Up-to-date}}
    \item{\code{Fert}}{Fertilizer type: \code{B} = basal manure, \code{Cl} = chloride addition, \code{S} = sulfur addition.}
    \item{\code{Patch}}{Feld patch number \code{1} \code{2} \code{3} \code{4} \code{5} \code{6} \code{7} \code{8} \code{9}}
  }
}
\source{
Fisher, R. A. (1925)  \emph{Statistical Methods for Research Workers, 1st edition}.  Oliver and Boyd,  Edinburgh

Thanks to Bob O'Hara for finding a data entry error for this dataset for versions of asbio <= 1.8-2.
}
\keyword{datasets}

