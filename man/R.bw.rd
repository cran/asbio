\name{r.bw}
\alias{r.bw}
\title{Biweight midvariance, and biweight midcorrelation. 
}
\description{
Calculates biweight midvariance if one variable is given and biweight midvariances, midcovariance and midcorrelation if two variables are given. Biweight midcorrelation is a robust alternative to Pearson's \emph{r}.
}
\usage{
r.bw(X, Y=NULL)
}
\arguments{
  \item{X}{A numeric vector
}
  \item{Y}{An optional second numeric variable.
}
}
\details{
Biweight statistics are robust to violations of normality.   Like the sample median the sample midvariance has a breakdown point of approximately 0.5.  The triefficeincy of the biweight midvariance was the highest for any of the 150 measures of scale compared by Lax (1985). 
}
\value{
Returns the biweight variance if one variable is given, and the biweight midvariances, midcovariance and midcorrelation if two variables are given. 
}
\references{
Lax, D. A.  (1985)  Robust estimators of scale: finite sample performance in long-tailed symmetric distributions.  \emph{Journal of the American Statistical Association}, 80 736-741.

Wilcox, R. R.  (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho
}
\seealso{\code{\link{cor}}, \code{\link{r.pb}}}

\examples{
x<-rnorm(100)
y<-rnorm(100)
r.bw(x,y)
}
\keyword{univar}

