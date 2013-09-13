\name{bound.angle}
\alias{bound.angle}
\title{
Angle of azimuth to a boundary.
}
\description{
The function calculates the angle of azimuth from a Cartesian coordination given in \code{X} and \code{Y} to a nearest neighbor coordinate 
given by \code{nX} and \code{nY}.  The nearest neighbor coordinates can be obtained using the function \code{\link{near.bound}}.  
}
\usage{bound.angle(X, Y, nX, nY)}
\arguments{
  \item{X}{Cartesian \emph{X} coordinate of interest.  
}
  \item{Y}{Cartesian \emph{Y} coordinate of interest.
}
  \item{nX}{Cartesian \emph{X} coordinate of nearest neighbor point on a boundary.
}
  \item{nY}{Cartesian \emph{Y} coordinate of nearest neighbor point on a boundary. 
}
}
\details{The function returns the nearest neighbor angles (in degrees) with respect to a four coordinate system ala ARC-GIS Near(Analysis).  
Output angles range from \eqn{-180^{\circ}} to \eqn{180^{\circ}}: \eqn{0^{\circ}} to the East, \eqn{90^{\circ}} to the North, \eqn{180^{\circ}} (or \eqn{-180^{\circ}}) to the West,
and \eqn{-90^{\circ}} to the South.  
}
\value{Returns a vector of nearest neighbor angles.}

\author{Ken Aho}
\seealso{\code{\link{near.bound}}, \code{\link{prp}}}
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
nn<-near.bound(X,Y,bX,bY)

bound.angle(X,Y,nn[,1],nn[,2])
}

