\name{radiation.heatl}
\Rdversion{1.1}
\alias{radiation.heatl}

\title{
Radiation-heatload algorithm
}
\description{
The function radiation.heatl calculates annual incident solar radiation (MJ cm\eqn{^2} yr\eqn{^-1}) and heatload (a radiation index based on the idea that highest amounts of radiation occur on southwest facing slopes in the northern hemisphere). 
}
\usage{
radiation.heatl(slope, aspect, lat)
}
\arguments{
  \item{slope}{
slope (measured in degrees)
}
  \item{aspect}{
aspect (measured in degrees)
}
  \item{lat}{
latitude (measured in degrees)
}
}
\details{
The function requires three types of data: \code{slope} (measured in degrees), \code{aspect} (measured in degrees), and northern latitude = \code{lat} (measured in degree).  The function is based on equations from a paper written by McCune and Keon (2002).  Note that this function ignores climatic factors including cloudiness, and is therefore is probably best for relative comparisons of radiation and heatload within a region and not for absolute measurements.  
}
\value{
\item{radiation}{Annual incident radiation in (MJ cm\eqn{^2} yr\eqn{^-1})}
\item{heatload}{A unitless measure of heatload, maximized on SW aspects.}
}
\references{
McCune, B., and D. Keon (2002)  Equations for potential annual direct radiation and heat load.  \emph{Journal of Vegetation Science}, 13: 603-606.
}
\author{
Ken Aho
}
\examples{
slope<-20
asp<-25
lat<-46
radiation.heatl(slope,asp,lat)
}


