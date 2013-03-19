\name{wildebeest}
\alias{wildebeest}
\docType{data}
\title{
Wildebeest carcass categorical data
}
\description{
To test the "predation-sensitive food" hypothesis, which predicts that both food and predation limit prey populations, Sinclair and Arcese (1995) examined wildebeest (\emph{Connochaetes taurinus}) carcasses in the Serengeti.  The degree of malnutrition in animals was measured by marrow content since marrow will contain the last fat reserves in ungulates.  Carcasses were cross-classified with respect to three categorical variables: sex {M, F}, 
cause of death {predation, non-predation}, and marrow type {SWF = Solid White Fatty, indicating healthy animals, OG = Opaque Gelatinous, indicating malnourishment, and TG = Translucent Gelatinous, indicating sever malnourishment}.   
}
\usage{data(wildebeest)}
\format{
  A data frame with 12 observations on the following 4 variables.
  \describe{
    \item{\code{marrow}}{A factor with levels \code{OG} \code{SWF} \code{TG}.}
    \item{\code{sex}}{A factor with levels \code{F} \code{M}.}
    \item{\code{predation}}{A factor with levels \code{N} \code{P}.}
    \item{\code{count}}{Count in each cell}
  }
}
\source{
Sinclair, A. R. E., and P. Arcese (1995)  Population consequences of predation-sensitive foraging: the Serengeti wildebeest.  \emph{Ecology}  76(3):  882-891.
}
\keyword{datasets}

