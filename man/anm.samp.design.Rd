\name{anm.samp.design}
\alias{anm.samp.design}
\alias{samp.design}
\title{Animated demonstration of randomized sampling designs}
\description{
Animated Comparisons of outcomes from simple random sampling, stratified random sampling and cluster sampling.
}
\usage{
anm.samp.design(n=20, interval = 0.5 ,iter = 30)

samp.design(n = 20)
}
\arguments{

  \item{n}{The number of samples to be randomly selected from a population of 400.}
  \item{interval}{Time length spent on each frame in animation (in seconds).}
  \item{iter}{Number of random iterations in animation.}
}
\details{
Returns a plot comparing outcomes of random sampling, stratified random sampling and cluster sampling from a population
of size 400.  For stratified random sampling the population is subdivided into four equally strata of size 100.
and \code{n}/4 samples are taken within each strata.  For cluster sampling the population is subdivided into four
equally sized clusters and a census is taken from two clusters (regardless of specification of \code{n}).   The function \code{anm.samp.design} depicts random sampling using animation}
\value{
A plot is returned with four subplots.  (a) shows the population before sampling, (b) shows simple random sampling, (c) shows stratified random sampling, (d) shows cluster sampling.
}
\author{Ken Aho}
\examples{
samp.design(20)
#Not run
#Animated demonstration
anm.samp.design(20)
}
\keyword{design}
\keyword{graphs}