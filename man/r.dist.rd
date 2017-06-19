\name{r.dist}
\alias{r.dist}
\alias{see.r.dist.tck}

\title{
Visualize the sampling distribution of Pearson's product moment correlation
}
\description{
Stumbling points for many methods of inference for the true correlation \eqn{\rho} and for independence are: 1) asymmetry, 2) explicit bounds on \eqn{\rho},  and 3) dependence on sample size, of the sampling distribution of \emph{r}.  

The functions here allow visualization of these characteristics.  The algorithm used for the sampling distribution of \emph{r} is based on the first two steps in an asymptotic series (see Kenney and Keeping 1951).    
}
\usage{
r.dist(rho, r, n)
see.r.dist.tck()
}
\arguments{
  \item{rho}{
Population correlation
}
  \item{r}{
A numeric vector containing possible estimates of \eqn{rho}.
}
  \item{n}{
Sample size, an integer.
}

}
\details{
All distributions are standardized to have an area of one.
}
\references{
Kenney, J. F. and E. S. Keeping (1951) \emph{Mathematics of Statistics, Pt. 2, 2nd ed}. Van Nostrand, Princeton, NJ. 

Weisstein, E. W. (2012) Correlation Coefficient--Bivariate Normal Distribution. From MathWorld--A Wolfram Web Resource. http://mathworld.wolfram.com/CorrelationCoefficientBivariateNormalDistribution.html 
}
\author{
Ken Aho
}
\seealso{
\code{\link{cor}}
}
\examples{
dev.new(height=3.5)
op <- par(mfrow=c(1,2),mar=c (0,0,1.5,3), oma = c(5, 4.2, 0, 0))
vals <- r.dist(0.9, seq(-1, 1, .001), 5)
plot(seq(-1, 1, .001), vals, type = "l",ylab = "", xlab = "")
vals <- r.dist(0.5, seq(-1, 1, .001), 5)
lines(seq(-1, 1, .001), vals, lty = 2)
vals <- r.dist(0.0, seq(-1, 1, .001), 5)
lines(seq(-1, 1, .001), vals, lty = 3)
legend("topleft", lty = c(1, 2, 3), title = expression(paste(italic(n)," = 5")), 
legend = c(expression(paste(rho, " = 0.9")),expression(paste(rho, " = 0.5")),
expression(paste(rho, " = 0"))),bty = "n") 

vals <- r.dist(0.9, seq(-1, 1, .001), 30)
plot(seq(-1, 1, .001), vals, type = "l",xlab= "", ylab= "")
vals <- r.dist(0.5, seq(-1, 1, .001), 30)
lines(seq(-1, 1, .001), vals, lty = 2)
vals <- r.dist(0.0, seq(-1, 1, .001), 30)
lines(seq(-1, 1, .001), vals, lty = 3)
legend("topleft", lty = c(1, 2, 3), title = expression(paste(italic(n)," = 30")), 
legend = c(expression(paste(rho, " = 0.9")),expression(paste(rho, " = 0.5")),
expression(paste(rho, " = 0"))), bty = "n") 
mtext(side = 2, expression(paste(italic(f),"(",italic(r),")")), outer = TRUE, line = 3)
mtext(side = 1, expression(italic(r)), outer = TRUE, line = 3, at = .45)
par(op)
}

\keyword{graphs}

