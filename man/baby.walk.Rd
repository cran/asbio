\name{baby.walk}
\alias{baby.walk}
\docType{data}
\title{
Baby walking times experimental data
}
\description{
In general, mammals are able to walk within minutes or hours after birth.  
Human babies, however, generally don't begin to walk until they are between 10 and 18 months of age.  
This occurs because, although humans are born with rudimentary reflexes for walking, they are 
unused, and thus largely disappear by the age of eight weeks.  As a result 
these movements must be relearned by an infant following significant passage of time, 
through a process of trial and error.  Zelazo et al. (1972) performed a series of experiments 
to determine whether certain exercises could allow infants to maintain their walking reflexes, 
and allow them to walk at an earlier age.  Study subjects were 24 white male infants from middle class families, and were assigned to one of four exercise treatments.

Active exercise (AE): Parents were taught and were told to apply exercises that 
would strengthen the walking reflexes of their infant.   
Passive exercise (PE): Parents were taught and told to apply exercises unrelated to walking.
Test-only (TO):  The investigators did not specify any exercise, but visited and tested the walking reflexes of infants in weeks 1 through 8.  Passive and active exercise infants were also tested in this way.  
Control (C):  No exercises were specified, and infants were only tested at weeks one and eight.  This group was established to account for the potential effect of the walking reflex tests themselves.

}
\usage{data(baby.walk)}
\format{
  A data frame with 22 observations on the following 2 variables.
  \describe{
    \item{\code{date}}{Age when baby first started walking (in months)}
    \item{\code{treatment}}{A factor with levels \code{AE} \code{C} \code{PE} \code{TO}}
  }
}

\source{
Ott, R. L., and M. T. Longnecker {2004}  \emph{A First Course in Statistical Methods}.  
Thompson.

}
\references{
Zelazo, P. R., Zelazo, N. A., and S. Kolb.  1972.  Walking in the newborn.  \emph{Science} 176: 
314-315.

}
\keyword{datasets}

