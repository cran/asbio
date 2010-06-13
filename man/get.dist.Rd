\name{get.dist}
\alias{get.dist}
\title{Calculates 26 possible resemblance measures.}
\description{This function allows users access to all 26 resemblance measures 
shown in Table 29.10.  This includes five not previously available in R.  
Many of the measures are programmed with the function \code{\link[vegan]{designdist}} from library \code{vegan}.  
The methods can be specified by name or by the distance measure number they were 
given in Table 29.10; e.g. Steinhaus index = \code{"D8"}.  
 Minkowski's distance requires an additional specification for power.  
 The default is power = 2 which makes the measure equivalent to Euclidean distance. 
}
\usage{

get.dist(data, method, minkowski.power = 2)
}
\arguments{

  \item{data}{A matrix for which resemblances between rows will be calculated}
  \item{method}{One of twenty six possible resemblance measures.  These 
  are: \code{"matching", "rogers", "jaccard.pa", "sorenson", "kulkczynski.pa", "ochiai",
  "gower", "steinhaus", "kulkczynski.q", "jaccard.q", "euclidean", "rel.euclidean",
  "manhattan", "czekanowski", "whittaker", "canberra", "chi.metric","chi.dist",
  "morisita", "morisita.horn", "minkowski", "mountford", "raup.crick",
  "binomial",}
   or \code{"chao"}.  A method may also be specified by its equation number from Ch. 29. 
   i.e. Steinhaus dissimilarity = \code{"D8"}.}
  \item{minkowski.power}{Minkowski's distance requires a specification for power.  
 The default is \code{minkowski.power = 2} which makes the measure equivalent to Euclidean distance.}
}
\details{See Ch. 29 for descriptions of resemblance measures.
}
\value{
Returns a matrix of \code{class(dist)}.
}
\seealso{\code{\link{dist}}}
\references{
Legendre, P, and Legendre, L. (1998)  \emph{Numerical ecology, 2nd English edition}.  Elsevier, 
Amsterdam, The Netherlands. 

Oksanen, J., Kindt, R., Legendre, P., O'Hara, B., Simpson, G. L., and Stevens, M. H. H.   
(2008) \emph{vegan: community ecology package. R package version 1.13-0}.  \url{http://vegan.r-forge.r-project.org}
}
\author{Ken Aho}
\examples{
library(vegan)
data(varespec)
get.dist(varespec,method="steinhaus")
}
\keyword{multivariate}
