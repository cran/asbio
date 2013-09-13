\name{C.isotope}
\alias{C.isotope}
\docType{data}
\title{
Atmospheric carbon and D14C measurements
}
\description{
Atmospheric Delta-14C (permil) and CO2 (ppm) measurements for La Jolla Pier, California: Latitude 32.9 Degrees N Longitude 117.3 Degrees W Elevation 10m.  Delta-C14 derived from flask air samples      
}
\usage{data(C.isotope)}
\format{
  A data frame with 280 observations on the following 5 variables.
  \describe{
    \item{\code{Date}}{a factor with levels \code{ 01-Apr-96} \code{ 01-Jul-92} \code{ 01-Jul-93} \code{ 02-Apr-01} \code{ 02-Feb-96} \code{ 02-Nov-94} \code{ 02-Oct-92} \code{ 03-Aug-06} \code{ 03-Aug-92} \code{ 03-Jan-95} \code{ 03-Jan-97} \code{ 03-Jul-95} \code{ 03-Mar-93} \code{ 03-May-05} \code{ 03-May-96} \code{ 03-Nov-05} \code{ 04-Apr-94} \code{ 04-Jun-01} \code{ 04-Jun-03} \code{ 04-Mar-03} \code{ 04-May-01} \code{ 04-May-07} \code{ 04-Sep-96} \code{ 05-Aug-96} \code{ 05-Jul-05} \code{ 05-Jun-00} \code{ 05-Sep-00} \code{ 06-Aug-02} \code{ 06-Oct-06} \code{ 06-Sep-01} \code{ 06-Sep-07} \code{ 07-Apr-05} \code{ 07-Apr-95} \code{ 07-Aug-07} \code{ 07-Dec-07} \code{ 07-Feb-01} \code{ 07-Feb-03} \code{ 07-Feb-05} \code{ 07-Jun-07} \code{ 07-Mar-01} \code{ 07-Sep-05} \code{ 08-Feb-94} \code{ 08-Feb-95} \code{ 08-Feb-99} \code{ 08-Jan-01} \code{ 08-Jun-95} \code{ 08-Sep-99} \code{ 09-Dec-01} \code{ 09-Feb-93} \code{ 09-Jan-02} \code{ 09-Jun-04} \code{ 09-Nov-00} \code{ 09-Nov-02} \code{ 09-Nov-06} \code{ 09-Sep-02} \code{ 09-Sep-03} \code{ 09-Sep-92} \code{ 10-Apr-03} \code{ 10-Aug-01} \code{ 10-Aug-97} \code{ 10-Aug-99} \code{ 10-Jan-98} \code{ 10-Jun-02} \code{ 10-Nov-95} \code{ 10-Oct-00} \code{ 10-Oct-04} \code{ 10-Oct-97} \code{ 11-Dec-92} \code{ 11-Feb-00} \code{ 11-Jan-07} \code{ 11-Jan-93} \code{ 11-Mar-94} \code{ 11-Mar-96} \code{ 11-Nov-93} \code{ 11-Oct-02} \code{ 12-Apr-93} \code{ 12-Apr-99} \code{ 12-Aug-93} \code{ 12-Jul-02} \code{ 12-Jun-06} \code{ 12-Oct-07} \code{ 13-Feb-98} \code{ 13-Jan-98} \code{ 13-Jun-01} \code{ 13-Mar-95} \code{ 13-May-02} \code{ 13-Sep-06} \code{ 14-Apr-00} \code{ 14-Aug-00} \code{ 14-Dec-98} \code{ 14-Feb-03} \code{ 14-Jul-00} \code{ 14-Sep-04} \code{ 15-Dec-93} \code{ 15-Feb-06} \code{ 15-Feb-95} \code{ 15-May-95} \code{ 15-Oct-99} \code{ 16-Apr-96} \code{ 16-Jul-01} \code{ 16-Jun-00} \code{ 16-Nov-03} \code{ 16-Nov-99} \code{ 16-Oct-95} \code{ 17-Dec-02} \code{ 17-Feb-02} \code{ 17-Feb-97} \code{ 17-Jul-06} \code{ 17-Jul-07} \code{ 17-Mar-06} \code{ 17-May-94} \code{ 17-Nov-99} \code{ 18-Aug-00} \code{ 18-Dec-92} \code{ 18-Jul-97} \code{ 18-Jun-05} \code{ 18-Mar-03} \code{ 18-May-93} \code{ 18-Nov-94} \code{ 19-Apr-05} \code{ 20-Apr-04} \code{ 20-Mar-00} \code{ 21-Apr-06} \code{ 21-Aug-95} \code{ 21-Dec-04} \code{ 21-Jan-00} \code{ 21-Jul-99} \code{ 21-Jun-02} \code{ 21-Jun-93} \code{ 22-Apr-97} \code{ 22-Feb-00} \code{ 22-Feb-96} \code{ 22-Jan-96} \code{ 22-Jun-94} \code{ 22-Mar-02} \code{ 22-May-06} \code{ 22-May-98} \code{ 23-Apr-98} \code{ 23-Feb-07} \code{ 23-Jul-92} \code{ 23-Jun-97} \code{ 23-Mar-01} \code{ 23-Mar-05} \code{ 24-Apr-03} \code{ 24-Aug-94} \code{ 24-Feb-93} \code{ 24-Jul-01} \code{ 24-Jul-02} \code{ 24-Jun-03} \code{ 24-Mar-04} \code{ 25-Apr-02} \code{ 25-Aug-98} \code{ 25-Jan-06} \code{ 25-Oct-96} \code{ 26-Aug-04} \code{ 26-Dec-03} \code{ 26-Feb-04} \code{ 26-Jan-05} \code{ 26-Jan-99} \code{ 26-Jun-96} \code{ 26-Mar-04} \code{ 26-May-00} \code{ 26-May-04} \code{ 26-Sep-95} \code{ 27-Jul-04} \code{ 27-Mar-07} \code{ 27-Nov-96} \code{ 27-Oct-05} \code{ 28-Jul-04} \code{ 28-Jul-05} \code{ 29-Aug-03} \code{ 29-Dec-02} \code{ 29-Jul-98} \code{ 29-Jun-98} \code{ 29-Oct-92} \code{ 29-Oct-98} \code{ 30-Jun-97} \code{ 30-Nov-93} \code{ 31-Dec-99} \code{ 31-Jan-04} \code{ 31-Oct-01} \code{ 31-Oct-03}}
    \item{\code{Decimal.date}}{A numeric vector}
    \item{\code{CO2}}{CO2 concentration (in ppm)}
    \item{\code{D14C}}{Delta 14C (in per mille)}
    \item{\code{D14C.uncertanty}}{measurement uncertainty for D14C(in per mille)}
  }
}

\source{
H. D. Graven, R. F. Keeling, A. F. Bollenbacher                                 
Scripps CO2 Program (http://scrippsco2.ucsd.edu)                                      
Scripps Institution of Oceanography (SIO)                                               
University of California                                                                
La Jolla, California USA 92093-0244                                                     

and
                                                                                   
T. P. Guilderson                                                                        
Center for Accelerator Mass Spectrometry (CAMS)                                         
Lawrence Livermore National Laboratory (LLNL)                                           
Livermore, California USA  94550
}
\references{
H. D. Graven, T. P. Guilderson and R. F. Keeling, Observations of radiocarbon 
in CO2 at La Jolla, California, USA 1992-2007: Analysis of the long-term trend. 
Journal of Geophysical Research, doi:10.1029/2011JD016533, in press.  
}
\keyword{datasets}

