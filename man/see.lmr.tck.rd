\name{see.lmr.tck}
\alias{see.lmr.tck}
\alias{pm1}
\title{
Regression linear model derivation from linear algebra
}
\description{
Given Y and X matrices a regression linear model is demonstrated using matrix algebra.
}
\usage{
see.lmr.tck()
pm1(Y, X, sz=1, showXY = TRUE)
}

\arguments{

  \item{Y}{
Response variable
}
  \item{X}{
Explanatory variables
}
  \item{sz}{
Text expansion factor
}
  \item{showXY}{
Logical, indicating whether or not \emph{X} and \emph{Y} matrices should be shown.
}
}
\details{
\emph{X} requires a \emph{Y} intercept variable \eqn{X_0} and at least one other variable.
}
\author{Ken Aho
}
\seealso{\code{\link{lm}}}
\keyword{graphs}
