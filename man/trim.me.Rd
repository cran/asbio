\name{trim.me}
\alias{trim.me}
\title{Trim data}
\description{
Trims observations above and below the central \eqn{(1 - 2\lambda}) part of an an ordered vector of data. 
}
\usage{
trim.me(Y, trim = 0.2)
}
\arguments{

  \item{Y}{A vector of quantitative data.}
  \item{trim}{Proportion (0-1) to be trimmed from each tail of an ordered version of \code{Y}.}
}
\value{Returns a trimmed data vector.}
\author{Ken Aho}
\examples{
x<-c(2,1,4,5,6,2.4,7,2.2,.002,15,17,.001)
trim.me(x)
}

