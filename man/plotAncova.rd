\name{plotAncova}
\alias{plotAncova}

\title{
Creates plots for one way ANCOVAs 
}
\description{
ANCOVA plots are created, potentially with distinct line types and/or symbols and colors for treatments.  A legend relating ciphers to treatments is also included.
}
\usage{

plotAncova(model, pch = NULL, lty = NULL, col = NULL, leg.loc = "topright", 
leg.cex = 1, leg.bty = "o", leg.bg = par("bg"), legend.title = NULL,...)
}

\arguments{

  \item{model}{
Result from \code{\link{lm}}. An additive model results in a common slope plot.  An interaction model results in distinct slopes for treatments 
}
  \item{pch}{
A scalar, or a vector of length \emph{n} defining symbols for treatments. 
}
  \item{lty}{
A scalar, or a vector of length \emph{n} defining line types for treatments. 
}
  \item{col}{
A scalar, or a vector of length \emph{n} defining color for symbols and lines. 
}
  \item{leg.loc}{
Location of the legend. \code{"n"} suppresses the legend.
}
  \item{leg.cex}{
Character expansion from \code{\link{legend}}.
}
  \item{leg.bty}{
Box type from \code{\link{legend}}.
}
  \item{leg.bg}{
Background color from \code{\link{legend}}.
}
  \item{legend.title}{
Legend \code{title} from \code{\link{legend}}.
}
  \item{\dots}{
Additional arguments from \code{\link{plot}}
}
}

\value{
Returns an ANCOVA plot and model coefficients.  Slopes and intercepts for factor level lines are also stored as invisible output (see Examples).  
}

\author{
Ken Aho
}

\seealso{
\code{\link{lm}}
}
\examples{

x <- rnorm(20)
y <- 3 * x + rnorm(20)
cat <- c(rep("A",5),rep("B",5),rep("C",5),rep("D",5))
l <- lm(y ~ x * cat)
plotAncova(l, leg.loc = "bottomright")

# Access intercepts and slopes
pa <- plotAncova(l)
pa
}
\keyword{graphs}
