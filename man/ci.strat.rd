\name{ci.strat}
\alias{ci.strat}
\title{Confidence intervals for stratified random samples.
}
\description{
A statistical estimate along with its associated confidence interval can be considered to be an inferential statement about the sampled population.  However this statement will only be correct if the method of sampling is considered in the computations of standard errors.  The function \code{ci.strat} provides appropriate computations given stratified random sampling.
}
\usage{

ci.strat(data, strat, N.h, conf = 0.95, summarized = FALSE, use.t = FALSE, 
n.h = NULL, x.bar.h = NULL, var.h = NULL)
}
\arguments{
  \item{data}{A vector of quantitative data.  Required if \code{summarized=FALSE}.}
  \item{strat}{A vector describing strata.}
  \item{N.h}{
A vector dexcribing the number of experimental units for each of the \emph{k} strata.}
  \item{conf}{Level of confidence; 1 - \emph{P}(type I error).}
  \item{summarized}{Logical.  Indicates whether summarized data are to be used.}
  \item{use.t}{Logical.  Indicates whether \emph{t} or \emph{z} confidence intervals should be built.}
  \item{n.h}{A vector indicating the number of experimental units sampled in each of the \emph{k} strata. Required if \code{summarized=TRUE}.}
  \item{x.bar.h}{A vector containing the sample means for each of the \emph{k} strata. Required if \code{summarized=TRUE}
.}
  \item{var.h}{A vector containing the sample variances for each of the \emph{k} strata. Required if \code{summarized=TRUE}.}
}
\details{
the conventional formula for the sample standard error assumes simple random sampling.  There are two other general types of sampling designs: stratified random sampling and cluster sampling.  Since cluster sampling is generally used for surveys involving human demographics we will only describe corrections for stratified random sampling here.  For more information on sample standard error adjustments for cluster sampling see Lohr (1999).   

For a stratified random sampling design let \emph{N} be the known total number of units in the defined population of interest, and assume that the population can be logically divided into \emph{k} strata; \eqn{N=N_1+N_2+N_3+\dots+N_k}  (i.e. we are assuming that we know both the total population size, and the population size of each stratum).  We sample each of the \emph{k} strata with \eqn{n_h} observations; \eqn{h=1,2,\dots,k}.  

We estimate the variance in the \emph{h}th stratum as:
\deqn{S^{2}_{h}=\frac{1}{n_h-1}\sum_{i=1}^{n_k}(X_{hi}-\bar{X}_h)^2}

where \eqn{X_{hi}} is the \emph{i}th observation from the \emph{h}th strata and \eqn{\bar{X}_h} is the \emph{h}th sample mean.  We estimate the true population total, \emph{T}, with:
\deqn{\hat{T}=\sum_{h=i}^{k}N_h\bar{X}_h}

We estimate the population mean, \eqn{\mu}, with:
\deqn{\bar{X}_{str}=\frac{\hat{T}}{N}}

An unbiased estimator for the standard error of \eqn{\bar{X}_{str}} is:
\deqn{S_{\bar{X}_{str}}=\sqrt{\sum_{h=1}^{k}\left(1-\frac{n_h}{N_h}\right)\left(\frac{N_h}{N}\right)^2\left(\frac{S_h^2}{n_h}\right)}}

The standard error of \eqn{\hat{T}} is also of interest.  Here is an unbiased estimator:
\deqn{S_{\hat{T}}=\sqrt{\sum_{h=1}^{k}\left(1-\frac{n_h}{N_h}\right)N_h^2\left(\frac{S_h^2}{n_h}\right)}}

Note that these standard errors have both a finite population correction and adjustments for stratification built into them.  Assuming that sample sizes within each stratum are large or that the sampling design has a large number of strata, a 100(1 - \eqn{\alpha})percent confidence interval for \eqn{\mu}  and \emph{T} can be constructed using:

\deqn{\bar{X}_{str}\pm z_{1-\alpha/2}S_{\bar{X}_{str}}}
\deqn{\hat{T}\pm z_{1-\alpha/2}S_{\hat{T}}}

In situations where sample sizes or the number of strata are small, a \eqn{t(n - k)} distribution can (and should) be used for calculation of confidence intervals,  where \eqn{n=n_1+n_2+\dots+n_k}.
}
\value{
Returns a list with two items:
\item{strat.summary}{A matrix with columns: \code{N.h,n.h,x.bar.h} and \code{var.h}}
\item{CI}{Confidence intervals for \eqn{\mu} and \emph{T}}

}
\references{
Lohr, S. L. (1999) \emph{Sampling: design and analysis}.  Duxbury Press.  Pacific Grove, USA.

Siniff, D. B., and Skoog, R. O. (1964)  Aerial censusing of caribou using stratified 
random sampling.  \emph{Journal of Wildlife Management} 28: 391-401.
}
\author{Ken Aho}
\seealso{\code{\link{ci.mu.z}}}
\examples{
#Data from Siniff and Skoog (1964)
Caribou<-data.frame(Stratum=c("A","B","C","D","E","F"),N.h=c(400,30,61,18,70,120),
n.h=c(98,10,37,6,39,21),x.bar.h=c(24.1,25.6,267.6,179,293.7,33.2),
var.h=c(5575,4064,347556,22798,123578,9795))
attach(Caribou)
ci.strat(data,strat=Stratum,N.h=N.h,conf=.95,summarized=TRUE,use.t=FALSE,n.h=n.h,
x.bar.h=x.bar.h,var.h=var.h)
}

\keyword{univar}
\keyword{htest}
