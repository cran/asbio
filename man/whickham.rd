\name{whickham}
\alias{whickham}
\docType{data}
\title{
Whickham contingency table data for smokers and survivorship
}
\description{
Appleton et al. (1996) summarized a study from the Whickham district of England 
to quantify the association of smoking, age, and death.  1314 women were interviewed 
in early 1970s with respect to their smoking habits.  Twenty years later the women were relocated and 
classified with respect to survival at the time of the follow up {yes or no}, 
whether they smoked at the time of the original interview {yes or no}, 
and age at the time of the original study {1 = 18-24, 2 = 35-64, 3 = >65}.   
}
\usage{data(whickham)}
\format{
  A data frame with 12 observations on the following 4 variables.
  \describe{
    \item{\code{age}}{A factor with levels \code{1} \code{2} \code{3}.}
    \item{\code{survival}}{A factor with levels \code{N} \code{Y}.}
    \item{\code{smoke}}{A factor with levels \code{N} \code{Y}.}
    \item{\code{count}}{Cross-classification count.}
  }
}
\source{
Appleton, D. R., French, J. M., Vanderpump, M. P. J.  1996.  Ignoring a covariate: AN example of Simpson's paradox.  \emph{The American Statstician} 50(4): 340-341.
}
\keyword{datasets}

