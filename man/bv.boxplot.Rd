\name{bv.boxplot}
\alias{bv.boxplot}
\title{Bivariate boxplots}
\description{
Creates diagnostic bivariate quelplot ellipses (bivariate boxplots) using the method of Goldberg and Iglewicz (1992).  
The output can be used to check assumptions of bivariate normality and to identify multivariate outliers.  The default \code{robust=TRUE}
option relies on on a biweight correlation estimator function written by Everitt (2004).  Quelplots, 
are potentially assymetric, although the method currently employed here uses a 
single "fence" definition and creates symmetric ellipses.  
}
\usage{
bv.boxplot(X, Y, robust = TRUE, D = 7, xlab = "X", ylab="Y", pch = 21, 
pch.out = NULL, bg = "gray", bg.out = NULL, hinge.col = 1, fence.col = 1, 
hinge.lty = 2, fence.lty = 3, xlim = NULL, ylim = NULL, names = 1:length(X), 
ID.out = FALSE, cex.ID.out = 0.7, uni.CI = FALSE, uni.conf = 0.95, 
uni.CI.col = 1, uni.CI.lty = 1, uni.CI.lwd = 2, show.points = TRUE, ...)
}
\arguments{
  \item{X}{First of two quantitative variables making up the bivariate distribution.}
  \item{Y}{Second of two quantitative variables making up the bivariate distribution.}
  \item{robust}{Logical.  Robust estimators, i.e. \code{robust = TRUE} are recommended.}
  \item{D}{The default \code{D = 7} lets the fence be equal to a 99 percent confidence interval for an individual observation.}
  \item{xlab}{Caption for \emph{X} axis.}
  \item{ylab}{Caption for \emph{Y} axis.}
  \item{pch}{Plotting character(s) for scatterplot.}
  \item{pch.out}{Plotting character for outliers.}
  \item{hinge.col}{Hinge color.}
  \item{fence.col}{Fence color.}
  \item{hinge.lty}{Hinge line type.}
  \item{fence.lty}{Fence line type.}
  \item{xlim}{A two element vector defining the limits of the plot.}
  \item{ylim}{The y limits of the plot.}
  \item{bg}{Background color for points in scatterplot, defaults to black if \code{pch} is not in the range 21:26.}
  \item{bg.out}{Background color for outlying points in scatterplot, defaults to black if \code{pch} is not in the range 21:26.}
  \item{names}{An optional vector of names for \emph{X}, \emph{Y} coordinates.}  
  \item{ID.out}{Logical. Whether or not outlying points should be given labels (from argument \code{name} in plot.}
  \item{cex.ID.out}{Character expansion for outlying ID labels.}
  \item{uni.CI}{Logical. If true, unviariate confidence intervals for the median at confidence \code{uni.CI} are shown.}  
  \item{uni.conf}{Univariate confidence, only used if \code{CI.uni = TRUE}.}
  \item{uni.CI.col}{Univariate confidence bound line color, only used if \code{CI.uni = TRUE}.}
  \item{uni.CI.lty}{Univariate confidence bound line type, only used if \code{CI.uni = TRUE}.}
  \item{uni.CI.lwd}{Univariate confidence bound line width, only used if \code{CI.uni = TRUE}.}
  \item{show.points}{Logical. Whether points should be shown in graph.}
  \item{\dots}{Additional arguments from \code{\link{points}}.}
  }

\details{
Two ellipses are drawn.  The inner is the "hinge" which contains 50 percent of the data.  The outer is the "fence".  
Observations outside of the "fence" constitute possible troublesome outliers.  
The function \code{bivariate} from Everitt (2004) is used to calculate robust biweight measures of correlation, scale, and location if \code{robust = TRUE} (the default). 
We have the following form to the quelplot model:

\deqn{E_i =
\sqrt{\frac{X^2_{si} + Y^2_{si} - 2R^*X_{si}Y_{si}}{1-R^{*2}}}.}

where \eqn{X_{si} = (X_i - T^*_X)/S^*_X}, and \eqn{Y_{si} = (Y_i - T^*_X)/S^*_Y} are standardized values for \eqn{X_i} and \eqn{Y_i}, respectively,
\eqn{T^*_X} and \eqn{T^*_Y} are location estimators for \emph{X} and \emph{Y}, \eqn{S^*_X} and \eqn{S^*_Y} are scale estimators for 
\emph{X} and \emph{Y}, and \eqn{R^*} is a correlation estimator for \emph{X} and \emph{Y}.  We have:

\deqn{E_m = median\{E_i:i=1,2,...,n\},}  
and
\deqn{E_{max} = max\{E_i: E_i^2 < DE^2_m\}.} 
where \eqn{D} is a constant that regulates the distance of the "fence" and "hinge".

To draw the "hinge" we have:

\deqn{R_1 = E_m\sqrt{\frac{1 + R^*}{2}},}
\deqn{R_2 = E_m\sqrt{\frac{1 - R^*}{2}}.}

To draw the "fence" we have:

\deqn{R_1 = E_{max}\sqrt{\frac{1 + R^*}{2}},}
\deqn{R_2 = E_{max}\sqrt{\frac{1 - R^*}{2}}.}

For \eqn{\theta} = 0 to 360, let:

\deqn{\Theta_1 = R_1cos(\theta),}
\deqn{\Theta_2 = R_2sin(\theta).}

The Cartesian coordinates of the "hinge" and "fence" are:

\deqn{X=T^*_X=(\Theta_1+\Theta_2)S^*_X,}
\deqn{Y=T^*_Y=(\Theta_1-\Theta_2)S^*_Y.}

Quelplots, are potentially assymetric, although the current (and only) method used here defines a single value for \eqn{E_{max}} 
and hence creates symmetric ellipses.  Under this implemention at least one point will define \eqn{E_{max}}, 
and lie on the "fence".        
}
\value{
A diagnostic plot is returned.  Invisible objects from the function include location, scale and correlation estimates for \eqn{X} and \eqn{Y}, 
estimates for \eqn{E_m} and \eqn{E_{max}}, and a list of outliers (that exceed \eqn{E_{max}}).
}
\references{
Everitt, B.  (2004) \emph{An R and S-plus Companion to Multivariate Analysis}.  Springer.

Goldberg, K. M., and B. Ingelwicz  (1992)  Bivariate extensions of the boxplot.  
\emph{Technometrics} 34: 307-320.
}
\author{Ken Aho, the function relies on an Everitt (2004) function for robust \emph{M}-estimation.}
\seealso{\code{\link{boxplot}}}
\examples{
Y1<-rnorm(100, 17, 3)
Y2<-rnorm(100, 13, 2)
bv.boxplot(Y1, Y2)

X <- c(-0.24, 2.53, -0.3, -0.26, 0.021, 0.81, -0.85, -0.95, 1.0, 0.89, 0.59, 
0.61, -1.79, 0.60, -0.05, 0.39, -0.94, -0.89, -0.37, 0.18)
Y <- c(-0.83, -1.44, 0.33, -0.41, -1.0, 0.53, -0.72, 0.33,  0.27, -0.99, 0.15, 
-1.17, -0.61, 0.37, -0.96, 0.21, -1.29, 1.40, -0.21, 0.39)
b <- bv.boxplot(X, Y, ID.out = TRUE, bg.out = "red")
b
}
\keyword{graphs}
\keyword{multivariate}