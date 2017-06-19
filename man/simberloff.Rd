\name{simberloff}
\alias{simberloff}
\docType{data}
\title{
Compilations of genus and species counts from Simberloff (1970)
}
\description{
A compilation of taxonomic (species and genus) counts for a wide array of organism groups for island and associated mainland locations.  Taken from Simberloff (1970).
}
\usage{data("simberloff")}
\format{
  A data frame with 204 observations on the following 12 variables.
  \describe{
    \item{\code{Location}}{Island and mainland location.}
    \item{\code{Designation}}{A factor with levels \code{Island} \code{Mainland}.}
    \item{\code{Hypothesized.source}}{Hypothesized mainland location for particular island location.}
    \item{\code{No.spp.}}{The number of species}
    \item{\code{Obs.S.G}}{Observed species/genus (S/G) ratio}
    \item{\code{E.S.G.}}{Expected S/G ratio, based on random sampling from mainland pool of species.}
    \item{\code{prop..obs..cogeners}}{The proportion of observed cogeners, only reported for bird species.}
    \item{\code{prop..exp..cogeners}}{The proportion of expected cogeners based on random sampling from the associated mainland pool of species, only reported for bird species.}
    \item{\code{Authority}}{Source of information for compilation.}
    \item{\code{Life.form}}{A factor with levels \code{Ants} \code{Land birds} \code{Passerine birds} \code{Vascular plants}.}
    \item{\code{Notes.1}}{Notes from Simberloff (1970)}
    \item{\code{Notes.2}}{Additional notes from Simberloff (1970)}
  }
}

\source{
Simberloff, D. (1970) Taxonomic diversity of island biotas. \emph{Evolution} 24, 23-47.
}

\keyword{datasets}


