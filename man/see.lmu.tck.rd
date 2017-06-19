\name{see.lmu.tck}
\alias{see.lmu.tck}
\alias{pm}
\title{
Unbalanced and balanced linear models
}
\description{The default design is balanced, as a result Type I = Type II = Type III SS.  A student can then delete one or more Y responses, and corresponding X responses to see create an unbalanced design.  Now the types of SS will no longer be equal.  Furthermore, the order that X1 and X2 are specified will now matter in the case of Type I SS, although it will not matter for type II and III SS. 
}
\usage{

see.lmu.tck()

pm(Y, X1, X2, X1X2, change.order = FALSE, delete = 0)
}

\arguments{
  \item{Y}{Response variable.}
  \item{X1}{
First column in design matrix with effect coding.
}
  \item{X2}{
Second column in design matrix.   
}
  \item{X1X2}{
An interaction column.  The product of design matrix columns one and two
}
  \item{change.order}{
A logical command specifying whether or not the order of \code{X1} and \code{X2} should changed in the model specification.
}
  \item{delete}{
when \code{delete != 0} an observation number to be deleted.
}
}

\author{Ken Aho}
\seealso{\code{\link{lm}}
}

\keyword{graphs}

