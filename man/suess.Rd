\name{suess}
\alias{suess}
\docType{data}
\title{
del14C in the atmosphere from 1700-1950
}
\description{
Six reservoir model prediction of the \eqn{\delta^14}C in the atmosphere from approximately 1700-1950 as provided by Bacastow and Keeling (1973).  
}
\usage{data("suess")}
\format{
  A data frame with 149 observations on the following 3 variables.
  \describe{
    \item{\code{Year}}{Year}
    \item{\code{del14C}}{Levels of \eqn{\delta^14}C}
    \item{\code{Source}}{Sources used by Bacastow et al. (1973). lermanN = Northern Hemisphere measures from Lerman (1970), lermanS = Southern Hemisphere measures from Lerman (1970), suess = Northern Hemisphere measures from Suess (1955, 1965), stuiver = Northern Hemisphere measures from Stuiver (1963).}
  }
}
\source{
Bacastow, R., Keeling, C. D., Woodwell, G. M., & Pecan, E. V. (1973). Atmospheric carbon dioxide and radiocarbon in the natural carbon cycle. II. Changes from AD 1700 to 2070 as deduced from a geochemical model (No. CONF-720510--). Univ. of California, San Diego, La Jolla; Brookhaven National Lab., Upton, NY (USA).
}
\references{
Secondary sources used by Bacastow et al. (1973):

Lerman, J. C., Mook, W. G., & Vogel, J. C. (1970). C14 in tree rings from different localities. In \emph{Radiocarbon Variations and Absolute Chronology}. Proceedings, XII Nobel Symposium. New York: Wiley. p (pp. 275-301).

Stuiver, M. (1963). Yale natural radiocarbon measurements IX. \emph{Radiocarbon}, 11, 545-658.

Suess, H. E. (1965). Secular variations of the cosmic-ray-produced carbon 14 in the atmosphere and their interpretations. \emph{Journal of Geophysical Research}, 70(23), 5937-5952.

Suess, H. E. (1955). Radiocarbon concentration in modern wood. \emph{Science}, 122(3166), 415-417.

}

\examples{
data(suess)
with(suess, plot(Year, del14C, col = Source, pch = as.numeric(Source)))
with(suess, legend("topright", legend = levels(Source), col = 1:4, pch = 1:4))
lines(lowess(suess$Year, suess$del14C, f = .25), lwd = 2)
}


\keyword{datasets}
