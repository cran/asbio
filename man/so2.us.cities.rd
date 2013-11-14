\name{so2.us.cities}
\alias{so2.us.cities}
\docType{data}
\title{SO2 data for 32 US cities with respect to 6 explanatory variables}
\description{Of concern for public health officials and biologists are models of air 
pollution as a function of environmental characteristics.  Using a meta-analysis of 
government publications Sokal and Rolf (1995) compiled an interesting dataset which 
investigates air pollution (measured as annual mean SO\eqn{_2} concentration per m\eqn{^3}) 
as a function of six environmental variables for 32 cities in the United States.  
Whenever the data were available they are based on averages of three years 1969, 1970, 
and 1971.   
}
\usage{data(so2.us.cities)}
\format{
The dataset contains 8 variables:
  \describe{
\item{City}{US city.}
\item{Y}{Average annual SO\eqn{_2} concentration per m\eqn{^3}.}   
\item{X1}{Average annual temperature (degrees Celsius).}
\item{X2}{Number of industrial companies with more than 20 employees.}
\item{X3}{Population size (1970 census) in thousands.}
\item{X4}{Average Annual average wind speed.}
\item{X5}{Average Annual precipitation (cm).}
\item{X6}{Average number of days with precipitation.}
  }
}
\source{
Sokal, R. R., and F. J. Rohlf (2012) \emph{Biometry, 4th ed}.  Freeman.
}
\keyword{datasets}
