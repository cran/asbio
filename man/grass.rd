\name{grass}
\alias{grass}
\docType{data}
\title{Agricultural factorial design}
\description{
Littell et al. (2006) describe an experiment to distinguish the effects of three seed growing methods 
on the yield of five turf grass varieties. The seed growing methods were applied to seed from each grass variety.  
Six pots were planted with each variety \eqn{\times} method combination.  The pots were placed in a growth chamber with 
uniform conditions and dry matter (in grams) was weighed from above ground clips after four weeks.  
}
\usage{data(grass)}
\format{
The dataframe has three columns:
  \describe{
\item{\code{yield}}{Refers to grass yield.}
\item{\code{method}}{Seed growing method.  A factor with three levels: \code{a,b,c}.}  
\item{\code{variety}}{Grass variety. A factor with five levels: \code{1,2,3,4,5}.}
  }
}
\source{
Littell, R. C., Milliken, G. A., Stroup, W. W., Wolfinger, R. D., and O. Schabenberger  
(2006)  \emph{SAS for mixed models 2nd ed}.  SAS press.
}
\keyword{datasets}
