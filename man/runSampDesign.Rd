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
of size 400.  For stratified random sampling the population is subdivided into four equally strata of size 100.
and \code{n}/4 samples are taken within each strata.  For cluster sampling the population is subdivided into four
equally sized clusters and a census is taken from two clusters (regardless of specification of \code{n}).}
\value{
A plot is returned with four subplots.  (a) shows the population before sampling, (b) shows simple random sampling, (c) shows stratified random sampling, (d) shows cluster sampling.
}
\author{Ken Aho}
\examples{
runSampDesign(20)
#Not run
#Animated demonstration
r<-rep(20,100)
for(i in 1:100){ 
runSampDesign(r[i])
Sys.sleep(.5)
}
}
\keyword{design}
\keyword{graphs}
