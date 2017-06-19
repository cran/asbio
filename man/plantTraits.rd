\name{plantTraits}
\alias{plantTraits}
\docType{data}
\title{Plant traits for 136 species}
\description{
This dataset, from the library \pkg{cluster}, describes 136 plant species
according to biological attributes (morphological or reproductive).
}
\usage{data(plantTraits)}
\format{
 A data frame with 136 observations on the following 31 variables.
   \describe{
     \item{\code{pdias}}{Diaspore mass (mg).}
     \item{\code{longindex}}{Seed bank longevity.}
     \item{\code{durflow}}{Flowering duration.}
     \item{height}{Plant height, an ordered factor with levels '1' < '2' <
          ... < '8'.}
     \item{\code{begflow}}{Time of first flowering, an ordered factor with levels
          '1' < '2' < '3' < '4' < '5' < '6' < '7' < '8' < '9'.}
     \item{\code{mycor}}{Mycorrhizae, an ordered factor with levels '0'never < '1'
          sometimes< '2'always.}
     \item{\code{vegaer}}{Aerial vegetative propagation, an ordered factor with
          levels '0'never < '1' present but limited< '2'important.}
     \item{\code{vegsout}}{Underground vegetative propagation, an ordered factor
          with 3 levels identical to 'vegaer' above.}
     \item{\code{autopoll}}{Selfing pollination, an ordered factor with levels
          '0'never < '1'rare < '2' often< the rule'3'.}
     \item{\code{insects}}{Insect pollination, an ordered factor with 5 levels '0'
          < ... < '4'.}
     \item{\code{wind}}{Wind pollination, an ordered factor with 5 levels '0' < ...
          < '4'.}
     \item{\code{lign}}{A binary factor with levels '0:1', indicating if plant is
          woody.}
     \item{\code{piq}}{A binary factor indicating if plant is thorny.}
     \item{\code{ros}}{A binary factor indicating if plant is rosette.}
     \item{\code{semiros}}{Semi-rosette plant, a binary factor ('0': no; '1': yes).}
     \item{\code{leafy}}{Leafy plant, a binary factor.}
     \item{\code{suman}}{Summer annual, a binary factor.}
     \item{\code{winan}}{Winter annual, a binary factor.}
     \item{\code{monocarp}}{Monocarpic perennial, a binary factor.}
     \item{\code{polycarp}}{Polycarpic perennial, a binary factor.}
     \item{\code{seasaes}}{Seasonal aestival leaves, a binary factor.}
     \item{\code{seashiv}}{Seasonal hibernal leaves, a binary factor.}
     \item{\code{seasver}}{Seasonal vernal leaves, a binary factor.}
     \item{\code{everalw}}{Leaves always evergreen, a binary factor.}
     \item{\code{everparti}}{Leaves partially evergreen, a binary factor.}
     \item{\code{elaio}}{Fruits with an elaiosome (dispersed by ants), a binary
          factor.}
     \item{\code{endozoo}}{Endozoochorous fruits, a binary factor.}
     \item{\code{epizoo}}{Epizoochorous fruits, a binary factor.}
     \item{\code{aquat}}{Aquatic dispersal fruits, a binary factor.}
     \item{\code{windgl}}{wind dispersed fruits,  a binary factor.}
     \item{\code{unsp}}{Unspecialized mechanism of seed dispersal, a binary factor.}
  }
}
\details{Most of factor attributes are not disjunctive. For example, a  plant can be 
usually pollinated by insects but sometimes self-pollination can occur.}
\note{The description here follows directly from that in \pkg{cluster}.}
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
