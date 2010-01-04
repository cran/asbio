\name{shade.norm}
\Rdversion{1.1}
\alias{shade.norm}
\alias{shade.t}
\alias{shade.F}
\alias{shade.chi}

\title{Shading functions for interpretation of pdf probabilities.
}
\description{
Creates plots with lower, upper, two-tailed, and middle of the distribution shading for popular pdfs. 
}
\usage{

shade.norm(x = NULL, from = NULL, to = NULL, sigma = 1, mu = 0, tail = "lower", show.p = TRUE, show.dist = TRUE)

shade.t(x = NULL, from = NULL, to = NULL, nu = 3, tail = "lower", show.p = TRUE, show.dist = TRUE)

shade.F(x = NULL, from = NULL, to = NULL, nu1 = 1, nu2 = 5, tail = "lower", show.p = TRUE, show.dist = TRUE, prob.to.each.tail = 0.025)

shade.chi(x = NULL, from = NULL, to = NULL, nu = 1, tail = "lower", show.p = TRUE, show.dist = TRUE, prob.to.each.tail = 0.025)
}
\arguments{
  \item{x}{
A quantile, i.e. a single number X = x.
}
  \item{from}{
To be used with \code{tail = "middle"}; the value \emph{a} in \eqn{P(a < X < b)}. 
}
  \item{to}{
To be used with \code{tail = "middle"}; the value \emph{b} in \eqn{P(a < X < b)}. 
}
  \item{sigma}{
Standard deviation for the nomral distribution.
}
  \item{mu}{
Mean of the normal distribution.
}
  \item{tail}{
One of four possibilities: \code{"lower"} provides lower tail shading, \code{"upper"} provides upper tail shading, \code{"two"} provides two tail shading, and \code{"middle"} provide shading in the middle of the pdf, between \code{"from"} and \code{"to"}.
}
  \item{show.p}{
Logical; indicating whether probabilities are to be shown.
}
  \item{show.dist}{
Logical; indicating whether parameters for the distribution are to be shown.
}
  \item{nu}{
Degrees of freedom.
}
  \item{nu1}{
Numerator degrees of freedom for the \emph{F}-distribution.
}
  \item{nu2}{
Denominator degrees of freedom for the \emph{F}-distribution.
}
  \item{prob.to.each.tail}{
Probability to be apportioned to each tail in the \emph{F} and Chi-square distributions if \code{tail = "two"}.
}
}
\value{
Returns a plot with the requested pdf and probability shading.
}
\author{
Ken Aho
}
\note{
Lower-tailed chi-squared probabilities are currently not plotted correctly for df < 3.  
}
\examples{
##normal
shade.norm(x=1.2,sigma=1,mu=0,tail="lower")
shade.norm(x=1.2,sigma=1,mu=0,tail="upper")
shade.norm(x=1.2,sigma=1,mu=0,tail="two")
shade.norm(from=-.4,to=0,sigma=1,mu=0,tail="middle")
shade.norm(from=0,to=0,sigma=1,mu=0,tail="middle")

##t
shade.t(x=-1,nu=5,tail="lower")
shade.t(x=-1,nu=5,tail="upper")
shade.t(x=-1,nu=5,tail="two")
shade.t(from=.5,to=.7,nu=5,tail="middle")
                                                                                        
##F
shade.F(x=2,nu1=15,nu2=8,tail="lower")
shade.F(x=2,nu1=15,nu2=8,tail="upper")
shade.F(nu1=15,nu2=8,tail="two",prob.to.each.tail=0.025)
shade.F(from=.5,to=.7,nu1=15,nu2=10,tail="middle")

##Chi.sq
shade.chi(x=2,nu=5,tail="lower")
shade.chi(x=2,nu=5,tail="upper")
shade.chi(nu=7,tail="two",prob.to.each.tail=0.025)
shade.chi(from=.5,to=.7,nu=5,tail="middle")
}
\keyword{graphs}
\keyword{univar}

