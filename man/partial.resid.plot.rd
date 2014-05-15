\name{partial.resid.plot}
\alias{partial.resid.plot}
\title{Partial residual plots for interpretation of multiple regression.}
\description{The function creates partial residual plots which help a user graphically determine the effect of a single predictor with respect to all other predictors in a multiple regression model.
}
\usage{
partial.resid.plot(x, smooth.span = 0.8, lf.col = 2, sm.col = 4,...)
}
\arguments{

  \item{x}{A output object of class \code{lm} or class \code{glm}}
  \item{smooth.span}{Degree of smoothing for smoothing line.}
  \item{lf.col}{Color for linear fit.}
  \item{sm.col}{Color for smoother fit.}
  \item{\dots}{Additional arguments from \code{\link{plot}}.}
}
\details{
Creates partial residual plots (see Kutner et al. 2002).  Smoother lines from \code{\link{lowess}} and linear fits from \code{\link{lm}} are imposed over plots to help an investigator determine the effect of a particular \emph{X} variable on \emph{Y} with all other variables in the model.  The function automatically inserts explanatory variable names on axes.
}
\value{
Returns \emph{p} partial residual plots, where \emph{p} = the number of explanatory variables.
}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li. (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\seealso{\code{\link{partial.R2}}}
\examples{
Soil.C<-c(13,20,10,11,2,25,30,25,23)
Soil.N<-c(1.2,2,1.5,1,0.3,2,3,2.7,2.5)
Slope<-c(15,14,16,12,10,18,25,24,20)
Aspect<-c(45,120,100,56,5,20,5,15,15)
Y<-c(20,30,10,15,5,45,60,55,45)
x <- lm(Y ~ Soil.N + Soil.C + Slope + Aspect)
op <- par(mfrow=c(2,2),mar=c(5,4,1,1.5))
partial.resid.plot(x)
par(op)
}
\keyword{univar}
\keyword{graphs}
