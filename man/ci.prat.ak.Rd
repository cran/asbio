\name{ci.prat.ak}
\alias{ci.prat.ak}

\title{
Confidence intervals for ratios of proportions when the denominator is known
}
\description{
It is increasingly possible that resource availabilities on a landscape will be known.  
For instance, in remotely sensed imagery with sub-meter resolution, the areal coverage of 
resources can be quantified to a high degree of precision, at even large spatial scales.  
Included in this function are three methods for computation of confidence intervals for 
a true ratio of proportions when the denominator proportion is known.  The first (adjusted-Wald) 
results from the variance of the estimator \eqn{\sigma_{\hat{\pi}}} after multiplication by a constant.  
Similarly, the second method(adjusted-Agresti-Coull) adjusts the variance of the estimator \eqn{\sigma_{\hat{\pi}_{AC}}}, 
where \eqn{\hat{\pi}_{AC}=(y+2)/(n+4)}.  The third method (fixed-log) is based on delta derivations of the logged ratio.
}
\usage{
ci.prat.ak(y1, n1, pi2 = NULL, method = "fixed", conf = 0.95, bonf = TRUE)
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
One of \code{"ac", "wald" or "fixed"} for the adjusted Agresti-Coull, adjusted Wald, and log methods respectively.  Partial distinct names can be used. 
}
  \item{conf}{
The level of confidence, i.e. 1 - \emph{P}(type I error). 
}
  \item{bonf}{
Logical, indicating whether or not Bonferroni corrections should be applied for 
simultaneous inference if \code{y1, y2, n1} and \code{n2} are vectors.}  
}
\details{
Koopman et al. (1984) suggested methods for handling extreme cases of \eqn{y_1}, \eqn{n_1}, \eqn{y_2}, and \eqn{n_2} (see below).  These are applied through exception handling here (see Aho and Bowyer in review). 

Let \eqn{Y_1} and \eqn{Y_2} be multinomial random variables with parameters \eqn{n_1, \pi_{1i}},  and  \eqn{n_2, \pi_{2i}}, respectively; where \eqn{i = \{1, 2, 3, \dots, r\}}.  This encompasses the binomial case in which \eqn{r = 1}. We define the true selection ratio for the \emph{i}th resource of \emph{r} total resources to be:
 \deqn{\theta_{i}=\frac{\pi _{1i}}{\pi _{2i}}}

where \eqn{\pi_{1i}} and \eqn{\pi_{2i}} represent the proportional use and availability of the \emph{i}th resource, respectively. Note that if \eqn{r = 1} the selection ratio becomes relative risk.  The maximum likelihood estimators for \eqn{\pi_{1i}} and \eqn{\pi_{2i}} are the sample proportions: 

\deqn{{{\hat{\pi }}_{1i}}=\frac{{{y}_{1i}}}{{{n}_{1}}},} and
\deqn{{{\hat{\pi }}_{2i}}=\frac{{{y}_{2i}}}{{{n}_{2}}}}

where \eqn{y_{1i}} and \eqn{y_{2i}} are the observed counts for use and availability for the \emph{i}th resource.  If \eqn{\pi_{2i}}s are known, the estimator for \eqn{\theta_i} is:

\deqn{\hat{\theta}_{i}=\frac{\hat{\pi}_{1i}}{\pi}_{2i}.}

\tabular{ll}{
Method \tab Algorithm \cr
\tab \cr 

% AC	
Agresti Coull-Adjusted  \tab \eqn{{{\hat{\theta}}_{ACi}}\pm {{z}_{1-(\alpha /2)}}\sqrt{{{{\hat{\pi }}}_{AC1i}}(1-{{{\hat{\pi }}}_{AC1i}})/({{n}_{1}}+4){{{\hat{\pi }}}_{AC1i}}\pi _{2i}^{2}}}, \cr
\tab where \eqn{{{\hat{\pi}}_{AC1i}}=\frac{{{y}_{1}}+2}{{{n}_{1}}+4}}, and \eqn{{{\hat{\theta }}_{ACi}}=\frac{{{\hat{\pi}}_{AC1i}}}{{{\pi }_{2i}}}}.  \cr 
\tab \cr

% fixed log
Fixed-log \tab \eqn{{{\hat{\theta }}_{i}}\times \exp \left( \pm {{z}_{1-\alpha /2}}{{{\hat{\sigma }}}_{F}} \right)}, \cr 
\tab where \eqn{\hat{\sigma }_{^{F}}^{2}=(1-{{\hat{\pi}}_{1i}})/{{\hat{\pi}}_{1i}}{{n}_{1}}.} \cr 
\tab \cr

% Wald-adj
Wald-adjusted \tab \eqn{{{\hat{\theta }}_{i}}\pm {{z}_{1-(\alpha /2)}}\sqrt{{{{\hat{\pi }}}_{1i}}(1-{{{\hat{\pi }}}_{1i}})/{{n}_{1}}{{{\hat{\pi }}}_{1i}}\pi _{2i}^{2}}.}\cr
\tab \cr
}
}

\value{Returns a list of \code{class = "ci"}.  Default output is a matrix with the point and interval estimate. 
}
\references{
Aho, K., and Bowyer, T. (In review) Confidence intervals for ratios of multinomial random variables (selection ratios). \emph{Environental and Ecological Statistics}.
}
\author{
Ken Aho
}
\seealso{
\code{\link{ci.prat}}, \link{ci.p}
}
\examples{
ci.prat.ak(3,4,.5)
}
