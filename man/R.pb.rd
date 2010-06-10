\name{R.pb}
\alias{R.pb}
\title{Percentage bend correlation}
\description{
The percentage bend correlation is a robust alternative to Pearson's product moment correlation.
}
\usage{
R.pb(X, Y, beta = 0.2)
}
\arguments{
  \item{X}{A quantitative vector}
  \item{Y}{A second quantitative vector}
  \item{beta}{Bend criterion}
}
\details{The percentage bend correlation belongs to class of correlation measures which protect against marginal distribution (\emph{X} and \emph{Y}) outliers.  In this way it is similar to Kendall's \eqn{\tau}, Spearman's \eqn{\rho}, and biweight midcovariance.  A second class of robust correlation measures which take in to consideration the overall structure of the data (\emph{O} estimators) are discussed by Wilcox (2005, pg. 389).  A value for the bend criterion \code{beta} is required in the \code{R.pb} function; \code{beta} = 0.2 is recommended by Wilcox (2005).  

}
\value{A dataframe with the correlation, test statistic and \emph{p}-value for the null hypothesis of independence are returned.
  
}
\references{Wilcox, R. R.  (2005)  \emph{Introduction to Robust Estimation and Hypothesis Testing, Second 
Edition}.  Elsevier, Burlington, MA.
}
\author{Ken Aho}
\seealso{\code{\link{corr}}, \code{\link{R.bw}}}
\examples{
x<-rnorm(100)
y<-rnorm(100)
R.pb(x,y)
}
\keyword{univar}
\keyword{htest}
