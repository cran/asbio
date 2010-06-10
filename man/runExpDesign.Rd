\name{runExpDesign}
\alias{runExpDesign}
\title{Simple experimental design plots}
\description{
Describes random treatment allocation for nine experimental designs.}
\usage{
runExpDesign(method = c("CRD", "factorial2by2", "factorial2by2by2", "nested", 
"RCBD", "RIBD", "split", "split.split", "SPRB", "strip.split", "latin", 
"pairs"), titles = TRUE, ...)
}
\arguments{
  \item{method}{A vector listing the experimental methods to be demonstrated.  Any subset of the character string \code{c("CRD","factorial2by2","factorial2by2by2",
"nested","RCBD","RIBD","split","split.split","SPRB","strip.split","latin","pairs")}.}
  \item{titles}{A logical argument specifying whether or not plot should have a \code{main} titles.}
  \item{\dots}{Additional arguments from \code{\link{plot}}.}
}
\details{
The function returns a plot or series of plots illustrating the workings of experimental designs. Random apportionment of treatments of experimental units (EUs) is illustrated for each of nine experimental designs.  Choices are: \code{"CRD"}: a one-way completely randomized design,\code{"factorial2by2"}: a 2 x 2 design with four EUs, \code{"factorial2by2by2"}: a 2 x 2 x 2 factorial designs with 8 EUS, \code{"nested"}: a nested design with two levels of nesting,\code{"RCBD"} a randomized complete block design with two blocks, two treatments and four EUs,\code{"RIBD"}: a randomized incomplete block design with three blocks, three treatments, and six EUs,\code{"split"}: a split plot design with a whole plot (factor A) and a split plot (factor B),\code{"split.split"}: a split split-split plot design, \code{"SPRB"}: split plots in randomized blocks,\code{"strip.split"}: strip-split plot design,\code{"latin"}: a Latin squares design with \emph{r} = 3, and \code{"pairs"}: a matched pairs design.  
}
\author{Ken Aho}
\seealso{
\code{\link{runSampDesign}}
}
\examples{
runExpDesign()
## Not run
## Animation for side by side comparisons of how EUs are assigned to treatments 
## for 12 different experimental designs.
method = matrix(nrow=100,ncol=12,rep(c("CRD", "factorial2by2", "factorial2by2by2", 
"nested", "RCBD", "RIBD", "split", "split.split", "SPRB", "strip.split", "latin", 
"pairs"),100),byrow=TRUE)
for(i in 1:nrow(method)){
runExpDesign(method[i,])
Sys.sleep=0.1
}
}
\keyword{design}
\keyword{graphs}


