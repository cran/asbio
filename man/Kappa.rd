\name{Kappa}
\alias{Kappa}
\title{Calculates kappa statistic and other classification error statistics}
\description{
The kappa statistic, along with user and producer error rates are conventionally 
used in the remote sensing to describe the effectiveness of ground cover 
classifications.  Since it simultaneously considers both errors of commission 
and omission, kappa can be considered a more conservative measure of 
classification accuracy than the percentage of correctly classified items.
 
}
\usage{
Kappa(class1, reference)
}
\arguments{
  \item{class1}{A vector describing a classification of experimental units.}
  \item{reference}{A vector describing the "correct" classification of the experimental units in \code{class1}}
}
\value{Returns a list with 4 items 
  \item{ttl_agreement}{The percentage of correctly classified items.}
  \item{user_accuracy}{The user accuracy for each category of the classification.}
  \item{producer_accuracy}{The producer accuracy for each category of the classification.}
  \item{table}{A two way contingency table comparing the user supplied classification to the reference classification.}
}
\references{Jensen, J. R.  (1996)  \emph{Introductory digital imagery processing 2nd edition}.  Prentice-Hall.}
\author{Ken Aho}
\examples{
reference<-c("hi","low","low","hi","low","med","med")
class1<-c("hi","hi","low","hi","med","med","med")
Kappa(class1,reference)
}
\keyword{multivariate}
