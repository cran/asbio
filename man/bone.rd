\name{bone}
\alias{bone}
\docType{data}
\title{
Bone development data
}
\description{
Neter et al. (1996) described an experiment in which researchers investigated the confounding effect of gender and bone development on growth hormone therapy for prepubescent children.  Gender had two levels: "M" and "F".  
The bone development factor had three levels indicating the severity of growth impediment before therapy: 1 = severely depressed, 2 = moderately depressed, and 3 = mildly depressed.  
At the start of the experiment 3 children were assigned to each of the six treatment combinations. However 4 of the children were unable to complete the experiment, resulting in an unbalanced design.  
}
\usage{data(bone)}
\format{
  A data frame with 14 observations on the following 3 variables.
  \describe{
    \item{\code{gender}}{A factor with levels \code{F} \code{M}}
    \item{\code{devel}}{A factor with levels \code{1} \code{2} \code{3}}
    \item{\code{growth}}{A numeric vector descibing the growth difference before and after hormone therapy}
  }
}
\source{
Neter, J., Kutner, M. H., Nachtsheim, C. J., and Wasserman, W  (1996)  \emph{Applied Linear Statistical Models}.  McGraw-Hill, Boston MA, USA. 
}
\keyword{datasets}

