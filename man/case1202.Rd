\name{case1202}
\alias{case1202}
\docType{data}
\title{
Dataset of salary attributes for male and female workers from Ramsey and Schafer (1997)
}
\description{
Ramsey and Schafer (1997) used this dataset to illustrate considerations in model selection. The data describe attributes of 61 female and 32 male clerical employees hired between 1965 and 1975 by a bank sued for sexual harassment. 
}
\usage{data("case1202")}
\format{
  A data frame with 93 observations on the following 7 variables.
  \describe{
    \item{\code{Yhire}}{Annual salary upon hire (US dollars).}
    \item{\code{Y77}}{Annual salary in 1977 (US dollars).}
    \item{\code{Xsex}}{Sex; a factor with the levels \code{FEMALE} and \code{MALE}.}
    \item{\code{Xsen}}{Seniority (months since first hired).}
    \item{\code{Xage}}{Age (in months).}
    \item{\code{Xed}}{Education (in years).}
    \item{\code{Xexp}}{Experience previous to being hired by the bank (in months).}
  }
}

\source{
Ramsey, F., and Schafer, D. (1997). \emph{The statistical sleuth: a course in methods of data analysis}. Cengage Learning.
}
\examples{
data(case1202)
}
\keyword{datasets}

