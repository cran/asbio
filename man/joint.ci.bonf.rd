\name{joint.ci.bonf}
\alias{joint.ci.bonf}
\title{Calculates joint confidence intervals for parameters in linear models using a Bonferroni procedure.}
\description{Creates widened confidence intervals to allow joint consideration of parameter confidence intervals.
}
\usage{

joint.ci.bonf(model, conf = 0.95)
}
\arguments{

  \item{model}{A linear model created by \code{\link{lm}}}
  \item{conf}{level of confidence 1 - \emph{P}(type I error)}
}
\details{
As with all Bonferroni-based methods for joint confidence the resulting intervals 
are exceedingly conservative and thus are prone to type II error.
}
\value{Returns a dataframe with the upper and lower confidence bounds for each parameter in a linear model.
}
\references{Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li. (2005)  \emph{Applied linear statistical models, 5th edition}.  McGraw-Hill, Boston.}
\author{Ken Aho}
\seealso{\code{\link{confint}}, \code{\link{p.adjust}}}
\examples{
Soil.C<-c(13,20,10,11,2,25,30,25,23)
Soil.N<-c(1.2,2,1.5,1,0.3,2,3,2.7,2.5)
Slope<-c(15,14,16,12,10,18,25,24,20)
Aspect<-c(45,120,100,56,5,20,5,15,15)
Y<-as.vector(c(20,30,10,15,5,45,60,55,45))
model<-lm(Y~Soil.C+Soil.N+Slope+Aspect)
joint.ci.bonf(model)
}
\keyword{univar}
\keyword{htest}
