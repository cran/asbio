\name{case0902}
\alias{case0902}
\docType{data}
\title{
Dataset of mammal traits from Ramsey and Schaefer (1997)
}
\description{
These data were used by Ramsey and Schaefer (1997) to demonstrate multiple regression.  The dataset was originally collected by Sacher and Stafeldt (1974) and provided (for varying sample sizes) average values of brain weight, body weight, gestation period and litter size for 96 placental mammal species. 
}

\usage{data("case0902")}
\format{
  A data frame with 96 observations on the following 5 variables.
  \describe{
    \item{\code{Xs}}{A factor defining common names for mammal species under examination.}
    \item{\code{Y}}{Brain weight (in grams).}
    \item{\code{Xb}}{Body weight (in kilograms).}
    \item{\code{Xg}}{Gestation period length (in days).}
    \item{\code{Xl}}{Litter size.}
  }
}

\source{
Ramsey, F., and Schafer, D. (1997). \emph{The statistical sleuth: a course in methods of data analysis}. Cengage Learning.
}
\references{
Sacher, G. A., and Staffeldt, E. F. (1974). Relation of gestation time to brain weight for placental mammals: implications for the theory of vertebrate growth.  \emph{The American Naturalist}, 108(963), 593-615.
}
\examples{
data(case0902)
}
\keyword{datasets}

