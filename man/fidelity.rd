\name{fidelity}
\alias{fidelity}
\title{Fidelity of species in a community to a particular group}
\description{
The function \code{fidelity} calculates the proportion of experimental units (sites) in a group a species occurs in, compared to the total number of sites the species occurs in across all groups. 
}
\usage{

fidelity(Y, cat, digits = 4)
}

\arguments{

  \item{Y}{An \emph{n} x \emph{p} community matrix.}
  \item{cat}{An \emph{n} x 1 vector of categorical assignments.}
  \item{digits}{The number of significant digits in output}
}
\value{
Returns a \emph{p} x \emph{r} matrix of species fidelities (where \emph{r} is the number of categorical assignments, e.g. factor levels.)
}
\author{Ken Aho}
\seealso{\code{\link{const}}, \code{\link{evenness}}, \code{\link{veg.table}}}
\examples{
library(vegan)
data(dune)
data(dune.env)
fidelity(dune,dune.env[,3])
}
\keyword{multivariate} 
