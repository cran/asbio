\name{chi.plot}
\alias{chi.plot}
\title{Chi plots for diagnosing multivariate independence.}
\description{
Chi-plots (Fisher and Switzer 1983, 2001) provide a method to diagnose multivariate 
non-independence among Y variables.
}
\usage{chi.plot(Y1, Y2)
}
\arguments{
  \item{Y1}{A Y variable of interest.  Must be quantitative vector.}
  \item{Y2}{A second Y variable of interest.  Must also be a quantitative vector.}}

\details{The method relies on calculating all possible pairwise differences within \bold{y}\eqn{_1} and within \bold{y}\eqn{_2}. Let pairwise differences associated with the first observation in \bold{y}\eqn{_1} that are greater than zero be transformed to ones and all other differences be zeroes.  Take the sum of the transformed values, and let this sum divided by (1 - \emph{n}) be be the first element in the 1 x \emph{n} vector \bold{z}.
Find the rest of the elements (2,..,\emph{n}) in \bold{z} using the same process. 

Perform the same transformation for the pairwise differences associated with the first observation in \bold{y}\eqn{_2}.  Let pairwise differences associated with the first observation in \bold{y}\eqn{_2} that are greater than zero be transformed to ones and all other differences be zeroes.  Take the sum of the transformed values, and let this sum divided by (1 - \emph{n}) be be the first element in the 1 x \emph{n} vector \bold{g}.
Find the rest of the elements (2,..,\emph{n}) in \bold{g} using the same process. 

Let pairwise differences associated with the first observation in \bold{y}\eqn{_1} and the first obsevation in \bold{y}\eqn{_2} that are both greater than zero be transformed to ones and all other differences be zeroes. Take the sum of the transformed values, and let this sum divided by (1 - \emph{n}) be be the first element in the 1 x \emph{n} vector \bold{h}.  Find the rest of the elements (2,..,\emph{n}) in \bold{h} using the same process.  We let:
      
\deqn{S = sign((\bold{z} - 0.5)(\bold{g} - 0.5))}{%
S = sign((z - 0.5)(g - 0.5))}
\deqn{\chi =(\bold{h} - \bold{z} \times \bold{g})/\sqrt{\bold{z} \times (1 - \bold{z}) \times \bold{g} \times (1 - \bold{g})}}{%
chi = (h - z x g)/sqrt(z) x (1 - z) x g x (1 - g)}
\deqn{\lambda = 4 \times \emph{S} \times max[(\bold{z} - 0.5)^2,(\bold{g} - 0.5)^2]}{%
lambda = 4 x S x max[(z - 0.5)^2,(g - 0.5)^2]}

We plot the resulting paired \eqn{\chi} and \eqn{\lambda} values for values of \eqn{\lambda} less than \eqn{4(1/(n - 1) - 0.5)^2}.  Values outside of \eqn{\frac{1.78}{\sqrt{n}}} can be considered non-independent. 
}

\value{
Returns a chi-plot.
}

\references{
Everitt, B.  (2005)  \emph{R and S-plus companion to multivariate analysis}.  Springer.

Fisher, N. I, and Switzer, P. (1985)  Chi-plots for assessing dependence.  \emph{Biometrika}, 72: 
253-265.

Fisher, N. I., and Switzer, P.  (2001)  Graphical assessment of dependence: is a picture worth 100 tests?  
\emph{The American Statistician}, 55: 233-239.
}
\author{Ken Aho}
\seealso{\code{\link{bv.boxplot}}}
\examples{
Y1<-rnorm(100,15,2)
Y2<-rnorm(100,18,3.2)
chi.plot(Y1,Y2)
}
\keyword{graphs}
\keyword{multivariate}
