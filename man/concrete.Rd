\name{concrete}
\alias{concrete}
\docType{data}
\title{Concrete strength dataset for data mining
}
\description{
The actual concrete compressive strength (MPa) for a given mixture under a 
specific age (days) was determined from laboratory assays. Data are in raw form (not scaled). 
}
\usage{data("concrete")}
\format{
  A data frame with 1030 observations on the following 9 variables.
  \describe{
    \item{\code{X1}}{kg of cement in a m\eqn{^3} mixture.}
    \item{\code{X2}}{kg of blast furnace slag in a m\eqn{^3} mixture.}
    \item{\code{X3}}{kg of fly ash in a m\eqn{^3} mixture.}
    \item{\code{X4}}{kg of water in a m\eqn{^3} mixture.}
    \item{\code{X5}}{kg of superplasticizer in a m\eqn{^3} mixture.}
    \item{\code{X6}}{kg of coarse aggregate in a m\eqn{^3} mixture.}
    \item{\code{X7}}{kg of fine aggregate in a m\eqn{^3} mixture.}
    \item{\code{X8}}{Age: day(1-365), a numeric vector}
    \item{\code{Y}}{Concrete compressive strength in MPa, a numeric vector}
  }
}
\details{
The order of variables corresponds to the order in the original data. 
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
  Prof. I-Cheng Yeh
  Department of Information Management 
  Chung-Hua University, 
  Hsin Chu, Taiwan 30067, R.O.C.
  e-mail:icyeh@chu.edu.tw
  TEL:886-3-5186511
}
\references{
Past Usage: 

Primary

I-Cheng, Y. (1998) Modeling of strength of high performance concrete using artificial 
neural networks. \emph{Cement and Concrete Research}, 28(12): 1797-1808 .

Others

I-Cheng. Y. (1998) Modeling concrete strength with augment-neuron networks. \emph{J. of 
Materials in Civil Engineering, ASCE} 10(4): 263-268.

I-Cheng, Y.  (1999) Design of high performance concrete mixture using neural networks.  
\emph{J. of Computing in Civil Engineering, ASCE} 13 (1): 36-42.

I-Cheng, Y. (2003) Prediction of Strength of Fly Ash and Slag Concrete By The Use of 
Artificial Neural Networks.  \emph{Journal of the Chinese Institute of Civil and Hydraulic 
Engineering} Vol. 15, No. 4, pp. 659-663 (2003).

I-Cheng, Y. (2003) A mix Proportioning Methodology for Fly Ash and Slag Concrete Using 
artificial neural networks.  \emph{Chung Hua Journal of Science and Engineering} 1(1): 77-84.

I-Cheng, Y. (2006). Analysis of strength of concrete using design of experiments and 
neural networks. \emph{Journal of Materials in Civil Engineering, ASCE}  18(4): 597-604.

Acknowledgements, Copyright Information, and Availability:

NOTE: Reuse of this database is unlimited with retention of copyright notice for 
Prof. I-Cheng Yeh.
}

\keyword{datasets}

