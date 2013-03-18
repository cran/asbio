\name{anolis}
\alias{anolis}
\docType{data}
\title{
Anolis lizard contingency table data
}
\description{
Schoener (1968) examined the resource partitioning of anolis lizards on the Caribbean island of South Bimini.  
He cross-classified lizard counts in habitats (branches in trees) with respect to three variables: 
lizard species {\emph{A. sargei} and \emph{A. distichus}}, branch height {high and low}, and branch size {small and large}.
}
\usage{data(anolis)}
\format{
  A data frame with 8 observations on the following 4 variables.
  \describe{
    \item{\code{height}}{Brach height.  A factor with levels \code{H} \code{L}.}
    \item{\code{size}}{Brach size.  A factor with levels \code{L} \code{S}.}
    \item{\code{species}}{Anolis species. A factor with levels \code{distichus} \code{sagrei}.}
    \item{\code{count}}{Count at the cross classification.}
  }
}

\source{
Schoener, T. W.  (1968)  The Anolis lizards of Bimini: resource partitioning in a complex fauna.  
\emph{Ecology} 49(4): pp. 704-726.
}

\keyword{datasets}

