\name{anm.cont.pdf}
\alias{anm.cont.pdf}
\alias{see.pdf.conc.tck}
\title{Animated demonstration of density for a continuous pdf
}
\description{
A continuous pdf is conceptually a histogram whose bins sum to one, with infinitely many bins to allow depiction of an infinite number of distinct continuous outcomes. 
}
\usage{

anm.cont.pdf(part = "norm", interval = 0.3)

see.pdf.conc.tck()
}
\arguments{

  \item{part}{
parent distribution, options are "norm" = N(0, 1), "t" = t(10) "exp" = EXP(1), and "unif" = UNIF(0,1)
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

