\name{heart}
\alias{heart}
\docType{data}
\title{
Heart rate data from Milliken and Johnson (2009)
}
\description{
A repeated measures demonstration dataset from Milliken and Johnson (1999).  Heart rate was measured for twenty four subject at four time periods following administration of a treatment.  The treatment types were two active heart drugs and a control.  One treatment was assigned to each subject. 
Thus each drug was administered to eight subjects.
}
\usage{data(heart)}
\format{
  A data frame with 96 observations on the following 4 variables.
  \describe{
    \item{\code{rate}}{A numeric vector describing heart rate (bpm).}
    \item{\code{time}}{A factor with levels \code{t1} \code{t2} \code{t3} \code{t4}}
    \item{\code{drug}}{A factor with levels \code{AX23} \code{BWW9} \code{Ctrl}}
    \item{\code{subject}}{A factor describing which subject (in drug) that measurements were made on.}
  }
}

\source{
Milliken, G. A., and D. E. Johnson (2008) \emph{Analysis of Messy Data: Vol. I. Designed Experiments, 2nd edition}. CRC.
}
\examples{
\dontrun{
#data(heart)
#aov(rate ~ drug * time + Error(subject\%in\%drug), data = heart)
}
}
\keyword{datasets}
                   