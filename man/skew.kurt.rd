\name{skew}
\alias{skew}
\alias{kurt}
\title{Sample skewness and kurtosis}
\description{Functions for skewness and kurtosis.  
}
\usage{

skew(x,method="unbiased")

kurt(x,method="unbiased")
}

\arguments{

  \item{x}{A vector of quantitative data.}
  \item{method}{The type of method used for computation of skew and kurtosis.  Two choices are possible for skewness: \code{"moments"} and \code{"unbiased"}, and three choices are possible for kurtosis: \code{"unbiased", "moments"}, and \code{"excess"}.}
}
\details{Aside from centrality and variability we can describe distributions with respect to their shape.  Two important shape descriptors are skewness and kurtosis.  Skewness describes the relative density in the tails of a distribution while kurtosis describes the peakedness of a distribution. When quantified for a population skewness and kurtosis are denoted as \eqn{\gamma_1} and \eqn{\gamma_2} respectively.  For a symmetric distribution skewness will equal zero; i.e. \eqn{\gamma_1} = 0.  A distribution with more density in its right-hand tail will have  \eqn{\gamma_1} > 0, while one with more density in its left-hand tail will have  \eqn{\gamma_1} < 0.  These distributions are often referred to as positively-skewed and negatively-skewed respectively.  If a distribution is normally peaked (mesokurtic) then \eqn{\gamma_2} = 3.  As a result the number three is generally subtracted from kurtosis estimates so that a normal distribution will have \eqn{\gamma_2}  = 0 .  Thus strongly peaked (leptokurtic) distributions will have \eqn{\gamma_2} > 0, while flat-looking (platykurtic) distributions will have a kurtosis \eqn{\gamma_2} < 0. 

Several types of skewness and kurtosis estimation are possible. 

For method of moments estimation let: 
\deqn{m_j = (1/n)\sum_i({X_i-\bar{X}})^j,}{%
m_j = (1/n)sum(X_i-X.bar)^j,}

then the method of moments skewness is: \eqn{m_3/m_{2}^{3/2}}, the method of moments kurtosis is: \eqn{m_4/m_2^2}, and the excess method of moments kurtosis is \eqn{m_4/m_2^2 -3}. 

These estimators are biased low, particularly given small sample sizes.  A more complex estimator is required to account for this bias.  This is provided by \code{method = "unbiased"} in \code{skew} and \code{kurt}.
}

\value{
Output will be the sample skewness or kurtosis.
}
\author{Ken Aho}
\examples{
exp<-rexp(10000)
skew(exp)
kurt(exp)
}
\keyword{univar}
