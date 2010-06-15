\name{coin.flip}
\alias{coin.flip}
\title{
Demonstration of frequentist convergence of probability with a coin flip.
}
\description{
Creates an animated plot shsowing results from coin flips and the resulting converence in the probability of a head as the number of flips goes large.
}
\usage{

coin.flip(flips = 1000, p.head = 0.5, interval = 0.01, show.coin = TRUE, ...)
}

\arguments{
  \item{flips}{The number of desired coin flips.}
  \item{p.head}{User defined probability of a head; e.g. for a fair coin \code{p.head} = 0.5.}
  \item{interval}{The time between animation frames, in seconds.}
  \item{show.coin}{Logical if \code{show.coin=TRUE} shows a second plot with coin flip results (head or tail).}
  \item{\dots}{Additional arguments from \code{link{plot}}.}
}
\value{
Id \code{show.coin=TRUE}, returns two plots configured as a single graphical object.  The first plot shows convergence in estimated \emph{P}(Head), i.e. number of heads/number of trials, as the number of trials grows large.  The second shows individual outcomes of coin flips.  
}
\author{Ken Aho
}
\seealso{\code{\link{rbinom}}
}
\examples{
coin.flip(1000)
}
\keyword{graphs}
