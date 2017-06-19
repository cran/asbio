\name{wine}
\alias{wine}
\docType{data}
\title{
White wine quality data for data mining
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
These data concern white variants of the Portuguese "Vinho Verde" wine.
Quality is an ordinal variable based on the median assessment of 
of at least 3 wine experts. Each expert graded wine quality between 0 (very bad) and 10 (excellent).
}
\usage{data("wine")}
\format{
  A data frame with 4898 observations on the following 12 variables.
  \describe{
    \item{\code{Y}}{Wine quality.}
    \item{\code{X1}}{Volatile acidity.}
    \item{\code{X2}}{Citric acid content.}
    \item{\code{X3}}{Residual Sugar content.}
    \item{\code{X4}}{Chloride content.}
    \item{\code{X5}}{Free sulfur dioxide content.}
    \item{\code{X6}}{Total sulfur dioxide content.}
    \item{\code{X7}}{Density.}
    \item{\code{X8}}{pH: \eqn{-\log_{10}} [H\eqn{^{+}}].}
    \item{\code{X9}}{Sulphate content.}
    \item{\code{X10}}{Alcohol content.}
    \item{\code{X11}}{Fixed acidity.}
  }
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
Paulo Cortez (Univ. Minho), Antonio Cerdeira, Fernando Almeida, Telmo Matos and Jose Reis (CVRVV) @ 2009
}
\references{
%%  ~~ possibly secondary sources and usages ~~
Past Usage:

  P. Cortez, A. Cerdeira, F. Almeida, T. Matos, Reis, J.(2009).  
  Modeling wine preferences by data mining from physicochemical properties.
  \emph{Decision Support Systems} 47(4):547-553. 
}

\keyword{datasets}

