\name{exercise.repeated}
\alias{exercise.repeated}
\docType{data}
\title{Repeated measures data for an exercise experiment.}
\description{
Freund et al. (1986) listed data for a longitudinal study of exercise therapies.  
The data were analyzed using AR1 covariance matrices in mixed models by Fitzmaurice 
et al. (2004).  In the study 37 patients were randomly assigned to one of two 
weightlifting programs. In the first program (TRT 1), repetitions with weights 
were increased as subjects became stronger. In the second program (TRT 2), 
the number of repetitions was fixed but weights were increased as subjects 
became stronger. An index measuring strength was created and recorded at day 
0, 2, 4, 6, 8, 10, and 12.  
}
\usage{data(exercise.repeated)}
\format{
The dataframe contains a repeated measures dataset describing the strength of 37 subjects with respect to two weightlifting programs.  There are four columns:
  \describe{
    \item{ID}{Subject ID.}
    \item{TRT}{The type of weightlifting treatment (a factor with two levels, \code{1} and \code{2}).}
    \item{strength}{A strength index.}
    \item{day}{The day that \code{strength} was measured on a subject, measured from the start of the experiment.}
    }  
}
\source{
Fitzmaurice, G. M., Laird, N. M, and Waird, J. H.  (2004) \emph{Applied Longitudinal Analysis}.  Wiley.
}
\keyword{datasets}
