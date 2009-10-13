\name{plantTraits}
\alias{plantTraits}
\docType{data}
\title{Plant traits for 136 species}
\description{
This dataset, from the library \code{cluster}, constitutes a description of 136 plant species
according to biological attributes (morphological or reproductive).
}
\usage{data(plantTraits)}
\format{
 A data frame with 136 observations on the following 31 variables.
   \describe{
     \item{pdias}{Diaspore mass (mg).}
     \item{longindex}{Seed bank longevity.}
     \item{durflow}{Flowering duration.}
     \item{height}{Plant height, an ordered factor with levels '1' < '2' <
          ... < '8'.}
     \item{begflow}{Time of first flowering, an ordered factor with levels
          '1' < '2' < '3' < '4' < '5' < '6' < '7' < '8' < '9'.}
     \item{mycor}{Mycorrhizas, an ordered factor with levels '0'never < '1'
          sometimes< '2'always.}
     \item{vegaer}{Aerial vegetative propagation, an ordered factor with
          levels '0'never < '1' present but limited< '2'important.}
     \item{vegsout}{Underground vegetative propagation, an ordered factor
          with 3 levels identical to 'vegaer' above.}
     \item{autopoll}{Selfing pollination, an ordered factor with levels
          '0'never < '1'rare < '2' often< the rule'3'.}
     \item{insects}{Insect pollination, an ordered factor with 5 levels '0'
          < ... < '4'.}
     \item{wind}{Wind pollination, an ordered factor with 5 levels '0' < ...
          < '4'.}
     \item{lign}{A binary factor with levels '0:1', indicating if plant is
          woody.}
     \item{piq}{A binary factor indicating if plant is thorny.}
     \item{ros}{A binary factor indicating if plant is rosette.}
     \item{semiros}{Semi-rosette plant, a binary factor ('0': no; '1': yes).}
     \item{leafy}{Leafy plant, a binary factor.}
     \item{suman}{Summer annual, a binary factor.}
     \item{winan}{Winter annual, a binary factor.}
     \item{monocarp}{Monocarpic perennial, a binary factor.}
     \item{polycarp}{Polycarpic perennial, a binary factor.}
     \item{seasaes}{Seasonal aestival leaves, a binary factor.}
     \item{seashiv}{Seasonal hibernal leaves, a binary factor.}
     \item{seasver}{Seasonal vernal leaves, a binary factor.}
     \item{everalw}{Leaves always evergreen, a binary factor.}
     \item{everparti}{Leaves partially evergreen, a binary factor.}
     \item{elaio}{Fruits with an elaiosome (dispersed by ants), a binary
          factor.}
     \item{endozoo}{Endozoochorous fruits, a binary factor.}
     \item{epizoo}{Epizoochorous fruits, a binary factor.}
     \item{aquat}{Aquatic dispersal fruits, a binary factor.}
     \item{windgl}{wind dispersed fruits,  a binary factor.}
     \item{unsp}{Unspecialized mechanism of seed dispersal, a binary factor.}
  }
}
\details{Most of factor attributes are not disjunctive. For example, a  plant can be 
usually pollinated by insects but sometimes self-pollination can occur.}
\note{The description here follows directly from that in \code{cluster}.}
\source{
     Vallet, Jeanne (2005) \emph{Structuration de communautes vegetales et
     analyse comparative de traits biologiques le long d'un gradient
     d'urbanisation}. Memoire de Master 2
     'Ecologie-Biodiversite-Evolution'; Universite Paris Sud XI, 30p.+
     annexes (in french).

     Maechler, M., Rousseeuw, P., Struyf, A., Hubert, M. (2005).  \emph{Cluster
     Analysis Basics and Extensions}; unpublished.
}

\keyword{datasets}
