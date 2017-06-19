\name{eff.rbd}
\alias{eff.rbd}

\title{
Efficiency of a randomized block design compared to a CRD
}
\description{
Calculates the RCBD efficiency ratio for a linear model with one main factor and one blocking factor.  Values greater than 1 indicate that the RCBD has greater efficiency compared to a CRD.
}
\usage{
eff.rbd(lm)
}

\arguments{

  \item{lm}{
An object of class \code{lm}.  The blocking factor must be called \code{"block"}.
}
}

\references{
Kutner, M. H., C. J. Nachtsheim, J. Neter, and W. Li  (2005) \emph{Applied Linear Statistical Models}. McGraw-Hill Irwin.
}
\author{
Ken Aho
}
\keyword{htest}
