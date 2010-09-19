\name{see.norm.tck}
\alias{see.normcdf.tck}
\alias{see.beta.tck}
\alias{see.betacdf.tck}
\alias{see.bin.tck}
\alias{see.bincdf.tck}
\alias{see.chi.tck}
\alias{see.chicdf.tck}
\alias{see.exp.tck}
\alias{see.expcdf.tck}
\alias{see.F.tck}
\alias{see.Fcdf.tck}
\alias{see.gam.tck}
\alias{see.gamcdf.tck}
\alias{see.geo.tck}
\alias{see.geocdf.tck}
\alias{see.hyper.tck}
\alias{see.hypercdf.tck}
\alias{see.logis.tck}
\alias{see.logiscdf.tck}
\alias{see.lnorm.tck}
\alias{see.lnormcdf.tck}
\alias{see.nbin.tck}
\alias{see.nbincdf.tck}
\alias{see.norm.tck}
\alias{see.pois.tck}
\alias{see.poiscdf.tck}
\alias{see.t.tck}
\alias{see.tcdf.tck}
\alias{see.unif.tck}
\alias{see.unifcdf.tck}
\alias{see.weib.tck}
\alias{see.weibcdf.tck}
\alias{see.pdfdriver.tck}
\alias{see.pdfdriver}
\title{Visualize pdfs}

\description{
Interactive GUIs for visualizing how distributions change with changing values of pdf parameters, e.g. \eqn{\mu} and \eqn{\sigma}.  The basic ideas here are lifted largely from a clever function from Greg Snow's package \pkg{TeachingDemos}. The functions \code{see.pdfdriver.tck} and \code{see.pdfdriver} are \pkg{tcltk} utility functions.
}

\usage{
see.norm.tck()
see.normcdf.tck()
see.beta.tck()
see.betacdf.tck()
see.bin.tck()
see.bincdf.tck()
see.chi.tck()
see.chicdf.tck()
see.exp.tck()
see.expcdf.tck()
see.F.tck()
see.Fcdf.tck()
see.gam.tck()
see.gamcdf.tck()
see.geo.tck()
see.geocdf.tck()
see.hyper.tck()
see.hypercdf.tck()
see.logis.tck()
see.logiscdf.tck()
see.nbin.tck()
see.nbincdf.tck()
see.lnorm.tck()
see.lnormcdf.tck()
see.pois.tck()
see.poiscdf.tck()
see.t.tck()
see.tcdf.tck()
see.unif.tck()
see.unifcdf.tck()
see.weib.tck()
see.weibcdf.tck()
see.pdfdriver.tck()
see.pdfdriver(pdf, show.cdf = TRUE)
}                                               
\arguments{
\item{pdf}{Name of probability density function}
\item{show.cdf}{Logical, indicating whether or not the cumulative distribution function should be shown.}
}
\author{Ken Aho}
\examples{
\dontrun{
see.norm.tck()
}
}
\keyword{graphs}
