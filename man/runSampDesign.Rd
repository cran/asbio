\name{runSampDesign}
\alias{runSampDesign}
\title{Plots of random sampling designs}
\description{
Compares outcomes of simple random sampling, stratified random sampling and cluster sampling 
}
\usage{
runSampDesign(n = 20)
}
\arguments{

  \item{n}{The number of samples to be randomly selected from a population of 400.}
}
\details{
Returns a plot comparing outcomes of random sampling, stratified random sampling and cluster sampling from a population
of size 400.  For startified random sampling the population is subdivided into four equally strata of size 100.
and \code{n}/4 samples are taken within each strata.  For cluster sampling the population is subdivided into four
equally sized clusters and a census is taken from two clusters (regardless of specification of \code{n}).}
\value{
A plot is returned.
}
\author{Ken Aho}
\examples{
runSampDesign(20)
}
\keyword{design}
\keyword{graphs}
