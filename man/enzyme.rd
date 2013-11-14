\name{enzyme}
\alias{enzyme}
\docType{data}
\title{
Enzymatic rate data for the phospholipase protein ExoU 
}
\description{
The bacteria \emph{Pseudomonas aeruginosa} causes disease in human hosts leading to 
sepsis and even death in part by secreting lipases (proteins that break down lipids) 
into cellular environments.  The protein ExoU is a phospholipase produce by particularly 
virulent strains of \emph{P. aeruginosa}.  Benson et al. (2009) measured of ExoU enzymatic 
activity under varying levels of the fluorescent phospholipase substrate PED6.  
}
\usage{data(enzyme)}
\format{
  A data frame with 10 observations on the following 3 variables.
  \describe{
    \item{\code{substrate}}{PED6 concentration (in micromoles).}
    \item{\code{rate}}{enzymatic rate (nmol of cleaved of PED6 per mg EXoU).}
    \item{\code{sd}}{standard deviation of rate for each level of substrate.}
  }
}
\source{
Benson, M. A., Schmalzer, K. M., and D. W. Frank (2009) A sensitive flouresence-based assay for the detection of ExoU mediated PLA2 activity.  \emph{Clin Chim Acta} 411(3-4): 190-197.
}

\keyword{datasets}

