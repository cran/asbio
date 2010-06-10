\name{polar.ord}
\alias{polar.ord}
\title{Polar ordinations}
\description{The function currently creates two or three dimensional Bray-Curtis (polar) ordinations. 
}
\usage{

polar.ord(data, index = "steinhaus", endpoint = c("BC.original",
"PC_ORD.original", "var.reg"), get.resid.dist = FALSE)
}

\arguments{

  \item{data}{A multivariate dataset, e.g. a community site x species matrix.}
  \item{index}{The dissimilarity or distance measure to be used.  Any method from \code{\link{get.dist}} can be used.}
  \item{endpoint}{Endpoint selection is accomplished using either the Bray-Curtis original \code{"BC.original"} method (i.e. using the sites which are furthest apart), the PC-ORD original method \code{"PC_ORD.original"} (the first endpoint has the highest sum of distances from other sites, the second endpoint has the highest distance from the first endpoint), or using the variance regression \code{"var.reg"} method as described by McCune and Grace (2002).  Note that the variance regression method in PC-ORD does not appear to be doing what it is supposed to be doing.  The variance regression method in \code{polar.ord} is in accordance with in McCune and Grace (2002). }
  \item{get.resid.dist}{Logical.  Allows one to see the residual distance matrices.}
}
\details{
The Bray-Curtis method is a relatively easy to understand ordination procedure that is also known as polar ordination because it arranges points in reference to endpoints or poles.  The method is strongly favored by ecologists from the University of Wisconsin (probably because this is the school John Curtis graduated from and taught at).  Curtis developed this method with the Canadian ecologist James Bray in the early 50s.  

While polar ordination seems to work reasonably well for recovering community patterns, it has recently been very difficult to publish papers using this technique for two reasons: 1) it has been judged "outmoded" compared to more recently developed matrix decomposition methods, i.e. DCA and CCA, and 2) the endpoint selection techniques for axes can be arbitrary (more on this later).  Edward Beals (1984) wrote a scathing critique of ecologists who undersold polar ordination. Here is an excerpt:

"While ordination as an approach to data analysis gained acceptance in the 1960's, the Bray-Curtis method came under attack beginning with Austin and Orloci (1966), and it quickly fell into disfavor among ecologists as new methods of ordination were introduced and championed.  Only ecologists trained at the University of Wisconsin persisted in using Bray-Curtis, not out of blind loyalty, but because it generally gave more ecologically interpretable results than did newer or more sophisticated methods"

Endpoint selection is the most crucial step in the polar ordination process, because all other points will be placed in relation to the endpoints.  The original Bray-Curtis method used the two most dissimilar points as endpoints.  Two other methods, \code{"PC_ORD.original"} and \code{"var.reg"} are also allowed by \code{polar.ord}.  
}
\value{
Output includes scores, the amount of variance explained by axes, and, if requested, the residual distance matrices.

}
\references{
Beals, E. W. 1984.  Bray-Curtis ordination: an effective strategy for analysis of multivariate ecological data.  \emph{Advances in Ecological Research}.  14: 1-55. 

McCune, B., and J.B. Grace.  2002.  \emph{Analysis of ecological communities}.  MjM Software 
design.  Gelenden Beach OR. 

McCune, B. and E. W. Beals.  1993.  History of the development Bray-Curtis ordination.  
Pp. 67-72 in J. S. Fralish, R. P. McIntosh, and O. L. Loucks eds.  \emph{John Curtis: Fifty Years of Wisconsin Plant Ecology}.  Wisconsin Academy of Science, Arts and Letters, Madison WI.
}
\author{Ken Aho}

\seealso{\code{\link{get.dist}}}
\examples{
demodat<-matrix(ncol=3,nrow=5,data=c(2,3,5,7,9,1,4,0,6,2,5,5,10,2,2),
byrow=FALSE)
po.orig <-polar.ord(demodat,endpoint="BC.original",get.resid.dist=FALSE)}
\keyword{multivariate}
