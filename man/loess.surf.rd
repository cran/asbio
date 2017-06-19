\name{loess.surf}
\alias{loess.surf}
\title{
Loess 2D and 3D smooth plots
}
\description{
The function serves as wrapper for \code{\link{loess}} and lets one make 2D or 3D smoother plots using \code{loess} specifications. 
}
\usage{

loess.surf(Y, X, span = 0.75, degree = 1, family = "gaussian", phi = 20, 
theta = 50, xlab = "X", ylab = "Y", zlab = "Fit", line.col = 1, 
line.type = 1, scale = TRUE, duplicate = "error", expand = 0.5, ...)
}
\arguments{

  \item{Y}{A numeric response vector.}
  \item{X}{A numeric explanatory vector or a two column matrix for 3D smooths.}
  \item{span}{Span parameter, i.e. the size of the local neighborhood.}
  \item{degree}{
Indicates whether linear \code{degree = 1} or quadratic models \code{degree = 2} are to be applied to each local neighborhood.
}
  \item{family}{
Type of error distribution to be optimized in fitting.  The default, \code{"gaussian"} is fitting with least squares.  Fitting with Tukey's biweight \emph{M}-Estimator is used if \code{family = "symmetric"}.
}
  \item{phi}{
Parameter from \code{\link{persp}},\code{phi} provides the colatitude viewing angle.
}
  \item{theta}{
Parameter from \code{\link{persp}} \code{theta} gives the azimuthal direction.
}
  \item{xlab}{\emph{X}-axis label.
}
  \item{ylab}{
\emph{Y}-axis label.
}
  \item{zlab}{
\emph{Z}-axis label
}
  \item{line.col}{
Color of loess fit line.
}
  \item{line.type}{
Line type for loess fit.
}
  \item{scale}{
Logical from \code{persp} If scale is \code{TRUE} the \emph{x}, \emph{y} and \emph{z} coordinates are transformed separately. If scale is \code{FALSE} the coordinates are scaled so that aspect ratios are retained.
}
  \item{duplicate}{
Argument from \code{interp} from library \code{akima}.  Consists of a character string indicating how to handle duplicate data points.  The default, \code{duplicate = "error"} produces an error message.
}
  \item{expand}{
Argument from \code{persp}, a expansion factor applied to the \emph{z} coordinates.
}
  \item{\dots}{
Additional arguments from \code{\link{plot}}
}
}
\value{
Output is a 2D or 3D smooth plot.
}
\references{
 Wilcox, R. R.  (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.

}
\author{
Ken Aho
}
\seealso{\code{\link{loess}}}
\examples{
X1<-sort(rnorm(100))
X2<-rexp(100)
Y<-rgamma(100,1,2)
loess.surf(Y,cbind(X1,X2))
}
\keyword{univar}
