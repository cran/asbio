\name{alpha.div}
\Rdversion{1.1}
\alias{alpha.div}
\alias{Simp.index}
\alias{SW.index}
\title{Functions for calculating alpha diversity.
}
\description{
The function \code{alpha.div} runs \code{Simp.index} or \code{SW.index} to calculate Simpson's, Inverse Simpson's or Shannon-Weiner diversities. 

Alpha diversity quantifies richness and evenness within a sampling unit (replicate).

Simpson's index has a straightforward interpretation. It is the probability of reaching into a plot and simultaneously pulling out two different species.  The inverse Simpson's diversity is equivalent to the probability that two randomly chosen individuals will be the same species. These measures have been attributed to Simpson (1949).  While it does not allow straightforward interpretation of results, the Shannon-Weiner diversity (\emph{H}') is another commonly used alpha-diversity measure based on the Kullback-Liebler information criterion (Macarthur and Macarthur 1961). 
}
\usage{
alpha.div(x,index)
Simp.index(x,inv)
SW.index(x)
}
\arguments{
  \item{x}{
A vector or matrix of species abundances (e.g. counts).  The functions assume that species are in columns and sites are in rows.}
  \item{index}{
The type of alpha diversity to be computed.  The function currently has three choices. \code{simp} = Simpson's diversity, \code{inv.simp}=inverse Simpson's, \code{shan} = Shannon-Weiner diversity.}  
  \item{inv}{Logical, indicating whether or not Simpson's inverse diversity should be computed.} 	
}
\value{A single diversity value is returned if \code{x} is a vector.  A vector of diversities (one for each site) are returned if \code{x} is a matrix. 
}
\seealso{\code{\link{beta.div}}}
\references{
Simpson, E. H.  (1949)  Measurement of diversity.  \emph{Nature}.  163: 688.

MacArthur, R. H., and MacArthur J. W.  (1961)  On bird species diversity.  \emph{Ecology}.  42: 594-598.
}
\author{
Ken Aho
}

\examples{
library(vegan)
data(varespec)
alpha.div(varespec,"simp")
}


