\name{SexDeterm}
\alias{SexDeterm}
\docType{data}
\title{
Fern environmental sex determination data
}
\description{
Sex determination (male and female) data at ecologically relevant glucose, N, and P concentrations and stoichiometries, at both ambient and elevated levels of CO\eqn{_2}. The term "ameristic" denotes gametophytes with only male gametangia, while the term "meristic" refers to gametophytes with female or female and male gametangia.
}

\usage{data("SexDeterm")}
\format{
  A data frame with 156 observations on the following 11 variables.
  \describe{
    \item{\code{CO2.Level}}{a factor with levels \code{Ambient} \code{Elevated} CO2 levels}
    \item{\code{Block}}{a numeric vector, the elevated CO2 experiment was completed in 2 blocks}
    \item{\code{Glucose.Level}}{the number of C atoms relative to the number of P atoms, with 5 indicating the presence of 6 micromolar glucose and 0 indicating the absence of glucose in the growth media}
    \item{\code{N.Level}}{the number of N atoms relative to the number of P atoms}
    \item{\code{P.Level}}{the number of P atoms relative to the number of N atoms}
    \item{\code{C.N.P}}{the ratio of C to N to P atoms, a factor with levels \code{1:1} \code{1:2} \code{1:3} \code{1:4} \code{16:1} \code{16:2} \code{16:3} \code{16:4} \code{32:1} \code{32:2} \code{32:3} \code{32:4} \code{48:1} \code{48:2} \code{48:3} \code{48:4} \code{5:1:1} \code{5:1:2} \code{5:1:3} \code{5:1:4} \code{5:16:1} \code{5:16:2} \code{5:16:3} \code{5:16:4} \code{5:32:1} \code{5:32:2} \code{5:32:3} \code{5:32:4} \code{5:48:1} \code{5:48:2} \code{5:48:3} \code{5:48:4}}
    \item{\code{Total.Gametophyte.No.}}{the total number of gametophytes in each population}
    \item{\code{No..of.Ameristic.Gametophytes}}{the number of ameristic (male) gametophytes in each gametophyte population}
    \item{\code{No..of.Meristic.Gametophytes}}{the number of meristic (female and hermaphrodite) gametophytes in each gametophyte population}
    \item{\code{Ameristic.Meristic.Ratio}}{the ratio of ameristic gametophytes to meristic gametophytes (sex ratio)}
    \item{\code{Pct..Ameristic.Gametophytes}}{the percentage of ameristic gametophytes per total gametophyte population}
  }
}
\references{
Goodnoe, T. T., Hill, J. P., Aho, K. (2016)  Effects of variation in carbon, nitrogen and phosphorous molarity and stoichiometry on sex determination in the fern \emph{Ceratopteris richardii}.  \emph{Botany} 94(4): 249-259.  
}
\examples{
data(SexDeterm)
}
\keyword{datasets}

