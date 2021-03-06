\name{near.bound}
\alias{near.bound}

\title{Nearest neighbor boundary coordinates
}
\description{
Finds nearest neighbor boundary Cartesian coordinates for use as arguments in function \code{\link{prp}}.
}
\usage{

near.bound(X, Y, bX, bY)
}
\arguments{
  \item{X}{A vector of Cartesian \emph{X}-coordinates (e.g. UTMs) describing an animal's locations (e.g. telemetry data).
}
  \item{Y}{
A vector of Cartesian \emph{Y} coordinates (e.g. UTMs) describing an animal's locations (e.g. telemetry data).
}
  \item{bX}{
A vector of boundary \emph{X}-coordinates.
}
  \item{bY}{
A vector of boundary \emph{Y}-coordinates.
}
}

\value{
Returns Cartesian \emph{X,Y} coordinates of nearest neighbor locations on a boundary.
}
\author{
Ken Aho
}
\seealso{
\code{\link{prp}}, \code{\link{bound.angle}}}
\examples{
bX<-seq(0,49)/46
bY<-c(4.89000,4.88200,4.87400,4.87300,4.88000,4.87900,4.87900,4.90100,4.90800,
4.91000,4.93300,4.94000,4.91100,4.90000,4.91700,4.93000,4.93500,4.93700,
4.93300,4.94500,4.95900,4.95400,4.95100,4.95800,4.95810,4.95811,4.95810,
4.96100,4.96200,4.96300,4.96500,4.96500,4.96600,4.96700,4.96540,4.96400,
4.97600,4.97900,4.98000,4.98000,4.98100,4.97900,4.98000,4.97800,4.97600,
4.97700,4.97400,4.97300,4.97100,4.97000)

X<-c(0.004166667,0.108333333,0.316666667,0.525000000,0.483333333,0.608333333,
0.662500000,0.683333333,0.900000000,1.070833333)
Y<-c(4.67,4.25,4.26,4.50,4.90,4.10,4.70,4.40,4.20,4.30)
near.bound(X,Y,bX,bY)
}
