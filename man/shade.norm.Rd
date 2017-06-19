\name{shade.norm}
\alias{shade}
\alias{shade.norm}
\alias{shade.t}
\alias{shade.F}
\alias{shade.chi}
\alias{shade.bin}
\alias{shade.poi}
\alias{shade.wei}

\title{Shading functions for interpretation of pdf probabilities.
}
\description{
Creates plots with lower, upper, two-tailed, and middle of the distribution shading for popular pdfs. 
}
\usage{

shade.norm(x = NULL, from = NULL, to = NULL, sigma = 1, mu = 0,
tail = "lower", show.p = TRUE, show.d = FALSE, show.dist = TRUE, digits = 5,
legend.cex = .9, shade.col="gray",...)

shade.t(x = NULL, from = NULL, to = NULL, nu = 3, tail = "lower", 
show.p = TRUE, show.d = FALSE, show.dist = TRUE, digits = 5,legend.cex = .9, 
shade.col="gray",...)

shade.F(x = NULL, from = NULL, to = NULL, nu1 = 1, nu2 = 5, 
tail = "lower", show.p = TRUE, show.d = FALSE, show.dist = TRUE, 
prob.to.each.tail = 0.025, digits = 5, legend.cex = .9,shade.col="gray",...)

shade.chi(x = NULL, from = NULL, to = NULL, nu = 1, tail = "lower", 
show.p = TRUE, show.d = FALSE, show.dist = TRUE, prob.to.each.tail = 0.025, 
digits = 5,legend.cex = .9,shade.col="gray",...)

shade.bin(x=NULL,from=NULL,to=NULL,n=1,p=0.5,tail="X=x",show.p=TRUE,
show.dist=TRUE, show.d=FALSE,legend.cex = .9,digits=5, ...)

shade.poi(x=NULL,from=NULL,to=NULL,lambda=5,tail="X=x",show.p=TRUE,
show.dist=TRUE, show.d=FALSE,legend.cex = .9,digits=5, ...)

shade.wei(x = NULL, from = NULL, to = NULL, theta = 1, beta = 1, tail = "lower", 
show.p = TRUE, show.d = FALSE, show.dist = TRUE, prob.to.each.tail = 0.025, 
digits = 5, legend.cex = 0.9, shade.col = "gray", ...)
}

\arguments{
  \item{x}{
A quantile, i.e. \eqn{X = x}, or if \code{tail = "two.custom"} ins \code{shade.norm}, a two element vector specifying the upper bound of the lower tail and the lower bound of the upper tail. 
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
One of four possibilities: \code{"lower"} provides lower tail shading, \code{"upper"} provides upper tail shading, \code{"two"} provides two tail shading, and \code{"middle"} provide shading in the middle of the pdf, between \code{"from"} and \code{"to"}.  The additional option \code{"two.custom"} is allowed for \code{shade.norm}. This allows calculation of asymmetric two tailed probabilities.  It requires that the argument \code{x} is a two element vector with elements denoting the upper bound of the lower tail and the lower bound of the upper tail.  For discrete pdfs (binomial and Poisson) the possibility \code{"X=x"} is also allowed, and will be equivalent to the density. Two tailed probability is not implemented for \code{shade.poi}.  
}
  \item{show.p}{
Logical; indicating whether probabilities are to be shown.
}
  \item{show.d}{
Logical; indicating whether densities are to be shown.
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
  \item{digits}{
Number of digits to be reported in probsabilities and densities.
}
  \item{n}{
The number of trials for the binomial pdf.
}
\item{p}{
The binomial probability of success.
}
\item{lambda}{
The Poisson parameter (i.e. rate).
}
\item{legend.cex}{
Character expansion for legends in plots.
}
\item{shade.col}{
Color of probability shading.
}
\item{theta}{
Pdf parameter.
}
\item{beta}{
Pdf parameter.
}

\item{\dots}{
Additional arguments to \code{\link{plot}}.}
}
\value{
Returns a plot with the requested pdf and probability shading.
}
\author{
Ken Aho
}
\note{
Lower-tailed chi-squared probabilities are not plotted correctly for df < 3.  
}
\examples{
\dontrun{
##normal
shade.norm(x=1.2,sigma=1,mu=0,tail="lower")
shade.norm(x=1.2,sigma=1,mu=0,tail="upper")
shade.norm(x=1.2,sigma=1,mu=0,tail="two")
shade.norm(from=-.4,to=0,sigma=1,mu=0,tail="middle")
shade.norm(from=0,to=0,sigma=1,mu=0,tail="middle")
shade.norm(x=c(-0.2, 2),sigma=1,mu=0,tail="two.custom")

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

##binomial
shade.bin(x=5,n=20,tail="X=x",show.d=TRUE)
shade.bin(x=5,n=20,tail="lower")
shade.bin(x=5,n=20,tail="two")
shade.bin(from=8,to=12,n=20,tail="middle")

##Poisson
shade.poi(x=5,lambda=6,tail="X=x",show.d=TRUE)
shade.poi(x=5,lambda=7,tail="lower")
shade.poi(x=5,lambda=8,tail="upper")
shade.poi(from=8,to=12,lambda=7,tail="middle")
}
}
\keyword{graphs}
\keyword{univar}

