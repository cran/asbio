\name{ML.k}
\alias{ML.k}
\title{
Maximum likelihood algorithm for determining the binomial dispersal coefficient
}
\description{
The function uses the maximum likelihood method described by Bliss and R. A. Fisher (1953) to determine maximum likelihood estimates for the binomial parameters \emph{m} (the mean) and \emph{k} (a parameter describing aggregation/dispersion). 
}
\usage{

ML.k(f, x, res = 1e-06)
}
\arguments{
  \item{f}{A vector of frequencies for objects in \code{x} (must be integers).

}
  \item{x}{
A vector of counts, must be sequential integers.
}
  \item{res}{
Resolution for the ML estimator.
}
}

\value{
Returns two items
\item{m}{The negative binomial distribution mean, emph{m}}
\item{comp2 }{The negative binomial dispersion parameter, \emph{k}}

}
\references{
Bliss, C. I., and R. A. Fisher (1953)  Fitting the negative binomial distribution to biological data.  \emph{Biometrics} 9: 176-200.
}
\author{Ken Aho
}
\note{The program is slow at the current resolution.  Later iterations will use linear interpolation, or Fortran loops, or both.
}
\seealso{
\code{\link{dnbinom}}}
\examples{
mites <- seq(0, 8)
freq <- c(70, 38, 17, 10, 9, 3, 2, 1, 0)
ML.k(freq, mites) 
}