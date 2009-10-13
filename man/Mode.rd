\name{Mode}
\alias{Mode}
\title{Sample mode}
\description{Calculates the sample mode; i.e. the most frequent outcome in a dataset.  Non-existence of the mode will return a message.}
\usage{
Mode(x)
}
\arguments{
  \item{x}{A vector of quantitative data.}
}
\value{Returns the sample mode or an error message if the mode does not exist.
}
\references{Bain, L. J., and M. Engelhardt (1992)  \emph{Introduction to probability and mathematical 
statistics}.  Duxbury press.  Belmont, CA, USA.
}
\author{Ken Aho}
\seealso{\code{\link{H.mean}}, \code{\link{HL.mean}}, \code{\link{mean}}, \code{\link{median}}, \code{\link{huber.mu}}}
\examples{
x<-round(rnorm(100000,mean=10,sd=2),0)
mode(x)
}

