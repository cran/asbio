\name{win}
\alias{win}
\title{Winsorize data}
\description{
Winsorizes the proportion of ordered data given by \code{lambda} from each tail.
}
\usage{

win(x, lambda = 0.2)
}
\arguments{

  \item{x}{A vector of data.}
  \item{lambda}{A proportion from 0-1 giving the amount of data to be Winsorized in each tail of an ordered dataset.}
}
\details{
In Winsorization we  we replace responses that are not in the central \eqn{1 - 2 \times \lambda} part of an ordered sample with the minimum and maximum responses of the central part of the sample.  
}
\value{
Returns Winsorized data.
}
\references{
Wilcox, R. R. (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}

\examples{
x<-c(2,1,4,5,6,2.4,7,2.2,.002,15,17,.001)
win(x)}

