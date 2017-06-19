\name{bayes.lm}
\alias{bayes.lm}
\alias{print.blm}
\title{
Bayesian linear models with uniform priors 
}
\description{
Gelman et al. (2002) describe general methods for Bayesian implementation of simple linear models (e.g. simple and multiple regression and fixed effect one way ANOVA) with standard non-informative priors uniform on \eqn{\alpha, \sigma^2}. The function is not yet suited for multifactor or multivariance (random effect) ANOVAs. 
}
\usage{

bayes.lm(Y, X, model = "anova", length = 1000, cred = 0.95)
}

\arguments{

  \item{Y}{
An \emph{n} x \emph{1} column vector (a matrix with one column) containing the response variable.
}
  \item{X}{
The \emph{n} x \emph{p} design matrix
}
  \item{model}{
One of \code{"anova"} or \code{"reg"}.  Parameter output labels are changed depending on choice. 
}
  \item{length}{
Number of draws for posterior. 
}
  \item{cred}{
Level for credible interval. 
}
}
\value{
Provides the median and central credible intervals for model parameters.
}
\references{
Gelman, A., Carlin, J. B., Stern, H. S., and D. B. Rubin  (2003)  \emph{Bayesian Data Analysis, 2nd edition}.  Chapman and Hall/CRC. 
}
\author{
Ken Aho
}
\seealso{
\code{\link{mcmc.norm.hier}}
}
\examples{
\dontrun{
data(Fbird)
X <- with(Fbird, cbind(rep(1, 18), vol))
Y <- Fbird$freq
bayes.lm(Y, X, model = "reg")
}
}