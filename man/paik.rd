\name{paik}
\alias{paik}

\title{
Paik diagrams
}
\description{
Paik diagrmas for the representation of Simpsons Paradox in three way tables.
}
\usage{

paik(formula, counts, resp.lvl = 2, data, circle.mult = 0.4, xlab = NULL, 
ylab = NULL, leg.title = NULL, leg.loc = NULL, show.mname = FALSE,...)
}

\arguments{

  \item{formula}{
A two sided formula, e.g. \code{Y ~ X1 + X2}, with cross-classified categorical variables. The second explanatory variable, i.e. \code{X2}, 
is used as the trace variable whose levels are distinguished in the graph with different colors.  Interactions and nested terms are not allowed. 
}
  \item{counts}{
A vector of counts for the associated categorical variables in \code{formula}. 
}
  \item{resp.lvl}{
The level in \emph{Y} of primary interest.  See example below.
}
  \item{data}{
Dataframe containing variables in \code{formula}.
}
  \item{circle.mult}{
Multiplier for circle radii in the diagram.
}
  \item{xlab}{
X-axis label.  By default this is defined as the categiries in the first explanatory variable, \code{X1}.
}
  \item{ylab}{
\emph{Y}-axis label.  By default these will be proportions with repsect to the specified level of interest in the response. 
}
  \item{leg.title}{
Legend title.  By default the conditioning variable name.
}
  \item{leg.loc}{
Legend location.  A \code{legend} keyword; \code{"bottomright", "bottom", "bottomleft", "left", "topleft",}\code{"top", "topright", "right"} or \code{"center"}. 
}
  \item{show.mname}{ Logical, indcating whether or not the words "Marginal prop" should printed in the graph above the dotted line indicating marginal proportions. 
}
  \item{\dots}{
Additional arguments from \code{\link{plot}}.
}
}
\references{
Agresti, A. (2012) \emph{Categorical data analysis, 3rd edition}.  New York.  Wiley. 

Paik M. (1985) A graphical representation of a three-way contingency table: Simpson's paradox and correlation.
\emph{American Statistician} 39:53-54.
}
\author{
Ken Aho
}
\examples{
require(tcltk)

data(death.penalty)# from Agresti 2012 

op <- par(mfrow=c(1,2), mar=c(4,4,0,0))
paik(verdict ~ d.race + v.race, counts = count, data = death.penalty, 
leg.title = "Victims race", xlab = "Defendants race", 
ylab = "Proportion receiving death penalty")
par(mar=c(4,2,0,2))
paik(verdict ~ v.race + d.race, counts = count, data = death.penalty, 
xlab = "Victims race", leg.title = "Defendants race",leg.loc="topleft", 
ylab = "", yaxt = "n")

message("Type: vignette(\"simpson\") for more information about this figure")
par(op)
}
\keyword{graphs}

