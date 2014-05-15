\name{aids}
\alias{aids}
\docType{data}
\title{Aids and veterans dataset

}
\description{
The veterans administration studied the effect of AZT on AIDS symptoms for 338 HIV-positive military veterans who were just begining to express AIDS.  AZT treatment was withheld on a random component until helper T cells showed even greater depletion while the other group received the drug immediately.  The subjects were also classified by race.
}
\usage{data(aids)}
\format{
  A data frame with 338 observations on the following 3 variables.
  \describe{
    \item{\code{race}}{A factor with levels \code{black}, \code{white}.}
    \item{\code{AZT}}{A factor with levels \code{N}, \code{Y}.}
    \item{\code{symptoms}}{Presence/absence of AIDS symptoms.}
  }
}

\source{
Agresti, A. (2012)  \emph{Categorical data analysis, 3rd edition}.  New York.  Wiley.
}

\keyword{datasets}

