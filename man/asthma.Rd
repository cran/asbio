\name{asthma}
\alias{asthma}
\docType{data}
\title{Asthma repeated measures dataset from Littell et al. (2002)}
\description{
This dataset was used by Littell (2002) to demonstrate repeated measures analyses.  The effect of two asthma drugs and a placebo were measured on 24 asthmatic patients.  Each patient was randomly given each drug using an approach to minimize carry-over effects. Forced expiratory volume (FEV1), the volume of air that can be expired after taking a deep breath in one second, was measured.  FEV1 was measured hourly for eight hours following application of the drug.  A baseline measure of FEV1 was also taken 11 hours before application of the treatment.  
}
\usage{data(asthma)}
\format{
  The dataframe has 11 columns:
  \describe{
    \item{PATIENT}{The subjects (there were 24 patients).}
    \item{BASEFEV1}{A numerical variable; the baseline forced expiratory volume.} 
    \item{FEV11H}{Forced expiratory volume at 11 hours.}
    \item{FEV12H}{Forced expiratory volume at 12 hours.}
    \item{FEV13H}{Forced expiratory volume at 13 hours.}
    \item{FEV14H}{Forced expiratory volume at 14 hours.}
    \item{FEV15H}{Forced expiratory volume at 15 hours.}
    \item{FEV16H}{Forced expiratory volume at 16 hours.}
    \item{FEV17H}{Forced expiratory volume at 17 hours.}
    \item{FEV18H}{Forced expiratory volume at 18 hours.}
    \item{DRUG}{A factor with three levels \code{"a"} = a standard drug treatment, \code{"c"} = the drug under development, and \code{"p"} = a placebo.}   	
    }
}
\source{
Littell, R. C., Stroup, W. W., and R. J. Fruend (2002)  \emph{SAS for Linear Models}.  John 
Wiley and Associates.
}
\keyword{datasets}
