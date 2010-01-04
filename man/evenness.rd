\name{evenness}
\alias{evenness}
\title{ Pielou's measure of species evenness}
\description{
Calculates Pielou's measure of species evenness, i.e. \emph{J} = \emph{H}'/ln(\emph{S}) where \emph{H}' is 
Shannon Weiner diversity and \emph{S} is the total number of species in a sample, across all samples in dataset.
}
\usage{
evenness(x)
}
\arguments{

  \item{x}{A vector or matrix of species abundances (e.g. counts).  The 
  function assumes that species are in columns and sites are in rows.}
}
\details{
Many diveristy indices incoporate evenness (e.g. Simpson's diversity, Shannon-
Weiner diversity).  Diversity indices which concentrate totally on evenness are 
fraught with problems including dependence on species counts (McCune and Grace 
2002).  A particular problem with Pielou's index is that it is a ratio of a
relatively stable index, \emph{H}', and one that is strongly dependent on sample size, \emph{S}. 
}
\value{
Returns Pielou's \emph{J}.
}
\references{
McCune, B., and Grace, J.B. (2002)  \emph{Analysis of ecological communities}.  MjM Software 
design.  Gelenden Beach OR.  
}
\author{Ken Aho}
\seealso{\code{\link{SW.index}}, \code{\link{fidelity}}, \code{\link{const}}}
\examples{
library(vegan)
data(varespec)
evenness(varespec)}
\keyword{multivariate}
