\name{deer.296}
\alias{deer.296}
\title{
Mule deer telemetry data
}
\description{
Telemetry data for mule deer #296 from the Starkey Experimental Forest in Northeastern Oregon.  Data are high resolution (10 minute) radio collar readings from 8/20/2008 to 11/6/2008.  Also included are data for nearest neighbor locations of forest/grassland boundaries.
}
\usage{data(deer.296)}
\format{
  A data frame with 5423 observations on the following 7 variables.
  \describe{
    \item{\code{Time}}{Unit of time measurement used at the Starkey Experimental Forest}
    \item{\code{X}}{Mule Deer \emph{X}-coordinate, UTM Easting}
    \item{\code{Y}}{Mule Deer \emph{Y}-coordinate, UTM Northing}
    \item{\code{NEAR_X}}{Nearest boundary location \emph{X} coordinate}
    \item{\code{NEAR_Y}}{Nearest boundary location \emph{Y} coordinate}
    \item{\code{Hab_Type}}{Type of habitat}
    \item{\code{NEAR_ANGLE}}{A numeric vector containing the angle of azimuth to the nearest point on the boundary with respect to a four quadrant system.  NE = \eqn{0^o} to \eqn{90^o}, NW is > \eqn{90^o} and \eqn{\le 180^o}, SE is < \eqn{0^o} and \eqn{\le -90^o} is > \eqn{-90^o} and \eqn{\le -180^o}.  This output readily obtained ARCGIS software}
  }
}
\keyword{datasets}

