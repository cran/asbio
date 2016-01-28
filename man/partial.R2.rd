\name{partial.R2}
\alias{partial.R2}
\title{Partial correlations of determination in multiple regression}
\description{
Calculates the partial correlation of determination for a variable of interest in a multiple regression.  
}
\usage{

partial.R2(nested.lm, ref.lm)
}
\arguments{
  \item{nested.lm}{A linear model without the variable of interest.}
  \item{ref.lm}{A linear model with the variable of interest.}
  }
\details{
Coefficients of partial determination measure the proportional reduction in sums of squares after a variable of interest, \emph{X}, is introduced into a model.  We can see how this would be of interest in a multiple regression.  
}
\value{
The partial \eqn{R^2} is returned.
}
\references{
Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li. (2005)  \emph{Applied Linear Statistical Models, 5th edition}.  McGraw-Hill, Boston.

}
\author{Ken Aho}
\seealso{\code{\link{cor}}, \code{\link{partial.resid.plot}}}
\examples{
Soil.C<-c(13,20,10,11,2,25,30,25,23)
Soil.N<-c(1.2,2,1.5,1,0.3,2,3,2.7,2.5)
Slope<-c(15,14,16,12,10,18,25,24,20)
Aspect<-c(45,120,100,56,5,20,5,15,15)
Y<-as.vector(c(20,30,10,15,5,45,60,55,45))

lm.with<-lm(Y~Soil.C+Soil.N+Slope+Aspect)
lm.without<-update(lm.with, ~. - Soil.N)

partial.R2(lm.without,lm.with)
}
