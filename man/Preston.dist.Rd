\name{Preston.dist}
\Rdversion{1.1}
\alias{Preston.dist}
\title{
Preston diversity analysis
}
\description{
A diversity and richness analysis method based on the Preston (1948) log-normal distribution. 
}
\usage{

Preston.dist(counts, start = 0.2, cex.octave = 1, cex.legend = 1, cex.pt = 1, ...)
}
\arguments{
  \item{counts}{
	Vector of counts for species in a community dataset. 
}
  \item{start}{
	Starting value for non-linear least squares estimation of \emph{a} in \eqn{n = n_0 \times e^{-aR^2}}.
}
  \item{cex.octave}{
	Character expansion for octave labels.
}
  \item{cex.legend}{
	Character expansion for legend.}

  \item{cex.pt}{
	Character expansion for symbols.}

  \item{\dots}{
Additional arguments from \code{\link{plot}}.
}
}
\details{
Preston (1948) proposed that after a log2 transformation species abundances, grouped in bins representing a doubling of abundance (octaves), would be normally distributed.  Thus, after this transformation most species in a sample would have intermediate abundance, and there would be relatively few rare or ubiquitous species.  The Preston model is based on the Gaussian function: \eqn{n = n_0 \times e^{-aR^2}}, where, \emph{n}0 is the number of species contained in the modal octave, \emph{n} is the number of species contained in an octave \emph{R} octaves from the modal octave, and \emph{a} is an unknown parameter.  The parameter \emph{a} is estimated using the function \code{\link{nls}}, using a starting value, 0.2, recommended by Preston.  The area under Preston curve provides an extrapolated estimate of richness and thus an indication of the adequacy of a sampling effort.  Preston called a line placed at the 0th octave the veil line.  He argued that species with abundances below the veil line have not been detected due to inadequate sampling.  
 
}
\value{
Graph of the Preston log-normal distribution for a dataset given by "counts", and a summary of the analysis including the fitted Gaussian equation, the estimated number of species, and an estimate for the percentage of sampling that was completed i.e. \code{length(counts)/Est.no.of.spp*100}.
}
\references{
Preston, F.W.  (1948)  The commonness and rarity of species. \emph{Ecology} 29, 254-283. 
}
\author{
Ken Aho
}
\seealso{\code{\link{dnorm}}, \code{\link{nls}}}
\examples{

data(BCI.count)
BCI.ttl<-apply(BCI.count,2,sum)
Preston.dist(BCI.ttl)
}
\keyword{graphs}

