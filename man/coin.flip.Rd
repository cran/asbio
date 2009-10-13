\name{coin.flip}
\alias{coin.flip}
\title{
Demonstration of frequentist convergence of probability with a coin flip.
}
\description{
Creates an animated plot shsowing results from coin flips and the resulting converence in the probability of a head as the number of flips goes large.
}
\usage{

coin.flip(flips = 1000, p.head = 0.5, interval = 0.01, cex.axis = 1, ...)
}

\arguments{
  \item{flips}{The number of desired coin flips.}
  \item{p.head}{User defined probability of a head; e.g. for a fair coin \code{p.head} = 0.5.}
  \item{interval}{The time between animation frames, in seconds.}
  \item{cex.axis}{Character exapansion for axis.}
  \item{\dots}{Additional arguments from \code{link{plot}}.}
}
\value{
Returns two plots configured as a single graphical object.  The first plot shows individual outcomes of coin flips given \code{p.head}, defined by the user.  The second shows convergence in estimated \emph{P}(Head), i.e. number of heads/number of trials, as the number of trials grows large.
}
\author{Ken Aho
}
\seealso{\code{\link{rbinom}}
}
\examples{
coin.flip(1000)
}
\keyword{graphs}
