\name{life.exp}
\alias{life.exp}
\docType{data}
\title{
Mouse life expectancy data
}
\description{
Weindruch et al. (1986) compared life expectancy of field mice given different diets.  To accomplish this, the authors randomly assigned 244 mice to one of four diet treatments.   
}
\usage{data(life.exp)}
\format{
  A data frame with 244 observations on the following 2 variables.
  \describe{
    \item{\code{lifespan}}{Lifespan in weeks}
    \item{\code{treatment}}{a factor with levels \code{N/N85}: Mice were fed normally both before and after weaning (the slash distinguishes pre and post weaning).  After weaning the diet consisted of 85kcal/week, a conventional total for mice rearing, 
    \code{N/R40}: Mice were fed normally before weaning, but were given a severely restricted diet of 40 kcal per week after feeding, \code{N/R50}: Mice were restricted to 50kcal per week before and after weaning,
    \code{R/R50}}: Mice were fed normally before weaning, but their diet was restricted to 50 kcal per week after weaning.
  }
}
\source{
Ramsey, F. L., and D. W. Schafer (1997)  \emph{The Statistical Sleuth: A Course in Methods of 
Data Analysis}.  Duxbury Press, Belmont, CA. 

}
\references{
Weindruch, R., Walford, R. L., Fligiel, S., and D. Guthrie  (1986)  The retardation of aging in mice by dietary restriction: 
longevity, cancer, immunity and lifetime energy intake.  \emph{The Journal of Nutrition} 116 (4): 641-54.

}
\examples{
data(life.exp)
## maybe str(life.exp) ; plot(life.exp) ...
}
\keyword{datasets}

