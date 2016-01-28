\name{anm.cont.pdf}
\alias{anm.cont.pdf}
\alias{see.pdf.conc.tck}
\title{Animated demonstration of density for a continuous pdf
}
\description{
A continuous pdf is conceptually a histogram whose bin area sums to one.  Infinite, infinitely small bins, however, are required to allow depiction of an infinite number of distinct continuous outcomes. 
}
\usage{

anm.cont.pdf(part = "norm", interval = 0.3)

see.pdf.conc.tck()
}
\arguments{

  \item{part}{
Parent distribution, options are \code{"norm"} = \emph{N}(0, 1), \code{"t"} = \emph{t}(10), 
\code{"exp"} = EXP(1), and \code{"unif"} = UNIF(0,1)
}
  \item{interval}{
Animation interval
}
}
\author{
Ken Aho}
\note{
May not work every time becasue random values may exceed histogram range.
}
\keyword{graphs}

