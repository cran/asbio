\name{const}
\alias{const}
\title{Constancy of species in a community dataset}
\description{
Calculates constancy of species in a community data (site x species matrix) with respect to categorical treatments (e.g. cluster analysis classes).  Constancy of a species to a treatment is the proportion of times the species occurs at sites within the treatment.
}
\usage{

const(Y, cat, digits = 4)
}
\arguments{

  \item{Y}{An \emph{n} x \emph{p} community site x species matrix.}
  \item{cat}{An \emph{n} x 1 vector of categorical assignments.}
  \item{digits}{Number of significant digits in output.}
}

\value{Output is a \emph{p} x \emph{r} matrix where \emph{r} is the number of categorical levels in \code{cat}.
}
\author{Ken Aho}
\seealso{\code{\link{fidelity}}, \code{\link{veg.table}}}
\examples{
library(vegan)
data(dune)
data(dune.env)
const(dune,dune.env[,3])
}
\keyword{multivariate}

