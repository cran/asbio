\name{Semiconductor}
\alias{Semiconductor}
\docType{data}
\title{Split plot computer chip data from Littell et al. (2006).}
\description{
Littell et al. (2006) use the data here to introduce analysis of split plot 
designs using mixed models.  Twelve silicon wafers were randomly selected from 
a lot, and were randomly assigned to four different processing modes.  
Resistance on the chips was measured in four different positions (four different 
chips) on each wafer.  Mode of processing and position of chips were fixed 
factors, while wafer was a random effect.    The experimental units with respect 
to process are the wafers.  The experimental units with respect to position 
are individual chips.  Thus the wafer is the whole plot, whereas the positions 
(chips) are split plot units 
}
\usage{data(Semiconductor)}
\format{
The dataframe contains four columns:
  \describe{
\item{Resistance}{The response variable of interest.  Measured in ohms.}
\item{Process}{The explanatory variable of interest.  The type of process used to create the computer chips.  A factor with 4 levels.}
\item{Wafer}{The whole plot containing four chips.  There were four wafers tested, i.e. four levels, \code{1,2,3,4}.}
\item{Chip}{Position on the wafer.  These are split plots within the whole plots.  Four levels: \code{1,2,3,4}.}   
  }
}
\source{
Littell, R. C., Milliken, G. A., Stroup, W. W., Wolfinger, R. D., and O. Schabenberger  
(2006)  \emph{SAS for Mixed Models 2nd ed}.  SAS press.
}
\keyword{datasets}
