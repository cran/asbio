\name{death.penalty}
\alias{death.penalty}
\docType{data}
\title{
Florida state death penalty data
}
\description{
Dataset detailing death penalty 674 homicide trials in the state of Florida from 1976-1987 with respect to verdict, and victim and defendant race.  The data were previously used (Agresti 2012) to demonstrate Simpson's Paradox.
}
\usage{data(death.penalty)}
\format{
  A data frame with 8 observations on the following 4 variables.
  \describe{
    \item{\code{count}}{Counts from cross classifications.}
    \item{\code{verdict}}{Death penalty verdict \code{No} \code{Yes}.}
    \item{\code{d.race}}{Defendant's race \code{Black} \code{White}.}
    \item{\code{v.race}}{Victims' race \code{Black} \code{White}.}
  }
}
\details{
A reversal of associations or comparisons may occur as a result of lurking variables or aggregating groups.  This is called Simpson's Paradox.  
}
\source{
Agresti, A.  (2012)  \emph{Categorical Data Analysis, 3rd edition}.  New York.  Wiley. 

Radelet, M. L., and G. L. Pierce  (1991) Choosing those who will die: race and the death 
penalty in Florida.  \emph{Florida Law Review}  43(1):1-34.

Simpson, E. H. (1951) The Interpretation of interaction in contingency tables. \emph{Journal of the Royal Statistical Society} Ser. B 13: 238-241.
}

\keyword{datasets}

