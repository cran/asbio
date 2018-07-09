\name{ci.prat.ak}
\alias{ci.prat.ak}

\title{
Confidence intervals for ratios of proportions when the denominator is known
}
\description{
It is increasingly possible that resource availabilities on a landscape will be known.  
For instance, in remotely sensed imagery with sub-meter resolution, the areal coverage of 
resources can be quantified to a high degree of precision, at even large spatial scales.  
Included in this function are six methods for computation of confidence intervals for 
a true ratio of proportions when the denominator proportion is known.  The first (adjusted-Wald) 
results from the variance of the estimator \eqn{\hat{\sigma}_{\hat{\pi}}} after multiplication by a constant.  
Similarly, the second method(Agresti-Coull-adjusted) adjusts the variance of the estimator \eqn{\hat{\sigma}_{\hat{\pi}_{AC}}}, 
where \eqn{\hat{\pi}_{AC}=(y+2)/(n+4)}.  The third method (fixed-log) is based on delta derivations of the logged ratio.
The fourth method is Bayesian and based on the beta posterior distribution derived from a binomial likelhood function and a beta prior distribution.  The fifth procedure is an older method based on Noether (1959).  Sixth, bootstrapping methods can also be implemented.  
}
\usage{
ci.prat.ak(y1, n1, pi2 = NULL, method = "ac", conf = 0.95, bonf = FALSE, 
bootCI.method = "perc", R = 1000, sigma.t = NULL, r = length(y1), gamma.hyper = 1, 
beta.hyper = 1)
}

\arguments{

  \item{y1}{
The ratio numerator number of successes.  A scalar or vector.
}
  \item{n1}{
The ratio numerator number of trials.  A scalar or vector of \code{length(y1)}
}
  \item{pi2}{
The denominator proportion.  A scalar or vector of \code{length(y1)}
}
  \item{method}{
One of \code{"ac", "wald", "noether-fixed", "boot", "fixed-log"} or \code{"bayes"} for the Agresti-Coull-adjusted, adjusted Wald, noether-fixed, bootstrapping, fixed-log and Bayes-beta, methods, respectively.  Partial distinct names can be used. 
}
  \item{conf}{
The level of confidence, i.e. 1 - \emph{P}(type I error). 
}
  \item{bonf}{Logical, indicating whether or not Bonferroni corrections should be applied for simultaneous inference if \code{y1, y2, n1} and \code{n2} are vectors.
} 
  \item{bootCI.method}{If \code{method = "boot"} the type of bootstrap confidence interval to calculate.  One of \code{"norm"}, \code{"basic"}, \code{"perc"}, \code{"BCa"}, or \code{"student"}.  See  
\code{\link{ci.boot}} for more information.
}
  \item{R}{If \code{method = "boot"} the number of bootstrap samples to take.  See \code{\link{ci.boot}} for more information.
} 
  \item{sigma.t}{If \code{method = "boot"} and \code{bootCI.methd = "student"} a vector of standard errors in association with studentized intervals.   See \code{\link{ci.boot}} for more information.
} 
  \item{r}{The number of ratios to which family-wise inferences are being made.  Assumed to be \code{length(y1)}. 
}
  \item{gamma.hyper}{If \code{method = "bayes"}.  A scalar or vector. Value(s) for the first hyperparameter for the beta prior distribution. 
}
  \item{beta.hyper}{If \code{method = "bayes"}.  A scalar or vector. Value(s) for the second hyperparameter for the beta prior distribution.
} 
}

