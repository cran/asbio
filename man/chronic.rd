\name{chronic}
\alias{chronic}
\docType{data}
\title{Chronic ailment counts for urban and rural women in Australia 

}
\description{
Brown et al (1996) showed that Australian women who live in rural areas tended to have fewer visits with general practitioners.  
It was not clear from this data, however, whether this was because they were healthier or because of other factors 
(e.g. shortage of doctors, higher costs of visits, longer distances to travel for visits, etc.). 
To address this Dobson issue (2001) compiled data describing the number of chronic medical conditions 
for women visiting general practitioners in New South Wales.  Women were divided into two groups; those from rural areas, 
and those from urban areas.  All of the women were age 70-75, had the same socioeconomic status and reported to general practitioners three or fewer times in 1996.  
The question of central interest was: "do women who have the same level of general practitioner visits have the same medical need?"  
}

\usage{data(chronic)}
\format{
  A data frame with 49 observations on the following 4 variables.
  \describe{
    \item{\code{subject}}{The subject number.}
    \item{\code{count}}{The number of chronic conditions in a subject.}
    \item{\code{setting}}{a factor with levels \code{RURAL} \code{URBAN}.}
  }
}

\source{
Dobson, A. J. 2001. \emph{An Introduction to Generalized Linear Models, 2nd edition}. Chapman and Hall, London. 


}
\references{
Brown, W. J.  Bryon, L., Byles, J., et al.  (1996)  Women's health in Australia: establishment of the Australian longitudinal study on women's health.  \emph{Journal of Women's Health}.  5: 467-472.
}
\keyword{datasets}

