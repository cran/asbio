\name{press}
\alias{press}

\title{
prediction sum of squares
}
\description{
Calculates prediction sum of squares (PRESS) for a linear model.
}
\usage{

press(Y, X)
}
\arguments{
  \item{Y}{
A numeric vector containing the response variable.
}
  \item{X}{
A vector or matrix containing explanatory variables.
}
}
\details{
The press statistic is calculated as:
\deqn{\sum_{i=1}^{n}d_i^2}
where 
\deqn{d_i = \frac{e_i}{1-h_{ii}}} 
where \eqn{h_{ii}} is the \emph{i}th diagonal element in the hat matrix.
}
\value{
Returns the PRESS statistic.
}
\references{
Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li.  2005.  \emph{Applied linear statistical models, 5th edition.}  McGraw-Hill, Boston.
}
\author{
Ken Aho
}
\seealso{\code{\link{cor}}}
\examples{
Y<-rnorm(100)
X<-rnorm(100)
press(Y,X)
}
\keyword{univar}
