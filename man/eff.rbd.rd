\name{eff.rbd}
\alias{eff.rbd}

\title{
Efficiency of a randomized block design compared to a CRD
}
\description{
Calculates the RCBD efficeincy ratio for a linear model with one main factor and one blocking factor.  Values greater than 1 indicate that the RCBD has greater efficeincy compared to a CRD.
}
\usage{
eff.rbd(lm)
}

\arguments{

  \item{lm}{
An object of class \code{lm}.  The blocking factor must be called "block".
}
}

\references{
Kutner, M. H., C. J. Nachtsheim, J. Neter, and W. Li  (2005) \emph{Applied Linear Statistical Models}. McGraw-Hill Irwin.
}
\author{
Ken Aho
}
\keyword{htest}
