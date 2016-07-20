\name{press}
\alias{press}

\title{
prediction sum of squares
}
\description{
Calculates PREdiction Sum of Squares (\emph{PRESS}) for a linear model.
}
\usage{

press(lm, as.R2 = FALSE)
}
\arguments{
  \item{lm}{
An object of class \code{lm}.
}
  \item{as.R2}{ 
Logical.  Whether or not output should be expressed as predicted \eqn{R^2}, i.e., \eqn{PRESS/TSS}.   
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
Returns the \emph{PRESS} statistic.
}
\references{
Kutner, M. H., Nachtsheim, C. J., Neter, J., and W. Li  (2005)  \emph{Applied Linear Statistical Models, 5th edition.}  McGraw-Hill, Boston.
}
\author{
Ken Aho
}
\seealso{\code{\link{cor}}}
\examples{
Y <- rnorm(100)
X <- rnorm(100)
press(lm(Y ~ X))
}
\keyword{univar}
