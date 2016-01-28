\name{wheat}
\alias{wheat}
\docType{data}
\title{Agricultural randomized block design}
\description{
Allard (1966) sought to quantify variation in the yield in wheat grasses.  
Five wheat crosses were selected from a breeding program and were grown at 
four randomly selected locations where the wheat would be grown commercially.  
At each location crosses (families) were randomly assigned to particular 
sections of fields, i.e. at each location a one way randomized block design 
was conducted.  
}
\usage{data(wheat)}
\format{
The dataframe has four columns:
  \describe{
\item{yield}{Refers to wheat yield.}
\item{loc}{Refers to randomly selected locations where wheat were grown commercially.  A factor with four levels: \code{1,2,3,4}.}
\item{block}{Refers to the replicate block within location.  A factor with four levels: \code{1,2,3,4}. Within each block five wheat crosses were randomly assigned and grown.}  
\item{cross}{Refers to wheat crosses.  A factor with five levels: \code{1,2,3,4,5}.}
  }
}
\source{
Littell, R. C., Milliken, G. A., Stroup, W. W., Wolfinger, R. D., and O. Schabenberger  
(2006)  \emph{SAS for Mixed Models 2nd ed}.  SAS press.
}
\keyword{datasets}
