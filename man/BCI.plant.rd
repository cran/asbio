\name{BCI.plant}
\alias{BCI.plant}
\docType{data}
\title{
Tree presence/absence data from Barro Colorado island
}
\description{
The presence of the tropical trees \emph{Alchornea costaricensis} and \emph{Anacardium excelsum} with diameter at breast height equal or larger than 10 cm were recorded on along with environmental factors at Barro Colorado Island in Panama (Kindt and Coe 2005).  These data were originally from (Pyke et al. 2001). 
}
\usage{data(BCI.plant)}
\format{
  A data frame with 43 observations on the following 9 variables.
  \describe{
    \item{\code{site.no.}}{A factor with levels \code{C1} \code{C2} \code{C3} \code{C4} \code{p1} \code{p10} \code{p11} \code{p12} \code{p13} \code{p14} \code{p15} \code{p16} \code{p17} \code{p18} \code{p19} \code{p2} \code{p20} \code{p21} \code{p22} \code{p23} \code{p24} \code{p25} \code{p26} \code{p27} \code{p28} \code{p29} \code{p3} \code{p30} \code{p31} \code{p32} \code{p33} \code{p34} \code{p35} \code{p36} \code{p37} \code{p38} \code{p39} \code{p4} \code{p5} \code{p6} \code{p7} \code{p8} \code{p9}}
    \item{\code{UTM.E}}{UTM easting.}
    \item{\code{UTM.N}}{UTM northing.}
    \item{\code{precip}}{Precipitation in mm/year.}
    \item{\code{elev}}{Elevation in m above sea level.}
    \item{\code{age}}{A categorical vector describing age.}
    \item{\code{geology}}{A factor describing geology with levels \code{pT} \code{Tb} \code{Tbo} \code{Tc} \code{Tcm} \code{Tct} \code{Tgo} \code{Tl} \code{Tlc}.}
    \item{\code{Alchornea.costaricensis}}{Plant presence/absence.}
    \item{\code{Anacardium.excelsum}}{Plant presence/absence.}
  }
}

\source{
\url{https://www.science.org/doi/abs/10.1126/science.1066854}
}
\references{
Pyke CR, Condit R, Aguilar S and Lao S. (2001). Floristic composition across a climatic gradient in a neotropical lowland forest. \emph{Journal of Vegetation Science} 12: 553-566.

Kindt, R. & Coe, R. (2005) Tree diversity analysis: A manual and software for common statistical methods for ecological and biodiversity studies.
http://www.worldagroforestry.org/resources/databases/tree-diversity-analysis
}
\keyword{datasets}

