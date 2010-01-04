\name{e.cancer}
\alias{e.cancer}
\docType{data}
\title{Esophageal cancer data modified slightly to create a balanced three-way 
factorial design}
\description{Breslow and Day (1980) studied the effect of age, tobacco, and 
alcohol on esophageal cancer rates at Ile-et-Vilaine, France.  Data 
are altered slightly to make the design balanced, and to allow enough degrees 
of freedom to perform a fully factorial three way ANOVA.
}
\usage{data(e.cancer)}
\format{
The dataset contains four variables:
  \describe{
     \item{age grp.}{age group, a factor with four levels: \code{"25-34", "35-44", "45-54", "55-64"}, and \code{"65-74"}.}
     \item{alcohol}{alcohol consumed (g/day).}	
     \item{tobacco}{tobacco consumed (g/day).}	
     \item{cases}{number of esophageal cancer cases.}
  }
}
\source{
Breslow, N. E. and N. E. Day. 1980. Statistical Methods in Cancer Research. 1: The 
Analysis of Case-Control Studies. IARC Lyon / Oxford University Press. 
}

\keyword{datasets}
