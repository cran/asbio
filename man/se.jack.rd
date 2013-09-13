\name{se.jack}
\alias{se.jack}
\alias{se.jack1}

\title{
Jackknife standard error from a set of pseudovalues
}
\description{
Calculates the conventional jackknife standard error from a set of pseudovalues. The function \code{se.jack} provides Tukey's jackknife estimator.  The function \code{se.jack} provides a measure associated with first order jackknife estimates of species richness (Heltsche and Forester 1983).
}
\usage{

se.jack(x)


se.jack1(x)
}

\arguments{

  \item{x}{
A numeric vector of pseudovalue, for instance from function \code{\link{pseudo.v}}.
}
}
\references{
Heltshe, J. F., and N. E. Forrester  (1983)  Estimating species richness using the jackknife procedure.  \emph{Biometrics} 39: 1-12. 
}


\author{
Ken Aho
}
\seealso{
\code{\link{pseudo.v}}}
\examples{
trag <- c(59, 49, 75, 43, 94, 68, 77, 78, 63, 71, 31, 59, 53, 48, 65, 73, 50, 59, 50, 57)
p <- pseudo.v(trag, statistic = mean)
se.jack(p[,2])
}