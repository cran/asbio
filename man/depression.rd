\name{depression}
\alias{depression}
\docType{data}
\title{
Hamilton depression scores before and after drug treatment 
}
\description{
Hollander and Wolfe (1999) presented Hamilton depression scale factor measurements for 
9 patients with mixed anxiety and depression.  Measurements were taken at a time preceding administration of tranquilizer, and a time after tranquilizer administration. 
}
\usage{data(depression)}
\format{
  A data frame with 18 observations on the following 3 variables.
  \describe{
    \item{\code{subject}}{Experimental subject.}
    \item{\code{scale}}{Hamilton depression scale score.  0-7 is considered to be normal. Scores of 20 or higher indicate moderate to very severe depression}
    \item{\code{time}}{A factor with levels \code{post} \code{pre} indicating before and after tranqulizer treatment.}
  }
}
\source{
Hollander, M., and  D. A. Wolfe. 1999. \emph{Nonparametric statistical methods}. New York: John Wiley & Sons. 
}

\keyword{datasets}