\details{
Koopman et al. (1984) suggested methods for handling extreme cases of \eqn{y_1}, \eqn{n_1}, \eqn{y_2}, and \eqn{n_2} (see below).  These are applied through exception handling here (see Aho and Bowyer 2015). 

Let \eqn{Y_1} and \eqn{Y_2} be multinomial random variables with parameters \eqn{n_1, \pi_{1i}},  and  \eqn{n_2, \pi_{2i}}, respectively; where \eqn{i = \{1, 2, 3, \dots, r\}}.  This encompasses the binomial case in which \eqn{r = 1}. We define the true selection ratio for the \emph{i}th resource of \emph{r} total resources to be:
 \deqn{\theta_{i}=\frac{\pi _{1i}}{\pi _{2i}}}

where \eqn{\pi_{1i}} and \eqn{\pi_{2i}} represent the proportional use and availability of the \emph{i}th resource, respectively.  If \eqn{r = 1} the selection ratio becomes relative risk.  The maximum likelihood estimators for \eqn{\pi_{1i}} and \eqn{\pi_{2i}} are the sample proportions: 

\deqn{{{\hat{\pi }}_{1i}}=\frac{{{y}_{1i}}}{{{n}_{1}}},} and
\deqn{{{\hat{\pi }}_{2i}}=\frac{{{y}_{2i}}}{{{n}_{2}}}}

where \eqn{y_{1i}} and \eqn{y_{2i}} are the observed counts for use and availability for the \emph{i}th resource.  If \eqn{\pi_{2i}}s are known, the estimator for \eqn{\theta_i} is:

\deqn{\hat{\theta}_{i}=\frac{\hat{\pi}_{1i}}{\pi_{2i}}.}

The function \code{ci.prat.ak} assumes that selection ratios are being specified (although other applications are certainly possible).  Therefore it assume that \eqn{y_{1i}} must be greater than 0 if \eqn{\pi_{2i} = 1}, and assumes that \eqn{y_{1i}} must = 0 if \eqn{\pi_{2i} = 0}.  Violation of these conditions will produce a warning message.   


\tabular{ll}{
Method \tab Algorithm \cr
\tab \cr 

% AC	
Agresti Coull-Adjusted  \tab \eqn{{{\hat{\theta}}_{ACi}}\pm {{z}_{1-(\alpha /2)}}\sqrt{{{{\hat{\pi }}}_{AC1i}}(1-{{{\hat{\pi }}}_{AC1i}})/({{n}_{1}}+4){{{\hat{\pi }}}_{AC1i}}\pi _{2i}^{2}}}, \cr 
\tab where \eqn{{{\hat{\pi}}_{AC1i}}=\frac{{{y}_{1}}+z^2/2}{{{n}_{1}}+z^2}}, and \eqn{{{\hat{\theta }}_{ACi}}=\frac{{{\hat{\pi}}_{AC1i}}}{{{\pi }_{2i}}}}, \cr
\tab where \eqn{z} is the standard normal inverse cdf at probability \eqn{1 - \alpha/2} (\eqn{\approx 2} when \eqn{\alpha= 0.05}).  \cr 
\tab \cr
%Bayes
Bayes-beta \tab \eqn{(\frac{X_{\alpha/2}}{\pi_{2i}}} , \eqn{\frac{X_{1-(\alpha/2)}}{\pi_{2i}})}, \cr
\tab where \eqn{X \sim BETA(y_{1i} + \gamma_{i}, n_1 + \beta - y_{1i})}. \cr
\tab \cr
% fixed log
Fixed-log \tab \eqn{{{\hat{\theta }}_{i}}\times \exp \left( \pm {{z}_{1-\alpha /2}}{{{\hat{\sigma }}}_{F}} \right)}, \cr 
\tab where \eqn{\hat{\sigma}_{^{F}}^{2}=(1-{{\hat{\pi}}_{1i}})/{{\hat{\pi}}_{1i}}{{n}_{1}}.} \cr 
\tab \cr
% Noether-fixed	
Noether-fixed \tab \eqn{\frac{{{{\hat{\pi }}}_{1i}}/{{\pi }_{2}}}{1+z_{1-(\alpha /2)}^{2}}1+\frac{z_{1-(\alpha /2)}^{2}}{2{{y}_{1i}}}\pm z_{1-(\alpha /2)}^{2}\sqrt{\hat{\sigma}_{NF}^{2}+\frac{z_{1-(\alpha /2)}^{2}}{4y_{1i}^{2}}}}, \cr
\tab where \eqn{\hat{\sigma }_{NF}^{2}=\frac{1-{{{\hat{\pi }}}_{1i}}}{{{n}_{1}}{{{\hat{\pi }}}_{1i}}}}. \cr
\tab \cr
% Wald-adj
Wald-adjusted \tab \eqn{{{\hat{\theta }}_{i}}\pm {{z}_{1-(\alpha /2)}}\sqrt{{{{\hat{\pi }}}_{1i}}(1-{{{\hat{\pi }}}_{1i}})/{{n}_{1}}{{{\hat{\pi }}}_{1i}}\pi _{2i}^{2}}.}\cr
\tab \cr
}
}

\value{Returns a list of \code{class = "ci"}.  Default output is a matrix with the point and interval estimate. 
}
\references{
Aho, K., and Bowyer, T. 2015. Confidence intervals for ratios of proportions: implications for selection ratios. \emph{Methods in Ecology and Evolution} 6: 121-132.
}
\author{
Ken Aho
}
\seealso{
\code{\link{ci.prat}}, \code{\link{ci.p}}
}
\examples{
ci.prat.ak(3,4,.5)
}
