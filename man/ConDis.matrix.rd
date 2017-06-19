\name{ConDis.matrix}
\alias{ConDis.matrix}
\title{Calculation and display of concordant and discordant pairs}
\description{
Calculates whether pairs of observations from two vectors are concordant discordant or neither.  
These are displayed in the lower diagonal of a symmetric output matrix as 1, -1 or 0.
}
\usage{

ConDis.matrix(Y1, Y2)
}
\arguments{

  \item{Y1}{A vector of quantitative data.}
  \item{Y2}{A vector of quantitative data.  Observations are assumed to be paired
   with respective observations from \code{Y1}.}
}
\details{
Consider all possible combinations of \eqn{(Y_{1i}, Y_{ij})} and \eqn{(Y_{2i}, Y_{ij})} where \eqn{1<=i<j<=n}.  A pair is concordant if \eqn{Y_{1i} > Y_{1j}} and \eqn{Y_{2i} > Y_{2j}} or if \eqn{Y_{1i} < Y_{1j}} and  \eqn{Y_{2i} < Y_{2j}}.  Conversely, a pair is discordant if \eqn{Y_{1i} < Y_{1j}} and \eqn{Y_{2i} > Y_{2j}} or if \eqn{Y_{1i} > Y_{1j}} and \eqn{Y_2i < Y_2j}.  This information has a number of important uses including calculation of Kendall's \eqn{\tau}.}
\value{
A matrix is returned.  Elements in the lower triangle indicate whether observations are concordant (element = \code{1}), discordant (element = \code{-1}) or neither (element = \code{0}).
}
\references{
Hollander, M., and  Wolfe, D. A. (1999) \emph{Nonparametric statistical methods}. New York: John Wiley & Sons. 

Liebetrau, A. M. (1983) \emph{Measures of association}. Sage Publications, Newbury Park, CA.

Sokal, R. R., and Rohlf, F. J. (1995)  \emph{Biometry}.  W. H. Freeman and Co., New York. }
\seealso{\code{\link{cor}}}
\author{Ken Aho}
\examples{
#Crab data from Sokal and Rohlf (1998)
crab<-data.frame(gill.wt=c(159,179,100,45,384,230,100,320,80,220,320,210),
body.wt=c(14.4,15.2,11.3,2.5,22.7,14.9,1.41,15.81,4.19,15.39,17.25,9.52))
attach(crab)
crabm<-ConDis.matrix(gill.wt,body.wt)
crabm
}
