\name{Rabino_CO2}
\alias{Rabino_del13C}
\alias{Rabino_CO2}
\docType{data}
\title{
CSIRO d13C-CO2 data from Rubino et al., A revised 1000 year atmospheric  13C-CO2 record from Law Dome and South Pole, Antarctica
}
\description{
Rabino et al. (2013) provided: CSIRO \eqn{\delta^{13}}C  and CO\eqn{_2} measures covering 1000 years.  
}
\usage{data("Rabino_CO2")}
\format{
    \describe{
    \item{\code{Sample.type}}{A factor with levels \code{firn} and \code{ice}.}
    \item{\code{depth}}{Depth of core (in meters).}
    \item{\code{effective.age}}{Age of CO\eqn{_2} (in years AD).}
    \item{\code{d13C.CO2}}{\eqn{\delta^{13}}C (per mille).}
    \item{\code{CO2}}{CO\eqn{_2} level (in ppm).}
    \item{\code{uncertainty}}{Uncertainty in measures (in ppm (CO\eqn{_2}) or per mille (\eqn{\delta^{13}}C)).}
  }
}

\source{
Rubino, M., Etheridge, D. M., Trudinger, C. M., Allison, C. E., Battle, M. O., Langenfelds, R. L., ... & Jenk, T. M. (2013). A revised 1000 year atmospheric \eqn{\delta^{13}}C-CO\eqn{_2} record from Law Dome and South Pole, Antarctica. \emph{Journal of Geophysical Research: Atmospheres}, 118(15), 8482-8499
}
\examples{
data(Rabino_CO2)
data(Rabino_del13C)

op <- par(mar=c(5,4.5,1,4.5))
with(Rabino_del13C, plot(effective.age, 
d13C.CO2, xlab = "Year", type='p', 
col = 1, pch = 21, bg = 'red', ylab = ''))
axis(2, col = 'red', col.axis = 'red')
mtext(side = 2, expression(paste(delta,' ','
'^13,'C  (per mille)')), col = 'red', 
line = 3, cex = 1.2)
par(new = TRUE)

with(Rabino_CO2, plot(effective.age, 
CO2, type='p', col=1,pch = 21, 
bg = 'blue', axes = FALSE, xlab = "", ylab = ""))
axis(4, col = 'blue', col.axis = 'blue')
mtext(side=4,expression(paste('Atmospheric ', 
CO[2], ' (ppm)')), 
line = 3, col = 'blue', cex = 1.2)
par(op)
}
\keyword{datasets}
