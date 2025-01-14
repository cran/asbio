\name{anm.coin}
\alias{anm.coin}
\alias{anm.coin.tck}
\title{
Animated demonstration of frequentist binomial convergence of probability using a coin flip.
}
\description{
Creates an animated plot showing the results from coin flips, and the resulting convergence in \emph{P}(Head) as the number of flips grows large.
}
\usage{
anm.coin(flips = 1000, p.head = 0.5, interval = 0.01, show.coin = TRUE, ...)
anm.coin.tck()
}

\arguments{
  \item{flips}{The number of desired coin flips.}
  \item{p.head}{User defined probability of a head; e.g., for a fair coin \code{p.head = 0.5}.}
  \item{interval}{The time between animation frames, in seconds.}
  \item{show.coin}{Logical if \code{show.coin=TRUE} shows a second plot with coin flip results (head or tail).}
  \item{\dots}{Additional arguments to \code{\link{plot}}.}
}
\value{
If \code{show.coin=TRUE}, returns two plots configured as a single graphical object.  The first plot shows convergence in estimated \emph{P}(Head), i.e., number of heads/number of trials, as the number of trials grows large.  The second plot shows individual outcomes of coin flips.  The second (smaller) plot is not returned if \code{show.coin=TRUE} is specified. The function \code{anm.coin()} can be run with the \pkg{tcltk} GUI function, \code{anm.coin.tck()}.
}
\author{Ken Aho
}
\seealso{\code{\link{rbinom}}
}
\examples{
\dontrun{anm.coin()}
}
\keyword{graphs}
