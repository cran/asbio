\name{anm.ExpDesign}
\alias{anm.ExpDesign}
\alias{anm.ExpDesign.tck}
\alias{ExpDesign}
\title{Animated depiction of experimental designs}
\description{
Describes random treatment allocation for twelve experimental designs.}
\usage{

anm.ExpDesign(method=c("CRD","factorial2by2","factorial2by2by2","nested","RCBD",
"RIBD","split","split.split", "SPRB","strip","strip.split2","strip.split3",
"latin","pairs"),
titles =  TRUE, interval = 0.5, iter = 30)


ExpDesign(method =c("CRD","factorial2by2","factorial2by2by2","nested","RCBD",
"RIBD","split","split.split", "SPRB","strip","strip.split2","strip.split3",
"latin","pairs"), titles = TRUE, ...)

anm.ExpDesign.tck()
}
\arguments{
  \item{method}{A vector listing the experimental methods to be demonstrated.  Any subset of the character string:
 \code{c(method=c("CRD","factorial2by2","factorial2by2by2", "nested","RCBD","RIBD","split","split.split", 
"SPRB","strip","strip.split2","strip.split3","latin","pairs"))}.}
  \item{titles}{A logical argument specifying whether or not plots should have \code{main} titles.}
  \item{interval}{Time length spent on each frame in animation (in seconds).}
  \item{iter}{Number of random iterations in animation.}
  \item{\dots}{Additional arguments from \code{\link{plot}}.}
}
\details{
The function returns a plot or series of plots illustrating the workings of experimental designs. Random apportionment of treatments of experimental units (EUs) is illustrated for each of twelve experimental designs.  Choices are: \code{"CRD"}: a one-way completely randomized design,\code{"factorial2by2"}: a 2 x 2 design with four EUs, \code{"factorial2by2by2"}: a 2 x 2 x 2 factorial designs with 8 EUS, \code{"nested"}: a nested design with two levels of nesting,\code{"RCBD"} a randomized complete block design with two blocks, two treatments and four EUs,\code{"RIBD"}: a randomized incomplete block design with three blocks, three treatments, and six EUs,\code{"split"}: a split plot design with a whole plot (factor A) and a split plot (factor B),\code{"split.split"}: a split split-split plot design, \code{"SPRB"}: split plots in randomized blocks,\code{"strip.split"}: strip-split plot design,\code{"latin"}: a Latin squares design with \emph{r} = 3, and \code{"pairs"}: a matched pairs design.  The function \code{anm.ExpDesign.tck} provides an interactive GUI.  
}
\author{Ken Aho}
\seealso{
\code{\link{samp.design}}
}
\examples{
ExpDesign()
\dontrun{anm.ExpDesign()}
}
\keyword{design}
\keyword{graphs}


